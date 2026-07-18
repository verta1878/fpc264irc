# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_MACPAS_FCC$SHORTSTRING$$LONGWORD
_MACPAS_FCC$SHORTSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	1(%eax),%eax
	shll	$24,%eax
	movl	-4(%ebp),%edx
	movzbl	2(%edx),%edx
	shll	$16,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movzbl	3(%edx),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movzbl	4(%edx),%edx
	orl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_FOUR_CHAR_CODE$SHORTSTRING$$LONGWORD
_MACPAS_FOUR_CHAR_CODE$SHORTSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	1(%eax),%eax
	shll	$24,%eax
	movl	-4(%ebp),%edx
	movzbl	2(%edx),%edx
	shll	$16,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movzbl	3(%edx),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movzbl	4(%edx),%edx
	orl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_MEMBER$TOBJECT$TCLASS$$BOOLEAN
_MACPAS_MEMBER$TOBJECT$TCLASS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_do_is$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MACPAS_ORD4$SMALLINT$$SMALLINT
_MACPAS_ORD4$SMALLINT$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_ORD4$LONGINT$$LONGINT
_MACPAS_ORD4$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_ORD4$LONGWORD$$LONGWORD
_MACPAS_ORD4$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_ORD4$POINTER$$LONGINT
_MACPAS_ORD4$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BAND$LONGINT$LONGINT$$LONGINT
_MACPAS_BAND$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	andl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BAND$LONGWORD$LONGWORD$$LONGWORD
_MACPAS_BAND$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	andl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BAND$INT64$INT64$$INT64
_MACPAS_BAND$INT64$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	andl	8(%ebp),%eax
	andl	12(%ebp),%edx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BAND$QWORD$QWORD$$QWORD
_MACPAS_BAND$QWORD$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	andl	8(%ebp),%eax
	andl	12(%ebp),%edx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BOR$LONGINT$LONGINT$$LONGINT
_MACPAS_BOR$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BOR$LONGWORD$LONGWORD$$LONGWORD
_MACPAS_BOR$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BOR$INT64$INT64$$INT64
_MACPAS_BOR$INT64$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	orl	8(%ebp),%eax
	orl	12(%ebp),%edx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BOR$QWORD$QWORD$$QWORD
_MACPAS_BOR$QWORD$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	orl	8(%ebp),%eax
	orl	12(%ebp),%edx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BXOR$LONGINT$LONGINT$$LONGINT
_MACPAS_BXOR$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	xorl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BXOR$LONGWORD$LONGWORD$$LONGWORD
_MACPAS_BXOR$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	xorl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BXOR$INT64$INT64$$INT64
_MACPAS_BXOR$INT64$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	xorl	8(%ebp),%eax
	xorl	12(%ebp),%edx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BXOR$QWORD$QWORD$$QWORD
_MACPAS_BXOR$QWORD$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	xorl	8(%ebp),%eax
	xorl	12(%ebp),%edx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BSR$LONGINT$LONGWORD$$LONGINT
