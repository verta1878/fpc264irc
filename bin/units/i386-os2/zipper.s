	.file "zipper.pp"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
ZIPPER_DATETIMETOZIPDATETIME$TDATETIME$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$22,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-14(%ebp),%ecx
	leal	-12(%ebp),%edx
	leal	-10(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-22(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%ecx
	leal	-18(%ebp),%edx
	leal	-16(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	movzwl	-10(%ebp),%eax
	subl	$1980,%eax
	movw	%ax,-10(%ebp)
	movzwl	-12(%ebp),%eax
	shll	$5,%eax
	movzwl	-14(%ebp),%edx
	addl	%edx,%eax
	movzwl	-10(%ebp),%edx
	shll	$9,%edx
	addl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,(%edx)
	movzwl	-20(%ebp),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movzwl	-18(%ebp),%edx
	shll	$5,%edx
	addl	%edx,%eax
	movzwl	-16(%ebp),%edx
	shll	$11,%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	movw	%ax,(%edx)
	leave
	ret	$8

.text
	.balign 4,0x90
ZIPPER_ZIPDATETIMETODATETIME$WORD$WORD$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$26,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movw	$0,-26(%ebp)
	movw	-8(%ebp),%ax
	andw	$31,%ax
	movzwl	%ax,%eax
	shll	$1,%eax
	movw	%ax,-24(%ebp)
	movzwl	-8(%ebp),%eax
	shrl	$5,%eax
	andl	$63,%eax
	movw	%ax,-22(%ebp)
	movzwl	-8(%ebp),%eax
	shrl	$11,%eax
	movw	%ax,-20(%ebp)
	movw	-4(%ebp),%ax
	andw	$31,%ax
	movw	%ax,-18(%ebp)
	movzwl	-4(%ebp),%eax
	shrl	$5,%eax
	andl	$15,%eax
	movw	%ax,-16(%ebp)
	movzwl	-4(%ebp),%eax
	shrl	$9,%eax
	andl	$127,%eax
	addl	$1980,%eax
	movw	%ax,-14(%ebp)
	movzwl	-16(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj45
	jmp	Lj46
Lj45:
	movw	$1,-16(%ebp)
Lj46:
	movzwl	-18(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj49
	jmp	Lj50
Lj49:
	movw	$1,-18(%ebp)
Lj50:
	movw	-18(%ebp),%cx
	movw	-16(%ebp),%dx
	movw	-14(%ebp),%ax
	call	SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
	subl	$8,%esp
	fstpl	(%esp)
	movzwl	-26(%ebp),%eax
	pushl	%eax
	movw	-24(%ebp),%cx
	movw	-22(%ebp),%dx
	movw	-20(%ebp),%ax
	call	SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
	subl	$8,%esp
	fstpl	(%esp)
	call	SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	leave
	ret

.text
	.balign 4,0x90
ZIPPER_ZIPUNIXATTRSTOFATATTRS$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$32,-12(%ebp)
	movl	-4(%ebp),%edx
	movb	$46,%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	cmpl	$1,%eax
	je	Lj80
	jmp	Lj78
Lj80:
	movl	-4(%ebp),%eax
	movl	$_$ZIPPER$_Ld1,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	jne	Lj79
	jmp	Lj78
Lj79:
	movl	-4(%ebp),%eax
	movl	$_$ZIPPER$_Ld2,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	jne	Lj77
	jmp	Lj78
Lj77:
	movl	-12(%ebp),%eax
	addl	$2,%eax
	movl	%eax,-12(%ebp)
Lj78:
	movl	-8(%ebp),%eax
	andl	$61440,%eax
	cmpl	$4096,%eax
	jl	Lj96
	subl	$4096,%eax
	je	Lj99
	subl	$4096,%eax
	je	Lj99
	subl	$8192,%eax
	je	Lj97
	subl	$8192,%eax
	je	Lj99
	subl	$16384,%eax
	je	Lj98
	subl	$8192,%eax
	je	Lj99
	jmp	Lj96
Lj97:
	movl	-12(%ebp),%eax
	addl	$16,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj95
Lj98:
	movl	-12(%ebp),%eax
	addl	$64,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj95
Lj99:
	movl	-12(%ebp),%eax
	addl	$4,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj95
Lj96:
Lj95:
	movl	-8(%ebp),%eax
	andl	$128,%eax
	testl	%eax,%eax
	je	Lj106
	jmp	Lj107
Lj106:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-12(%ebp)
Lj107:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
ZIPPER_ZIPFATATTRSTOUNIXATTRS$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$484,-8(%ebp)
	movl	-4(%ebp),%eax
	andl	$1,%eax
	cmpl	$0,%eax
	jg	Lj114
	jmp	Lj115
Lj114:
	movl	-8(%ebp),%eax
	andl	$-129,%eax
	movl	%eax,-8(%ebp)
Lj115:
	movl	-4(%ebp),%eax
	andl	$64,%eax
	cmpl	$0,%eax
	jg	Lj118
	jmp	Lj119
Lj118:
	movl	-8(%ebp),%eax
	orl	$40960,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj122
Lj119:
	movl	-4(%ebp),%eax
	andl	$16,%eax
	cmpl	$0,%eax
	jg	Lj123
	jmp	Lj124
Lj123:
	movl	-8(%ebp),%eax
	orl	$16384,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj127
Lj124:
	movl	-8(%ebp),%eax
	orl	$32768,%eax
	movl	%eax,-8(%ebp)
Lj127:
Lj122:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TDECOMPRESSOR_$__UPDC32$BYTE
ZIPPER_TDECOMPRESSOR_$__UPDC32$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%edx
	movl	12(%eax),%eax
	xorl	%edx,%eax
	movzbl	%al,%eax
	movl	-8(%ebp),%edx
	movl	12(%edx),%edx
	shrl	$8,%edx
	andl	$16777215,%edx
	movl	TC_ZIPPER_CRC_32_TAB(,%eax,4),%ecx
	xorl	%edx,%ecx
	movl	-8(%ebp),%eax
	movl	%ecx,12(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TDECOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TDECOMPRESSOR
ZIPPER_TDECOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TDECOMPRESSOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$92,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj136
	jmp	Lj137
Lj136:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj137:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj142
	jmp	Lj143
Lj142:
	jmp	Lj134
Lj143:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj146
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj150
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-12(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-12(%ebp),%eax
	movl	$-1,12(%eax)
Lj150:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj151
	call	FPC_RERAISE
Lj151:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj163
	jmp	Lj162
Lj163:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj161
	jmp	Lj162
Lj161:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj162:
Lj146:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj148
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj167
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj168
	jmp	Lj169
Lj168:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj169:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj167:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj166
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj166:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj148
Lj148:
Lj134:
	movl	-12(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	ZIPPER_TCOMPRESSOR_$__UPDC32$BYTE
ZIPPER_TCOMPRESSOR_$__UPDC32$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movzbl	-4(%ebp),%edx
	movl	12(%eax),%eax
	xorl	%edx,%eax
	movzbl	%al,%eax
	movl	-8(%ebp),%edx
	movl	12(%edx),%edx
	shrl	$8,%edx
	andl	$16777215,%edx
	movl	TC_ZIPPER_CRC_32_TAB(,%eax,4),%ecx
	xorl	%edx,%ecx
	movl	-8(%ebp),%eax
	movl	%ecx,12(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TCOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TCOMPRESSOR
ZIPPER_TCOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TCOMPRESSOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$92,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj180
	jmp	Lj181
Lj180:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj181:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj186
	jmp	Lj187
Lj186:
	jmp	Lj178
Lj187:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj190
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj194
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-12(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-12(%ebp),%eax
	movl	$-1,12(%eax)
Lj194:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj195
	call	FPC_RERAISE
Lj195:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj207
	jmp	Lj206
Lj207:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj205
	jmp	Lj206
Lj205:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj206:
Lj190:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj192
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj211
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj212
	jmp	Lj213
Lj212:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj213:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj211:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj210
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj210:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj192
Lj192:
Lj178:
	movl	-12(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	ZIPPER_TDEFLATER_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TDEFLATER
ZIPPER_TDEFLATER_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TDEFLATER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$92,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj220
	jmp	Lj221
Lj220:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj221:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj226
	jmp	Lj227
Lj226:
	jmp	Lj218
Lj227:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj230
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj234
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	ZIPPER_TCOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TCOMPRESSOR
	movl	-12(%ebp),%eax
	movl	$2,32(%eax)
Lj234:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj235
	call	FPC_RERAISE
Lj235:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj251
	jmp	Lj250
Lj251:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj249
	jmp	Lj250
Lj249:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj250:
Lj230:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj232
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj255
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj256
	jmp	Lj257
Lj256:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj257:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj255:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj254
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj254:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj232
Lj232:
Lj218:
	movl	-12(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	ZIPPER_TDEFLATER_$__COMPRESS
ZIPPER_TDEFLATER_$__COMPRESS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$132,%esp
	movl	%ebx,-132(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$-1,12(%eax)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	call	SYSTEM_GETMEM$LONGWORD$$POINTER
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj270
	jmp	Lj271
Lj270:
	movl	-4(%ebp),%eax
	movl	$1,20(%eax)
Lj271:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	pushl	%edx
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,-48(%ebp)
	movl	%edx,-44(%ebp)
	fildq	-48(%ebp)
	fldt	_$ZIPPER$_Ld3
	fdivrp	%st,%st(1)
	fistpq	-48(%ebp)
	fwait
	movl	-48(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	$0,-28(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-40(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj292
	movl	-4(%ebp),%eax
	pushl	8(%eax)
	pushl	$1
	movl	-4(%ebp),%eax
	movl	32(%eax),%ecx
	movl	$VMT_ZSTREAM_TCOMPRESSIONSTREAM,%edx
	movl	$0,%eax
	call	ZSTREAM_TCOMPRESSIONSTREAM_$__CREATE$TCOMPRESSIONLEVEL$TSTREAM$BOOLEAN$$TCOMPRESSIONSTREAM
	movl	%eax,-24(%ebp)
	leal	-96(%ebp),%ecx
	leal	-120(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj308
	movl	-4(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj312
	jmp	Lj313
Lj312:
	fldz
	subl	$8,%esp
	fstpl	(%esp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	call	*%ecx
Lj313:
	.balign 4,0x90
Lj320:
	movl	-4(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj332
	decl	-12(%ebp)
	.balign 4,0x90
Lj333:
	incl	-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	(%edx,%eax,1),%dl
	movl	-4(%ebp),%eax
	call	ZIPPER_TCOMPRESSOR_$__UPDC32$BYTE
	cmpl	-12(%ebp),%ebx
	jg	Lj333
Lj332:
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj341
	.balign 4,0x90
Lj340:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-20(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,-20(%ebp)
Lj341:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj340
	jmp	Lj342
Lj342:
	movl	-16(%ebp),%eax
	addl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jg	Lj351
	jmp	Lj352
Lj351:
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj355
	jmp	Lj354
Lj355:
	movl	-4(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj353
	jmp	Lj354
Lj353:
	fildl	-28(%ebp)
	fildl	-40(%ebp)
	fdivrp	%st,%st(1)
	fldt	_$ZIPPER$_Ld3
	fmulp	%st,%st(1)
	fstpl	-128(%ebp)
	fldl	-128(%ebp)
	subl	$8,%esp
	fstpl	(%esp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	call	*%ecx
Lj354:
	movl	-36(%ebp),%eax
	addl	%eax,-32(%ebp)
Lj352:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj322
	jmp	Lj320
Lj322:
Lj308:
	call	FPC_POPADDRSTACK
	movl	-24(%ebp),%eax
	call	SYSTEM_TOBJECT_$__FREE
	popl	%eax
	testl	%eax,%eax
	je	Lj309
	decl	%eax
	testl	%eax,%eax
	je	Lj310
Lj310:
	call	FPC_RERAISE
Lj309:
Lj292:
	call	FPC_POPADDRSTACK
	movl	-8(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	popl	%eax
	testl	%eax,%eax
	je	Lj293
	decl	%eax
	testl	%eax,%eax
	je	Lj294
Lj294:
	call	FPC_RERAISE
Lj293:
	movl	-4(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj366
	jmp	Lj367
Lj366:
	subl	$8,%esp
	movl	_$ZIPPER$_Ld4,%eax
	movl	%eax,(%esp)
	movl	_$ZIPPER$_Ld4+4,%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	call	*%ecx
Lj367:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	notl	%eax
	movl	-4(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-132(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TDEFLATER_$__ZIPID$$WORD
ZIPPER_TDEFLATER_$__ZIPID$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movw	$8,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TDEFLATER_$__ZIPVERSIONREQD$$WORD
ZIPPER_TDEFLATER_$__ZIPVERSIONREQD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movw	$20,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TDEFLATER_$__ZIPBITFLAG$$WORD
ZIPPER_TDEFLATER_$__ZIPBITFLAG$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	testl	%eax,%eax
	je	Lj388
	decl	%eax
	je	Lj389
	decl	%eax
	je	Lj390
	decl	%eax
	je	Lj391
	jmp	Lj387
Lj388:
	movw	$6,-6(%ebp)
	jmp	Lj386
Lj389:
	movw	$4,-6(%ebp)
	jmp	Lj386
Lj390:
	movw	$0,-6(%ebp)
	jmp	Lj386
Lj391:
	movw	$2,-6(%ebp)
	jmp	Lj386
Lj387:
	movw	$0,-6(%ebp)
Lj386:
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TINFLATER_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TINFLATER
ZIPPER_TINFLATER_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TINFLATER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$92,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj404
	jmp	Lj405
Lj404:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj405:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj410
	jmp	Lj411
Lj410:
	jmp	Lj402
Lj411:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj414
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj418
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	ZIPPER_TDECOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TDECOMPRESSOR
Lj418:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj419
	call	FPC_RERAISE
Lj419:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj433
	jmp	Lj432
Lj433:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj431
	jmp	Lj432
Lj431:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj432:
Lj414:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj416
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj437
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj438
	jmp	Lj439
Lj438:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj439:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj437:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj436
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj436:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj416
Lj416:
Lj402:
	movl	-12(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	ZIPPER_TINFLATER_$__DECOMPRESS
ZIPPER_TINFLATER_$__DECOMPRESS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$128,%esp
	movl	%ebx,-128(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$-1,12(%eax)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj448
	jmp	Lj449
Lj448:
	movl	-4(%ebp),%eax
	movl	$1,20(%eax)
Lj449:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	pushl	%edx
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,-44(%ebp)
	movl	%edx,-40(%ebp)
	fildq	-44(%ebp)
	fldt	_$ZIPPER$_Ld3
	fdivrp	%st,%st(1)
	fistpq	-44(%ebp)
	fwait
	movl	-44(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-24(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-36(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj470
	jmp	Lj471
Lj470:
	fldz
	subl	$8,%esp
	fstpl	(%esp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	call	*%ecx
Lj471:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	call	SYSTEM_GETMEM$LONGWORD$$POINTER
	movl	%eax,-8(%ebp)
	leal	-56(%ebp),%ecx
	leal	-80(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj482
	pushl	$1
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	movl	$VMT_ZSTREAM_TDECOMPRESSIONSTREAM,%edx
	movl	$0,%eax
	call	ZSTREAM_TDECOMPRESSIONSTREAM_$__CREATE$TSTREAM$BOOLEAN$$TDECOMPRESSIONSTREAM
	movl	%eax,-20(%ebp)
	leal	-92(%ebp),%ecx
	leal	-116(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj496
	.balign 4,0x90
Lj500:
	movl	-4(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj512
	decl	-12(%ebp)
	.balign 4,0x90
Lj513:
	incl	-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	(%edx,%eax,1),%dl
	movl	-4(%ebp),%eax
	call	ZIPPER_TDECOMPRESSOR_$__UPDC32$BYTE
	cmpl	-12(%ebp),%ebx
	jg	Lj513
Lj512:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%ebx
	movl	8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-16(%ebp),%eax
	addl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jg	Lj524
	jmp	Lj525
Lj524:
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj528
	jmp	Lj527
Lj528:
	movl	-4(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj526
	jmp	Lj527
Lj526:
	fildl	-24(%ebp)
	fildl	-36(%ebp)
	fdivrp	%st,%st(1)
	fldt	_$ZIPPER$_Ld3
	fmulp	%st,%st(1)
	fstpl	-124(%ebp)
	fldl	-124(%ebp)
	subl	$8,%esp
	fstpl	(%esp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	call	*%ecx
Lj527:
	movl	-32(%ebp),%eax
	addl	%eax,-28(%ebp)
Lj525:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj502
	jmp	Lj500
Lj502:
Lj496:
	call	FPC_POPADDRSTACK
	movl	-20(%ebp),%eax
	call	SYSTEM_TOBJECT_$__FREE
	popl	%eax
	testl	%eax,%eax
	je	Lj497
	decl	%eax
	testl	%eax,%eax
	je	Lj498
Lj498:
	call	FPC_RERAISE
Lj497:
Lj482:
	call	FPC_POPADDRSTACK
	movl	-8(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	popl	%eax
	testl	%eax,%eax
	je	Lj483
	decl	%eax
	testl	%eax,%eax
	je	Lj484
Lj484:
	call	FPC_RERAISE
Lj483:
	movl	-4(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj539
	jmp	Lj540
Lj539:
	subl	$8,%esp
	movl	_$ZIPPER$_Ld4,%eax
	movl	%eax,(%esp)
	movl	_$ZIPPER$_Ld4+4,%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	call	*%ecx
Lj540:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	notl	%eax
	movl	-4(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-128(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TINFLATER_$__ZIPID$$WORD
ZIPPER_TINFLATER_$__ZIPID$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movw	$8,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TSHRINKER
ZIPPER_TSHRINKER_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TSHRINKER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$92,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj555
	jmp	Lj556
Lj555:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj556:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj561
	jmp	Lj562
Lj561:
	jmp	Lj553
Lj562:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj565
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj569
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	ZIPPER_TCOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TCOMPRESSOR
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	call	SYSTEM_GETMEM$LONGWORD$$POINTER
	movl	-12(%ebp),%edx
	movl	%eax,1092(%edx)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	call	SYSTEM_GETMEM$LONGWORD$$POINTER
	movl	-12(%ebp),%edx
	movl	%eax,1096(%edx)
	movl	$40960,%eax
	call	SYSTEM_GETMEM$LONGWORD$$POINTER
	movl	-12(%ebp),%edx
	movl	%eax,44(%edx)
	movl	$15870,%eax
	call	SYSTEM_GETMEM$LONGWORD$$POINTER
	movl	-12(%ebp),%edx
	movl	%eax,48(%edx)
Lj569:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj570
	call	FPC_RERAISE
Lj570:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj602
	jmp	Lj601
Lj602:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj600
	jmp	Lj601
Lj600:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj601:
Lj565:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj567
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj606
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj607
	jmp	Lj608
Lj607:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj608:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj606:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj605
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj605:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj567
Lj567:
Lj553:
	movl	-12(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__DESTROY
ZIPPER_TSHRINKER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj615
	jmp	Lj616
Lj615:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj616:
	movl	-8(%ebp),%eax
	movl	44(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-8(%ebp),%eax
	movl	1092(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-8(%ebp),%eax
	movl	1096(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	SYSTEM_TOBJECT_$__DESTROY
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj633
	jmp	Lj632
Lj633:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj631
	jmp	Lj632
Lj631:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj632:
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__COMPRESS
ZIPPER_TSHRINKER_$__COMPRESS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj638
	movl	-4(%ebp),%eax
	movl	$1,1104(%eax)
	movl	-4(%ebp),%eax
	movl	$1,1108(%eax)
	movl	-4(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__INITIALIZECODETABLE
	movl	-4(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__FILLINPUTBUFFER
	movl	-4(%ebp),%eax
	movb	$1,1100(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,12(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	pushl	%edx
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,-60(%ebp)
	movl	%edx,-56(%ebp)
	fildq	-60(%ebp)
	fldt	_$ZIPPER$_Ld3
	fdivrp	%st,%st(1)
	fistpq	-60(%ebp)
	fwait
	movl	-4(%ebp),%edx
	movl	-60(%ebp),%eax
	movl	%eax,1112(%edx)
	jmp	Lj664
	.balign 4,0x90
Lj663:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	1084(%ecx),%ebx
	movl	$0,%ecx
	subl	%ebx,%eax
	sbbl	%ecx,%edx
	addl	$1,%eax
	adcl	$0,%edx
	movw	%ax,-10(%ebp)
	movw	-10(%ebp),%ax
	cmpw	$255,%ax
	ja	Lj668
	jmp	Lj669
Lj668:
	movw	$255,-10(%ebp)
Lj669:
	movzwl	-10(%ebp),%eax
	testl	%eax,%eax
	je	Lj672
	jmp	Lj673
Lj672:
	movl	-4(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__FILLINPUTBUFFER
	jmp	Lj676
Lj673:
	movzwl	-10(%ebp),%edx
	leal	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	leal	-8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	1092(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	1084(%eax),%eax
	leal	(%ecx,%eax,1),%eax
	movzwl	-10(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movzwl	-10(%ebp),%eax
	movl	-4(%ebp),%edx
	addl	%eax,1084(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__PROCESSLINE$ANSISTRING
Lj676:
Lj664:
	movl	-4(%ebp),%eax
	cmpb	$0,40(%eax)
	jne	Lj665
	jmp	Lj663
Lj665:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	notl	%eax
	movl	-4(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	ZIPPER_TSHRINKER_$__PROCESSLINE$ANSISTRING
Lj638:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-8(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj639
	call	FPC_RERAISE
Lj639:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__ZIPID$$WORD
ZIPPER_TSHRINKER_$__ZIPID$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movw	$1,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__ZIPVERSIONREQD$$WORD
ZIPPER_TSHRINKER_$__ZIPVERSIONREQD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movw	$10,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__ZIPBITFLAG$$WORD
ZIPPER_TSHRINKER_$__ZIPBITFLAG$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movw	$0,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__DOONPROGRESS$DOUBLE
ZIPPER_TSHRINKER_$__DOONPROGRESS$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj719
	jmp	Lj720
Lj719:
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	call	*%ecx
Lj720:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__FILLINPUTBUFFER
ZIPPER_TSHRINKER_$__FILLINPUTBUFFER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	1092(%eax),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-4(%ebp),%edx
	movl	%eax,36(%edx)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	je	Lj737
	jmp	Lj738
Lj737:
	movl	-4(%ebp),%eax
	movb	$1,40(%eax)
	jmp	Lj741
Lj738:
	movl	-4(%ebp),%eax
	movb	$0,40(%eax)
Lj741:
	movl	-4(%ebp),%eax
	movl	$0,1084(%eax)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__WRITEOUTPUTBUFFER
ZIPPER_TSHRINKER_$__WRITEOUTPUTBUFFER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	1096(%eax),%edx
	movl	-4(%ebp),%eax
	movl	1088(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT
	movl	-4(%ebp),%eax
	movl	$0,1088(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__PUTCHAR$BYTE
ZIPPER_TSHRINKER_$__PUTCHAR$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	1096(%eax),%edx
	movl	-8(%ebp),%eax
	movl	1088(%eax),%eax
	movb	-4(%ebp),%cl
	movb	%cl,(%edx,%eax,1)
	movl	-8(%ebp),%eax
	incl	1088(%eax)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	1088(%eax),%eax
	cmpl	32(%edx),%eax
	jae	Lj760
	jmp	Lj761
Lj760:
	movl	-8(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__WRITEOUTPUTBUFFER
Lj761:
	movl	-8(%ebp),%eax
	incl	1108(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__FLUSHOUTPUT
ZIPPER_TSHRINKER_$__FLUSHOUTPUT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	1088(%eax),%eax
	cmpl	$0,%eax
	ja	Lj766
	jmp	Lj767
Lj766:
	movl	-4(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__WRITEOUTPUTBUFFER
Lj767:
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT
ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$14,%esp
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movw	-4(%ebp),%ax
	cmpw	$-1,%ax
	je	Lj772
	jmp	Lj773
Lj772:
	movl	-8(%ebp),%eax
	movzbl	1103(%eax),%eax
	cmpl	$0,%eax
	jg	Lj774
	jmp	Lj775
Lj774:
	movl	-8(%ebp),%eax
	movb	1102(%eax),%dl
	movl	-8(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__PUTCHAR$BYTE
Lj775:
	jmp	Lj780
Lj773:
	movswl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movzbl	1078(%eax),%eax
	movl	-8(%ebp),%edx
	movzbl	1103(%edx),%edx
	addl	%edx,%eax
	movw	%ax,-14(%ebp)
	movl	-8(%ebp),%eax
	movzbl	1103(%eax),%ecx
	movl	-12(%ebp),%eax
	shll	%cl,%eax
	movl	-8(%ebp),%edx
	movzbl	1102(%edx),%edx
	orl	%edx,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj788
	.balign 4,0x90
Lj787:
	movb	-12(%ebp),%dl
	movl	-8(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__PUTCHAR$BYTE
	movl	-12(%ebp),%eax
	shrl	$8,%eax
	movl	%eax,-12(%ebp)
	subw	$8,-14(%ebp)
Lj788:
	movswl	-14(%ebp),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%eax
	sarl	$3,%eax
	cmpl	$0,%eax
	jg	Lj787
	jmp	Lj789
Lj789:
	movl	-8(%ebp),%eax
	movb	-14(%ebp),%dl
	movb	%dl,1103(%eax)
	movl	-8(%ebp),%eax
	movb	-12(%ebp),%dl
	movb	%dl,1102(%eax)
Lj780:
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__INITIALIZECODETABLE
ZIPPER_TSHRINKER_$__INITIALIZECODETABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movw	$0,-6(%ebp)
	decw	-6(%ebp)
	.balign 4,0x90
Lj804:
	incw	-6(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-6(%ebp),%eax
	imull	$5,%eax
	leal	(%edx,%eax),%eax
	movw	$-1,(%eax)
	movw	$-1,2(%eax)
	movw	-6(%ebp),%dx
	cmpw	$255,%dx
	jbe	Lj811
	jmp	Lj812
Lj811:
	movb	-6(%ebp),%dl
	movb	%dl,4(%eax)
Lj812:
	movzwl	-6(%ebp),%eax
	cmpl	$257,%eax
	jge	Lj815
	jmp	Lj816
Lj815:
	movl	-4(%ebp),%eax
	movl	48(%eax),%ecx
	movzwl	-6(%ebp),%eax
	movw	-6(%ebp),%dx
	movw	%dx,-514(%ecx,%eax,2)
Lj816:
	cmpw	$8191,-6(%ebp)
	jb	Lj804
	movl	-4(%ebp),%eax
	movw	$257,52(%eax)
	movl	-4(%ebp),%eax
	movb	$0,1101(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__PRUNE$WORD
ZIPPER_TSHRINKER_$__PRUNE$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-4(%ebp),%eax
	imull	$5,%eax
	movw	(%edx,%eax),%ax
	movw	%ax,-10(%ebp)
	jmp	Lj828
	.balign 4,0x90
Lj827:
	movl	-8(%ebp),%eax
	movl	44(%eax),%ecx
	movzwl	-4(%ebp),%eax
	imull	$5,%eax
	movl	-8(%ebp),%edx
	movl	44(%edx),%ebx
	movzwl	-10(%ebp),%edx
	imull	$5,%edx
	movw	2(%ebx,%edx),%dx
	movw	%dx,(%ecx,%eax)
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-10(%ebp),%eax
	imull	$5,%eax
	movw	$-1,2(%edx,%eax)
	movl	-8(%ebp),%ecx
	movswl	-10(%ebp),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%eax
	sarl	$3,%eax
	movzbl	54(%ecx,%eax,1),%ebx
	movswl	-10(%ebp),%eax
	cltd
	movl	$8,%ecx
	idivl	%ecx
	movl	%edx,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	orl	%eax,%ebx
	movb	%bl,%al
	movl	-8(%ebp),%ebx
	movswl	-10(%ebp),%edx
	movl	%edx,%ecx
	sarl	$31,%ecx
	andl	$7,%ecx
	addl	%ecx,%edx
	sarl	$3,%edx
	movb	%al,54(%ebx,%edx,1)
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-4(%ebp),%eax
	imull	$5,%eax
	movw	(%edx,%eax),%ax
	movw	%ax,-10(%ebp)
Lj828:
	movw	-10(%ebp),%ax
	cmpw	$-1,%ax
	jne	Lj838
	jmp	Lj829
Lj838:
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-10(%ebp),%eax
	imull	$5,%eax
	movw	(%edx,%eax),%ax
	cmpw	$-1,%ax
	je	Lj827
	jmp	Lj829
Lj829:
	movw	-10(%ebp),%ax
	cmpw	$-1,%ax
	jne	Lj839
	jmp	Lj840
Lj839:
	movw	-10(%ebp),%dx
	movl	-8(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__PRUNE$WORD
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-10(%ebp),%eax
	imull	$5,%eax
	movw	2(%edx,%eax),%ax
	movw	%ax,-12(%ebp)
	jmp	Lj848
	.balign 4,0x90
Lj847:
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-12(%ebp),%eax
	imull	$5,%eax
	movw	(%edx,%eax),%ax
	cmpw	$-1,%ax
	je	Lj850
	jmp	Lj851
Lj850:
	movl	-8(%ebp),%eax
	movl	44(%eax),%ecx
	movzwl	-10(%ebp),%eax
	imull	$5,%eax
	movl	-8(%ebp),%edx
	movl	44(%edx),%ebx
	movzwl	-12(%ebp),%edx
	imull	$5,%edx
	movw	2(%ebx,%edx),%dx
	movw	%dx,2(%ecx,%eax)
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-12(%ebp),%eax
	imull	$5,%eax
	movw	$-1,2(%edx,%eax)
	movl	-8(%ebp),%ecx
	movswl	-12(%ebp),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%eax
	sarl	$3,%eax
	movzbl	54(%ecx,%eax,1),%ebx
	movswl	-12(%ebp),%eax
	cltd
	movl	$8,%ecx
	idivl	%ecx
	movl	%edx,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	orl	%eax,%ebx
	movb	%bl,%al
	movl	-8(%ebp),%ebx
	movswl	-12(%ebp),%edx
	movl	%edx,%ecx
	sarl	$31,%ecx
	andl	$7,%ecx
	addl	%ecx,%edx
	sarl	$3,%edx
	movb	%al,54(%ebx,%edx,1)
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-10(%ebp),%eax
	imull	$5,%eax
	movw	2(%edx,%eax),%ax
	movw	%ax,-12(%ebp)
	jmp	Lj860
Lj851:
	movw	-12(%ebp),%ax
	movw	%ax,-10(%ebp)
	movw	-10(%ebp),%dx
	movl	-8(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__PRUNE$WORD
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-10(%ebp),%eax
	imull	$5,%eax
	movw	2(%edx,%eax),%ax
	movw	%ax,-12(%ebp)
Lj860:
Lj848:
	movw	-12(%ebp),%ax
	cmpw	$-1,%ax
	jne	Lj847
	jmp	Lj849
Lj849:
Lj840:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__CLEAR_TABLE
ZIPPER_TSHRINKER_$__CLEAR_TABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	54(%eax),%eax
	movb	$0,%cl
	movl	$1024,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movw	$0,-6(%ebp)
	decw	-6(%ebp)
	.balign 4,0x90
Lj879:
	incw	-6(%ebp)
	movw	-6(%ebp),%dx
	movl	-4(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__PRUNE$WORD
	cmpw	$255,-6(%ebp)
	jb	Lj879
	movl	-4(%ebp),%eax
	movw	$8192,52(%eax)
	movw	$8191,-6(%ebp)
	incw	-6(%ebp)
	.balign 4,0x90
Lj888:
	decw	-6(%ebp)
	movl	-4(%ebp),%ecx
	movzwl	-6(%ebp),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%eax
	sarl	$3,%eax
	movzbl	54(%ecx,%eax,1),%ebx
	movzwl	-6(%ebp),%eax
	cltd
	movl	$8,%ecx
	idivl	%ecx
	movl	%edx,%ecx
	movl	$1,%eax
	shll	%cl,%eax
	andl	%eax,%ebx
	testl	%ebx,%ebx
	jne	Lj889
	jmp	Lj890
Lj889:
	movl	-4(%ebp),%eax
	decw	52(%eax)
	movl	-4(%ebp),%eax
	movl	48(%eax),%ecx
	movl	-4(%ebp),%eax
	movzwl	52(%eax),%eax
	movw	-6(%ebp),%dx
	movw	%dx,-514(%ecx,%eax,2)
Lj890:
	cmpw	$257,-6(%ebp)
	ja	Lj888
	movl	-4(%ebp),%eax
	movzwl	52(%eax),%eax
	cmpl	$8191,%eax
	jle	Lj893
	jmp	Lj894
Lj893:
	movl	-4(%ebp),%eax
	movb	$0,1101(%eax)
Lj894:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__TABLE_ADD$WORD$BYTE
ZIPPER_TSHRINKER_$__TABLE_ADD$WORD$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$14,%esp
	movl	%eax,-12(%ebp)
	movw	%dx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-12(%ebp),%eax
	movzwl	52(%eax),%eax
	cmpl	$8191,%eax
	jle	Lj899
	jmp	Lj900
Lj899:
	movl	-12(%ebp),%eax
	movl	48(%eax),%edx
	movl	-12(%ebp),%eax
	movzwl	52(%eax),%eax
	movw	-514(%edx,%eax,2),%ax
	movw	%ax,-14(%ebp)
	movl	-12(%ebp),%eax
	incw	52(%eax)
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-14(%ebp),%eax
	imull	$5,%eax
	movw	$-1,(%edx,%eax)
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-14(%ebp),%eax
	imull	$5,%eax
	movw	$-1,2(%edx,%eax)
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-14(%ebp),%eax
	imull	$5,%eax
	movb	-8(%ebp),%cl
	movb	%cl,4(%edx,%eax)
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-4(%ebp),%eax
	imull	$5,%eax
	movw	(%edx,%eax),%ax
	cmpw	$-1,%ax
	je	Lj909
	jmp	Lj910
Lj909:
	movl	-12(%ebp),%eax
	movl	44(%eax),%ecx
	movzwl	-4(%ebp),%eax
	imull	$5,%eax
	movw	-14(%ebp),%dx
	movw	%dx,(%ecx,%eax)
	jmp	Lj913
Lj910:
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-4(%ebp),%eax
	imull	$5,%eax
	movw	(%edx,%eax),%ax
	movw	%ax,-4(%ebp)
	jmp	Lj917
	.balign 4,0x90
Lj916:
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-4(%ebp),%eax
	imull	$5,%eax
	movw	2(%edx,%eax),%ax
	movw	%ax,-4(%ebp)
Lj917:
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-4(%ebp),%eax
	imull	$5,%eax
	movw	2(%edx,%eax),%ax
	cmpw	$-1,%ax
	jne	Lj916
	jmp	Lj918
Lj918:
	movl	-12(%ebp),%eax
	movl	44(%eax),%ecx
	movzwl	-4(%ebp),%eax
	imull	$5,%eax
	movw	-14(%ebp),%dx
	movw	%dx,2(%ecx,%eax)
Lj913:
Lj900:
	movl	-12(%ebp),%eax
	movzwl	52(%eax),%eax
	cmpl	$8191,%eax
	jg	Lj923
	jmp	Lj924
Lj923:
	movl	-12(%ebp),%eax
	movb	$1,1101(%eax)
Lj924:
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__TABLE_LOOKUP$SMALLINT$BYTE$SMALLINT$$BOOLEAN
ZIPPER_TSHRINKER_$__TABLE_LOOKUP$SMALLINT$BYTE$SMALLINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-12(%ebp)
	movw	%dx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movw	-4(%ebp),%ax
	movw	%ax,-16(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-16(%ebp),%eax
	imull	$5,%eax
	movw	(%edx,%eax),%ax
	cmpw	$-1,%ax
	jne	Lj933
	jmp	Lj934
Lj933:
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-16(%ebp),%eax
	imull	$5,%eax
	movw	(%edx,%eax),%ax
	movw	%ax,-16(%ebp)
	.balign 4,0x90
Lj937:
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-16(%ebp),%eax
	imull	$5,%eax
	movb	4(%edx,%eax),%al
	cmpb	-8(%ebp),%al
	je	Lj940
	jmp	Lj941
Lj940:
	movb	$1,-13(%ebp)
	jmp	Lj939
Lj941:
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-16(%ebp),%eax
	imull	$5,%eax
	movw	2(%edx,%eax),%ax
	cmpw	$-1,%ax
	je	Lj944
	jmp	Lj945
Lj944:
	jmp	Lj939
Lj945:
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-16(%ebp),%eax
	imull	$5,%eax
	movw	2(%edx,%eax),%ax
	movw	%ax,-16(%ebp)
	jmp	Lj937
Lj939:
Lj934:
	cmpb	$0,-13(%ebp)
	jne	Lj948
	jmp	Lj949
Lj948:
	movl	8(%ebp),%edx
	movw	-16(%ebp),%ax
	movw	%ax,(%edx)
	jmp	Lj952
Lj949:
	movl	8(%ebp),%eax
	movw	$-1,(%eax)
Lj952:
	movb	-13(%ebp),%al
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__SHRINK$SMALLINT
ZIPPER_TSHRINKER_$__SHRINK$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$10,%esp
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,1100(%eax)
	jne	Lj957
	jmp	Lj958
Lj957:
	movl	-8(%ebp),%eax
	movb	$0,1102(%eax)
	movl	-8(%ebp),%eax
	movb	$0,1103(%eax)
	movl	-8(%ebp),%eax
	movb	$9,1078(%eax)
	movl	-8(%ebp),%eax
	movzbl	1078(%eax),%ecx
	movl	$1,%eax
	shll	%cl,%eax
	decl	%eax
	movl	-8(%ebp),%edx
	movw	%ax,1080(%edx)
	movw	-4(%ebp),%ax
	movw	%ax,TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE
	movl	-8(%ebp),%eax
	movb	$0,1100(%eax)
	jmp	Lj971
Lj958:
	movw	-4(%ebp),%ax
	cmpw	$-1,%ax
	jne	Lj972
	jmp	Lj973
Lj972:
	movl	-8(%ebp),%eax
	cmpb	$0,1101(%eax)
	jne	Lj974
	jmp	Lj975
Lj974:
	movw	TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE,%dx
	movl	-8(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT
	movl	-8(%ebp),%eax
	movw	$256,%dx
	call	ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT
	movl	-8(%ebp),%eax
	movw	$2,%dx
	call	ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT
	movl	-8(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__CLEAR_TABLE
	movb	-4(%ebp),%cl
	movw	TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE,%dx
	movl	-8(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__TABLE_ADD$WORD$BYTE
	movw	-4(%ebp),%ax
	movw	%ax,TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE
	jmp	Lj998
Lj975:
	leal	-10(%ebp),%eax
	pushl	%eax
	movb	-4(%ebp),%cl
	movw	TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE,%dx
	movl	-8(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__TABLE_LOOKUP$SMALLINT$BYTE$SMALLINT$$BOOLEAN
	testb	%al,%al
	jne	Lj999
	jmp	Lj1000
Lj999:
	movw	-10(%ebp),%ax
	movw	%ax,TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE
	jmp	Lj1011
Lj1000:
	movw	TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE,%dx
	movl	-8(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT
	movb	-4(%ebp),%cl
	movw	TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE,%dx
	movl	-8(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__TABLE_ADD$WORD$BYTE
	movw	-4(%ebp),%ax
	movw	%ax,TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE
	movl	-8(%ebp),%eax
	movl	48(%eax),%edx
	movl	-8(%ebp),%eax
	movzwl	52(%eax),%eax
	movl	-8(%ebp),%ecx
	movw	-514(%edx,%eax,2),%ax
	cmpw	1080(%ecx),%ax
	ja	Lj1026
	jmp	Lj1025
Lj1026:
	movl	-8(%ebp),%eax
	movzbl	1078(%eax),%eax
	cmpl	$13,%eax
	jl	Lj1024
	jmp	Lj1025
Lj1024:
	movl	-8(%ebp),%eax
	movw	$256,%dx
	call	ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT
	movl	-8(%ebp),%eax
	movw	$1,%dx
	call	ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT
	movl	-8(%ebp),%eax
	incb	1078(%eax)
	movl	-8(%ebp),%eax
	movzbl	1078(%eax),%ecx
	movl	$1,%eax
	shll	%cl,%eax
	decl	%eax
	movl	-8(%ebp),%edx
	movw	%ax,1080(%edx)
Lj1025:
Lj1011:
Lj998:
	jmp	Lj1037
Lj973:
	movw	TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE,%dx
	movl	-8(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT
	movl	-8(%ebp),%eax
	movw	$-1,%dx
	call	ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT
	movl	-8(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__FLUSHOUTPUT
Lj1037:
Lj971:
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TSHRINKER_$__PROCESSLINE$ANSISTRING
ZIPPER_TSHRINKER_$__PROCESSLINE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1050
	jmp	Lj1051
Lj1050:
	movl	-8(%ebp),%eax
	movw	$-1,%dx
	call	ZIPPER_TSHRINKER_$__SHRINK$SMALLINT
	jmp	Lj1056
Lj1051:
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	je	Lj1060
	movl	-4(%ebx),%ebx
Lj1060:
	movw	$1,-10(%ebp)
	cmpw	-10(%ebp),%bx
	jb	Lj1058
	decw	-10(%ebp)
	.balign 4,0x90
Lj1059:
	incw	-10(%ebp)
	movl	-8(%ebp),%eax
	incl	1104(%eax)
	movl	-8(%ebp),%eax
	movl	1104(%eax),%eax
	decl	%eax
	movl	-8(%ebp),%ecx
	xorl	%edx,%edx
	divl	1112(%ecx)
	testl	%edx,%edx
	je	Lj1061
	jmp	Lj1062
Lj1061:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	fildq	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	1104(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$0,-16(%ebp)
	fildq	-20(%ebp)
	fdivp	%st,%st(1)
	fldt	_$ZIPPER$_Ld3
	fmulp	%st,%st(1)
	fstpl	-28(%ebp)
	fldl	-28(%ebp)
	subl	$8,%esp
	fstpl	(%esp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
Lj1062:
	movl	-4(%ebp),%edx
	movzwl	-10(%ebp),%eax
	movb	-1(%edx,%eax,1),%dl
	movl	-8(%ebp),%eax
	call	ZIPPER_TCOMPRESSOR_$__UPDC32$BYTE
	movl	-4(%ebp),%edx
	movzwl	-10(%ebp),%eax
	movzbw	-1(%edx,%eax,1),%dx
	movl	-8(%ebp),%eax
	call	ZIPPER_TSHRINKER_$__SHRINK$SMALLINT
	cmpw	-10(%ebp),%bx
	ja	Lj1059
Lj1058:
Lj1056:
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__GETFILEINFO
ZIPPER_TZIPPER_$__GETFILEINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$140,%esp
	movl	%ebx,-140(%ebp)
	movl	%esi,-136(%ebp)
	movl	%eax,-4(%ebp)
	movl	$INIT_SYSUTILS_TSEARCHREC,%edx
	leal	-40(%ebp),%eax
	call	fpc_initialize
	movl	$0,-132(%ebp)
	leal	-56(%ebp),%ecx
	leal	-80(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1079
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-44(%ebp)
	cmpl	-44(%ebp),%ebx
	jb	Lj1083
	decl	-44(%ebp)
	.balign 4,0x90
Lj1084:
	incl	-44(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-44(%ebp),%edx
	call	ZIPPER_TZIPFILEENTRIES_$__GETZ$LONGINT$$TZIPFILEENTRY
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj1093
	jmp	Lj1094
Lj1093:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	je	Lj1095
	jmp	Lj1096
Lj1095:
	movl	-44(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_ZIPPER_SERRMISSINGFILENAME+4,%ecx
	movl	$VMT_ZIPPER_EZIPERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La1:
	movl	%ebp,%ecx
	movl	$La1,%edx
	call	FPC_RAISEEXCEPTION
Lj1096:
	movl	-8(%ebp),%eax
	movl	40(%eax),%esi
	movl	$INIT_SYSUTILS_TSEARCHREC,%edx
	leal	-40(%ebp),%eax
	call	FPC_DECREF
	leal	-40(%ebp),%ecx
	movl	$63,%edx
	movl	%esi,%eax
	call	SYSUTILS_FINDFIRST$ANSISTRING$LONGINT$TSEARCHREC$$LONGINT
	testl	%eax,%eax
	je	Lj1107
	jmp	Lj1108
Lj1107:
	leal	-104(%ebp),%ecx
	leal	-128(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1115
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,60(%edx)
	movl	-40(%ebp),%eax
	call	SYSUTILS_FILEDATETODATETIME$LONGINT$$TDATETIME
	movl	-8(%ebp),%eax
	fstpl	32(%eax)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,28(%edx)
Lj1115:
	call	FPC_POPADDRSTACK
	leal	-40(%ebp),%eax
	call	SYSUTILS_FINDCLOSE$TSEARCHREC
	popl	%eax
	testl	%eax,%eax
	je	Lj1116
	decl	%eax
	testl	%eax,%eax
	je	Lj1117
Lj1117:
	call	FPC_RERAISE
Lj1116:
	jmp	Lj1131
Lj1108:
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	$11,-92(%ebp)
	leal	-92(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_ZIPPER_SERRFILEDOESNOTEXIST+4,%ecx
	movl	$VMT_ZIPPER_EZIPERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La2:
	movl	%ebp,%ecx
	movl	$La2,%edx
	call	FPC_RAISEEXCEPTION
Lj1131:
	jmp	Lj1142
Lj1094:
	leal	-132(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-132(%ebp)
	leal	-132(%ebp),%edx
	movl	-8(%ebp),%eax
	call	ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING
	movl	-132(%ebp),%eax
	testl	%eax,%eax
	je	Lj1143
	jmp	Lj1144
Lj1143:
	movl	-44(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	$0,-92(%ebp)
	leal	-92(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_ZIPPER_SERRMISSINGARCHIVENAME+4,%ecx
	movl	$VMT_ZIPPER_EZIPERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La3:
	movl	%ebp,%ecx
	movl	$La3,%edx
	call	FPC_RAISEEXCEPTION
Lj1144:
	movl	-8(%ebp),%eax
	movl	64(%eax),%eax
	movl	-8(%ebp),%edx
	movl	64(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-8(%ebp),%edx
	movl	%eax,60(%edx)
	movl	-8(%ebp),%eax
	movl	$32,28(%eax)
Lj1142:
	cmpl	-44(%ebp),%ebx
	ja	Lj1084
Lj1083:
Lj1079:
	call	FPC_POPADDRSTACK
	leal	-132(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-132(%ebp)
	movl	$INIT_SYSUTILS_TSEARCHREC,%edx
	leal	-40(%ebp),%eax
	call	fpc_finalize
	popl	%eax
	testl	%eax,%eax
	je	Lj1080
	call	FPC_RERAISE
Lj1080:
	movl	-140(%ebp),%ebx
	movl	-136(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__SETENTRIES$TZIPFILEENTRIES
ZIPPER_TZIPPER_$__SETENTRIES$TZIPFILEENTRIES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1175
	jmp	Lj1176
Lj1175:
	jmp	Lj1173
Lj1176:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
Lj1173:
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__OPENINPUT$TZIPFILEENTRY$$BOOLEAN
ZIPPER_TZIPPER_$__OPENINPUT$TZIPFILEENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1183
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	jne	Lj1186
	jmp	Lj1187
Lj1186:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,36(%edx)
	jmp	Lj1190
Lj1187:
	movl	-4(%ebp),%eax
	call	ZIPPER_TZIPFILEENTRY_$__ISDIRECTORY$$BOOLEAN
	testb	%al,%al
	jne	Lj1191
	jmp	Lj1192
Lj1191:
	movl	$VMT_CLASSES_TSTRINGSTREAM,%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	CLASSES_TSTRINGSTREAM_$__CREATE$ANSISTRING$$TSTRINGSTREAM
	movl	-8(%ebp),%edx
	movl	%eax,36(%edx)
	jmp	Lj1203
Lj1192:
	pushl	$0
	movl	-4(%ebp),%eax
	movl	40(%eax),%ecx
	movl	$VMT_CLASSES_TFILESTREAM,%edx
	movl	$0,%eax
	call	CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM
	movl	-8(%ebp),%edx
	movl	%eax,36(%edx)
Lj1203:
Lj1190:
	movb	$1,-9(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,164(%eax)
	jne	Lj1216
	jmp	Lj1217
Lj1216:
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING
	movl	-56(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	168(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	164(%ebx),%ebx
	call	*%ebx
Lj1217:
Lj1183:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj1184
	call	FPC_RERAISE
Lj1184:
	movb	-9(%ebp),%al
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__CLOSEINPUT$TZIPFILEENTRY
ZIPPER_TZIPPER_$__CLOSEINPUT$TZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	36(%eax),%eax
	cmpl	64(%edx),%eax
	jne	Lj1230
	jmp	Lj1231
Lj1230:
	movl	-8(%ebp),%eax
	leal	36(%eax),%eax
	call	SYSUTILS_FREEANDNIL$formal
	jmp	Lj1234
Lj1231:
	movl	-8(%ebp),%eax
	movl	$0,36(%eax)
Lj1234:
	movl	-8(%ebp),%eax
	call	ZIPPER_TZIPPER_$__DOENDOFFILE
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__STARTZIPFILE$TZIPFILEENTRY
ZIPPER_TZIPPER_$__STARTZIPFILE$TZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	leal	40(%eax),%eax
	movb	$0,%cl
	movl	$30,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-8(%ebp),%eax
	leal	40(%eax),%ebx
	movl	$67324752,(%ebx)
	movw	$10,4(%ebx)
	movw	$0,6(%ebx)
	movw	$1,8(%ebx)
	movl	-4(%ebp),%edx
	subl	$8,%esp
	movl	32(%edx),%eax
	movl	%eax,(%esp)
	movl	36(%edx),%eax
	movl	%eax,4(%esp)
	leal	10(%ebx),%edx
	leal	12(%ebx),%eax
	call	ZIPPER_DATETIMETOZIPDATETIME$TDATETIME$WORD$WORD
	movl	$0,14(%ebx)
	movl	$0,18(%ebx)
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,22(%ebx)
	movw	$0,26(%ebx)
	movw	$0,28(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__UPDATEZIPHEADER$TZIPFILEENTRY$TSTREAM$LONGWORD$WORD$WORD$WORD$$BOOLEAN
ZIPPER_TZIPPER_$__UPDATEZIPHEADER$TZIPFILEENTRY$TSTREAM$LONGWORD$WORD$WORD$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$320,%esp
	movl	%ebx,-320(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-316(%ebp)
	leal	-284(%ebp),%ecx
	leal	-308(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1275
	leal	-316(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-316(%ebp)
	leal	-316(%ebp),%edx
	movl	-4(%ebp),%eax
	call	ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING
	movl	-316(%ebp),%ecx
	leal	-269(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	-12(%ebp),%eax
	leal	40(%eax),%ebx
	movzbw	-269(%ebp),%ax
	movw	%ax,26(%ebx)
	movl	20(%ebp),%eax
	movl	%eax,14(%ebx)
	movl	18(%ebx),%eax
	cmpl	22(%ebx),%eax
	setbb	-13(%ebp)
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj1296
	jmp	Lj1297
Lj1296:
	movw	$0,8(%ebx)
	movl	22(%ebx),%eax
	movl	%eax,18(%ebx)
	jmp	Lj1302
Lj1297:
	movw	16(%ebp),%ax
	movw	%ax,8(%ebx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,18(%ebx)
	movw	6(%ebx),%dx
	movw	8(%ebp),%ax
	orw	%ax,%dx
	movw	%dx,6(%ebx)
	movw	12(%ebp),%ax
	cmpw	4(%ebx),%ax
	ja	Lj1311
	jmp	Lj1312
Lj1311:
	movw	12(%ebp),%ax
	movw	%ax,4(%ebx)
Lj1312:
Lj1302:
	movl	-12(%ebp),%eax
	leal	40(%eax),%edx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	$30,%ecx
	call	CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movzbl	-269(%ebp),%ecx
	leal	-268(%ebp),%edx
	call	CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT
Lj1275:
	call	FPC_POPADDRSTACK
	leal	-316(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-316(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj1276
	call	FPC_RERAISE
Lj1276:
	movb	-13(%ebp),%al
	movl	-320(%ebp),%ebx
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__BUILDZIPDIRECTORY
ZIPPER_TZIPPER_$__BUILDZIPDIRECTORY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$292,%esp
	movl	%ebx,-292(%ebp)
	movl	%eax,-4(%ebp)
	movw	$0,-30(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	pushl	$0
	pushl	$0
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	32(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	movl	-4(%ebp),%eax
	leal	40(%eax),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	$30,%ecx
	call	CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
	.balign 4,0x90
Lj1351:
	movl	-4(%ebp),%eax
	movzwl	66(%eax),%ecx
	leal	-286(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
	movl	-4(%ebp),%eax
	movzwl	66(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	leal	-285(%ebp),%edx
	call	CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	leal	72(%eax),%eax
	movb	$0,%cl
	movl	$46,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-4(%ebp),%eax
	leal	72(%eax),%ebx
	movl	$33639248,(%ebx)
	movl	-4(%ebp),%eax
	movw	44(%eax),%ax
	movw	%ax,4(%ebx)
	movl	-4(%ebp),%eax
	leal	44(%eax),%eax
	leal	6(%ebx),%edx
	movl	$26,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	movw	50(%eax),%ax
	movw	%ax,12(%ebx)
	movl	-4(%ebp),%eax
	movw	52(%eax),%ax
	movw	%ax,14(%ebx)
	movw	$0,32(%ebx)
	movw	$0,34(%ebx)
	movw	$0,36(%ebx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movzwl	-30(%ebp),%edx
	call	ZIPPER_TZIPFILEENTRIES_$__GETZ$LONGINT$$TZIPFILEENTRY
	movl	28(%eax),%eax
	movl	%eax,38(%ebx)
	movl	-20(%ebp),%eax
	movl	%eax,42(%ebx)
	pushl	$0
	pushl	$0
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	$2,%edx
	movl	-4(%ebp),%ecx
	movl	32(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-4(%ebp),%eax
	leal	72(%eax),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	$46,%ecx
	call	CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movzbl	-286(%ebp),%ecx
	leal	-285(%ebp),%edx
	call	CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT
	incw	-30(%ebp)
	movl	-4(%ebp),%eax
	movl	58(%eax),%edx
	movl	$0,%eax
	addl	-12(%ebp),%edx
	adcl	-8(%ebp),%eax
	pushl	%eax
	pushl	%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	32(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	movl	-4(%ebp),%eax
	leal	40(%eax),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	$30,%ecx
	call	CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	cmpl	$33639248,%eax
	je	Lj1353
	jmp	Lj1351
Lj1353:
	pushl	$0
	pushl	$0
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	$2,%edx
	movl	-4(%ebp),%ecx
	movl	32(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-4(%ebp),%eax
	leal	120(%eax),%eax
	movb	$0,%cl
	movl	$22,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-4(%ebp),%eax
	leal	120(%eax),%ebx
	movl	$101010256,(%ebx)
	movw	$0,4(%ebx)
	movw	$0,6(%ebx)
	movw	-30(%ebp),%ax
	movw	%ax,8(%ebx)
	movw	-30(%ebp),%ax
	movw	%ax,10(%ebx)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	subl	-28(%ebp),%eax
	sbbl	-24(%ebp),%edx
	movl	%eax,12(%ebx)
	movl	-28(%ebp),%eax
	movl	%eax,16(%ebx)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj1472
	movl	-4(%eax),%eax
Lj1472:
	movw	%ax,20(%ebx)
	movl	-4(%ebp),%eax
	leal	120(%eax),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	$22,%ecx
	call	CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj1481
	movl	-4(%eax),%eax
Lj1481:
	cmpl	$0,%eax
	jg	Lj1479
	jmp	Lj1480
Lj1479:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj1484
	movl	-4(%ecx),%ecx
Lj1484:
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	call	CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT
Lj1480:
	movl	-292(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__CREATECOMPRESSOR$TZIPFILEENTRY$TSTREAM$TSTREAM$$TCOMPRESSOR
ZIPPER_TZIPPER_$__CREATECOMPRESSOR$TZIPFILEENTRY$TSTREAM$TSTREAM$$TCOMPRESSOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	pushl	8(%ebp)
	movl	-12(%ebp),%eax
	pushl	12(%eax)
	movl	-8(%ebp),%ecx
	movl	$VMT_ZIPPER_TDEFLATER,%edx
	movl	$0,%eax
	movl	$VMT_ZIPPER_TDEFLATER,%ebx
	call	*100(%ebx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	$VMT_ZIPPER_TDEFLATER,%eax
	call	fpc_do_as
	movl	-4(%ebp),%edx
	movl	68(%edx),%edx
	movl	%edx,32(%eax)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__ZIPONEFILE$TZIPFILEENTRY
ZIPPER_TZIPPER_$__ZIPONEFILE$TZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$196,%esp
	movl	%ebx,-196(%ebp)
	movl	%esi,-192(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-28(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1511
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	ZIPPER_TZIPPER_$__OPENINPUT$TZIPFILEENTRY$$BOOLEAN
	leal	-80(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1518
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	ZIPPER_TZIPPER_$__STARTZIPFILE$TZIPFILEENTRY
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	-8(%ebp),%edx
	movl	36(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-8(%ebp),%ecx
	movl	28(%ecx),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	cmpl	%ecx,%edx
	jl	Lj1526
	jg	Lj1527
	cmpl	%ebx,%eax
	jbe	Lj1526
	jmp	Lj1527
Lj1526:
	movl	$VMT_CLASSES_TMEMORYSTREAM,%edx
	movl	$0,%eax
	call	SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	movl	%eax,-24(%ebp)
	jmp	Lj1536
Lj1527:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	leal	-28(%ebp),%ecx
	movl	$_$ZIPPER$_Ld5,%edx
	call	SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING
	pushl	$65280
	movl	-28(%ebp),%ecx
	movl	$VMT_CLASSES_TFILESTREAM,%edx
	movl	$0,%eax
	call	CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM
	movl	%eax,-24(%ebp)
Lj1536:
	leal	-120(%ebp),%ecx
	leal	-144(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1553
	pushl	-24(%ebp)
	movl	-8(%ebp),%eax
	movl	36(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
	movl	%eax,%ebx
	movl	%ebx,%esi
	leal	-160(%ebp),%ecx
	leal	-184(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1569
	movl	-8(%ebp),%edx
	movl	148(%edx),%eax
	movl	%eax,24(%esi)
	movl	152(%edx),%eax
	movl	%eax,28(%esi)
	movl	-8(%ebp),%eax
	movl	144(%eax),%eax
	movl	%eax,20(%esi)
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	12(%esi),%eax
	movl	%eax,-12(%ebp)
	movl	%esi,%eax
	movl	(%eax),%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movw	%ax,-14(%ebp)
	movl	%esi,%eax
	movl	(%eax),%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movw	%ax,-16(%ebp)
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movw	%ax,-18(%ebp)
Lj1569:
	call	FPC_POPADDRSTACK
	movl	%esi,%eax
	call	SYSTEM_TOBJECT_$__FREE
	popl	%eax
	testl	%eax,%eax
	je	Lj1570
	decl	%eax
	testl	%eax,%eax
	je	Lj1571
Lj1571:
	call	FPC_RERAISE
Lj1570:
	pushl	-12(%ebp)
	movzwl	-14(%ebp),%eax
	pushl	%eax
	movzwl	-16(%ebp),%eax
	pushl	%eax
	movzwl	-18(%ebp),%eax
	pushl	%eax
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	ZIPPER_TZIPPER_$__UPDATEZIPHEADER$TZIPFILEENTRY$TSTREAM$LONGWORD$WORD$WORD$WORD$$BOOLEAN
	testb	%al,%al
	jne	Lj1595
	jmp	Lj1596
Lj1595:
	pushl	$0
	pushl	$0
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-24(%ebp),%edx
	call	CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64
	jmp	Lj1617
Lj1596:
	pushl	$0
	pushl	$0
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	36(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	pushl	$0
	pushl	$0
	movl	-8(%ebp),%eax
	movl	36(%eax),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	call	CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64
Lj1617:
Lj1553:
	call	FPC_POPADDRSTACK
	movl	-24(%ebp),%eax
	call	SYSTEM_TOBJECT_$__FREE
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1632
	jmp	Lj1633
Lj1632:
	movl	-28(%ebp),%eax
	call	SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN
Lj1633:
	popl	%eax
	testl	%eax,%eax
	je	Lj1554
	decl	%eax
	testl	%eax,%eax
	je	Lj1555
Lj1555:
	call	FPC_RERAISE
Lj1554:
Lj1518:
	call	FPC_POPADDRSTACK
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	ZIPPER_TZIPPER_$__CLOSEINPUT$TZIPFILEENTRY
	popl	%eax
	testl	%eax,%eax
	je	Lj1519
	decl	%eax
	testl	%eax,%eax
	je	Lj1520
Lj1520:
	call	FPC_RERAISE
Lj1519:
Lj1511:
	call	FPC_POPADDRSTACK
	leal	-28(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-28(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj1512
	call	FPC_RERAISE
Lj1512:
	movl	-196(%ebp),%ebx
	movl	-192(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__ZIPALLFILES
ZIPPER_TZIPPER_$__ZIPALLFILES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	-4(%ebp),%eax
	call	ZIPPER_TZIPPER_$__SAVETOFILE$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__SAVETOFILE$ANSISTRING
ZIPPER_TZIPPER_$__SAVETOFILE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$92,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1654
	pushl	$65280
	movl	-8(%ebp),%eax
	movl	16(%eax),%ecx
	movl	$VMT_CLASSES_TFILESTREAM,%edx
	movl	$0,%eax
	call	CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM
	movl	%eax,-12(%ebp)
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1667
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	ZIPPER_TZIPPER_$__SAVETOSTREAM$TSTREAM
Lj1667:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	SYSUTILS_FREEANDNIL$formal
	popl	%eax
	testl	%eax,%eax
	je	Lj1668
	decl	%eax
	testl	%eax,%eax
	je	Lj1669
Lj1669:
	call	FPC_RERAISE
Lj1668:
Lj1654:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj1655
	call	FPC_RERAISE
Lj1655:
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__SAVETOSTREAM$TSTREAM
ZIPPER_TZIPPER_$__SAVETOSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-8(%ebp),%eax
	call	ZIPPER_TZIPPER_$__CHECKENTRIES$$LONGINT
	testl	%eax,%eax
	je	Lj1681
	jmp	Lj1682
Lj1681:
	jmp	Lj1677
Lj1682:
	movl	-8(%ebp),%eax
	movb	$1,8(%eax)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1687
	movl	-8(%ebp),%eax
	call	ZIPPER_TZIPPER_$__GETFILEINFO
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1696
	decl	-12(%ebp)
	.balign 4,0x90
Lj1697:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	call	ZIPPER_TZIPFILEENTRIES_$__GETZ$LONGINT$$TZIPFILEENTRY
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	incl	-16(%ebp)
	cmpl	-12(%ebp),%ebx
	jg	Lj1697
Lj1696:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1708
	jmp	Lj1709
Lj1708:
	movl	-8(%ebp),%eax
	call	ZIPPER_TZIPPER_$__BUILDZIPDIRECTORY
Lj1709:
Lj1687:
	call	FPC_POPADDRSTACK
	movl	-8(%ebp),%eax
	movb	$0,8(%eax)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%edx
	movl	24(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1715
	decl	-12(%ebp)
	.balign 4,0x90
Lj1716:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT
	movl	%eax,%edx
	decl	%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	CLASSES_TCOLLECTION_$__DELETE$LONGINT
	cmpl	-12(%ebp),%ebx
	jg	Lj1716
Lj1715:
	popl	%eax
	testl	%eax,%eax
	je	Lj1688
	decl	%eax
	testl	%eax,%eax
	je	Lj1689
Lj1689:
	call	FPC_RERAISE
Lj1688:
Lj1677:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__SETBUFSIZE$LONGWORD
ZIPPER_TZIPPER_$__SETBUFSIZE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj1727
	jmp	Lj1728
Lj1727:
	movl	RESSTR_ZIPPER_SERRBUFSIZECHANGE+4,%ecx
	movl	$VMT_ZIPPER_EZIPERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La4:
	movl	%ebp,%ecx
	movl	$La4,%edx
	call	FPC_RAISEEXCEPTION
Lj1728:
	movl	-4(%ebp),%eax
	cmpl	$16384,%eax
	jae	Lj1735
	jmp	Lj1736
Lj1735:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
Lj1736:
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__SETFILENAME$ANSISTRING
ZIPPER_TZIPPER_$__SETFILENAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1741
	movl	-8(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj1744
	jmp	Lj1745
Lj1744:
	movl	RESSTR_ZIPPER_SERRFILECHANGE+4,%ecx
	movl	$VMT_ZIPPER_EZIPERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La5:
	movl	%ebp,%ecx
	movl	$La5,%edx
	call	FPC_RAISEEXCEPTION
Lj1745:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	leal	16(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,16(%ebx)
Lj1741:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj1742
	call	FPC_RERAISE
Lj1742:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__ZIPFILES$ANSISTRING$TSTRINGS
ZIPPER_TZIPPER_$__ZIPFILES$ANSISTRING$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1756
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	leal	16(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,16(%ebx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	ZIPPER_TZIPPER_$__ZIPFILES$TSTRINGS
Lj1756:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj1757
	call	FPC_RERAISE
Lj1757:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__ZIPFILES$TSTRINGS
ZIPPER_TZIPPER_$__ZIPFILES$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	24(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__ZIPFILES$ANSISTRING$TZIPFILEENTRIES
ZIPPER_TZIPPER_$__ZIPFILES$ANSISTRING$TZIPFILEENTRIES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1775
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	leal	16(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,16(%ebx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	ZIPPER_TZIPPER_$__ZIPFILES$TZIPFILEENTRIES
Lj1775:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj1776
	call	FPC_RERAISE
Lj1776:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__ZIPFILES$TZIPFILEENTRIES
ZIPPER_TZIPPER_$__ZIPFILES$TZIPFILEENTRIES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__DOENDOFFILE
ZIPPER_TZIPPER_$__DOENDOFFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	62(%eax),%eax
	cmpl	$0,%eax
	ja	Lj1794
	jmp	Lj1795
Lj1794:
	movl	-4(%ebp),%eax
	movl	62(%eax),%ecx
	movl	$0,%ebx
	movl	-4(%ebp),%eax
	movl	58(%eax),%edx
	movl	$0,%eax
	subl	%edx,%ecx
	sbbl	%eax,%ebx
	movl	%ecx,-20(%ebp)
	movl	%ebx,-16(%ebp)
	fildq	-20(%ebp)
	flds	_$ZIPPER$_Ld6
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	62(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$0,-16(%ebp)
	fildq	-20(%ebp)
	fdivrp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj1798
Lj1795:
	fldz
	fstpl	-12(%ebp)
Lj1798:
	movl	-4(%ebp),%eax
	cmpl	$0,156(%eax)
	jne	Lj1801
	jmp	Lj1802
Lj1801:
	subl	$8,%esp
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	160(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	156(%ecx),%ecx
	call	*%ecx
Lj1802:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__CREATE$$TZIPPER
ZIPPER_TZIPPER_$__CREATE$$TZIPPER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1811
	jmp	Lj1812
Lj1811:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj1812:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1817
	jmp	Lj1818
Lj1817:
	jmp	Lj1809
Lj1818:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1821
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1825
	movl	-8(%ebp),%eax
	movl	$16384,12(%eax)
	movl	-8(%ebp),%eax
	movl	$262144,28(%eax)
	movl	$VMT_CLASSES_TSTRINGLIST,%edx
	movl	$0,%eax
	call	SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	movl	-8(%ebp),%edx
	movl	%eax,24(%edx)
	movl	$VMT_ZIPPER_TZIPFILEENTRY,%ecx
	movl	$VMT_ZIPPER_TZIPFILEENTRIES,%edx
	movl	$0,%eax
	call	CLASSES_TCOLLECTION_$__CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	movl	$1,144(%eax)
Lj1825:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj1826
	call	FPC_RERAISE
Lj1826:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1850
	jmp	Lj1849
Lj1850:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1848
	jmp	Lj1849
Lj1848:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1849:
Lj1821:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj1823
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1854
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1855
	jmp	Lj1856
Lj1855:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1856:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj1854:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj1853
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj1853:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj1823
Lj1823:
Lj1809:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__CHECKENTRIES$$LONGINT
ZIPPER_TZIPPER_$__CHECKENTRIES$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1863
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	movl	24(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1867
	decl	-12(%ebp)
	.balign 4,0x90
Lj1868:
	incl	-12(%ebp)
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	leal	-56(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%esi
	movl	24(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$ANSISTRING$$TZIPFILEENTRY
	cmpl	-12(%ebp),%ebx
	jg	Lj1868
Lj1867:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT
	movl	%eax,-8(%ebp)
Lj1863:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj1864
	call	FPC_RERAISE
Lj1864:
	movl	-8(%ebp),%eax
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__CLEAR
ZIPPER_TZIPPER_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	CLASSES_TCOLLECTION_$__CLEAR
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	movl	24(%edx),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPPER_$__DESTROY
ZIPPER_TZIPPER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1893
	jmp	Lj1894
Lj1893:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1894:
	movl	-8(%ebp),%eax
	call	ZIPPER_TZIPPER_$__CLEAR
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	SYSUTILS_FREEANDNIL$formal
	movl	-8(%ebp),%eax
	leal	24(%eax),%eax
	call	SYSUTILS_FREEANDNIL$formal
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	SYSTEM_TOBJECT_$__DESTROY
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1909
	jmp	Lj1908
Lj1909:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1907
	jmp	Lj1908
Lj1907:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1908:
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__OPENINPUT
ZIPPER_TUNZIPPER_$__OPENINPUT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,28(%eax)
	jne	Lj1914
	jmp	Lj1915
Lj1914:
	movl	-4(%ebp),%eax
	leal	64(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%ebx
	call	*%ebx
Lj1915:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj1922
	jmp	Lj1923
Lj1922:
	pushl	$32
	movl	-4(%ebp),%eax
	movl	44(%eax),%ecx
	movl	$VMT_CLASSES_TFILESTREAM,%edx
	movl	$0,%eax
	call	CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM
	movl	-4(%ebp),%edx
	movl	%eax,64(%edx)
Lj1923:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__OPENOUTPUT$ANSISTRING$TSTREAM$TFULLZIPFILEENTRY$$BOOLEAN
ZIPPER_TUNZIPPER_$__OPENOUTPUT$ANSISTRING$TSTREAM$TFULLZIPFILEENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	movl	%edi,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	$0,-20(%ebp)
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1936
	leal	-52(%ebp),%edi
	movl	$TC_SYSTEM_ALLOWDIRECTORYSEPARATORS,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	$TC_SYSTEM_ALLOWDIRECTORYSEPARATORS,%edi
	movl	$_$ZIPPER$_Ld7,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	-12(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj1949
	jmp	Lj1950
Lj1949:
	pushl	8(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	12(%ebx),%ebx
	call	*%ebx
Lj1950:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1959
	jmp	Lj1960
Lj1959:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1961
	jmp	Lj1962
Lj1961:
	movl	-20(%ebp),%eax
	call	SYSUTILS_FORCEDIRECTORIES$ANSISTRING$$BOOLEAN
Lj1962:
	movl	$TC_SYSTEM_ALLOWDIRECTORYSEPARATORS,%edi
	leal	-52(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	pushl	$65280
	movl	-4(%ebp),%ecx
	movl	$VMT_CLASSES_TFILESTREAM,%edx
	movl	$0,%eax
	call	CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
Lj1960:
	movl	$TC_SYSTEM_ALLOWDIRECTORYSEPARATORS,%edi
	leal	-52(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movb	$1,-13(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,192(%eax)
	jne	Lj1981
	jmp	Lj1982
Lj1981:
	movl	-12(%ebp),%eax
	movl	196(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	192(%ebx),%ebx
	call	*%ebx
Lj1982:
Lj1936:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj1937
	call	FPC_RERAISE
Lj1937:
	movb	-13(%ebp),%al
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	movl	-96(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__CLOSEOUTPUT$TFULLZIPFILEENTRY$TSTREAM
ZIPPER_TUNZIPPER_$__CLOSEOUTPUT$TFULLZIPFILEENTRY$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,20(%eax)
	jne	Lj1997
	jmp	Lj1998
Lj1997:
	pushl	-4(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	20(%ebx),%ebx
	call	*%ebx
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj2009
Lj1998:
	movl	-8(%ebp),%eax
	call	SYSUTILS_FREEANDNIL$formal
Lj2009:
	movl	-12(%ebp),%eax
	call	ZIPPER_TUNZIPPER_$__DOENDOFFILE
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__CLOSEINPUT
ZIPPER_TUNZIPPER_$__CLOSEINPUT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj2016
	jmp	Lj2017
Lj2016:
	movl	-4(%ebp),%eax
	leal	64(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
Lj2017:
	movl	-4(%ebp),%eax
	leal	64(%eax),%eax
	call	SYSUTILS_FREEANDNIL$formal
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__READZIPHEADER$TFULLZIPFILEENTRY$WORD
ZIPPER_TUNZIPPER_$__READZIPHEADER$TFULLZIPFILEENTRY$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2028
	movl	-4(%ebp),%eax
	pushl	52(%eax)
	pushl	48(%eax)
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ecx
	movl	64(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-12(%ebp),%eax
	leal	68(%eax),%edx
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	movl	$30,%ecx
	call	CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
	movl	-12(%ebp),%eax
	leal	68(%eax),%ebx
	movzwl	26(%ebx),%edx
	leal	-16(%ebp),%eax
	call	fpc_ansistr_setlength
	leal	-16(%ebp),%eax
	call	fpc_ansistr_unique
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	movzwl	26(%ebx),%ecx
	call	CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
	movzwl	28(%ebx),%edx
	movl	$0,%eax
	pushl	%eax
	pushl	%edx
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	movl	$1,%edx
	movl	-12(%ebp),%ecx
	movl	64(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-16(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%esi
	leal	24(%esi),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-16(%ebp),%eax
	movl	%eax,24(%esi)
	movl	-16(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%esi
	leal	40(%esi),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-16(%ebp),%eax
	movl	%eax,40(%esi)
	movl	-4(%ebp),%eax
	movl	22(%ebx),%edx
	movl	%edx,60(%eax)
	leal	-24(%ebp),%ecx
	movw	10(%ebx),%dx
	movw	12(%ebx),%ax
	call	ZIPPER_ZIPDATETIMETODATETIME$WORD$WORD$TDATETIME
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-20(%ebp),%eax
	movl	%eax,36(%edx)
	movl	14(%ebx),%eax
	testl	%eax,%eax
	jne	Lj2077
	jmp	Lj2078
Lj2077:
	movl	-4(%ebp),%eax
	movl	14(%ebx),%edx
	movl	%edx,80(%eax)
Lj2078:
	movl	-8(%ebp),%edx
	movw	8(%ebx),%ax
	movw	%ax,(%edx)
Lj2028:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj2029
	call	FPC_RERAISE
Lj2029:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
ZIPPER_FINDENDHEADER$TSTREAM$END_OF_CENTRAL_DIR_TYPE$INT64$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	subl	$22,%eax
	sbbl	$0,%edx
	movl	-12(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jl	Lj2097
	jg	Lj2098
	cmpl	$0,%edx
	jb	Lj2097
	jmp	Lj2098
Lj2097:
	movl	-12(%ebp),%eax
	movl	$-1,(%eax)
	movl	$-1,4(%eax)
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$22,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	jmp	Lj2089
Lj2098:
	movl	-12(%ebp),%eax
	pushl	4(%eax)
	pushl	(%eax)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$22,%ecx
	call	CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$101010256,%eax
	je	Lj2121
	jmp	Lj2120
Lj2121:
	movl	-8(%ebp),%eax
	movzwl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj2119
	jmp	Lj2120
Lj2119:
	jmp	Lj2089
Lj2120:
	movl	$65686,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-20(%ebp),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	cmpl	%ecx,%edx
	jl	Lj2124
	jg	Lj2125
	cmpl	%ebx,%eax
	jb	Lj2124
	jmp	Lj2125
Lj2124:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-20(%ebp)
Lj2125:
	movl	-20(%ebp),%eax
	call	SYSTEM_GETMEM$LONGWORD$$POINTER
	movl	%eax,-16(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2136
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-20(%ebp),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	subl	%ebx,%eax
	sbbl	%ecx,%edx
	pushl	%edx
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
	movl	-20(%ebp),%eax
	subl	$22,%eax
	movl	%eax,-24(%ebp)
	cmpl	$0,-24(%ebp)
	jl	Lj2155
	incl	-24(%ebp)
	.balign 4,0x90
Lj2156:
	decl	-24(%ebp)
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	incl	%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$8,%eax
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%ecx
	movzbl	(%edx,%ecx,1),%edx
	orl	%edx,%eax
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%edx
	addl	$2,%edx
	movzbl	(%ecx,%edx,1),%edx
	shll	$16,%edx
	orl	%edx,%eax
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%edx
	addl	$3,%edx
	movzbl	(%ecx,%edx,1),%edx
	shll	$24,%edx
	orl	%edx,%eax
	cmpl	$101010256,%eax
	je	Lj2157
	jmp	Lj2158
Lj2157:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	-8(%ebp),%edx
	movl	$22,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$101010256,%eax
	je	Lj2167
	jmp	Lj2166
Lj2167:
	movl	-24(%ebp),%edx
	addl	$22,%edx
	movl	-8(%ebp),%eax
	movzwl	20(%eax),%eax
	addl	%eax,%edx
	cmpl	-20(%ebp),%edx
	je	Lj2165
	jmp	Lj2166
Lj2165:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-20(%ebp),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	subl	%ebx,%eax
	sbbl	%ecx,%edx
	movl	-24(%ebp),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	addl	%ebx,%eax
	adcl	%ecx,%edx
	movl	-12(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	addl	$22,%edx
	adcl	$0,%eax
	pushl	%eax
	pushl	%edx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-8(%ebp),%eax
	movzwl	20(%eax),%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	%eax,%edx
	movl	8(%ebp),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj2188
	movl	-4(%ecx),%ecx
Lj2188:
	movl	-4(%ebp),%eax
	call	CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
	jmp	Lj2139
Lj2166:
Lj2158:
	cmpl	$0,-24(%ebp)
	jg	Lj2156
Lj2155:
	movl	-12(%ebp),%eax
	movl	$-1,(%eax)
	movl	$-1,4(%eax)
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$22,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
Lj2136:
	call	FPC_POPADDRSTACK
	movl	-16(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	popl	%eax
	testl	%eax,%eax
	je	Lj2137
	decl	%eax
	testl	%eax,%eax
	je	Lj2138
	decl	%eax
	testl	%eax,%eax
	je	Lj2089
Lj2138:
	call	FPC_RERAISE
Lj2139:
	popl	%eax
	pushl	$2
	jmp	Lj2136
Lj2137:
Lj2089:
	movl	-68(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__READZIPDIRECTORY
ZIPPER_TUNZIPPER_$__READZIPDIRECTORY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$100,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%edi,-92(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-40(%ebp)
	leal	-52(%ebp),%ecx
	leal	-76(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2203
	movl	-4(%ebp),%ebx
	leal	52(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	52(%ebx),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	leal	148(%eax),%edx
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	leal	-16(%ebp),%ecx
	call	ZIPPER_FINDENDHEADER$TSTREAM$END_OF_CENTRAL_DIR_TYPE$INT64$ANSISTRING
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj2214
	jg	Lj2215
	cmpl	$0,%eax
	jb	Lj2214
	jmp	Lj2215
Lj2214:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	$11,-88(%ebp)
	leal	-88(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_ZIPPER_SERRCORRUPTZIP+4,%ecx
	movl	$VMT_ZIPPER_EZIPERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La6:
	movl	%ebp,%ecx
	movl	$La6,%edx
	call	FPC_RAISEEXCEPTION
Lj2215:
	movl	-4(%ebp),%eax
	movl	164(%eax),%edx
	movl	$0,%eax
	movl	%edx,-24(%ebp)
	movl	%eax,-20(%ebp)
	pushl	-20(%ebp)
	pushl	-24(%ebp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	64(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	call	CLASSES_TCOLLECTION_$__CLEAR
	movl	-4(%ebp),%eax
	movzwl	156(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jb	Lj2237
	decl	-8(%ebp)
	.balign 4,0x90
Lj2238:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	leal	100(%eax),%edx
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	$46,%ecx
	call	CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
	movl	-4(%ebp),%eax
	leal	100(%eax),%eax
	movl	%eax,%esi
	movl	(%esi),%eax
	cmpl	$33639248,%eax
	jne	Lj2247
	jmp	Lj2248
Lj2247:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	$11,-88(%ebp)
	leal	-88(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_ZIPPER_SERRCORRUPTZIP+4,%ecx
	movl	$VMT_ZIPPER_EZIPERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La7:
	movl	%ebp,%ecx
	movl	$La7,%edx
	call	FPC_RAISEEXCEPTION
Lj2248:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	call	CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM
	movl	%eax,%edx
	movl	$VMT_ZIPPER_TFULLZIPFILEENTRY,%eax
	call	fpc_do_as
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	42(%esi),%edx
	movl	$0,%ecx
	movl	%edx,48(%eax)
	movl	%ecx,52(%eax)
	movzwl	28(%esi),%edx
	leal	-40(%ebp),%eax
	call	fpc_ansistr_setlength
	leal	-40(%ebp),%eax
	call	fpc_ansistr_unique
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movzwl	28(%esi),%ecx
	call	CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
	movl	-40(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-28(%ebp),%edi
	leal	24(%edi),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-40(%ebp),%eax
	movl	%eax,24(%edi)
	movl	-28(%ebp),%eax
	movl	24(%esi),%edx
	movl	%edx,60(%eax)
	movl	-28(%ebp),%edx
	movl	20(%esi),%eax
	movl	%eax,72(%edx)
	movl	-28(%ebp),%edx
	movl	16(%esi),%eax
	movl	%eax,80(%edx)
	movl	-28(%ebp),%edx
	movzwl	4(%esi),%eax
	shrl	$8,%eax
	movb	%al,56(%edx)
	movl	-28(%ebp),%eax
	movzbl	56(%eax),%eax
	cmpl	$3,%eax
	je	Lj2291
	jmp	Lj2292
Lj2291:
	movl	-28(%ebp),%edx
	movl	38(%esi),%eax
	shrl	$16,%eax
	movl	%eax,28(%edx)
	jmp	Lj2295
Lj2292:
	movl	-28(%ebp),%edx
	movl	38(%esi),%eax
	movl	%eax,28(%edx)
Lj2295:
	leal	-36(%ebp),%ecx
	movw	12(%esi),%dx
	movw	14(%esi),%ax
	call	ZIPPER_ZIPDATETIMETODATETIME$WORD$WORD$TDATETIME
	movl	-28(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-32(%ebp),%eax
	movl	%eax,36(%edx)
	movzwl	30(%esi),%edx
	movzwl	32(%esi),%eax
	addl	%eax,%edx
	movl	$0,%eax
	pushl	%eax
	pushl	%edx
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ecx
	movl	64(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	cmpl	-8(%ebp),%ebx
	ja	Lj2238
Lj2237:
Lj2203:
	call	FPC_POPADDRSTACK
	leal	-40(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-40(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj2204
	call	FPC_RERAISE
Lj2204:
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	movl	-92(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__CREATEDECOMPRESSOR$TZIPFILEENTRY$WORD$TSTREAM$TSTREAM$$TDECOMPRESSOR
ZIPPER_TUNZIPPER_$__CREATEDECOMPRESSOR$TZIPFILEENTRY$WORD$TSTREAM$TSTREAM$$TDECOMPRESSOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movw	-8(%ebp),%ax
	cmpw	$8,%ax
	jb	Lj2321
	subw	$8,%ax
	je	Lj2322
	jmp	Lj2321
Lj2322:
	pushl	8(%ebp)
	movl	-12(%ebp),%eax
	pushl	40(%eax)
	movl	12(%ebp),%ecx
	movl	$VMT_ZIPPER_TINFLATER,%edx
	movl	$0,%eax
	movl	$VMT_ZIPPER_TINFLATER,%ebx
	call	*100(%ebx)
	movl	%eax,-16(%ebp)
	jmp	Lj2320
Lj2321:
	movzwl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$0,-24(%ebp)
	leal	-24(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_ZIPPER_SERRUNSUPPORTEDCOMPRESSIONFORMAT+4,%ecx
	movl	$VMT_ZIPPER_EZIPERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La8:
	movl	%ebp,%ecx
	movl	$La8,%edx
	call	FPC_RAISEEXCEPTION
Lj2320:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__UNZIPONEFILE$TFULLZIPFILEENTRY
ZIPPER_TUNZIPPER_$__UNZIPONEFILE$TFULLZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$132,%esp
	movl	%ebx,-132(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-128(%ebp)
	movl	$0,-84(%ebp)
	leal	-52(%ebp),%ecx
	leal	-76(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2349
	leal	-22(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	ZIPPER_TUNZIPPER_$__READZIPHEADER$TFULLZIPFILEENTRY$WORD
	movl	-4(%ebp),%ebx
	movl	40(%ebx),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-32(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	40(%ebx),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj2360
	jmp	Lj2361
Lj2360:
	movb	$1,-38(%ebp)
	jmp	Lj2362
Lj2361:
	movb	$0,-38(%ebp)
Lj2362:
	movb	-38(%ebp),%al
	testb	%al,%al
	je	Lj2365
	jmp	Lj2364
Lj2365:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	jne	Lj2363
	jmp	Lj2364
Lj2363:
	leal	-84(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-84(%ebp)
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	leal	-84(%ebp),%edx
	call	SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
	movl	-84(%ebp),%edx
	movl	-32(%ebp),%ecx
	leal	-32(%ebp),%eax
	call	fpc_ansistr_concat
Lj2364:
	movl	-4(%ebp),%eax
	call	ZIPPER_TZIPFILEENTRY_$__ISLINK$$BOOLEAN
	movb	%al,-37(%ebp)
	cmpb	$0,-37(%ebp)
	jne	Lj2382
	jmp	Lj2381
Lj2382:
	movb	-38(%ebp),%al
	testb	%al,%al
	je	Lj2380
	jmp	Lj2381
Lj2380:
	movb	$0,-37(%ebp)
Lj2381:
	cmpb	$0,-38(%ebp)
	jne	Lj2385
	jmp	Lj2386
Lj2385:
	leal	-96(%ebp),%ecx
	leal	-120(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2387
	pushl	-4(%ebp)
	leal	-36(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-8(%ebp),%eax
	call	ZIPPER_TUNZIPPER_$__OPENOUTPUT$ANSISTRING$TSTREAM$TFULLZIPFILEENTRY$$BOOLEAN
	movb	-37(%ebp),%al
	testb	%al,%al
	je	Lj2401
	jmp	Lj2400
Lj2401:
	movl	-4(%ebp),%eax
	call	ZIPPER_TZIPFILEENTRY_$__ISDIRECTORY$$BOOLEAN
	testb	%al,%al
	je	Lj2399
	jmp	Lj2400
Lj2399:
	movl	-36(%ebp),%edx
	movl	%ebp,%eax
	call	ZIPPER_TUNZIPPER_$_UNZIPONEFILE$TFULLZIPFILEENTRY_DOUNZIP$TSTREAM
Lj2400:
Lj2387:
	call	FPC_POPADDRSTACK
	leal	-36(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	ZIPPER_TUNZIPPER_$__CLOSEOUTPUT$TFULLZIPFILEENTRY$TSTREAM
	popl	%eax
	testl	%eax,%eax
	je	Lj2388
	decl	%eax
	testl	%eax,%eax
	je	Lj2389
Lj2389:
	call	FPC_RERAISE
Lj2388:
	jmp	Lj2414
Lj2386:
	cmpb	$0,-37(%ebp)
	jne	Lj2415
	jmp	Lj2416
Lj2415:
	jmp	Lj2417
Lj2416:
	movl	-4(%ebp),%eax
	call	ZIPPER_TZIPFILEENTRY_$__ISDIRECTORY$$BOOLEAN
	testb	%al,%al
	jne	Lj2418
	jmp	Lj2419
Lj2418:
	movl	-32(%ebp),%eax
	call	SYSUTILS_CREATEDIR$ANSISTRING$$BOOLEAN
	jmp	Lj2424
Lj2419:
	leal	-96(%ebp),%ecx
	leal	-120(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2425
	pushl	-4(%ebp)
	leal	-36(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-8(%ebp),%eax
	call	ZIPPER_TUNZIPPER_$__OPENOUTPUT$ANSISTRING$TSTREAM$TFULLZIPFILEENTRY$$BOOLEAN
	movl	-36(%ebp),%edx
	movl	%ebp,%eax
	call	ZIPPER_TUNZIPPER_$_UNZIPONEFILE$TFULLZIPFILEENTRY_DOUNZIP$TSTREAM
Lj2425:
	call	FPC_POPADDRSTACK
	leal	-36(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	ZIPPER_TUNZIPPER_$__CLOSEOUTPUT$TFULLZIPFILEENTRY$TSTREAM
	popl	%eax
	testl	%eax,%eax
	je	Lj2426
	decl	%eax
	testl	%eax,%eax
	je	Lj2427
Lj2427:
	call	FPC_RERAISE
Lj2426:
Lj2424:
Lj2417:
Lj2414:
	movb	-38(%ebp),%al
	testb	%al,%al
	je	Lj2447
	jmp	Lj2448
Lj2447:
	movl	-4(%ebp),%eax
	subl	$8,%esp
	movl	32(%eax),%edx
	movl	%edx,(%esp)
	movl	36(%eax),%eax
	movl	%eax,4(%esp)
	call	SYSUTILS_DATETIMETOFILEDATE$TDATETIME$$LONGINT
	movl	%eax,%edx
	movl	-32(%ebp),%eax
	call	SYSUTILS_FILESETDATE$ANSISTRING$LONGINT$$LONGINT
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	jne	Lj2455
	jmp	Lj2456
Lj2455:
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	movzbl	56(%eax),%eax
	testl	%eax,%eax
	je	Lj2459
	jmp	Lj2460
Lj2459:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-20(%ebp)
Lj2460:
	movl	-4(%ebp),%eax
	movzbl	56(%eax),%eax
	cmpl	$3,%eax
	je	Lj2463
	jmp	Lj2464
Lj2463:
	leal	-84(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-84(%ebp)
	leal	-128(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-128(%ebp)
	leal	-128(%ebp),%edx
	movl	-4(%ebp),%eax
	call	ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING
	movl	-128(%ebp),%eax
	leal	-84(%ebp),%edx
	call	SYSUTILS_EXTRACTFILENAME$ANSISTRING$$ANSISTRING
	movl	-84(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	28(%edx),%edx
	call	ZIPPER_ZIPUNIXATTRSTOFATATTRS$ANSISTRING$LONGINT$$LONGINT
	movl	%eax,-20(%ebp)
Lj2464:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2479
	jmp	Lj2480
Lj2479:
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%eax
	call	SYSUTILS_FILESETATTR$ANSISTRING$LONGINT$$LONGINT
Lj2480:
Lj2456:
Lj2448:
Lj2349:
	call	FPC_POPADDRSTACK
	leal	-128(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-128(%ebp)
	leal	-84(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-84(%ebp)
	leal	-32(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-32(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj2350
	call	FPC_RERAISE
Lj2350:
	movl	-132(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
ZIPPER_TUNZIPPER_$_UNZIPONEFILE$TFULLZIPFILEENTRY_DOUNZIP$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$108,%esp
	movl	%ebx,-108(%ebp)
	movl	%esi,-104(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-100(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2491
	movl	-8(%ebp),%eax
	movzwl	-22(%eax),%eax
	testl	%eax,%eax
	je	Lj2494
	jmp	Lj2495
Lj2494:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	86(%eax),%eax
	testl	%eax,%eax
	jne	Lj2496
	jmp	Lj2497
Lj2496:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	86(%eax),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	64(%eax),%edx
	movl	-4(%ebp),%eax
	call	CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64
	movl	-8(%ebp),%ecx
	movl	%eax,-16(%ecx)
	movl	%edx,-12(%ecx)
	jmp	Lj2506
Lj2497:
	movl	-8(%ebp),%eax
	movl	$0,-16(%eax)
	movl	$0,-12(%eax)
Lj2506:
	jmp	Lj2509
Lj2495:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	pushl	64(%eax)
	pushl	-4(%ebp)
	movl	-8(%ebp),%eax
	movw	-22(%eax),%cx
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-8(%ebp),%ebx
	movl	-8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
	movl	%eax,%ebx
	movl	%ebx,%esi
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2524
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	176(%eax),%edx
	movl	%edx,24(%esi)
	movl	180(%eax),%eax
	movl	%eax,28(%esi)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	172(%eax),%eax
	movl	%eax,20(%esi)
	movl	%esi,%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	movl	80(%eax),%eax
	cmpl	12(%esi),%eax
	jne	Lj2534
	jmp	Lj2535
Lj2534:
	leal	-100(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-100(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	leal	-100(%ebp),%edx
	call	ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING
	movl	-100(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$11,-96(%ebp)
	leal	-96(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_ZIPPER_SERRINVALIDCRC+4,%ecx
	movl	$VMT_ZIPPER_EZIPERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La9:
	movl	%ebp,%ecx
	movl	$La9,%edx
	call	FPC_RAISEEXCEPTION
Lj2535:
Lj2524:
	call	FPC_POPADDRSTACK
	movl	%esi,%eax
	call	SYSTEM_TOBJECT_$__FREE
	popl	%eax
	testl	%eax,%eax
	je	Lj2525
	decl	%eax
	testl	%eax,%eax
	je	Lj2526
Lj2526:
	call	FPC_RERAISE
Lj2525:
Lj2509:
Lj2491:
	call	FPC_POPADDRSTACK
	leal	-100(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-100(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj2492
	call	FPC_RERAISE
Lj2492:
	movl	-108(%ebp),%ebx
	movl	-104(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__UNZIPALLFILES
ZIPPER_TUNZIPPER_$__UNZIPALLFILES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$144,%esp
	movl	%ebx,-144(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-140(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2554
	movl	-4(%ebp),%eax
	movb	$1,36(%eax)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2559
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	-4(%ebp),%edx
	movl	60(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	testl	%eax,%eax
	seteb	-13(%ebp)
	movl	-4(%ebp),%eax
	call	ZIPPER_TUNZIPPER_$__OPENINPUT
	leal	-108(%ebp),%ecx
	leal	-132(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2569
	movl	-4(%ebp),%eax
	call	ZIPPER_TUNZIPPER_$__READZIPDIRECTORY
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	call	CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2576
	decl	-12(%ebp)
	.balign 4,0x90
Lj2577:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	-12(%ebp),%edx
	call	ZIPPER_TFULLZIPFILEENTRIES_$__GETFZ$LONGINT$$TFULLZIPFILEENTRY
	movl	%eax,-8(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj2586
	jmp	Lj2588
Lj2588:
	leal	-140(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-140(%ebp)
	leal	-140(%ebp),%edx
	movl	-8(%ebp),%eax
	call	ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING
	movl	-140(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	60(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*200(%ecx)
	cmpl	$-1,%eax
	jne	Lj2586
	jmp	Lj2587
Lj2586:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
Lj2587:
	cmpl	-12(%ebp),%ebx
	jg	Lj2577
Lj2576:
Lj2569:
	call	FPC_POPADDRSTACK
	movl	-4(%ebp),%eax
	call	ZIPPER_TUNZIPPER_$__CLOSEINPUT
	popl	%eax
	testl	%eax,%eax
	je	Lj2570
	decl	%eax
	testl	%eax,%eax
	je	Lj2571
Lj2571:
	call	FPC_RERAISE
Lj2570:
Lj2559:
	call	FPC_POPADDRSTACK
	movl	-4(%ebp),%eax
	movb	$0,36(%eax)
	popl	%eax
	testl	%eax,%eax
	je	Lj2560
	decl	%eax
	testl	%eax,%eax
	je	Lj2561
Lj2561:
	call	FPC_RERAISE
Lj2560:
Lj2554:
	call	FPC_POPADDRSTACK
	leal	-140(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-140(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj2555
	call	FPC_RERAISE
Lj2555:
	movl	-144(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__SETBUFSIZE$LONGWORD
ZIPPER_TUNZIPPER_$__SETBUFSIZE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,36(%eax)
	jne	Lj2607
	jmp	Lj2608
Lj2607:
	movl	RESSTR_ZIPPER_SERRBUFSIZECHANGE+4,%ecx
	movl	$VMT_ZIPPER_EZIPERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La10:
	movl	%ebp,%ecx
	movl	$La10,%edx
	call	FPC_RAISEEXCEPTION
Lj2608:
	movl	-4(%ebp),%eax
	cmpl	$16384,%eax
	jae	Lj2615
	jmp	Lj2616
Lj2615:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,40(%eax)
Lj2616:
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__SETFILENAME$ANSISTRING
ZIPPER_TUNZIPPER_$__SETFILENAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2621
	movl	-8(%ebp),%eax
	cmpb	$0,36(%eax)
	jne	Lj2624
	jmp	Lj2625
Lj2624:
	movl	RESSTR_ZIPPER_SERRFILECHANGE+4,%ecx
	movl	$VMT_ZIPPER_EZIPERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La11:
	movl	%ebp,%ecx
	movl	$La11,%edx
	call	FPC_RAISEEXCEPTION
Lj2625:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	leal	44(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,44(%ebx)
Lj2621:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj2622
	call	FPC_RERAISE
Lj2622:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__SETOUTPUTPATH$ANSISTRING
ZIPPER_TUNZIPPER_$__SETOUTPUTPATH$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2636
	movl	-8(%ebp),%eax
	cmpb	$0,36(%eax)
	jne	Lj2639
	jmp	Lj2640
Lj2639:
	movl	RESSTR_ZIPPER_SERRFILECHANGE+4,%ecx
	movl	$VMT_ZIPPER_EZIPERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La12:
	movl	%ebp,%ecx
	movl	$La12,%edx
	call	FPC_RAISEEXCEPTION
Lj2640:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	leal	48(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,48(%ebx)
Lj2636:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj2637
	call	FPC_RERAISE
Lj2637:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__UNZIPFILES$ANSISTRING$TSTRINGS
ZIPPER_TUNZIPPER_$__UNZIPFILES$ANSISTRING$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2651
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	leal	44(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,44(%ebx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	ZIPPER_TUNZIPPER_$__UNZIPFILES$TSTRINGS
Lj2651:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj2652
	call	FPC_RERAISE
Lj2652:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__UNZIPFILES$TSTRINGS
ZIPPER_TUNZIPPER_$__UNZIPFILES$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	60(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__UNZIPALLFILES$ANSISTRING
ZIPPER_TUNZIPPER_$__UNZIPALLFILES$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2670
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	leal	44(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,44(%ebx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
Lj2670:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj2671
	call	FPC_RERAISE
Lj2671:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__DOENDOFFILE
ZIPPER_TUNZIPPER_$__DOENDOFFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	90(%eax),%eax
	cmpl	$0,%eax
	ja	Lj2679
	jmp	Lj2680
Lj2679:
	movl	-4(%ebp),%eax
	movl	90(%eax),%ecx
	movl	$0,%ebx
	movl	-4(%ebp),%eax
	movl	86(%eax),%edx
	movl	$0,%eax
	subl	%edx,%ecx
	sbbl	%eax,%ebx
	movl	%ecx,-20(%ebp)
	movl	%ebx,-16(%ebp)
	fildq	-20(%ebp)
	flds	_$ZIPPER$_Ld6
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	90(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$0,-16(%ebp)
	fildq	-20(%ebp)
	fdivrp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj2683
Lj2680:
	fldz
	fstpl	-12(%ebp)
Lj2683:
	movl	-4(%ebp),%eax
	cmpl	$0,184(%eax)
	jne	Lj2686
	jmp	Lj2687
Lj2686:
	subl	$8,%esp
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	188(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	184(%ecx),%ecx
	call	*%ecx
Lj2687:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__CREATE$$TUNZIPPER
ZIPPER_TUNZIPPER_$__CREATE$$TUNZIPPER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2696
	jmp	Lj2697
Lj2696:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj2697:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2702
	jmp	Lj2703
Lj2702:
	jmp	Lj2694
Lj2703:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2706
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2710
	movl	-8(%ebp),%eax
	movl	$16384,40(%eax)
	movl	$VMT_CLASSES_TSTRINGLIST,%edx
	movl	$0,%eax
	call	SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	movl	-8(%ebp),%edx
	movl	%eax,60(%edx)
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	movb	$1,%dl
	call	CLASSES_TSTRINGLIST_$__SETSORTED$BOOLEAN
	movl	$VMT_ZIPPER_TFULLZIPFILEENTRY,%ecx
	movl	$VMT_ZIPPER_TFULLZIPFILEENTRIES,%edx
	movl	$0,%eax
	call	CLASSES_TCOLLECTION_$__CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION
	movl	-8(%ebp),%edx
	movl	%eax,56(%edx)
	movl	-8(%ebp),%eax
	movl	$1,172(%eax)
Lj2710:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj2711
	call	FPC_RERAISE
Lj2711:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2737
	jmp	Lj2736
Lj2737:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2735
	jmp	Lj2736
Lj2735:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2736:
Lj2706:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj2708
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2741
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2742
	jmp	Lj2743
Lj2742:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2743:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj2741:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj2740
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj2740:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj2708
Lj2708:
Lj2694:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__CLEAR
ZIPPER_TUNZIPPER_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	-4(%ebp),%edx
	movl	60(%edx),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	call	CLASSES_TCOLLECTION_$__CLEAR
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__EXAMINE
ZIPPER_TUNZIPPER_$__EXAMINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$44,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj2758
	jmp	Lj2757
Lj2758:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	je	Lj2756
	jmp	Lj2757
Lj2756:
	movl	RESSTR_ZIPPER_SERRNOFILENAME+4,%ecx
	movl	$VMT_ZIPPER_EZIPERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La13:
	movl	%ebp,%ecx
	movl	$La13,%edx
	call	FPC_RAISEEXCEPTION
Lj2757:
	movl	-4(%ebp),%eax
	call	ZIPPER_TUNZIPPER_$__OPENINPUT
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj2767
	jmp	Lj2768
Lj2767:
	movl	RESSTR_ZIPPER_SERRNOSTREAM+4,%ecx
	movl	$VMT_ZIPPER_EZIPERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La14:
	movl	%ebp,%ecx
	movl	$La14,%edx
	call	FPC_RAISEEXCEPTION
Lj2768:
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2775
	movl	-4(%ebp),%eax
	call	ZIPPER_TUNZIPPER_$__READZIPDIRECTORY
Lj2775:
	call	FPC_POPADDRSTACK
	movl	-4(%ebp),%eax
	call	ZIPPER_TUNZIPPER_$__CLOSEINPUT
	popl	%eax
	testl	%eax,%eax
	je	Lj2776
	decl	%eax
	testl	%eax,%eax
	je	Lj2777
Lj2777:
	call	FPC_RERAISE
Lj2776:
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TUNZIPPER_$__DESTROY
ZIPPER_TUNZIPPER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2785
	jmp	Lj2786
Lj2785:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj2786:
	movl	-8(%ebp),%eax
	call	ZIPPER_TUNZIPPER_$__CLEAR
	movl	-8(%ebp),%eax
	leal	60(%eax),%eax
	call	SYSUTILS_FREEANDNIL$formal
	movl	-8(%ebp),%eax
	leal	56(%eax),%eax
	call	SYSUTILS_FREEANDNIL$formal
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	SYSTEM_TOBJECT_$__DESTROY
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2801
	jmp	Lj2800
Lj2801:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2799
	jmp	Lj2800
Lj2799:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj2800:
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING
ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	24(%esi),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	24(%esi),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj2808
	jmp	Lj2809
Lj2808:
	movl	-4(%ebp),%esi
	movl	40(%esi),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	40(%esi),%eax
	movl	%eax,(%ebx)
Lj2809:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPFILEENTRY_$__CREATE$TCOLLECTION$$TZIPFILEENTRY
ZIPPER_TZIPFILEENTRY_$__CREATE$TCOLLECTION$$TZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$92,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2814
	jmp	Lj2815
Lj2814:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj2815:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2820
	jmp	Lj2821
Lj2820:
	jmp	Lj2812
Lj2821:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2824
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2828
	movl	-12(%ebp),%eax
	movb	$0,56(%eax)
	movl	-12(%ebp),%eax
	movl	$2,68(%eax)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	CLASSES_TCOLLECTIONITEM_$__CREATE$TCOLLECTION$$TCOLLECTIONITEM
Lj2828:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj2829
	call	FPC_RERAISE
Lj2829:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2843
	jmp	Lj2842
Lj2843:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2841
	jmp	Lj2842
Lj2841:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2842:
Lj2824:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj2826
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2847
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2848
	jmp	Lj2849
Lj2848:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2849:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj2847:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj2846
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj2846:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj2826
Lj2826:
Lj2812:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPFILEENTRY_$__ISDIRECTORY$$BOOLEAN
ZIPPER_TZIPFILEENTRY_$__ISDIRECTORY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	jne	Lj2858
	jmp	Lj2857
Lj2858:
	movl	-4(%ebp),%eax
	movl	40(%eax),%edx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	je	Lj2859
	movl	-4(%eax),%eax
Lj2859:
	movzbl	-1(%edx,%eax,1),%eax
	cmpl	$47,%eax
	je	Lj2860
	cmpl	$92,%eax
	je	Lj2860
Lj2860:
	je	Lj2856
	jmp	Lj2857
Lj2856:
	movb	$1,-5(%ebp)
	jmp	Lj2861
Lj2857:
	movb	$0,-5(%ebp)
Lj2861:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	jne	Lj2862
	jmp	Lj2863
Lj2862:
	movl	-4(%ebp),%eax
	movb	56(%eax),%al
	testb	%al,%al
	je	Lj2866
	subb	$3,%al
	je	Lj2867
	jmp	Lj2865
Lj2866:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	andl	$16,%eax
	cmpl	$0,%eax
	setgb	-5(%ebp)
	jmp	Lj2864
Lj2867:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	andl	$61440,%eax
	cmpl	$16384,%eax
	seteb	-5(%ebp)
	jmp	Lj2864
Lj2865:
Lj2864:
Lj2863:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPFILEENTRY_$__ISLINK$$BOOLEAN
ZIPPER_TZIPFILEENTRY_$__ISLINK$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	jne	Lj2876
	jmp	Lj2877
Lj2876:
	movl	-4(%ebp),%eax
	movb	56(%eax),%al
	testb	%al,%al
	je	Lj2880
	subb	$3,%al
	je	Lj2881
	jmp	Lj2879
Lj2880:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	andl	$64,%eax
	cmpl	$0,%eax
	setgb	-5(%ebp)
	jmp	Lj2878
Lj2881:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	andl	$61440,%eax
	cmpl	$40960,%eax
	seteb	-5(%ebp)
	jmp	Lj2878
Lj2879:
Lj2878:
Lj2877:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPFILEENTRY_$__ASSIGN$TPERSISTENT
ZIPPER_TZIPFILEENTRY_$__ASSIGN$TPERSISTENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	$VMT_ZIPPER_TZIPFILEENTRY,%eax
	call	fpc_do_is
	testb	%al,%al
	jne	Lj2888
	jmp	Lj2889
Lj2888:
	movl	-4(%ebp),%edx
	movl	$VMT_ZIPPER_TZIPFILEENTRY,%eax
	call	fpc_do_as
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%esi
	movl	24(%esi),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	leal	24(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	24(%esi),%eax
	movl	%eax,24(%ebx)
	movl	-12(%ebp),%esi
	movl	40(%esi),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	leal	40(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	40(%esi),%eax
	movl	%eax,40(%ebx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,60(%edx)
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%edx
	movl	%edx,32(%ecx)
	movl	36(%eax),%eax
	movl	%eax,36(%ecx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,64(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	56(%eax),%al
	movb	%al,56(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,28(%edx)
	jmp	Lj2914
Lj2889:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
Lj2914:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPFILEENTRIES_$__GETZ$LONGINT$$TZIPFILEENTRY
ZIPPER_TZIPFILEENTRIES_$__GETZ$LONGINT$$TZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPFILEENTRIES_$__SETZ$LONGINT$TZIPFILEENTRY
ZIPPER_TZIPFILEENTRIES_$__SETZ$LONGINT$TZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	CLASSES_TCOLLECTION_$__SETITEM$LONGINT$TCOLLECTIONITEM
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$ANSISTRING$$TZIPFILEENTRY
ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$ANSISTRING$$TZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM
	movl	%eax,%edx
	movl	$VMT_ZIPPER_TZIPFILEENTRY,%eax
	call	fpc_do_as
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	leal	40(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,40(%ebx)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$ANSISTRING$ANSISTRING$$TZIPFILEENTRY
ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$ANSISTRING$ANSISTRING$$TZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$ANSISTRING$$TZIPFILEENTRY
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-16(%ebp),%ebx
	leal	24(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,24(%ebx)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$TSTREAM$ANSISTRING$$TZIPFILEENTRY
ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$TSTREAM$ANSISTRING$$TZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM
	movl	%eax,%edx
	movl	$VMT_ZIPPER_TZIPFILEENTRY,%eax
	call	fpc_do_as
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,64(%edx)
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-16(%ebp),%ebx
	leal	24(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,24(%ebx)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRIES$TSTRINGS
ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRIES$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2973
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2977
	decl	-12(%ebp)
	.balign 4,0x90
Lj2978:
	incl	-12(%ebp)
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$ANSISTRING$$TZIPFILEENTRY
	cmpl	-12(%ebp),%ebx
	jg	Lj2978
Lj2977:
Lj2973:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj2974
	call	FPC_RERAISE
Lj2974:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TFULLZIPFILEENTRIES_$__GETFZ$LONGINT$$TFULLZIPFILEENTRY
ZIPPER_TFULLZIPFILEENTRIES_$__GETFZ$LONGINT$$TFULLZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	ZIPPER_TFULLZIPFILEENTRIES_$__SETFZ$LONGINT$TFULLZIPFILEENTRY
ZIPPER_TFULLZIPFILEENTRIES_$__SETFZ$LONGINT$TFULLZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	CLASSES_TCOLLECTION_$__SETITEM$LONGINT$TCOLLECTIONITEM
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	_$ZIPPER$_Ld8
_$ZIPPER$_Ld8:
	.byte	11
	.ascii	"TCompressor"

.data
	.balign 4
.globl	VMT_ZIPPER_TCOMPRESSOR
VMT_ZIPPER_TCOMPRESSOR:
	.long	32,-32
	.long	VMT_SYSTEM_TOBJECT
	.long	_$ZIPPER$_Ld8
	.long	0,0
	.long	_$ZIPPER$_Ld9
	.long	RTTI_ZIPPER_TCOMPRESSOR
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	SYSTEM_TOBJECT_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	ZIPPER_TCOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TCOMPRESSOR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.data
	.balign 4
.globl	_$ZIPPER$_Ld11
_$ZIPPER$_Ld11:
	.byte	13
	.ascii	"TDeCompressor"

.data
	.balign 4
.globl	VMT_ZIPPER_TDECOMPRESSOR
VMT_ZIPPER_TDECOMPRESSOR:
	.long	32,-32
	.long	VMT_SYSTEM_TOBJECT
	.long	_$ZIPPER$_Ld11
	.long	0,0
	.long	_$ZIPPER$_Ld12
	.long	RTTI_ZIPPER_TDECOMPRESSOR
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	SYSTEM_TOBJECT_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	ZIPPER_TDECOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TDECOMPRESSOR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.data
	.balign 4
.globl	_$ZIPPER$_Ld14
_$ZIPPER$_Ld14:
	.byte	9
	.ascii	"TShrinker"

.data
	.balign 4
.globl	VMT_ZIPPER_TSHRINKER
VMT_ZIPPER_TSHRINKER:
	.long	1116,-1116
	.long	VMT_ZIPPER_TCOMPRESSOR
	.long	_$ZIPPER$_Ld14
	.long	0,0
	.long	_$ZIPPER$_Ld15
	.long	RTTI_ZIPPER_TSHRINKER
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	ZIPPER_TSHRINKER_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	ZIPPER_TSHRINKER_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TSHRINKER
	.long	ZIPPER_TSHRINKER_$__COMPRESS
	.long	ZIPPER_TSHRINKER_$__ZIPID$$WORD
	.long	ZIPPER_TSHRINKER_$__ZIPVERSIONREQD$$WORD
	.long	ZIPPER_TSHRINKER_$__ZIPBITFLAG$$WORD
	.long	ZIPPER_TSHRINKER_$__DOONPROGRESS$DOUBLE
	.long	0

.data
	.balign 4
.globl	_$ZIPPER$_Ld17
_$ZIPPER$_Ld17:
	.byte	9
	.ascii	"TDeflater"

.data
	.balign 4
.globl	VMT_ZIPPER_TDEFLATER
VMT_ZIPPER_TDEFLATER:
	.long	36,-36
	.long	VMT_ZIPPER_TCOMPRESSOR
	.long	_$ZIPPER$_Ld17
	.long	0,0
	.long	_$ZIPPER$_Ld18
	.long	RTTI_ZIPPER_TDEFLATER
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	SYSTEM_TOBJECT_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	ZIPPER_TDEFLATER_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TDEFLATER
	.long	ZIPPER_TDEFLATER_$__COMPRESS
	.long	ZIPPER_TDEFLATER_$__ZIPID$$WORD
	.long	ZIPPER_TDEFLATER_$__ZIPVERSIONREQD$$WORD
	.long	ZIPPER_TDEFLATER_$__ZIPBITFLAG$$WORD
	.long	0

.data
	.balign 4
.globl	_$ZIPPER$_Ld20
_$ZIPPER$_Ld20:
	.byte	9
	.ascii	"TInflater"

.data
	.balign 4
.globl	VMT_ZIPPER_TINFLATER
VMT_ZIPPER_TINFLATER:
	.long	32,-32
	.long	VMT_ZIPPER_TDECOMPRESSOR
	.long	_$ZIPPER$_Ld20
	.long	0,0
	.long	_$ZIPPER$_Ld21
	.long	RTTI_ZIPPER_TINFLATER
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	SYSTEM_TOBJECT_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	ZIPPER_TINFLATER_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TINFLATER
	.long	ZIPPER_TINFLATER_$__DECOMPRESS
	.long	ZIPPER_TINFLATER_$__ZIPID$$WORD
	.long	0

.data
	.balign 4
.globl	_$ZIPPER$_Ld23
_$ZIPPER$_Ld23:
	.byte	13
	.ascii	"TZipFileEntry"

.data
	.balign 4
.globl	VMT_ZIPPER_TZIPFILEENTRY
VMT_ZIPPER_TZIPFILEENTRY:
	.long	72,-72
	.long	VMT_CLASSES_TCOLLECTIONITEM
	.long	_$ZIPPER$_Ld23
	.long	0,0
	.long	_$ZIPPER$_Ld24
	.long	RTTI_ZIPPER_TZIPFILEENTRY
	.long	INIT_ZIPPER_TZIPFILEENTRY
	.long	0,0,0
	.long	CLASSES_TCOLLECTIONITEM_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	CLASSES_TCOLLECTIONITEM_$__GETOWNER$$TPERSISTENT
	.long	ZIPPER_TZIPFILEENTRY_$__ASSIGN$TPERSISTENT
	.long	CLASSES_TCOLLECTIONITEM_$__GETNAMEPATH$$ANSISTRING
	.long	CLASSES_TCOLLECTIONITEM_$__SETCOLLECTION$TCOLLECTION
	.long	CLASSES_TCOLLECTIONITEM_$__GETDISPLAYNAME$$ANSISTRING
	.long	CLASSES_TCOLLECTIONITEM_$__SETINDEX$LONGINT
	.long	CLASSES_TCOLLECTIONITEM_$__SETDISPLAYNAME$ANSISTRING
	.long	ZIPPER_TZIPFILEENTRY_$__CREATE$TCOLLECTION$$TZIPFILEENTRY
	.long	0

.data
	.balign 4
.globl	_$ZIPPER$_Ld26
_$ZIPPER$_Ld26:
	.byte	15
	.ascii	"TZipFileEntries"

.data
	.balign 4
.globl	VMT_ZIPPER_TZIPFILEENTRIES
VMT_ZIPPER_TZIPFILEENTRIES:
	.long	32,-32
	.long	VMT_CLASSES_TCOLLECTION
	.long	_$ZIPPER$_Ld26
	.long	0,0
	.long	_$ZIPPER$_Ld27
	.long	RTTI_ZIPPER_TZIPFILEENTRIES
	.long	0,0,0,0
	.long	CLASSES_TCOLLECTION_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	CLASSES_TCOLLECTION_$__ASSIGN$TPERSISTENT
	.long	CLASSES_TCOLLECTION_$__GETNAMEPATH$$ANSISTRING
	.long	CLASSES_TCOLLECTION_$__GETATTRCOUNT$$LONGINT
	.long	CLASSES_TCOLLECTION_$__GETATTR$LONGINT$$ANSISTRING
	.long	CLASSES_TCOLLECTION_$__GETITEMATTR$LONGINT$LONGINT$$ANSISTRING
	.long	CLASSES_TCOLLECTION_$__SETITEMNAME$TCOLLECTIONITEM
	.long	CLASSES_TCOLLECTION_$__SETPROPNAME
	.long	CLASSES_TCOLLECTION_$__UPDATE$TCOLLECTIONITEM
	.long	CLASSES_TCOLLECTION_$__NOTIFY$TCOLLECTIONITEM$TCOLLECTIONNOTIFICATION
	.long	CLASSES_TCOLLECTION_$__BEGINUPDATE
	.long	CLASSES_TCOLLECTION_$__ENDUPDATE
	.long	0

.data
	.balign 4
.globl	_$ZIPPER$_Ld29
_$ZIPPER$_Ld29:
	.byte	7
	.ascii	"TZipper"

.data
	.balign 4
.globl	VMT_ZIPPER_TZIPPER
VMT_ZIPPER_TZIPPER:
	.long	172,-172
	.long	VMT_SYSTEM_TOBJECT
	.long	_$ZIPPER$_Ld29
	.long	0,0
	.long	_$ZIPPER$_Ld30
	.long	RTTI_ZIPPER_TZIPPER
	.long	INIT_ZIPPER_TZIPPER
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	ZIPPER_TZIPPER_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	ZIPPER_TZIPPER_$__ZIPONEFILE$TZIPFILEENTRY
	.long	ZIPPER_TZIPPER_$__CREATECOMPRESSOR$TZIPFILEENTRY$TSTREAM$TSTREAM$$TCOMPRESSOR
	.long	ZIPPER_TZIPPER_$__ZIPALLFILES
	.long	0

.data
	.balign 4
.globl	_$ZIPPER$_Ld32
_$ZIPPER$_Ld32:
	.byte	17
	.ascii	"TFullZipFileEntry"

.data
	.balign 4
.globl	VMT_ZIPPER_TFULLZIPFILEENTRY
VMT_ZIPPER_TFULLZIPFILEENTRY:
	.long	88,-88
	.long	VMT_ZIPPER_TZIPFILEENTRY
	.long	_$ZIPPER$_Ld32
	.long	0,0
	.long	_$ZIPPER$_Ld33
	.long	RTTI_ZIPPER_TFULLZIPFILEENTRY
	.long	0,0,0,0
	.long	CLASSES_TCOLLECTIONITEM_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	CLASSES_TCOLLECTIONITEM_$__GETOWNER$$TPERSISTENT
	.long	ZIPPER_TZIPFILEENTRY_$__ASSIGN$TPERSISTENT
	.long	CLASSES_TCOLLECTIONITEM_$__GETNAMEPATH$$ANSISTRING
	.long	CLASSES_TCOLLECTIONITEM_$__SETCOLLECTION$TCOLLECTION
	.long	CLASSES_TCOLLECTIONITEM_$__GETDISPLAYNAME$$ANSISTRING
	.long	CLASSES_TCOLLECTIONITEM_$__SETINDEX$LONGINT
	.long	CLASSES_TCOLLECTIONITEM_$__SETDISPLAYNAME$ANSISTRING
	.long	ZIPPER_TZIPFILEENTRY_$__CREATE$TCOLLECTION$$TZIPFILEENTRY
	.long	0

.data
	.balign 4
.globl	_$ZIPPER$_Ld35
_$ZIPPER$_Ld35:
	.byte	19
	.ascii	"TFullZipFileEntries"

.data
	.balign 4
.globl	VMT_ZIPPER_TFULLZIPFILEENTRIES
VMT_ZIPPER_TFULLZIPFILEENTRIES:
	.long	32,-32
	.long	VMT_ZIPPER_TZIPFILEENTRIES
	.long	_$ZIPPER$_Ld35
	.long	0,0
	.long	_$ZIPPER$_Ld36
	.long	RTTI_ZIPPER_TFULLZIPFILEENTRIES
	.long	0,0,0,0
	.long	CLASSES_TCOLLECTION_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	CLASSES_TPERSISTENT_$__DEFINEPROPERTIES$TFILER
	.long	CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	CLASSES_TCOLLECTION_$__ASSIGN$TPERSISTENT
	.long	CLASSES_TCOLLECTION_$__GETNAMEPATH$$ANSISTRING
	.long	CLASSES_TCOLLECTION_$__GETATTRCOUNT$$LONGINT
	.long	CLASSES_TCOLLECTION_$__GETATTR$LONGINT$$ANSISTRING
	.long	CLASSES_TCOLLECTION_$__GETITEMATTR$LONGINT$LONGINT$$ANSISTRING
	.long	CLASSES_TCOLLECTION_$__SETITEMNAME$TCOLLECTIONITEM
	.long	CLASSES_TCOLLECTION_$__SETPROPNAME
	.long	CLASSES_TCOLLECTION_$__UPDATE$TCOLLECTIONITEM
	.long	CLASSES_TCOLLECTION_$__NOTIFY$TCOLLECTIONITEM$TCOLLECTIONNOTIFICATION
	.long	CLASSES_TCOLLECTION_$__BEGINUPDATE
	.long	CLASSES_TCOLLECTION_$__ENDUPDATE
	.long	0

.data
	.balign 4
.globl	_$ZIPPER$_Ld38
_$ZIPPER$_Ld38:
	.byte	9
	.ascii	"TUnZipper"

.data
	.balign 4
.globl	VMT_ZIPPER_TUNZIPPER
VMT_ZIPPER_TUNZIPPER:
	.long	200,-200
	.long	VMT_SYSTEM_TOBJECT
	.long	_$ZIPPER$_Ld38
	.long	0,0
	.long	_$ZIPPER$_Ld39
	.long	RTTI_ZIPPER_TUNZIPPER
	.long	INIT_ZIPPER_TUNZIPPER
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	ZIPPER_TUNZIPPER_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	ZIPPER_TUNZIPPER_$__UNZIPONEFILE$TFULLZIPFILEENTRY
	.long	ZIPPER_TUNZIPPER_$__CREATEDECOMPRESSOR$TZIPFILEENTRY$WORD$TSTREAM$TSTREAM$$TDECOMPRESSOR
	.long	ZIPPER_TUNZIPPER_$__UNZIPALLFILES
	.long	0

.data
	.balign 4
.globl	_$ZIPPER$_Ld41
_$ZIPPER$_Ld41:
	.byte	9
	.ascii	"EZipError"

.data
	.balign 4
.globl	VMT_ZIPPER_EZIPERROR
VMT_ZIPPER_EZIPERROR:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$ZIPPER$_Ld41
	.long	0,0
	.long	_$ZIPPER$_Ld42
	.long	RTTI_ZIPPER_EZIPERROR
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	SYSTEM_TOBJECT_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	0

.data
	.balign 4
.globl	THREADVARLIST_ZIPPER
THREADVARLIST_ZIPPER:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.balign 4
	.short	0,1
	.long	-1,6
.globl	_$ZIPPER$_Ld44
_$ZIPPER$_Ld44:
	.ascii	"ZIPPER\000"

.data
	.balign 4
	.short	0,1
	.long	-1,53
.globl	_$ZIPPER$_Ld45
_$ZIPPER$_Ld45:
	.ascii	"Changing buffer size is not allowed while (un)zippi"
	.ascii	"ng\000"
	.balign 4
	.short	0,1
	.long	-1,24
.globl	_$ZIPPER$_Ld46
_$ZIPPER$_Ld46:
	.ascii	"zipper.serrbufsizechange\000"

.data
	.balign 4
	.short	0,1
	.long	-1,58
.globl	_$ZIPPER$_Ld47
_$ZIPPER$_Ld47:
	.ascii	"Changing output file name is not allowed while (un)"
	.ascii	"zipping\000"
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$ZIPPER$_Ld48
_$ZIPPER$_Ld48:
	.ascii	"zipper.serrfilechange\000"

.data
	.balign 4
	.short	0,1
	.long	-1,39
.globl	_$ZIPPER$_Ld49
_$ZIPPER$_Ld49:
	.ascii	"Invalid CRC checksum while unzipping %s\000"
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$ZIPPER$_Ld50
_$ZIPPER$_Ld50:
	.ascii	"zipper.serrinvalidcrc\000"

.data
	.balign 4
	.short	0,1
	.long	-1,19
.globl	_$ZIPPER$_Ld51
_$ZIPPER$_Ld51:
	.ascii	"Corrupt ZIP file %s\000"
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$ZIPPER$_Ld52
_$ZIPPER$_Ld52:
	.ascii	"zipper.serrcorruptzip\000"

.data
	.balign 4
	.short	0,1
	.long	-1,33
.globl	_$ZIPPER$_Ld53
_$ZIPPER$_Ld53:
	.ascii	"Unsupported compression format %d\000"
	.balign 4
	.short	0,1
	.long	-1,39
.globl	_$ZIPPER$_Ld54
_$ZIPPER$_Ld54:
	.ascii	"zipper.serrunsupportedcompressionformat\000"

.data
	.balign 4
	.short	0,1
	.long	-1,28
.globl	_$ZIPPER$_Ld55
_$ZIPPER$_Ld55:
	.ascii	"Missing filename in entry %d\000"
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$ZIPPER$_Ld56
_$ZIPPER$_Ld56:
	.ascii	"zipper.serrmissingfilename\000"

.data
	.balign 4
	.short	0,1
	.long	-1,45
.globl	_$ZIPPER$_Ld57
_$ZIPPER$_Ld57:
	.ascii	"Missing archive filename in streamed entry %d\000"
	.balign 4
	.short	0,1
	.long	-1,29
.globl	_$ZIPPER$_Ld58
_$ZIPPER$_Ld58:
	.ascii	"zipper.serrmissingarchivename\000"

.data
	.balign 4
	.short	0,1
	.long	-1,25
.globl	_$ZIPPER$_Ld59
_$ZIPPER$_Ld59:
	.ascii	"File \"%s\" does not exist.\000"
	.balign 4
	.short	0,1
	.long	-1,27
.globl	_$ZIPPER$_Ld60
_$ZIPPER$_Ld60:
	.ascii	"zipper.serrfiledoesnotexist\000"

.data
	.balign 4
	.short	0,1
	.long	-1,42
.globl	_$ZIPPER$_Ld61
_$ZIPPER$_Ld61:
	.ascii	"No archive filename for examine operation.\000"
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$ZIPPER$_Ld62
_$ZIPPER$_Ld62:
	.ascii	"zipper.serrnofilename\000"

.data
	.balign 4
	.short	0,1
	.long	-1,20
.globl	_$ZIPPER$_Ld63
_$ZIPPER$_Ld63:
	.ascii	"No stream is opened.\000"
	.balign 4
	.short	0,1
	.long	-1,19
.globl	_$ZIPPER$_Ld64
_$ZIPPER$_Ld64:
	.ascii	"zipper.serrnostream\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 4
.globl	TC_ZIPPER_CRC_32_TAB
TC_ZIPPER_CRC_32_TAB:
	.long	0,1996959894,-301047508,-1727442502,124634137,1886057615,-379345611,-1637575261
	.long	249268274,2044508324,-522852066,-1747789432,162941995,2125561021,-407360249,-1866523247
	.long	498536548,1789927666,-205950648,-2067906082,450548861,1843258603,-187386543,-2083289657
	.long	325883990,1684777152,-43845254,-1973040660,335633487,1661365465,-99664541,-1928851979
	.long	997073096,1281953886,-715111964,-1570279054,1006888145,1258607687,-770865667,-1526024853
	.long	901097722,1119000684,-608450090,-1396901568,853044451,1172266101,-589951537,-1412350631
	.long	651767980,1373503546,-925412992,-1076862698,565507253,1454621731,-809855591,-1195530993
	.long	671266974,1594198024,-972236366,-1324619484,795835527,1483230225,-1050600021,-1234817731
	.long	1994146192,31158534,-1731059524,-271249366,1907459465,112637215,-1614814043,-390540237
	.long	2013776290,251722036,-1777751922,-519137256,2137656763,141376813,-1855689577,-429695999
	.long	1802195444,476864866,-2056965928,-228458418,1812370925,453092731,-2113342271,-183516073
	.long	1706088902,314042704,-1950435094,-54949764,1658658271,366619977,-1932296973,-69972891
	.long	1303535960,984961486,-1547960204,-725929758,1256170817,1037604311,-1529756563
	.long	-740887301,1131014506,879679996,-1385723834,-631195440,1141124467,855842277,-1442165665
	.long	-586318647,1342533948,654459306,-1106571248,-921952122,1466479909,544179635,-1184443383
	.long	-832445281,1591671054,702138776,-1328506846,-942167884,1504918807,783551873,-1212326853
	.long	-1061524307,-306674912,-1698712650,62317068,1957810842,-355121351,-1647151185
	.long	81470997,1943803523,-480048366,-1805370492,225274430,2053790376,-468791541,-1828061283
	.long	167816743,2097651377,-267414716,-2029476910,503444072,1762050814,-144550051,-2140837941
	.long	426522225,1852507879,-19653770,-1982649376,282753626,1742555852,-105259153,-1900089351
	.long	397917763,1622183637,-690576408,-1580100738,953729732,1340076626,-776247311,-1497606297
	.long	1068828381,1219638859,-670225446,-1358292148,906185462,1090812512,-547295293,-1469587627
	.long	829329135,1181335161,-882789492,-1134132454,628085408,1382605366,-871598187,-1156888829
	.long	570562233,1426400815,-977650754,-1296233688,733239954,1555261956,-1026031705,-1244606671
	.long	752459403,1541320221,-1687895376,-328994266,1969922972,40735498,-1677130071,-351390145
	.long	1913087877,83908371,-1782625662,-491226604,2075208622,213261112,-1831694693,-438977011
	.long	2094854071,198958881,-2032938284,-237706686,1759359992,534414190,-2118248755,-155638181
	.long	1873836001,414664567,-2012718362,-15766928,1711684554,285281116,-1889165569,-127750551
	.long	1634467795,376229701,-1609899400,-686959890,1308918612,956543938,-1486412191,-799009033
	.long	1231636301,1047427035,-1362007478,-640263460,1088359270,936918000,-1447252397
	.long	-558129467,1202900863,817233897,-1111625188,-893730166,1404277552,615818150,-1160759803
	.long	-841546093,1423857449,601450431,-1285129682,-1000256840,1567103746,711928724,-1274298825
	.long	-1022587231,1510334235,755167117

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$ZIPPER$_Ld1
_$ZIPPER$_Ld1:
	.ascii	".\000"

.data
	.balign 4
	.short	0,1
	.long	-1,2
.globl	_$ZIPPER$_Ld2
_$ZIPPER$_Ld2:
	.ascii	"..\000"

.data
	.balign 4
.globl	_$ZIPPER$_Ld3
_$ZIPPER$_Ld3:
	.byte	0,0,0,0,0,0,0,200,5,64

.data
	.balign 4
.globl	_$ZIPPER$_Ld4
_$ZIPPER$_Ld4:
	.byte	0,0,0,0,0,0,89,64

.data
	.balign 2
TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE:
	.short	0

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$ZIPPER$_Ld5
_$ZIPPER$_Ld5:
	.ascii	".tmp\000"

.data
	.balign 4
.globl	_$ZIPPER$_Ld6
_$ZIPPER$_Ld6:
	.byte	0,0,200,66

.data
	.balign 4
.globl	_$ZIPPER$_Ld7
_$ZIPPER$_Ld7:
	.byte	0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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
.globl	INIT_ZIPPER_LOCAL_FILE_HEADER_TYPE
INIT_ZIPPER_LOCAL_FILE_HEADER_TYPE:
	.byte	13,22
	.ascii	"Local_File_Header_Type"
	.long	30,0

.data
	.balign 4
.globl	RTTI_ZIPPER_LOCAL_FILE_HEADER_TYPE
RTTI_ZIPPER_LOCAL_FILE_HEADER_TYPE:
	.byte	13,22
	.ascii	"Local_File_Header_Type"
	.long	30,11
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_WORD
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	10
	.long	RTTI_SYSTEM_WORD
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	14
	.long	RTTI_SYSTEM_LONGWORD
	.long	18
	.long	RTTI_SYSTEM_LONGWORD
	.long	22
	.long	RTTI_SYSTEM_WORD
	.long	26
	.long	RTTI_SYSTEM_WORD
	.long	28

.data
	.balign 4
.globl	INIT_ZIPPER_CENTRAL_FILE_HEADER_TYPE
INIT_ZIPPER_CENTRAL_FILE_HEADER_TYPE:
	.byte	13,24
	.ascii	"Central_File_Header_Type"
	.long	46,0

.data
	.balign 4
.globl	RTTI_ZIPPER_CENTRAL_FILE_HEADER_TYPE
RTTI_ZIPPER_CENTRAL_FILE_HEADER_TYPE:
	.byte	13,24
	.ascii	"Central_File_Header_Type"
	.long	46,17
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_WORD
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	10
	.long	RTTI_SYSTEM_WORD
	.long	12
	.long	RTTI_SYSTEM_WORD
	.long	14
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_LONGWORD
	.long	20
	.long	RTTI_SYSTEM_LONGWORD
	.long	24
	.long	RTTI_SYSTEM_WORD
	.long	28
	.long	RTTI_SYSTEM_WORD
	.long	30
	.long	RTTI_SYSTEM_WORD
	.long	32
	.long	RTTI_SYSTEM_WORD
	.long	34
	.long	RTTI_SYSTEM_WORD
	.long	36
	.long	RTTI_SYSTEM_LONGWORD
	.long	38
	.long	RTTI_SYSTEM_LONGWORD
	.long	42

.data
	.balign 4
.globl	INIT_ZIPPER_END_OF_CENTRAL_DIR_TYPE
INIT_ZIPPER_END_OF_CENTRAL_DIR_TYPE:
	.byte	13,23
	.ascii	"End_of_Central_Dir_Type"
	.long	22,0

.data
	.balign 4
.globl	RTTI_ZIPPER_END_OF_CENTRAL_DIR_TYPE
RTTI_ZIPPER_END_OF_CENTRAL_DIR_TYPE:
	.byte	13,23
	.ascii	"End_of_Central_Dir_Type"
	.long	22,8
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_WORD
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	10
	.long	RTTI_SYSTEM_LONGWORD
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_WORD
	.long	20

.data
	.balign 4
.globl	INIT_ZIPPER_TPROGRESSEVENT
INIT_ZIPPER_TPROGRESSEVENT:
	.byte	6,14
	.ascii	"TProgressEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,3
	.ascii	"Pct"
	.ascii	"\006Double"
	.byte	0
	.long	RTTI_SYSTEM_TOBJECT
	.long	RTTI_SYSTEM_DOUBLE

.data
	.balign 4
.globl	RTTI_ZIPPER_TPROGRESSEVENT
RTTI_ZIPPER_TPROGRESSEVENT:
	.byte	6,14
	.ascii	"TProgressEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,3
	.ascii	"Pct"
	.ascii	"\006Double"
	.byte	0
	.long	RTTI_SYSTEM_TOBJECT
	.long	RTTI_SYSTEM_DOUBLE

.data
	.balign 4
.globl	INIT_ZIPPER_TONENDOFFILEEVENT
INIT_ZIPPER_TONENDOFFILEEVENT:
	.byte	6,17
	.ascii	"TOnEndOfFileEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,5
	.ascii	"Ratio"
	.ascii	"\006Double"
	.byte	0
	.long	RTTI_SYSTEM_TOBJECT
	.long	RTTI_SYSTEM_DOUBLE

.data
	.balign 4
.globl	RTTI_ZIPPER_TONENDOFFILEEVENT
RTTI_ZIPPER_TONENDOFFILEEVENT:
	.byte	6,17
	.ascii	"TOnEndOfFileEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,5
	.ascii	"Ratio"
	.ascii	"\006Double"
	.byte	0
	.long	RTTI_SYSTEM_TOBJECT
	.long	RTTI_SYSTEM_DOUBLE

.data
	.balign 4
.globl	INIT_ZIPPER_TONSTARTFILEEVENT
INIT_ZIPPER_TONSTARTFILEEVENT:
	.byte	6,17
	.ascii	"TOnStartFileEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,9
	.ascii	"AFileName"
	.ascii	"\012AnsiString"
	.byte	0
	.long	RTTI_SYSTEM_TOBJECT
	.long	RTTI_SYSTEM_ANSISTRING

.data
	.balign 4
.globl	RTTI_ZIPPER_TONSTARTFILEEVENT
RTTI_ZIPPER_TONSTARTFILEEVENT:
	.byte	6,17
	.ascii	"TOnStartFileEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,9
	.ascii	"AFileName"
	.ascii	"\012AnsiString"
	.byte	0
	.long	RTTI_SYSTEM_TOBJECT
	.long	RTTI_SYSTEM_ANSISTRING

.data
	.balign 4
.globl	_$ZIPPER$_Ld9
_$ZIPPER$_Ld9:
	.short	0
	.long	_$ZIPPER$_Ld10
	.balign 4
.globl	_$ZIPPER$_Ld10
_$ZIPPER$_Ld10:
	.short	0

.data
	.balign 4
.globl	INIT_ZIPPER_TCOMPRESSOR
INIT_ZIPPER_TCOMPRESSOR:
	.byte	15,11
	.ascii	"TCompressor"
	.long	4,0

.data
	.balign 4
.globl	RTTI_ZIPPER_TCOMPRESSOR
RTTI_ZIPPER_TCOMPRESSOR:
	.byte	15,11
	.ascii	"TCompressor"
	.long	VMT_ZIPPER_TCOMPRESSOR
	.long	RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	6
	.ascii	"zipper"
	.short	0

.data
	.balign 4
.globl	_$ZIPPER$_Ld12
_$ZIPPER$_Ld12:
	.short	0
	.long	_$ZIPPER$_Ld13
	.balign 4
.globl	_$ZIPPER$_Ld13
_$ZIPPER$_Ld13:
	.short	0

.data
	.balign 4
.globl	INIT_ZIPPER_TDECOMPRESSOR
INIT_ZIPPER_TDECOMPRESSOR:
	.byte	15,13
	.ascii	"TDeCompressor"
	.long	4,0

.data
	.balign 4
.globl	RTTI_ZIPPER_TDECOMPRESSOR
RTTI_ZIPPER_TDECOMPRESSOR:
	.byte	15,13
	.ascii	"TDeCompressor"
	.long	VMT_ZIPPER_TDECOMPRESSOR
	.long	RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	6
	.ascii	"zipper"
	.short	0

.data
	.balign 4
.globl	INIT_ZIPPER_CODEREC
INIT_ZIPPER_CODEREC:
	.byte	13,7
	.ascii	"CodeRec"
	.long	5,0

.data
	.balign 4
.globl	RTTI_ZIPPER_CODEREC
RTTI_ZIPPER_CODEREC:
	.byte	13,7
	.ascii	"CodeRec"
	.long	5,3
	.long	RTTI_SYSTEM_SMALLINT
	.long	0
	.long	RTTI_SYSTEM_SMALLINT
	.long	2
	.long	RTTI_SYSTEM_BYTE
	.long	4

.data
	.balign 4
.globl	INIT_ZIPPER_CODEARRAY
INIT_ZIPPER_CODEARRAY:
	.byte	12
	.ascii	"\011CodeArray"
	.long	5,8192
	.long	INIT_ZIPPER_CODEREC
	.long	-1

.data
	.balign 4
.globl	RTTI_ZIPPER_CODEARRAY
RTTI_ZIPPER_CODEARRAY:
	.byte	12
	.ascii	"\011CodeArray"
	.long	5,8192
	.long	RTTI_ZIPPER_CODEREC
	.long	-1

.data
	.balign 4
.globl	INIT_ZIPPER_TABLEPTR
INIT_ZIPPER_TABLEPTR:
	.byte	0
	.ascii	"\010TablePtr"

.data
	.balign 4
.globl	RTTI_ZIPPER_TABLEPTR
RTTI_ZIPPER_TABLEPTR:
	.byte	0
	.ascii	"\010TablePtr"

.data
	.balign 4
.globl	INIT_ZIPPER_FREELISTPTR
INIT_ZIPPER_FREELISTPTR:
	.byte	0
	.ascii	"\013FreeListPtr"

.data
	.balign 4
.globl	RTTI_ZIPPER_FREELISTPTR
RTTI_ZIPPER_FREELISTPTR:
	.byte	0
	.ascii	"\013FreeListPtr"

.data
	.balign 4
.globl	INIT_ZIPPER_FREELISTARRAY
INIT_ZIPPER_FREELISTARRAY:
	.byte	12
	.ascii	"\015FreeListArray"
	.long	2,7935
	.long	INIT_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	RTTI_ZIPPER_FREELISTARRAY
RTTI_ZIPPER_FREELISTARRAY:
	.byte	12
	.ascii	"\015FreeListArray"
	.long	2,7935
	.long	RTTI_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	_$ZIPPER$_Ld15
_$ZIPPER$_Ld15:
	.short	0
	.long	_$ZIPPER$_Ld16
	.balign 4
.globl	_$ZIPPER$_Ld16
_$ZIPPER$_Ld16:
	.short	0

.data
	.balign 4
.globl	INIT_ZIPPER_TSHRINKER
INIT_ZIPPER_TSHRINKER:
	.byte	15,9
	.ascii	"TShrinker"
	.long	4,0

.data
	.balign 4
.globl	RTTI_ZIPPER_TSHRINKER
RTTI_ZIPPER_TSHRINKER:
	.byte	15,9
	.ascii	"TShrinker"
	.long	VMT_ZIPPER_TSHRINKER
	.long	RTTI_ZIPPER_TCOMPRESSOR
	.short	0
	.byte	6
	.ascii	"zipper"
	.short	0

.data
	.balign 4
.globl	_$ZIPPER$_Ld18
_$ZIPPER$_Ld18:
	.short	0
	.long	_$ZIPPER$_Ld19
	.balign 4
.globl	_$ZIPPER$_Ld19
_$ZIPPER$_Ld19:
	.short	0

.data
	.balign 4
.globl	INIT_ZIPPER_TDEFLATER
INIT_ZIPPER_TDEFLATER:
	.byte	15,9
	.ascii	"TDeflater"
	.long	4,0

.data
	.balign 4
.globl	RTTI_ZIPPER_TDEFLATER
RTTI_ZIPPER_TDEFLATER:
	.byte	15,9
	.ascii	"TDeflater"
	.long	VMT_ZIPPER_TDEFLATER
	.long	RTTI_ZIPPER_TCOMPRESSOR
	.short	0
	.byte	6
	.ascii	"zipper"
	.short	0

.data
	.balign 4
.globl	_$ZIPPER$_Ld21
_$ZIPPER$_Ld21:
	.short	0
	.long	_$ZIPPER$_Ld22
	.balign 4
.globl	_$ZIPPER$_Ld22
_$ZIPPER$_Ld22:
	.short	0

.data
	.balign 4
.globl	INIT_ZIPPER_TINFLATER
INIT_ZIPPER_TINFLATER:
	.byte	15,9
	.ascii	"TInflater"
	.long	4,0

.data
	.balign 4
.globl	RTTI_ZIPPER_TINFLATER
RTTI_ZIPPER_TINFLATER:
	.byte	15,9
	.ascii	"TInflater"
	.long	VMT_ZIPPER_TINFLATER
	.long	RTTI_ZIPPER_TDECOMPRESSOR
	.short	0
	.byte	6
	.ascii	"zipper"
	.short	0

.data
	.balign 4
.globl	_$ZIPPER$_Ld24
_$ZIPPER$_Ld24:
	.short	0
	.long	_$ZIPPER$_Ld25
	.balign 4
.globl	_$ZIPPER$_Ld25
_$ZIPPER$_Ld25:
	.short	0

.data
	.balign 4
.globl	INIT_ZIPPER_TZIPFILEENTRY
INIT_ZIPPER_TZIPFILEENTRY:
	.byte	15,13
	.ascii	"TZipFileEntry"
	.long	4,2
	.long	INIT_SYSTEM_ANSISTRING
	.long	24
	.long	INIT_SYSTEM_ANSISTRING
	.long	40

.data
	.balign 4
.globl	RTTI_ZIPPER_TZIPFILEENTRY
RTTI_ZIPPER_TZIPFILEENTRY:
	.byte	15,13
	.ascii	"TZipFileEntry"
	.long	VMT_ZIPPER_TZIPFILEENTRY
	.long	RTTI_CLASSES_TCOLLECTIONITEM
	.short	7
	.byte	6
	.ascii	"zipper"
	.short	7
	.long	RTTI_SYSTEM_ANSISTRING
	.long	ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING
	.long	24,1,0,-2147483648
	.short	0
	.byte	49,15
	.ascii	"ArchiveFileName"
	.long	RTTI_SYSTEM_ANSISTRING
	.long	40,40,1,0,-2147483648
	.short	1
	.byte	48,12
	.ascii	"DiskFileName"
	.long	RTTI_SYSTEM_LONGINT
	.long	60,60,1,0,-2147483648
	.short	2
	.byte	48,4
	.ascii	"Size"
	.long	RTTI_SYSTEM_TDATETIME
	.long	32,32,1,0,-2147483648
	.short	3
	.byte	48,8
	.ascii	"DateTime"
	.long	RTTI_SYSTEM_BYTE
	.long	56,56,1,0,-2147483648
	.short	4
	.byte	48,2
	.ascii	"OS"
	.long	RTTI_SYSTEM_LONGINT
	.long	28,28,1,0,-2147483648
	.short	5
	.byte	48,10
	.ascii	"Attributes"
	.long	RTTI_ZSTREAM_TCOMPRESSIONLEVEL
	.long	68,68,1,0,-2147483648
	.short	6
	.byte	48,16
	.ascii	"CompressionLevel"

.data
	.balign 4
.globl	_$ZIPPER$_Ld27
_$ZIPPER$_Ld27:
	.short	0
	.long	_$ZIPPER$_Ld28
	.balign 4
.globl	_$ZIPPER$_Ld28
_$ZIPPER$_Ld28:
	.short	0

.data
	.balign 4
.globl	INIT_ZIPPER_TZIPFILEENTRIES
INIT_ZIPPER_TZIPFILEENTRIES:
	.byte	15,15
	.ascii	"TZipFileEntries"
	.long	4,0

.data
	.balign 4
.globl	RTTI_ZIPPER_TZIPFILEENTRIES
RTTI_ZIPPER_TZIPFILEENTRIES:
	.byte	15,15
	.ascii	"TZipFileEntries"
	.long	VMT_ZIPPER_TZIPFILEENTRIES
	.long	RTTI_CLASSES_TCOLLECTION
	.short	0
	.byte	6
	.ascii	"zipper"
	.short	0

.data
	.balign 4
.globl	INIT_ZIPPER_DEF349
INIT_ZIPPER_DEF349:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	_$ZIPPER$_Ld30
_$ZIPPER$_Ld30:
	.short	0
	.long	_$ZIPPER$_Ld31
	.balign 4
.globl	_$ZIPPER$_Ld31
_$ZIPPER$_Ld31:
	.short	0

.data
	.balign 4
.globl	INIT_ZIPPER_TZIPPER
INIT_ZIPPER_TZIPPER:
	.byte	15,7
	.ascii	"TZipper"
	.long	4,2
	.long	INIT_SYSTEM_ANSISTRING
	.long	16
	.long	INIT_SYSTEM_ANSISTRING
	.long	20

.data
	.balign 4
.globl	RTTI_ZIPPER_TZIPPER
RTTI_ZIPPER_TZIPPER:
	.byte	15,7
	.ascii	"TZipper"
	.long	VMT_ZIPPER_TZIPPER
	.long	RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	6
	.ascii	"zipper"
	.short	0

.data
	.balign 4
.globl	_$ZIPPER$_Ld33
_$ZIPPER$_Ld33:
	.short	0
	.long	_$ZIPPER$_Ld34
	.balign 4
.globl	_$ZIPPER$_Ld34
_$ZIPPER$_Ld34:
	.short	0

.data
	.balign 4
.globl	INIT_ZIPPER_TFULLZIPFILEENTRY
INIT_ZIPPER_TFULLZIPFILEENTRY:
	.byte	15,17
	.ascii	"TFullZipFileEntry"
	.long	4,0

.data
	.balign 4
.globl	RTTI_ZIPPER_TFULLZIPFILEENTRY
RTTI_ZIPPER_TFULLZIPFILEENTRY:
	.byte	15,17
	.ascii	"TFullZipFileEntry"
	.long	VMT_ZIPPER_TFULLZIPFILEENTRY
	.long	RTTI_ZIPPER_TZIPFILEENTRY
	.short	7
	.byte	6
	.ascii	"zipper"
	.short	0

.data
	.balign 4
.globl	INIT_ZIPPER_TONCUSTOMSTREAMEVENT
INIT_ZIPPER_TONCUSTOMSTREAMEVENT:
	.byte	6,20
	.ascii	"TOnCustomStreamEvent"
	.byte	0,3,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	9,7
	.ascii	"AStream"
	.ascii	"\007TStream"
	.byte	8,5
	.ascii	"AItem"
	.ascii	"\021TFullZipFileEntry"
	.byte	0
	.long	RTTI_SYSTEM_TOBJECT
	.long	RTTI_CLASSES_TSTREAM
	.long	RTTI_ZIPPER_TFULLZIPFILEENTRY

.data
	.balign 4
.globl	RTTI_ZIPPER_TONCUSTOMSTREAMEVENT
RTTI_ZIPPER_TONCUSTOMSTREAMEVENT:
	.byte	6,20
	.ascii	"TOnCustomStreamEvent"
	.byte	0,3,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	9,7
	.ascii	"AStream"
	.ascii	"\007TStream"
	.byte	8,5
	.ascii	"AItem"
	.ascii	"\021TFullZipFileEntry"
	.byte	0
	.long	RTTI_SYSTEM_TOBJECT
	.long	RTTI_CLASSES_TSTREAM
	.long	RTTI_ZIPPER_TFULLZIPFILEENTRY

.data
	.balign 4
.globl	INIT_ZIPPER_TCUSTOMINPUTSTREAMEVENT
INIT_ZIPPER_TCUSTOMINPUTSTREAMEVENT:
	.byte	6,23
	.ascii	"TCustomInputStreamEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	9,7
	.ascii	"AStream"
	.ascii	"\007TStream"
	.byte	0
	.long	RTTI_SYSTEM_TOBJECT
	.long	RTTI_CLASSES_TSTREAM

.data
	.balign 4
.globl	RTTI_ZIPPER_TCUSTOMINPUTSTREAMEVENT
RTTI_ZIPPER_TCUSTOMINPUTSTREAMEVENT:
	.byte	6,23
	.ascii	"TCustomInputStreamEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	9,7
	.ascii	"AStream"
	.ascii	"\007TStream"
	.byte	0
	.long	RTTI_SYSTEM_TOBJECT
	.long	RTTI_CLASSES_TSTREAM

.data
	.balign 4
.globl	_$ZIPPER$_Ld36
_$ZIPPER$_Ld36:
	.short	0
	.long	_$ZIPPER$_Ld37
	.balign 4
.globl	_$ZIPPER$_Ld37
_$ZIPPER$_Ld37:
	.short	0

.data
	.balign 4
.globl	INIT_ZIPPER_TFULLZIPFILEENTRIES
INIT_ZIPPER_TFULLZIPFILEENTRIES:
	.byte	15,19
	.ascii	"TFullZipFileEntries"
	.long	4,0

.data
	.balign 4
.globl	RTTI_ZIPPER_TFULLZIPFILEENTRIES
RTTI_ZIPPER_TFULLZIPFILEENTRIES:
	.byte	15,19
	.ascii	"TFullZipFileEntries"
	.long	VMT_ZIPPER_TFULLZIPFILEENTRIES
	.long	RTTI_ZIPPER_TZIPFILEENTRIES
	.short	0
	.byte	6
	.ascii	"zipper"
	.short	0

.data
	.balign 4
.globl	INIT_ZIPPER_DEF425
INIT_ZIPPER_DEF425:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_ZIPPER_DEF428
INIT_ZIPPER_DEF428:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_ZIPPER_DEF437
INIT_ZIPPER_DEF437:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	_$ZIPPER$_Ld39
_$ZIPPER$_Ld39:
	.short	0
	.long	_$ZIPPER$_Ld40
	.balign 4
.globl	_$ZIPPER$_Ld40
_$ZIPPER$_Ld40:
	.short	0

.data
	.balign 4
.globl	INIT_ZIPPER_TUNZIPPER
INIT_ZIPPER_TUNZIPPER:
	.byte	15,9
	.ascii	"TUnZipper"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	44
	.long	INIT_SYSTEM_ANSISTRING
	.long	48
	.long	INIT_SYSTEM_ANSISTRING
	.long	52

.data
	.balign 4
.globl	RTTI_ZIPPER_TUNZIPPER
RTTI_ZIPPER_TUNZIPPER:
	.byte	15,9
	.ascii	"TUnZipper"
	.long	VMT_ZIPPER_TUNZIPPER
	.long	RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	6
	.ascii	"zipper"
	.short	0

.data
	.balign 4
.globl	_$ZIPPER$_Ld42
_$ZIPPER$_Ld42:
	.short	0
	.long	_$ZIPPER$_Ld43
	.balign 4
.globl	_$ZIPPER$_Ld43
_$ZIPPER$_Ld43:
	.short	0

.data
	.balign 4
.globl	INIT_ZIPPER_EZIPERROR
INIT_ZIPPER_EZIPERROR:
	.byte	15,9
	.ascii	"EZipError"
	.long	4,0

.data
	.balign 4
.globl	RTTI_ZIPPER_EZIPERROR
RTTI_ZIPPER_EZIPERROR:
	.byte	15,9
	.ascii	"EZipError"
	.long	VMT_ZIPPER_EZIPERROR
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	6
	.ascii	"zipper"
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
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.balign 4
.globl	RESSTR_ZIPPER_START
RESSTR_ZIPPER_START:
	.long	_$ZIPPER$_Ld44
	.long	0,0,0

.data
	.balign 4
.globl	RESSTR_ZIPPER_SERRBUFSIZECHANGE
RESSTR_ZIPPER_SERRBUFSIZECHANGE:
	.long	_$ZIPPER$_Ld46
	.long	_$ZIPPER$_Ld45
	.long	_$ZIPPER$_Ld45
	.long	65062167

.data
	.balign 4
.globl	RESSTR_ZIPPER_SERRFILECHANGE
RESSTR_ZIPPER_SERRFILECHANGE:
	.long	_$ZIPPER$_Ld48
	.long	_$ZIPPER$_Ld47
	.long	_$ZIPPER$_Ld47
	.long	59495751

.data
	.balign 4
.globl	RESSTR_ZIPPER_SERRINVALIDCRC
RESSTR_ZIPPER_SERRINVALIDCRC:
	.long	_$ZIPPER$_Ld50
	.long	_$ZIPPER$_Ld49
	.long	_$ZIPPER$_Ld49
	.long	152773827

.data
	.balign 4
.globl	RESSTR_ZIPPER_SERRCORRUPTZIP
RESSTR_ZIPPER_SERRCORRUPTZIP:
	.long	_$ZIPPER$_Ld52
	.long	_$ZIPPER$_Ld51
	.long	_$ZIPPER$_Ld51
	.long	13962387

.data
	.balign 4
.globl	RESSTR_ZIPPER_SERRUNSUPPORTEDCOMPRESSIONFORMAT
RESSTR_ZIPPER_SERRUNSUPPORTEDCOMPRESSIONFORMAT:
	.long	_$ZIPPER$_Ld54
	.long	_$ZIPPER$_Ld53
	.long	_$ZIPPER$_Ld53
	.long	89252324

.data
	.balign 4
.globl	RESSTR_ZIPPER_SERRMISSINGFILENAME
RESSTR_ZIPPER_SERRMISSINGFILENAME:
	.long	_$ZIPPER$_Ld56
	.long	_$ZIPPER$_Ld55
	.long	_$ZIPPER$_Ld55
	.long	83633732

.data
	.balign 4
.globl	RESSTR_ZIPPER_SERRMISSINGARCHIVENAME
RESSTR_ZIPPER_SERRMISSINGARCHIVENAME:
	.long	_$ZIPPER$_Ld58
	.long	_$ZIPPER$_Ld57
	.long	_$ZIPPER$_Ld57
	.long	45880644

.data
	.balign 4
.globl	RESSTR_ZIPPER_SERRFILEDOESNOTEXIST
RESSTR_ZIPPER_SERRFILEDOESNOTEXIST:
	.long	_$ZIPPER$_Ld60
	.long	_$ZIPPER$_Ld59
	.long	_$ZIPPER$_Ld59
	.long	198206814

.data
	.balign 4
.globl	RESSTR_ZIPPER_SERRNOFILENAME
RESSTR_ZIPPER_SERRNOFILENAME:
	.long	_$ZIPPER$_Ld62
	.long	_$ZIPPER$_Ld61
	.long	_$ZIPPER$_Ld61
	.long	151265006

.data
	.balign 4
.globl	RESSTR_ZIPPER_SERRNOSTREAM
RESSTR_ZIPPER_SERRNOSTREAM:
	.long	_$ZIPPER$_Ld64
	.long	_$ZIPPER$_Ld63
	.long	_$ZIPPER$_Ld63
	.long	15201278

.data
	.balign 4
.globl	RESSTR_ZIPPER_END
RESSTR_ZIPPER_END:
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end

