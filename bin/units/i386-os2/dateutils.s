	.file "dateutils.pp"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
DATEUTILS_NOTYETIMPLEMENTED$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5
	movl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	$11,-52(%ebp)
	leal	-52(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	$VMT_SYSUTILS_EXCEPTION,%edx
	movl	$_$DATEUTILS$_Ld1,%ecx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La1:
	movl	%ebp,%ecx
	movl	$La1,%edx
	call	FPC_RAISEEXCEPTION
Lj5:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj6
	call	FPC_RERAISE
Lj6:
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_DATEOF$TDATETIME$$TDATETIME
DATEUTILS_DATEOF$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_TIMEOF$TDATETIME$$TDATETIME
DATEUTILS_TIMEOF$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	fldl	8(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	call	fpc_frac_real
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_ISINLEAPYEAR$TDATETIME$$BOOLEAN
DATEUTILS_ISINLEAPYEAR$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_YEAROF$TDATETIME$$WORD
	call	SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_ISPM$TDATETIME$$BOOLEAN
DATEUTILS_ISPM$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_HOUROF$TDATETIME$$WORD
	movzwl	%ax,%eax
	cmpl	$12,%eax
	setgeb	-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_ISVALIDDATE$WORD$WORD$WORD$$BOOLEAN
DATEUTILS_ISVALIDDATE$WORD$WORD$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
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
	call	SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
	movzbl	%al,%eax
	imull	$24,%eax
	movzwl	-8(%ebp),%edx
	movw	-12(%ebp),%cx
	cmpw	TC_SYSUTILS_MONTHDAYS-2(%eax,%edx,2),%cx
	jbe	Lj44
	jmp	Lj45
Lj44:
	movb	$1,-13(%ebp)
	jmp	Lj53
Lj45:
	movb	$0,-13(%ebp)
Lj53:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_ISVALIDTIME$WORD$WORD$WORD$WORD$$BOOLEAN
DATEUTILS_ISVALIDTIME$WORD$WORD$WORD$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
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
	ret	$4

.text
	.balign 4,0x90
.globl	DATEUTILS_ISVALIDDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$BOOLEAN
DATEUTILS_ISVALIDDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_ISVALIDDATE$WORD$WORD$WORD$$BOOLEAN
	testb	%al,%al
	jne	Lj73
	jmp	Lj72
Lj73:
	movzwl	8(%ebp),%eax
	pushl	%eax
	movw	12(%ebp),%cx
	movw	16(%ebp),%dx
	movw	20(%ebp),%ax
	call	DATEUTILS_ISVALIDTIME$WORD$WORD$WORD$WORD$$BOOLEAN
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
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_ISVALIDDATEDAY$WORD$WORD$$BOOLEAN
DATEUTILS_ISVALIDDATEDAY$WORD$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
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
	call	SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
	movzbl	%al,%eax
	movw	-8(%ebp),%dx
	cmpw	TC_DATEUTILS_DAYSPERYEAR(,%eax,2),%dx
	jbe	Lj91
	jmp	Lj92
Lj91:
	movb	$1,-9(%ebp)
	jmp	Lj98
Lj92:
	movb	$0,-9(%ebp)
Lj98:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_ISVALIDDATEWEEK$WORD$WORD$WORD$$BOOLEAN
DATEUTILS_ISVALIDDATEWEEK$WORD$WORD$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
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
	call	DATEUTILS_WEEKSINAYEAR$WORD$$WORD
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
	.balign 4,0x90
.globl	DATEUTILS_ISVALIDDATEMONTHWEEK$WORD$WORD$WORD$WORD$$BOOLEAN
DATEUTILS_ISVALIDDATEMONTHWEEK$WORD$WORD$WORD$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
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
	ret	$4

.text
	.balign 4,0x90
.globl	DATEUTILS_WEEKSINYEAR$TDATETIME$$WORD
DATEUTILS_WEEKSINYEAR$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_YEAROF$TDATETIME$$WORD
	call	DATEUTILS_WEEKSINAYEAR$WORD$$WORD
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_WEEKSINAYEAR$WORD$$WORD
DATEUTILS_WEEKSINAYEAR$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movw	$52,-6(%ebp)
	movw	-4(%ebp),%ax
	call	DATEUTILS_STARTOFAYEAR$WORD$$TDATETIME
	subl	$8,%esp
	fstpl	(%esp)
	call	DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD
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
	call	SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
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
	.balign 4,0x90
.globl	DATEUTILS_DAYSINYEAR$TDATETIME$$WORD
DATEUTILS_DAYSINYEAR$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_YEAROF$TDATETIME$$WORD
	call	SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
	movzbl	%al,%eax
	movw	TC_DATEUTILS_DAYSPERYEAR(,%eax,2),%ax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_DAYSINAYEAR$WORD$$WORD
DATEUTILS_DAYSINAYEAR$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	call	SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
	movzbl	%al,%eax
	movw	TC_DATEUTILS_DAYSPERYEAR(,%eax,2),%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_DAYSINMONTH$TDATETIME$$WORD
DATEUTILS_DAYSINMONTH$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	movw	-4(%ebp),%ax
	call	SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
	movzbl	%al,%eax
	imull	$24,%eax
	movzwl	-6(%ebp),%edx
	movw	TC_SYSUTILS_MONTHDAYS-2(%eax,%edx,2),%ax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_DAYSINAMONTH$WORD$WORD$$WORD
DATEUTILS_DAYSINAMONTH$WORD$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$10,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	-4(%ebp),%ax
	call	SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
	movzbl	%al,%eax
	imull	$24,%eax
	movzwl	-8(%ebp),%edx
	movw	TC_SYSUTILS_MONTHDAYS-2(%eax,%edx,2),%ax
	movw	%ax,-10(%ebp)
	movw	-10(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_TODAY$$TDATETIME
DATEUTILS_TODAY$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	SYSUTILS_DATE$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_YESTERDAY$$TDATETIME
DATEUTILS_YESTERDAY$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	SYSUTILS_DATE$$TDATETIME
	fld1
	fsubrp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_TOMORROW$$TDATETIME
DATEUTILS_TOMORROW$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	SYSUTILS_DATE$$TDATETIME
	fld1
	faddp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_ISTODAY$TDATETIME$$BOOLEAN
DATEUTILS_ISTODAY$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	SYSUTILS_DATE$$TDATETIME
	subl	$8,%esp
	fstpl	(%esp)
	call	DATEUTILS_ISSAMEDAY$TDATETIME$TDATETIME$$BOOLEAN
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_ISSAMEDAY$TDATETIME$TDATETIME$$BOOLEAN
DATEUTILS_ISSAMEDAY$TDATETIME$TDATETIME$$BOOLEAN:
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
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_ISSAMEMONTH$TDATETIME$TDATETIME$$BOOLEAN
DATEUTILS_ISSAMEMONTH$TDATETIME$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_YEAROF$TDATETIME$$WORD
	movw	%ax,%bx
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_YEAROF$TDATETIME$$WORD
	cmpw	%ax,%bx
	seteb	-1(%ebp)
	cmpb	$0,-1(%ebp)
	jne	Lj219
	jmp	Lj218
Lj219:
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_MONTHOF$TDATETIME$$WORD
	movw	%ax,%bx
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_MONTHOF$TDATETIME$$WORD
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
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_PREVIOUSDAYOFWEEK$WORD$$WORD
DATEUTILS_PREVIOUSDAYOFWEEK$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$14,%esp
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%eax
	decl	%eax
	cmpl	$7,%eax
	jb	Lj229
Lj229:
	jnc	Lj227
	jmp	Lj228
Lj227:
	movzwl	-4(%ebp),%eax
	movl	%eax,-10(%ebp)
	movl	$0,-14(%ebp)
	leal	-14(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SERRINVALIDDAYOFWEEK+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La2:
	movl	%ebp,%ecx
	movl	$La2,%edx
	call	FPC_RAISEEXCEPTION
Lj228:
	movzwl	-4(%ebp),%eax
	movw	TC_DATEUTILS_DOWMAP-2(,%eax,2),%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_YEAROF$TDATETIME$$WORD
DATEUTILS_YEAROF$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-6(%ebp),%ecx
	leal	-4(%ebp),%edx
	leal	-2(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_MONTHOF$TDATETIME$$WORD
DATEUTILS_MONTHOF$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-6(%ebp),%ecx
	leal	-2(%ebp),%edx
	leal	-4(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_WEEKOF$TDATETIME$$WORD
DATEUTILS_WEEKOF$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_WEEKOFTHEYEAR$TDATETIME$$WORD
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_DAYOF$TDATETIME$$WORD
DATEUTILS_DAYOF$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-2(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_HOUROF$TDATETIME$$WORD
DATEUTILS_HOUROF$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%eax
	pushl	%eax
	leal	-6(%ebp),%ecx
	leal	-4(%ebp),%edx
	leal	-2(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_MINUTEOF$TDATETIME$$WORD
DATEUTILS_MINUTEOF$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%eax
	pushl	%eax
	leal	-6(%ebp),%ecx
	leal	-2(%ebp),%edx
	leal	-4(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_SECONDOF$TDATETIME$$WORD
DATEUTILS_SECONDOF$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%eax
	pushl	%eax
	leal	-2(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_MILLISECONDOF$TDATETIME$$WORD
DATEUTILS_MILLISECONDOF$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-2(%ebp),%eax
	pushl	%eax
	leal	-8(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_STARTOFTHEYEAR$TDATETIME$$TDATETIME
DATEUTILS_STARTOFTHEYEAR$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_YEAROF$TDATETIME$$WORD
	movw	$1,%cx
	movw	$1,%dx
	call	SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_ENDOFTHEYEAR$TDATETIME$$TDATETIME
DATEUTILS_ENDOFTHEYEAR$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	pushl	$23
	pushl	$59
	pushl	$59
	pushl	$999
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_YEAROF$TDATETIME$$WORD
	movw	$31,%cx
	movw	$12,%dx
	call	DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_STARTOFAYEAR$WORD$$TDATETIME
DATEUTILS_STARTOFAYEAR$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	movw	$1,%cx
	movw	$1,%dx
	call	SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_ENDOFAYEAR$WORD$$TDATETIME
DATEUTILS_ENDOFAYEAR$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	%ax,-4(%ebp)
	pushl	$23
	pushl	$59
	pushl	$59
	pushl	$999
	movw	-4(%ebp),%ax
	movw	$31,%cx
	movw	$12,%dx
	call	DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_STARTOFTHEMONTH$TDATETIME$$TDATETIME
DATEUTILS_STARTOFTHEMONTH$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$14,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-14(%ebp),%ecx
	leal	-12(%ebp),%edx
	leal	-10(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	movw	-12(%ebp),%dx
	movw	-10(%ebp),%ax
	movw	$1,%cx
	call	SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_ENDOFTHEMONTH$TDATETIME$$TDATETIME
DATEUTILS_ENDOFTHEMONTH$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$14,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-14(%ebp),%ecx
	leal	-12(%ebp),%edx
	leal	-10(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	pushl	$23
	pushl	$59
	pushl	$59
	pushl	$999
	movw	-10(%ebp),%ax
	call	SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
	movzbl	%al,%eax
	imull	$24,%eax
	movzwl	-12(%ebp),%edx
	movw	TC_SYSUTILS_MONTHDAYS-2(%eax,%edx,2),%cx
	movw	-12(%ebp),%dx
	movw	-10(%ebp),%ax
	call	DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_STARTOFAMONTH$WORD$WORD$$TDATETIME
DATEUTILS_STARTOFAMONTH$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	movw	$1,%cx
	call	SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_ENDOFAMONTH$WORD$WORD$$TDATETIME
DATEUTILS_ENDOFAMONTH$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	pushl	$23
	pushl	$59
	pushl	$59
	pushl	$999
	movw	-4(%ebp),%ax
	call	SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
	movzbl	%al,%eax
	imull	$24,%eax
	movzwl	-8(%ebp),%edx
	movw	TC_SYSUTILS_MONTHDAYS-2(%eax,%edx,2),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_STARTOFTHEWEEK$TDATETIME$$TDATETIME
DATEUTILS_STARTOFTHEWEEK$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_ENDOFTHEWEEK$TDATETIME$$TDATETIME
DATEUTILS_ENDOFTHEWEEK$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD
	movzwl	%ax,%eax
	movl	%eax,-12(%ebp)
	fildl	-12(%ebp)
	fldl	8(%ebp)
	fsubp	%st,%st(1)
	fldl	_$DATEUTILS$_Ld2
	faddp	%st,%st(1)
	subl	$8,%esp
	fstpl	(%esp)
	call	DATEUTILS_ENDOFTHEDAY$TDATETIME$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_STARTOFAWEEK$WORD$WORD$WORD$$TDATETIME
DATEUTILS_STARTOFAWEEK$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_ENCODEDATEWEEK$WORD$WORD$WORD$$TDATETIME
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_STARTOFAWEEK$WORD$WORD$$TDATETIME
DATEUTILS_STARTOFAWEEK$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	movw	$1,%cx
	call	DATEUTILS_STARTOFAWEEK$WORD$WORD$WORD$$TDATETIME
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_ENDOFAWEEK$WORD$WORD$WORD$$TDATETIME
DATEUTILS_ENDOFAWEEK$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_ENCODEDATEWEEK$WORD$WORD$WORD$$TDATETIME
	subl	$8,%esp
	fstpl	(%esp)
	call	DATEUTILS_ENDOFTHEDAY$TDATETIME$$TDATETIME
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_ENDOFAWEEK$WORD$WORD$$TDATETIME
DATEUTILS_ENDOFAWEEK$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	movw	$7,%cx
	call	DATEUTILS_ENCODEDATEWEEK$WORD$WORD$WORD$$TDATETIME
	subl	$8,%esp
	fstpl	(%esp)
	call	DATEUTILS_ENDOFTHEDAY$TDATETIME$$TDATETIME
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_STARTOFTHEDAY$TDATETIME$$TDATETIME
DATEUTILS_STARTOFTHEDAY$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_ENDOFTHEDAY$TDATETIME$$TDATETIME
DATEUTILS_ENDOFTHEDAY$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$14,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-14(%ebp),%ecx
	leal	-12(%ebp),%edx
	leal	-10(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	pushl	$23
	pushl	$59
	pushl	$59
	pushl	$999
	movw	-14(%ebp),%cx
	movw	-12(%ebp),%dx
	movw	-10(%ebp),%ax
	call	DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_STARTOFADAY$WORD$WORD$WORD$$TDATETIME
DATEUTILS_STARTOFADAY$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_STARTOFADAY$WORD$WORD$$TDATETIME
DATEUTILS_STARTOFADAY$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	-4(%ebp),%ax
	call	DATEUTILS_STARTOFAYEAR$WORD$$TDATETIME
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
	.balign 4,0x90
.globl	DATEUTILS_ENDOFADAY$WORD$WORD$WORD$$TDATETIME
DATEUTILS_ENDOFADAY$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
	subl	$8,%esp
	fstpl	(%esp)
	call	DATEUTILS_ENDOFTHEDAY$TDATETIME$$TDATETIME
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_ENDOFADAY$WORD$WORD$$TDATETIME
DATEUTILS_ENDOFADAY$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	-4(%ebp),%ax
	call	DATEUTILS_STARTOFAYEAR$WORD$$TDATETIME
	movzwl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	fildl	-20(%ebp)
	faddp	%st,%st(1)
	fld1
	fsubrp	%st,%st(1)
	fstpl	-28(%ebp)
	pushl	$999
	movw	$59,%cx
	movw	$59,%dx
	movw	$23,%ax
	call	SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
	fldl	-28(%ebp)
	faddp	%st,%st(1)
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_MONTHOFTHEYEAR$TDATETIME$$WORD
DATEUTILS_MONTHOFTHEYEAR$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_MONTHOF$TDATETIME$$WORD
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_WEEKOFTHEYEAR$TDATETIME$$WORD
DATEUTILS_WEEKOFTHEYEAR$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-6(%ebp),%ecx
	leal	-2(%ebp),%edx
	leal	-4(%ebp),%eax
	call	DATEUTILS_DECODEDATEWEEK$TDATETIME$WORD$WORD$WORD
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_WEEKOFTHEYEAR$TDATETIME$WORD$$WORD
DATEUTILS_WEEKOFTHEYEAR$TDATETIME$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%ecx
	leal	-6(%ebp),%edx
	movl	-4(%ebp),%eax
	call	DATEUTILS_DECODEDATEWEEK$TDATETIME$WORD$WORD$WORD
	movw	-6(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_DAYOFTHEYEAR$TDATETIME$$WORD
DATEUTILS_DAYOFTHEYEAR$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	fnstcw	-6(%ebp)
	fnstcw	-4(%ebp)
	orw	$3840,-6(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_STARTOFTHEYEAR$TDATETIME$$TDATETIME
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_HOUROFTHEYEAR$TDATETIME$$WORD
DATEUTILS_HOUROFTHEYEAR$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-10(%ebp),%eax
	pushl	%eax
	leal	-8(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	movzwl	-4(%ebp),%ebx
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DAYOFTHEYEAR$TDATETIME$$WORD
	movzwl	%ax,%eax
	decl	%eax
	imull	$24,%eax
	addl	%eax,%ebx
	movw	%bx,-2(%ebp)
	movw	-2(%ebp),%ax
	movl	-16(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_MINUTEOFTHEYEAR$TDATETIME$$LONGWORD
DATEUTILS_MINUTEOFTHEYEAR$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	movzwl	-8(%ebp),%esi
	movzwl	-6(%ebp),%ebx
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DAYOFTHEYEAR$TDATETIME$$WORD
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_SECONDOFTHEYEAR$TDATETIME$$LONGWORD
DATEUTILS_SECONDOFTHEYEAR$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	movzwl	-8(%ebp),%esi
	movzwl	-6(%ebp),%ebx
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DAYOFTHEYEAR$TDATETIME$$WORD
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_MILLISECONDOFTHEYEAR$TDATETIME$$INT64
DATEUTILS_MILLISECONDOFTHEYEAR$TDATETIME$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-16(%ebp),%eax
	pushl	%eax
	leal	-14(%ebp),%ecx
	leal	-12(%ebp),%edx
	leal	-10(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	movzwl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$0,%ebx
	movzwl	-10(%ebp),%edi
	movl	$0,%esi
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DAYOFTHEYEAR$TDATETIME$$WORD
	movzwl	%ax,%eax
	movzwl	%ax,%eax
	movl	$0,%edx
	subl	$1,%eax
	sbbl	$0,%edx
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$24
	movl	$0,%eax
	call	fpc_mul_int64
	addl	%eax,%edi
	adcl	%edx,%esi
	pushl	%esi
	pushl	%edi
	pushl	$0
	pushl	$60
	movl	$0,%eax
	call	fpc_mul_int64
	addl	%eax,-20(%ebp)
	adcl	%edx,%ebx
	pushl	%ebx
	pushl	-20(%ebp)
	pushl	$0
	pushl	$60
	movl	$0,%eax
	call	fpc_mul_int64
	movzwl	-14(%ebp),%ecx
	movl	$0,%ebx
	addl	%ecx,%eax
	adcl	%ebx,%edx
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$1000
	movl	$0,%eax
	call	fpc_mul_int64
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_WEEKOFTHEMONTH$TDATETIME$$WORD
DATEUTILS_WEEKOFTHEMONTH$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%eax
	pushl	%eax
	leal	-2(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	DATEUTILS_DECODEDATEMONTHWEEK$TDATETIME$WORD$WORD$WORD$WORD
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_WEEKOFTHEMONTH$TDATETIME$WORD$WORD$$WORD
DATEUTILS_WEEKOFTHEMONTH$TDATETIME$WORD$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-10(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	DATEUTILS_DECODEDATEMONTHWEEK$TDATETIME$WORD$WORD$WORD$WORD
	movw	-10(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_DAYOFTHEMONTH$TDATETIME$$WORD
DATEUTILS_DAYOFTHEMONTH$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-2(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_HOUROFTHEMONTH$TDATETIME$$WORD
DATEUTILS_HOUROFTHEMONTH$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-10(%ebp),%eax
	pushl	%eax
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-14(%ebp),%eax
	pushl	%eax
	leal	-16(%ebp),%eax
	pushl	%eax
	leal	-8(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
	movzwl	-8(%ebp),%eax
	decl	%eax
	imull	$24,%eax
	movzwl	-10(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_MINUTEOFTHEMONTH$TDATETIME$$WORD
DATEUTILS_MINUTEOFTHEMONTH$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-10(%ebp),%eax
	pushl	%eax
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-14(%ebp),%eax
	pushl	%eax
	leal	-16(%ebp),%eax
	pushl	%eax
	leal	-8(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_SECONDOFTHEMONTH$TDATETIME$$LONGWORD
DATEUTILS_SECONDOFTHEMONTH$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$18,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-14(%ebp),%eax
	pushl	%eax
	leal	-16(%ebp),%eax
	pushl	%eax
	leal	-18(%ebp),%eax
	pushl	%eax
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_MILLISECONDOFTHEMONTH$TDATETIME$$LONGWORD
DATEUTILS_MILLISECONDOFTHEMONTH$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$18,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-14(%ebp),%eax
	pushl	%eax
	leal	-16(%ebp),%eax
	pushl	%eax
	leal	-18(%ebp),%eax
	pushl	%eax
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD
DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	SYSUTILS_DAYOFWEEK$TDATETIME$$LONGINT
	movw	TC_DATEUTILS_DOWMAP-2(,%eax,2),%ax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_HOUROFTHEWEEK$TDATETIME$$WORD
DATEUTILS_HOUROFTHEWEEK$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$10,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-10(%ebp),%eax
	pushl	%eax
	leal	-8(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD
	movzwl	%ax,%eax
	decl	%eax
	imull	$24,%eax
	movzwl	-4(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_MINUTEOFTHEWEEK$TDATETIME$$WORD
DATEUTILS_MINUTEOFTHEWEEK$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$10,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-10(%ebp),%eax
	pushl	%eax
	leal	-8(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_SECONDOFTHEWEEK$TDATETIME$$LONGWORD
DATEUTILS_SECONDOFTHEWEEK$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_MILLISECONDOFTHEWEEK$TDATETIME$$LONGWORD
DATEUTILS_MILLISECONDOFTHEWEEK$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_HOUROFTHEDAY$TDATETIME$$WORD
DATEUTILS_HOUROFTHEDAY$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_HOUROF$TDATETIME$$WORD
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_MINUTEOFTHEDAY$TDATETIME$$WORD
DATEUTILS_MINUTEOFTHEDAY$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$10,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-10(%ebp),%eax
	pushl	%eax
	leal	-8(%ebp),%ecx
	leal	-6(%ebp),%edx
	leal	-4(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	movzwl	-4(%ebp),%eax
	imull	$60,%eax
	movzwl	-6(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_SECONDOFTHEDAY$TDATETIME$$LONGWORD
DATEUTILS_SECONDOFTHEDAY$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_MILLISECONDOFTHEDAY$TDATETIME$$LONGWORD
DATEUTILS_MILLISECONDOFTHEDAY$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_MINUTEOFTHEHOUR$TDATETIME$$WORD
DATEUTILS_MINUTEOFTHEHOUR$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_MINUTEOF$TDATETIME$$WORD
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_SECONDOFTHEHOUR$TDATETIME$$WORD
DATEUTILS_SECONDOFTHEHOUR$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$10,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-10(%ebp),%eax
	pushl	%eax
	leal	-6(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-4(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	movzwl	-8(%ebp),%eax
	imull	$60,%eax
	movzwl	-6(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_MILLISECONDOFTHEHOUR$TDATETIME$$LONGWORD
DATEUTILS_MILLISECONDOFTHEHOUR$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-8(%ebp),%ecx
	leal	-10(%ebp),%edx
	leal	-6(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_SECONDOFTHEMINUTE$TDATETIME$$WORD
DATEUTILS_SECONDOFTHEMINUTE$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_SECONDOF$TDATETIME$$WORD
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_MILLISECONDOFTHEMINUTE$TDATETIME$$LONGWORD
DATEUTILS_MILLISECONDOFTHEMINUTE$TDATETIME$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-8(%ebp),%ecx
	leal	-10(%ebp),%edx
	leal	-6(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	movzwl	-8(%ebp),%eax
	imull	$1000,%eax
	movzwl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_MILLISECONDOFTHESECOND$TDATETIME$$WORD
DATEUTILS_MILLISECONDOFTHESECOND$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_MILLISECONDOF$TDATETIME$$WORD
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_WITHINPASTYEARS$TDATETIME$TDATETIME$LONGINT$$BOOLEAN
DATEUTILS_WITHINPASTYEARS$TDATETIME$TDATETIME$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_YEARSBETWEEN$TDATETIME$TDATETIME$$LONGINT
	cmpl	-4(%ebp),%eax
	setleb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_WITHINPASTMONTHS$TDATETIME$TDATETIME$LONGINT$$BOOLEAN
DATEUTILS_WITHINPASTMONTHS$TDATETIME$TDATETIME$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_MONTHSBETWEEN$TDATETIME$TDATETIME$$LONGINT
	cmpl	-4(%ebp),%eax
	setleb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_WITHINPASTWEEKS$TDATETIME$TDATETIME$LONGINT$$BOOLEAN
DATEUTILS_WITHINPASTWEEKS$TDATETIME$TDATETIME$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_WEEKSBETWEEN$TDATETIME$TDATETIME$$LONGINT
	cmpl	-4(%ebp),%eax
	setleb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_WITHINPASTDAYS$TDATETIME$TDATETIME$LONGINT$$BOOLEAN
DATEUTILS_WITHINPASTDAYS$TDATETIME$TDATETIME$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DAYSBETWEEN$TDATETIME$TDATETIME$$LONGINT
	cmpl	-4(%ebp),%eax
	setleb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_WITHINPASTHOURS$TDATETIME$TDATETIME$INT64$$BOOLEAN
DATEUTILS_WITHINPASTHOURS$TDATETIME$TDATETIME$INT64$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	subl	$8,%esp
	movl	24(%ebp),%eax
	movl	%eax,(%esp)
	movl	28(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_HOURSBETWEEN$TDATETIME$TDATETIME$$INT64
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
	ret	$24

.text
	.balign 4,0x90
.globl	DATEUTILS_WITHINPASTMINUTES$TDATETIME$TDATETIME$INT64$$BOOLEAN
DATEUTILS_WITHINPASTMINUTES$TDATETIME$TDATETIME$INT64$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	subl	$8,%esp
	movl	24(%ebp),%eax
	movl	%eax,(%esp)
	movl	28(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_MINUTESBETWEEN$TDATETIME$TDATETIME$$INT64
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
	ret	$24

.text
	.balign 4,0x90
.globl	DATEUTILS_WITHINPASTSECONDS$TDATETIME$TDATETIME$INT64$$BOOLEAN
DATEUTILS_WITHINPASTSECONDS$TDATETIME$TDATETIME$INT64$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	subl	$8,%esp
	movl	24(%ebp),%eax
	movl	%eax,(%esp)
	movl	28(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_SECONDSBETWEEN$TDATETIME$TDATETIME$$INT64
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
	ret	$24

.text
	.balign 4,0x90
.globl	DATEUTILS_WITHINPASTMILLISECONDS$TDATETIME$TDATETIME$INT64$$BOOLEAN
DATEUTILS_WITHINPASTMILLISECONDS$TDATETIME$TDATETIME$INT64$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	subl	$8,%esp
	movl	24(%ebp),%eax
	movl	%eax,(%esp)
	movl	28(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_MILLISECONDSBETWEEN$TDATETIME$TDATETIME$$INT64
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
	ret	$24

.text
	.balign 4,0x90
DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
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
	fldl	_$DATEUTILS$_Ld3
	fldl	-8(%ebp)
	fsubp	%st,%st(1)
	fstpl	-8(%ebp)
	jmp	Lj1081
Lj1077:
	fldl	_$DATEUTILS$_Ld4
	fldl	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1084
	jmp	Lj1083
Lj1084:
	fldl	_$DATEUTILS$_Ld4
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1082
	jmp	Lj1083
Lj1082:
	fldl	_$DATEUTILS$_Ld3
	fldl	-8(%ebp)
	faddp	%st,%st(1)
	fstpl	-8(%ebp)
Lj1083:
Lj1081:
	fldl	-8(%ebp)
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_YEARSBETWEEN$TDATETIME$TDATETIME$$LONGINT
DATEUTILS_YEARSBETWEEN$TDATETIME$TDATETIME$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	fnstcw	-8(%ebp)
	fnstcw	-6(%ebp)
	orw	$3840,-8(%ebp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
	fabs
	fldt	_$DATEUTILS$_Ld5
	faddp	%st,%st(1)
	fldl	TC_DATEUTILS_APPROXDAYSPERYEAR
	fdivrp	%st,%st(1)
	fldcw	-8(%ebp)
	fistpq	-16(%ebp)
	fldcw	-6(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_MONTHSBETWEEN$TDATETIME$TDATETIME$$LONGINT
DATEUTILS_MONTHSBETWEEN$TDATETIME$TDATETIME$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	fnstcw	-8(%ebp)
	fnstcw	-6(%ebp)
	orw	$3840,-8(%ebp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
	fabs
	fldt	_$DATEUTILS$_Ld5
	faddp	%st,%st(1)
	fldl	TC_DATEUTILS_APPROXDAYSPERMONTH
	fdivrp	%st,%st(1)
	fldcw	-8(%ebp)
	fistpq	-16(%ebp)
	fldcw	-6(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_WEEKSBETWEEN$TDATETIME$TDATETIME$$LONGINT
DATEUTILS_WEEKSBETWEEN$TDATETIME$TDATETIME$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	pushl	$0
	pushl	$7
	fnstcw	-8(%ebp)
	fnstcw	-6(%ebp)
	orw	$3840,-8(%ebp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
	fabs
	fldt	_$DATEUTILS$_Ld5
	faddp	%st,%st(1)
	fldcw	-8(%ebp)
	fistpq	-16(%ebp)
	fldcw	-6(%ebp)
	fwait
	pushl	-12(%ebp)
	pushl	-16(%ebp)
	call	fpc_div_int64
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_DAYSBETWEEN$TDATETIME$TDATETIME$$LONGINT
DATEUTILS_DAYSBETWEEN$TDATETIME$TDATETIME$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	fnstcw	-8(%ebp)
	fnstcw	-6(%ebp)
	orw	$3840,-8(%ebp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
	fabs
	fldt	_$DATEUTILS$_Ld5
	faddp	%st,%st(1)
	fldcw	-8(%ebp)
	fistpq	-16(%ebp)
	fldcw	-6(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_HOURSBETWEEN$TDATETIME$TDATETIME$$INT64
DATEUTILS_HOURSBETWEEN$TDATETIME$TDATETIME$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	fnstcw	-12(%ebp)
	fnstcw	-10(%ebp)
	orw	$3840,-12(%ebp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
	fabs
	fldt	_$DATEUTILS$_Ld5
	faddp	%st,%st(1)
	fldt	_$DATEUTILS$_Ld6
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
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_MINUTESBETWEEN$TDATETIME$TDATETIME$$INT64
DATEUTILS_MINUTESBETWEEN$TDATETIME$TDATETIME$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	fnstcw	-12(%ebp)
	fnstcw	-10(%ebp)
	orw	$3840,-12(%ebp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
	fabs
	fldt	_$DATEUTILS$_Ld5
	faddp	%st,%st(1)
	fldt	_$DATEUTILS$_Ld7
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
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_SECONDSBETWEEN$TDATETIME$TDATETIME$$INT64
DATEUTILS_SECONDSBETWEEN$TDATETIME$TDATETIME$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	fnstcw	-12(%ebp)
	fnstcw	-10(%ebp)
	orw	$3840,-12(%ebp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
	fabs
	fldt	_$DATEUTILS$_Ld5
	faddp	%st,%st(1)
	fldt	_$DATEUTILS$_Ld8
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
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_MILLISECONDSBETWEEN$TDATETIME$TDATETIME$$INT64
DATEUTILS_MILLISECONDSBETWEEN$TDATETIME$TDATETIME$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	fnstcw	-12(%ebp)
	fnstcw	-10(%ebp)
	orw	$3840,-12(%ebp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
	fabs
	fldt	_$DATEUTILS$_Ld5
	faddp	%st,%st(1)
	fldt	_$DATEUTILS$_Ld9
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
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_YEARSPAN$TDATETIME$TDATETIME$$DOUBLE
DATEUTILS_YEARSPAN$TDATETIME$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
	fabs
	fldl	TC_DATEUTILS_APPROXDAYSPERYEAR
	fdivrp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_MONTHSPAN$TDATETIME$TDATETIME$$DOUBLE
DATEUTILS_MONTHSPAN$TDATETIME$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
	fabs
	fldl	TC_DATEUTILS_APPROXDAYSPERMONTH
	fdivrp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_WEEKSPAN$TDATETIME$TDATETIME$$DOUBLE
DATEUTILS_WEEKSPAN$TDATETIME$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
	fabs
	fldt	_$DATEUTILS$_Ld10
	fdivrp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_DAYSPAN$TDATETIME$TDATETIME$$DOUBLE
DATEUTILS_DAYSPAN$TDATETIME$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
	fabs
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_HOURSPAN$TDATETIME$TDATETIME$$DOUBLE
DATEUTILS_HOURSPAN$TDATETIME$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
	fabs
	fldt	_$DATEUTILS$_Ld6
	fmulp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_MINUTESPAN$TDATETIME$TDATETIME$$DOUBLE
DATEUTILS_MINUTESPAN$TDATETIME$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
	fabs
	fldt	_$DATEUTILS$_Ld7
	fmulp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_SECONDSPAN$TDATETIME$TDATETIME$$DOUBLE
DATEUTILS_SECONDSPAN$TDATETIME$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
	fabs
	fldt	_$DATEUTILS$_Ld8
	fmulp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_MILLISECONDSPAN$TDATETIME$TDATETIME$$DOUBLE
DATEUTILS_MILLISECONDSPAN$TDATETIME$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
	fabs
	fldt	_$DATEUTILS$_Ld9
	fmulp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$16

.text
	.balign 4,0x90
DATEUTILS_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
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
	movl	-4(%ebp),%eax
	fldl	_$DATEUTILS$_Ld3
	fldl	(%eax)
	fsubp	%st,%st(1)
	fstpl	(%edx)
	jmp	Lj1226
Lj1222:
	fldl	_$DATEUTILS$_Ld4
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1229
	jmp	Lj1228
Lj1229:
	movl	-4(%ebp),%eax
	fldl	_$DATEUTILS$_Ld4
	fldl	(%eax)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1227
	jmp	Lj1228
Lj1227:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	fldl	_$DATEUTILS$_Ld3
	fldl	(%edx)
	faddp	%st,%st(1)
	fstpl	(%eax)
Lj1228:
Lj1226:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_INCYEAR$TDATETIME$LONGINT$$TDATETIME
DATEUTILS_INCYEAR$TDATETIME$LONGINT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$26,%esp
	movl	%eax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-20(%ebp),%eax
	pushl	%eax
	leal	-22(%ebp),%eax
	pushl	%eax
	leal	-24(%ebp),%eax
	pushl	%eax
	leal	-26(%ebp),%eax
	pushl	%eax
	leal	-18(%ebp),%ecx
	leal	-16(%ebp),%edx
	leal	-14(%ebp),%eax
	call	DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
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
	call	SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
	testb	%al,%al
	je	Lj1252
	jmp	Lj1253
Lj1252:
	movw	$28,-18(%ebp)
Lj1253:
	movzwl	-20(%ebp),%eax
	pushl	%eax
	movzwl	-22(%ebp),%eax
	pushl	%eax
	movzwl	-24(%ebp),%eax
	pushl	%eax
	movzwl	-26(%ebp),%eax
	pushl	%eax
	movw	-18(%ebp),%cx
	movw	-16(%ebp),%dx
	movw	-14(%ebp),%ax
	call	DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_INCYEAR$TDATETIME$$TDATETIME
DATEUTILS_INCYEAR$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	$1,%eax
	call	DATEUTILS_INCYEAR$TDATETIME$LONGINT$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_INCWEEK$TDATETIME$LONGINT$$TDATETIME
DATEUTILS_INCWEEK$TDATETIME$LONGINT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	imull	$7,%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	fldl	8(%ebp)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%eax
	call	DATEUTILS_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_INCWEEK$TDATETIME$$TDATETIME
DATEUTILS_INCWEEK$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	$1,%eax
	call	DATEUTILS_INCWEEK$TDATETIME$LONGINT$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_INCDAY$TDATETIME$LONGINT$$TDATETIME
DATEUTILS_INCDAY$TDATETIME$LONGINT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	fildl	-4(%ebp)
	fldl	8(%ebp)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%eax
	call	DATEUTILS_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_INCDAY$TDATETIME$$TDATETIME
DATEUTILS_INCDAY$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	$1,%eax
	call	DATEUTILS_INCDAY$TDATETIME$LONGINT$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_INCHOUR$TDATETIME$INT64$$TDATETIME
DATEUTILS_INCHOUR$TDATETIME$INT64$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	fildq	8(%ebp)
	fldt	_$DATEUTILS$_Ld6
	fdivrp	%st,%st(1)
	fldl	16(%ebp)
	faddp	%st,%st(1)
	fstpl	-8(%ebp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%eax
	call	DATEUTILS_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME
	fldl	-8(%ebp)
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_INCHOUR$TDATETIME$$TDATETIME
DATEUTILS_INCHOUR$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	pushl	$0
	pushl	$1
	call	DATEUTILS_INCHOUR$TDATETIME$INT64$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_INCMINUTE$TDATETIME$INT64$$TDATETIME
DATEUTILS_INCMINUTE$TDATETIME$INT64$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	fildq	8(%ebp)
	fldt	_$DATEUTILS$_Ld7
	fdivrp	%st,%st(1)
	fldl	16(%ebp)
	faddp	%st,%st(1)
	fstpl	-8(%ebp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%eax
	call	DATEUTILS_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME
	fldl	-8(%ebp)
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_INCMINUTE$TDATETIME$$TDATETIME
DATEUTILS_INCMINUTE$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	pushl	$0
	pushl	$1
	call	DATEUTILS_INCMINUTE$TDATETIME$INT64$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_INCSECOND$TDATETIME$INT64$$TDATETIME
DATEUTILS_INCSECOND$TDATETIME$INT64$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	fildq	8(%ebp)
	fldt	_$DATEUTILS$_Ld8
	fdivrp	%st,%st(1)
	fldl	16(%ebp)
	faddp	%st,%st(1)
	fstpl	-8(%ebp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%eax
	call	DATEUTILS_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME
	fldl	-8(%ebp)
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_INCSECOND$TDATETIME$$TDATETIME
DATEUTILS_INCSECOND$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	pushl	$0
	pushl	$1
	call	DATEUTILS_INCSECOND$TDATETIME$INT64$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_INCMILLISECOND$TDATETIME$INT64$$TDATETIME
DATEUTILS_INCMILLISECOND$TDATETIME$INT64$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	fildq	8(%ebp)
	fldt	_$DATEUTILS$_Ld9
	fdivrp	%st,%st(1)
	fldl	16(%ebp)
	faddp	%st,%st(1)
	fstpl	-8(%ebp)
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%eax
	call	DATEUTILS_MAYBESKIPTIMEWARP$TDATETIME$TDATETIME
	fldl	-8(%ebp)
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_INCMILLISECOND$TDATETIME$$TDATETIME
DATEUTILS_INCMILLISECOND$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	pushl	$0
	pushl	$1
	call	DATEUTILS_INCMILLISECOND$TDATETIME$INT64$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	20(%ebp),%eax
	pushl	%eax
	movzwl	16(%ebp),%eax
	pushl	%eax
	movzwl	12(%ebp),%eax
	pushl	%eax
	movzwl	8(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	pushl	%eax
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_TRYENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	testb	%al,%al
	je	Lj1382
	jmp	Lj1383
Lj1382:
	movzwl	20(%ebp),%eax
	pushl	%eax
	movzwl	16(%ebp),%eax
	pushl	%eax
	movzwl	12(%ebp),%eax
	pushl	%eax
	movzwl	8(%ebp),%eax
	pushl	%eax
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD
Lj1383:
	fldl	-20(%ebp)
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	subl	$8,%esp
	movl	24(%ebp),%eax
	movl	%eax,(%esp)
	movl	28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	pushl	%eax
	movl	12(%ebp),%ecx
	movl	16(%ebp),%edx
	movl	20(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
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
	subl	$8,%esp
	fstpl	(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	jmp	Lj1438
Lj1427:
	subl	$8,%esp
	movl	24(%ebp),%eax
	movl	%eax,(%esp)
	movl	28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
Lj1438:
	leave
	ret	$24

.text
	.balign 4,0x90
.globl	DATEUTILS_TRYENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
DATEUTILS_TRYENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	SYSUTILS_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj1461
	jmp	Lj1460
Lj1461:
	movzwl	12(%ebp),%eax
	pushl	%eax
	leal	-24(%ebp),%eax
	pushl	%eax
	movw	16(%ebp),%cx
	movw	20(%ebp),%dx
	movw	24(%ebp),%ax
	call	SYSUTILS_TRYENCODETIME$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
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
	movl	8(%ebp),%eax
	subl	$8,%esp
	movl	(%eax),%edx
	movl	%edx,(%esp)
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	call	SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
	movl	8(%ebp),%eax
	fstpl	(%eax)
Lj1474:
	movb	-13(%ebp),%al
	leave
	ret	$20

.text
	.balign 4,0x90
.globl	DATEUTILS_ENCODEDATEWEEK$WORD$WORD$WORD$$TDATETIME
DATEUTILS_ENCODEDATEWEEK$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	-12(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%ecx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_TRYENCODEDATEWEEK$WORD$WORD$TDATETIME$WORD$$BOOLEAN
	testb	%al,%al
	je	Lj1483
	jmp	Lj1484
Lj1483:
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_INVALIDDATEWEEKERROR$WORD$WORD$WORD
Lj1484:
	fldl	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_ENCODEDATEWEEK$WORD$WORD$$TDATETIME
DATEUTILS_ENCODEDATEWEEK$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	movw	$1,%cx
	call	DATEUTILS_ENCODEDATEWEEK$WORD$WORD$WORD$$TDATETIME
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_DECODEDATEWEEK$TDATETIME$WORD$WORD$WORD
DATEUTILS_DECODEDATEWEEK$TDATETIME$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$44,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_YEAROF$TDATETIME$$WORD
	movl	-4(%ebp),%edx
	movw	%ax,(%edx)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	SYSUTILS_DAYOFWEEK$TDATETIME$$LONGINT
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
	call	DATEUTILS_STARTOFAYEAR$WORD$$TDATETIME
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
	subl	$8,%esp
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD
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
	subl	$8,%esp
	fstpl	(%esp)
	leal	-18(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	DATEUTILS_DECODEDATEWEEK$TDATETIME$WORD$WORD$WORD
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
	call	SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_TRYENCODEDATEWEEK$WORD$WORD$TDATETIME$WORD$$BOOLEAN
DATEUTILS_TRYENCODEDATEWEEK$WORD$WORD$TDATETIME$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movw	8(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_ISVALIDDATEWEEK$WORD$WORD$WORD$$BOOLEAN
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj1578
	jmp	Lj1579
Lj1578:
	movw	-4(%ebp),%ax
	movw	$1,%cx
	movw	$1,%dx
	call	SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
	movzwl	-8(%ebp),%eax
	decl	%eax
	imull	$7,%eax
	movl	%eax,-24(%ebp)
	fildl	-24(%ebp)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	movl	-12(%ebp),%eax
	subl	$8,%esp
	movl	(%eax),%edx
	movl	%edx,(%esp)
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD
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
	ret	$4

.text
	.balign 4,0x90
.globl	DATEUTILS_TRYENCODEDATEWEEK$WORD$WORD$TDATETIME$$BOOLEAN
DATEUTILS_TRYENCODEDATEWEEK$WORD$WORD$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	$1
	movl	-12(%ebp),%ecx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_TRYENCODEDATEWEEK$WORD$WORD$TDATETIME$WORD$$BOOLEAN
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_ENCODEDATEDAY$WORD$WORD$$TDATETIME
DATEUTILS_ENCODEDATEDAY$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	leal	-16(%ebp),%ecx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_TRYENCODEDATEDAY$WORD$WORD$TDATETIME$$BOOLEAN
	testb	%al,%al
	je	Lj1612
	jmp	Lj1613
Lj1612:
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_INVALIDDATEDAYERROR$WORD$WORD
Lj1613:
	fldl	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_DECODEDATEDAY$TDATETIME$WORD$WORD
DATEUTILS_DECODEDATEDAY$TDATETIME$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%ecx
	leal	-10(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	fnstcw	-16(%ebp)
	fnstcw	-14(%ebp)
	orw	$3840,-16(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$1,%cx
	movw	$1,%dx
	call	SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_TRYENCODEDATEDAY$WORD$WORD$TDATETIME$$BOOLEAN
DATEUTILS_TRYENCODEDATEDAY$WORD$WORD$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1646
	jmp	Lj1645
Lj1646:
	movw	-4(%ebp),%ax
	call	SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
	movzbl	%al,%eax
	movw	-8(%ebp),%dx
	cmpw	TC_DATEUTILS_DAYSPERYEAR(,%eax,2),%dx
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
	call	SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
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
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_ENCODEDATEMONTHWEEK$WORD$WORD$WORD$WORD$$TDATETIME
DATEUTILS_ENCODEDATEMONTHWEEK$WORD$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	8(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	pushl	%eax
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_TRYENCODEDATEMONTHWEEK$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	testb	%al,%al
	je	Lj1662
	jmp	Lj1663
Lj1662:
	movzwl	8(%ebp),%eax
	pushl	%eax
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_INVALIDDATEMONTHWEEKERROR$WORD$WORD$WORD$WORD
Lj1663:
	fldl	-20(%ebp)
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DATEUTILS_DECODEDATEMONTHWEEK$TDATETIME$WORD$WORD$WORD$WORD
DATEUTILS_DECODEDATEMONTHWEEK$TDATETIME$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	subl	$8,%esp
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-14(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	subl	$8,%esp
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD
	movl	8(%ebp),%edx
	movw	%ax,(%edx)
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	$1,%cx
	call	SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
	fstpl	-28(%ebp)
	subl	$8,%esp
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD
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
	fld1
	fldl	-28(%ebp)
	fsubp	%st,%st(1)
	subl	$8,%esp
	fstpl	(%esp)
	leal	-14(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	DATEUTILS_DECODEDATEMONTHWEEK$TDATETIME$WORD$WORD$WORD$WORD
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
	call	DATEUTILS_ENDOFAMONTH$WORD$WORD$$TDATETIME
	subl	$8,%esp
	fstpl	(%esp)
	call	DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD
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
	call	DATEUTILS_DAYSINAMONTH$WORD$WORD$$WORD
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
	ret	$12

.text
	.balign 4,0x90
.globl	DATEUTILS_TRYENCODEDATEMONTHWEEK$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
DATEUTILS_TRYENCODEDATEMONTHWEEK$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	12(%ebp),%eax
	pushl	%eax
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_ISVALIDDATEMONTHWEEK$WORD$WORD$WORD$WORD$$BOOLEAN
	movb	%al,-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj1762
	jmp	Lj1763
Lj1762:
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	movw	$1,%cx
	call	SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
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
	subl	$8,%esp
	movl	(%edx),%eax
	movl	%eax,(%esp)
	movl	4(%edx),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_TRYENCODETIMEINTERVAL$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
DATEUTILS_TRYENCODETIMEINTERVAL$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
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
	movl	%eax,-28(%ebp)
	movl	$0,-24(%ebp)
	fildq	-28(%ebp)
	fldl	_$DATEUTILS$_Ld11
	fdivrp	%st,%st(1)
	movl	8(%ebp),%eax
	fstpl	(%eax)
Lj1791:
	movb	-13(%ebp),%al
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_ENCODETIMEINTERVAL$WORD$WORD$WORD$WORD$$TDATETIME
DATEUTILS_ENCODETIMEINTERVAL$WORD$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	8(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	pushl	%eax
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_TRYENCODETIMEINTERVAL$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	testb	%al,%al
	je	Lj1796
	jmp	Lj1797
Lj1796:
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
	pushl	%eax
	pushl	$3
	movl	RESSTR_SYSCONST_SERRINVALIDHOURMINUTESECMSEC+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La3:
	movl	%ebp,%ecx
	movl	$La3,%edx
	call	FPC_RAISEEXCEPTION
Lj1797:
	fldl	-20(%ebp)
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DATEUTILS_RECODEYEAR$TDATETIME$WORD$$TDATETIME
DATEUTILS_RECODEYEAR$TDATETIME$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	%ax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	pushl	$65535
	pushl	$65535
	pushl	$65535
	pushl	$65535
	movw	-4(%ebp),%ax
	movw	$65535,%cx
	movw	$65535,%dx
	call	DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_RECODEMONTH$TDATETIME$WORD$$TDATETIME
DATEUTILS_RECODEMONTH$TDATETIME$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	%ax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	pushl	$65535
	pushl	$65535
	pushl	$65535
	pushl	$65535
	movw	-4(%ebp),%dx
	movw	$65535,%cx
	movw	$65535,%ax
	call	DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_RECODEDAY$TDATETIME$WORD$$TDATETIME
DATEUTILS_RECODEDAY$TDATETIME$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	%ax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	pushl	$65535
	pushl	$65535
	pushl	$65535
	pushl	$65535
	movw	-4(%ebp),%cx
	movw	$65535,%dx
	movw	$65535,%ax
	call	DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_RECODEHOUR$TDATETIME$WORD$$TDATETIME
DATEUTILS_RECODEHOUR$TDATETIME$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	%ax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movzwl	-4(%ebp),%eax
	pushl	%eax
	pushl	$65535
	pushl	$65535
	pushl	$65535
	movw	$65535,%cx
	movw	$65535,%dx
	movw	$65535,%ax
	call	DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_RECODEMINUTE$TDATETIME$WORD$$TDATETIME
DATEUTILS_RECODEMINUTE$TDATETIME$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	%ax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	pushl	$65535
	movzwl	-4(%ebp),%eax
	pushl	%eax
	pushl	$65535
	pushl	$65535
	movw	$65535,%cx
	movw	$65535,%dx
	movw	$65535,%ax
	call	DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_RECODESECOND$TDATETIME$WORD$$TDATETIME
DATEUTILS_RECODESECOND$TDATETIME$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	%ax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	pushl	$65535
	pushl	$65535
	movzwl	-4(%ebp),%eax
	pushl	%eax
	pushl	$65535
	movw	$65535,%cx
	movw	$65535,%dx
	movw	$65535,%ax
	call	DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_RECODEMILLISECOND$TDATETIME$WORD$$TDATETIME
DATEUTILS_RECODEMILLISECOND$TDATETIME$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	%ax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	pushl	$65535
	pushl	$65535
	pushl	$65535
	movzwl	-4(%ebp),%eax
	pushl	%eax
	movw	$65535,%cx
	movw	$65535,%dx
	movw	$65535,%ax
	call	DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_RECODEDATE$TDATETIME$WORD$WORD$WORD$$TDATETIME
DATEUTILS_RECODEDATE$TDATETIME$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	pushl	$65535
	pushl	$65535
	pushl	$65535
	pushl	$65535
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_RECODETIME$TDATETIME$WORD$WORD$WORD$WORD$$TDATETIME
DATEUTILS_RECODETIME$TDATETIME$WORD$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	subl	$8,%esp
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	movzwl	-4(%ebp),%eax
	pushl	%eax
	movzwl	-8(%ebp),%eax
	pushl	%eax
	movzwl	-12(%ebp),%eax
	pushl	%eax
	movzwl	8(%ebp),%eax
	pushl	%eax
	movw	$65535,%cx
	movw	$65535,%dx
	movw	$65535,%ax
	call	DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
DATEUTILS_RECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	subl	$8,%esp
	movl	24(%ebp),%eax
	movl	%eax,(%esp)
	movl	28(%ebp),%eax
	movl	%eax,4(%esp)
	movzwl	20(%ebp),%eax
	pushl	%eax
	movzwl	16(%ebp),%eax
	pushl	%eax
	movzwl	12(%ebp),%eax
	pushl	%eax
	movzwl	8(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	pushl	%eax
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_TRYRECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	testb	%al,%al
	je	Lj2000
	jmp	Lj2001
Lj2000:
	movzwl	20(%ebp),%eax
	pushl	%eax
	movzwl	16(%ebp),%eax
	pushl	%eax
	movzwl	12(%ebp),%eax
	pushl	%eax
	movzwl	8(%ebp),%eax
	pushl	%eax
	subl	$8,%esp
	movl	24(%ebp),%eax
	movl	%eax,(%esp)
	movl	28(%ebp),%eax
	movl	%eax,4(%esp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME
Lj2001:
	fldl	-20(%ebp)
	leave
	ret	$24

.text
	.balign 4,0x90
.globl	DATEUTILS_TRYRECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
DATEUTILS_TRYRECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	subl	$8,%esp
	movl	28(%ebp),%eax
	movl	%eax,(%esp)
	movl	32(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-22(%ebp),%eax
	pushl	%eax
	leal	-24(%ebp),%eax
	pushl	%eax
	leal	-26(%ebp),%eax
	pushl	%eax
	leal	-28(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%ecx
	leal	-18(%ebp),%edx
	leal	-16(%ebp),%eax
	call	DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
	movw	-4(%ebp),%cx
	leal	-16(%ebp),%edx
	movl	%ebp,%eax
	call	DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD
	movw	-8(%ebp),%cx
	leal	-18(%ebp),%edx
	movl	%ebp,%eax
	call	DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD
	movw	-12(%ebp),%cx
	leal	-20(%ebp),%edx
	movl	%ebp,%eax
	call	DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD
	movw	24(%ebp),%cx
	leal	-22(%ebp),%edx
	movl	%ebp,%eax
	call	DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD
	movw	20(%ebp),%cx
	leal	-24(%ebp),%edx
	movl	%ebp,%eax
	call	DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD
	movw	16(%ebp),%cx
	leal	-26(%ebp),%edx
	movl	%ebp,%eax
	call	DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD
	movw	12(%ebp),%cx
	leal	-28(%ebp),%edx
	movl	%ebp,%eax
	call	DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD
	movzwl	-22(%ebp),%eax
	pushl	%eax
	movzwl	-24(%ebp),%eax
	pushl	%eax
	movzwl	-26(%ebp),%eax
	pushl	%eax
	movzwl	-28(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	%eax
	movw	-20(%ebp),%cx
	movw	-18(%ebp),%dx
	movw	-16(%ebp),%ax
	call	DATEUTILS_TRYENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret	$28

.text
	.balign 4,0x90
DATEUTILS_TRYRECODEDATETIME$crcBD09BD93_FV$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
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
	.balign 4,0x90
.globl	DATEUTILS_COMPAREDATETIME$TDATETIME$TDATETIME$$TVALUERELATIONSHIP
DATEUTILS_COMPAREDATETIME$TDATETIME$TDATETIME$$TVALUERELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_SAMEDATETIME$TDATETIME$TDATETIME$$BOOLEAN
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
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_COMPAREDATE$TDATETIME$TDATETIME$$TVALUERELATIONSHIP
DATEUTILS_COMPAREDATE$TDATETIME$TDATETIME$$TVALUERELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_SAMEDATE$TDATETIME$TDATETIME$$BOOLEAN
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
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_COMPARETIME$TDATETIME$TDATETIME$$TVALUERELATIONSHIP
DATEUTILS_COMPARETIME$TDATETIME$TDATETIME$$TVALUERELATIONSHIP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_SAMETIME$TDATETIME$TDATETIME$$BOOLEAN
	testb	%al,%al
	jne	Lj2158
	jmp	Lj2159
Lj2158:
	movb	$0,-1(%ebp)
	jmp	Lj2166
Lj2159:
	fldl	16(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	call	fpc_frac_real
	fstpt	-16(%ebp)
	fldl	8(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	call	fpc_frac_real
	fldt	-16(%ebp)
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
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_SAMEDATETIME$TDATETIME$TDATETIME$$BOOLEAN
DATEUTILS_SAMEDATETIME$TDATETIME$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	fldl	8(%ebp)
	fldl	16(%ebp)
	fsubp	%st,%st(1)
	fabs
	fldt	_$DATEUTILS$_Ld12
	fcompp
	fnstsw	%ax
	sahf
	setab	-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_SAMEDATE$TDATETIME$TDATETIME$$BOOLEAN
DATEUTILS_SAMEDATE$TDATETIME$TDATETIME$$BOOLEAN:
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
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jne	Lj2185
	cmpl	-24(%ebp),%edx
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
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_SAMETIME$TDATETIME$TDATETIME$$BOOLEAN
DATEUTILS_SAMETIME$TDATETIME$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	fldl	8(%ebp)
	fldl	16(%ebp)
	fsubp	%st,%st(1)
	fabs
	subl	$12,%esp
	fstpt	(%esp)
	call	fpc_frac_real
	fldt	_$DATEUTILS$_Ld12
	fcompp
	fnstsw	%ax
	sahf
	setab	-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret	$16

.text
	.balign 4,0x90
DATEUTILS_INTERNALNTHDAYOFWEEK$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
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
	.balign 4,0x90
.globl	DATEUTILS_NTHDAYOFWEEK$TDATETIME$$WORD
DATEUTILS_NTHDAYOFWEEK$TDATETIME$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DAYOFTHEMONTH$TDATETIME$$WORD
	call	DATEUTILS_INTERNALNTHDAYOFWEEK$WORD$$WORD
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_DECODEDAYOFWEEKINMONTH$TDATETIME$WORD$WORD$WORD$WORD
DATEUTILS_DECODEDAYOFWEEKINMONTH$TDATETIME$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$14,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	subl	$8,%esp
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-14(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	subl	$8,%esp
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD
	movl	8(%ebp),%edx
	movw	%ax,(%edx)
	movw	-14(%ebp),%ax
	call	DATEUTILS_INTERNALNTHDAYOFWEEK$WORD$$WORD
	movl	-12(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	DATEUTILS_ENCODEDAYOFWEEKINMONTH$WORD$WORD$WORD$WORD$$TDATETIME
DATEUTILS_ENCODEDAYOFWEEKINMONTH$WORD$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	8(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	pushl	%eax
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_TRYENCODEDAYOFWEEKINMONTH$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	testb	%al,%al
	je	Lj2225
	jmp	Lj2226
Lj2225:
	movzwl	8(%ebp),%eax
	pushl	%eax
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_INVALIDDAYOFWEEKINMONTHERROR$WORD$WORD$WORD$WORD
Lj2226:
	fldl	-20(%ebp)
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DATEUTILS_TRYENCODEDAYOFWEEKINMONTH$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
DATEUTILS_TRYENCODEDAYOFWEEKINMONTH$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$18,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	movw	$1,%cx
	call	SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
	subl	$8,%esp
	fstpl	(%esp)
	call	DATEUTILS_DAYOFTHEWEEK$TDATETIME$$WORD
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
	pushl	%eax
	movw	-18(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	SYSUTILS_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME
DATEUTILS_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$92,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-92(%ebp)
	movl	$0,-76(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2277
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-20(%ebp),%eax
	pushl	%eax
	leal	-22(%ebp),%eax
	pushl	%eax
	leal	-24(%ebp),%eax
	pushl	%eax
	leal	-26(%ebp),%eax
	pushl	%eax
	leal	-18(%ebp),%ecx
	leal	-16(%ebp),%edx
	leal	-14(%ebp),%eax
	call	DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	movl	$_$DATEUTILS$_Ld13,%eax
	pushl	%eax
	leal	-76(%ebp),%eax
	pushl	%eax
	movw	-14(%ebp),%cx
	movw	-4(%ebp),%dx
	movl	%ebp,%eax
	call	DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING
	movl	-76(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-32(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-76(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-88(%ebp)
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movb	TC_SYSUTILS_DEFAULTFORMATSETTINGS+5,%al
	call	fpc_char_to_ansistr
	movl	-76(%ebp),%eax
	movl	%eax,-84(%ebp)
	leal	-92(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-92(%ebp)
	movl	$_$DATEUTILS$_Ld14,%eax
	pushl	%eax
	leal	-92(%ebp),%eax
	pushl	%eax
	movw	-16(%ebp),%cx
	movw	-8(%ebp),%dx
	movl	%ebp,%eax
	call	DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING
	movl	-92(%ebp),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	leal	-32(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	movl	-32(%ebp),%eax
	movl	%eax,-88(%ebp)
	leal	-92(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%edx
	movb	TC_SYSUTILS_DEFAULTFORMATSETTINGS+5,%al
	call	fpc_char_to_ansistr
	movl	-92(%ebp),%eax
	movl	%eax,-84(%ebp)
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	movl	$_$DATEUTILS$_Ld14,%eax
	pushl	%eax
	leal	-76(%ebp),%eax
	pushl	%eax
	movw	-18(%ebp),%cx
	movw	-12(%ebp),%dx
	movl	%ebp,%eax
	call	DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING
	movl	-76(%ebp),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	leal	-32(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	movl	-32(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	$_$DATEUTILS$_Ld15,%eax
	movl	%eax,-84(%ebp)
	leal	-92(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-92(%ebp)
	movl	$_$DATEUTILS$_Ld14,%eax
	pushl	%eax
	leal	-92(%ebp),%eax
	pushl	%eax
	movw	-20(%ebp),%cx
	movw	28(%ebp),%dx
	movl	%ebp,%eax
	call	DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING
	movl	-92(%ebp),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	leal	-32(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	movl	-32(%ebp),%eax
	movl	%eax,-88(%ebp)
	leal	-92(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%edx
	movb	TC_SYSUTILS_DEFAULTFORMATSETTINGS+6,%al
	call	fpc_char_to_ansistr
	movl	-92(%ebp),%eax
	movl	%eax,-84(%ebp)
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	movl	$_$DATEUTILS$_Ld14,%eax
	pushl	%eax
	leal	-76(%ebp),%eax
	pushl	%eax
	movw	-22(%ebp),%cx
	movw	24(%ebp),%dx
	movl	%ebp,%eax
	call	DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING
	movl	-76(%ebp),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	leal	-32(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	movl	-32(%ebp),%eax
	movl	%eax,-88(%ebp)
	leal	-92(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%edx
	movb	TC_SYSUTILS_DEFAULTFORMATSETTINGS+6,%al
	call	fpc_char_to_ansistr
	movl	-92(%ebp),%eax
	movl	%eax,-84(%ebp)
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	movl	$_$DATEUTILS$_Ld14,%eax
	pushl	%eax
	leal	-76(%ebp),%eax
	pushl	%eax
	movw	-24(%ebp),%cx
	movw	20(%ebp),%dx
	movl	%ebp,%eax
	call	DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING
	movl	-76(%ebp),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	leal	-32(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	movl	-32(%ebp),%eax
	movl	%eax,-88(%ebp)
	leal	-92(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%edx
	movb	TC_SYSUTILS_DEFAULTFORMATSETTINGS+3,%al
	call	fpc_char_to_ansistr
	movl	-92(%ebp),%eax
	movl	%eax,-84(%ebp)
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	movl	$_$DATEUTILS$_Ld16,%eax
	pushl	%eax
	leal	-76(%ebp),%eax
	pushl	%eax
	movw	-26(%ebp),%cx
	movw	16(%ebp),%dx
	movl	%ebp,%eax
	call	DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING
	movl	-76(%ebp),%eax
	movl	%eax,-80(%ebp)
	leal	-88(%ebp),%edx
	leal	-32(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	movl	-32(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	$11,-84(%ebp)
	leal	-84(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SERRINVALIDTIMESTAMP+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La4:
	movl	%ebp,%ecx
	movl	$La4,%edx
	call	FPC_RAISEEXCEPTION
Lj2277:
	call	FPC_POPADDRSTACK
	leal	-92(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-92(%ebp)
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	leal	-32(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-32(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj2278
	call	FPC_RERAISE
Lj2278:
	leave
	ret	$24

.text
	.balign 4,0x90
DATEUTILS_INVALIDDATETIMEERROR$crcCEFF9ACC_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-12(%ebp)
	movw	%dx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movl	12(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2440
	movw	-4(%ebp),%ax
	cmpw	$65535,%ax
	jne	Lj2443
	jmp	Lj2444
Lj2443:
	movl	8(%ebp),%eax
	pushl	%eax
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
	movl	$_$DATEUTILS$_Ld17,%eax
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
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
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	12(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj2459
Lj2456:
	movl	8(%ebp),%eax
	pushl	%eax
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
	movl	$_$DATEUTILS$_Ld17,%eax
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
Lj2459:
Lj2454:
Lj2440:
	call	FPC_POPADDRSTACK
	leal	12(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj2441
	call	FPC_RERAISE
Lj2441:
	movl	-72(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD
DATEUTILS_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	20(%ebp),%eax
	pushl	%eax
	movzwl	16(%ebp),%eax
	pushl	%eax
	movzwl	12(%ebp),%eax
	pushl	%eax
	movzwl	8(%ebp),%eax
	pushl	%eax
	fldz
	subl	$8,%esp
	fstpl	(%esp)
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	DATEUTILS_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	DATEUTILS_INVALIDDATEWEEKERROR$WORD$WORD$WORD
DATEUTILS_INVALIDDATEWEEKERROR$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
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
	pushl	%eax
	pushl	$2
	movl	RESSTR_SYSCONST_SERRINVALIDDATEWEEK+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La5:
	movl	%ebp,%ecx
	movl	$La5,%edx
	call	FPC_RAISEEXCEPTION
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_INVALIDDATEDAYERROR$WORD$WORD
DATEUTILS_INVALIDDATEDAYERROR$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movzwl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$0,-24(%ebp)
	movzwl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-24(%ebp),%eax
	pushl	%eax
	pushl	$1
	movl	RESSTR_SYSCONST_SERRINVALIDDAYOFYEAR+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La6:
	movl	%ebp,%ecx
	movl	$La6,%edx
	call	FPC_RAISEEXCEPTION
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_INVALIDDATEMONTHWEEKERROR$WORD$WORD$WORD$WORD
DATEUTILS_INVALIDDATEMONTHWEEKERROR$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$44,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
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
	pushl	%eax
	pushl	$3
	movl	RESSTR_SYSCONST_SERRINVALIDDATEMONTHWEEK+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La7:
	movl	%ebp,%ecx
	movl	$La7,%edx
	call	FPC_RAISEEXCEPTION
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DATEUTILS_INVALIDDAYOFWEEKINMONTHERROR$WORD$WORD$WORD$WORD
DATEUTILS_INVALIDDAYOFWEEKINMONTHERROR$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$44,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
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
	pushl	%eax
	pushl	$3
	movl	RESSTR_SYSCONST_SERRINVALIDDAYOFWEEKINMONTH+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La8:
	movl	%ebp,%ecx
	movl	$La8,%edx
	call	FPC_RAISEEXCEPTION
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DATEUTILS_DATETIMETOJULIANDATE$TDATETIME$$DOUBLE
DATEUTILS_DATETIMETOJULIANDATE$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movl	%ebx,-36(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-10(%ebp),%ecx
	leal	-12(%ebp),%edx
	leal	-14(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
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
	movzwl	-14(%ebp),%eax
	addl	$4800,%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	imull	$12,%eax
	movzwl	-12(%ebp),%edx
	addl	%edx,%eax
	subl	$3,%eax
	movl	%eax,-28(%ebp)
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
	movl	-24(%ebp),%ebx
	movl	$1374389535,%eax
	imull	%ebx
	movl	%ebx,%eax
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	subl	%edx,%ecx
	movl	-24(%ebp),%ebx
	movl	$1374389535,%eax
	imull	%ebx
	movl	%ebx,%eax
	sarl	$7,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	addl	%edx,%ecx
	subl	$32045,%ecx
	movl	%ecx,-32(%ebp)
	fildl	-32(%ebp)
	fstpl	-8(%ebp)
	fldl	_$DATEUTILS$_Ld3
	fldl	-8(%ebp)
	fsubp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	movl	-36(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_JULIANDATETODATETIME$DOUBLE$$TDATETIME
DATEUTILS_JULIANDATETODATETIME$DOUBLE$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-8(%ebp),%eax
	call	DATEUTILS_TRYJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN
	testb	%al,%al
	je	Lj2557
	jmp	Lj2558
Lj2557:
	fldl	8(%ebp)
	fstpt	-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$3,-16(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SINVALIDJULIANDATE+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La9:
	movl	%ebp,%ecx
	movl	$La9,%edx
	call	FPC_RAISEEXCEPTION
Lj2558:
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_TRYJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN
DATEUTILS_TRYJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-4(%ebp)
	fnstcw	-42(%ebp)
	fnstcw	-40(%ebp)
	orw	$3840,-42(%ebp)
	fldl	_$DATEUTILS$_Ld18
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
	movl	-16(%ebp),%ebx
	imull	$100,%ebx
	movl	-24(%ebp),%eax
	addl	%eax,%ebx
	subl	$4800,%ebx
	movl	-32(%ebp),%ecx
	movl	$1717986919,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	addl	%edx,%ebx
	movw	%bx,-38(%ebp)
	movl	-4(%ebp),%eax
	pushl	%eax
	movw	-34(%ebp),%cx
	movw	-36(%ebp),%dx
	movw	-38(%ebp),%ax
	call	SYSUTILS_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	movl	-56(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_DATETIMETOMODIFIEDJULIANDATE$TDATETIME$$DOUBLE
DATEUTILS_DATETIMETOMODIFIEDJULIANDATE$TDATETIME$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DATETIMETOJULIANDATE$TDATETIME$$DOUBLE
	fldl	_$DATEUTILS$_Ld19
	fsubrp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_MODIFIEDJULIANDATETODATETIME$DOUBLE$$TDATETIME
DATEUTILS_MODIFIEDJULIANDATETODATETIME$DOUBLE$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	fldl	_$DATEUTILS$_Ld19
	fldl	8(%ebp)
	faddp	%st,%st(1)
	subl	$8,%esp
	fstpl	(%esp)
	call	DATEUTILS_JULIANDATETODATETIME$DOUBLE$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_TRYMODIFIEDJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN
DATEUTILS_TRYMODIFIEDJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	fldl	_$DATEUTILS$_Ld19
	fldl	8(%ebp)
	faddp	%st,%st(1)
	subl	$8,%esp
	fstpl	(%esp)
	movl	-4(%ebp),%eax
	call	DATEUTILS_TRYJULIANDATETODATETIME$DOUBLE$TDATETIME$$BOOLEAN
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_DATETIMETOUNIX$TDATETIME$$INT64
DATEUTILS_DATETIMETOUNIX$TDATETIME$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	_$DATEUTILS$_Ld20,%eax
	movl	%eax,(%esp)
	movl	_$DATEUTILS$_Ld20+4,%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_DATETIMEDIFF$TDATETIME$TDATETIME$$TDATETIME
	fldl	_$DATEUTILS$_Ld21
	fmulp	%st,%st(1)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_UNIXTODATETIME$INT64$$TDATETIME
DATEUTILS_UNIXTODATETIME$INT64$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	_$DATEUTILS$_Ld20,%eax
	movl	%eax,(%esp)
	movl	_$DATEUTILS$_Ld20+4,%eax
	movl	%eax,4(%esp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	DATEUTILS_INCSECOND$TDATETIME$INT64$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_UNIXTIMESTAMPTOMAC$INT64$$INT64
DATEUTILS_UNIXTIMESTAMPTOMAC$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	addl	$2082844800,%edx
	adcl	$0,%eax
	movl	%edx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_DATETIMETOMAC$TDATETIME$$INT64
DATEUTILS_DATETIMETOMAC$TDATETIME$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$0
	movw	$1,%cx
	movw	$1,%dx
	movw	$1904,%ax
	call	DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-16(%ebp)
	subl	$8,%esp
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	DATEUTILS_SECONDSBETWEEN$TDATETIME$TDATETIME$$INT64
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_MACTODATETIME$INT64$$TDATETIME
DATEUTILS_MACTODATETIME$INT64$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$0
	movw	$1,%cx
	movw	$1,%dx
	movw	$1904,%ax
	call	DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-16(%ebp)
	subl	$8,%esp
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	DATEUTILS_INCSECOND$TDATETIME$INT64$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_MACTIMESTAMPTOUNIX$INT64$$INT64
DATEUTILS_MACTIMESTAMPTOUNIX$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	subl	$2082844800,%edx
	sbbl	$0,%eax
	movl	%edx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_DATETIMETODOSDATETIME$TDATETIME$$LONGINT
DATEUTILS_DATETIMETODOSDATETIME$TDATETIME$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-14(%ebp),%eax
	pushl	%eax
	leal	-16(%ebp),%eax
	pushl	%eax
	leal	-18(%ebp),%eax
	pushl	%eax
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	DATEUTILS_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_DOSDATETIMETODATETIME$LONGINT$$TDATETIME
DATEUTILS_DOSDATETIMETODATETIME$LONGINT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
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
	movzwl	-28(%ebp),%eax
	pushl	%eax
	movzwl	-32(%ebp),%eax
	pushl	%eax
	movzwl	-36(%ebp),%eax
	pushl	%eax
	pushl	$0
	movw	-24(%ebp),%cx
	movw	-20(%ebp),%dx
	movw	-16(%ebp),%ax
	call	DATEUTILS_ENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
DATEUTILS_RAISEEXCEPTION$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La10:
	movl	%ebp,%ecx
	movl	$La10,%edx
	call	FPC_RAISEEXCEPTION
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_SCANDATETIME$ANSISTRING$ANSISTRING$TFORMATSETTINGS$LONGINT$$TDATETIME
DATEUTILS_SCANDATETIME$ANSISTRING$ANSISTRING$TFORMATSETTINGS$LONGINT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
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
	pushl	$0
	movl	-4(%ebp),%edx
	movl	-56(%ebp),%ecx
	movl	%ebp,%eax
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT
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
	call	SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
	fldl	-20(%ebp)
	faddp	%st,%st(1)
	fstpl	-20(%ebp)
Lj2834:
	fldl	-20(%ebp)
	leave
	ret	$4

.text
	.balign 4,0x90
DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$80,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2845
	movl	$0,-16(%ebp)
	movb	$32,-25(%ebp)
	jmp	Lj2853
	.balign 4,0x90
Lj2852:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	(%eax,%edx,1),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
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
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANPATLEN$$LONGINT
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj2868
	jmp	Lj2869
Lj2868:
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	incl	%eax
	movl	%eax,-76(%ebp)
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	RESSTR_SYSCONST_SHHMMERROR+4,%eax
	movl	$0,%ecx
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	movl	-72(%ebp),%eax
	call	DATEUTILS_RAISEEXCEPTION$ANSISTRING
Lj2869:
	movl	%ebp,%eax
	movl	$2,%edx
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT
	movl	%eax,-76(%ebp)
	fildl	-76(%ebp)
	fldt	_$DATEUTILS$_Ld25
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
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT
	movl	%eax,-76(%ebp)
	fildl	-76(%ebp)
	fldt	_$DATEUTILS$_Ld26
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fldl	-48(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	-48(%eax)
	jmp	Lj2887
Lj2890:
	movl	%ebp,%eax
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANPATLEN$$LONGINT
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
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT
	movl	-12(%ebp),%edx
	movl	%eax,-40(%edx)
	jmp	Lj2914
Lj2917:
	movl	-12(%ebp),%eax
	pushl	-8(%eax)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	leal	132(%eax),%edx
	movl	%ebp,%eax
	movl	$6,%ecx
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDMATCH$crcB1170B43
	movl	-12(%ebp),%edx
	movl	%eax,-40(%edx)
	jmp	Lj2914
Lj2918:
	movl	-12(%ebp),%eax
	pushl	-8(%eax)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	leal	160(%eax),%edx
	movl	%ebp,%eax
	movl	$6,%ecx
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDMATCH$crcB1170B43
	movl	-12(%ebp),%edx
	movl	%eax,-40(%edx)
	jmp	Lj2914
Lj2919:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	12(%eax),%edx
	movl	%ebp,%eax
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHPATTERN$ANSISTRING
	jmp	Lj2914
Lj2920:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	16(%eax),%edx
	movl	%ebp,%eax
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHPATTERN$ANSISTRING
	jmp	Lj2914
Lj2915:
Lj2914:
	jmp	Lj2887
Lj2891:
	movl	%ebp,%eax
	movl	$2,%edx
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT
	movl	%eax,-76(%ebp)
	fildl	-76(%ebp)
	fldt	_$DATEUTILS$_Ld25
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
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT
	movl	%eax,-76(%ebp)
	fildl	-76(%ebp)
	fldt	_$DATEUTILS$_Ld27
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
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT
	movl	%eax,-76(%ebp)
	fildl	-76(%ebp)
	fldt	_$DATEUTILS$_Ld12
	fmulp	%st,%st(1)
	movl	-12(%ebp),%eax
	fldl	-48(%eax)
	faddp	%st,%st(1)
	movl	-12(%ebp),%eax
	fstpl	-48(%eax)
	jmp	Lj2887
Lj2894:
	movl	%ebp,%eax
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANPATLEN$$LONGINT
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	%ebp,%eax
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT
	movl	-12(%ebp),%edx
	movl	%eax,-32(%edx)
	movl	-24(%ebp),%eax
	cmpl	$2,%eax
	jle	Lj2983
	jmp	Lj2984
Lj2983:
	call	SYSUTILS_NOW$$TDATETIME
	subl	$8,%esp
	fstpl	(%esp)
	call	DATEUTILS_YEAROF$TDATETIME$$WORD
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
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANPATLEN$$LONGINT
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
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT
	movl	-12(%ebp),%edx
	movl	%eax,-36(%edx)
	jmp	Lj2996
Lj2999:
	movl	-12(%ebp),%eax
	pushl	-8(%eax)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	leal	36(%eax),%edx
	movl	%ebp,%eax
	movl	$11,%ecx
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDMATCH$crcB1170B43
	movl	-12(%ebp),%edx
	movl	%eax,-36(%edx)
	jmp	Lj2996
Lj3000:
	movl	-12(%ebp),%eax
	pushl	-8(%eax)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	leal	84(%eax),%edx
	movl	%ebp,%eax
	movl	$11,%ecx
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDMATCH$crcB1170B43
	movl	-12(%ebp),%edx
	movl	%eax,-36(%edx)
	jmp	Lj2996
Lj2997:
Lj2996:
	jmp	Lj2887
Lj2896:
	movl	%ebp,%eax
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANPATLEN$$LONGINT
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
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHPATTERN$ANSISTRING
	jmp	Lj3031
Lj3034:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	32(%eax),%edx
	movl	%ebp,%eax
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHPATTERN$ANSISTRING
	jmp	Lj3031
Lj3032:
Lj3031:
	jmp	Lj2887
Lj2897:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	pushl	%eax
	movl	$TC_DATEUTILS_AMPMFORMATTING,%edx
	movl	%ebp,%eax
	movl	$2,%ecx
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDIMATCH$crc38040729
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
	pushl	%eax
	movl	$_$DATEUTILS$_Ld28,%eax
	movl	%eax,-80(%ebp)
	movl	$_$DATEUTILS$_Ld29,%eax
	movl	%eax,-76(%ebp)
	leal	-80(%ebp),%edx
	movl	%ebp,%eax
	movl	$1,%ecx
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDIMATCH$crc38040729
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
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	fldl	-48(%edx)
	fldt	_$DATEUTILS$_Ld30
	faddp	%st,%st(1)
	fstpl	-48(%eax)
	jmp	Lj3068
Lj3069:
	movl	%ebp,%eax
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_ARRAYMATCHERROR
Lj3068:
	movl	TC_DATEUTILS_AMPMFORMATTING,%eax
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
	call	SYSTEM_UPCASE$CHAR$$CHAR
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
	fldt	_$DATEUTILS$_Ld30
	faddp	%st,%st(1)
	fstpl	-48(%edx)
	jmp	Lj3077
Lj3078:
	movl	%ebp,%eax
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_ARRAYMATCHERROR
Lj3077:
	movl	TC_DATEUTILS_AMPMFORMATTING+4,%eax
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
	pushl	%eax
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
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDIMATCH$crc38040729
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
	fldt	_$DATEUTILS$_Ld30
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
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_ARRAYMATCHERROR
Lj3098:
	movl	TC_DATEUTILS_AMPMFORMATTING+8,%eax
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
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	(%eax,%edx,1),%dl
	movl	%ebp,%eax
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHCHAR$CHAR
Lj3053:
	jmp	Lj2887
Lj2898:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movb	5(%eax),%dl
	movl	%ebp,%eax
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHCHAR$CHAR
	jmp	Lj2887
Lj2899:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movb	6(%eax),%dl
	movl	%ebp,%eax
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHCHAR$CHAR
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
	pushl	%eax
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
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	addl	%eax,%edx
	pushl	%edx
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
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT
	incl	-16(%ebp)
	jmp	Lj2887
Lj2902:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	incl	-28(%eax)
	jmp	Lj2887
Lj2903:
	jmp	Lj3144
	.balign 4,0x90
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
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	(%eax,%edx,1),%dl
	movl	%ebp,%eax
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHCHAR$CHAR
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
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	(%eax,%edx,1),%dl
	movl	%ebp,%eax
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHCHAR$CHAR
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
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	incl	%eax
	movl	%eax,-76(%ebp)
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	RESSTR_SYSCONST_SFULLPATTERN+4,%eax
	movl	$0,%ecx
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	movl	-72(%ebp),%eax
	call	DATEUTILS_RAISEEXCEPTION$ANSISTRING
Lj3166:
Lj2845:
	call	FPC_POPADDRSTACK
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj2846
	call	FPC_RERAISE
Lj2846:
	leave
	ret	$4

.text
	.balign 4,0x90
DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHPATTERN$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
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
	pushl	%edx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT
Lj3183:
	leave
	ret

.text
	.balign 4,0x90
DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANPATLEN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
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
	.balign 4,0x90
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
	.balign 4,0x90
DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_MATCHCHAR$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$84,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
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
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%eax
	pushl	%eax
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
	movl	RESSTR_SYSCONST_SNOCHARMATCH+4,%eax
	movl	$3,%ecx
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	movl	-52(%ebp),%eax
	call	DATEUTILS_RAISEEXCEPTION$ANSISTRING
Lj3208:
	movl	-8(%ebp),%eax
	incl	-16(%eax)
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	incl	-28(%eax)
Lj3204:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj3205
	call	FPC_RERAISE
Lj3205:
	leave
	ret

.text
	.balign 4,0x90
DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_SCANFIXEDINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$80,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
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
	.balign 4,0x90
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
	.balign 4,0x90
Lj3233:
	movl	-12(%ebp),%ecx
	imull	$10,%ecx
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-28(%eax),%eax
	movzbl	-1(%edx,%eax,1),%eax
	addl	%eax,%ecx
	subl	$48,%ecx
	movl	%ecx,-12(%ebp)
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
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	pushl	%eax
	movzbl	-13(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$2,-80(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$0,-72(%ebp)
	leal	-80(%ebp),%edx
	movl	RESSTR_SYSCONST_SPATTERNCHARMISMATCH+4,%eax
	movl	$1,%ecx
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	movl	-64(%ebp),%eax
	call	DATEUTILS_RAISEEXCEPTION$ANSISTRING
Lj3242:
Lj3220:
	call	FPC_POPADDRSTACK
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj3221
	call	FPC_RERAISE
Lj3221:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDMATCH$crcB1170B43:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	-28(%eax),%eax
	leal	-1(%edx,%eax,1),%eax
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDIMATCH$crc38040729
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj3263
	jmp	Lj3264
Lj3263:
	movl	-12(%ebp),%eax
	call	DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_ARRAYMATCHERROR
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
	ret	$4

.text
	.balign 4,0x90
DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_ARRAYMATCHERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj3270
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%eax
	pushl	%eax
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
	movl	RESSTR_SYSCONST_SNOARRAYMATCH+4,%eax
	movl	$1,%ecx
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	movl	-48(%ebp),%eax
	call	DATEUTILS_RAISEEXCEPTION$ANSISTRING
Lj3270:
	call	FPC_POPADDRSTACK
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj3271
	call	FPC_RERAISE
Lj3271:
	leave
	ret

.text
	.balign 4,0x90
DATEUTILS_SCANDATETIME$crcAAE31AD5_INTSCANDATE$PCHAR$LONGINT$LONGINT_FINDIMATCH$crc38040729:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$-1,-16(%ebp)
	movl	$0,-20(%ebp)
	jmp	Lj3288
	.balign 4,0x90
Lj3287:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj3294
	movl	-4(%eax),%eax
Lj3294:
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	8(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+60,%ebx
	call	*%ebx
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
	movl	-32(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	DATEUTILS_SCANDATETIME$ANSISTRING$ANSISTRING$LONGINT$$TDATETIME
DATEUTILS_SCANDATETIME$ANSISTRING$ANSISTRING$LONGINT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	$1
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	DATEUTILS_SCANDATETIME$ANSISTRING$ANSISTRING$TFORMATSETTINGS$LONGINT$$TDATETIME
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	DATEUTILS_UNIVERSALTIMETOLOCAL$TDATETIME$$TDATETIME
DATEUTILS_UNIVERSALTIMETOLOCAL$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	SYSUTILS_GETLOCALTIMEOFFSET$$LONGINT
	call	DATEUTILS_UNIVERSALTIMETOLOCAL$TDATETIME$LONGINT$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_UNIVERSALTIMETOLOCAL$TDATETIME$LONGINT$$TDATETIME
DATEUTILS_UNIVERSALTIMETOLOCAL$TDATETIME$LONGINT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3330
	jmp	Lj3331
Lj3330:
	pushl	$0
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
	call	SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
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
	pushl	$0
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
	call	SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
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
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_LOCALTIMETOUNIVERSAL$TDATETIME$$TDATETIME
DATEUTILS_LOCALTIMETOUNIVERSAL$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	SYSUTILS_GETLOCALTIMEOFFSET$$LONGINT
	call	DATEUTILS_LOCALTIMETOUNIVERSAL$TDATETIME$LONGINT$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	DATEUTILS_LOCALTIMETOUNIVERSAL$TDATETIME$LONGINT$$TDATETIME
DATEUTILS_LOCALTIMETOUNIVERSAL$TDATETIME$LONGINT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3368
	jmp	Lj3369
Lj3368:
	pushl	$0
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
	call	SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
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
	pushl	$0
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
	call	SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
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
	ret	$8

.text
	.balign 4,0x90
.globl	INIT$_DATEUTILS
INIT$_DATEUTILS:
.globl	_DATEUTILS_init_implicit
_DATEUTILS_init_implicit:
	pushl	%ebp
	movl	%esp,%ebp
	leave
	ret

.text
	.balign 4,0x90
.globl	FINALIZE$_DATEUTILS
FINALIZE$_DATEUTILS:
.globl	_DATEUTILS_finalize_implicit
_DATEUTILS_finalize_implicit:
	pushl	%ebp
	movl	%esp,%ebp
	movl	$INIT_DATEUTILS_DEF418,%edx
	movl	$TC_DATEUTILS_AMPMFORMATTING,%eax
	call	fpc_finalize
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_DATEUTILS
THREADVARLIST_DATEUTILS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.balign 4
	.short	0,1
	.long	-1,5
.globl	_$DATEUTILS$_Ld22
_$DATEUTILS$_Ld22:
	.ascii	"am/pm\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$DATEUTILS$_Ld23
_$DATEUTILS$_Ld23:
	.ascii	"a/p\000"

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$DATEUTILS$_Ld24
_$DATEUTILS$_Ld24:
	.ascii	"ampm\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 2
.globl	TC_DATEUTILS_DAYSPERYEAR
TC_DATEUTILS_DAYSPERYEAR:
	.short	365,366

.data
	.balign 4
.globl	TC_DATEUTILS_APPROXDAYSPERMONTH
TC_DATEUTILS_APPROXDAYSPERMONTH:
	.byte	0,0,0,0,0,112,62,64

.data
	.balign 4
.globl	TC_DATEUTILS_APPROXDAYSPERYEAR
TC_DATEUTILS_APPROXDAYSPERYEAR:
	.byte	0,0,0,0,0,212,118,64

.data
	.balign 4
	.short	0,1
	.long	-1,48
.globl	_$DATEUTILS$_Ld1
_$DATEUTILS$_Ld1:
	.ascii	"Function \"%s\" (dateutils) is not yet implemented\000"

.data
	.balign 2
TC_DATEUTILS_DOWMAP:
	.short	7,1,2,3,4,5,6

.data
	.balign 4
.globl	_$DATEUTILS$_Ld2
_$DATEUTILS$_Ld2:
	.byte	0,0,0,0,0,0,28,64

.data
	.balign 4
.globl	_$DATEUTILS$_Ld3
_$DATEUTILS$_Ld3:
	.byte	0,0,0,0,0,0,224,63

.data
	.balign 4
.globl	_$DATEUTILS$_Ld4
_$DATEUTILS$_Ld4:
	.byte	0,0,0,0,0,0,240,191

.data
	.balign 4
.globl	_$DATEUTILS$_Ld5
_$DATEUTILS$_Ld5:
	.byte	91,72,77,12,0,0,0,128,203,63

.data
	.balign 4
.globl	_$DATEUTILS$_Ld6
_$DATEUTILS$_Ld6:
	.byte	0,0,0,0,0,0,0,192,3,64

.data
	.balign 4
.globl	_$DATEUTILS$_Ld7
_$DATEUTILS$_Ld7:
	.byte	0,0,0,0,0,0,0,180,9,64

.data
	.balign 4
.globl	_$DATEUTILS$_Ld8
_$DATEUTILS$_Ld8:
	.byte	0,0,0,0,0,0,192,168,15,64

.data
	.balign 4
.globl	_$DATEUTILS$_Ld9
_$DATEUTILS$_Ld9:
	.byte	0,0,0,0,0,128,203,164,25,64

.data
	.balign 4
.globl	_$DATEUTILS$_Ld10
_$DATEUTILS$_Ld10:
	.byte	0,0,0,0,0,0,0,224,1,64

.data
	.balign 4
.globl	_$DATEUTILS$_Ld11
_$DATEUTILS$_Ld11:
	.byte	0,0,0,0,112,153,148,65

.data
	.balign 4
.globl	_$DATEUTILS$_Ld12
_$DATEUTILS$_Ld12:
	.byte	13,185,103,250,235,80,215,198,228,63

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$DATEUTILS$_Ld13
_$DATEUTILS$_Ld13:
	.ascii	"????\000"

.data
	.balign 4
	.short	0,1
	.long	-1,2
.globl	_$DATEUTILS$_Ld14
_$DATEUTILS$_Ld14:
	.ascii	"??\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$DATEUTILS$_Ld15
_$DATEUTILS$_Ld15:
	.ascii	" \000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$DATEUTILS$_Ld16
_$DATEUTILS$_Ld16:
	.ascii	"???\000"

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$DATEUTILS$_Ld17
_$DATEUTILS$_Ld17:
	.ascii	"%.*d\000"

.data
	.balign 4
.globl	_$DATEUTILS$_Ld18
_$DATEUTILS$_Ld18:
	.byte	0,0,0,0,32,75,223,64

.data
	.balign 4
.globl	_$DATEUTILS$_Ld19
_$DATEUTILS$_Ld19:
	.byte	0,0,0,64,128,79,66,65

.data
	.balign 4
.globl	_$DATEUTILS$_Ld20
_$DATEUTILS$_Ld20:
	.byte	0,0,0,0,64,248,216,64

.data
	.balign 4
.globl	_$DATEUTILS$_Ld21
_$DATEUTILS$_Ld21:
	.byte	0,0,0,0,0,24,245,64

.data
	.balign 4
TC_DATEUTILS_AMPMFORMATTING:
	.long	_$DATEUTILS$_Ld22
	.long	_$DATEUTILS$_Ld23
	.long	_$DATEUTILS$_Ld24

.data
	.balign 4
.globl	_$DATEUTILS$_Ld25
_$DATEUTILS$_Ld25:
	.byte	11,182,96,11,182,96,11,182,244,63

.data
	.balign 4
.globl	_$DATEUTILS$_Ld26
_$DATEUTILS$_Ld26:
	.byte	171,170,170,170,170,170,170,170,250,63

.data
	.balign 4
.globl	_$DATEUTILS$_Ld27
_$DATEUTILS$_Ld27:
	.byte	183,74,137,114,6,69,46,194,238,63

.data
	.balign 4
	.short	0,1
	.long	-1,2
.globl	_$DATEUTILS$_Ld28
_$DATEUTILS$_Ld28:
	.ascii	"AM\000"

.data
	.balign 4
	.short	0,1
	.long	-1,2
.globl	_$DATEUTILS$_Ld29
_$DATEUTILS$_Ld29:
	.ascii	"PM\000"

.data
	.balign 4
.globl	_$DATEUTILS$_Ld30
_$DATEUTILS$_Ld30:
	.byte	0,0,0,0,0,0,0,128,254,63
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.data
	.balign 4
.globl	INIT_DATEUTILS_DEF381
INIT_DATEUTILS_DEF381:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_DATEUTILS_DEF382
INIT_DATEUTILS_DEF382:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_DATEUTILS_DEF383
INIT_DATEUTILS_DEF383:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_DATEUTILS_DEF384
INIT_DATEUTILS_DEF384:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_DATEUTILS_DEF385
INIT_DATEUTILS_DEF385:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_DATEUTILS_DEF386
INIT_DATEUTILS_DEF386:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_DATEUTILS_DEF387
INIT_DATEUTILS_DEF387:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_DATEUTILS_DEF427
INIT_DATEUTILS_DEF427:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_DATEUTILS_DEF431
INIT_DATEUTILS_DEF431:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_DATEUTILS_DEF448
INIT_DATEUTILS_DEF448:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_DATEUTILS_DEF451
INIT_DATEUTILS_DEF451:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_DATEUTILS_DEF187
INIT_DATEUTILS_DEF187:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_DATEUTILS_DEF418
INIT_DATEUTILS_DEF418:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
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
# End asmlist al_picdata
# Begin asmlist al_resourcestrings
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end

