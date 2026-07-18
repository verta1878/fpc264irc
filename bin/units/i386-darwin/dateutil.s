# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_DATEUTILS_NOTYETIMPLEMENTED$ANSISTRING
_DATEUTILS_NOTYETIMPLEMENTED$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj5
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	$11,-52(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj4(%ebx),%edx
	movl	L_$DATEUTILS$_Ld1$non_lazy_ptr-Lj4(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj4(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj5:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj6
	call	LFPC_RERAISE$stub
Lj6:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DATEOF$TDATETIME$$TDATETIME
_DATEUTILS_DATEOF$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fnstcw	-12(%ebp)
	fnstcw	-10(%ebp)
	orw	$3840,-12(%ebp)
	fldl	8(%ebp)
	fldcw	-12(%ebp)
	fistpq	-20(%ebp)
	fldcw	-10(%ebp)
	fwait
	fildq	-20(%ebp)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_TIMEOF$TDATETIME$$TDATETIME
_DATEUTILS_TIMEOF$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fldl	8(%ebp)
	fstpt	(%esp)
	call	Lfpc_frac_real$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ISINLEAPYEAR$TDATETIME$$BOOLEAN
_DATEUTILS_ISINLEAPYEAR$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_YEAROF$TDATETIME$$WORD$stub
	call	L_SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN$stub
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ISPM$TDATETIME$$BOOLEAN
_DATEUTILS_ISPM$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_HOUROF$TDATETIME$$WORD$stub
	movzwl	%ax,%eax
	cmpl	$12,%eax
	setgeb	-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ISVALIDDATE$WORD$WORD$WORD$$BOOLEAN
_DATEUTILS_ISVALIDDATE$WORD$WORD$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj43
Lj43:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj49
	jmp	Lj45
Lj49:
	movzwl	-4(%ebp),%eax
	cmpl	$10000,%eax
	jl	Lj48
	jmp	Lj45
Lj48:
	movzwl	-8(%ebp),%eax
	decl	%eax
	cmpl	$12,%eax
	jb	Lj50
Lj50:
	jc	Lj47
	jmp	Lj45
Lj47:
	movzwl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj46
	jmp	Lj45
Lj46:
	movw	-4(%ebp),%ax
	call	L_SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN$stub
	movzbl	%al,%eax
	imull	$24,%eax
	movzwl	-8(%ebp),%edx
	movw	-12(%ebp),%cx
	movl	L_TC_SYSUTILS_MONTHDAYS$non_lazy_ptr-Lj43(%ebx),%esi
	leal	(%eax,%esi),%esi
	cmpw	-2(%esi,%edx,2),%cx
	jbe	Lj44
	jmp	Lj45
Lj44:
	movb	$1,-13(%ebp)
	jmp	Lj53
Lj45:
	movb	$0,-13(%ebp)
Lj53:
	movb	-13(%ebp),%al
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ISVALIDTIME$WORD$WORD$WORD$WORD$$BOOLEAN
_DATEUTILS_ISVALIDTIME$WORD$WORD$WORD$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	-4(%ebp),%eax
	cmpl	$24,%eax
	je	Lj60
	jmp	Lj57
Lj60:
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj59
	jmp	Lj57
Lj59:
	movzwl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj58
	jmp	Lj57
Lj58:
	movzwl	8(%ebp),%eax
	testl	%eax,%eax
	je	Lj56
	jmp	Lj57
Lj56:
	movb	$1,-13(%ebp)
	jmp	Lj61
Lj57:
	movb	$0,-13(%ebp)
Lj61:
	cmpb	$0,-13(%ebp)
	jne	Lj62
	jmp	Lj64
Lj64:
	movzwl	-4(%ebp),%eax
	cmpl	$24,%eax
	jl	Lj67
	jmp	Lj63
Lj67:
	movzwl	-8(%ebp),%eax
	cmpl	$60,%eax
	jl	Lj66
	jmp	Lj63
Lj66:
	movzwl	-12(%ebp),%eax
	cmpl	$60,%eax
	jl	Lj65
	jmp	Lj63
Lj65:
	movzwl	8(%ebp),%eax
	cmpl	$1000,%eax
	jl	Lj62
	jmp	Lj63
Lj62:
	movb	$1,-13(%ebp)
	jmp	Lj68
Lj63:
	movb	$0,-13(%ebp)
Lj68:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ISVALIDDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$BOOLEAN
_DATEUTILS_ISVALIDDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_ISVALIDDATE$WORD$WORD$WORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj73
	jmp	Lj72
Lj73:
	movw	8(%ebp),%ax
	movw	%ax,(%esp)
	movw	12(%ebp),%cx
	movw	16(%ebp),%dx
	movw	20(%ebp),%ax
	call	L_DATEUTILS_ISVALIDTIME$WORD$WORD$WORD$WORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj71
	jmp	Lj72
Lj71:
	movb	$1,-13(%ebp)
	jmp	Lj88
Lj72:
	movb	$0,-13(%ebp)
Lj88:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ISVALIDDATEDAY$WORD$WORD$$BOOLEAN
_DATEUTILS_ISVALIDDATEDAY$WORD$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj90
Lj90:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movzwl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj95
	jmp	Lj92
Lj95:
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj94
	jmp	Lj92
Lj94:
	movzwl	-4(%ebp),%eax
	cmpl	$10000,%eax
	jl	Lj93
	jmp	Lj92
Lj93:
	movw	-4(%ebp),%ax
	call	L_SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN$stub
	movzbl	%al,%eax
	movw	-8(%ebp),%dx
	movl	L_TC_DATEUTILS_DAYSPERYEAR$non_lazy_ptr-Lj90(%ebx),%ecx
	cmpw	(%ecx,%eax,2),%dx
	jbe	Lj91
	jmp	Lj92
Lj91:
	movb	$1,-9(%ebp)
	jmp	Lj98
Lj92:
	movb	$0,-9(%ebp)
Lj98:
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ISVALIDDATEWEEK$WORD$WORD$WORD$$BOOLEAN
_DATEUTILS_ISVALIDDATEWEEK$WORD$WORD$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj106
	jmp	Lj102
Lj106:
	movzwl	-4(%ebp),%eax
	cmpl	$10000,%eax
	jl	Lj105
	jmp	Lj102
Lj105:
	movzwl	-12(%ebp),%eax
	decl	%eax
	cmpl	$7,%eax
	jb	Lj107
Lj107:
	jc	Lj104
	jmp	Lj102
Lj104:
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj103
	jmp	Lj102
Lj103:
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_WEEKSINAYEAR$WORD$$WORD$stub
	cmpw	-8(%ebp),%ax
	jae	Lj101
	jmp	Lj102
Lj101:
	movb	$1,-13(%ebp)
	jmp	Lj110
Lj102:
	movb	$0,-13(%ebp)
Lj110:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ISVALIDDATEMONTHWEEK$WORD$WORD$WORD$WORD$$BOOLEAN
_DATEUTILS_ISVALIDDATEMONTHWEEK$WORD$WORD$WORD$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj118
	jmp	Lj114
Lj118:
	movzwl	-4(%ebp),%eax
	cmpl	$10000,%eax
	jl	Lj117
	jmp	Lj114
Lj117:
	movzwl	-8(%ebp),%eax
	decl	%eax
	cmpl	$12,%eax
	jb	Lj119
Lj119:
	jc	Lj116
	jmp	Lj114
Lj116:
	movzwl	-12(%ebp),%eax
	decl	%eax
	cmpl	$5,%eax
	jb	Lj120
Lj120:
	jc	Lj115
	jmp	Lj114
Lj115:
	movzwl	8(%ebp),%eax
	decl	%eax
	cmpl	$7,%eax
	jb	Lj121
Lj121:
	jc	Lj113
	jmp	Lj114
Lj113:
	movb	$1,-13(%ebp)
	jmp	Lj122
Lj114:
	movb	$0,-13(%ebp)
Lj122:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_WEEKSINYEAR$TDATETIME$$WORD
_DATEUTILS_WEEKSINYEAR$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_YEAROF$TDATETIME$$WORD$stub
	call	L_DATEUTILS_WEEKSINAYEAR$WORD$$WORD$stub
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_WEEKSINAYEAR$WORD$$WORD
_DATEUTILS_WEEKSINAYEAR$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	$52,-6(%ebp)
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_STARTOFAYEAR$WORD$$TDATETIME$stub
	fstpl	(%esp)
	call	L_DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD$stub
	movw	%ax,-8(%ebp)
	movzwl	-8(%ebp),%eax
	cmpl	$4,%eax
	je	Lj141
	jmp	Lj143
Lj143:
	movzwl	-8(%ebp),%eax
	cmpl	$3,%eax
	je	Lj144
	jmp	Lj142
Lj144:
	movw	-4(%ebp),%ax
	call	L_SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj141
	jmp	Lj142
Lj141:
	incw	-6(%ebp)
Lj142:
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DAYSINYEAR$TDATETIME$$WORD
_DATEUTILS_DAYSINYEAR$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj148
Lj148:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_YEAROF$TDATETIME$$WORD$stub
	call	L_SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN$stub
	movzbl	%al,%eax
	movl	L_TC_DATEUTILS_DAYSPERYEAR$non_lazy_ptr-Lj148(%ebx),%edx
	movw	(%edx,%eax,2),%ax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DAYSINAYEAR$WORD$$WORD
_DATEUTILS_DAYSINAYEAR$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj156
Lj156:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	call	L_SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN$stub
	movzbl	%al,%eax
	movl	L_TC_DATEUTILS_DAYSPERYEAR$non_lazy_ptr-Lj156(%ebx),%edx
	movw	(%edx,%eax,2),%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DAYSINMONTH$TDATETIME$$WORD
_DATEUTILS_DAYSINMONTH$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj162
Lj162:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	movw	-4(%ebp),%ax
	call	L_SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN$stub
	movzbl	%al,%eax
	imull	$24,%eax
	movzwl	-6(%ebp),%edx
	movl	L_TC_SYSUTILS_MONTHDAYS$non_lazy_ptr-Lj162(%ebx),%ecx
	leal	(%eax,%ecx),%ecx
	movw	-2(%ecx,%edx,2),%ax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DAYSINAMONTH$WORD$WORD$$WORD
_DATEUTILS_DAYSINAMONTH$WORD$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj176
Lj176:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	-4(%ebp),%ax
	call	L_SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN$stub
	movzbl	%al,%eax
	imull	$24,%eax
	movzwl	-8(%ebp),%edx
	movl	L_TC_SYSUTILS_MONTHDAYS$non_lazy_ptr-Lj176(%ebx),%ecx
	leal	(%eax,%ecx),%ecx
	movw	-2(%ecx,%edx,2),%ax
	movw	%ax,-10(%ebp)
	movw	-10(%ebp),%ax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_TODAY$$TDATETIME
_DATEUTILS_TODAY$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_SYSUTILS_DATE$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_YESTERDAY$$TDATETIME
_DATEUTILS_YESTERDAY$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_SYSUTILS_DATE$$TDATETIME$stub
	fld1
	fsubrp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_TOMORROW$$TDATETIME
_DATEUTILS_TOMORROW$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_SYSUTILS_DATE$$TDATETIME$stub
	fld1
	faddp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ISTODAY$TDATETIME$$BOOLEAN
_DATEUTILS_ISTODAY$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_SYSUTILS_DATE$$TDATETIME$stub
	fstpl	(%esp)
	call	L_DATEUTILS_ISSAMEDAY$TDATETIME$TDATETIME$$BOOLEAN$stub
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ISSAMEDAY$TDATETIME$TDATETIME$$BOOLEAN
_DATEUTILS_ISSAMEDAY$TDATETIME$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fnstcw	-16(%ebp)
	fnstcw	-14(%ebp)
	orw	$3840,-16(%ebp)
	fldl	8(%ebp)
	fldcw	-16(%ebp)
	fistpq	-24(%ebp)
	fldcw	-14(%ebp)
	fwait
	fildq	-24(%ebp)
	fldl	16(%ebp)
	fsubp	%st,%st(1)
	fstpl	-12(%ebp)
	fldz
	fldl	-12(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jae	Lj207
	jmp	Lj206
Lj207:
	fld1
	fldl	-12(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj205
	jmp	Lj206
Lj205:
	movb	$1,-1(%ebp)
	jmp	Lj208
Lj206:
	movb	$0,-1(%ebp)
Lj208:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ISSAMEMONTH$TDATETIME$TDATETIME$$BOOLEAN
_DATEUTILS_ISSAMEMONTH$TDATETIME$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_YEAROF$TDATETIME$$WORD$stub
	movw	%ax,%bx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_YEAROF$TDATETIME$$WORD$stub
	cmpw	%ax,%bx
	seteb	-1(%ebp)
	cmpb	$0,-1(%ebp)
	jne	Lj219
	jmp	Lj218
Lj219:
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_MONTHOF$TDATETIME$$WORD$stub
	movw	%ax,%bx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_MONTHOF$TDATETIME$$WORD$stub
	cmpw	%ax,%bx
	je	Lj217
	jmp	Lj218
Lj217:
	movb	$1,-1(%ebp)
	jmp	Lj224
Lj218:
	movb	$0,-1(%ebp)
Lj224:
	movb	-1(%ebp),%al
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_PREVIOUSDAYOFWEEK$WORD$$WORD
_DATEUTILS_PREVIOUSDAYOFWEEK$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj226
Lj226:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%eax
	decl	%eax
	cmpl	$7,%eax
	jb	Lj229
Lj229:
	jnc	Lj227
	jmp	Lj228
Lj227:
	movl	$0,(%esp)
	movzwl	-4(%ebp),%eax
	movl	%eax,-10(%ebp)
	movl	$0,-14(%ebp)
	leal	-14(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SERRINVALIDDAYOFWEEK$non_lazy_ptr-Lj226(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj226(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj226(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj228:
	movzwl	-4(%ebp),%eax
	movl	L_TC_DATEUTILS_DOWMAP$non_lazy_ptr-Lj226(%ebx),%edx
	movw	-2(%edx,%eax,2),%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_YEAROF$TDATETIME$$WORD
_DATEUTILS_YEAROF$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-6(%ebp),%ecx
	leal	-4(%ebp),%edx
	leal	-2(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MONTHOF$TDATETIME$$WORD
_DATEUTILS_MONTHOF$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-6(%ebp),%ecx
	leal	-2(%ebp),%edx
	leal	-4(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_WEEKOF$TDATETIME$$WORD
_DATEUTILS_WEEKOF$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_WEEKOFTHEYEAR$TDATETIME$$WORD$stub
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DAYOF$TDATETIME$$WORD
_DATEUTILS_DAYOF$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-2(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_HOUROF$TDATETIME$$WORD
_DATEUTILS_HOUROF$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	leal	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-6(%ebp),%ecx
	leal	-4(%ebp),%edx
	leal	-2(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MINUTEOF$TDATETIME$$WORD
_DATEUTILS_MINUTEOF$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	leal	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-6(%ebp),%ecx
	leal	-2(%ebp),%edx
	leal	-4(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SECONDOF$TDATETIME$$WORD
_DATEUTILS_SECONDOF$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	leal	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-2(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MILLISECONDOF$TDATETIME$$WORD
_DATEUTILS_MILLISECONDOF$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	leal	-2(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-8(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_STARTOFTHEYEAR$TDATETIME$$TDATETIME
_DATEUTILS_STARTOFTHEYEAR$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_YEAROF$TDATETIME$$WORD$stub
	movw	$1,%cx
	movw	$1,%dx
	call	L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ENDOFTHEYEAR$TDATETIME$$TDATETIME
_DATEUTILS_ENDOFTHEYEAR$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_YEAROF$TDATETIME$$WORD$stub
	movw	$999,(%esp)
	movw	$59,4(%esp)
	movw	$59,8(%esp)
	movw	$23,12(%esp)
	movw	$31,%cx
	movw	$12,%dx
	call	L_DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_STARTOFAYEAR$WORD$$TDATETIME
_DATEUTILS_STARTOFAYEAR$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	movw	$1,%cx
	movw	$1,%dx
	call	L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ENDOFAYEAR$WORD$$TDATETIME
_DATEUTILS_ENDOFAYEAR$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	$999,(%esp)
	movw	$59,4(%esp)
	movw	$59,8(%esp)
	movw	$23,12(%esp)
	movw	-4(%ebp),%ax
	movw	$31,%cx
	movw	$12,%dx
	call	L_DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_STARTOFTHEMONTH$TDATETIME$$TDATETIME
_DATEUTILS_STARTOFTHEMONTH$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-14(%ebp),%ecx
	leal	-12(%ebp),%edx
	leal	-10(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	movw	-12(%ebp),%dx
	movw	-10(%ebp),%ax
	movw	$1,%cx
	call	L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ENDOFTHEMONTH$TDATETIME$$TDATETIME
_DATEUTILS_ENDOFTHEMONTH$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj405
Lj405:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-14(%ebp),%ecx
	leal	-12(%ebp),%edx
	leal	-10(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	movw	$999,(%esp)
	movw	$59,4(%esp)
	movw	$59,8(%esp)
	movw	$23,12(%esp)
	movw	-10(%ebp),%ax
	call	L_SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN$stub
	movzbl	%al,%eax
	imull	$24,%eax
	movzwl	-12(%ebp),%edx
	movl	L_TC_SYSUTILS_MONTHDAYS$non_lazy_ptr-Lj405(%ebx),%ecx
	leal	(%eax,%ecx),%ecx
	movw	-2(%ecx,%edx,2),%cx
	movw	-12(%ebp),%dx
	movw	-10(%ebp),%ax
	call	L_DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_STARTOFAMONTH$WORD$WORD$$TDATETIME
_DATEUTILS_STARTOFAMONTH$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	movw	$1,%cx
	call	L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ENDOFAMONTH$WORD$WORD$$TDATETIME
_DATEUTILS_ENDOFAMONTH$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj443
Lj443:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	$999,(%esp)
	movw	$59,4(%esp)
	movw	$59,8(%esp)
	movw	$23,12(%esp)
	movw	-4(%ebp),%ax
	call	L_SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN$stub
	movzbl	%al,%eax
	imull	$24,%eax
	movzwl	-8(%ebp),%ecx
	movl	L_TC_SYSUTILS_MONTHDAYS$non_lazy_ptr-Lj443(%ebx),%edx
	leal	(%eax,%edx),%edx
	movw	-2(%edx,%ecx,2),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_STARTOFTHEWEEK$TDATETIME$$TDATETIME
_DATEUTILS_STARTOFTHEWEEK$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD$stub
	movzwl	%ax,%eax
	movzwl	%ax,%eax
	movl	$0,%ecx
	fnstcw	-12(%ebp)
	fnstcw	-10(%ebp)
	orw	$3840,-12(%ebp)
	fldl	8(%ebp)
	fldcw	-12(%ebp)
	fistpq	-20(%ebp)
	fldcw	-10(%ebp)
	fwait
	movl	-20(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	-16(%ebp),%edx
	sbbl	%ecx,%edx
	movl	%edx,%ecx
	addl	$1,%eax
	adcl	$0,%ecx
	movl	%eax,-16(%ebp)
	movl	%ecx,-12(%ebp)
	fildq	-16(%ebp)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ENDOFTHEWEEK$TDATETIME$$TDATETIME
_DATEUTILS_ENDOFTHEWEEK$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj469
Lj469:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD$stub
	movzwl	%ax,%eax
	movl	%eax,-12(%ebp)
	fildl	-12(%ebp)
	fldl	8(%ebp)
	fsubp	%st,%st(1)
	movl	L_$DATEUTILS$_Ld3$non_lazy_ptr-Lj469(%ebx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	fstpl	(%esp)
	call	L_DATEUTILS_ENDOFTHEDAY$TDATETIME$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_STARTOFAWEEK$WORD$WORD$WORD$$TDATETIME
_DATEUTILS_STARTOFAWEEK$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_ENCODEDATEWEEK$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_STARTOFAWEEK$WORD$WORD$$TDATETIME
_DATEUTILS_STARTOFAWEEK$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	movw	$1,%cx
	call	L_DATEUTILS_STARTOFAWEEK$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ENDOFAWEEK$WORD$WORD$WORD$$TDATETIME
_DATEUTILS_ENDOFAWEEK$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_ENCODEDATEWEEK$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	(%esp)
	call	L_DATEUTILS_ENDOFTHEDAY$TDATETIME$$TDATETIME$stub
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ENDOFAWEEK$WORD$WORD$$TDATETIME
_DATEUTILS_ENDOFAWEEK$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	movw	$7,%cx
	call	L_DATEUTILS_ENCODEDATEWEEK$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	(%esp)
	call	L_DATEUTILS_ENDOFTHEDAY$TDATETIME$$TDATETIME$stub
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_STARTOFTHEDAY$TDATETIME$$TDATETIME
_DATEUTILS_STARTOFTHEDAY$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fnstcw	-12(%ebp)
	fnstcw	-10(%ebp)
	orw	$3840,-12(%ebp)
	fldl	8(%ebp)
	fldcw	-12(%ebp)
	fistpq	-20(%ebp)
	fldcw	-10(%ebp)
	fwait
	fildq	-20(%ebp)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ENDOFTHEDAY$TDATETIME$$TDATETIME
_DATEUTILS_ENDOFTHEDAY$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-14(%ebp),%ecx
	leal	-12(%ebp),%edx
	leal	-10(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	movw	$999,(%esp)
	movw	$59,4(%esp)
	movw	$59,8(%esp)
	movw	$23,12(%esp)
	movw	-14(%ebp),%cx
	movw	-12(%ebp),%dx
	movw	-10(%ebp),%ax
	call	L_DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_STARTOFADAY$WORD$WORD$WORD$$TDATETIME
_DATEUTILS_STARTOFADAY$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_STARTOFADAY$WORD$WORD$$TDATETIME
_DATEUTILS_STARTOFADAY$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_STARTOFAYEAR$WORD$$TDATETIME$stub
	movzwl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	fildl	-20(%ebp)
	faddp	%st,%st(1)
	fld1
	fsubrp	%st,%st(1)
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ENDOFADAY$WORD$WORD$WORD$$TDATETIME
_DATEUTILS_ENDOFADAY$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	(%esp)
	call	L_DATEUTILS_ENDOFTHEDAY$TDATETIME$$TDATETIME$stub
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ENDOFADAY$WORD$WORD$$TDATETIME
_DATEUTILS_ENDOFADAY$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_STARTOFAYEAR$WORD$$TDATETIME$stub
	movzwl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	fildl	-20(%ebp)
	faddp	%st,%st(1)
	fld1
	fsubrp	%st,%st(1)
	fstpl	-32(%ebp)
	movw	$999,(%esp)
	movw	$59,%cx
	movw	$59,%dx
	movw	$23,%ax
	call	L_SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fldl	-32(%ebp)
	faddp	%st,%st(1)
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MONTHOFTHEYEAR$TDATETIME$$WORD
_DATEUTILS_MONTHOFTHEYEAR$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_MONTHOF$TDATETIME$$WORD$stub
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_WEEKOFTHEYEAR$TDATETIME$$WORD
_DATEUTILS_WEEKOFTHEYEAR$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-6(%ebp),%ecx
	leal	-2(%ebp),%edx
	leal	-4(%ebp),%eax
	call	L_DATEUTILS_DECODEDATEWEEK$TDATETIME$WORD$WORD$WORD$stub
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_WEEKOFTHEYEAR$TDATETIME$WORD$$WORD
_DATEUTILS_WEEKOFTHEYEAR$TDATETIME$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%ecx
	leal	-6(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DATEUTILS_DECODEDATEWEEK$TDATETIME$WORD$WORD$WORD$stub
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DAYOFTHEYEAR$TDATETIME$$WORD
_DATEUTILS_DAYOFTHEYEAR$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fnstcw	-6(%ebp)
	fnstcw	-4(%ebp)
	orw	$3840,-6(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_STARTOFTHEYEAR$TDATETIME$$TDATETIME$stub
	fldl	8(%ebp)
	fsubp	%st,%st(1)
	fld1
	faddp	%st,%st(1)
	fldcw	-6(%ebp)
	fistpq	-16(%ebp)
	fldcw	-4(%ebp)
	fwait
	movw	-16(%ebp),%ax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_HOUROFTHEYEAR$TDATETIME$$WORD
_DATEUTILS_HOUROFTHEYEAR$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	leal	-10(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-8(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movzwl	-4(%ebp),%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_DAYOFTHEYEAR$TDATETIME$$WORD$stub
	movzwl	%ax,%eax
	decl	%eax
	imull	$24,%eax
	addl	%eax,%ebx
	movw	%bx,-2(%ebp)
	movw	-2(%ebp),%ax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MINUTEOFTHEYEAR$TDATETIME$$LONGWORD
_DATEUTILS_MINUTEOFTHEYEAR$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movzwl	-8(%ebp),%esi
	movzwl	-6(%ebp),%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_DAYOFTHEYEAR$TDATETIME$$WORD$stub
	movzwl	%ax,%eax
	decl	%eax
	imull	$24,%eax
	addl	%eax,%ebx
	imull	$60,%ebx
	addl	%ebx,%esi
	movl	%esi,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SECONDOFTHEYEAR$TDATETIME$$LONGWORD
_DATEUTILS_SECONDOFTHEYEAR$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movzwl	-8(%ebp),%esi
	movzwl	-6(%ebp),%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_DAYOFTHEYEAR$TDATETIME$$WORD$stub
	movzwl	%ax,%eax
	decl	%eax
	imull	$24,%eax
	addl	%eax,%ebx
	imull	$60,%ebx
	addl	%ebx,%esi
	imull	$60,%esi
	movzwl	-10(%ebp),%eax
	addl	%eax,%esi
	movl	%esi,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MILLISECONDOFTHEYEAR$TDATETIME$$INT64
_DATEUTILS_MILLISECONDOFTHEYEAR$TDATETIME$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-14(%ebp),%ecx
	leal	-12(%ebp),%edx
	leal	-10(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movzwl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$0,%ebx
	movzwl	-10(%ebp),%edi
	movl	$0,%esi
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_DAYOFTHEYEAR$TDATETIME$$WORD$stub
	movzwl	%ax,%eax
	movzwl	%ax,%eax
	movl	$0,%edx
	subl	$1,%eax
	sbbl	$0,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	movl	$24,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	addl	%eax,%edi
	adcl	%edx,%esi
	movl	%esi,12(%esp)
	movl	%edi,8(%esp)
	movl	$0,4(%esp)
	movl	$60,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	addl	%eax,-20(%ebp)
	adcl	%edx,%ebx
	movl	%ebx,12(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	movl	$60,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movzwl	-14(%ebp),%ecx
	movl	$0,%ebx
	addl	%ecx,%eax
	adcl	%ebx,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	movl	$1000,(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movzwl	-16(%ebp),%ebx
	movl	$0,%ecx
	addl	%ebx,%eax
	adcl	%ecx,%edx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_WEEKOFTHEMONTH$TDATETIME$$WORD
_DATEUTILS_WEEKOFTHEMONTH$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	leal	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-2(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	L_DATEUTILS_DECODEDATEMONTHWEEK$TDATETIME$WORD$WORD$WORD$WORD$stub
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_WEEKOFTHEMONTH$TDATETIME$WORD$WORD$$WORD
_DATEUTILS_WEEKOFTHEMONTH$TDATETIME$WORD$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-10(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DATEUTILS_DECODEDATEMONTHWEEK$TDATETIME$WORD$WORD$WORD$WORD$stub
	movw	-10(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DAYOFTHEMONTH$TDATETIME$$WORD
_DATEUTILS_DAYOFTHEMONTH$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-2(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_HOUROFTHEMONTH$TDATETIME$$WORD
_DATEUTILS_HOUROFTHEMONTH$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	leal	-14(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-10(%ebp),%eax
	movl	%eax,12(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	12(%ebp),%eax
	movl	%eax,20(%esp)
	leal	-8(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	L_DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$stub
	movzwl	-8(%ebp),%eax
	decl	%eax
	imull	$24,%eax
	movzwl	-10(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MINUTEOFTHEMONTH$TDATETIME$$WORD
_DATEUTILS_MINUTEOFTHEMONTH$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	leal	-14(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-10(%ebp),%eax
	movl	%eax,12(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	12(%ebp),%eax
	movl	%eax,20(%esp)
	leal	-8(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	L_DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$stub
	movzwl	-8(%ebp),%eax
	decl	%eax
	imull	$24,%eax
	movzwl	-10(%ebp),%edx
	addl	%edx,%eax
	imull	$60,%eax
	movzwl	-12(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SECONDOFTHEMONTH$TDATETIME$$LONGWORD
_DATEUTILS_SECONDOFTHEMONTH$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	leal	-18(%ebp),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-14(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	12(%ebp),%eax
	movl	%eax,20(%esp)
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$stub
	movzwl	-10(%ebp),%edx
	decl	%edx
	imull	$24,%edx
	movzwl	-12(%ebp),%eax
	addl	%eax,%edx
	imull	$60,%edx
	movzwl	-14(%ebp),%eax
	addl	%eax,%edx
	imull	$60,%edx
	movzwl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MILLISECONDOFTHEMONTH$TDATETIME$$LONGWORD
_DATEUTILS_MILLISECONDOFTHEMONTH$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	leal	-18(%ebp),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-14(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	12(%ebp),%eax
	movl	%eax,20(%esp)
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$stub
	movzwl	-10(%ebp),%edx
	decl	%edx
	imull	$24,%edx
	movzwl	-12(%ebp),%eax
	addl	%eax,%edx
	imull	$60,%edx
	movzwl	-14(%ebp),%eax
	addl	%eax,%edx
	imull	$60,%edx
	movzwl	-16(%ebp),%eax
	addl	%eax,%edx
	imull	$1000,%edx
	movzwl	-18(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD
_DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj827
Lj827:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_SYSUTILS_DAYOFWEEK$TDATETIME$$LONGINT$stub
	movl	L_TC_DATEUTILS_DOWMAP$non_lazy_ptr-Lj827(%ebx),%edx
	movw	-2(%edx,%eax,2),%ax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_HOUROFTHEWEEK$TDATETIME$$WORD
_DATEUTILS_HOUROFTHEWEEK$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	leal	-10(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-8(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD$stub
	movzwl	%ax,%eax
	decl	%eax
	imull	$24,%eax
	movzwl	-4(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MINUTEOFTHEWEEK$TDATETIME$$WORD
_DATEUTILS_MINUTEOFTHEWEEK$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	leal	-10(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-8(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD$stub
	movzwl	%ax,%eax
	decl	%eax
	imull	$24,%eax
	movzwl	-4(%ebp),%edx
	addl	%edx,%eax
	imull	$60,%eax
	movzwl	-6(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SECONDOFTHEWEEK$TDATETIME$$LONGWORD
_DATEUTILS_SECONDOFTHEWEEK$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD$stub
	movzwl	%ax,%eax
	decl	%eax
	imull	$24,%eax
	movzwl	-6(%ebp),%edx
	addl	%edx,%eax
	imull	$60,%eax
	movzwl	-8(%ebp),%edx
	addl	%edx,%eax
	imull	$60,%eax
	movzwl	-10(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MILLISECONDOFTHEWEEK$TDATETIME$$LONGWORD
_DATEUTILS_MILLISECONDOFTHEWEEK$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD$stub
	movzwl	%ax,%eax
	decl	%eax
	imull	$24,%eax
	movzwl	-6(%ebp),%edx
	addl	%edx,%eax
	imull	$60,%eax
	movzwl	-8(%ebp),%edx
	addl	%edx,%eax
	imull	$60,%eax
	movzwl	-10(%ebp),%edx
	addl	%edx,%eax
	imull	$1000,%eax
	movzwl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_HOUROFTHEDAY$TDATETIME$$WORD
_DATEUTILS_HOUROFTHEDAY$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_HOUROF$TDATETIME$$WORD$stub
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MINUTEOFTHEDAY$TDATETIME$$WORD
_DATEUTILS_MINUTEOFTHEDAY$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	leal	-10(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-8(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movzwl	-4(%ebp),%eax
	imull	$60,%eax
	movzwl	-6(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SECONDOFTHEDAY$TDATETIME$$LONGWORD
_DATEUTILS_SECONDOFTHEDAY$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movzwl	-6(%ebp),%edx
	imull	$60,%edx
	movzwl	-8(%ebp),%eax
	addl	%eax,%edx
	imull	$60,%edx
	movzwl	-10(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MILLISECONDOFTHEDAY$TDATETIME$$LONGWORD
_DATEUTILS_MILLISECONDOFTHEDAY$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movzwl	-6(%ebp),%edx
	imull	$60,%edx
	movzwl	-8(%ebp),%eax
	addl	%eax,%edx
	imull	$60,%edx
	movzwl	-10(%ebp),%eax
	addl	%eax,%edx
	imull	$1000,%edx
	movzwl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MINUTEOFTHEHOUR$TDATETIME$$WORD
_DATEUTILS_MINUTEOFTHEHOUR$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_MINUTEOF$TDATETIME$$WORD$stub
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SECONDOFTHEHOUR$TDATETIME$$WORD
_DATEUTILS_SECONDOFTHEHOUR$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	leal	-10(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-6(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-4(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movzwl	-8(%ebp),%eax
	imull	$60,%eax
	movzwl	-6(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MILLISECONDOFTHEHOUR$TDATETIME$$LONGWORD
_DATEUTILS_MILLISECONDOFTHEHOUR$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-8(%ebp),%ecx
	leal	-10(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movzwl	-10(%ebp),%edx
	imull	$60,%edx
	movzwl	-8(%ebp),%eax
	addl	%eax,%edx
	imull	$1000,%edx
	movzwl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SECONDOFTHEMINUTE$TDATETIME$$WORD
_DATEUTILS_SECONDOFTHEMINUTE$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_SECONDOF$TDATETIME$$WORD$stub
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MILLISECONDOFTHEMINUTE$TDATETIME$$LONGWORD
_DATEUTILS_MILLISECONDOFTHEMINUTE$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-8(%ebp),%ecx
	leal	-10(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movzwl	-8(%ebp),%eax
	imull	$1000,%eax
	movzwl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MILLISECONDOFTHESECOND$TDATETIME$$WORD
_DATEUTILS_MILLISECONDOFTHESECOND$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_MILLISECONDOF$TDATETIME$$WORD$stub
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_WITHINPASTYEARS$TDATETIME$TDATETIME$LONGINT$$BOOLEAN
_DATEUTILS_WITHINPASTYEARS$TDATETIME$TDATETIME$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_YEARSBETWEEN$TDATETIME$TDATETIME$$LONGINT$stub
	cmpl	-4(%ebp),%eax
	setleb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_WITHINPASTMONTHS$TDATETIME$TDATETIME$LONGINT$$BOOLEAN
_DATEUTILS_WITHINPASTMONTHS$TDATETIME$TDATETIME$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_MONTHSBETWEEN$TDATETIME$TDATETIME$$LONGINT$stub
	cmpl	-4(%ebp),%eax
	setleb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_WITHINPASTWEEKS$TDATETIME$TDATETIME$LONGINT$$BOOLEAN
_DATEUTILS_WITHINPASTWEEKS$TDATETIME$TDATETIME$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_WEEKSBETWEEN$TDATETIME$TDATETIME$$LONGINT$stub
	cmpl	-4(%ebp),%eax
	setleb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_WITHINPASTDAYS$TDATETIME$TDATETIME$LONGINT$$BOOLEAN
_DATEUTILS_WITHINPASTDAYS$TDATETIME$TDATETIME$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_DAYSBETWEEN$TDATETIME$TDATETIME$$LONGINT$stub
	cmpl	-4(%ebp),%eax
	setleb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_WITHINPASTHOURS$TDATETIME$TDATETIME$INT64$$BOOLEAN
_DATEUTILS_WITHINPASTHOURS$TDATETIME$TDATETIME$INT64$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	24(%ebp),%eax
	movl	%eax,8(%esp)
	movl	28(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_HOURSBETWEEN$TDATETIME$TDATETIME$$INT64$stub
	cmpl	12(%ebp),%edx
	jl	Lj1038
	jg	Lj1039
	cmpl	8(%ebp),%eax
	jbe	Lj1038
	jmp	Lj1039
	jmp	Lj1039
Lj1038:
	movb	$1,-1(%ebp)
	jmp	Lj1044
Lj1039:
	movb	$0,-1(%ebp)
Lj1044:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_WITHINPASTMINUTES$TDATETIME$TDATETIME$INT64$$BOOLEAN
_DATEUTILS_WITHINPASTMINUTES$TDATETIME$TDATETIME$INT64$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	24(%ebp),%eax
	movl	%eax,8(%esp)
	movl	28(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_MINUTESBETWEEN$TDATETIME$TDATETIME$$INT64$stub
	cmpl	12(%ebp),%edx
	jl	Lj1047
	jg	Lj1048
	cmpl	8(%ebp),%eax
	jbe	Lj1047
	jmp	Lj1048
	jmp	Lj1048
Lj1047:
	movb	$1,-1(%ebp)
	jmp	Lj1053
Lj1048:
	movb	$0,-1(%ebp)
Lj1053:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_WITHINPASTSECONDS$TDATETIME$TDATETIME$INT64$$BOOLEAN
_DATEUTILS_WITHINPASTSECONDS$TDATETIME$TDATETIME$INT64$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	24(%ebp),%eax
	movl	%eax,8(%esp)
	movl	28(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_SECONDSBETWEEN$TDATETIME$TDATETIME$$INT64$stub
	cmpl	12(%ebp),%edx
	jl	Lj1056
	jg	Lj1057
	cmpl	8(%ebp),%eax
	jbe	Lj1056
	jmp	Lj1057
	jmp	Lj1057
Lj1056:
	movb	$1,-1(%ebp)
	jmp	Lj1062
Lj1057:
	movb	$0,-1(%ebp)
Lj1062:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_WITHINPASTMILLISECONDS$TDATETIME$TDATETIME$INT64$$BOOLEAN
_DATEUTILS_WITHINPASTMILLISECONDS$TDATETIME$TDATETIME$INT64$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	24(%ebp),%eax
	movl	%eax,8(%esp)
	movl	28(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_MILLISECONDSBETWEEN$TDATETIME$TDATETIME$$INT64$stub
	cmpl	12(%ebp),%edx
	jl	Lj1065
	jg	Lj1066
	cmpl	8(%ebp),%eax
	jbe	Lj1065
	jmp	Lj1066
	jmp	Lj1066
Lj1065:
	movb	$1,-1(%ebp)
	jmp	Lj1071
Lj1066:
	movb	$0,-1(%ebp)
Lj1071:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1073
Lj1073:
	popl	%edx
	fldl	8(%ebp)
	fldl	16(%ebp)
	fsubp	%st,%st(1)
	fstpl	-8(%ebp)
	fldz
	fldl	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1078
	jmp	Lj1077
Lj1078:
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1076
	jmp	Lj1077
Lj1076:
	movl	L_$DATEUTILS$_Ld4$non_lazy_ptr-Lj1073(%edx),%eax
	fldl	(%eax)
	fldl	-8(%ebp)
	fsubp	%st,%st(1)
	fstpl	-8(%ebp)
	jmp	Lj1081
Lj1077:
	movl	L_$DATEUTILS$_Ld5$non_lazy_ptr-Lj1073(%edx),%eax
	fldl	(%eax)
	fldl	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1084
	jmp	Lj1083
Lj1084:
	movl	L_$DATEUTILS$_Ld5$non_lazy_ptr-Lj1073(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1082
	jmp	Lj1083
Lj1082:
	movl	L_$DATEUTILS$_Ld4$non_lazy_ptr-Lj1073(%edx),%eax
	fldl	(%eax)
	fldl	-8(%ebp)
	faddp	%st,%st(1)
	fstpl	-8(%ebp)
Lj1083:
Lj1081:
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_YEARSBETWEEN$TDATETIME$TDATETIME$$LONGINT
_DATEUTILS_YEARSBETWEEN$TDATETIME$TDATETIME$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj1088
Lj1088:
	popl	%ebx
	fnstcw	-8(%ebp)
	fnstcw	-6(%ebp)
	orw	$3840,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME$stub
	fabs
	movl	L_$DATEUTILS$_Ld6$non_lazy_ptr-Lj1088(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
	movl	L_TC_DATEUTILS_APPROXDAYSPERYEAR$non_lazy_ptr-Lj1088(%ebx),%eax
	fldl	(%eax)
	fdivrp	%st,%st(1)
	fldcw	-8(%ebp)
	fistpq	-16(%ebp)
	fldcw	-6(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MONTHSBETWEEN$TDATETIME$TDATETIME$$LONGINT
_DATEUTILS_MONTHSBETWEEN$TDATETIME$TDATETIME$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj1096
Lj1096:
	popl	%ebx
	fnstcw	-8(%ebp)
	fnstcw	-6(%ebp)
	orw	$3840,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME$stub
	fabs
	movl	L_$DATEUTILS$_Ld6$non_lazy_ptr-Lj1096(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
	movl	L_TC_DATEUTILS_APPROXDAYSPERMONTH$non_lazy_ptr-Lj1096(%ebx),%eax
	fldl	(%eax)
	fdivrp	%st,%st(1)
	fldcw	-8(%ebp)
	fistpq	-16(%ebp)
	fldcw	-6(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_WEEKSBETWEEN$TDATETIME$TDATETIME$$LONGINT
_DATEUTILS_WEEKSBETWEEN$TDATETIME$TDATETIME$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	call	Lj1104
Lj1104:
	popl	%ebx
	movl	$0,-8(%ebp)
	movl	$7,-12(%ebp)
	fnstcw	-16(%ebp)
	fnstcw	-14(%ebp)
	orw	$3840,-16(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME$stub
	fabs
	movl	L_$DATEUTILS$_Ld6$non_lazy_ptr-Lj1104(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
	fldcw	-16(%ebp)
	fistpq	-24(%ebp)
	fldcw	-14(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,12(%esp)
	call	Lfpc_div_int64$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DAYSBETWEEN$TDATETIME$TDATETIME$$LONGINT
_DATEUTILS_DAYSBETWEEN$TDATETIME$TDATETIME$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj1116
Lj1116:
	popl	%ebx
	fnstcw	-8(%ebp)
	fnstcw	-6(%ebp)
	orw	$3840,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME$stub
	fabs
	movl	L_$DATEUTILS$_Ld6$non_lazy_ptr-Lj1116(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
	fldcw	-8(%ebp)
	fistpq	-16(%ebp)
	fldcw	-6(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_HOURSBETWEEN$TDATETIME$TDATETIME$$INT64
_DATEUTILS_HOURSBETWEEN$TDATETIME$TDATETIME$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj1124
Lj1124:
	popl	%ebx
	fnstcw	-12(%ebp)
	fnstcw	-10(%ebp)
	orw	$3840,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME$stub
	fabs
	movl	L_$DATEUTILS$_Ld6$non_lazy_ptr-Lj1124(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
	movl	L_$DATEUTILS$_Ld7$non_lazy_ptr-Lj1124(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldcw	-12(%ebp)
	fistpq	-20(%ebp)
	fldcw	-10(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MINUTESBETWEEN$TDATETIME$TDATETIME$$INT64
_DATEUTILS_MINUTESBETWEEN$TDATETIME$TDATETIME$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj1132
Lj1132:
	popl	%ebx
	fnstcw	-12(%ebp)
	fnstcw	-10(%ebp)
	orw	$3840,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME$stub
	fabs
	movl	L_$DATEUTILS$_Ld6$non_lazy_ptr-Lj1132(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
	movl	L_$DATEUTILS$_Ld8$non_lazy_ptr-Lj1132(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldcw	-12(%ebp)
	fistpq	-20(%ebp)
	fldcw	-10(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SECONDSBETWEEN$TDATETIME$TDATETIME$$INT64
_DATEUTILS_SECONDSBETWEEN$TDATETIME$TDATETIME$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj1140
Lj1140:
	popl	%ebx
	fnstcw	-12(%ebp)
	fnstcw	-10(%ebp)
	orw	$3840,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME$stub
	fabs
	movl	L_$DATEUTILS$_Ld6$non_lazy_ptr-Lj1140(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
	movl	L_$DATEUTILS$_Ld9$non_lazy_ptr-Lj1140(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldcw	-12(%ebp)
	fistpq	-20(%ebp)
	fldcw	-10(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MILLISECONDSBETWEEN$TDATETIME$TDATETIME$$INT64
_DATEUTILS_MILLISECONDSBETWEEN$TDATETIME$TDATETIME$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj1148
Lj1148:
	popl	%ebx
	fnstcw	-12(%ebp)
	fnstcw	-10(%ebp)
	orw	$3840,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME$stub
	fabs
	movl	L_$DATEUTILS$_Ld6$non_lazy_ptr-Lj1148(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
	movl	L_$DATEUTILS$_Ld10$non_lazy_ptr-Lj1148(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fldcw	-12(%ebp)
	fistpq	-20(%ebp)
	fldcw	-10(%ebp)
	fwait
	movl	-20(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_YEARSPAN$TDATETIME$TDATETIME$$DOUBLE
_DATEUTILS_YEARSPAN$TDATETIME$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1156
Lj1156:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME$stub
	fabs
	movl	L_TC_DATEUTILS_APPROXDAYSPERYEAR$non_lazy_ptr-Lj1156(%ebx),%eax
	fldl	(%eax)
	fdivrp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MONTHSPAN$TDATETIME$TDATETIME$$DOUBLE
_DATEUTILS_MONTHSPAN$TDATETIME$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1164
Lj1164:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME$stub
	fabs
	movl	L_TC_DATEUTILS_APPROXDAYSPERMONTH$non_lazy_ptr-Lj1164(%ebx),%eax
	fldl	(%eax)
	fdivrp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_WEEKSPAN$TDATETIME$TDATETIME$$DOUBLE
_DATEUTILS_WEEKSPAN$TDATETIME$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1172
Lj1172:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME$stub
	fabs
	movl	L_$DATEUTILS$_Ld11$non_lazy_ptr-Lj1172(%ebx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DAYSPAN$TDATETIME$TDATETIME$$DOUBLE
_DATEUTILS_DAYSPAN$TDATETIME$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME$stub
	fabs
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_HOURSPAN$TDATETIME$TDATETIME$$DOUBLE
_DATEUTILS_HOURSPAN$TDATETIME$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1188
Lj1188:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME$stub
	fabs
	movl	L_$DATEUTILS$_Ld7$non_lazy_ptr-Lj1188(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MINUTESPAN$TDATETIME$TDATETIME$$DOUBLE
_DATEUTILS_MINUTESPAN$TDATETIME$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1196
Lj1196:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME$stub
	fabs
	movl	L_$DATEUTILS$_Ld8$non_lazy_ptr-Lj1196(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SECONDSPAN$TDATETIME$TDATETIME$$DOUBLE
_DATEUTILS_SECONDSPAN$TDATETIME$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1204
Lj1204:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME$stub
	fabs
	movl	L_$DATEUTILS$_Ld9$non_lazy_ptr-Lj1204(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MILLISECONDSPAN$TDATETIME$TDATETIME$$DOUBLE
_DATEUTILS_MILLISECONDSPAN$TDATETIME$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1212
Lj1212:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME$stub
	fabs
	movl	L_$DATEUTILS$_Ld10$non_lazy_ptr-Lj1212(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME
_DATEUTILS_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj1220
Lj1220:
	popl	%ecx
	movl	%eax,-4(%ebp)
	fldz
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1223
	jmp	Lj1222
Lj1223:
	movl	-4(%ebp),%eax
	fldz
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1221
	jmp	Lj1222
Lj1221:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	L_$DATEUTILS$_Ld4$non_lazy_ptr-Lj1220(%ecx),%eax
	fldl	(%eax)
	fldl	(%ebx)
	fsubp	%st,%st(1)
	fstpl	(%edx)
	jmp	Lj1226
Lj1222:
	movl	L_$DATEUTILS$_Ld5$non_lazy_ptr-Lj1220(%ecx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1229
	jmp	Lj1228
Lj1229:
	movl	-4(%ebp),%eax
	movl	L_$DATEUTILS$_Ld5$non_lazy_ptr-Lj1220(%ecx),%edx
	fldl	(%edx)
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1227
	jmp	Lj1228
Lj1227:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	L_$DATEUTILS$_Ld4$non_lazy_ptr-Lj1220(%ecx),%ebx
	fldl	(%ebx)
	fldl	(%edx)
	faddp	%st,%st(1)
	fstpl	(%eax)
Lj1228:
Lj1226:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INCYEAR$TDATETIME$LONGINT$$TDATETIME
_DATEUTILS_INCYEAR$TDATETIME$LONGINT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	leal	-26(%ebp),%eax
	movl	%eax,(%esp)
	leal	-24(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-22(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	12(%ebp),%eax
	movl	%eax,20(%esp)
	leal	-18(%ebp),%ecx
	leal	-16(%ebp),%edx
	leal	-14(%ebp),%eax
	call	L_DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$stub
	movzwl	-14(%ebp),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-14(%ebp)
	movzwl	-16(%ebp),%eax
	cmpl	$2,%eax
	je	Lj1255
	jmp	Lj1253
Lj1255:
	movzwl	-18(%ebp),%eax
	cmpl	$29,%eax
	je	Lj1254
	jmp	Lj1253
Lj1254:
	movw	-14(%ebp),%ax
	call	L_SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1252
	jmp	Lj1253
Lj1252:
	movw	$28,-18(%ebp)
Lj1253:
	movw	-26(%ebp),%ax
	movw	%ax,(%esp)
	movw	-24(%ebp),%ax
	movw	%ax,4(%esp)
	movw	-22(%ebp),%ax
	movw	%ax,8(%esp)
	movw	-20(%ebp),%ax
	movw	%ax,12(%esp)
	movw	-18(%ebp),%cx
	movw	-16(%ebp),%dx
	movw	-14(%ebp),%ax
	call	L_DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INCYEAR$TDATETIME$$TDATETIME
_DATEUTILS_INCYEAR$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	$1,%eax
	call	L_DATEUTILS_INCYEAR$TDATETIME$LONGINT$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INCWEEK$TDATETIME$LONGINT$$TDATETIME
_DATEUTILS_INCWEEK$TDATETIME$LONGINT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	imull	$7,%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fldl	8(%ebp)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%eax
	call	L_DATEUTILS_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME$stub
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INCWEEK$TDATETIME$$TDATETIME
_DATEUTILS_INCWEEK$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	$1,%eax
	call	L_DATEUTILS_INCWEEK$TDATETIME$LONGINT$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INCDAY$TDATETIME$LONGINT$$TDATETIME
_DATEUTILS_INCDAY$TDATETIME$LONGINT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fldl	8(%ebp)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%eax
	call	L_DATEUTILS_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME$stub
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INCDAY$TDATETIME$$TDATETIME
_DATEUTILS_INCDAY$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	$1,%eax
	call	L_DATEUTILS_INCDAY$TDATETIME$LONGINT$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INCHOUR$TDATETIME$INT64$$TDATETIME
_DATEUTILS_INCHOUR$TDATETIME$INT64$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1317
Lj1317:
	popl	%ebx
	fildq	8(%ebp)
	movl	L_$DATEUTILS$_Ld7$non_lazy_ptr-Lj1317(%ebx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	fldl	16(%ebp)
	faddp	%st,%st(1)
	fstpl	-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%eax
	call	L_DATEUTILS_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME$stub
	fldl	-8(%ebp)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INCHOUR$TDATETIME$$TDATETIME
_DATEUTILS_INCHOUR$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	$0,4(%esp)
	movl	$1,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_INCHOUR$TDATETIME$INT64$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INCMINUTE$TDATETIME$INT64$$TDATETIME
_DATEUTILS_INCMINUTE$TDATETIME$INT64$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1333
Lj1333:
	popl	%ebx
	fildq	8(%ebp)
	movl	L_$DATEUTILS$_Ld8$non_lazy_ptr-Lj1333(%ebx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	fldl	16(%ebp)
	faddp	%st,%st(1)
	fstpl	-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%eax
	call	L_DATEUTILS_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME$stub
	fldl	-8(%ebp)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INCMINUTE$TDATETIME$$TDATETIME
_DATEUTILS_INCMINUTE$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	$0,4(%esp)
	movl	$1,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_INCMINUTE$TDATETIME$INT64$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INCSECOND$TDATETIME$INT64$$TDATETIME
_DATEUTILS_INCSECOND$TDATETIME$INT64$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1349
Lj1349:
	popl	%ebx
	fildq	8(%ebp)
	movl	L_$DATEUTILS$_Ld9$non_lazy_ptr-Lj1349(%ebx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	fldl	16(%ebp)
	faddp	%st,%st(1)
	fstpl	-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%eax
	call	L_DATEUTILS_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME$stub
	fldl	-8(%ebp)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INCSECOND$TDATETIME$$TDATETIME
_DATEUTILS_INCSECOND$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	$0,4(%esp)
	movl	$1,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_INCSECOND$TDATETIME$INT64$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INCMILLISECOND$TDATETIME$INT64$$TDATETIME
_DATEUTILS_INCMILLISECOND$TDATETIME$INT64$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1365
Lj1365:
	popl	%ebx
	fildq	8(%ebp)
	movl	L_$DATEUTILS$_Ld10$non_lazy_ptr-Lj1365(%ebx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	fldl	16(%ebp)
	faddp	%st,%st(1)
	fstpl	-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%eax
	call	L_DATEUTILS_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME$stub
	fldl	-8(%ebp)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INCMILLISECOND$TDATETIME$$TDATETIME
_DATEUTILS_INCMILLISECOND$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	$0,4(%esp)
	movl	$1,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_INCMILLISECOND$TDATETIME$INT64$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
_DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movw	8(%ebp),%ax
	movw	%ax,4(%esp)
	movw	12(%ebp),%ax
	movw	%ax,8(%esp)
	movw	16(%ebp),%ax
	movw	%ax,12(%esp)
	movw	20(%ebp),%ax
	movw	%ax,16(%esp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_TRYENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1382
	jmp	Lj1383
Lj1382:
	movw	8(%ebp),%ax
	movw	%ax,(%esp)
	movw	12(%ebp),%ax
	movw	%ax,4(%esp)
	movw	16(%ebp),%ax
	movw	%ax,8(%esp)
	movw	20(%ebp),%ax
	movw	%ax,12(%esp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD$stub
Lj1383:
	fldl	-20(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
_DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	28(%ebp),%eax
	movl	%eax,8(%esp)
	movl	12(%ebp),%ecx
	movl	16(%ebp),%edx
	movl	20(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
	movl	20(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$24,%eax
	je	Lj1426
	jmp	Lj1427
Lj1426:
	movl	20(%ebp),%eax
	movw	$0,(%eax)
	fldl	24(%ebp)
	fistpq	-20(%ebp)
	fwait
	fildq	-20(%ebp)
	fstpl	(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	jmp	Lj1438
Lj1427:
	movl	24(%ebp),%eax
	movl	%eax,(%esp)
	movl	28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
Lj1438:
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_TRYENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
_DATEUTILS_TRYENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_SYSUTILS_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj1461
	jmp	Lj1460
Lj1461:
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movw	12(%ebp),%ax
	movw	%ax,4(%esp)
	movw	16(%ebp),%cx
	movw	20(%ebp),%dx
	movw	24(%ebp),%ax
	call	L_SYSUTILS_TRYENCODETIME$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1459
	jmp	Lj1460
Lj1459:
	movb	$1,-13(%ebp)
	jmp	Lj1472
Lj1460:
	movb	$0,-13(%ebp)
Lj1472:
	cmpb	$0,-13(%ebp)
	jne	Lj1473
	jmp	Lj1474
Lj1473:
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,8(%esp)
	movl	4(%eax),%eax
	movl	%eax,12(%esp)
	call	L_SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME$stub
	movl	8(%ebp),%eax
	fstpl	(%eax)
Lj1474:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ENCODEDATEWEEK$WORD$WORD$WORD$$TDATETIME
_DATEUTILS_ENCODEDATEWEEK$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	-12(%ebp),%ax
	movw	%ax,(%esp)
	leal	-20(%ebp),%ecx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_TRYENCODEDATEWEEK$WORD$WORD$TDATETIME$WORD$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1483
	jmp	Lj1484
Lj1483:
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_INVALIDDATEWEEKERROR$WORD$WORD$WORD$stub
Lj1484:
	fldl	-20(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ENCODEDATEWEEK$WORD$WORD$$TDATETIME
_DATEUTILS_ENCODEDATEWEEK$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	movw	$1,%cx
	call	L_DATEUTILS_ENCODEDATEWEEK$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DECODEDATEWEEK$TDATETIME$WORD$WORD$WORD
_DATEUTILS_DECODEDATEWEEK$TDATETIME$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_YEAROF$TDATETIME$$WORD$stub
	movl	-4(%ebp),%edx
	movw	%ax,(%edx)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_SYSUTILS_DAYOFWEEK$TDATETIME$$LONGINT$stub
	decl	%eax
	movl	-12(%ebp),%edx
	movw	%ax,(%edx)
	movl	-12(%ebp),%eax
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1519
	jmp	Lj1520
Lj1519:
	movl	-12(%ebp),%eax
	movw	$7,(%eax)
Lj1520:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_DATEUTILS_STARTOFAYEAR$WORD$$TDATETIME$stub
	fstpl	-28(%ebp)
	fnstcw	-36(%ebp)
	fnstcw	-34(%ebp)
	orw	$3840,-36(%ebp)
	fldl	-28(%ebp)
	fldl	8(%ebp)
	fsubp	%st,%st(1)
	fldcw	-36(%ebp)
	fistpq	-44(%ebp)
	fldcw	-34(%ebp)
	fwait
	movl	-44(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	$1,%eax
	adcl	$0,%edx
	movl	%eax,-16(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD$stub
	movw	%ax,-30(%ebp)
	movzwl	-30(%ebp),%eax
	cmpl	$5,%eax
	jl	Lj1533
	jmp	Lj1534
Lj1533:
	movzwl	-30(%ebp),%eax
	decl	%eax
	addl	%eax,-16(%ebp)
	jmp	Lj1535
Lj1534:
	movzwl	-30(%ebp),%edx
	movl	$8,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	subl	%edx,-16(%ebp)
Lj1535:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj1536
	jmp	Lj1537
Lj1536:
	fld1
	fldl	-28(%ebp)
	fsubp	%st,%st(1)
	fstpl	(%esp)
	leal	-18(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DATEUTILS_DECODEDATEWEEK$TDATETIME$WORD$WORD$WORD$stub
	jmp	Lj1546
Lj1537:
	movl	-16(%ebp),%ecx
	movl	$-1840700269,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movw	%dx,(%eax)
	movl	-16(%ebp),%eax
	cltd
	movl	$7,%ecx
	idivl	%ecx
	testl	%edx,%edx
	jne	Lj1549
	jmp	Lj1550
Lj1549:
	movl	-8(%ebp),%eax
	incw	(%eax)
Lj1550:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$52,%eax
	jg	Lj1551
	jmp	Lj1552
Lj1551:
	movw	-30(%ebp),%ax
	movw	%ax,-32(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1555
	jmp	Lj1556
Lj1555:
	incw	-32(%ebp)
	movzwl	-32(%ebp),%eax
	cmpl	$7,%eax
	jg	Lj1559
	jmp	Lj1560
Lj1559:
	movw	$1,-32(%ebp)
	jmp	Lj1563
Lj1560:
Lj1563:
Lj1556:
	movzwl	-32(%ebp),%eax
	cmpl	$4,%eax
	jl	Lj1564
	jmp	Lj1565
Lj1564:
	movl	-4(%ebp),%eax
	incw	(%eax)
	movl	-8(%ebp),%eax
	movw	$1,(%eax)
Lj1565:
Lj1552:
Lj1546:
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_TRYENCODEDATEWEEK$WORD$WORD$TDATETIME$WORD$$BOOLEAN
_DATEUTILS_TRYENCODEDATEWEEK$WORD$WORD$TDATETIME$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movw	8(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_ISVALIDDATEWEEK$WORD$WORD$WORD$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj1578
	jmp	Lj1579
Lj1578:
	movw	-4(%ebp),%ax
	movw	$1,%cx
	movw	$1,%dx
	call	L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub
	movzwl	-8(%ebp),%eax
	decl	%eax
	imull	$7,%eax
	movl	%eax,-24(%ebp)
	fildl	-24(%ebp)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,(%esp)
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD$stub
	movw	%ax,-16(%ebp)
	movzwl	8(%ebp),%edx
	movzwl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-20(%ebp)
	movzwl	-16(%ebp),%eax
	cmpl	$4,%eax
	jg	Lj1594
	jmp	Lj1595
Lj1594:
	addl	$7,-20(%ebp)
Lj1595:
	movl	-12(%ebp),%eax
	fildl	-20(%ebp)
	fldl	(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
Lj1579:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_TRYENCODEDATEWEEK$WORD$WORD$TDATETIME$$BOOLEAN
_DATEUTILS_TRYENCODEDATEWEEK$WORD$WORD$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movw	$1,(%esp)
	movl	-12(%ebp),%ecx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_TRYENCODEDATEWEEK$WORD$WORD$TDATETIME$WORD$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ENCODEDATEDAY$WORD$WORD$$TDATETIME
_DATEUTILS_ENCODEDATEDAY$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	leal	-16(%ebp),%ecx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_TRYENCODEDATEDAY$WORD$WORD$TDATETIME$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1612
	jmp	Lj1613
Lj1612:
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_INVALIDDATEDAYERROR$WORD$WORD$stub
Lj1613:
	fldl	-16(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DECODEDATEDAY$TDATETIME$WORD$WORD
_DATEUTILS_DECODEDATEDAY$TDATETIME$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%ecx
	leal	-10(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	fnstcw	-16(%ebp)
	fnstcw	-14(%ebp)
	orw	$3840,-16(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$1,%cx
	movw	$1,%dx
	call	L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub
	fldl	8(%ebp)
	fsubp	%st,%st(1)
	fldcw	-16(%ebp)
	fistpq	-24(%ebp)
	fldcw	-14(%ebp)
	fwait
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	$1,%eax
	adcl	$0,%edx
	movl	-8(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_TRYENCODEDATEDAY$WORD$WORD$TDATETIME$$BOOLEAN
_DATEUTILS_TRYENCODEDATEDAY$WORD$WORD$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj1643
Lj1643:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1646
	jmp	Lj1645
Lj1646:
	movw	-4(%ebp),%ax
	call	L_SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN$stub
	movzbl	%al,%eax
	movw	-8(%ebp),%dx
	movl	L_TC_DATEUTILS_DAYSPERYEAR$non_lazy_ptr-Lj1643(%ebx),%ecx
	cmpw	(%ecx,%eax,2),%dx
	jbe	Lj1644
	jmp	Lj1645
Lj1644:
	movb	$1,-13(%ebp)
	jmp	Lj1649
Lj1645:
	movb	$0,-13(%ebp)
Lj1649:
	cmpb	$0,-13(%ebp)
	jne	Lj1650
	jmp	Lj1651
Lj1650:
	movw	-4(%ebp),%ax
	movw	$1,%cx
	movw	$1,%dx
	call	L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub
	movzwl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	fildl	-20(%ebp)
	faddp	%st,%st(1)
	fld1
	fsubrp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
Lj1651:
	movb	-13(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ENCODEDATEMONTHWEEK$WORD$WORD$WORD$WORD$$TDATETIME
_DATEUTILS_ENCODEDATEMONTHWEEK$WORD$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movw	8(%ebp),%ax
	movw	%ax,4(%esp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_TRYENCODEDATEMONTHWEEK$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1662
	jmp	Lj1663
Lj1662:
	movw	8(%ebp),%ax
	movw	%ax,(%esp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_INVALIDDATEMONTHWEEKERROR$WORD$WORD$WORD$WORD$stub
Lj1663:
	fldl	-20(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DECODEDATEMONTHWEEK$TDATETIME$WORD$WORD$WORD$WORD
_DATEUTILS_DECODEDATEMONTHWEEK$TDATETIME$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-14(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD$stub
	movl	8(%ebp),%edx
	movw	%ax,(%edx)
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$1,%cx
	call	L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-28(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD$stub
	movw	%ax,-16(%ebp)
	movzwl	-14(%ebp),%edx
	decl	%edx
	movzwl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-32(%ebp)
	movzwl	-16(%ebp),%eax
	cmpl	$4,%eax
	jg	Lj1710
	jmp	Lj1711
Lj1710:
	subl	$7,-32(%ebp)
Lj1711:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj1712
	jmp	Lj1713
Lj1712:
	leal	-14(%ebp),%eax
	movl	%eax,(%esp)
	fld1
	fldl	-28(%ebp)
	fsubp	%st,%st(1)
	fstpl	4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DATEUTILS_DECODEDATEMONTHWEEK$TDATETIME$WORD$WORD$WORD$WORD$stub
	jmp	Lj1724
Lj1713:
	movl	-32(%ebp),%eax
	cltd
	movl	$7,%ecx
	idivl	%ecx
	testl	%edx,%edx
	setneb	%cl
	movzbl	%cl,%ecx
	movl	-32(%ebp),%ebx
	movl	$-1840700269,%eax
	imull	%ebx
	movl	%ebx,%eax
	addl	%eax,%edx
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	addl	%edx,%ecx
	movl	-12(%ebp),%eax
	movw	%cx,(%eax)
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_DATEUTILS_ENDOFAMONTH$WORD$WORD$$TDATETIME$stub
	fstpl	(%esp)
	call	L_DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD$stub
	movw	%ax,-18(%ebp)
	movzwl	-18(%ebp),%eax
	cmpl	$4,%eax
	jl	Lj1739
	jmp	Lj1738
Lj1739:
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_DATEUTILS_DAYSINAMONTH$WORD$WORD$$WORD$stub
	movzwl	%ax,%eax
	movzwl	-14(%ebp),%edx
	subl	%edx,%eax
	movzwl	-18(%ebp),%edx
	cmpl	%edx,%eax
	jl	Lj1737
	jmp	Lj1738
Lj1737:
	movl	-12(%ebp),%eax
	movw	$1,(%eax)
	movl	-8(%ebp),%eax
	incw	(%eax)
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$13,%eax
	je	Lj1746
	jmp	Lj1747
Lj1746:
	movl	-8(%ebp),%eax
	movw	$1,(%eax)
	movl	-4(%ebp),%eax
	incw	(%eax)
Lj1747:
Lj1738:
Lj1724:
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_TRYENCODEDATEMONTHWEEK$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
_DATEUTILS_TRYENCODEDATEMONTHWEEK$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	12(%ebp),%ax
	movw	%ax,(%esp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_ISVALIDDATEMONTHWEEK$WORD$WORD$WORD$WORD$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj1762
	jmp	Lj1763
Lj1762:
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	movw	$1,%cx
	call	L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub
	movl	8(%ebp),%eax
	fstpl	(%eax)
	movzwl	-12(%ebp),%eax
	decl	%eax
	imull	$7,%eax
	movzwl	12(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	movl	%eax,-20(%ebp)
	movl	8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,(%esp)
	movl	4(%edx),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD$stub
	movw	%ax,-16(%ebp)
	movzwl	-16(%ebp),%eax
	decl	%eax
	subl	%eax,-20(%ebp)
	movzwl	-16(%ebp),%eax
	subl	$5,%eax
	cmpl	$3,%eax
	jb	Lj1780
Lj1780:
	jc	Lj1778
	jmp	Lj1779
Lj1778:
	addl	$7,-20(%ebp)
Lj1779:
	movl	8(%ebp),%eax
	fildl	-20(%ebp)
	fldl	(%eax)
	faddp	%st,%st(1)
	movl	8(%ebp),%eax
	fstpl	(%eax)
Lj1763:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_TRYENCODETIMEINTERVAL$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
_DATEUTILS_TRYENCODETIMEINTERVAL$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	call	Lj1784
Lj1784:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	-8(%ebp),%eax
	cmpl	$60,%eax
	jl	Lj1788
	jmp	Lj1786
Lj1788:
	movzwl	-12(%ebp),%eax
	cmpl	$60,%eax
	jl	Lj1787
	jmp	Lj1786
Lj1787:
	movzwl	12(%ebp),%eax
	cmpl	$1000,%eax
	jl	Lj1785
	jmp	Lj1786
Lj1785:
	movb	$1,-13(%ebp)
	jmp	Lj1789
Lj1786:
	movb	$0,-13(%ebp)
Lj1789:
	cmpb	$0,-13(%ebp)
	jne	Lj1790
	jmp	Lj1791
Lj1790:
	movzwl	-4(%ebp),%edx
	movl	$3600000,%eax
	mull	%edx
	movl	%eax,%ecx
	movzwl	-8(%ebp),%edx
	movl	$60000,%eax
	mull	%edx
	addl	%eax,%ecx
	movzwl	-12(%ebp),%edx
	movl	$1000,%eax
	mull	%edx
	addl	%eax,%ecx
	movzwl	12(%ebp),%eax
	addl	%eax,%ecx
	movl	%ecx,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-28(%ebp)
	fildq	-32(%ebp)
	movl	L_$DATEUTILS$_Ld12$non_lazy_ptr-Lj1784(%ebx),%eax
	fldl	(%eax)
	fdivrp	%st,%st(1)
	movl	8(%ebp),%eax
	fstpl	(%eax)
Lj1791:
	movb	-13(%ebp),%al
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ENCODETIMEINTERVAL$WORD$WORD$WORD$WORD$$TDATETIME
_DATEUTILS_ENCODETIMEINTERVAL$WORD$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	call	Lj1795
Lj1795:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movw	8(%ebp),%ax
	movw	%ax,4(%esp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_TRYENCODETIMEINTERVAL$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1796
	jmp	Lj1797
Lj1796:
	movl	$3,(%esp)
	movzwl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	$0,-52(%ebp)
	movzwl	-8(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	$0,-44(%ebp)
	movzwl	-12(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-36(%ebp)
	movzwl	8(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-28(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SERRINVALIDHOURMINUTESECMSEC$non_lazy_ptr-Lj1795(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj1795(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj1795(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1797:
	fldl	-20(%ebp)
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_RECODEYEAR$TDATETIME$WORD$$TDATETIME
_DATEUTILS_RECODEYEAR$TDATETIME$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	$65535,(%esp)
	movw	$65535,4(%esp)
	movw	$65535,8(%esp)
	movw	$65535,12(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	12(%ebp),%eax
	movl	%eax,20(%esp)
	movw	-4(%ebp),%ax
	movw	$65535,%cx
	movw	$65535,%dx
	call	L_DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_RECODEMONTH$TDATETIME$WORD$$TDATETIME
_DATEUTILS_RECODEMONTH$TDATETIME$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	$65535,(%esp)
	movw	$65535,4(%esp)
	movw	$65535,8(%esp)
	movw	$65535,12(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	12(%ebp),%eax
	movl	%eax,20(%esp)
	movw	-4(%ebp),%dx
	movw	$65535,%cx
	movw	$65535,%ax
	call	L_DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_RECODEDAY$TDATETIME$WORD$$TDATETIME
_DATEUTILS_RECODEDAY$TDATETIME$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	$65535,(%esp)
	movw	$65535,4(%esp)
	movw	$65535,8(%esp)
	movw	$65535,12(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	12(%ebp),%eax
	movl	%eax,20(%esp)
	movw	-4(%ebp),%cx
	movw	$65535,%dx
	movw	$65535,%ax
	call	L_DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_RECODEHOUR$TDATETIME$WORD$$TDATETIME
_DATEUTILS_RECODEHOUR$TDATETIME$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	$65535,(%esp)
	movw	$65535,4(%esp)
	movw	$65535,8(%esp)
	movw	-4(%ebp),%ax
	movw	%ax,12(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	12(%ebp),%eax
	movl	%eax,20(%esp)
	movw	$65535,%cx
	movw	$65535,%dx
	movw	$65535,%ax
	call	L_DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_RECODEMINUTE$TDATETIME$WORD$$TDATETIME
_DATEUTILS_RECODEMINUTE$TDATETIME$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	$65535,(%esp)
	movw	$65535,4(%esp)
	movw	$65535,12(%esp)
	movw	-4(%ebp),%ax
	movw	%ax,8(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	12(%ebp),%eax
	movl	%eax,20(%esp)
	movw	$65535,%cx
	movw	$65535,%dx
	movw	$65535,%ax
	call	L_DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_RECODESECOND$TDATETIME$WORD$$TDATETIME
_DATEUTILS_RECODESECOND$TDATETIME$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	$65535,(%esp)
	movw	$65535,8(%esp)
	movw	$65535,12(%esp)
	movw	-4(%ebp),%ax
	movw	%ax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	12(%ebp),%eax
	movl	%eax,20(%esp)
	movw	$65535,%cx
	movw	$65535,%dx
	movw	$65535,%ax
	call	L_DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_RECODEMILLISECOND$TDATETIME$WORD$$TDATETIME
_DATEUTILS_RECODEMILLISECOND$TDATETIME$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	$65535,4(%esp)
	movw	$65535,8(%esp)
	movw	$65535,12(%esp)
	movw	-4(%ebp),%ax
	movw	%ax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	12(%ebp),%eax
	movl	%eax,20(%esp)
	movw	$65535,%cx
	movw	$65535,%dx
	movw	$65535,%ax
	call	L_DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_RECODEDATE$TDATETIME$WORD$WORD$WORD$$TDATETIME
_DATEUTILS_RECODEDATE$TDATETIME$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	$65535,(%esp)
	movw	$65535,4(%esp)
	movw	$65535,8(%esp)
	movw	$65535,12(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	12(%ebp),%eax
	movl	%eax,20(%esp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_RECODETIME$TDATETIME$WORD$WORD$WORD$WORD$$TDATETIME
_DATEUTILS_RECODETIME$TDATETIME$WORD$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	8(%ebp),%ax
	movw	%ax,(%esp)
	movw	-12(%ebp),%ax
	movw	%ax,4(%esp)
	movw	-8(%ebp),%ax
	movw	%ax,8(%esp)
	movw	-4(%ebp),%ax
	movw	%ax,12(%esp)
	movl	12(%ebp),%eax
	movl	%eax,16(%esp)
	movl	16(%ebp),%eax
	movl	%eax,20(%esp)
	movw	$65535,%cx
	movw	$65535,%dx
	movw	$65535,%ax
	call	L_DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
_DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movw	8(%ebp),%ax
	movw	%ax,4(%esp)
	movw	12(%ebp),%ax
	movw	%ax,8(%esp)
	movw	16(%ebp),%ax
	movw	%ax,12(%esp)
	movw	20(%ebp),%ax
	movw	%ax,16(%esp)
	movl	24(%ebp),%eax
	movl	%eax,20(%esp)
	movl	28(%ebp),%eax
	movl	%eax,24(%esp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_TRYRECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2000
	jmp	Lj2001
Lj2000:
	movl	24(%ebp),%eax
	movl	%eax,(%esp)
	movl	28(%ebp),%eax
	movl	%eax,4(%esp)
	movw	8(%ebp),%ax
	movw	%ax,8(%esp)
	movw	12(%ebp),%ax
	movw	%ax,12(%esp)
	movw	16(%ebp),%ax
	movw	%ax,16(%esp)
	movw	20(%ebp),%ax
	movw	%ax,20(%esp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$stub
Lj2001:
	fldl	-20(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_TRYRECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
_DATEUTILS_TRYRECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	leal	-26(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-24(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-22(%ebp),%eax
	movl	%eax,12(%esp)
	movl	28(%ebp),%eax
	movl	%eax,16(%esp)
	movl	32(%ebp),%eax
	movl	%eax,20(%esp)
	leal	-20(%ebp),%ecx
	leal	-18(%ebp),%edx
	leal	-16(%ebp),%eax
	call	L_DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$stub
	movw	-4(%ebp),%cx
	leal	-16(%ebp),%edx
	movl	%ebp,%eax
	call	L_DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD$stub
	movw	-8(%ebp),%cx
	leal	-18(%ebp),%edx
	movl	%ebp,%eax
	call	L_DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD$stub
	movw	-12(%ebp),%cx
	leal	-20(%ebp),%edx
	movl	%ebp,%eax
	call	L_DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD$stub
	movw	24(%ebp),%cx
	leal	-22(%ebp),%edx
	movl	%ebp,%eax
	call	L_DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD$stub
	movw	20(%ebp),%cx
	leal	-24(%ebp),%edx
	movl	%ebp,%eax
	call	L_DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD$stub
	movw	16(%ebp),%cx
	leal	-26(%ebp),%edx
	movl	%ebp,%eax
	call	L_DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD$stub
	movw	12(%ebp),%cx
	leal	-28(%ebp),%edx
	movl	%ebp,%eax
	call	L_DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD$stub
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movw	-28(%ebp),%ax
	movw	%ax,4(%esp)
	movw	-26(%ebp),%ax
	movw	%ax,8(%esp)
	movw	-24(%ebp),%ax
	movw	%ax,12(%esp)
	movw	-22(%ebp),%ax
	movw	%ax,16(%esp)
	movw	-20(%ebp),%cx
	movw	-18(%ebp),%dx
	movw	-16(%ebp),%ax
	call	L_DATEUTILS_TRYENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD
_DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movw	-8(%ebp),%ax
	cmpw	$65535,%ax
	jne	Lj2116
	jmp	Lj2117
Lj2116:
	movl	-4(%ebp),%eax
	movw	-8(%ebp),%dx
	movw	%dx,(%eax)
Lj2117:
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_COMPAREDATETIME$TDATETIME$TDATETIME$$TVALUERELATIONSHIP
_DATEUTILS_COMPAREDATETIME$TDATETIME$TDATETIME$$TVALUERELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_SAMEDATETIME$TDATETIME$TDATETIME$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2122
	jmp	Lj2123
Lj2122:
	movb	$0,-1(%ebp)
	jmp	Lj2130
Lj2123:
	fldl	8(%ebp)
	fldl	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj2131
	jmp	Lj2132
Lj2131:
	movb	$1,-1(%ebp)
	jmp	Lj2135
Lj2132:
	movb	$-1,-1(%ebp)
Lj2135:
Lj2130:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_COMPAREDATE$TDATETIME$TDATETIME$$TVALUERELATIONSHIP
_DATEUTILS_COMPAREDATE$TDATETIME$TDATETIME$$TVALUERELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_SAMEDATE$TDATETIME$TDATETIME$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2140
	jmp	Lj2141
Lj2140:
	movb	$0,-1(%ebp)
	jmp	Lj2148
Lj2141:
	fldl	8(%ebp)
	fldl	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj2149
	jmp	Lj2150
Lj2149:
	movb	$-1,-1(%ebp)
	jmp	Lj2153
Lj2150:
	movb	$1,-1(%ebp)
Lj2153:
Lj2148:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_COMPARETIME$TDATETIME$TDATETIME$$TVALUERELATIONSHIP
_DATEUTILS_COMPARETIME$TDATETIME$TDATETIME$$TVALUERELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	20(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_SAMETIME$TDATETIME$TDATETIME$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2158
	jmp	Lj2159
Lj2158:
	movb	$0,-1(%ebp)
	jmp	Lj2166
Lj2159:
	fldl	16(%ebp)
	fstpt	(%esp)
	call	Lfpc_frac_real$stub
	fstpt	-24(%ebp)
	fldl	8(%ebp)
	fstpt	(%esp)
	call	Lfpc_frac_real$stub
	fldt	-24(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj2167
	jmp	Lj2168
Lj2167:
	movb	$-1,-1(%ebp)
	jmp	Lj2175
Lj2168:
	movb	$1,-1(%ebp)
Lj2175:
Lj2166:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SAMEDATETIME$TDATETIME$TDATETIME$$BOOLEAN
_DATEUTILS_SAMEDATETIME$TDATETIME$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj2179
Lj2179:
	popl	%edx
	fldl	8(%ebp)
	fldl	16(%ebp)
	fsubp	%st,%st(1)
	fabs
	movl	L_$DATEUTILS$_Ld13$non_lazy_ptr-Lj2179(%edx),%eax
	fldt	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setab	-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SAMEDATE$TDATETIME$TDATETIME$$BOOLEAN
_DATEUTILS_SAMEDATE$TDATETIME$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	fnstcw	-6(%ebp)
	fnstcw	-4(%ebp)
	orw	$3840,-6(%ebp)
	fldl	16(%ebp)
	fldcw	-6(%ebp)
	fistpq	-16(%ebp)
	fldcw	-4(%ebp)
	fwait
	fnstcw	-6(%ebp)
	fnstcw	-4(%ebp)
	orw	$3840,-6(%ebp)
	fldl	8(%ebp)
	fldcw	-6(%ebp)
	fistpq	-24(%ebp)
	fldcw	-4(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	-20(%ebp),%edx
	jne	Lj2185
	cmpl	-24(%ebp),%eax
	jne	Lj2185
	jmp	Lj2184
	jmp	Lj2185
Lj2184:
	movb	$1,-1(%ebp)
	jmp	Lj2186
Lj2185:
	movb	$0,-1(%ebp)
Lj2186:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SAMETIME$TDATETIME$TDATETIME$$BOOLEAN
_DATEUTILS_SAMETIME$TDATETIME$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj2188
Lj2188:
	popl	%ebx
	fldl	8(%ebp)
	fldl	16(%ebp)
	fsubp	%st,%st(1)
	fabs
	fstpt	(%esp)
	call	Lfpc_frac_real$stub
	movl	L_$DATEUTILS$_Ld13$non_lazy_ptr-Lj2188(%ebx),%eax
	fldt	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	setab	-1(%ebp)
	movb	-1(%ebp),%al
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INTERNALNTHDAYOFWEEK$WORD$$WORD
_DATEUTILS_INTERNALNTHDAYOFWEEK$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%ecx
	decl	%ecx
	movl	$-1840700269,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	incl	%edx
	movw	%dx,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_NTHDAYOFWEEK$TDATETIME$$WORD
_DATEUTILS_NTHDAYOFWEEK$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_DAYOFTHEMONTH$TDATETIME$$WORD$stub
	call	L_DATEUTILS_INTERNALNTHDAYOFWEEK$WORD$$WORD$stub
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DECODEDAYOFWEEKINMONTH$TDATETIME$WORD$WORD$WORD$WORD
_DATEUTILS_DECODEDAYOFWEEKINMONTH$TDATETIME$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-14(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD$stub
	movl	8(%ebp),%edx
	movw	%ax,(%edx)
	movw	-14(%ebp),%ax
	call	L_DATEUTILS_INTERNALNTHDAYOFWEEK$WORD$$WORD$stub
	movl	-12(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_ENCODEDAYOFWEEKINMONTH$WORD$WORD$WORD$WORD$$TDATETIME
_DATEUTILS_ENCODEDAYOFWEEKINMONTH$WORD$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movw	8(%ebp),%ax
	movw	%ax,4(%esp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_TRYENCODEDAYOFWEEKINMONTH$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2225
	jmp	Lj2226
Lj2225:
	movw	8(%ebp),%ax
	movw	%ax,(%esp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_INVALIDDAYOFWEEKINMONTHERROR$WORD$WORD$WORD$WORD$stub
Lj2226:
	fldl	-20(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_TRYENCODEDAYOFWEEKINMONTH$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
_DATEUTILS_TRYENCODEDAYOFWEEKINMONTH$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	movw	$1,%cx
	call	L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	(%esp)
	call	L_DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD$stub
	movw	%ax,-16(%ebp)
	movzwl	-12(%ebp),%eax
	decl	%eax
	imull	$7,%eax
	movzwl	12(%ebp),%edx
	incl	%edx
	movzwl	-16(%ebp),%ecx
	subl	%ecx,%edx
	addl	%edx,%eax
	movw	%ax,-18(%ebp)
	movw	-16(%ebp),%ax
	cmpw	12(%ebp),%ax
	ja	Lj2259
	jmp	Lj2260
Lj2259:
	movzwl	-18(%ebp),%eax
	addl	$7,%eax
	movw	%ax,-18(%ebp)
Lj2260:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movw	-18(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_SYSUTILS_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME
_DATEUTILS_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-96(%ebp)
	call	Lj2274
Lj2274:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-92(%ebp)
	movl	$0,-76(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj2277
	leal	-26(%ebp),%eax
	movl	%eax,(%esp)
	leal	-24(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-22(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	12(%ebp),%eax
	movl	%eax,20(%esp)
	leal	-18(%ebp),%ecx
	leal	-16(%ebp),%edx
	leal	-14(%ebp),%eax
	call	L_DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	L_$DATEUTILS$_Ld14$non_lazy_ptr-Lj2274(%ebx),%eax
	movl	%eax,4(%esp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movw	-14(%ebp),%cx
	movw	-4(%ebp),%dx
	movl	%ebp,%eax
	call	L_DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-32(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-76(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-88(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj2274(%ebx),%eax
	movb	5(%eax),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-76(%ebp),%eax
	movl	%eax,-84(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	movl	L_$DATEUTILS$_Ld16$non_lazy_ptr-Lj2274(%ebx),%eax
	movl	%eax,4(%esp)
	leal	-92(%ebp),%eax
	movl	%eax,(%esp)
	movw	-16(%ebp),%cx
	movw	-8(%ebp),%dx
	movl	%ebp,%eax
	call	L_DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING$stub
	movl	-92(%ebp),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	leal	-32(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-32(%ebp),%eax
	movl	%eax,-88(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%edx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj2274(%ebx),%eax
	movb	5(%eax),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-92(%ebp),%eax
	movl	%eax,-84(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	L_$DATEUTILS$_Ld16$non_lazy_ptr-Lj2274(%ebx),%eax
	movl	%eax,4(%esp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movw	-18(%ebp),%cx
	movw	-12(%ebp),%dx
	movl	%ebp,%eax
	call	L_DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	leal	-32(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-32(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	L_$DATEUTILS$_Ld18$non_lazy_ptr-Lj2274(%ebx),%eax
	movl	%eax,-84(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	movl	L_$DATEUTILS$_Ld16$non_lazy_ptr-Lj2274(%ebx),%eax
	movl	%eax,4(%esp)
	leal	-92(%ebp),%eax
	movl	%eax,(%esp)
	movw	-20(%ebp),%cx
	movw	28(%ebp),%dx
	movl	%ebp,%eax
	call	L_DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING$stub
	movl	-92(%ebp),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	leal	-32(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-32(%ebp),%eax
	movl	%eax,-88(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%edx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj2274(%ebx),%eax
	movb	6(%eax),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-92(%ebp),%eax
	movl	%eax,-84(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	L_$DATEUTILS$_Ld16$non_lazy_ptr-Lj2274(%ebx),%eax
	movl	%eax,4(%esp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movw	-22(%ebp),%cx
	movw	24(%ebp),%dx
	movl	%ebp,%eax
	call	L_DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	leal	-32(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-32(%ebp),%eax
	movl	%eax,-88(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%edx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj2274(%ebx),%eax
	movb	6(%eax),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-92(%ebp),%eax
	movl	%eax,-84(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	L_$DATEUTILS$_Ld16$non_lazy_ptr-Lj2274(%ebx),%eax
	movl	%eax,4(%esp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movw	-24(%ebp),%cx
	movw	20(%ebp),%dx
	movl	%ebp,%eax
	call	L_DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	leal	-32(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-32(%ebp),%eax
	movl	%eax,-88(%ebp)
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%edx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj2274(%ebx),%eax
	movb	3(%eax),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-92(%ebp),%eax
	movl	%eax,-84(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	movl	L_$DATEUTILS$_Ld20$non_lazy_ptr-Lj2274(%ebx),%eax
	movl	%eax,4(%esp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movw	-26(%ebp),%cx
	movw	16(%ebp),%dx
	movl	%ebp,%eax
	call	L_DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING$stub
	movl	-76(%ebp),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	leal	-32(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	$0,(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	$11,-88(%ebp)
	leal	-88(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SERRINVALIDTIMESTAMP$non_lazy_ptr-Lj2274(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj2274(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj2274(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2277:
	call	LFPC_POPADDRSTACK$stub
	leal	-92(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-92(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-32(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-32(%ebp)
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj2278
	call	LFPC_RERAISE$stub
Lj2278:
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING
_DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	call	Lj2276
Lj2276:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movw	%dx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movl	12(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2440
	movw	-4(%ebp),%ax
	cmpw	$65535,%ax
	jne	Lj2443
	jmp	Lj2444
Lj2443:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2449
	movl	-4(%eax),%eax
Lj2449:
	movl	%eax,-64(%ebp)
	movl	$0,-68(%ebp)
	movzwl	-4(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$0,-60(%ebp)
	leal	-68(%ebp),%edx
	movl	$1,%ecx
	movl	L_$DATEUTILS$_Ld22$non_lazy_ptr-Lj2276(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	jmp	Lj2454
Lj2444:
	movl	-12(%ebp),%eax
	fldz
	fldl	8(%eax)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj2455
	jmp	Lj2456
Lj2455:
	movl	12(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	12(%ebp),%eax
	movl	%eax,(%esi)
	jmp	Lj2459
Lj2456:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2464
	movl	-4(%eax),%eax
Lj2464:
	movl	%eax,-64(%ebp)
	movl	$0,-68(%ebp)
	movzwl	-4(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$0,-60(%ebp)
	leal	-68(%ebp),%edx
	movl	$1,%ecx
	movl	L_$DATEUTILS$_Ld22$non_lazy_ptr-Lj2276(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
Lj2459:
Lj2454:
Lj2440:
	call	LFPC_POPADDRSTACK$stub
	leal	12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2441
	call	LFPC_RERAISE$stub
Lj2441:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD
_DATEUTILS_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	fldz
	fstpl	(%esp)
	movw	8(%ebp),%ax
	movw	%ax,8(%esp)
	movw	12(%ebp),%ax
	movw	%ax,12(%esp)
	movw	16(%ebp),%ax
	movw	%ax,16(%esp)
	movw	20(%ebp),%ax
	movw	%ax,20(%esp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	L_DATEUTILS_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$stub
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INVALIDDATEWEEKERROR$WORD$WORD$WORD
_DATEUTILS_INVALIDDATEWEEKERROR$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	call	Lj2488
Lj2488:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	$2,(%esp)
	movzwl	-4(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-36(%ebp)
	movzwl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-28(%ebp)
	movzwl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-36(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SERRINVALIDDATEWEEK$non_lazy_ptr-Lj2488(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj2488(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj2488(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INVALIDDATEDAYERROR$WORD$WORD
_DATEUTILS_INVALIDDATEDAYERROR$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj2500
Lj2500:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	$1,(%esp)
	movzwl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$0,-24(%ebp)
	movzwl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SERRINVALIDDAYOFYEAR$non_lazy_ptr-Lj2500(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj2500(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La6:
	movl	%ebp,%ecx
	leal	La6-Lj2500(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INVALIDDATEMONTHWEEKERROR$WORD$WORD$WORD$WORD
_DATEUTILS_INVALIDDATEMONTHWEEKERROR$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	call	Lj2512
Lj2512:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	$3,(%esp)
	movzwl	-4(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	$0,-44(%ebp)
	movzwl	-8(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-36(%ebp)
	movzwl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-28(%ebp)
	movzwl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-44(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SERRINVALIDDATEMONTHWEEK$non_lazy_ptr-Lj2512(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj2512(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La7:
	movl	%ebp,%ecx
	leal	La7-Lj2512(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_INVALIDDAYOFWEEKINMONTHERROR$WORD$WORD$WORD$WORD
_DATEUTILS_INVALIDDAYOFWEEKINMONTHERROR$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	call	Lj2524
Lj2524:
	popl	%ebx
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	$3,(%esp)
	movzwl	-4(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	$0,-44(%ebp)
	movzwl	-8(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-36(%ebp)
	movzwl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-28(%ebp)
	movzwl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-44(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SERRINVALIDDAYOFWEEKINMONTH$non_lazy_ptr-Lj2524(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj2524(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La8:
	movl	%ebp,%ecx
	leal	La8-Lj2524(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DATETIMETOJULIANDATE$TDATETIME$$DOUBLE
_DATEUTILS_DATETIMETOJULIANDATE$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	call	Lj2536
Lj2536:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-10(%ebp),%ecx
	leal	-12(%ebp),%edx
	leal	-14(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	movzwl	-12(%ebp),%ecx
	movl	$14,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	$715827883,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$1,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movzwl	-14(%ebp),%edx
	addl	$4800,%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-20(%ebp),%edx
	imull	$12,%edx
	movzwl	-12(%ebp),%eax
	addl	%eax,%edx
	subl	$3,%edx
	movl	%edx,-28(%ebp)
	movl	-28(%ebp),%ecx
	imull	$153,%ecx
	addl	$2,%ecx
	movl	$1717986919,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$1,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,%ecx
	movzwl	-10(%ebp),%eax
	addl	%eax,%ecx
	movl	-24(%ebp),%eax
	imull	$365,%eax
	addl	%eax,%ecx
	movl	-24(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$3,%eax
	addl	%eax,%edx
	sarl	$2,%edx
	addl	%edx,%ecx
	movl	-24(%ebp),%esi
	movl	$1374389535,%eax
	imull	%esi
	movl	%esi,%eax
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	subl	%edx,%ecx
	movl	-24(%ebp),%esi
	movl	$1374389535,%eax
	imull	%esi
	movl	%esi,%eax
	sarl	$7,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	addl	%edx,%ecx
	subl	$32045,%ecx
	movl	%ecx,-32(%ebp)
	fildl	-32(%ebp)
	fstpl	-8(%ebp)
	movl	L_$DATEUTILS$_Ld4$non_lazy_ptr-Lj2536(%ebx),%eax
	fldl	(%eax)
	fldl	-8(%ebp)
	fsubp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_JULIANDATETODATETIME$DOUBLE$$TDATETIME
_DATEUTILS_JULIANDATETODATETIME$DOUBLE$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-36(%ebp)
	call	Lj2556
Lj2556:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%eax
	call	L_DATEUTILS_TRYJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2557
	jmp	Lj2558
Lj2557:
	movl	$0,(%esp)
	fldl	8(%ebp)
	fstpt	-32(%ebp)
	leal	-32(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$3,-16(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_SYSCONST_SINVALIDJULIANDATE$non_lazy_ptr-Lj2556(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj2556(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La9:
	movl	%ebp,%ecx
	leal	La9-Lj2556(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2558:
	fldl	-8(%ebp)
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_TRYJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN
_DATEUTILS_TRYJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj2574
Lj2574:
	popl	%ebx
	movl	%eax,-4(%ebp)
	fnstcw	-42(%ebp)
	fnstcw	-40(%ebp)
	orw	$3840,-42(%ebp)
	movl	L_$DATEUTILS$_Ld24$non_lazy_ptr-Lj2574(%ebx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	faddp	%st,%st(1)
	fldcw	-42(%ebp)
	fistpq	-52(%ebp)
	fldcw	-40(%ebp)
	fwait
	movl	-52(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%ecx
	shll	$2,%ecx
	addl	$3,%ecx
	movl	$963315389,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$15,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%eax
	imull	$146097,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$3,%edx
	addl	%edx,%eax
	sarl	$2,%eax
	movl	-12(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%ecx
	shll	$2,%ecx
	addl	$3,%ecx
	movl	$376287347,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$7,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%eax
	imull	$1461,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$3,%edx
	addl	%edx,%eax
	sarl	$2,%eax
	movl	-20(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%ecx
	imull	$5,%ecx
	addl	$2,%ecx
	movl	$-701792041,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$7,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	-32(%ebp),%ecx
	imull	$153,%ecx
	addl	$2,%ecx
	movl	$1717986919,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$1,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	-28(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	incl	%edx
	movw	%dx,-34(%ebp)
	movl	-32(%ebp),%ecx
	movl	$1717986919,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	imull	$12,%edx
	movl	-32(%ebp),%eax
	addl	$3,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movw	%dx,-36(%ebp)
	movl	-16(%ebp),%esi
	imull	$100,%esi
	movl	-24(%ebp),%eax
	addl	%eax,%esi
	subl	$4800,%esi
	movl	-32(%ebp),%ecx
	movl	$1717986919,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	addl	%edx,%esi
	movw	%si,-38(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movw	-34(%ebp),%cx
	movw	-36(%ebp),%dx
	movw	-38(%ebp),%ax
	call	L_SYSUTILS_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DATETIMETOMODIFIEDJULIANDATE$TDATETIME$$DOUBLE
_DATEUTILS_DATETIMETOMODIFIEDJULIANDATE$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj2604
Lj2604:
	popl	%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_DATEUTILS_DATETIMETOJULIANDATE$TDATETIME$$DOUBLE$stub
	movl	L_$DATEUTILS$_Ld25$non_lazy_ptr-Lj2604(%ebx),%eax
	fldl	(%eax)
	fsubrp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MODIFIEDJULIANDATETODATETIME$DOUBLE$$TDATETIME
_DATEUTILS_MODIFIEDJULIANDATETODATETIME$DOUBLE$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj2610
Lj2610:
	popl	%ebx
	movl	L_$DATEUTILS$_Ld25$non_lazy_ptr-Lj2610(%ebx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	faddp	%st,%st(1)
	fstpl	(%esp)
	call	L_DATEUTILS_JULIANDATETODATETIME$DOUBLE$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_TRYMODIFIEDJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN
_DATEUTILS_TRYMODIFIEDJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj2616
Lj2616:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_$DATEUTILS$_Ld25$non_lazy_ptr-Lj2616(%ebx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	faddp	%st,%st(1)
	fstpl	(%esp)
	movl	-4(%ebp),%eax
	call	L_DATEUTILS_TRYJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DATETIMETOUNIX$TDATETIME$$INT64
_DATEUTILS_DATETIMETOUNIX$TDATETIME$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj2624
Lj2624:
	popl	%ebx
	movl	L_$DATEUTILS$_Ld26$non_lazy_ptr-Lj2624(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$DATEUTILS$_Ld26$non_lazy_ptr-Lj2624(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME$stub
	movl	L_$DATEUTILS$_Ld27$non_lazy_ptr-Lj2624(%ebx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_UNIXTODATETIME$INT64$$TDATETIME
_DATEUTILS_UNIXTODATETIME$INT64$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-12(%ebp)
	call	Lj2632
Lj2632:
	popl	%ebx
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_$DATEUTILS$_Ld26$non_lazy_ptr-Lj2632(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,8(%esp)
	movl	L_$DATEUTILS$_Ld26$non_lazy_ptr-Lj2632(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_INCSECOND$TDATETIME$INT64$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_UNIXTIMESTAMPTOMAC$INT64$$INT64
_DATEUTILS_UNIXTIMESTAMPTOMAC$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	addl	$2082844800,%eax
	adcl	$0,%edx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DATETIMETOMAC$TDATETIME$$INT64
_DATEUTILS_DATETIMETOMAC$TDATETIME$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	$0,(%esp)
	movw	$0,4(%esp)
	movw	$0,8(%esp)
	movw	$0,12(%esp)
	movw	$1,%cx
	movw	$1,%dx
	movw	$1904,%ax
	call	L_DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-16(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_SECONDSBETWEEN$TDATETIME$TDATETIME$$INT64$stub
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MACTODATETIME$INT64$$TDATETIME
_DATEUTILS_MACTODATETIME$INT64$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movw	$0,(%esp)
	movw	$0,4(%esp)
	movw	$0,8(%esp)
	movw	$0,12(%esp)
	movw	$1,%cx
	movw	$1,%dx
	movw	$1904,%ax
	call	L_DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-16(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_DATEUTILS_INCSECOND$TDATETIME$INT64$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_MACTIMESTAMPTOUNIX$INT64$$INT64
_DATEUTILS_MACTIMESTAMPTOUNIX$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	subl	$2082844800,%eax
	sbbl	$0,%edx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DATETIMETODOSDATETIME$TDATETIME$$LONGINT
_DATEUTILS_DATETIMETODOSDATETIME$TDATETIME$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	leal	-18(%ebp),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-14(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	12(%ebp),%eax
	movl	%eax,20(%esp)
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	L_DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$stub
	movl	$-1980,-4(%ebp)
	movw	-6(%ebp),%ax
	andw	$127,%ax
	movzwl	%ax,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	shll	$4,%eax
	movl	%eax,-4(%ebp)
	movzwl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	addl	%edx,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	shll	$5,%eax
	movl	%eax,-4(%ebp)
	movzwl	-10(%ebp),%eax
	movl	-4(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	shll	$16,%eax
	movl	%eax,-4(%ebp)
	movzwl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	shll	$6,%eax
	movl	%eax,-24(%ebp)
	movzwl	-14(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%eax
	shll	$5,%eax
	movl	%eax,-24(%ebp)
	movzwl	-16(%ebp),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	andl	$65535,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_DOSDATETIMETODATETIME$LONGINT$$TDATETIME
_DATEUTILS_DOSDATETIMETODATETIME$LONGINT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$31,%eax
	shll	$1,%eax
	movl	%eax,-36(%ebp)
	movl	-4(%ebp),%eax
	shrl	$5,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$63,%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	shrl	$6,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$31,%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	shrl	$5,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$31,%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	shrl	$5,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$15,%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	addl	$1980,%eax
	movl	%eax,-16(%ebp)
	movw	$0,(%esp)
	movw	-36(%ebp),%ax
	movw	%ax,4(%esp)
	movw	-32(%ebp),%ax
	movw	%ax,8(%esp)
	movw	-28(%ebp),%ax
	movw	%ax,12(%esp)
	movw	-24(%ebp),%cx
	movw	-20(%ebp),%dx
	movw	-16(%ebp),%ax
	call	L_DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_RAISEEXCEPTION$ANSISTRING
_DATEUTILS_RAISEEXCEPTION$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj2780
Lj2780:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj2780(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La10:
	movl	%ebp,%ecx
	leal	La10-Lj2780(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SCANDATETIME$ANSISTRING$ANSISTRING$TFORMATSETTINGS$LONGINT$$TDATETIME
_DATEUTILS_SCANDATETIME$ANSISTRING$ANSISTRING$TFORMATSETTINGS$LONGINT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-49(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-40(%ebp)
	fldz
	fstpl	-48(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2817
	movl	-4(%eax),%eax
Lj2817:
	movl	%eax,-24(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2822
	movl	-4(%eax),%eax
Lj2822:
	movl	%eax,-56(%ebp)
	movl	$0,(%esp)
	movl	-4(%ebp),%edx
	movl	-56(%ebp),%ecx
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT$stub
	movl	-48(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-44(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2836
	jmp	Lj2834
Lj2836:
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2835
	jmp	Lj2834
Lj2835:
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2833
	jmp	Lj2834
Lj2833:
	movw	-40(%ebp),%cx
	movw	-36(%ebp),%dx
	movw	-32(%ebp),%ax
	call	L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub
	fldl	-20(%ebp)
	faddp	%st,%st(1)
	fstpl	-20(%ebp)
Lj2834:
	fldl	-20(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT
_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-84(%ebp)
	call	Lj2790
Lj2790:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj2845
	movl	$0,-16(%ebp)
	movb	$32,-25(%ebp)
	jmp	Lj2853
	.align 2
Lj2852:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	(%eax,%edx,1),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	movb	%al,-26(%ebp)
	movl	-12(%ebp),%eax
	movb	-49(%eax),%al
	testb	%al,%al
	je	Lj2859
	jmp	Lj2860
Lj2859:
	movb	-26(%ebp),%al
	cmpb	$77,%al
	je	Lj2863
	jmp	Lj2862
Lj2863:
	movb	-25(%ebp),%al
	cmpb	$72,%al
	je	Lj2861
	jmp	Lj2862
Lj2861:
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANPATLEN$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj2868
	jmp	Lj2869
Lj2868:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	incl	%eax
	movl	%eax,-76(%ebp)
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	L_RESSTR_SYSCONST_SHHMMERROR$non_lazy_ptr-Lj2790(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	call	L_DATEUTILS_RAISEEXCEPTION$ANSISTRING$stub
Lj2869:
	movl	%ebp,%eax
	movl	$2,%edx
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT$stub
	movl	%eax,-76(%ebp)
	fildl	-76(%ebp)
	movl	L_$DATEUTILS$_Ld34$non_lazy_ptr-Lj2790(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fldl	-48(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	-48(%eax)
	jmp	Lj2886
Lj2862:
	movb	-26(%ebp),%al
	cmpb	$9,%al
	jb	Lj2888
	subb	$9,%al
	je	Lj2903
	subb	$25,%al
	je	Lj2900
	subb	$5,%al
	je	Lj2900
	subb	$8,%al
	je	Lj2898
	subb	$11,%al
	je	Lj2899
	subb	$5,%al
	je	Lj2902
	subb	$2,%al
	je	Lj2897
	subb	$2,%al
	je	Lj2901
	decb	%al
	je	Lj2890
	subb	$4,%al
	je	Lj2889
	subb	$5,%al
	je	Lj2895
	decb	%al
	je	Lj2891
	subb	$5,%al
	je	Lj2892
	decb	%al
	je	Lj2896
	subb	$5,%al
	je	Lj2894
	decb	%al
	je	Lj2893
	jmp	Lj2888
Lj2889:
	movl	%ebp,%eax
	movl	$2,%edx
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT$stub
	movl	%eax,-76(%ebp)
	fildl	-76(%ebp)
	movl	L_$DATEUTILS$_Ld35$non_lazy_ptr-Lj2790(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fldl	-48(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	-48(%eax)
	jmp	Lj2887
Lj2890:
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANPATLEN$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj2915
	decl	%eax
	subl	$1,%eax
	jle	Lj2916
	decl	%eax
	je	Lj2917
	decl	%eax
	je	Lj2918
	decl	%eax
	je	Lj2919
	decl	%eax
	je	Lj2920
	jmp	Lj2915
Lj2916:
	movl	%ebp,%eax
	movl	$2,%edx
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,-40(%edx)
	jmp	Lj2914
Lj2917:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	leal	132(%eax),%edx
	movl	%ebp,%eax
	movl	$6,%ecx
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDMATCH$crcB1170B43$stub
	movl	-12(%ebp),%edx
	movl	%eax,-40(%edx)
	jmp	Lj2914
Lj2918:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	leal	160(%eax),%edx
	movl	%ebp,%eax
	movl	$6,%ecx
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDMATCH$crcB1170B43$stub
	movl	-12(%ebp),%edx
	movl	%eax,-40(%edx)
	jmp	Lj2914
Lj2919:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	12(%eax),%edx
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHPATTERN$ANSISTRING$stub
	jmp	Lj2914
Lj2920:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	16(%eax),%edx
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHPATTERN$ANSISTRING$stub
	jmp	Lj2914
Lj2915:
Lj2914:
	jmp	Lj2887
Lj2891:
	movl	%ebp,%eax
	movl	$2,%edx
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT$stub
	movl	%eax,-76(%ebp)
	fildl	-76(%ebp)
	movl	L_$DATEUTILS$_Ld34$non_lazy_ptr-Lj2790(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fldl	-48(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	-48(%eax)
	jmp	Lj2887
Lj2892:
	movl	%ebp,%eax
	movl	$2,%edx
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT$stub
	movl	%eax,-76(%ebp)
	fildl	-76(%ebp)
	movl	L_$DATEUTILS$_Ld36$non_lazy_ptr-Lj2790(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fldl	-48(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	-48(%eax)
	jmp	Lj2887
Lj2893:
	movl	%ebp,%eax
	movl	$3,%edx
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT$stub
	movl	%eax,-76(%ebp)
	fildl	-76(%ebp)
	movl	L_$DATEUTILS$_Ld13$non_lazy_ptr-Lj2790(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fldl	-48(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	-48(%eax)
	jmp	Lj2887
Lj2894:
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANPATLEN$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,-32(%edx)
	movl	-24(%ebp),%eax
	cmpl	$2,%eax
	jle	Lj2983
	jmp	Lj2984
Lj2983:
	call	L_SYSUTILS_NOW$$TDATETIME$stub
	fstpl	(%esp)
	call	L_DATEUTILS_YEAROF$TDATETIME$$WORD$stub
	movzwl	%ax,%eax
	movl	-12(%ebp),%edx
	movl	-12(%edx),%edx
	movzwl	188(%edx),%edx
	subl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%ecx
	movl	$1374389535,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	imull	$100,%edx
	movl	-12(%ebp),%eax
	addl	%edx,-32(%eax)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movzwl	188(%eax),%eax
	cmpl	$0,%eax
	jg	Lj2991
	jmp	Lj2990
Lj2991:
	movl	-12(%ebp),%eax
	movl	-32(%eax),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj2989
	jmp	Lj2990
Lj2989:
	movl	-12(%ebp),%eax
	addl	$100,-32(%eax)
Lj2990:
Lj2984:
	jmp	Lj2887
Lj2895:
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANPATLEN$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj2997
	decl	%eax
	subl	$1,%eax
	jle	Lj2998
	decl	%eax
	je	Lj2999
	decl	%eax
	je	Lj3000
	jmp	Lj2997
Lj2998:
	movl	%ebp,%eax
	movl	$2,%edx
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,-36(%edx)
	jmp	Lj2996
Lj2999:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	leal	36(%eax),%edx
	movl	%ebp,%eax
	movl	$11,%ecx
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDMATCH$crcB1170B43$stub
	movl	-12(%ebp),%edx
	movl	%eax,-36(%edx)
	jmp	Lj2996
Lj3000:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	leal	84(%eax),%edx
	movl	%ebp,%eax
	movl	$11,%ecx
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDMATCH$crcB1170B43$stub
	movl	-12(%ebp),%edx
	movl	%eax,-36(%edx)
	jmp	Lj2996
Lj2997:
Lj2996:
	jmp	Lj2887
Lj2896:
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANPATLEN$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj3032
	decl	%eax
	je	Lj3033
	decl	%eax
	je	Lj3034
	jmp	Lj3032
Lj3033:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	12(%eax),%edx
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHPATTERN$ANSISTRING$stub
	jmp	Lj3031
Lj3034:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	32(%eax),%edx
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHPATTERN$ANSISTRING$stub
	jmp	Lj3031
Lj3032:
Lj3031:
	jmp	Lj2887
Lj2897:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	%eax,(%esp)
	movl	L_TC_DATEUTILS_AMPMFORMATTING$non_lazy_ptr-Lj2790(%ebx),%edx
	movl	%ebp,%eax
	movl	$2,%ecx
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDIMATCH$crc38040729$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jl	Lj3054
	testl	%eax,%eax
	je	Lj3055
	decl	%eax
	je	Lj3056
	decl	%eax
	je	Lj3057
	jmp	Lj3054
Lj3055:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	leal	-1(%edx,%eax,1),%eax
	movl	%eax,(%esp)
	movl	L_$DATEUTILS$_Ld37$non_lazy_ptr-Lj2790(%ebx),%eax
	movl	%eax,-80(%ebp)
	movl	L_$DATEUTILS$_Ld39$non_lazy_ptr-Lj2790(%ebx),%eax
	movl	%eax,-76(%ebp)
	leal	-80(%ebp),%edx
	movl	%ebp,%eax
	movl	$1,%ecx
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDIMATCH$crc38040729$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jl	Lj3069
	testl	%eax,%eax
	je	Lj3070
	decl	%eax
	je	Lj3071
	jmp	Lj3069
Lj3070:
	jmp	Lj3068
Lj3071:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	fldl	-48(%eax)
	movl	L_$DATEUTILS$_Ld41$non_lazy_ptr-Lj2790(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
	fstpl	-48(%edx)
	jmp	Lj3068
Lj3069:
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_ARRAYMATCHERROR$stub
Lj3068:
	movl	L_TC_DATEUTILS_AMPMFORMATTING$non_lazy_ptr-Lj2790(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj3076
	movl	-4(%eax),%eax
Lj3076:
	addl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	addl	$2,-28(%eax)
	jmp	Lj3053
Lj3056:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	cmpb	$65,%al
	jb	Lj3078
	subb	$65,%al
	je	Lj3079
	subb	$15,%al
	je	Lj3080
	jmp	Lj3078
Lj3079:
	jmp	Lj3077
Lj3080:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	fldl	-48(%eax)
	movl	L_$DATEUTILS$_Ld41$non_lazy_ptr-Lj2790(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
	fstpl	-48(%edx)
	jmp	Lj3077
Lj3078:
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_ARRAYMATCHERROR$stub
Lj3077:
	movl	L_TC_DATEUTILS_AMPMFORMATTING$non_lazy_ptr-Lj2790(%ebx),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj3087
	movl	-4(%eax),%eax
Lj3087:
	addl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	-28(%eax)
	jmp	Lj3053
Lj3057:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	leal	-1(%edx,%eax,1),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	20(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	24(%eax),%eax
	movl	%eax,-76(%ebp)
	leal	-80(%ebp),%edx
	movl	%ebp,%eax
	movl	$1,%ecx
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDIMATCH$crc38040729$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jl	Lj3099
	testl	%eax,%eax
	je	Lj3100
	decl	%eax
	je	Lj3101
	jmp	Lj3099
Lj3100:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj3102
	movl	-4(%eax),%eax
Lj3102:
	movl	-12(%ebp),%edx
	addl	%eax,-28(%edx)
	jmp	Lj3098
Lj3101:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	fldl	-48(%eax)
	movl	L_$DATEUTILS$_Ld41$non_lazy_ptr-Lj2790(%ebx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
	fstpl	-48(%edx)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	24(%eax),%eax
	testl	%eax,%eax
	je	Lj3105
	movl	-4(%eax),%eax
Lj3105:
	movl	-12(%ebp),%edx
	addl	%eax,-28(%edx)
	jmp	Lj3098
Lj3099:
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_ARRAYMATCHERROR$stub
Lj3098:
	movl	L_TC_DATEUTILS_AMPMFORMATTING$non_lazy_ptr-Lj2790(%ebx),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj3108
	movl	-4(%eax),%eax
Lj3108:
	addl	%eax,-16(%ebp)
	addl	$2,-16(%ebp)
	movl	-12(%ebp),%eax
	addl	$2,-28(%eax)
	jmp	Lj3053
Lj3054:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%edx,%eax,1),%dl
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHCHAR$CHAR$stub
Lj3053:
	jmp	Lj2887
Lj2898:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movb	5(%eax),%dl
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHCHAR$CHAR$stub
	jmp	Lj2887
Lj2899:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movb	6(%eax),%dl
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHCHAR$CHAR$stub
	movb	-25(%ebp),%al
	movb	%al,-26(%ebp)
	jmp	Lj2887
Lj2900:
	movl	-12(%ebp),%eax
	movb	-26(%ebp),%dl
	movb	%dl,-49(%eax)
	incl	-16(%ebp)
	jmp	Lj2887
Lj2901:
	movl	-16(%ebp),%eax
	movl	8(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	12(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj3131
	movl	-4(%ecx),%ecx
Lj3131:
	movl	-12(%ebp),%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT$stub
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	32(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	32(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj3140
	movl	-4(%ecx),%ecx
Lj3140:
	movl	-12(%ebp),%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT$stub
	incl	-16(%ebp)
	jmp	Lj2887
Lj2902:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	incl	-28(%eax)
	jmp	Lj2887
Lj2903:
	jmp	Lj3144
	.align 2
Lj3143:
	movl	-12(%ebp),%eax
	incl	-28(%eax)
Lj3144:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-24(%edx),%eax
	jle	Lj3146
	jmp	Lj3145
Lj3146:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	movzbl	-1(%edx,%eax,1),%eax
	cmpl	$10,%eax
	je	Lj3147
	cmpl	$13,%eax
	je	Lj3147
	cmpl	$32,%eax
	je	Lj3147
Lj3147:
	je	Lj3143
	jmp	Lj3145
Lj3145:
	incl	-16(%ebp)
	jmp	Lj2887
Lj2888:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%edx,%eax,1),%dl
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHCHAR$CHAR$stub
Lj2887:
Lj2886:
	movb	-26(%ebp),%al
	movb	%al,-25(%ebp)
	jmp	Lj3154
Lj2860:
	movl	-12(%ebp),%eax
	movb	-49(%eax),%al
	cmpb	-26(%ebp),%al
	je	Lj3155
	jmp	Lj3156
Lj3155:
	movl	-12(%ebp),%eax
	movb	$0,-49(%eax)
	incl	-16(%ebp)
	jmp	Lj3159
Lj3156:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%edx,%eax,1),%dl
	movl	%ebp,%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHCHAR$CHAR$stub
Lj3159:
Lj3154:
Lj2853:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-24(%edx),%eax
	jle	Lj3164
	jmp	Lj2854
Lj3164:
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj2852
	jmp	Lj2854
Lj2854:
	movl	-16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj3168
	jmp	Lj3166
Lj3168:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3167
	jmp	Lj3166
Lj3167:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	decl	%eax
	movb	(%edx,%eax,1),%al
	cmpb	$9,%al
	jne	Lj3165
	jmp	Lj3166
Lj3165:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	incl	%eax
	movl	%eax,-76(%ebp)
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	L_RESSTR_SYSCONST_SFULLPATTERN$non_lazy_ptr-Lj2790(%ebx),%eax
	movl	4(%eax),%eax
	movl	$0,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	call	L_DATEUTILS_RAISEEXCEPTION$ANSISTRING$stub
Lj3166:
Lj2845:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj2846
	call	LFPC_RERAISE$stub
Lj2846:
	movl	-84(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHPATTERN$ANSISTRING
_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHPATTERN$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj3181
	movl	-4(%eax),%eax
Lj3181:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3182
	jmp	Lj3183
Lj3182:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-16(%eax),%edx
	movl	8(%ecx),%eax
	addl	%eax,%edx
	movl	%edx,(%esp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT$stub
Lj3183:
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANPATLEN$$LONGINT
_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANPATLEN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,-9(%ebp)
	jmp	Lj3199
	.align 2
Lj3198:
	incl	-16(%ebp)
Lj3199:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	cmpl	-16(%ebp),%eax
	jge	Lj3201
	jmp	Lj3200
Lj3201:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	-9(%ebp),%al
	je	Lj3198
	jmp	Lj3200
Lj3200:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHCHAR$CHAR
_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHCHAR$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	call	Lj2800
Lj2800:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj3204
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-12(%edx),%edx
	movl	-28(%eax),%eax
	cmpl	-24(%edx),%eax
	jg	Lj3207
	jmp	Lj3209
Lj3209:
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	-4(%ebp),%al
	jne	Lj3207
	jmp	Lj3208
Lj3207:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-28(%eax),%eax
	movzbl	-1(%edx,%eax,1),%eax
	movl	%eax,-80(%ebp)
	movl	$2,-84(%ebp)
	movzbl	-4(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	$2,-76(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-16(%eax),%ecx
	movl	8(%edx),%eax
	addl	%eax,%ecx
	incl	%ecx
	movl	%ecx,-64(%ebp)
	movl	$0,-68(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-28(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	$0,-60(%ebp)
	leal	-84(%ebp),%edx
	movl	L_RESSTR_SYSCONST_SNOCHARMATCH$non_lazy_ptr-Lj2800(%ebx),%eax
	movl	4(%eax),%eax
	movl	$3,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	L_DATEUTILS_RAISEEXCEPTION$ANSISTRING$stub
Lj3208:
	movl	-8(%ebp),%eax
	incl	-16(%eax)
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	incl	-28(%eax)
Lj3204:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj3205
	call	LFPC_RERAISE$stub
Lj3205:
	movl	-88(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT
_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	call	Lj2798
Lj2798:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj3220
	movl	$0,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-28(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-16(%eax),%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-13(%ebp)
	jmp	Lj3230
	.align 2
Lj3229:
	movl	-8(%ebp),%eax
	incl	-16(%eax)
Lj3230:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-16(%eax),%eax
	cmpl	-8(%edx),%eax
	jl	Lj3232
	jmp	Lj3231
Lj3232:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	-13(%ebp),%al
	je	Lj3229
	jmp	Lj3231
Lj3231:
	jmp	Lj3234
	.align 2
Lj3233:
	movl	-12(%ebp),%edx
	imull	$10,%edx
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-8(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-28(%eax),%eax
	movzbl	-1(%ecx,%eax,1),%eax
	addl	%eax,%edx
	subl	$48,%edx
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	incl	-28(%eax)
	decl	-4(%ebp)
Lj3234:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3239
	jmp	Lj3235
Lj3239:
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-12(%edx),%edx
	movl	-28(%eax),%eax
	cmpl	-24(%edx),%eax
	jle	Lj3238
	jmp	Lj3235
Lj3238:
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-28(%eax),%eax
	movzbl	-1(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj3240
Lj3240:
	jc	Lj3233
	jmp	Lj3235
Lj3235:
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-28(%eax),%eax
	cmpl	-20(%ebp),%eax
	je	Lj3241
	jmp	Lj3242
Lj3241:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-13(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$2,-80(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$0,-72(%ebp)
	leal	-80(%ebp),%edx
	movl	L_RESSTR_SYSCONST_SPATTERNCHARMISMATCH$non_lazy_ptr-Lj2798(%ebx),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	call	L_DATEUTILS_RAISEEXCEPTION$ANSISTRING$stub
Lj3242:
Lj3220:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj3221
	call	LFPC_RERAISE$stub
Lj3221:
	movl	-12(%ebp),%eax
	movl	-84(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDMATCH$crcB1170B43
_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDMATCH$crcB1170B43:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-28(%eax),%eax
	leal	-1(%edx,%eax,1),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDIMATCH$crc38040729$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj3263
	jmp	Lj3264
Lj3263:
	movl	-12(%ebp),%eax
	call	L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_ARRAYMATCHERROR$stub
	jmp	Lj3267
Lj3264:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj3268
	movl	-4(%eax),%eax
Lj3268:
	incl	%eax
	movl	-12(%ebp),%edx
	movl	-12(%edx),%edx
	addl	%eax,-28(%edx)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj3269
	movl	-4(%eax),%eax
Lj3269:
	incl	%eax
	movl	-12(%ebp),%edx
	addl	%eax,-16(%edx)
	incl	-16(%ebp)
Lj3267:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_ARRAYMATCHERROR
_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_ARRAYMATCHERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj2794
Lj2794:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj3270
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	incl	%eax
	movl	%eax,-60(%ebp)
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-28(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	$0,-56(%ebp)
	leal	-64(%ebp),%edx
	movl	L_RESSTR_SYSCONST_SNOARRAYMATCH$non_lazy_ptr-Lj2794(%ebx),%eax
	movl	4(%eax),%eax
	movl	$1,%ecx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-48(%ebp),%eax
	call	L_DATEUTILS_RAISEEXCEPTION$ANSISTRING$stub
Lj3270:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj3271
	call	LFPC_RERAISE$stub
Lj3271:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDIMATCH$crc38040729
_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDIMATCH$crc38040729:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	call	Lj2792
Lj2792:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$-1,-16(%ebp)
	movl	$0,-20(%ebp)
	jmp	Lj3288
	.align 2
Lj3287:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj3294
	movl	-4(%eax),%eax
Lj3294:
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	8(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2792(%ebx),%esi
	movl	60(%esi),%esi
	call	*%esi
	testl	%eax,%eax
	je	Lj3290
	jmp	Lj3291
Lj3290:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj3291:
	incl	-20(%ebp)
Lj3288:
	movl	-20(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jle	Lj3307
	jmp	Lj3289
Lj3307:
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj3287
	jmp	Lj3289
Lj3289:
	movl	-16(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_SCANDATETIME$ANSISTRING$ANSISTRING$LONGINT$$TDATETIME
_DATEUTILS_SCANDATETIME$ANSISTRING$ANSISTRING$LONGINT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj3309
Lj3309:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$1,(%esp)
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj3309(%ebx),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_DATEUTILS_SCANDATETIME$ANSISTRING$ANSISTRING$TFORMATSETTINGS$LONGINT$$TDATETIME$stub
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_UNIVERSALTIMETOLOCAL$TDATETIME$$TDATETIME
_DATEUTILS_UNIVERSALTIMETOLOCAL$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_SYSUTILS_GETLOCALTIMEOFFSET$$LONGINT$stub
	call	L_DATEUTILS_UNIVERSALTIMETOLOCAL$TDATETIME$LONGINT$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_UNIVERSALTIMETOLOCAL$TDATETIME$LONGINT$$TDATETIME
_DATEUTILS_UNIVERSALTIMETOLOCAL$TDATETIME$LONGINT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3330
	jmp	Lj3331
Lj3330:
	movw	$0,(%esp)
	movl	-4(%ebp),%eax
	cltd
	movl	$60,%ecx
	idivl	%ecx
	movl	%edx,%ebx
	movl	-4(%ebp),%ecx
	movl	$-2004318071,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,%eax
	movw	$0,%cx
	movw	%bx,%dx
	call	L_SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fldl	8(%ebp)
	fsubp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj3342
Lj3331:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3343
	jmp	Lj3344
Lj3343:
	movw	$0,(%esp)
	movl	-4(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	cltd
	movl	$60,%ecx
	idivl	%ecx
	movl	%edx,%ebx
	movl	-4(%ebp),%eax
	movl	%eax,%ecx
	sarl	$31,%eax
	xorl	%eax,%ecx
	subl	%eax,%ecx
	movl	$-2004318071,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,%eax
	movw	$0,%cx
	movw	%bx,%dx
	call	L_SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fldl	8(%ebp)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj3355
Lj3344:
	movl	8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj3355:
Lj3342:
	fldl	-12(%ebp)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_LOCALTIMETOUNIVERSAL$TDATETIME$$TDATETIME
_DATEUTILS_LOCALTIMETOUNIVERSAL$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_SYSUTILS_GETLOCALTIMEOFFSET$$LONGINT$stub
	call	L_DATEUTILS_LOCALTIMETOUNIVERSAL$TDATETIME$LONGINT$$TDATETIME$stub
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_DATEUTILS_LOCALTIMETOUNIVERSAL$TDATETIME$LONGINT$$TDATETIME
_DATEUTILS_LOCALTIMETOUNIVERSAL$TDATETIME$LONGINT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3368
	jmp	Lj3369
Lj3368:
	movw	$0,(%esp)
	movl	-4(%ebp),%eax
	cltd
	movl	$60,%ecx
	idivl	%ecx
	movl	%edx,%ebx
	movl	-4(%ebp),%ecx
	movl	$-2004318071,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,%eax
	movw	$0,%cx
	movw	%bx,%dx
	call	L_SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fldl	8(%ebp)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj3380
Lj3369:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3381
	jmp	Lj3382
Lj3381:
	movw	$0,(%esp)
	movl	-4(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	cltd
	movl	$60,%ecx
	idivl	%ecx
	movl	%edx,%ebx
	movl	-4(%ebp),%eax
	movl	%eax,%ecx
	sarl	$31,%eax
	xorl	%eax,%ecx
	subl	%eax,%ecx
	movl	$-2004318071,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,%eax
	movw	$0,%cx
	movw	%bx,%dx
	call	L_SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fldl	8(%ebp)
	fsubp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj3393
Lj3382:
	movl	8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj3393:
Lj3380:
	fldl	-12(%ebp)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIT$_DATEUTILS
_INIT$_DATEUTILS:
.reference __DATEUTILS_init_implicit
.globl	__DATEUTILS_init_implicit
__DATEUTILS_init_implicit:
.reference _INIT$_DATEUTILS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_DATEUTILS
_FINALIZE$_DATEUTILS:
.reference __DATEUTILS_finalize_implicit
.globl	__DATEUTILS_finalize_implicit
__DATEUTILS_finalize_implicit:
.reference _FINALIZE$_DATEUTILS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj3399
Lj3399:
	popl	%ebx
	movl	L_INIT_DATEUTILS_DEF418$non_lazy_ptr-Lj3399(%ebx),%edx
	movl	L_TC_DATEUTILS_AMPMFORMATTING$non_lazy_ptr-Lj3399(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_DATEUTILS
_THREADVARLIST_DATEUTILS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.const_data
	.align 2
.globl	_$DATEUTILS$_Ld29
_$DATEUTILS$_Ld29:
	.short	0,1
	.long	0,-1,5
.reference _$DATEUTILS$_Ld28
.globl	_$DATEUTILS$_Ld28
_$DATEUTILS$_Ld28:
.reference _$DATEUTILS$_Ld29
	.ascii	"am/pm\000"

.const_data
	.align 2
.globl	_$DATEUTILS$_Ld31
_$DATEUTILS$_Ld31:
	.short	0,1
	.long	0,-1,3
.reference _$DATEUTILS$_Ld30
.globl	_$DATEUTILS$_Ld30
_$DATEUTILS$_Ld30:
.reference _$DATEUTILS$_Ld31
	.ascii	"a/p\000"

.const_data
	.align 2
.globl	_$DATEUTILS$_Ld33
_$DATEUTILS$_Ld33:
	.short	0,1
	.long	0,-1,4
.reference _$DATEUTILS$_Ld32
.globl	_$DATEUTILS$_Ld32
_$DATEUTILS$_Ld32:
.reference _$DATEUTILS$_Ld33
	.ascii	"ampm\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 1
.globl	_TC_DATEUTILS_DAYSPERYEAR
_TC_DATEUTILS_DAYSPERYEAR:
	.short	365,366

.data
	.align 2
.globl	_TC_DATEUTILS_APPROXDAYSPERMONTH
_TC_DATEUTILS_APPROXDAYSPERMONTH:
	.byte	0,0,0,0,0,112,62,64

.data
	.align 2
.globl	_TC_DATEUTILS_APPROXDAYSPERYEAR
_TC_DATEUTILS_APPROXDAYSPERYEAR:
	.byte	0,0,0,0,0,212,118,64

.const_data
	.align 2
.globl	_$DATEUTILS$_Ld2
_$DATEUTILS$_Ld2:
	.short	0,1
	.long	0,-1,48
.reference _$DATEUTILS$_Ld1
.globl	_$DATEUTILS$_Ld1
_$DATEUTILS$_Ld1:
.reference _$DATEUTILS$_Ld2
	.ascii	"Function \"%s\" (dateutils) is not yet implemented\000"

.data
	.align 1
.globl	_TC_DATEUTILS_DOWMAP
_TC_DATEUTILS_DOWMAP:
	.short	7,1,2,3,4,5,6

.const
	.align 2
.globl	_$DATEUTILS$_Ld3
_$DATEUTILS$_Ld3:
	.byte	0,0,0,0,0,0,28,64

.const
	.align 2
.globl	_$DATEUTILS$_Ld4
_$DATEUTILS$_Ld4:
	.byte	0,0,0,0,0,0,224,63

.const
	.align 2
.globl	_$DATEUTILS$_Ld5
_$DATEUTILS$_Ld5:
	.byte	0,0,0,0,0,0,240,191

.const
	.align 3
.globl	_$DATEUTILS$_Ld6
_$DATEUTILS$_Ld6:
	.byte	91,72,77,12,0,0,0,128,203,63

.const
	.align 3
.globl	_$DATEUTILS$_Ld7
_$DATEUTILS$_Ld7:
	.byte	0,0,0,0,0,0,0,192,3,64

.const
	.align 3
.globl	_$DATEUTILS$_Ld8
_$DATEUTILS$_Ld8:
	.byte	0,0,0,0,0,0,0,180,9,64

.const
	.align 3
.globl	_$DATEUTILS$_Ld9
_$DATEUTILS$_Ld9:
	.byte	0,0,0,0,0,0,192,168,15,64

.const
	.align 3
.globl	_$DATEUTILS$_Ld10
_$DATEUTILS$_Ld10:
	.byte	0,0,0,0,0,128,203,164,25,64

.const
	.align 3
.globl	_$DATEUTILS$_Ld11
_$DATEUTILS$_Ld11:
	.byte	0,0,0,0,0,0,0,224,1,64

.const
	.align 2
.globl	_$DATEUTILS$_Ld12
_$DATEUTILS$_Ld12:
	.byte	0,0,0,0,112,153,148,65

.const
	.align 3
.globl	_$DATEUTILS$_Ld13
_$DATEUTILS$_Ld13:
	.byte	13,185,103,250,235,80,215,198,228,63

.const_data
	.align 2
.globl	_$DATEUTILS$_Ld15
_$DATEUTILS$_Ld15:
	.short	0,1
	.long	0,-1,4
.reference _$DATEUTILS$_Ld14
.globl	_$DATEUTILS$_Ld14
_$DATEUTILS$_Ld14:
.reference _$DATEUTILS$_Ld15
	.ascii	"????\000"

.const_data
	.align 2
.globl	_$DATEUTILS$_Ld17
_$DATEUTILS$_Ld17:
	.short	0,1
	.long	0,-1,2
.reference _$DATEUTILS$_Ld16
.globl	_$DATEUTILS$_Ld16
_$DATEUTILS$_Ld16:
.reference _$DATEUTILS$_Ld17
	.ascii	"??\000"

.const_data
	.align 2
.globl	_$DATEUTILS$_Ld19
_$DATEUTILS$_Ld19:
	.short	0,1
	.long	0,-1,1
.reference _$DATEUTILS$_Ld18
.globl	_$DATEUTILS$_Ld18
_$DATEUTILS$_Ld18:
.reference _$DATEUTILS$_Ld19
	.ascii	" \000"

.const_data
	.align 2
.globl	_$DATEUTILS$_Ld21
_$DATEUTILS$_Ld21:
	.short	0,1
	.long	0,-1,3
.reference _$DATEUTILS$_Ld20
.globl	_$DATEUTILS$_Ld20
_$DATEUTILS$_Ld20:
.reference _$DATEUTILS$_Ld21
	.ascii	"???\000"

.const_data
	.align 2
.globl	_$DATEUTILS$_Ld23
_$DATEUTILS$_Ld23:
	.short	0,1
	.long	0,-1,4
.reference _$DATEUTILS$_Ld22
.globl	_$DATEUTILS$_Ld22
_$DATEUTILS$_Ld22:
.reference _$DATEUTILS$_Ld23
	.ascii	"%.*d\000"

.const
	.align 2
.globl	_$DATEUTILS$_Ld24
_$DATEUTILS$_Ld24:
	.byte	0,0,0,0,32,75,223,64

.const
	.align 2
.globl	_$DATEUTILS$_Ld25
_$DATEUTILS$_Ld25:
	.byte	0,0,0,64,128,79,66,65

.const
	.align 2
.globl	_$DATEUTILS$_Ld26
_$DATEUTILS$_Ld26:
	.byte	0,0,0,0,64,248,216,64

.const
	.align 2
.globl	_$DATEUTILS$_Ld27
_$DATEUTILS$_Ld27:
	.byte	0,0,0,0,0,24,245,64

.data
	.align 2
.globl	_TC_DATEUTILS_AMPMFORMATTING
_TC_DATEUTILS_AMPMFORMATTING:
	.long	_$DATEUTILS$_Ld28
	.long	_$DATEUTILS$_Ld30
	.long	_$DATEUTILS$_Ld32

.const
	.align 3
.globl	_$DATEUTILS$_Ld34
_$DATEUTILS$_Ld34:
	.byte	11,182,96,11,182,96,11,182,244,63

.const
	.align 3
.globl	_$DATEUTILS$_Ld35
_$DATEUTILS$_Ld35:
	.byte	171,170,170,170,170,170,170,170,250,63

.const
	.align 3
.globl	_$DATEUTILS$_Ld36
_$DATEUTILS$_Ld36:
	.byte	183,74,137,114,6,69,46,194,238,63

.const_data
	.align 2
.globl	_$DATEUTILS$_Ld38
_$DATEUTILS$_Ld38:
	.short	0,1
	.long	0,-1,2
.reference _$DATEUTILS$_Ld37
.globl	_$DATEUTILS$_Ld37
_$DATEUTILS$_Ld37:
.reference _$DATEUTILS$_Ld38
	.ascii	"AM\000"

.const_data
	.align 2
.globl	_$DATEUTILS$_Ld40
_$DATEUTILS$_Ld40:
	.short	0,1
	.long	0,-1,2
.reference _$DATEUTILS$_Ld39
.globl	_$DATEUTILS$_Ld39
_$DATEUTILS$_Ld39:
.reference _$DATEUTILS$_Ld40
	.ascii	"PM\000"

.const
	.align 3
.globl	_$DATEUTILS$_Ld41
_$DATEUTILS$_Ld41:
	.byte	0,0,0,0,0,0,0,128,254,63
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

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

Lfpc_frac_real$stub:
.indirect_symbol fpc_frac_real
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_YEAROF$TDATETIME$$WORD$stub:
.indirect_symbol _DATEUTILS_YEAROF$TDATETIME$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_HOUROF$TDATETIME$$WORD$stub:
.indirect_symbol _DATEUTILS_HOUROF$TDATETIME$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_ISVALIDDATE$WORD$WORD$WORD$$BOOLEAN$stub:
.indirect_symbol _DATEUTILS_ISVALIDDATE$WORD$WORD$WORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_ISVALIDTIME$WORD$WORD$WORD$WORD$$BOOLEAN$stub:
.indirect_symbol _DATEUTILS_ISVALIDTIME$WORD$WORD$WORD$WORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_WEEKSINAYEAR$WORD$$WORD$stub:
.indirect_symbol _DATEUTILS_WEEKSINAYEAR$WORD$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_STARTOFAYEAR$WORD$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_STARTOFAYEAR$WORD$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD$stub:
.indirect_symbol _DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub:
.indirect_symbol _SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DATE$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_DATE$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_ISSAMEDAY$TDATETIME$TDATETIME$$BOOLEAN$stub:
.indirect_symbol _DATEUTILS_ISSAMEDAY$TDATETIME$TDATETIME$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_MONTHOF$TDATETIME$$WORD$stub:
.indirect_symbol _DATEUTILS_MONTHOF$TDATETIME$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_WEEKOFTHEYEAR$TDATETIME$$WORD$stub:
.indirect_symbol _DATEUTILS_WEEKOFTHEYEAR$TDATETIME$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub:
.indirect_symbol _SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_ENDOFTHEDAY$TDATETIME$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_ENDOFTHEDAY$TDATETIME$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_ENCODEDATEWEEK$WORD$WORD$WORD$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_ENCODEDATEWEEK$WORD$WORD$WORD$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_STARTOFAWEEK$WORD$WORD$WORD$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_STARTOFAWEEK$WORD$WORD$WORD$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_DECODEDATEWEEK$TDATETIME$WORD$WORD$WORD$stub:
.indirect_symbol _DATEUTILS_DECODEDATEWEEK$TDATETIME$WORD$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_STARTOFTHEYEAR$TDATETIME$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_STARTOFTHEYEAR$TDATETIME$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_DAYOFTHEYEAR$TDATETIME$$WORD$stub:
.indirect_symbol _DATEUTILS_DAYOFTHEYEAR$TDATETIME$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_mul_int64$stub:
.indirect_symbol fpc_mul_int64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_DECODEDATEMONTHWEEK$TDATETIME$WORD$WORD$WORD$WORD$stub:
.indirect_symbol _DATEUTILS_DECODEDATEMONTHWEEK$TDATETIME$WORD$WORD$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$stub:
.indirect_symbol _DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DAYOFWEEK$TDATETIME$$LONGINT$stub:
.indirect_symbol _SYSUTILS_DAYOFWEEK$TDATETIME$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_MINUTEOF$TDATETIME$$WORD$stub:
.indirect_symbol _DATEUTILS_MINUTEOF$TDATETIME$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_SECONDOF$TDATETIME$$WORD$stub:
.indirect_symbol _DATEUTILS_SECONDOF$TDATETIME$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_MILLISECONDOF$TDATETIME$$WORD$stub:
.indirect_symbol _DATEUTILS_MILLISECONDOF$TDATETIME$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_YEARSBETWEEN$TDATETIME$TDATETIME$$LONGINT$stub:
.indirect_symbol _DATEUTILS_YEARSBETWEEN$TDATETIME$TDATETIME$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_MONTHSBETWEEN$TDATETIME$TDATETIME$$LONGINT$stub:
.indirect_symbol _DATEUTILS_MONTHSBETWEEN$TDATETIME$TDATETIME$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_WEEKSBETWEEN$TDATETIME$TDATETIME$$LONGINT$stub:
.indirect_symbol _DATEUTILS_WEEKSBETWEEN$TDATETIME$TDATETIME$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_DAYSBETWEEN$TDATETIME$TDATETIME$$LONGINT$stub:
.indirect_symbol _DATEUTILS_DAYSBETWEEN$TDATETIME$TDATETIME$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_HOURSBETWEEN$TDATETIME$TDATETIME$$INT64$stub:
.indirect_symbol _DATEUTILS_HOURSBETWEEN$TDATETIME$TDATETIME$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_MINUTESBETWEEN$TDATETIME$TDATETIME$$INT64$stub:
.indirect_symbol _DATEUTILS_MINUTESBETWEEN$TDATETIME$TDATETIME$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_SECONDSBETWEEN$TDATETIME$TDATETIME$$INT64$stub:
.indirect_symbol _DATEUTILS_SECONDSBETWEEN$TDATETIME$TDATETIME$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_MILLISECONDSBETWEEN$TDATETIME$TDATETIME$$INT64$stub:
.indirect_symbol _DATEUTILS_MILLISECONDSBETWEEN$TDATETIME$TDATETIME$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_div_int64$stub:
.indirect_symbol fpc_div_int64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_INCYEAR$TDATETIME$LONGINT$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_INCYEAR$TDATETIME$LONGINT$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME$stub:
.indirect_symbol _DATEUTILS_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_INCWEEK$TDATETIME$LONGINT$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_INCWEEK$TDATETIME$LONGINT$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_INCDAY$TDATETIME$LONGINT$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_INCDAY$TDATETIME$LONGINT$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_INCHOUR$TDATETIME$INT64$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_INCHOUR$TDATETIME$INT64$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_INCMINUTE$TDATETIME$INT64$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_INCMINUTE$TDATETIME$INT64$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_INCSECOND$TDATETIME$INT64$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_INCSECOND$TDATETIME$INT64$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_INCMILLISECOND$TDATETIME$INT64$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_INCMILLISECOND$TDATETIME$INT64$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_TRYENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN$stub:
.indirect_symbol _DATEUTILS_TRYENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD$stub:
.indirect_symbol _DATEUTILS_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TRYENCODETIME$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_TRYENCODETIME$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_TRYENCODEDATEWEEK$WORD$WORD$TDATETIME$WORD$$BOOLEAN$stub:
.indirect_symbol _DATEUTILS_TRYENCODEDATEWEEK$WORD$WORD$TDATETIME$WORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_INVALIDDATEWEEKERROR$WORD$WORD$WORD$stub:
.indirect_symbol _DATEUTILS_INVALIDDATEWEEKERROR$WORD$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_ISVALIDDATEWEEK$WORD$WORD$WORD$$BOOLEAN$stub:
.indirect_symbol _DATEUTILS_ISVALIDDATEWEEK$WORD$WORD$WORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_TRYENCODEDATEDAY$WORD$WORD$TDATETIME$$BOOLEAN$stub:
.indirect_symbol _DATEUTILS_TRYENCODEDATEDAY$WORD$WORD$TDATETIME$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_INVALIDDATEDAYERROR$WORD$WORD$stub:
.indirect_symbol _DATEUTILS_INVALIDDATEDAYERROR$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_TRYENCODEDATEMONTHWEEK$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN$stub:
.indirect_symbol _DATEUTILS_TRYENCODEDATEMONTHWEEK$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_INVALIDDATEMONTHWEEKERROR$WORD$WORD$WORD$WORD$stub:
.indirect_symbol _DATEUTILS_INVALIDDATEMONTHWEEKERROR$WORD$WORD$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_ENDOFAMONTH$WORD$WORD$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_ENDOFAMONTH$WORD$WORD$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_DAYSINAMONTH$WORD$WORD$$WORD$stub:
.indirect_symbol _DATEUTILS_DAYSINAMONTH$WORD$WORD$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_ISVALIDDATEMONTHWEEK$WORD$WORD$WORD$WORD$$BOOLEAN$stub:
.indirect_symbol _DATEUTILS_ISVALIDDATEMONTHWEEK$WORD$WORD$WORD$WORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_TRYENCODETIMEINTERVAL$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN$stub:
.indirect_symbol _DATEUTILS_TRYENCODETIMEINTERVAL$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_TRYRECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN$stub:
.indirect_symbol _DATEUTILS_TRYRECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$stub:
.indirect_symbol _DATEUTILS_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD$stub:
.indirect_symbol _DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_SAMEDATETIME$TDATETIME$TDATETIME$$BOOLEAN$stub:
.indirect_symbol _DATEUTILS_SAMEDATETIME$TDATETIME$TDATETIME$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_SAMEDATE$TDATETIME$TDATETIME$$BOOLEAN$stub:
.indirect_symbol _DATEUTILS_SAMEDATE$TDATETIME$TDATETIME$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_SAMETIME$TDATETIME$TDATETIME$$BOOLEAN$stub:
.indirect_symbol _DATEUTILS_SAMETIME$TDATETIME$TDATETIME$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_DAYOFTHEMONTH$TDATETIME$$WORD$stub:
.indirect_symbol _DATEUTILS_DAYOFTHEMONTH$TDATETIME$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_INTERNALNTHDAYOFWEEK$WORD$$WORD$stub:
.indirect_symbol _DATEUTILS_INTERNALNTHDAYOFWEEK$WORD$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_TRYENCODEDAYOFWEEKINMONTH$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN$stub:
.indirect_symbol _DATEUTILS_TRYENCODEDAYOFWEEKINMONTH$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_INVALIDDAYOFWEEKINMONTHERROR$WORD$WORD$WORD$WORD$stub:
.indirect_symbol _DATEUTILS_INVALIDDAYOFWEEKINMONTHERROR$WORD$WORD$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING
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

Lfpc_ansistr_concat_multi$stub:
.indirect_symbol fpc_ansistr_concat_multi
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

L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_TRYJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN$stub:
.indirect_symbol _DATEUTILS_TRYJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_DATETIMETOJULIANDATE$TDATETIME$$DOUBLE$stub:
.indirect_symbol _DATEUTILS_DATETIMETOJULIANDATE$TDATETIME$$DOUBLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_JULIANDATETODATETIME$DOUBLE$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_JULIANDATETODATETIME$DOUBLE$$TDATETIME
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

L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT$stub:
.indirect_symbol _DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_UPCASE$CHAR$$CHAR$stub:
.indirect_symbol _SYSTEM_UPCASE$CHAR$$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANPATLEN$$LONGINT$stub:
.indirect_symbol _DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANPATLEN$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_RAISEEXCEPTION$ANSISTRING$stub:
.indirect_symbol _DATEUTILS_RAISEEXCEPTION$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT$stub:
.indirect_symbol _DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDMATCH$crcB1170B43$stub:
.indirect_symbol _DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDMATCH$crcB1170B43
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHPATTERN$ANSISTRING$stub:
.indirect_symbol _DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHPATTERN$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_NOW$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_NOW$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDIMATCH$crc38040729$stub:
.indirect_symbol _DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDIMATCH$crc38040729
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_ARRAYMATCHERROR$stub:
.indirect_symbol _DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_ARRAYMATCHERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHCHAR$CHAR$stub:
.indirect_symbol _DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHCHAR$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_SCANDATETIME$ANSISTRING$ANSISTRING$TFORMATSETTINGS$LONGINT$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_SCANDATETIME$ANSISTRING$ANSISTRING$TFORMATSETTINGS$LONGINT$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_GETLOCALTIMEOFFSET$$LONGINT$stub:
.indirect_symbol _SYSUTILS_GETLOCALTIMEOFFSET$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_UNIVERSALTIMETOLOCAL$TDATETIME$LONGINT$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_UNIVERSALTIMETOLOCAL$TDATETIME$LONGINT$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_DATEUTILS_LOCALTIMETOUNIVERSAL$TDATETIME$LONGINT$$TDATETIME$stub:
.indirect_symbol _DATEUTILS_LOCALTIMETOUNIVERSAL$TDATETIME$LONGINT$$TDATETIME
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
.globl	_INIT_DATEUTILS_DEF381
_INIT_DATEUTILS_DEF381:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_DATEUTILS_DEF382
_INIT_DATEUTILS_DEF382:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_DATEUTILS_DEF383
_INIT_DATEUTILS_DEF383:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_DATEUTILS_DEF384
_INIT_DATEUTILS_DEF384:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_DATEUTILS_DEF385
_INIT_DATEUTILS_DEF385:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_DATEUTILS_DEF386
_INIT_DATEUTILS_DEF386:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_DATEUTILS_DEF387
_INIT_DATEUTILS_DEF387:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_DATEUTILS_DEF427
_INIT_DATEUTILS_DEF427:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_DATEUTILS_DEF431
_INIT_DATEUTILS_DEF431:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_DATEUTILS_DEF448
_INIT_DATEUTILS_DEF448:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_DATEUTILS_DEF451
_INIT_DATEUTILS_DEF451:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_DATEUTILS_DEF187
_INIT_DATEUTILS_DEF187:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_DATEUTILS_DEF418
_INIT_DATEUTILS_DEF418:
	.byte	12
	.ascii	"\000"
	.long	4,3
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
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld1$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSUTILS_MONTHDAYS$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_MONTHDAYS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DATEUTILS_DAYSPERYEAR$non_lazy_ptr:
.indirect_symbol _TC_DATEUTILS_DAYSPERYEAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SERRINVALIDDAYOFWEEK$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SERRINVALIDDAYOFWEEK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_ECONVERTERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DATEUTILS_DOWMAP$non_lazy_ptr:
.indirect_symbol _TC_DATEUTILS_DOWMAP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld3$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld4$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld5$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld6$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DATEUTILS_APPROXDAYSPERYEAR$non_lazy_ptr:
.indirect_symbol _TC_DATEUTILS_APPROXDAYSPERYEAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DATEUTILS_APPROXDAYSPERMONTH$non_lazy_ptr:
.indirect_symbol _TC_DATEUTILS_APPROXDAYSPERMONTH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld7$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld8$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld9$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld10$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld11$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld12$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld12
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SERRINVALIDHOURMINUTESECMSEC$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SERRINVALIDHOURMINUTESECMSEC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld13$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld14$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld14
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_DEFAULTFORMATSETTINGS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld16$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld16
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld18$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld18
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld20$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld20
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SERRINVALIDTIMESTAMP$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SERRINVALIDTIMESTAMP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld22$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld22
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SERRINVALIDDATEWEEK$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SERRINVALIDDATEWEEK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SERRINVALIDDAYOFYEAR$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SERRINVALIDDAYOFYEAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SERRINVALIDDATEMONTHWEEK$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SERRINVALIDDATEMONTHWEEK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SERRINVALIDDAYOFWEEKINMONTH$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SERRINVALIDDAYOFWEEKINMONTH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SINVALIDJULIANDATE$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SINVALIDJULIANDATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld24$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld24
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld25$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld26$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld26
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld27$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld27
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SHHMMERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SHHMMERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld34$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld34
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld35$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld35
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld36$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld36
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_DATEUTILS_AMPMFORMATTING$non_lazy_ptr:
.indirect_symbol _TC_DATEUTILS_AMPMFORMATTING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld37$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld37
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld39$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld39
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$DATEUTILS$_Ld41$non_lazy_ptr:
.indirect_symbol _$DATEUTILS$_Ld41
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SFULLPATTERN$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SFULLPATTERN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SNOCHARMATCH$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SNOCHARMATCH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SPATTERNCHARMISMATCH$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SPATTERNCHARMISMATCH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SNOARRAYMATCH$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SNOARRAYMATCH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_WIDESTRINGMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_DATEUTILS_DEF418$non_lazy_ptr:
.indirect_symbol _INIT_DATEUTILS_DEF418
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