_MACPAS_BSR$LONGINT$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BSR$LONGWORD$LONGWORD$$LONGWORD
_MACPAS_BSR$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BSR$INT64$LONGWORD$$INT64
_MACPAS_BSR$INT64$LONGWORD$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	-4(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj95
	xorl	%eax,%eax
	xorl	%edx,%edx
	jmp	Lj97
Lj95:
	cmpl	$32,%ecx
	jl	Lj96
	subl	$32,%ecx
	shrl	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj97
Lj96:
	shrdl	%cl,%edx,%eax
	shrl	%cl,%edx
Lj97:
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BSR$QWORD$LONGWORD$$QWORD
_MACPAS_BSR$QWORD$LONGWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	-4(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj102
	xorl	%eax,%eax
	xorl	%edx,%edx
	jmp	Lj104
Lj102:
	cmpl	$32,%ecx
	jl	Lj103
	subl	$32,%ecx
	shrl	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj104
Lj103:
	shrdl	%cl,%edx,%eax
	shrl	%cl,%edx
Lj104:
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BSL$LONGINT$LONGWORD$$LONGINT
_MACPAS_BSL$LONGINT$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	shll	%cl,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BSL$LONGWORD$LONGWORD$$LONGWORD
_MACPAS_BSL$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	shll	%cl,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BSL$INT64$LONGWORD$$INT64
_MACPAS_BSL$INT64$LONGWORD$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	movl	-4(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj117
	xorl	%edx,%edx
	xorl	%eax,%eax
	jmp	Lj119
Lj117:
	cmpl	$32,%ecx
	jl	Lj118
	subl	$32,%ecx
	shll	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj119
Lj118:
	shldl	%cl,%edx,%eax
	shll	%cl,%edx
Lj119:
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BSL$QWORD$LONGWORD$$QWORD
_MACPAS_BSL$QWORD$LONGWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	movl	-4(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj124
	xorl	%edx,%edx
	xorl	%eax,%eax
	jmp	Lj126
Lj124:
	cmpl	$32,%ecx
	jl	Lj125
	subl	$32,%ecx
	shll	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj126
Lj125:
	shldl	%cl,%edx,%eax
	shll	%cl,%edx
Lj126:
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BTST$LONGINT$LONGWORD$$BOOLEAN
_MACPAS_BTST$LONGINT$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	shrl	%cl,%eax
	andl	$1,%eax
	testl	%eax,%eax
	setneb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BTST$LONGWORD$LONGWORD$$BOOLEAN
_MACPAS_BTST$LONGWORD$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	shrl	%cl,%eax
	andl	$1,%eax
	testl	%eax,%eax
	setneb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BTST$INT64$LONGWORD$$BOOLEAN
_MACPAS_BTST$INT64$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	-4(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj139
	xorl	%eax,%eax
	xorl	%edx,%edx
	jmp	Lj141
Lj139:
	cmpl	$32,%ecx
	jl	Lj140
	subl	$32,%ecx
	shrl	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj141
Lj140:
	shrdl	%cl,%edx,%eax
	shrl	%cl,%edx
Lj141:
	andl	$1,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BTST$QWORD$LONGWORD$$BOOLEAN
_MACPAS_BTST$QWORD$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	-4(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj146
	xorl	%eax,%eax
	xorl	%edx,%edx
	jmp	Lj148
Lj146:
	cmpl	$32,%ecx
	jl	Lj147
	subl	$32,%ecx
	shrl	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj148
Lj147:
	shrdl	%cl,%edx,%eax
	shrl	%cl,%edx
Lj148:
	andl	$1,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BSET$LONGINT$LONGWORD
_MACPAS_BSET$LONGINT$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$1,%eax
	movl	-8(%ebp),%ecx
	shll	%cl,%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BSET$LONGWORD$LONGWORD
_MACPAS_BSET$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$1,%eax
	movl	-8(%ebp),%ecx
	shll	%cl,%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BSET$INT64$LONGWORD
_MACPAS_BSET$INT64$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$1,%edx
	movl	$0,%eax
	movl	-8(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj161
	xorl	%edx,%edx
	xorl	%eax,%eax
	jmp	Lj163
Lj161:
	cmpl	$32,%ecx
	jl	Lj162
	subl	$32,%ecx
	shll	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj163
Lj162:
	shldl	%cl,%edx,%eax
	shll	%cl,%edx
Lj163:
	movl	-4(%ebp),%ecx
	orl	(%ecx),%edx
	orl	4(%ecx),%eax
	movl	-4(%ebp),%ecx
	movl	%edx,(%ecx)
	movl	%eax,4(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BSET$QWORD$LONGWORD
_MACPAS_BSET$QWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$1,%edx
	movl	$0,%eax
	movl	-8(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj168
	xorl	%edx,%edx
	xorl	%eax,%eax
	jmp	Lj170
Lj168:
	cmpl	$32,%ecx
	jl	Lj169
	subl	$32,%ecx
	shll	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj170
Lj169:
	shldl	%cl,%edx,%eax
	shll	%cl,%edx
Lj170:
	movl	-4(%ebp),%ecx
	orl	(%ecx),%edx
	orl	4(%ecx),%eax
	movl	-4(%ebp),%ecx
	movl	%edx,(%ecx)
	movl	%eax,4(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BCLR$LONGINT$LONGWORD
_MACPAS_BCLR$LONGINT$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$1,%eax
	movl	-8(%ebp),%ecx
	shll	%cl,%eax
	notl	%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	andl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BCLR$LONGWORD$LONGWORD
_MACPAS_BCLR$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$1,%eax
	movl	-8(%ebp),%ecx
	shll	%cl,%eax
	notl	%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	andl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BCLR$INT64$LONGWORD
_MACPAS_BCLR$INT64$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$1,%edx
	movl	$0,%eax
	movl	-8(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj183
	xorl	%edx,%edx
	xorl	%eax,%eax
	jmp	Lj185
Lj183:
	cmpl	$32,%ecx
	jl	Lj184
	subl	$32,%ecx
	shll	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj185
Lj184:
	shldl	%cl,%edx,%eax
	shll	%cl,%edx
Lj185:
	notl	%eax
	notl	%edx
	movl	-4(%ebp),%ecx
	andl	(%ecx),%edx
	andl	4(%ecx),%eax
	movl	-4(%ebp),%ecx
	movl	%edx,(%ecx)
	movl	%eax,4(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BCLR$QWORD$LONGWORD
_MACPAS_BCLR$QWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$1,%edx
	movl	$0,%eax
	movl	-8(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj190
	xorl	%edx,%edx
	xorl	%eax,%eax
	jmp	Lj192
Lj190:
	cmpl	$32,%ecx
	jl	Lj191
	subl	$32,%ecx
	shll	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj192
Lj191:
	shldl	%cl,%edx,%eax
	shll	%cl,%edx
Lj192:
	notl	%eax
	notl	%edx
	movl	-4(%ebp),%ecx
	andl	(%ecx),%edx
	andl	4(%ecx),%eax
	movl	-4(%ebp),%ecx
	movl	%edx,(%ecx)
	movl	%eax,4(%ecx)
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BROTL$LONGINT$LONGWORD$$LONGINT
_MACPAS_BROTL$LONGINT$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	$32,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	shrl	%cl,%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	shll	%cl,%edx
	orl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BROTL$LONGWORD$LONGWORD$$LONGWORD
_MACPAS_BROTL$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	$32,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	shrl	%cl,%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	shll	%cl,%edx
	orl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BROTL$INT64$LONGWORD$$INT64
_MACPAS_BROTL$INT64$LONGWORD$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	$64,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$64,%ecx
	jl	Lj205
	xorl	%eax,%eax
	xorl	%edx,%edx
	jmp	Lj207
Lj205:
	cmpl	$32,%ecx
	jl	Lj206
	subl	$32,%ecx
	shrl	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj207
Lj206:
	shrdl	%cl,%edx,%eax
	shrl	%cl,%edx
Lj207:
	movl	8(%ebp),%esi
	movl	12(%ebp),%ebx
	movl	-4(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj208
	xorl	%esi,%esi
	xorl	%ebx,%ebx
	jmp	Lj210
Lj208:
	cmpl	$32,%ecx
	jl	Lj209
	subl	$32,%ecx
	shll	%cl,%esi
	movl	%esi,%ebx
	xorl	%esi,%esi
	jmp	Lj210
Lj209:
	shldl	%cl,%esi,%ebx
	shll	%cl,%esi
Lj210:
	orl	%esi,%eax
	orl	%ebx,%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BROTL$QWORD$LONGWORD$$QWORD
_MACPAS_BROTL$QWORD$LONGWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	$64,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$64,%ecx
	jl	Lj215
	xorl	%eax,%eax
	xorl	%edx,%edx
	jmp	Lj217
Lj215:
	cmpl	$32,%ecx
	jl	Lj216
	subl	$32,%ecx
	shrl	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj217
Lj216:
	shrdl	%cl,%edx,%eax
	shrl	%cl,%edx
Lj217:
	movl	8(%ebp),%esi
	movl	12(%ebp),%ebx
	movl	-4(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj218
	xorl	%esi,%esi
	xorl	%ebx,%ebx
	jmp	Lj220
Lj218:
	cmpl	$32,%ecx
	jl	Lj219
	subl	$32,%ecx
	shll	%cl,%esi
	movl	%esi,%ebx
	xorl	%esi,%esi
	jmp	Lj220
Lj219:
	shldl	%cl,%esi,%ebx
	shll	%cl,%esi
Lj220:
	orl	%esi,%eax
	orl	%ebx,%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BROTR$LONGINT$LONGWORD$$LONGINT
_MACPAS_BROTR$LONGINT$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	$32,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	shll	%cl,%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	shrl	%cl,%edx
	orl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BROTR$LONGWORD$LONGWORD$$LONGWORD
_MACPAS_BROTR$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	$32,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	shll	%cl,%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	shrl	%cl,%edx
	orl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BROTR$INT64$LONGWORD$$INT64
_MACPAS_BROTR$INT64$LONGWORD$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	$64,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$64,%ecx
	jl	Lj233
	xorl	%edx,%edx
	xorl	%eax,%eax
	jmp	Lj235
Lj233:
	cmpl	$32,%ecx
	jl	Lj234
	subl	$32,%ecx
	shll	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj235
Lj234:
	shldl	%cl,%edx,%eax
	shll	%cl,%edx
Lj235:
	movl	8(%ebp),%ebx
	movl	12(%ebp),%esi
	movl	-4(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj236
	xorl	%ebx,%ebx
	xorl	%esi,%esi
	jmp	Lj238
Lj236:
	cmpl	$32,%ecx
	jl	Lj237
	subl	$32,%ecx
	shrl	%cl,%esi
	movl	%esi,%ebx
	xorl	%esi,%esi
	jmp	Lj238
Lj237:
	shrdl	%cl,%esi,%ebx
	shrl	%cl,%esi
Lj238:
	orl	%ebx,%edx
	orl	%esi,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BROTR$QWORD$LONGWORD$$QWORD
_MACPAS_BROTR$QWORD$LONGWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	$64,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$64,%ecx
	jl	Lj243
	xorl	%edx,%edx
	xorl	%eax,%eax
	jmp	Lj245
Lj243:
	cmpl	$32,%ecx
	jl	Lj244
	subl	$32,%ecx
	shll	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj245
Lj244:
	shldl	%cl,%edx,%eax
	shll	%cl,%edx
Lj245:
	movl	8(%ebp),%ebx
	movl	12(%ebp),%esi
	movl	-4(%ebp),%ecx
	cmpl	$64,%ecx
	jl	Lj246
	xorl	%ebx,%ebx
	xorl	%esi,%esi
	jmp	Lj248
Lj246:
	cmpl	$32,%ecx
	jl	Lj247
	subl	$32,%ecx
	shrl	%cl,%esi
	movl	%esi,%ebx
	xorl	%esi,%esi
	jmp	Lj248
Lj247:
	shrdl	%cl,%esi,%ebx
	shrl	%cl,%esi
Lj248:
	orl	%ebx,%edx
	orl	%esi,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BNOT$LONGINT$$LONGINT
_MACPAS_BNOT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	notl	%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BNOT$LONGWORD$$LONGWORD
_MACPAS_BNOT$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	notl	%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BNOT$INT64$$INT64
_MACPAS_BNOT$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	notl	%edx
	notl	%eax
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_MACPAS_BNOT$QWORD$$QWORD
_MACPAS_BNOT$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	notl	%edx
	notl	%eax
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_INIT$_MACPAS
_INIT$_MACPAS:
.reference __MACPAS_init
.globl	__MACPAS_init
__MACPAS_init:
.reference _INIT$_MACPAS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$63,%eax
	call	L_MATH_SETEXCEPTIONMASK$TFPUEXCEPTIONMASK$$TFPUEXCEPTIONMASK$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_MACPAS
_THREADVARLIST_MACPAS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_do_is$stub:
.indirect_symbol fpc_do_is
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_MATH_SETEXCEPTIONMASK$TFPUEXCEPTIONMASK$$TFPUEXCEPTIONMASK$stub:
.indirect_symbol _MATH_SETEXCEPTIONMASK$TFPUEXCEPTIONMASK$$TFPUEXCEPTIONMASK
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
.globl	_INIT_MACPAS_FOURCHARARRAY
_INIT_MACPAS_FOURCHARARRAY:
	.byte	12
	.ascii	"\015FourCharArray"
	.long	1,4
	.long	_INIT_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_MACPAS_FOURCHARARRAY
_RTTI_MACPAS_FOURCHARARRAY:
	.byte	12
	.ascii	"\015FourCharArray"
	.long	1,4
	.long	_RTTI_SYSTEM_CHAR
	.long	-1
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
	.subsections_via_symbols

