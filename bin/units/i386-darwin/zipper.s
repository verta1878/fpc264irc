# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_ZIPPER_DATETIMETOZIPDATETIME$TDATETIME$WORD$WORD
_ZIPPER_DATETIMETOZIPDATETIME$TDATETIME$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-14(%ebp),%ecx
	leal	-12(%ebp),%edx
	leal	-10(%ebp),%eax
	call	L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub
	leal	-22(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-20(%ebp),%ecx
	leal	-18(%ebp),%edx
	leal	-16(%ebp),%eax
	call	L_SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD$stub
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
	ret

.text
	.align 4
.globl	_ZIPPER_ZIPDATETIMETODATETIME$WORD$WORD$TDATETIME
_ZIPPER_ZIPDATETIMETODATETIME$WORD$WORD$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
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
	movw	-26(%ebp),%ax
	movw	%ax,(%esp)
	movw	-24(%ebp),%cx
	movw	-22(%ebp),%dx
	movw	-20(%ebp),%ax
	call	L_SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	(%esp)
	movw	-18(%ebp),%cx
	movw	-16(%ebp),%dx
	movw	-14(%ebp),%ax
	call	L_SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME$stub
	fstpl	8(%esp)
	call	L_SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME$stub
	movl	-12(%ebp),%eax
	fstpl	(%eax)
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_ZIPUNIXATTRSTOFATATTRS$ANSISTRING$LONGINT$$LONGINT
_ZIPPER_ZIPUNIXATTRSTOFATATTRS$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj74
Lj74:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$32,-12(%ebp)
	movl	-4(%ebp),%edx
	movb	$46,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	cmpl	$1,%eax
	je	Lj80
	jmp	Lj78
Lj80:
	movl	-4(%ebp),%eax
	movl	L_$ZIPPER$_Ld1$non_lazy_ptr-Lj74(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj79
	jmp	Lj78
Lj79:
	movl	-4(%ebp),%eax
	movl	L_$ZIPPER$_Ld3$non_lazy_ptr-Lj74(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
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
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_ZIPFATATTRSTOUNIXATTRS$LONGINT$$LONGINT
_ZIPPER_ZIPFATATTRSTOUNIXATTRS$LONGINT$$LONGINT:
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
	.align 4
.globl	_ZIPPER_TDECOMPRESSOR_$__UPDC32$BYTE
_ZIPPER_TDECOMPRESSOR_$__UPDC32$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj131
Lj131:
	popl	%ecx
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
	movl	L_TC_ZIPPER_CRC_32_TAB$non_lazy_ptr-Lj131(%ecx),%ebx
	movl	(%ebx,%eax,4),%ebx
	xorl	%edx,%ebx
	movl	-8(%ebp),%eax
	movl	%ebx,12(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TDECOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TDECOMPRESSOR
_ZIPPER_TDECOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TDECOMPRESSOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
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
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj146
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
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
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj151
	call	LFPC_RERAISE$stub
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
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj148
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
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
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj167:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj166
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj166:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj148
Lj148:
Lj134:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TCOMPRESSOR_$__UPDC32$BYTE
_ZIPPER_TCOMPRESSOR_$__UPDC32$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj175
Lj175:
	popl	%ecx
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
	movl	L_TC_ZIPPER_CRC_32_TAB$non_lazy_ptr-Lj175(%ecx),%ebx
	movl	(%ebx,%eax,4),%ebx
	xorl	%edx,%ebx
	movl	-8(%ebp),%eax
	movl	%ebx,12(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TCOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TCOMPRESSOR
_ZIPPER_TCOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TCOMPRESSOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
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
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj190
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
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
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj195
	call	LFPC_RERAISE$stub
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
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj192
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
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
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj211:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj210
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj210:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj192
Lj192:
Lj178:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TDEFLATER_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TDEFLATER
_ZIPPER_TDEFLATER_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TDEFLATER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
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
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj230
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj234
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_ZIPPER_TCOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TCOMPRESSOR$stub
	movl	-12(%ebp),%eax
	movl	$2,32(%eax)
Lj234:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj235
	call	LFPC_RERAISE$stub
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
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj232
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
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
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj255:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj254
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj254:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj232
Lj232:
Lj218:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TDEFLATER_$__COMPRESS
_ZIPPER_TDEFLATER_$__COMPRESS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-136(%ebp)
	movl	%esi,-132(%ebp)
	call	Lj263
Lj263:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$-1,12(%eax)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
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
	movl	20(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,-48(%ebp)
	movl	%edx,-44(%ebp)
	fildq	-48(%ebp)
	movl	L_$ZIPPER$_Ld5$non_lazy_ptr-Lj263(%ebx),%eax
	fldt	(%eax)
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
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj292
	movb	$1,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%ecx
	movl	L_VMT_ZSTREAM_TCOMPRESSIONSTREAM$non_lazy_ptr-Lj263(%ebx),%edx
	movl	$0,%eax
	call	L_ZSTREAM_TCOMPRESSIONSTREAM_$__CREATE$TCOMPRESSIONLEVEL$TSTREAM$BOOLEAN$$TCOMPRESSIONSTREAM$stub
	movl	%eax,-24(%ebp)
	leal	-96(%ebp),%ecx
	leal	-120(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj308
	movl	-4(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj312
	jmp	Lj313
Lj312:
	fldz
	fstpl	(%esp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	call	*%ecx
Lj313:
	.align 2
Lj320:
	movl	-4(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%esi
	decl	%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj332
	decl	-12(%ebp)
	.align 2
Lj333:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	(%eax,%edx,1),%dl
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TCOMPRESSOR_$__UPDC32$BYTE$stub
	cmpl	-12(%ebp),%esi
	jg	Lj333
Lj332:
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj341
	.align 2
Lj340:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	-24(%ebp),%eax
	movl	-24(%ebp),%esi
	movl	(%esi),%esi
	call	*132(%esi)
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
	movl	L_$ZIPPER$_Ld5$non_lazy_ptr-Lj263(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpl	-128(%ebp)
	fldl	-128(%ebp)
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
	call	LFPC_POPADDRSTACK$stub
	movl	-24(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj309
	decl	%eax
	testl	%eax,%eax
	je	Lj310
Lj310:
	call	LFPC_RERAISE$stub
Lj309:
Lj292:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj293
	decl	%eax
	testl	%eax,%eax
	je	Lj294
Lj294:
	call	LFPC_RERAISE$stub
Lj293:
	movl	-4(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj366
	jmp	Lj367
Lj366:
	movl	L_$ZIPPER$_Ld6$non_lazy_ptr-Lj263(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$ZIPPER$_Ld6$non_lazy_ptr-Lj263(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	call	*%ecx
Lj367:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	notl	%edx
	movl	-4(%ebp),%eax
	movl	%edx,12(%eax)
	movl	-136(%ebp),%ebx
	movl	-132(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TDEFLATER_$__ZIPID$$WORD
_ZIPPER_TDEFLATER_$__ZIPID$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movw	$8,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TDEFLATER_$__ZIPVERSIONREQD$$WORD
_ZIPPER_TDEFLATER_$__ZIPVERSIONREQD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movw	$20,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TDEFLATER_$__ZIPBITFLAG$$WORD
_ZIPPER_TDEFLATER_$__ZIPBITFLAG$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
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
	.align 4
.globl	_ZIPPER_TINFLATER_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TINFLATER
_ZIPPER_TINFLATER_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TINFLATER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
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
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj414
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj418
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_ZIPPER_TDECOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TDECOMPRESSOR$stub
Lj418:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj419
	call	LFPC_RERAISE$stub
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
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj416
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
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
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj437:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj436
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj436:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj416
Lj416:
Lj402:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TINFLATER_$__DECOMPRESS
_ZIPPER_TINFLATER_$__DECOMPRESS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-136(%ebp)
	movl	%esi,-132(%ebp)
	call	Lj445
Lj445:
	popl	%ebx
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
	movl	20(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,-48(%ebp)
	movl	%edx,-44(%ebp)
	fildq	-48(%ebp)
	movl	L_$ZIPPER$_Ld5$non_lazy_ptr-Lj445(%ebx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	fistpq	-48(%ebp)
	fwait
	movl	-48(%ebp),%eax
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
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj482
	movb	$1,(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_ZSTREAM_TDECOMPRESSIONSTREAM$non_lazy_ptr-Lj445(%ebx),%edx
	movl	$0,%eax
	call	L_ZSTREAM_TDECOMPRESSIONSTREAM_$__CREATE$TSTREAM$BOOLEAN$$TDECOMPRESSIONSTREAM$stub
	movl	%eax,-20(%ebp)
	leal	-96(%ebp),%ecx
	leal	-120(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj496
	.align 2
Lj500:
	movl	-4(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%esi
	decl	%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj512
	decl	-12(%ebp)
	.align 2
Lj513:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	(%eax,%edx,1),%dl
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TDECOMPRESSOR_$__UPDC32$BYTE$stub
	cmpl	-12(%ebp),%esi
	jg	Lj513
Lj512:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%esi
	movl	8(%esi),%esi
	movl	(%esi),%esi
	call	*132(%esi)
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
	movl	L_$ZIPPER$_Ld5$non_lazy_ptr-Lj445(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpl	-128(%ebp)
	fldl	-128(%ebp)
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
	call	LFPC_POPADDRSTACK$stub
	movl	-20(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj497
	decl	%eax
	testl	%eax,%eax
	je	Lj498
Lj498:
	call	LFPC_RERAISE$stub
Lj497:
Lj482:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj483
	decl	%eax
	testl	%eax,%eax
	je	Lj484
Lj484:
	call	LFPC_RERAISE$stub
Lj483:
	movl	-4(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj539
	jmp	Lj540
Lj539:
	movl	L_$ZIPPER$_Ld6$non_lazy_ptr-Lj445(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$ZIPPER$_Ld6$non_lazy_ptr-Lj445(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	24(%ecx),%ecx
	call	*%ecx
Lj540:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	notl	%edx
	movl	-4(%ebp),%eax
	movl	%edx,12(%eax)
	movl	-136(%ebp),%ebx
	movl	-132(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TINFLATER_$__ZIPID$$WORD
_ZIPPER_TINFLATER_$__ZIPID$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movw	$8,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TSHRINKER_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TSHRINKER
_ZIPPER_TSHRINKER_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TSHRINKER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
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
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj565
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj569
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_ZIPPER_TCOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TCOMPRESSOR$stub
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	%eax,1092(%edx)
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	%eax,1096(%edx)
	movl	$40960,%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	%eax,44(%edx)
	movl	$15870,%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	%eax,48(%edx)
Lj569:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj570
	call	LFPC_RERAISE$stub
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
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj567
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
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
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj606:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj605
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj605:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj567
Lj567:
Lj553:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TSHRINKER_$__DESTROY
_ZIPPER_TSHRINKER_$__DESTROY:
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
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	1092(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	1096(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
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
	.align 4
.globl	_ZIPPER_TSHRINKER_$__COMPRESS
_ZIPPER_TSHRINKER_$__COMPRESS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	call	Lj637
Lj637:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj638
	movl	-4(%ebp),%eax
	movl	$1,1104(%eax)
	movl	-4(%ebp),%eax
	movl	$1,1108(%eax)
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TSHRINKER_$__INITIALIZECODETABLE$stub
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TSHRINKER_$__FILLINPUTBUFFER$stub
	movl	-4(%ebp),%eax
	movb	$1,1100(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,12(%eax)
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	$0,%eax
	call	Lfpc_mul_int64$stub
	movl	%eax,-64(%ebp)
	movl	%edx,-60(%ebp)
	fildq	-64(%ebp)
	movl	L_$ZIPPER$_Ld5$non_lazy_ptr-Lj637(%ebx),%eax
	fldt	(%eax)
	fdivrp	%st,%st(1)
	fistpq	-64(%ebp)
	fwait
	movl	-4(%ebp),%edx
	movl	-64(%ebp),%eax
	movl	%eax,1112(%edx)
	jmp	Lj664
	.align 2
Lj663:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	1084(%ecx),%esi
	movl	$0,%ecx
	subl	%esi,%eax
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
	call	L_ZIPPER_TSHRINKER_$__FILLINPUTBUFFER$stub
	jmp	Lj676
Lj673:
	movzwl	-10(%ebp),%edx
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	1092(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	1084(%eax),%eax
	leal	(%ecx,%eax,1),%eax
	movzwl	-10(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movzwl	-10(%ebp),%eax
	movl	-4(%ebp),%edx
	addl	%eax,1084(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TSHRINKER_$__PROCESSLINE$ANSISTRING$stub
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
	call	L_ZIPPER_TSHRINKER_$__PROCESSLINE$ANSISTRING$stub
Lj638:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-8(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj639
	call	LFPC_RERAISE$stub
Lj639:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TSHRINKER_$__ZIPID$$WORD
_ZIPPER_TSHRINKER_$__ZIPID$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movw	$1,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TSHRINKER_$__ZIPVERSIONREQD$$WORD
_ZIPPER_TSHRINKER_$__ZIPVERSIONREQD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movw	$10,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TSHRINKER_$__ZIPBITFLAG$$WORD
_ZIPPER_TSHRINKER_$__ZIPBITFLAG$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movw	$0,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TSHRINKER_$__DOONPROGRESS$DOUBLE
_ZIPPER_TSHRINKER_$__DOONPROGRESS$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	Lj719
	jmp	Lj720
Lj719:
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
	ret

.text
	.align 4
.globl	_ZIPPER_TSHRINKER_$__FILLINPUTBUFFER
_ZIPPER_TSHRINKER_$__FILLINPUTBUFFER:
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
	.align 4
.globl	_ZIPPER_TSHRINKER_$__WRITEOUTPUTBUFFER
_ZIPPER_TSHRINKER_$__WRITEOUTPUTBUFFER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	1096(%eax),%edx
	movl	-4(%ebp),%eax
	movl	1088(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$0,1088(%eax)
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TSHRINKER_$__PUTCHAR$BYTE
_ZIPPER_TSHRINKER_$__PUTCHAR$BYTE:
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
	call	L_ZIPPER_TSHRINKER_$__WRITEOUTPUTBUFFER$stub
Lj761:
	movl	-8(%ebp),%eax
	incl	1108(%eax)
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TSHRINKER_$__FLUSHOUTPUT
_ZIPPER_TSHRINKER_$__FLUSHOUTPUT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	1088(%eax),%eax
	cmpl	$0,%eax
	ja	Lj766
	jmp	Lj767
Lj766:
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TSHRINKER_$__WRITEOUTPUTBUFFER$stub
Lj767:
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT
_ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	call	L_ZIPPER_TSHRINKER_$__PUTCHAR$BYTE$stub
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
	.align 2
Lj787:
	movb	-12(%ebp),%dl
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TSHRINKER_$__PUTCHAR$BYTE$stub
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
	.align 4
.globl	_ZIPPER_TSHRINKER_$__INITIALIZECODETABLE
_ZIPPER_TSHRINKER_$__INITIALIZECODETABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movw	$0,-6(%ebp)
	decw	-6(%ebp)
	.align 2
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
	.align 4
.globl	_ZIPPER_TSHRINKER_$__PRUNE$WORD
_ZIPPER_TSHRINKER_$__PRUNE$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	.align 2
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
	call	L_ZIPPER_TSHRINKER_$__PRUNE$WORD$stub
	movl	-8(%ebp),%eax
	movl	44(%eax),%edx
	movzwl	-10(%ebp),%eax
	imull	$5,%eax
	movw	2(%edx,%eax),%ax
	movw	%ax,-12(%ebp)
	jmp	Lj848
	.align 2
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
	call	L_ZIPPER_TSHRINKER_$__PRUNE$WORD$stub
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
	.align 4
.globl	_ZIPPER_TSHRINKER_$__CLEAR_TABLE
_ZIPPER_TSHRINKER_$__CLEAR_TABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	54(%eax),%eax
	movb	$0,%cl
	movl	$1024,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movw	$0,-6(%ebp)
	decw	-6(%ebp)
	.align 2
Lj879:
	incw	-6(%ebp)
	movw	-6(%ebp),%dx
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TSHRINKER_$__PRUNE$WORD$stub
	cmpw	$255,-6(%ebp)
	jb	Lj879
	movl	-4(%ebp),%eax
	movw	$8192,52(%eax)
	movw	$8191,-6(%ebp)
	incw	-6(%ebp)
	.align 2
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
	.align 4
.globl	_ZIPPER_TSHRINKER_$__TABLE_ADD$WORD$BYTE
_ZIPPER_TSHRINKER_$__TABLE_ADD$WORD$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	.align 2
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
	.align 4
.globl	_ZIPPER_TSHRINKER_$__TABLE_LOOKUP$SMALLINT$BYTE$SMALLINT$$BOOLEAN
_ZIPPER_TSHRINKER_$__TABLE_LOOKUP$SMALLINT$BYTE$SMALLINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	.align 2
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
	ret

.text
	.align 4
.globl	_ZIPPER_TSHRINKER_$__SHRINK$SMALLINT
_ZIPPER_TSHRINKER_$__SHRINK$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj956
Lj956:
	popl	%ebx
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
	movl	L_TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE$non_lazy_ptr-Lj956(%ebx),%edx
	movw	%ax,(%edx)
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
	movl	L_TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE$non_lazy_ptr-Lj956(%ebx),%eax
	movw	(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT$stub
	movl	-8(%ebp),%eax
	movw	$256,%dx
	call	L_ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT$stub
	movl	-8(%ebp),%eax
	movw	$2,%dx
	call	L_ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT$stub
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TSHRINKER_$__CLEAR_TABLE$stub
	movb	-4(%ebp),%cl
	movl	L_TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE$non_lazy_ptr-Lj956(%ebx),%eax
	movw	(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TSHRINKER_$__TABLE_ADD$WORD$BYTE$stub
	movw	-4(%ebp),%ax
	movl	L_TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE$non_lazy_ptr-Lj956(%ebx),%edx
	movw	%ax,(%edx)
	jmp	Lj998
Lj975:
	leal	-10(%ebp),%eax
	movl	%eax,(%esp)
	movb	-4(%ebp),%cl
	movl	L_TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE$non_lazy_ptr-Lj956(%ebx),%eax
	movw	(%eax),%ax
	movl	-8(%ebp),%esi
	movw	%ax,%dx
	movl	%esi,%eax
	call	L_ZIPPER_TSHRINKER_$__TABLE_LOOKUP$SMALLINT$BYTE$SMALLINT$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj999
	jmp	Lj1000
Lj999:
	movw	-10(%ebp),%ax
	movl	L_TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE$non_lazy_ptr-Lj956(%ebx),%edx
	movw	%ax,(%edx)
	jmp	Lj1011
Lj1000:
	movl	L_TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE$non_lazy_ptr-Lj956(%ebx),%eax
	movw	(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT$stub
	movb	-4(%ebp),%cl
	movl	L_TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE$non_lazy_ptr-Lj956(%ebx),%eax
	movw	(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TSHRINKER_$__TABLE_ADD$WORD$BYTE$stub
	movw	-4(%ebp),%dx
	movl	L_TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE$non_lazy_ptr-Lj956(%ebx),%eax
	movw	%dx,(%eax)
	movl	-8(%ebp),%eax
	movl	48(%eax),%ecx
	movl	-8(%ebp),%eax
	movzwl	52(%eax),%eax
	movl	-8(%ebp),%edx
	movw	-514(%ecx,%eax,2),%ax
	cmpw	1080(%edx),%ax
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
	call	L_ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT$stub
	movl	-8(%ebp),%eax
	movw	$1,%dx
	call	L_ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT$stub
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
	movl	L_TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE$non_lazy_ptr-Lj956(%ebx),%eax
	movw	(%eax),%dx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT$stub
	movl	-8(%ebp),%eax
	movw	$-1,%dx
	call	L_ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT$stub
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TSHRINKER_$__FLUSHOUTPUT$stub
Lj1037:
Lj971:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TSHRINKER_$__PROCESSLINE$ANSISTRING
_ZIPPER_TSHRINKER_$__PROCESSLINE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	call	Lj1049
Lj1049:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1050
	jmp	Lj1051
Lj1050:
	movl	-8(%ebp),%eax
	movw	$-1,%dx
	call	L_ZIPPER_TSHRINKER_$__SHRINK$SMALLINT$stub
	jmp	Lj1056
Lj1051:
	movl	-4(%ebp),%esi
	testl	%esi,%esi
	je	Lj1060
	movl	-4(%esi),%esi
Lj1060:
	movw	$1,-10(%ebp)
	cmpw	-10(%ebp),%si
	jb	Lj1058
	decw	-10(%ebp)
	.align 2
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
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	fildq	-24(%ebp)
	movl	-8(%ebp),%eax
	movl	1104(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-20(%ebp)
	fildq	-24(%ebp)
	fdivp	%st,%st(1)
	movl	L_$ZIPPER$_Ld5$non_lazy_ptr-Lj1049(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	fstpl	-32(%ebp)
	fldl	-32(%ebp)
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
	call	L_ZIPPER_TCOMPRESSOR_$__UPDC32$BYTE$stub
	movl	-4(%ebp),%edx
	movzwl	-10(%ebp),%eax
	movzbw	-1(%edx,%eax,1),%dx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TSHRINKER_$__SHRINK$SMALLINT$stub
	cmpw	-10(%ebp),%si
	ja	Lj1059
Lj1058:
Lj1056:
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__GETFILEINFO
_ZIPPER_TZIPPER_$__GETFILEINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%ebx,-244(%ebp)
	movl	%esi,-240(%ebp)
	movl	%edi,-236(%ebp)
	call	Lj1078
Lj1078:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	L_INIT_SYSUTILS_TSEARCHREC$non_lazy_ptr-Lj1078(%esi),%edx
	leal	-44(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	$0,-232(%ebp)
	leal	-156(%ebp),%ecx
	leal	-180(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-184(%ebp)
	testl	%eax,%eax
	jne	Lj1079
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-48(%ebp)
	cmpl	-48(%ebp),%ebx
	jb	Lj1083
	decl	-48(%ebp)
	.align 2
Lj1084:
	incl	-48(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-48(%ebp),%edx
	call	L_ZIPPER_TZIPFILEENTRIES_$__GETZ$LONGINT$$TZIPFILEENTRY$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
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
	movl	$0,(%esp)
	movl	-48(%ebp),%eax
	movl	%eax,-188(%ebp)
	movl	$0,-192(%ebp)
	leal	-192(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_ZIPPER_SERRMISSINGFILENAME$non_lazy_ptr-Lj1078(%esi),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_ZIPPER_EZIPERROR$non_lazy_ptr-Lj1078(%esi),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj1078(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1096:
	movl	-8(%ebp),%eax
	movl	40(%eax),%edi
	movl	L_INIT_SYSUTILS_TSEARCHREC$non_lazy_ptr-Lj1078(%esi),%eax
	movl	%eax,%edx
	leal	-44(%ebp),%eax
	call	LFPC_DECREF$stub
	leal	-44(%ebp),%ecx
	movl	$63,%edx
	movl	%edi,%eax
	call	L_SYSUTILS_FINDFIRST$ANSISTRING$LONGINT$TSEARCHREC$$LONGINT$stub
	testl	%eax,%eax
	je	Lj1107
	jmp	Lj1108
Lj1107:
	leal	-204(%ebp),%ecx
	leal	-228(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-188(%ebp)
	testl	%eax,%eax
	jne	Lj1115
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,56(%edx)
	movl	-44(%ebp),%eax
	call	L_SYSUTILS_FILEDATETODATETIME$LONGINT$$TDATETIME$stub
	movl	-8(%ebp),%eax
	fstpl	32(%eax)
	leal	-144(%ebp),%eax
	movl	%eax,-192(%ebp)
	leal	-232(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-232(%ebp)
	movl	-8(%ebp),%edi
	movl	40(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-232(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	40(%edi),%eax
	movl	%eax,-232(%ebp)
	movl	-192(%ebp),%edx
	movl	-232(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1139
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj1078(%esi),%ecx
	movl	%ecx,%eax
Lj1139:
	call	L_BASEUNIX_FPLSTAT$PCHAR$PSTAT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj1127
	jmp	Lj1128
Lj1127:
	movl	-8(%ebp),%edx
	movzwl	-136(%ebp),%eax
	movl	%eax,28(%edx)
Lj1128:
Lj1115:
	call	LFPC_POPADDRSTACK$stub
	leal	-44(%ebp),%eax
	call	L_SYSUTILS_FINDCLOSE$TSEARCHREC$stub
	movl	-188(%ebp),%eax
	testl	%eax,%eax
	je	Lj1116
	decl	%eax
	testl	%eax,%eax
	je	Lj1117
Lj1117:
	call	LFPC_RERAISE$stub
Lj1116:
	jmp	Lj1144
Lj1108:
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-188(%ebp)
	movl	$11,-192(%ebp)
	leal	-192(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_ZIPPER_SERRFILEDOESNOTEXIST$non_lazy_ptr-Lj1078(%esi),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_ZIPPER_EZIPERROR$non_lazy_ptr-Lj1078(%esi),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj1078(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1144:
	jmp	Lj1155
Lj1094:
	leal	-232(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-232(%ebp)
	leal	-232(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING$stub
	movl	-232(%ebp),%eax
	testl	%eax,%eax
	je	Lj1156
	jmp	Lj1157
Lj1156:
	movl	$0,(%esp)
	movl	-48(%ebp),%eax
	movl	%eax,-188(%ebp)
	movl	$0,-192(%ebp)
	leal	-192(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_ZIPPER_SERRMISSINGARCHIVENAME$non_lazy_ptr-Lj1078(%esi),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_ZIPPER_EZIPERROR$non_lazy_ptr-Lj1078(%esi),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj1078(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1157:
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	movl	-8(%ebp),%edx
	movl	60(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-8(%ebp),%edx
	movl	%eax,56(%edx)
	movl	-8(%ebp),%eax
	movl	$33252,28(%eax)
Lj1155:
	cmpl	-48(%ebp),%ebx
	ja	Lj1084
Lj1083:
Lj1079:
	call	LFPC_POPADDRSTACK$stub
	leal	-232(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-232(%ebp)
	movl	L_INIT_SYSUTILS_TSEARCHREC$non_lazy_ptr-Lj1078(%esi),%edx
	leal	-44(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-184(%ebp),%eax
	testl	%eax,%eax
	je	Lj1080
	call	LFPC_RERAISE$stub
Lj1080:
	movl	-244(%ebp),%ebx
	movl	-240(%ebp),%esi
	movl	-236(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__SETENTRIES$TZIPFILEENTRIES
_ZIPPER_TZIPPER_$__SETENTRIES$TZIPFILEENTRIES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj1188
	jmp	Lj1189
Lj1188:
	jmp	Lj1186
Lj1189:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
Lj1186:
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__OPENINPUT$TZIPFILEENTRY$$BOOLEAN
_ZIPPER_TZIPPER_$__OPENINPUT$TZIPFILEENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj1195
Lj1195:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1196
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	testl	%eax,%eax
	jne	Lj1199
	jmp	Lj1200
Lj1199:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,36(%edx)
	jmp	Lj1203
Lj1200:
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TZIPFILEENTRY_$__ISDIRECTORY$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1204
	jmp	Lj1205
Lj1204:
	movl	L_VMT_CLASSES_TSTRINGSTREAM$non_lazy_ptr-Lj1195(%ebx),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_CLASSES_TSTRINGSTREAM_$__CREATE$ANSISTRING$$TSTRINGSTREAM$stub
	movl	-8(%ebp),%edx
	movl	%eax,36(%edx)
	jmp	Lj1216
Lj1205:
	movw	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj1195(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	-8(%ebp),%edx
	movl	%eax,36(%edx)
Lj1216:
Lj1203:
	movb	$1,-9(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,164(%eax)
	jne	Lj1229
	jmp	Lj1230
Lj1229:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	168(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%esi
	movl	164(%esi),%esi
	call	*%esi
Lj1230:
Lj1196:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1197
	call	LFPC_RERAISE$stub
Lj1197:
	movb	-9(%ebp),%al
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__CLOSEINPUT$TZIPFILEENTRY
_ZIPPER_TZIPPER_$__CLOSEINPUT$TZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	36(%eax),%eax
	cmpl	60(%edx),%eax
	jne	Lj1243
	jmp	Lj1244
Lj1243:
	movl	-8(%ebp),%eax
	leal	36(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	jmp	Lj1247
Lj1244:
	movl	-8(%ebp),%eax
	movl	$0,36(%eax)
Lj1247:
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TZIPPER_$__DOENDOFFILE$stub
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__STARTZIPFILE$TZIPFILEENTRY
_ZIPPER_TZIPPER_$__STARTZIPFILE$TZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	leal	40(%eax),%eax
	movb	$0,%cl
	movl	$30,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-8(%ebp),%eax
	leal	40(%eax),%ebx
	movl	$67324752,(%ebx)
	movw	$10,4(%ebx)
	movw	$0,6(%ebx)
	movw	$1,8(%ebx)
	movl	-4(%ebp),%edx
	movl	32(%edx),%eax
	movl	%eax,(%esp)
	movl	36(%edx),%eax
	movl	%eax,4(%esp)
	leal	10(%ebx),%edx
	leal	12(%ebx),%eax
	call	L_ZIPPER_DATETIMETOZIPDATETIME$TDATETIME$WORD$WORD$stub
	movl	$0,14(%ebx)
	movl	$0,18(%ebx)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,22(%ebx)
	movw	$0,26(%ebx)
	movw	$0,28(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__UPDATEZIPHEADER$TZIPFILEENTRY$TSTREAM$LONGWORD$WORD$WORD$WORD$$BOOLEAN
_ZIPPER_TZIPPER_$__UPDATEZIPHEADER$TZIPFILEENTRY$TSTREAM$LONGWORD$WORD$WORD$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-320(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-316(%ebp)
	leal	-284(%ebp),%ecx
	leal	-308(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-312(%ebp)
	testl	%eax,%eax
	jne	Lj1288
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-316(%ebp)
	leal	-316(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING$stub
	movl	-316(%ebp),%ecx
	leal	-269(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
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
	je	Lj1309
	jmp	Lj1310
Lj1309:
	movw	$0,8(%ebx)
	movl	22(%ebx),%eax
	movl	%eax,18(%ebx)
	jmp	Lj1315
Lj1310:
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
	ja	Lj1324
	jmp	Lj1325
Lj1324:
	movw	12(%ebp),%ax
	movw	%ax,4(%ebx)
Lj1325:
Lj1315:
	movl	-12(%ebp),%eax
	leal	40(%eax),%edx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	$30,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movzbl	-269(%ebp),%ecx
	leal	-268(%ebp),%edx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
Lj1288:
	call	LFPC_POPADDRSTACK$stub
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-316(%ebp)
	movl	-312(%ebp),%eax
	testl	%eax,%eax
	je	Lj1289
	call	LFPC_RERAISE$stub
Lj1289:
	movb	-13(%ebp),%al
	movl	-320(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__BUILDZIPDIRECTORY
_ZIPPER_TZIPPER_$__BUILDZIPDIRECTORY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
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
	movl	$0,4(%esp)
	movl	$0,(%esp)
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
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	.align 2
Lj1364:
	movl	-4(%ebp),%eax
	movzwl	66(%eax),%ecx
	leal	-286(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_setlength$stub
	movl	-4(%ebp),%eax
	movzwl	66(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	leal	-285(%ebp),%edx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
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
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	leal	72(%eax),%ebx
	movl	$33639248,(%ebx)
	movl	-4(%ebp),%eax
	movw	44(%eax),%ax
	movw	%ax,4(%ebx)
	movzwl	4(%ebx),%eax
	orl	$768,%eax
	movw	%ax,4(%ebx)
	movl	-4(%ebp),%eax
	leal	44(%eax),%eax
	leal	6(%ebx),%edx
	movl	$26,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
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
	call	L_ZIPPER_TZIPFILEENTRIES_$__GETZ$LONGINT$$TZIPFILEENTRY$stub
	movl	28(%eax),%eax
	shll	$16,%eax
	movl	%eax,38(%ebx)
	movl	-20(%ebp),%eax
	movl	%eax,42(%ebx)
	movl	$0,4(%esp)
	movl	$0,(%esp)
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
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movzbl	-286(%ebp),%ecx
	leal	-285(%ebp),%edx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	incw	-30(%ebp)
	movl	-4(%ebp),%eax
	movl	58(%eax),%edx
	movl	$0,%eax
	addl	-12(%ebp),%edx
	adcl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
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
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	cmpl	$33639248,%eax
	je	Lj1366
	jmp	Lj1364
Lj1366:
	movl	$0,4(%esp)
	movl	$0,(%esp)
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
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
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
	je	Lj1487
	movl	-4(%eax),%eax
Lj1487:
	movw	%ax,20(%ebx)
	movl	-4(%ebp),%eax
	leal	120(%eax),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	$22,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj1496
	movl	-4(%eax),%eax
Lj1496:
	cmpl	$0,%eax
	jg	Lj1494
	jmp	Lj1495
Lj1494:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj1499
	movl	-4(%ecx),%ecx
Lj1499:
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
Lj1495:
	movl	-292(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__CREATECOMPRESSOR$TZIPFILEENTRY$TSTREAM$TSTREAM$$TCOMPRESSOR
_ZIPPER_TZIPPER_$__CREATECOMPRESSOR$TZIPFILEENTRY$TSTREAM$TSTREAM$$TCOMPRESSOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj1505
Lj1505:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_ZIPPER_TDEFLATER$non_lazy_ptr-Lj1505(%esi),%edx
	movl	$0,%eax
	movl	L_VMT_ZIPPER_TDEFLATER$non_lazy_ptr-Lj1505(%esi),%ebx
	call	*100(%ebx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	L_VMT_ZIPPER_TDEFLATER$non_lazy_ptr-Lj1505(%esi),%eax
	call	Lfpc_do_as$stub
	movl	-4(%ebp),%edx
	movl	64(%edx),%edx
	movl	%edx,32(%eax)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__ZIPONEFILE$TZIPFILEENTRY
_ZIPPER_TZIPPER_$__ZIPONEFILE$TZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$216,%esp
	movl	%ebx,-200(%ebp)
	movl	%esi,-196(%ebp)
	movl	%edi,-192(%ebp)
	call	Lj1525
Lj1525:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-28(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj1526
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TZIPPER_$__OPENINPUT$TZIPFILEENTRY$$BOOLEAN$stub
	leal	-80(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-108(%ebp)
	testl	%eax,%eax
	jne	Lj1533
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TZIPPER_$__STARTZIPFILE$TZIPFILEENTRY$stub
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	-8(%ebp),%edx
	movl	36(%edx),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-8(%ebp),%ecx
	movl	28(%ecx),%esi
	movl	%esi,%ecx
	sarl	$31,%ecx
	cmpl	%ecx,%edx
	jl	Lj1541
	jg	Lj1542
	cmpl	%esi,%eax
	jbe	Lj1541
	jmp	Lj1542
Lj1541:
	movl	L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr-Lj1525(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-24(%ebp)
	jmp	Lj1551
Lj1542:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	leal	-28(%ebp),%ecx
	movl	L_$ZIPPER$_Ld7$non_lazy_ptr-Lj1525(%ebx),%edx
	call	L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movw	$65280,(%esp)
	movl	-28(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj1525(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	%eax,-24(%ebp)
Lj1551:
	leal	-120(%ebp),%ecx
	leal	-144(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-148(%ebp)
	testl	%eax,%eax
	jne	Lj1568
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	36(%eax),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*104(%esi)
	movl	%eax,%esi
	movl	%esi,%edi
	leal	-160(%ebp),%ecx
	leal	-184(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-188(%ebp)
	testl	%eax,%eax
	jne	Lj1584
	movl	-8(%ebp),%edx
	movl	148(%edx),%eax
	movl	%eax,24(%edi)
	movl	152(%edx),%eax
	movl	%eax,28(%edi)
	movl	-8(%ebp),%eax
	movl	144(%eax),%eax
	movl	%eax,20(%edi)
	movl	%edi,%eax
	movl	%edi,%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	12(%edi),%eax
	movl	%eax,-12(%ebp)
	movl	%edi,%eax
	movl	(%eax),%eax
	movl	%edi,%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movw	%ax,-14(%ebp)
	movl	%edi,%eax
	movl	(%eax),%eax
	movl	%edi,%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movw	%ax,-16(%ebp)
	movl	%edi,%eax
	movl	%edi,%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movw	%ax,-18(%ebp)
Lj1584:
	call	LFPC_POPADDRSTACK$stub
	movl	%edi,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-188(%ebp),%eax
	testl	%eax,%eax
	je	Lj1585
	decl	%eax
	testl	%eax,%eax
	je	Lj1586
Lj1586:
	call	LFPC_RERAISE$stub
Lj1585:
	movw	-18(%ebp),%ax
	movw	%ax,(%esp)
	movw	-16(%ebp),%ax
	movw	%ax,4(%esp)
	movw	-14(%ebp),%ax
	movw	%ax,8(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TZIPPER_$__UPDATEZIPHEADER$TZIPFILEENTRY$TSTREAM$LONGWORD$WORD$WORD$WORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1610
	jmp	Lj1611
Lj1610:
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	-24(%ebp),%edx
	call	L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub
	jmp	Lj1632
Lj1611:
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	36(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	movl	36(%eax),%edx
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	call	L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub
Lj1632:
Lj1568:
	call	LFPC_POPADDRSTACK$stub
	movl	-24(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1647
	jmp	Lj1648
Lj1647:
	movl	-28(%ebp),%eax
	call	L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub
Lj1648:
	movl	-148(%ebp),%eax
	testl	%eax,%eax
	je	Lj1569
	decl	%eax
	testl	%eax,%eax
	je	Lj1570
Lj1570:
	call	LFPC_RERAISE$stub
Lj1569:
Lj1533:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TZIPPER_$__CLOSEINPUT$TZIPFILEENTRY$stub
	movl	-108(%ebp),%eax
	testl	%eax,%eax
	je	Lj1534
	decl	%eax
	testl	%eax,%eax
	je	Lj1535
Lj1535:
	call	LFPC_RERAISE$stub
Lj1534:
Lj1526:
	call	LFPC_POPADDRSTACK$stub
	leal	-28(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-28(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj1527
	call	LFPC_RERAISE$stub
Lj1527:
	movl	-200(%ebp),%ebx
	movl	-196(%ebp),%esi
	movl	-192(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__ZIPALLFILES
_ZIPPER_TZIPPER_$__ZIPALLFILES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TZIPPER_$__SAVETOFILE$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__SAVETOFILE$ANSISTRING
_ZIPPER_TZIPPER_$__SAVETOFILE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj1668
Lj1668:
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
	jne	Lj1669
	movw	$65280,(%esp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj1668(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	%eax,-12(%ebp)
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj1682
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TZIPPER_$__SAVETOSTREAM$TSTREAM$stub
Lj1682:
	call	LFPC_POPADDRSTACK$stub
	leal	-12(%ebp),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj1683
	decl	%eax
	testl	%eax,%eax
	je	Lj1684
Lj1684:
	call	LFPC_RERAISE$stub
Lj1683:
Lj1669:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1670
	call	LFPC_RERAISE$stub
Lj1670:
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__SAVETOSTREAM$TSTREAM
_ZIPPER_TZIPPER_$__SAVETOSTREAM$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TZIPPER_$__CHECKENTRIES$$LONGINT$stub
	testl	%eax,%eax
	je	Lj1696
	jmp	Lj1697
Lj1696:
	jmp	Lj1692
Lj1697:
	movl	-8(%ebp),%eax
	movb	$1,8(%eax)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1702
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TZIPPER_$__GETFILEINFO$stub
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1711
	decl	-12(%ebp)
	.align 2
Lj1712:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_ZIPPER_TZIPFILEENTRIES_$__GETZ$LONGINT$$TZIPFILEENTRY$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	incl	-16(%ebp)
	cmpl	-12(%ebp),%ebx
	jg	Lj1712
Lj1711:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1723
	jmp	Lj1724
Lj1723:
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TZIPPER_$__BUILDZIPDIRECTORY$stub
Lj1724:
Lj1702:
	call	LFPC_POPADDRSTACK$stub
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
	jl	Lj1730
	decl	-12(%ebp)
	.align 2
Lj1731:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edx
	decl	%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__DELETE$LONGINT$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj1731
Lj1730:
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1703
	decl	%eax
	testl	%eax,%eax
	je	Lj1704
Lj1704:
	call	LFPC_RERAISE$stub
Lj1703:
Lj1692:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__SETBUFSIZE$LONGWORD
_ZIPPER_TZIPPER_$__SETBUFSIZE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1741
Lj1741:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj1742
	jmp	Lj1743
Lj1742:
	movl	L_RESSTR_ZIPPER_SERRBUFSIZECHANGE$non_lazy_ptr-Lj1741(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_ZIPPER_EZIPERROR$non_lazy_ptr-Lj1741(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj1741(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1743:
	movl	-4(%ebp),%eax
	cmpl	$16384,%eax
	jae	Lj1750
	jmp	Lj1751
Lj1750:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,12(%eax)
Lj1751:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__SETFILENAME$ANSISTRING
_ZIPPER_TZIPPER_$__SETFILENAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	call	Lj1755
Lj1755:
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
	jne	Lj1756
	movl	-8(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj1759
	jmp	Lj1760
Lj1759:
	movl	L_RESSTR_ZIPPER_SERRFILECHANGE$non_lazy_ptr-Lj1755(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_ZIPPER_EZIPERROR$non_lazy_ptr-Lj1755(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj1755(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1760:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	16(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,16(%esi)
Lj1756:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1757
	call	LFPC_RERAISE$stub
Lj1757:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__ZIPFILES$ANSISTRING$TSTRINGS
_ZIPPER_TZIPPER_$__ZIPFILES$ANSISTRING$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
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
	jne	Lj1771
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	16(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,16(%ebx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_ZIPPER_TZIPPER_$__ZIPFILES$TSTRINGS$stub
Lj1771:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1772
	call	LFPC_RERAISE$stub
Lj1772:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__ZIPFILES$TSTRINGS
_ZIPPER_TZIPPER_$__ZIPFILES$TSTRINGS:
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
	.align 4
.globl	_ZIPPER_TZIPPER_$__ZIPFILES$ANSISTRING$TZIPFILEENTRIES
_ZIPPER_TZIPPER_$__ZIPFILES$ANSISTRING$TZIPFILEENTRIES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
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
	jne	Lj1790
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	16(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,16(%ebx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_ZIPPER_TZIPPER_$__ZIPFILES$TZIPFILEENTRIES$stub
Lj1790:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1791
	call	LFPC_RERAISE$stub
Lj1791:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__ZIPFILES$TZIPFILEENTRIES
_ZIPPER_TZIPPER_$__ZIPFILES$TZIPFILEENTRIES:
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
	.align 4
.globl	_ZIPPER_TZIPPER_$__DOENDOFFILE
_ZIPPER_TZIPPER_$__DOENDOFFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj1808
Lj1808:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	62(%eax),%eax
	cmpl	$0,%eax
	ja	Lj1809
	jmp	Lj1810
Lj1809:
	movl	-4(%ebp),%eax
	movl	62(%eax),%esi
	movl	$0,%ecx
	movl	-4(%ebp),%eax
	movl	58(%eax),%eax
	movl	$0,%edx
	subl	%eax,%esi
	sbbl	%edx,%ecx
	movl	%esi,-24(%ebp)
	movl	%ecx,-20(%ebp)
	fildq	-24(%ebp)
	movl	L_$ZIPPER$_Ld9$non_lazy_ptr-Lj1808(%ebx),%eax
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	62(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-20(%ebp)
	fildq	-24(%ebp)
	fdivrp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj1813
Lj1810:
	fldz
	fstpl	-12(%ebp)
Lj1813:
	movl	-4(%ebp),%eax
	cmpl	$0,156(%eax)
	jne	Lj1816
	jmp	Lj1817
Lj1816:
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
Lj1817:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__CREATE$$TZIPPER
_ZIPPER_TZIPPER_$__CREATE$$TZIPPER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj1825
Lj1825:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1826
	jmp	Lj1827
Lj1826:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj1827:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1832
	jmp	Lj1833
Lj1832:
	jmp	Lj1824
Lj1833:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1836
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj1840
	movl	-8(%ebp),%eax
	movl	$16384,12(%eax)
	movl	-8(%ebp),%eax
	movl	$262144,28(%eax)
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj1825(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,24(%edx)
	movl	L_VMT_ZIPPER_TZIPFILEENTRY$non_lazy_ptr-Lj1825(%ebx),%ecx
	movl	L_VMT_ZIPPER_TZIPFILEENTRIES$non_lazy_ptr-Lj1825(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TCOLLECTION_$__CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION$stub
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	movl	$1,144(%eax)
Lj1840:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj1841
	call	LFPC_RERAISE$stub
Lj1841:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1865
	jmp	Lj1864
Lj1865:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1863
	jmp	Lj1864
Lj1863:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1864:
Lj1836:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1838
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1869
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1870
	jmp	Lj1871
Lj1870:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1871:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1869:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1868
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1868:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1838
Lj1838:
Lj1824:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__CHECKENTRIES$$LONGINT
_ZIPPER_TZIPPER_$__CHECKENTRIES$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1878
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
	jl	Lj1882
	decl	-12(%ebp)
	.align 2
Lj1883:
	incl	-12(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
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
	call	L_ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$ANSISTRING$$TZIPFILEENTRY$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj1883
Lj1882:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-8(%ebp)
Lj1878:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1879
	call	LFPC_RERAISE$stub
Lj1879:
	movl	-8(%ebp),%eax
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__CLEAR
_ZIPPER_TZIPPER_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__CLEAR$stub
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%edx
	movl	24(%edx),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPPER_$__DESTROY
_ZIPPER_TZIPPER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1908
	jmp	Lj1909
Lj1908:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1909:
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TZIPPER_$__CLEAR$stub
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	leal	24(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1924
	jmp	Lj1923
Lj1924:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1922
	jmp	Lj1923
Lj1922:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1923:
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__OPENINPUT
_ZIPPER_TUNZIPPER_$__OPENINPUT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	call	Lj1928
Lj1928:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,28(%eax)
	jne	Lj1929
	jmp	Lj1930
Lj1929:
	movl	-4(%ebp),%eax
	leal	64(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	28(%ebx),%ebx
	call	*%ebx
Lj1930:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj1937
	jmp	Lj1938
Lj1937:
	movw	$32,(%esp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj1928(%esi),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	-4(%ebp),%edx
	movl	%eax,64(%edx)
Lj1938:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__OPENOUTPUT$ANSISTRING$TSTREAM$TFULLZIPFILEENTRY$$BOOLEAN
_ZIPPER_TUNZIPPER_$__OPENOUTPUT$ANSISTRING$TSTREAM$TFULLZIPFILEENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-108(%ebp)
	movl	%esi,-104(%ebp)
	movl	%edi,-100(%ebp)
	call	Lj1950
Lj1950:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-20(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj1951
	leal	-56(%ebp),%edi
	movl	L_TC_SYSTEM_ALLOWDIRECTORYSEPARATORS$non_lazy_ptr-Lj1950(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	L_TC_SYSTEM_ALLOWDIRECTORYSEPARATORS$non_lazy_ptr-Lj1950(%ebx),%eax
	movl	%eax,%edi
	movl	L_$ZIPPER$_Ld10$non_lazy_ptr-Lj1950(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING$stub
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	-12(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj1964
	jmp	Lj1965
Lj1964:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%esi
	movl	12(%esi),%esi
	call	*%esi
Lj1965:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1974
	jmp	Lj1975
Lj1974:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1976
	jmp	Lj1977
Lj1976:
	movl	-20(%ebp),%eax
	call	L_SYSUTILS_FORCEDIRECTORIES$ANSISTRING$$BOOLEAN$stub
Lj1977:
	movl	L_TC_SYSTEM_ALLOWDIRECTORYSEPARATORS$non_lazy_ptr-Lj1950(%ebx),%eax
	movl	%eax,%edi
	leal	-56(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movw	$65280,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj1950(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
Lj1975:
	movl	L_TC_SYSTEM_ALLOWDIRECTORYSEPARATORS$non_lazy_ptr-Lj1950(%ebx),%eax
	movl	%eax,%edi
	leal	-56(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movb	$1,-13(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,192(%eax)
	jne	Lj1996
	jmp	Lj1997
Lj1996:
	movl	-12(%ebp),%eax
	movl	196(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%esi
	movl	192(%esi),%esi
	call	*%esi
Lj1997:
Lj1951:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj1952
	call	LFPC_RERAISE$stub
Lj1952:
	movb	-13(%ebp),%al
	movl	-108(%ebp),%ebx
	movl	-104(%ebp),%esi
	movl	-100(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__CLOSEOUTPUT$TFULLZIPFILEENTRY$TSTREAM
_ZIPPER_TUNZIPPER_$__CLOSEOUTPUT$TFULLZIPFILEENTRY$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,20(%eax)
	jne	Lj2012
	jmp	Lj2013
Lj2012:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	20(%ebx),%ebx
	call	*%ebx
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj2024
Lj2013:
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj2024:
	movl	-12(%ebp),%eax
	call	L_ZIPPER_TUNZIPPER_$__DOENDOFFILE$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__CLOSEINPUT
_ZIPPER_TUNZIPPER_$__CLOSEINPUT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj2031
	jmp	Lj2032
Lj2031:
	movl	-4(%ebp),%eax
	leal	64(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	call	*%ebx
Lj2032:
	movl	-4(%ebp),%eax
	leal	64(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__READZIPHEADER$TFULLZIPFILEENTRY$WORD
_ZIPPER_TUNZIPPER_$__READZIPHEADER$TFULLZIPFILEENTRY$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj2043
	movl	-4(%ebp),%eax
	movl	48(%eax),%edx
	movl	%edx,4(%esp)
	movl	44(%eax),%eax
	movl	%eax,(%esp)
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
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	leal	68(%eax),%ebx
	movzwl	26(%ebx),%edx
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	movzwl	26(%ebx),%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movzwl	28(%ebx),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	movl	$1,%edx
	movl	-12(%ebp),%ecx
	movl	64(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-16(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	leal	24(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-16(%ebp),%eax
	movl	%eax,24(%esi)
	movl	-16(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	leal	40(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-16(%ebp),%eax
	movl	%eax,40(%esi)
	movl	-4(%ebp),%eax
	movl	22(%ebx),%edx
	movl	%edx,56(%eax)
	leal	-24(%ebp),%ecx
	movw	10(%ebx),%dx
	movw	12(%ebx),%ax
	call	L_ZIPPER_ZIPDATETIMETODATETIME$WORD$WORD$TDATETIME$stub
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-20(%ebp),%eax
	movl	%eax,36(%edx)
	movl	14(%ebx),%eax
	testl	%eax,%eax
	jne	Lj2092
	jmp	Lj2093
Lj2092:
	movl	-4(%ebp),%eax
	movl	14(%ebx),%edx
	movl	%edx,76(%eax)
Lj2093:
	movl	-8(%ebp),%edx
	movw	8(%ebx),%ax
	movw	%ax,(%edx)
Lj2043:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj2044
	call	LFPC_RERAISE$stub
Lj2044:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_FINDENDHEADER$TSTREAM$END_OF_CENTRAL_DIR_TYPE$INT64$ANSISTRING
_ZIPPER_FINDENDHEADER$TSTREAM$END_OF_CENTRAL_DIR_TYPE$INT64$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
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
	jl	Lj2112
	jg	Lj2113
	cmpl	$0,%edx
	jb	Lj2112
	jmp	Lj2113
Lj2112:
	movl	-12(%ebp),%eax
	movl	$-1,(%eax)
	movl	$-1,4(%eax)
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$22,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	jmp	Lj2104
Lj2113:
	movl	-12(%ebp),%edx
	movl	4(%edx),%eax
	movl	%eax,4(%esp)
	movl	(%edx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$22,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$101010256,%eax
	je	Lj2136
	jmp	Lj2135
Lj2136:
	movl	-8(%ebp),%eax
	movzwl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj2134
	jmp	Lj2135
Lj2134:
	jmp	Lj2104
Lj2135:
	movl	$65686,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-20(%ebp),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	cmpl	%ecx,%edx
	jl	Lj2139
	jg	Lj2140
	cmpl	%ebx,%eax
	jb	Lj2139
	jmp	Lj2140
Lj2139:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-20(%ebp)
Lj2140:
	movl	-20(%ebp),%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	%eax,-16(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj2151
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-20(%ebp),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	subl	%ebx,%eax
	sbbl	%ecx,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-20(%ebp),%eax
	subl	$22,%eax
	movl	%eax,-24(%ebp)
	cmpl	$0,-24(%ebp)
	jl	Lj2170
	incl	-24(%ebp)
	.align 2
Lj2171:
	decl	-24(%ebp)
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	incl	%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$8,%eax
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%edx
	movzbl	(%ecx,%edx,1),%edx
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
	je	Lj2172
	jmp	Lj2173
Lj2172:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	-8(%ebp),%edx
	movl	$22,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$101010256,%eax
	je	Lj2182
	jmp	Lj2181
Lj2182:
	movl	-24(%ebp),%edx
	addl	$22,%edx
	movl	-8(%ebp),%eax
	movzwl	20(%eax),%eax
	addl	%eax,%edx
	cmpl	-20(%ebp),%edx
	je	Lj2180
	jmp	Lj2181
Lj2180:
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
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-8(%ebp),%eax
	movzwl	20(%eax),%edx
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	8(%ebp),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj2203
	movl	-4(%ecx),%ecx
Lj2203:
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	jmp	Lj2154
Lj2181:
Lj2173:
	cmpl	$0,-24(%ebp)
	jg	Lj2171
Lj2170:
	movl	-12(%ebp),%eax
	movl	$-1,(%eax)
	movl	$-1,4(%eax)
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$22,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
Lj2151:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj2152
	decl	%eax
	testl	%eax,%eax
	je	Lj2153
	decl	%eax
	testl	%eax,%eax
	je	Lj2104
Lj2153:
	call	LFPC_RERAISE$stub
Lj2154:
	movl	-64(%ebp),%eax
	movl	$2,-64(%ebp)
	jmp	Lj2151
Lj2152:
Lj2104:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__READZIPDIRECTORY
_ZIPPER_TUNZIPPER_$__READZIPDIRECTORY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	movl	%edi,-96(%ebp)
	call	Lj2217
Lj2217:
	popl	-92(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-40(%ebp)
	leal	-52(%ebp),%ecx
	leal	-76(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-80(%ebp)
	testl	%eax,%eax
	jne	Lj2218
	movl	-4(%ebp),%ebx
	leal	52(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	52(%ebx),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	leal	148(%eax),%edx
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	leal	-16(%ebp),%ecx
	call	L_ZIPPER_FINDENDHEADER$TSTREAM$END_OF_CENTRAL_DIR_TYPE$INT64$ANSISTRING$stub
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj2229
	jg	Lj2230
	cmpl	$0,%edx
	jb	Lj2229
	jmp	Lj2230
Lj2229:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	$11,-88(%ebp)
	leal	-88(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-92(%ebp),%edx
	movl	L_RESSTR_ZIPPER_SERRCORRUPTZIP$non_lazy_ptr-Lj2217(%edx),%eax
	movl	4(%eax),%ecx
	movl	-92(%ebp),%eax
	movl	L_VMT_ZIPPER_EZIPERROR$non_lazy_ptr-Lj2217(%eax),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La6:
	movl	%ebp,%ecx
	movl	-92(%ebp),%ebx
	leal	La6-Lj2217(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2230:
	movl	-4(%ebp),%eax
	movl	164(%eax),%edx
	movl	$0,%eax
	movl	%edx,-24(%ebp)
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	64(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__CLEAR$stub
	movl	-4(%ebp),%eax
	movzwl	156(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%esi
	jb	Lj2252
	decl	-8(%ebp)
	.align 2
Lj2253:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	leal	100(%eax),%edx
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	$46,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	leal	100(%eax),%eax
	movl	%eax,%ebx
	movl	(%ebx),%eax
	cmpl	$33639248,%eax
	jne	Lj2262
	jmp	Lj2263
Lj2262:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	$11,-88(%ebp)
	leal	-88(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-92(%ebp),%edx
	movl	L_RESSTR_ZIPPER_SERRCORRUPTZIP$non_lazy_ptr-Lj2217(%edx),%eax
	movl	4(%eax),%ecx
	movl	-92(%ebp),%eax
	movl	L_VMT_ZIPPER_EZIPERROR$non_lazy_ptr-Lj2217(%eax),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La7:
	movl	%ebp,%ecx
	movl	-92(%ebp),%edi
	leal	La7-Lj2217(%edi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2263:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub
	movl	%eax,%edx
	movl	-92(%ebp),%eax
	movl	L_VMT_ZIPPER_TFULLZIPFILEENTRY$non_lazy_ptr-Lj2217(%eax),%ecx
	movl	%ecx,%eax
	call	Lfpc_do_as$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%edx
	movl	42(%ebx),%eax
	movl	$0,%ecx
	movl	%eax,44(%edx)
	movl	%ecx,48(%edx)
	movzwl	28(%ebx),%edx
	leal	-40(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	leal	-40(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movzwl	28(%ebx),%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-40(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-28(%ebp),%edi
	leal	24(%edi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-40(%ebp),%eax
	movl	%eax,24(%edi)
	movl	-28(%ebp),%edx
	movl	24(%ebx),%eax
	movl	%eax,56(%edx)
	movl	-28(%ebp),%eax
	movl	20(%ebx),%edx
	movl	%edx,68(%eax)
	movl	-28(%ebp),%eax
	movl	16(%ebx),%edx
	movl	%edx,76(%eax)
	movl	-28(%ebp),%edx
	movzwl	4(%ebx),%eax
	shrl	$8,%eax
	movb	%al,52(%edx)
	movl	-28(%ebp),%eax
	movzbl	52(%eax),%eax
	cmpl	$3,%eax
	je	Lj2306
	jmp	Lj2307
Lj2306:
	movl	-28(%ebp),%edx
	movl	38(%ebx),%eax
	shrl	$16,%eax
	movl	%eax,28(%edx)
	jmp	Lj2310
Lj2307:
	movl	-28(%ebp),%eax
	movl	38(%ebx),%edx
	movl	%edx,28(%eax)
Lj2310:
	leal	-36(%ebp),%ecx
	movw	12(%ebx),%dx
	movw	14(%ebx),%ax
	call	L_ZIPPER_ZIPDATETIMETODATETIME$WORD$WORD$TDATETIME$stub
	movl	-28(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,32(%edx)
	movl	-32(%ebp),%eax
	movl	%eax,36(%edx)
	movzwl	30(%ebx),%edx
	movzwl	32(%ebx),%eax
	addl	%eax,%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ecx
	movl	64(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	cmpl	-8(%ebp),%esi
	ja	Lj2253
Lj2252:
Lj2218:
	call	LFPC_POPADDRSTACK$stub
	leal	-40(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-40(%ebp)
	movl	-80(%ebp),%eax
	testl	%eax,%eax
	je	Lj2219
	call	LFPC_RERAISE$stub
Lj2219:
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	movl	-96(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__CREATEDECOMPRESSOR$TZIPFILEENTRY$WORD$TSTREAM$TSTREAM$$TDECOMPRESSOR
_ZIPPER_TUNZIPPER_$__CREATEDECOMPRESSOR$TZIPFILEENTRY$WORD$TSTREAM$TSTREAM$$TDECOMPRESSOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj2334
Lj2334:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movw	-8(%ebp),%ax
	cmpw	$8,%ax
	jb	Lj2336
	subw	$8,%ax
	je	Lj2337
	jmp	Lj2336
Lj2337:
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%ecx
	movl	L_VMT_ZIPPER_TINFLATER$non_lazy_ptr-Lj2334(%esi),%edx
	movl	$0,%eax
	movl	L_VMT_ZIPPER_TINFLATER$non_lazy_ptr-Lj2334(%esi),%ebx
	call	*100(%ebx)
	movl	%eax,-16(%ebp)
	jmp	Lj2335
Lj2336:
	movl	$0,(%esp)
	movzwl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$0,-24(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_ZIPPER_SERRUNSUPPORTEDCOMPRESSIONFORMAT$non_lazy_ptr-Lj2334(%esi),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_ZIPPER_EZIPERROR$non_lazy_ptr-Lj2334(%esi),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La8:
	movl	%ebp,%ecx
	leal	La8-Lj2334(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2335:
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__UNZIPONEFILE$TFULLZIPFILEENTRY
_ZIPPER_TUNZIPPER_$__UNZIPONEFILE$TFULLZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-132(%ebp)
	movl	%esi,-128(%ebp)
	call	Lj2361
Lj2361:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-84(%ebp)
	leal	-52(%ebp),%ecx
	leal	-76(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-80(%ebp)
	testl	%eax,%eax
	jne	Lj2364
	leal	-22(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TUNZIPPER_$__READZIPHEADER$TFULLZIPFILEENTRY$WORD$stub
	movl	-4(%ebp),%esi
	movl	40(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-32(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	40(%esi),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj2375
	jmp	Lj2376
Lj2375:
	movb	$1,-38(%ebp)
	jmp	Lj2377
Lj2376:
	movb	$0,-38(%ebp)
Lj2377:
	movb	-38(%ebp),%al
	testb	%al,%al
	je	Lj2380
	jmp	Lj2379
Lj2380:
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	testl	%eax,%eax
	jne	Lj2378
	jmp	Lj2379
Lj2378:
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	movl	-8(%ebp),%eax
	movl	48(%eax),%eax
	leal	-84(%ebp),%edx
	call	L_SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING$stub
	movl	-84(%ebp),%edx
	movl	-32(%ebp),%ecx
	leal	-32(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj2379:
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TZIPFILEENTRY_$__ISLINK$$BOOLEAN$stub
	movb	%al,-37(%ebp)
	cmpb	$0,-38(%ebp)
	jne	Lj2395
	jmp	Lj2396
Lj2395:
	leal	-96(%ebp),%ecx
	leal	-120(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-124(%ebp)
	testl	%eax,%eax
	jne	Lj2397
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	leal	-36(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TUNZIPPER_$__OPENOUTPUT$ANSISTRING$TSTREAM$TFULLZIPFILEENTRY$$BOOLEAN$stub
	movb	-37(%ebp),%al
	testb	%al,%al
	je	Lj2411
	jmp	Lj2410
Lj2411:
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TZIPFILEENTRY_$__ISDIRECTORY$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2409
	jmp	Lj2410
Lj2409:
	movl	-36(%ebp),%edx
	movl	%ebp,%eax
	call	L_ZIPPER_TUNZIPPER_$_UNZIPONEFILE$TFULLZIPFILEENTRY_DOUNZIP$TSTREAM$stub
Lj2410:
Lj2397:
	call	LFPC_POPADDRSTACK$stub
	leal	-36(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TUNZIPPER_$__CLOSEOUTPUT$TFULLZIPFILEENTRY$TSTREAM$stub
	movl	-124(%ebp),%eax
	testl	%eax,%eax
	je	Lj2398
	decl	%eax
	testl	%eax,%eax
	je	Lj2399
Lj2399:
	call	LFPC_RERAISE$stub
Lj2398:
	jmp	Lj2424
Lj2396:
	cmpb	$0,-37(%ebp)
	jne	Lj2425
	jmp	Lj2426
Lj2425:
	movl	L_VMT_CLASSES_TSTRINGSTREAM$non_lazy_ptr-Lj2361(%ebx),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	L_CLASSES_TSTRINGSTREAM_$__CREATE$ANSISTRING$$TSTRINGSTREAM$stub
	movl	%eax,-28(%ebp)
	leal	-96(%ebp),%ecx
	leal	-120(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-124(%ebp)
	testl	%eax,%eax
	jne	Lj2435
	movl	-28(%ebp),%edx
	movl	%ebp,%eax
	call	L_ZIPPER_TUNZIPPER_$_UNZIPONEFILE$TFULLZIPFILEENTRY_DOUNZIP$TSTREAM$stub
	movl	-28(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj2445
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj2361(%ebx),%edx
	movl	%edx,%eax
Lj2445:
	movl	-32(%ebp),%edx
	testl	%edx,%edx
	jne	Lj2448
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj2361(%ebx),%ecx
	movl	%ecx,%edx
Lj2448:
	call	L_BASEUNIX_FPSYMLINK$PCHAR$PCHAR$$LONGINT$stub
Lj2435:
	call	LFPC_POPADDRSTACK$stub
	movl	-28(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-124(%ebp),%eax
	testl	%eax,%eax
	je	Lj2436
	decl	%eax
	testl	%eax,%eax
	je	Lj2437
Lj2437:
	call	LFPC_RERAISE$stub
Lj2436:
	jmp	Lj2451
Lj2426:
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TZIPFILEENTRY_$__ISDIRECTORY$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2452
	jmp	Lj2453
Lj2452:
	movl	-32(%ebp),%eax
	call	L_SYSUTILS_CREATEDIR$ANSISTRING$$BOOLEAN$stub
	jmp	Lj2458
Lj2453:
	leal	-96(%ebp),%ecx
	leal	-120(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-124(%ebp)
	testl	%eax,%eax
	jne	Lj2459
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	leal	-36(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TUNZIPPER_$__OPENOUTPUT$ANSISTRING$TSTREAM$TFULLZIPFILEENTRY$$BOOLEAN$stub
	movl	-36(%ebp),%edx
	movl	%ebp,%eax
	call	L_ZIPPER_TUNZIPPER_$_UNZIPONEFILE$TFULLZIPFILEENTRY_DOUNZIP$TSTREAM$stub
Lj2459:
	call	LFPC_POPADDRSTACK$stub
	leal	-36(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TUNZIPPER_$__CLOSEOUTPUT$TFULLZIPFILEENTRY$TSTREAM$stub
	movl	-124(%ebp),%eax
	testl	%eax,%eax
	je	Lj2460
	decl	%eax
	testl	%eax,%eax
	je	Lj2461
Lj2461:
	call	LFPC_RERAISE$stub
Lj2460:
Lj2458:
Lj2451:
Lj2424:
	movb	-38(%ebp),%al
	testb	%al,%al
	je	Lj2481
	jmp	Lj2482
Lj2481:
	movl	-4(%ebp),%edx
	movl	32(%edx),%eax
	movl	%eax,(%esp)
	movl	36(%edx),%eax
	movl	%eax,4(%esp)
	call	L_SYSUTILS_DATETIMETOFILEDATE$TDATETIME$$LONGINT$stub
	movl	%eax,%edx
	movl	-32(%ebp),%eax
	call	L_SYSUTILS_FILESETDATE$ANSISTRING$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	jne	Lj2489
	jmp	Lj2490
Lj2489:
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	movzbl	52(%eax),%eax
	cmpl	$3,%eax
	je	Lj2493
	jmp	Lj2494
Lj2493:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-20(%ebp)
Lj2494:
	movl	-4(%ebp),%eax
	movzbl	52(%eax),%eax
	testl	%eax,%eax
	je	Lj2497
	jmp	Lj2498
Lj2497:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	call	L_ZIPPER_ZIPFATATTRSTOUNIXATTRS$LONGINT$$LONGINT$stub
	movl	%eax,-20(%ebp)
Lj2498:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2503
	jmp	Lj2504
Lj2503:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2509
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj2361(%ebx),%edx
	movl	%edx,%eax
Lj2509:
	movw	-20(%ebp),%dx
	call	L_BASEUNIX_FPCHMOD$PCHAR$WORD$$LONGINT$stub
Lj2504:
Lj2490:
Lj2482:
Lj2364:
	call	LFPC_POPADDRSTACK$stub
	leal	-84(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-84(%ebp)
	leal	-32(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-32(%ebp)
	movl	-80(%ebp),%eax
	testl	%eax,%eax
	je	Lj2365
	call	LFPC_RERAISE$stub
Lj2365:
	movl	-132(%ebp),%ebx
	movl	-128(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$_UNZIPONEFILE$TFULLZIPFILEENTRY_DOUNZIP$TSTREAM
_ZIPPER_TUNZIPPER_$_UNZIPONEFILE$TFULLZIPFILEENTRY_DOUNZIP$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-112(%ebp)
	movl	%esi,-108(%ebp)
	movl	%edi,-104(%ebp)
	call	Lj2363
Lj2363:
	popl	%edi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-100(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj2518
	movl	-8(%ebp),%eax
	movzwl	-22(%eax),%eax
	testl	%eax,%eax
	je	Lj2521
	jmp	Lj2522
Lj2521:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	86(%eax),%eax
	testl	%eax,%eax
	jne	Lj2523
	jmp	Lj2524
Lj2523:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	86(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	64(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub
	movl	-8(%ebp),%ecx
	movl	%eax,-16(%ecx)
	movl	%edx,-12(%ecx)
	jmp	Lj2533
Lj2524:
	movl	-8(%ebp),%eax
	movl	$0,-16(%eax)
	movl	$0,-12(%eax)
Lj2533:
	jmp	Lj2536
Lj2522:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	64(%eax),%eax
	movl	%eax,4(%esp)
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
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj2551
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
	movl	76(%eax),%eax
	cmpl	12(%esi),%eax
	jne	Lj2561
	jmp	Lj2562
Lj2561:
	movl	$0,(%esp)
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%eax
	leal	-100(%ebp),%edx
	call	L_ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING$stub
	movl	-100(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$11,-96(%ebp)
	leal	-96(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_ZIPPER_SERRINVALIDCRC$non_lazy_ptr-Lj2363(%edi),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_ZIPPER_EZIPERROR$non_lazy_ptr-Lj2363(%edi),%eax
	movl	%eax,%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La9:
	movl	%ebp,%ecx
	leal	La9-Lj2363(%edi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2562:
Lj2551:
	call	LFPC_POPADDRSTACK$stub
	movl	%esi,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj2552
	decl	%eax
	testl	%eax,%eax
	je	Lj2553
Lj2553:
	call	LFPC_RERAISE$stub
Lj2552:
Lj2536:
Lj2518:
	call	LFPC_POPADDRSTACK$stub
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2519
	call	LFPC_RERAISE$stub
Lj2519:
	movl	-112(%ebp),%ebx
	movl	-108(%ebp),%esi
	movl	-104(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__UNZIPALLFILES
_ZIPPER_TUNZIPPER_$__UNZIPALLFILES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-144(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-140(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj2581
	movl	-4(%ebp),%eax
	movb	$1,36(%eax)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj2586
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	-4(%ebp),%edx
	movl	60(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	testl	%eax,%eax
	seteb	-13(%ebp)
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TUNZIPPER_$__OPENINPUT$stub
	leal	-108(%ebp),%ecx
	leal	-132(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-136(%ebp)
	testl	%eax,%eax
	jne	Lj2596
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TUNZIPPER_$__READZIPDIRECTORY$stub
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2603
	decl	-12(%ebp)
	.align 2
Lj2604:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_ZIPPER_TFULLZIPFILEENTRIES_$__GETFZ$LONGINT$$TFULLZIPFILEENTRY$stub
	movl	%eax,-8(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj2613
	jmp	Lj2615
Lj2615:
	leal	-140(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-140(%ebp)
	leal	-140(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING$stub
	movl	-140(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	60(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*200(%ecx)
	cmpl	$-1,%eax
	jne	Lj2613
	jmp	Lj2614
Lj2613:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
Lj2614:
	cmpl	-12(%ebp),%ebx
	jg	Lj2604
Lj2603:
Lj2596:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TUNZIPPER_$__CLOSEINPUT$stub
	movl	-136(%ebp),%eax
	testl	%eax,%eax
	je	Lj2597
	decl	%eax
	testl	%eax,%eax
	je	Lj2598
Lj2598:
	call	LFPC_RERAISE$stub
Lj2597:
Lj2586:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	movb	$0,36(%eax)
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj2587
	decl	%eax
	testl	%eax,%eax
	je	Lj2588
Lj2588:
	call	LFPC_RERAISE$stub
Lj2587:
Lj2581:
	call	LFPC_POPADDRSTACK$stub
	leal	-140(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-140(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj2582
	call	LFPC_RERAISE$stub
Lj2582:
	movl	-144(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__SETBUFSIZE$LONGWORD
_ZIPPER_TUNZIPPER_$__SETBUFSIZE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj2633
Lj2633:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,36(%eax)
	jne	Lj2634
	jmp	Lj2635
Lj2634:
	movl	L_RESSTR_ZIPPER_SERRBUFSIZECHANGE$non_lazy_ptr-Lj2633(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_ZIPPER_EZIPERROR$non_lazy_ptr-Lj2633(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La10:
	movl	%ebp,%ecx
	leal	La10-Lj2633(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2635:
	movl	-4(%ebp),%eax
	cmpl	$16384,%eax
	jae	Lj2642
	jmp	Lj2643
Lj2642:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,40(%eax)
Lj2643:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__SETFILENAME$ANSISTRING
_ZIPPER_TUNZIPPER_$__SETFILENAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	call	Lj2647
Lj2647:
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
	jne	Lj2648
	movl	-8(%ebp),%eax
	cmpb	$0,36(%eax)
	jne	Lj2651
	jmp	Lj2652
Lj2651:
	movl	L_RESSTR_ZIPPER_SERRFILECHANGE$non_lazy_ptr-Lj2647(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_ZIPPER_EZIPERROR$non_lazy_ptr-Lj2647(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La11:
	movl	%ebp,%ecx
	leal	La11-Lj2647(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2652:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	44(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,44(%esi)
Lj2648:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2649
	call	LFPC_RERAISE$stub
Lj2649:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__SETOUTPUTPATH$ANSISTRING
_ZIPPER_TUNZIPPER_$__SETOUTPUTPATH$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	call	Lj2662
Lj2662:
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
	jne	Lj2663
	movl	-8(%ebp),%eax
	cmpb	$0,36(%eax)
	jne	Lj2666
	jmp	Lj2667
Lj2666:
	movl	L_RESSTR_ZIPPER_SERRFILECHANGE$non_lazy_ptr-Lj2662(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_ZIPPER_EZIPERROR$non_lazy_ptr-Lj2662(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La12:
	movl	%ebp,%ecx
	leal	La12-Lj2662(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2667:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	48(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,48(%esi)
Lj2663:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2664
	call	LFPC_RERAISE$stub
Lj2664:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__UNZIPFILES$ANSISTRING$TSTRINGS
_ZIPPER_TUNZIPPER_$__UNZIPFILES$ANSISTRING$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
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
	jne	Lj2678
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	44(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,44(%ebx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_ZIPPER_TUNZIPPER_$__UNZIPFILES$TSTRINGS$stub
Lj2678:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2679
	call	LFPC_RERAISE$stub
Lj2679:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__UNZIPFILES$TSTRINGS
_ZIPPER_TUNZIPPER_$__UNZIPFILES$TSTRINGS:
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
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__UNZIPALLFILES$ANSISTRING
_ZIPPER_TUNZIPPER_$__UNZIPALLFILES$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
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
	jne	Lj2697
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	44(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,44(%ebx)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
Lj2697:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2698
	call	LFPC_RERAISE$stub
Lj2698:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__DOENDOFFILE
_ZIPPER_TUNZIPPER_$__DOENDOFFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj2705
Lj2705:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	90(%eax),%eax
	cmpl	$0,%eax
	ja	Lj2706
	jmp	Lj2707
Lj2706:
	movl	-4(%ebp),%eax
	movl	90(%eax),%esi
	movl	$0,%ecx
	movl	-4(%ebp),%eax
	movl	86(%eax),%eax
	movl	$0,%edx
	subl	%eax,%esi
	sbbl	%edx,%ecx
	movl	%esi,-24(%ebp)
	movl	%ecx,-20(%ebp)
	fildq	-24(%ebp)
	movl	L_$ZIPPER$_Ld9$non_lazy_ptr-Lj2705(%ebx),%eax
	flds	(%eax)
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	movl	90(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-20(%ebp)
	fildq	-24(%ebp)
	fdivrp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj2710
Lj2707:
	fldz
	fstpl	-12(%ebp)
Lj2710:
	movl	-4(%ebp),%eax
	cmpl	$0,184(%eax)
	jne	Lj2713
	jmp	Lj2714
Lj2713:
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
Lj2714:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__CREATE$$TUNZIPPER
_ZIPPER_TUNZIPPER_$__CREATE$$TUNZIPPER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	call	Lj2722
Lj2722:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2723
	jmp	Lj2724
Lj2723:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj2724:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2729
	jmp	Lj2730
Lj2729:
	jmp	Lj2721
Lj2730:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj2733
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj2737
	movl	-8(%ebp),%eax
	movl	$16384,40(%eax)
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj2722(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-8(%ebp),%edx
	movl	%eax,60(%edx)
	movl	-8(%ebp),%eax
	movl	60(%eax),%eax
	movb	$1,%dl
	call	L_CLASSES_TSTRINGLIST_$__SETSORTED$BOOLEAN$stub
	movl	L_VMT_ZIPPER_TFULLZIPFILEENTRY$non_lazy_ptr-Lj2722(%ebx),%ecx
	movl	L_VMT_ZIPPER_TFULLZIPFILEENTRIES$non_lazy_ptr-Lj2722(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TCOLLECTION_$__CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION$stub
	movl	-8(%ebp),%edx
	movl	%eax,56(%edx)
	movl	-8(%ebp),%eax
	movl	$1,172(%eax)
Lj2737:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj2738
	call	LFPC_RERAISE$stub
Lj2738:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2764
	jmp	Lj2763
Lj2764:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2762
	jmp	Lj2763
Lj2762:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2763:
Lj2733:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj2735
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj2768
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2769
	jmp	Lj2770
Lj2769:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2770:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2768:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj2767
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2767:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2735
Lj2735:
Lj2721:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__CLEAR
_ZIPPER_TUNZIPPER_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	-4(%ebp),%edx
	movl	60(%edx),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	call	L_CLASSES_TCOLLECTION_$__CLEAR$stub
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__EXAMINE
_ZIPPER_TUNZIPPER_$__EXAMINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	call	Lj2782
Lj2782:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj2785
	jmp	Lj2784
Lj2785:
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	testl	%eax,%eax
	je	Lj2783
	jmp	Lj2784
Lj2783:
	movl	L_RESSTR_ZIPPER_SERRNOFILENAME$non_lazy_ptr-Lj2782(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_ZIPPER_EZIPERROR$non_lazy_ptr-Lj2782(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La13:
	movl	%ebp,%ecx
	leal	La13-Lj2782(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2784:
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TUNZIPPER_$__OPENINPUT$stub
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj2794
	jmp	Lj2795
Lj2794:
	movl	L_RESSTR_ZIPPER_SERRNOSTREAM$non_lazy_ptr-Lj2782(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_ZIPPER_EZIPERROR$non_lazy_ptr-Lj2782(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La14:
	movl	%ebp,%ecx
	leal	La14-Lj2782(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2795:
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj2802
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TUNZIPPER_$__READZIPDIRECTORY$stub
Lj2802:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	call	L_ZIPPER_TUNZIPPER_$__CLOSEINPUT$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj2803
	decl	%eax
	testl	%eax,%eax
	je	Lj2804
Lj2804:
	call	LFPC_RERAISE$stub
Lj2803:
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TUNZIPPER_$__DESTROY
_ZIPPER_TUNZIPPER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2812
	jmp	Lj2813
Lj2812:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj2813:
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TUNZIPPER_$__CLEAR$stub
	movl	-8(%ebp),%eax
	leal	60(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	leal	56(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2828
	jmp	Lj2827
Lj2828:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2826
	jmp	Lj2827
Lj2826:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj2827:
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING
_ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	24(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	24(%esi),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj2835
	jmp	Lj2836
Lj2835:
	movl	-4(%ebp),%esi
	movl	40(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	40(%esi),%eax
	movl	%eax,(%ebx)
Lj2836:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPFILEENTRY_$__CREATE$TCOLLECTION$$TZIPFILEENTRY
_ZIPPER_TZIPFILEENTRY_$__CREATE$TCOLLECTION$$TZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2841
	jmp	Lj2842
Lj2841:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj2842:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2847
	jmp	Lj2848
Lj2847:
	jmp	Lj2839
Lj2848:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2851
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2855
	movl	-12(%ebp),%eax
	movb	$3,52(%eax)
	movl	-12(%ebp),%eax
	movl	$2,64(%eax)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOLLECTIONITEM_$__CREATE$TCOLLECTION$$TCOLLECTIONITEM$stub
Lj2855:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2856
	call	LFPC_RERAISE$stub
Lj2856:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2870
	jmp	Lj2869
Lj2870:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2868
	jmp	Lj2869
Lj2868:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2869:
Lj2851:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2853
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2874
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2875
	jmp	Lj2876
Lj2875:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2876:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2874:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2873
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2873:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2853
Lj2853:
Lj2839:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPFILEENTRY_$__ISDIRECTORY$$BOOLEAN
_ZIPPER_TZIPFILEENTRY_$__ISDIRECTORY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	jne	Lj2885
	jmp	Lj2884
Lj2885:
	movl	-4(%ebp),%eax
	movl	40(%eax),%edx
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	je	Lj2886
	movl	-4(%eax),%eax
Lj2886:
	movzbl	-1(%edx,%eax,1),%eax
	cmpl	$47,%eax
	je	Lj2887
	cmpl	$92,%eax
	je	Lj2887
Lj2887:
	je	Lj2883
	jmp	Lj2884
Lj2883:
	movb	$1,-5(%ebp)
	jmp	Lj2888
Lj2884:
	movb	$0,-5(%ebp)
Lj2888:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	jne	Lj2889
	jmp	Lj2890
Lj2889:
	movl	-4(%ebp),%eax
	movb	52(%eax),%al
	testb	%al,%al
	je	Lj2893
	subb	$3,%al
	je	Lj2894
	jmp	Lj2892
Lj2893:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	andl	$16,%eax
	cmpl	$0,%eax
	setgb	-5(%ebp)
	jmp	Lj2891
Lj2894:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	andl	$61440,%eax
	cmpl	$16384,%eax
	seteb	-5(%ebp)
	jmp	Lj2891
Lj2892:
Lj2891:
Lj2890:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPFILEENTRY_$__ISLINK$$BOOLEAN
_ZIPPER_TZIPFILEENTRY_$__ISLINK$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	jne	Lj2903
	jmp	Lj2904
Lj2903:
	movl	-4(%ebp),%eax
	movb	52(%eax),%al
	testb	%al,%al
	je	Lj2907
	subb	$3,%al
	je	Lj2908
	jmp	Lj2906
Lj2907:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	andl	$64,%eax
	cmpl	$0,%eax
	setgb	-5(%ebp)
	jmp	Lj2905
Lj2908:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	andl	$61440,%eax
	cmpl	$40960,%eax
	seteb	-5(%ebp)
	jmp	Lj2905
Lj2906:
Lj2905:
Lj2904:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPFILEENTRY_$__ASSIGN$TPERSISTENT
_ZIPPER_TZIPFILEENTRY_$__ASSIGN$TPERSISTENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj2914
Lj2914:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	L_VMT_ZIPPER_TZIPFILEENTRY$non_lazy_ptr-Lj2914(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj2915
	jmp	Lj2916
Lj2915:
	movl	-4(%ebp),%edx
	movl	L_VMT_ZIPPER_TZIPFILEENTRY$non_lazy_ptr-Lj2914(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edi
	movl	24(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	24(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	24(%edi),%eax
	movl	%eax,24(%esi)
	movl	-12(%ebp),%edi
	movl	40(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	40(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	40(%edi),%eax
	movl	%eax,40(%esi)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,56(%edx)
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	32(%eax),%edx
	movl	%edx,32(%ecx)
	movl	36(%eax),%eax
	movl	%eax,36(%ecx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,60(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	52(%eax),%al
	movb	%al,52(%edx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,28(%edx)
	jmp	Lj2941
Lj2916:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT$stub
Lj2941:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPFILEENTRIES_$__GETZ$LONGINT$$TZIPFILEENTRY
_ZIPPER_TZIPFILEENTRIES_$__GETZ$LONGINT$$TZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPFILEENTRIES_$__SETZ$LONGINT$TZIPFILEENTRY
_ZIPPER_TZIPFILEENTRIES_$__SETZ$LONGINT$TZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__SETITEM$LONGINT$TCOLLECTIONITEM$stub
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$ANSISTRING$$TZIPFILEENTRY
_ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$ANSISTRING$$TZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2963
Lj2963:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub
	movl	%eax,%edx
	movl	L_VMT_ZIPPER_TZIPFILEENTRY$non_lazy_ptr-Lj2963(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	40(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,40(%esi)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$ANSISTRING$ANSISTRING$$TZIPFILEENTRY
_ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$ANSISTRING$ANSISTRING$$TZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$ANSISTRING$$TZIPFILEENTRY$stub
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%ebx
	leal	24(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,24(%ebx)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$TSTREAM$ANSISTRING$$TZIPFILEENTRY
_ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$TSTREAM$ANSISTRING$$TZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj2985
Lj2985:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub
	movl	%eax,%edx
	movl	L_VMT_ZIPPER_TZIPFILEENTRY$non_lazy_ptr-Lj2985(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,60(%edx)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-16(%ebp),%esi
	leal	24(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,24(%esi)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRIES$TSTRINGS
_ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRIES$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj3000
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj3004
	decl	-12(%ebp)
	.align 2
Lj3005:
	incl	-12(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$ANSISTRING$$TZIPFILEENTRY$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj3005
Lj3004:
Lj3000:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj3001
	call	LFPC_RERAISE$stub
Lj3001:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TFULLZIPFILEENTRIES_$__GETFZ$LONGINT$$TFULLZIPFILEENTRY
_ZIPPER_TFULLZIPFILEENTRIES_$__GETFZ$LONGINT$$TFULLZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ZIPPER_TFULLZIPFILEENTRIES_$__SETFZ$LONGINT$TFULLZIPFILEENTRY
_ZIPPER_TFULLZIPFILEENTRIES_$__SETFZ$LONGINT$TFULLZIPFILEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_CLASSES_TCOLLECTION_$__SETITEM$LONGINT$TCOLLECTIONITEM$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$ZIPPER$_Ld11
_$ZIPPER$_Ld11:
	.byte	11
	.ascii	"TCompressor"

.const_data
	.align 2
.globl	_VMT_ZIPPER_TCOMPRESSOR
_VMT_ZIPPER_TCOMPRESSOR:
	.long	32,-32
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$ZIPPER$_Ld11
	.long	0,0
	.long	_$ZIPPER$_Ld12
	.long	_RTTI_ZIPPER_TCOMPRESSOR
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
	.long	_ZIPPER_TCOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TCOMPRESSOR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$ZIPPER$_Ld14
_$ZIPPER$_Ld14:
	.byte	13
	.ascii	"TDeCompressor"

.const_data
	.align 2
.globl	_VMT_ZIPPER_TDECOMPRESSOR
_VMT_ZIPPER_TDECOMPRESSOR:
	.long	32,-32
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$ZIPPER$_Ld14
	.long	0,0
	.long	_$ZIPPER$_Ld15
	.long	_RTTI_ZIPPER_TDECOMPRESSOR
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
	.long	_ZIPPER_TDECOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TDECOMPRESSOR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	0

.const_data
	.align 2
.globl	_$ZIPPER$_Ld17
_$ZIPPER$_Ld17:
	.byte	9
	.ascii	"TShrinker"

.const_data
	.align 2
.globl	_VMT_ZIPPER_TSHRINKER
_VMT_ZIPPER_TSHRINKER:
	.long	1116,-1116
	.long	_VMT_ZIPPER_TCOMPRESSOR
	.long	_$ZIPPER$_Ld17
	.long	0,0
	.long	_$ZIPPER$_Ld18
	.long	_RTTI_ZIPPER_TSHRINKER
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_ZIPPER_TSHRINKER_$__DESTROY
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
	.long	_ZIPPER_TSHRINKER_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TSHRINKER
	.long	_ZIPPER_TSHRINKER_$__COMPRESS
	.long	_ZIPPER_TSHRINKER_$__ZIPID$$WORD
	.long	_ZIPPER_TSHRINKER_$__ZIPVERSIONREQD$$WORD
	.long	_ZIPPER_TSHRINKER_$__ZIPBITFLAG$$WORD
	.long	_ZIPPER_TSHRINKER_$__DOONPROGRESS$DOUBLE
	.long	0

.const_data
	.align 2
.globl	_$ZIPPER$_Ld20
_$ZIPPER$_Ld20:
	.byte	9
	.ascii	"TDeflater"

.const_data
	.align 2
.globl	_VMT_ZIPPER_TDEFLATER
_VMT_ZIPPER_TDEFLATER:
	.long	36,-36
	.long	_VMT_ZIPPER_TCOMPRESSOR
	.long	_$ZIPPER$_Ld20
	.long	0,0
	.long	_$ZIPPER$_Ld21
	.long	_RTTI_ZIPPER_TDEFLATER
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
	.long	_ZIPPER_TDEFLATER_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TDEFLATER
	.long	_ZIPPER_TDEFLATER_$__COMPRESS
	.long	_ZIPPER_TDEFLATER_$__ZIPID$$WORD
	.long	_ZIPPER_TDEFLATER_$__ZIPVERSIONREQD$$WORD
	.long	_ZIPPER_TDEFLATER_$__ZIPBITFLAG$$WORD
	.long	0

.const_data
	.align 2
.globl	_$ZIPPER$_Ld23
_$ZIPPER$_Ld23:
	.byte	9
	.ascii	"TInflater"

.const_data
	.align 2
.globl	_VMT_ZIPPER_TINFLATER
_VMT_ZIPPER_TINFLATER:
	.long	32,-32
	.long	_VMT_ZIPPER_TDECOMPRESSOR
	.long	_$ZIPPER$_Ld23
	.long	0,0
	.long	_$ZIPPER$_Ld24
	.long	_RTTI_ZIPPER_TINFLATER
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
	.long	_ZIPPER_TINFLATER_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TINFLATER
	.long	_ZIPPER_TINFLATER_$__DECOMPRESS
	.long	_ZIPPER_TINFLATER_$__ZIPID$$WORD
	.long	0

.const_data
	.align 2
.globl	_$ZIPPER$_Ld26
_$ZIPPER$_Ld26:
	.byte	13
	.ascii	"TZipFileEntry"

.const_data
	.align 2
.globl	_VMT_ZIPPER_TZIPFILEENTRY
_VMT_ZIPPER_TZIPFILEENTRY:
	.long	68,-68
	.long	_VMT_CLASSES_TCOLLECTIONITEM
	.long	_$ZIPPER$_Ld26
	.long	0,0
	.long	_$ZIPPER$_Ld27
	.long	_RTTI_ZIPPER_TZIPFILEENTRY
	.long	_INIT_ZIPPER_TZIPFILEENTRY
	.long	0,0,0
	.long	_CLASSES_TCOLLECTIONITEM_$__DESTROY
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
	.long	_CLASSES_TCOLLECTIONITEM_$__GETOWNER$$TPERSISTENT
	.long	_ZIPPER_TZIPFILEENTRY_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOLLECTIONITEM_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__SETCOLLECTION$TCOLLECTION
	.long	_CLASSES_TCOLLECTIONITEM_$__GETDISPLAYNAME$$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__SETINDEX$LONGINT
	.long	_CLASSES_TCOLLECTIONITEM_$__SETDISPLAYNAME$ANSISTRING
	.long	_ZIPPER_TZIPFILEENTRY_$__CREATE$TCOLLECTION$$TZIPFILEENTRY
	.long	0

.const_data
	.align 2
.globl	_$ZIPPER$_Ld29
_$ZIPPER$_Ld29:
	.byte	15
	.ascii	"TZipFileEntries"

.const_data
	.align 2
.globl	_VMT_ZIPPER_TZIPFILEENTRIES
_VMT_ZIPPER_TZIPFILEENTRIES:
	.long	32,-32
	.long	_VMT_CLASSES_TCOLLECTION
	.long	_$ZIPPER$_Ld29
	.long	0,0
	.long	_$ZIPPER$_Ld30
	.long	_RTTI_ZIPPER_TZIPFILEENTRIES
	.long	0,0,0,0
	.long	_CLASSES_TCOLLECTION_$__DESTROY
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
	.long	_CLASSES_TCOLLECTION_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOLLECTION_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOLLECTION_$__GETATTRCOUNT$$LONGINT
	.long	_CLASSES_TCOLLECTION_$__GETATTR$LONGINT$$ANSISTRING
	.long	_CLASSES_TCOLLECTION_$__GETITEMATTR$LONGINT$LONGINT$$ANSISTRING
	.long	_CLASSES_TCOLLECTION_$__SETITEMNAME$TCOLLECTIONITEM
	.long	_CLASSES_TCOLLECTION_$__SETPROPNAME
	.long	_CLASSES_TCOLLECTION_$__UPDATE$TCOLLECTIONITEM
	.long	_CLASSES_TCOLLECTION_$__NOTIFY$TCOLLECTIONITEM$TCOLLECTIONNOTIFICATION
	.long	_CLASSES_TCOLLECTION_$__BEGINUPDATE
	.long	_CLASSES_TCOLLECTION_$__ENDUPDATE
	.long	0

.const_data
	.align 2
.globl	_$ZIPPER$_Ld32
_$ZIPPER$_Ld32:
	.byte	7
	.ascii	"TZipper"

.const_data
	.align 2
.globl	_VMT_ZIPPER_TZIPPER
_VMT_ZIPPER_TZIPPER:
	.long	172,-172
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$ZIPPER$_Ld32
	.long	0,0
	.long	_$ZIPPER$_Ld33
	.long	_RTTI_ZIPPER_TZIPPER
	.long	_INIT_ZIPPER_TZIPPER
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_ZIPPER_TZIPPER_$__DESTROY
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
	.long	_ZIPPER_TZIPPER_$__ZIPONEFILE$TZIPFILEENTRY
	.long	_ZIPPER_TZIPPER_$__CREATECOMPRESSOR$TZIPFILEENTRY$TSTREAM$TSTREAM$$TCOMPRESSOR
	.long	_ZIPPER_TZIPPER_$__ZIPALLFILES
	.long	0

.const_data
	.align 2
.globl	_$ZIPPER$_Ld35
_$ZIPPER$_Ld35:
	.byte	17
	.ascii	"TFullZipFileEntry"

.const_data
	.align 2
.globl	_VMT_ZIPPER_TFULLZIPFILEENTRY
_VMT_ZIPPER_TFULLZIPFILEENTRY:
	.long	80,-80
	.long	_VMT_ZIPPER_TZIPFILEENTRY
	.long	_$ZIPPER$_Ld35
	.long	0,0
	.long	_$ZIPPER$_Ld36
	.long	_RTTI_ZIPPER_TFULLZIPFILEENTRY
	.long	0,0,0,0
	.long	_CLASSES_TCOLLECTIONITEM_$__DESTROY
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
	.long	_CLASSES_TCOLLECTIONITEM_$__GETOWNER$$TPERSISTENT
	.long	_ZIPPER_TZIPFILEENTRY_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOLLECTIONITEM_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__SETCOLLECTION$TCOLLECTION
	.long	_CLASSES_TCOLLECTIONITEM_$__GETDISPLAYNAME$$ANSISTRING
	.long	_CLASSES_TCOLLECTIONITEM_$__SETINDEX$LONGINT
	.long	_CLASSES_TCOLLECTIONITEM_$__SETDISPLAYNAME$ANSISTRING
	.long	_ZIPPER_TZIPFILEENTRY_$__CREATE$TCOLLECTION$$TZIPFILEENTRY
	.long	0

.const_data
	.align 2
.globl	_$ZIPPER$_Ld38
_$ZIPPER$_Ld38:
	.byte	19
	.ascii	"TFullZipFileEntries"

.const_data
	.align 2
.globl	_VMT_ZIPPER_TFULLZIPFILEENTRIES
_VMT_ZIPPER_TFULLZIPFILEENTRIES:
	.long	32,-32
	.long	_VMT_ZIPPER_TZIPFILEENTRIES
	.long	_$ZIPPER$_Ld38
	.long	0,0
	.long	_$ZIPPER$_Ld39
	.long	_RTTI_ZIPPER_TFULLZIPFILEENTRIES
	.long	0,0,0,0
	.long	_CLASSES_TCOLLECTION_$__DESTROY
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
	.long	_CLASSES_TCOLLECTION_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOLLECTION_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOLLECTION_$__GETATTRCOUNT$$LONGINT
	.long	_CLASSES_TCOLLECTION_$__GETATTR$LONGINT$$ANSISTRING
	.long	_CLASSES_TCOLLECTION_$__GETITEMATTR$LONGINT$LONGINT$$ANSISTRING
	.long	_CLASSES_TCOLLECTION_$__SETITEMNAME$TCOLLECTIONITEM
	.long	_CLASSES_TCOLLECTION_$__SETPROPNAME
	.long	_CLASSES_TCOLLECTION_$__UPDATE$TCOLLECTIONITEM
	.long	_CLASSES_TCOLLECTION_$__NOTIFY$TCOLLECTIONITEM$TCOLLECTIONNOTIFICATION
	.long	_CLASSES_TCOLLECTION_$__BEGINUPDATE
	.long	_CLASSES_TCOLLECTION_$__ENDUPDATE
	.long	0

.const_data
	.align 2
.globl	_$ZIPPER$_Ld41
_$ZIPPER$_Ld41:
	.byte	9
	.ascii	"TUnZipper"

.const_data
	.align 2
.globl	_VMT_ZIPPER_TUNZIPPER
_VMT_ZIPPER_TUNZIPPER:
	.long	200,-200
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$ZIPPER$_Ld41
	.long	0,0
	.long	_$ZIPPER$_Ld42
	.long	_RTTI_ZIPPER_TUNZIPPER
	.long	_INIT_ZIPPER_TUNZIPPER
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_ZIPPER_TUNZIPPER_$__DESTROY
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
	.long	_ZIPPER_TUNZIPPER_$__UNZIPONEFILE$TFULLZIPFILEENTRY
	.long	_ZIPPER_TUNZIPPER_$__CREATEDECOMPRESSOR$TZIPFILEENTRY$WORD$TSTREAM$TSTREAM$$TDECOMPRESSOR
	.long	_ZIPPER_TUNZIPPER_$__UNZIPALLFILES
	.long	0

.const_data
	.align 2
.globl	_$ZIPPER$_Ld44
_$ZIPPER$_Ld44:
	.byte	9
	.ascii	"EZipError"

.const_data
	.align 2
.globl	_VMT_ZIPPER_EZIPERROR
_VMT_ZIPPER_EZIPERROR:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$ZIPPER$_Ld44
	.long	0,0
	.long	_$ZIPPER$_Ld45
	.long	_RTTI_ZIPPER_EZIPERROR
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

.data
	.align 2
.globl	_THREADVARLIST_ZIPPER
_THREADVARLIST_ZIPPER:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$ZIPPER$_Ld48
_$ZIPPER$_Ld48:
	.short	0,1
	.long	0,-1,6
.reference _$ZIPPER$_Ld47
.globl	_$ZIPPER$_Ld47
_$ZIPPER$_Ld47:
.reference _$ZIPPER$_Ld48
	.ascii	"ZIPPER\000"

.const_data
	.align 2
.globl	_$ZIPPER$_Ld50
_$ZIPPER$_Ld50:
	.short	0,1
	.long	0,-1,53
.reference _$ZIPPER$_Ld49
.globl	_$ZIPPER$_Ld49
_$ZIPPER$_Ld49:
.reference _$ZIPPER$_Ld50
	.ascii	"Changing buffer size is not allowed while (un)zippi"
	.ascii	"ng\000"
	.align 2
.globl	_$ZIPPER$_Ld52
_$ZIPPER$_Ld52:
	.short	0,1
	.long	0,-1,24
.reference _$ZIPPER$_Ld51
.globl	_$ZIPPER$_Ld51
_$ZIPPER$_Ld51:
.reference _$ZIPPER$_Ld52
	.ascii	"zipper.serrbufsizechange\000"

.const_data
	.align 2
.globl	_$ZIPPER$_Ld54
_$ZIPPER$_Ld54:
	.short	0,1
	.long	0,-1,58
.reference _$ZIPPER$_Ld53
.globl	_$ZIPPER$_Ld53
_$ZIPPER$_Ld53:
.reference _$ZIPPER$_Ld54
	.ascii	"Changing output file name is not allowed while (un)"
	.ascii	"zipping\000"
	.align 2
.globl	_$ZIPPER$_Ld56
_$ZIPPER$_Ld56:
	.short	0,1
	.long	0,-1,21
.reference _$ZIPPER$_Ld55
.globl	_$ZIPPER$_Ld55
_$ZIPPER$_Ld55:
.reference _$ZIPPER$_Ld56
	.ascii	"zipper.serrfilechange\000"

.const_data
	.align 2
.globl	_$ZIPPER$_Ld58
_$ZIPPER$_Ld58:
	.short	0,1
	.long	0,-1,39
.reference _$ZIPPER$_Ld57
.globl	_$ZIPPER$_Ld57
_$ZIPPER$_Ld57:
.reference _$ZIPPER$_Ld58
	.ascii	"Invalid CRC checksum while unzipping %s\000"
	.align 2
.globl	_$ZIPPER$_Ld60
_$ZIPPER$_Ld60:
	.short	0,1
	.long	0,-1,21
.reference _$ZIPPER$_Ld59
.globl	_$ZIPPER$_Ld59
_$ZIPPER$_Ld59:
.reference _$ZIPPER$_Ld60
	.ascii	"zipper.serrinvalidcrc\000"

.const_data
	.align 2
.globl	_$ZIPPER$_Ld62
_$ZIPPER$_Ld62:
	.short	0,1
	.long	0,-1,19
.reference _$ZIPPER$_Ld61
.globl	_$ZIPPER$_Ld61
_$ZIPPER$_Ld61:
.reference _$ZIPPER$_Ld62
	.ascii	"Corrupt ZIP file %s\000"
	.align 2
.globl	_$ZIPPER$_Ld64
_$ZIPPER$_Ld64:
	.short	0,1
	.long	0,-1,21
.reference _$ZIPPER$_Ld63
.globl	_$ZIPPER$_Ld63
_$ZIPPER$_Ld63:
.reference _$ZIPPER$_Ld64
	.ascii	"zipper.serrcorruptzip\000"

.const_data
	.align 2
.globl	_$ZIPPER$_Ld66
_$ZIPPER$_Ld66:
	.short	0,1
	.long	0,-1,33
.reference _$ZIPPER$_Ld65
.globl	_$ZIPPER$_Ld65
_$ZIPPER$_Ld65:
.reference _$ZIPPER$_Ld66
	.ascii	"Unsupported compression format %d\000"
	.align 2
.globl	_$ZIPPER$_Ld68
_$ZIPPER$_Ld68:
	.short	0,1
	.long	0,-1,39
.reference _$ZIPPER$_Ld67
.globl	_$ZIPPER$_Ld67
_$ZIPPER$_Ld67:
.reference _$ZIPPER$_Ld68
	.ascii	"zipper.serrunsupportedcompressionformat\000"

.const_data
	.align 2
.globl	_$ZIPPER$_Ld70
_$ZIPPER$_Ld70:
	.short	0,1
	.long	0,-1,28
.reference _$ZIPPER$_Ld69
.globl	_$ZIPPER$_Ld69
_$ZIPPER$_Ld69:
.reference _$ZIPPER$_Ld70
	.ascii	"Missing filename in entry %d\000"
	.align 2
.globl	_$ZIPPER$_Ld72
_$ZIPPER$_Ld72:
	.short	0,1
	.long	0,-1,26
.reference _$ZIPPER$_Ld71
.globl	_$ZIPPER$_Ld71
_$ZIPPER$_Ld71:
.reference _$ZIPPER$_Ld72
	.ascii	"zipper.serrmissingfilename\000"

.const_data
	.align 2
.globl	_$ZIPPER$_Ld74
_$ZIPPER$_Ld74:
	.short	0,1
	.long	0,-1,45
.reference _$ZIPPER$_Ld73
.globl	_$ZIPPER$_Ld73
_$ZIPPER$_Ld73:
.reference _$ZIPPER$_Ld74
	.ascii	"Missing archive filename in streamed entry %d\000"
	.align 2
.globl	_$ZIPPER$_Ld76
_$ZIPPER$_Ld76:
	.short	0,1
	.long	0,-1,29
.reference _$ZIPPER$_Ld75
.globl	_$ZIPPER$_Ld75
_$ZIPPER$_Ld75:
.reference _$ZIPPER$_Ld76
	.ascii	"zipper.serrmissingarchivename\000"

.const_data
	.align 2
.globl	_$ZIPPER$_Ld78
_$ZIPPER$_Ld78:
	.short	0,1
	.long	0,-1,25
.reference _$ZIPPER$_Ld77
.globl	_$ZIPPER$_Ld77
_$ZIPPER$_Ld77:
.reference _$ZIPPER$_Ld78
	.ascii	"File \"%s\" does not exist.\000"
	.align 2
.globl	_$ZIPPER$_Ld80
_$ZIPPER$_Ld80:
	.short	0,1
	.long	0,-1,27
.reference _$ZIPPER$_Ld79
.globl	_$ZIPPER$_Ld79
_$ZIPPER$_Ld79:
.reference _$ZIPPER$_Ld80
	.ascii	"zipper.serrfiledoesnotexist\000"

.const_data
	.align 2
.globl	_$ZIPPER$_Ld82
_$ZIPPER$_Ld82:
	.short	0,1
	.long	0,-1,42
.reference _$ZIPPER$_Ld81
.globl	_$ZIPPER$_Ld81
_$ZIPPER$_Ld81:
.reference _$ZIPPER$_Ld82
	.ascii	"No archive filename for examine operation.\000"
	.align 2
.globl	_$ZIPPER$_Ld84
_$ZIPPER$_Ld84:
	.short	0,1
	.long	0,-1,21
.reference _$ZIPPER$_Ld83
.globl	_$ZIPPER$_Ld83
_$ZIPPER$_Ld83:
.reference _$ZIPPER$_Ld84
	.ascii	"zipper.serrnofilename\000"

.const_data
	.align 2
.globl	_$ZIPPER$_Ld86
_$ZIPPER$_Ld86:
	.short	0,1
	.long	0,-1,20
.reference _$ZIPPER$_Ld85
.globl	_$ZIPPER$_Ld85
_$ZIPPER$_Ld85:
.reference _$ZIPPER$_Ld86
	.ascii	"No stream is opened.\000"
	.align 2
.globl	_$ZIPPER$_Ld88
_$ZIPPER$_Ld88:
	.short	0,1
	.long	0,-1,19
.reference _$ZIPPER$_Ld87
.globl	_$ZIPPER$_Ld87
_$ZIPPER$_Ld87:
.reference _$ZIPPER$_Ld88
	.ascii	"zipper.serrnostream\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_ZIPPER_CRC_32_TAB
_TC_ZIPPER_CRC_32_TAB:
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

.const_data
	.align 2
.globl	_$ZIPPER$_Ld2
_$ZIPPER$_Ld2:
	.short	0,1
	.long	0,-1,1
.reference _$ZIPPER$_Ld1
.globl	_$ZIPPER$_Ld1
_$ZIPPER$_Ld1:
.reference _$ZIPPER$_Ld2
	.ascii	".\000"

.const_data
	.align 2
.globl	_$ZIPPER$_Ld4
_$ZIPPER$_Ld4:
	.short	0,1
	.long	0,-1,2
.reference _$ZIPPER$_Ld3
.globl	_$ZIPPER$_Ld3
_$ZIPPER$_Ld3:
.reference _$ZIPPER$_Ld4
	.ascii	"..\000"

.const
	.align 3
.globl	_$ZIPPER$_Ld5
_$ZIPPER$_Ld5:
	.byte	0,0,0,0,0,0,0,200,5,64

.const
	.align 2
.globl	_$ZIPPER$_Ld6
_$ZIPPER$_Ld6:
	.byte	0,0,0,0,0,0,89,64

.data
	.align 1
.globl	_TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE
_TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE:
	.short	0

.const_data
	.align 2
.globl	_$ZIPPER$_Ld8
_$ZIPPER$_Ld8:
	.short	0,1
	.long	0,-1,4
.reference _$ZIPPER$_Ld7
.globl	_$ZIPPER$_Ld7
_$ZIPPER$_Ld7:
.reference _$ZIPPER$_Ld8
	.ascii	".tmp\000"

.const
	.align 2
.globl	_$ZIPPER$_Ld9
_$ZIPPER$_Ld9:
	.byte	0,0,200,66

.const
	.align 3
.globl	_$ZIPPER$_Ld10
_$ZIPPER$_Ld10:
	.byte	0,0,0,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD$stub:
.indirect_symbol _SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
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

L_SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
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

L_SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
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

L_ZIPPER_TCOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TCOMPRESSOR$stub:
.indirect_symbol _ZIPPER_TCOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TCOMPRESSOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub:
.indirect_symbol _SYSTEM_GETMEM$LONGWORD$$POINTER
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

L_ZSTREAM_TCOMPRESSIONSTREAM_$__CREATE$TCOMPRESSIONLEVEL$TSTREAM$BOOLEAN$$TCOMPRESSIONSTREAM$stub:
.indirect_symbol _ZSTREAM_TCOMPRESSIONSTREAM_$__CREATE$TCOMPRESSIONLEVEL$TSTREAM$BOOLEAN$$TCOMPRESSIONSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TCOMPRESSOR_$__UPDC32$BYTE$stub:
.indirect_symbol _ZIPPER_TCOMPRESSOR_$__UPDC32$BYTE
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

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TDECOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TDECOMPRESSOR$stub:
.indirect_symbol _ZIPPER_TDECOMPRESSOR_$__CREATE$TSTREAM$TSTREAM$LONGWORD$$TDECOMPRESSOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZSTREAM_TDECOMPRESSIONSTREAM_$__CREATE$TSTREAM$BOOLEAN$$TDECOMPRESSIONSTREAM$stub:
.indirect_symbol _ZSTREAM_TDECOMPRESSIONSTREAM_$__CREATE$TSTREAM$BOOLEAN$$TDECOMPRESSIONSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TDECOMPRESSOR_$__UPDC32$BYTE$stub:
.indirect_symbol _ZIPPER_TDECOMPRESSOR_$__UPDC32$BYTE
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

L_ZIPPER_TSHRINKER_$__INITIALIZECODETABLE$stub:
.indirect_symbol _ZIPPER_TSHRINKER_$__INITIALIZECODETABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TSHRINKER_$__FILLINPUTBUFFER$stub:
.indirect_symbol _ZIPPER_TSHRINKER_$__FILLINPUTBUFFER
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

Lfpc_ansistr_unique$stub:
.indirect_symbol fpc_ansistr_unique
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

L_ZIPPER_TSHRINKER_$__PROCESSLINE$ANSISTRING$stub:
.indirect_symbol _ZIPPER_TSHRINKER_$__PROCESSLINE$ANSISTRING
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

L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TSHRINKER_$__WRITEOUTPUTBUFFER$stub:
.indirect_symbol _ZIPPER_TSHRINKER_$__WRITEOUTPUTBUFFER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TSHRINKER_$__PUTCHAR$BYTE$stub:
.indirect_symbol _ZIPPER_TSHRINKER_$__PUTCHAR$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TSHRINKER_$__PRUNE$WORD$stub:
.indirect_symbol _ZIPPER_TSHRINKER_$__PRUNE$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT$stub:
.indirect_symbol _ZIPPER_TSHRINKER_$__PUTCODE$SMALLINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TSHRINKER_$__CLEAR_TABLE$stub:
.indirect_symbol _ZIPPER_TSHRINKER_$__CLEAR_TABLE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TSHRINKER_$__TABLE_ADD$WORD$BYTE$stub:
.indirect_symbol _ZIPPER_TSHRINKER_$__TABLE_ADD$WORD$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TSHRINKER_$__TABLE_LOOKUP$SMALLINT$BYTE$SMALLINT$$BOOLEAN$stub:
.indirect_symbol _ZIPPER_TSHRINKER_$__TABLE_LOOKUP$SMALLINT$BYTE$SMALLINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TSHRINKER_$__FLUSHOUTPUT$stub:
.indirect_symbol _ZIPPER_TSHRINKER_$__FLUSHOUTPUT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TSHRINKER_$__SHRINK$SMALLINT$stub:
.indirect_symbol _ZIPPER_TSHRINKER_$__SHRINK$SMALLINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TZIPFILEENTRIES_$__GETZ$LONGINT$$TZIPFILEENTRY$stub:
.indirect_symbol _ZIPPER_TZIPFILEENTRIES_$__GETZ$LONGINT$$TZIPFILEENTRY
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

LFPC_DECREF$stub:
.indirect_symbol FPC_DECREF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FINDFIRST$ANSISTRING$LONGINT$TSEARCHREC$$LONGINT$stub:
.indirect_symbol _SYSUTILS_FINDFIRST$ANSISTRING$LONGINT$TSEARCHREC$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FILEDATETODATETIME$LONGINT$$TDATETIME$stub:
.indirect_symbol _SYSUTILS_FILEDATETODATETIME$LONGINT$$TDATETIME
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

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPLSTAT$PCHAR$PSTAT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPLSTAT$PCHAR$PSTAT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FINDCLOSE$TSEARCHREC$stub:
.indirect_symbol _SYSUTILS_FINDCLOSE$TSEARCHREC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING$stub:
.indirect_symbol _ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_initialize$stub:
.indirect_symbol fpc_initialize
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

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TZIPFILEENTRY_$__ISDIRECTORY$$BOOLEAN$stub:
.indirect_symbol _ZIPPER_TZIPFILEENTRY_$__ISDIRECTORY$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTRINGSTREAM_$__CREATE$ANSISTRING$$TSTRINGSTREAM$stub:
.indirect_symbol _CLASSES_TSTRINGSTREAM_$__CREATE$ANSISTRING$$TSTRINGSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub:
.indirect_symbol _CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM
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

L_ZIPPER_TZIPPER_$__DOENDOFFILE$stub:
.indirect_symbol _ZIPPER_TZIPPER_$__DOENDOFFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_DATETIMETOZIPDATETIME$TDATETIME$WORD$WORD$stub:
.indirect_symbol _ZIPPER_DATETIMETOZIPDATETIME$TDATETIME$WORD$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_to_shortstr$stub:
.indirect_symbol fpc_ansistr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_setlength$stub:
.indirect_symbol fpc_shortstr_setlength
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_do_as$stub:
.indirect_symbol fpc_do_as
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TZIPPER_$__OPENINPUT$TZIPFILEENTRY$$BOOLEAN$stub:
.indirect_symbol _ZIPPER_TZIPPER_$__OPENINPUT$TZIPFILEENTRY$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TZIPPER_$__STARTZIPFILE$TZIPFILEENTRY$stub:
.indirect_symbol _ZIPPER_TZIPPER_$__STARTZIPFILE$TZIPFILEENTRY
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

L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TZIPPER_$__UPDATEZIPHEADER$TZIPFILEENTRY$TSTREAM$LONGWORD$WORD$WORD$WORD$$BOOLEAN$stub:
.indirect_symbol _ZIPPER_TZIPPER_$__UPDATEZIPHEADER$TZIPFILEENTRY$TSTREAM$LONGWORD$WORD$WORD$WORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub:
.indirect_symbol _CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TZIPPER_$__CLOSEINPUT$TZIPFILEENTRY$stub:
.indirect_symbol _ZIPPER_TZIPPER_$__CLOSEINPUT$TZIPFILEENTRY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TZIPPER_$__SAVETOFILE$ANSISTRING$stub:
.indirect_symbol _ZIPPER_TZIPPER_$__SAVETOFILE$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TZIPPER_$__SAVETOSTREAM$TSTREAM$stub:
.indirect_symbol _ZIPPER_TZIPPER_$__SAVETOSTREAM$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TZIPPER_$__CHECKENTRIES$$LONGINT$stub:
.indirect_symbol _ZIPPER_TZIPPER_$__CHECKENTRIES$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TZIPPER_$__GETFILEINFO$stub:
.indirect_symbol _ZIPPER_TZIPPER_$__GETFILEINFO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TZIPPER_$__BUILDZIPDIRECTORY$stub:
.indirect_symbol _ZIPPER_TZIPPER_$__BUILDZIPDIRECTORY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__DELETE$LONGINT$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__DELETE$LONGINT
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

L_ZIPPER_TZIPPER_$__ZIPFILES$TSTRINGS$stub:
.indirect_symbol _ZIPPER_TZIPPER_$__ZIPFILES$TSTRINGS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TZIPPER_$__ZIPFILES$TZIPFILEENTRIES$stub:
.indirect_symbol _ZIPPER_TZIPPER_$__ZIPFILES$TZIPFILEENTRIES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__CREATE$TCOLLECTIONITEMCLASS$$TCOLLECTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$ANSISTRING$$TZIPFILEENTRY$stub:
.indirect_symbol _ZIPPER_TZIPFILEENTRIES_$__ADDFILEENTRY$ANSISTRING$$TZIPFILEENTRY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__CLEAR$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TZIPPER_$__CLEAR$stub:
.indirect_symbol _ZIPPER_TZIPPER_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FORCEDIRECTORIES$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_FORCEDIRECTORIES$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TUNZIPPER_$__DOENDOFFILE$stub:
.indirect_symbol _ZIPPER_TUNZIPPER_$__DOENDOFFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_ZIPDATETIMETODATETIME$WORD$WORD$TDATETIME$stub:
.indirect_symbol _ZIPPER_ZIPDATETIMETODATETIME$WORD$WORD$TDATETIME
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_FINDENDHEADER$TSTREAM$END_OF_CENTRAL_DIR_TYPE$INT64$ANSISTRING$stub:
.indirect_symbol _ZIPPER_FINDENDHEADER$TSTREAM$END_OF_CENTRAL_DIR_TYPE$INT64$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__ADD$$TCOLLECTIONITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TUNZIPPER_$__READZIPHEADER$TFULLZIPFILEENTRY$WORD$stub:
.indirect_symbol _ZIPPER_TUNZIPPER_$__READZIPHEADER$TFULLZIPFILEENTRY$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
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

L_ZIPPER_TZIPFILEENTRY_$__ISLINK$$BOOLEAN$stub:
.indirect_symbol _ZIPPER_TZIPFILEENTRY_$__ISLINK$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TUNZIPPER_$__OPENOUTPUT$ANSISTRING$TSTREAM$TFULLZIPFILEENTRY$$BOOLEAN$stub:
.indirect_symbol _ZIPPER_TUNZIPPER_$__OPENOUTPUT$ANSISTRING$TSTREAM$TFULLZIPFILEENTRY$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TUNZIPPER_$_UNZIPONEFILE$TFULLZIPFILEENTRY_DOUNZIP$TSTREAM$stub:
.indirect_symbol _ZIPPER_TUNZIPPER_$_UNZIPONEFILE$TFULLZIPFILEENTRY_DOUNZIP$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TUNZIPPER_$__CLOSEOUTPUT$TFULLZIPFILEENTRY$TSTREAM$stub:
.indirect_symbol _ZIPPER_TUNZIPPER_$__CLOSEOUTPUT$TFULLZIPFILEENTRY$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPSYMLINK$PCHAR$PCHAR$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSYMLINK$PCHAR$PCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_CREATEDIR$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_CREATEDIR$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DATETIMETOFILEDATE$TDATETIME$$LONGINT$stub:
.indirect_symbol _SYSUTILS_DATETIMETOFILEDATE$TDATETIME$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FILESETDATE$ANSISTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSUTILS_FILESETDATE$ANSISTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_ZIPFATATTRSTOUNIXATTRS$LONGINT$$LONGINT$stub:
.indirect_symbol _ZIPPER_ZIPFATATTRSTOUNIXATTRS$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPCHMOD$PCHAR$WORD$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPCHMOD$PCHAR$WORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TUNZIPPER_$__OPENINPUT$stub:
.indirect_symbol _ZIPPER_TUNZIPPER_$__OPENINPUT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TUNZIPPER_$__READZIPDIRECTORY$stub:
.indirect_symbol _ZIPPER_TUNZIPPER_$__READZIPDIRECTORY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TFULLZIPFILEENTRIES_$__GETFZ$LONGINT$$TFULLZIPFILEENTRY$stub:
.indirect_symbol _ZIPPER_TFULLZIPFILEENTRIES_$__GETFZ$LONGINT$$TFULLZIPFILEENTRY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TUNZIPPER_$__CLOSEINPUT$stub:
.indirect_symbol _ZIPPER_TUNZIPPER_$__CLOSEINPUT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TUNZIPPER_$__UNZIPFILES$TSTRINGS$stub:
.indirect_symbol _ZIPPER_TUNZIPPER_$__UNZIPFILES$TSTRINGS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTRINGLIST_$__SETSORTED$BOOLEAN$stub:
.indirect_symbol _CLASSES_TSTRINGLIST_$__SETSORTED$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZIPPER_TUNZIPPER_$__CLEAR$stub:
.indirect_symbol _ZIPPER_TUNZIPPER_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTIONITEM_$__CREATE$TCOLLECTION$$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTIONITEM_$__CREATE$TCOLLECTION$$TCOLLECTIONITEM
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

L_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT$stub:
.indirect_symbol _CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__GETITEM$LONGINT$$TCOLLECTIONITEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOLLECTION_$__SETITEM$LONGINT$TCOLLECTIONITEM$stub:
.indirect_symbol _CLASSES_TCOLLECTION_$__SETITEM$LONGINT$TCOLLECTIONITEM
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
.globl	_INIT_ZIPPER_LOCAL_FILE_HEADER_TYPE
_INIT_ZIPPER_LOCAL_FILE_HEADER_TYPE:
	.byte	13,22
	.ascii	"Local_File_Header_Type"
	.long	30,0

.const_data
	.align 2
.globl	_RTTI_ZIPPER_LOCAL_FILE_HEADER_TYPE
_RTTI_ZIPPER_LOCAL_FILE_HEADER_TYPE:
	.byte	13,22
	.ascii	"Local_File_Header_Type"
	.long	30,11
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	6
	.long	_RTTI_SYSTEM_WORD
	.long	8
	.long	_RTTI_SYSTEM_WORD
	.long	10
	.long	_RTTI_SYSTEM_WORD
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	14
	.long	_RTTI_SYSTEM_LONGWORD
	.long	18
	.long	_RTTI_SYSTEM_LONGWORD
	.long	22
	.long	_RTTI_SYSTEM_WORD
	.long	26
	.long	_RTTI_SYSTEM_WORD
	.long	28

.const_data
	.align 2
.globl	_INIT_ZIPPER_CENTRAL_FILE_HEADER_TYPE
_INIT_ZIPPER_CENTRAL_FILE_HEADER_TYPE:
	.byte	13,24
	.ascii	"Central_File_Header_Type"
	.long	46,0

.const_data
	.align 2
.globl	_RTTI_ZIPPER_CENTRAL_FILE_HEADER_TYPE
_RTTI_ZIPPER_CENTRAL_FILE_HEADER_TYPE:
	.byte	13,24
	.ascii	"Central_File_Header_Type"
	.long	46,17
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	6
	.long	_RTTI_SYSTEM_WORD
	.long	8
	.long	_RTTI_SYSTEM_WORD
	.long	10
	.long	_RTTI_SYSTEM_WORD
	.long	12
	.long	_RTTI_SYSTEM_WORD
	.long	14
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_SYSTEM_LONGWORD
	.long	20
	.long	_RTTI_SYSTEM_LONGWORD
	.long	24
	.long	_RTTI_SYSTEM_WORD
	.long	28
	.long	_RTTI_SYSTEM_WORD
	.long	30
	.long	_RTTI_SYSTEM_WORD
	.long	32
	.long	_RTTI_SYSTEM_WORD
	.long	34
	.long	_RTTI_SYSTEM_WORD
	.long	36
	.long	_RTTI_SYSTEM_LONGWORD
	.long	38
	.long	_RTTI_SYSTEM_LONGWORD
	.long	42

.const_data
	.align 2
.globl	_INIT_ZIPPER_END_OF_CENTRAL_DIR_TYPE
_INIT_ZIPPER_END_OF_CENTRAL_DIR_TYPE:
	.byte	13,23
	.ascii	"End_of_Central_Dir_Type"
	.long	22,0

.const_data
	.align 2
.globl	_RTTI_ZIPPER_END_OF_CENTRAL_DIR_TYPE
_RTTI_ZIPPER_END_OF_CENTRAL_DIR_TYPE:
	.byte	13,23
	.ascii	"End_of_Central_Dir_Type"
	.long	22,8
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	6
	.long	_RTTI_SYSTEM_WORD
	.long	8
	.long	_RTTI_SYSTEM_WORD
	.long	10
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_SYSTEM_WORD
	.long	20

.const_data
	.align 2
.globl	_INIT_ZIPPER_TPROGRESSEVENT
_INIT_ZIPPER_TPROGRESSEVENT:
	.byte	6,14
	.ascii	"TProgressEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,3
	.ascii	"Pct"
	.ascii	"\006Double"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_DOUBLE

.const_data
	.align 2
.globl	_RTTI_ZIPPER_TPROGRESSEVENT
_RTTI_ZIPPER_TPROGRESSEVENT:
	.byte	6,14
	.ascii	"TProgressEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,3
	.ascii	"Pct"
	.ascii	"\006Double"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_DOUBLE

.const_data
	.align 2
.globl	_INIT_ZIPPER_TONENDOFFILEEVENT
_INIT_ZIPPER_TONENDOFFILEEVENT:
	.byte	6,17
	.ascii	"TOnEndOfFileEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,5
	.ascii	"Ratio"
	.ascii	"\006Double"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_DOUBLE

.const_data
	.align 2
.globl	_RTTI_ZIPPER_TONENDOFFILEEVENT
_RTTI_ZIPPER_TONENDOFFILEEVENT:
	.byte	6,17
	.ascii	"TOnEndOfFileEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,5
	.ascii	"Ratio"
	.ascii	"\006Double"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_DOUBLE

.const_data
	.align 2
.globl	_INIT_ZIPPER_TONSTARTFILEEVENT
_INIT_ZIPPER_TONSTARTFILEEVENT:
	.byte	6,17
	.ascii	"TOnStartFileEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,9
	.ascii	"AFileName"
	.ascii	"\012AnsiString"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_ANSISTRING

.const_data
	.align 2
.globl	_RTTI_ZIPPER_TONSTARTFILEEVENT
_RTTI_ZIPPER_TONSTARTFILEEVENT:
	.byte	6,17
	.ascii	"TOnStartFileEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	2,9
	.ascii	"AFileName"
	.ascii	"\012AnsiString"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_SYSTEM_ANSISTRING

.const_data
	.align 2
.globl	_$ZIPPER$_Ld12
_$ZIPPER$_Ld12:
	.short	0
	.long	_$ZIPPER$_Ld13
	.align 2
.globl	_$ZIPPER$_Ld13
_$ZIPPER$_Ld13:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZIPPER_TCOMPRESSOR
_INIT_ZIPPER_TCOMPRESSOR:
	.byte	15,11
	.ascii	"TCompressor"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_ZIPPER_TCOMPRESSOR
_RTTI_ZIPPER_TCOMPRESSOR:
	.byte	15,11
	.ascii	"TCompressor"
	.long	_VMT_ZIPPER_TCOMPRESSOR
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	6
	.ascii	"zipper"
	.short	0

.const_data
	.align 2
.globl	_$ZIPPER$_Ld15
_$ZIPPER$_Ld15:
	.short	0
	.long	_$ZIPPER$_Ld16
	.align 2
.globl	_$ZIPPER$_Ld16
_$ZIPPER$_Ld16:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZIPPER_TDECOMPRESSOR
_INIT_ZIPPER_TDECOMPRESSOR:
	.byte	15,13
	.ascii	"TDeCompressor"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_ZIPPER_TDECOMPRESSOR
_RTTI_ZIPPER_TDECOMPRESSOR:
	.byte	15,13
	.ascii	"TDeCompressor"
	.long	_VMT_ZIPPER_TDECOMPRESSOR
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	6
	.ascii	"zipper"
	.short	0

.const_data
	.align 2
.globl	_INIT_ZIPPER_CODEREC
_INIT_ZIPPER_CODEREC:
	.byte	13,7
	.ascii	"CodeRec"
	.long	5,0

.const_data
	.align 2
.globl	_RTTI_ZIPPER_CODEREC
_RTTI_ZIPPER_CODEREC:
	.byte	13,7
	.ascii	"CodeRec"
	.long	5,3
	.long	_RTTI_SYSTEM_SMALLINT
	.long	0
	.long	_RTTI_SYSTEM_SMALLINT
	.long	2
	.long	_RTTI_SYSTEM_BYTE
	.long	4

.const_data
	.align 2
.globl	_INIT_ZIPPER_CODEARRAY
_INIT_ZIPPER_CODEARRAY:
	.byte	12
	.ascii	"\011CodeArray"
	.long	5,8192
	.long	_INIT_ZIPPER_CODEREC
	.long	-1

.const_data
	.align 2
.globl	_RTTI_ZIPPER_CODEARRAY
_RTTI_ZIPPER_CODEARRAY:
	.byte	12
	.ascii	"\011CodeArray"
	.long	5,8192
	.long	_RTTI_ZIPPER_CODEREC
	.long	-1

.const_data
	.align 2
.globl	_INIT_ZIPPER_TABLEPTR
_INIT_ZIPPER_TABLEPTR:
	.byte	0
	.ascii	"\010TablePtr"

.const_data
	.align 2
.globl	_RTTI_ZIPPER_TABLEPTR
_RTTI_ZIPPER_TABLEPTR:
	.byte	0
	.ascii	"\010TablePtr"

.const_data
	.align 2
.globl	_INIT_ZIPPER_FREELISTPTR
_INIT_ZIPPER_FREELISTPTR:
	.byte	0
	.ascii	"\013FreeListPtr"

.const_data
	.align 2
.globl	_RTTI_ZIPPER_FREELISTPTR
_RTTI_ZIPPER_FREELISTPTR:
	.byte	0
	.ascii	"\013FreeListPtr"

.const_data
	.align 2
.globl	_INIT_ZIPPER_FREELISTARRAY
_INIT_ZIPPER_FREELISTARRAY:
	.byte	12
	.ascii	"\015FreeListArray"
	.long	2,7935
	.long	_INIT_SYSTEM_WORD
	.long	18

.const_data
	.align 2
.globl	_RTTI_ZIPPER_FREELISTARRAY
_RTTI_ZIPPER_FREELISTARRAY:
	.byte	12
	.ascii	"\015FreeListArray"
	.long	2,7935
	.long	_RTTI_SYSTEM_WORD
	.long	18

.const_data
	.align 2
.globl	_$ZIPPER$_Ld18
_$ZIPPER$_Ld18:
	.short	0
	.long	_$ZIPPER$_Ld19
	.align 2
.globl	_$ZIPPER$_Ld19
_$ZIPPER$_Ld19:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZIPPER_TSHRINKER
_INIT_ZIPPER_TSHRINKER:
	.byte	15,9
	.ascii	"TShrinker"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_ZIPPER_TSHRINKER
_RTTI_ZIPPER_TSHRINKER:
	.byte	15,9
	.ascii	"TShrinker"
	.long	_VMT_ZIPPER_TSHRINKER
	.long	_RTTI_ZIPPER_TCOMPRESSOR
	.short	0
	.byte	6
	.ascii	"zipper"
	.short	0

.const_data
	.align 2
.globl	_$ZIPPER$_Ld21
_$ZIPPER$_Ld21:
	.short	0
	.long	_$ZIPPER$_Ld22
	.align 2
.globl	_$ZIPPER$_Ld22
_$ZIPPER$_Ld22:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZIPPER_TDEFLATER
_INIT_ZIPPER_TDEFLATER:
	.byte	15,9
	.ascii	"TDeflater"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_ZIPPER_TDEFLATER
_RTTI_ZIPPER_TDEFLATER:
	.byte	15,9
	.ascii	"TDeflater"
	.long	_VMT_ZIPPER_TDEFLATER
	.long	_RTTI_ZIPPER_TCOMPRESSOR
	.short	0
	.byte	6
	.ascii	"zipper"
	.short	0

.const_data
	.align 2
.globl	_$ZIPPER$_Ld24
_$ZIPPER$_Ld24:
	.short	0
	.long	_$ZIPPER$_Ld25
	.align 2
.globl	_$ZIPPER$_Ld25
_$ZIPPER$_Ld25:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZIPPER_TINFLATER
_INIT_ZIPPER_TINFLATER:
	.byte	15,9
	.ascii	"TInflater"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_ZIPPER_TINFLATER
_RTTI_ZIPPER_TINFLATER:
	.byte	15,9
	.ascii	"TInflater"
	.long	_VMT_ZIPPER_TINFLATER
	.long	_RTTI_ZIPPER_TDECOMPRESSOR
	.short	0
	.byte	6
	.ascii	"zipper"
	.short	0

.const_data
	.align 2
.globl	_$ZIPPER$_Ld27
_$ZIPPER$_Ld27:
	.short	0
	.long	_$ZIPPER$_Ld28
	.align 2
.globl	_$ZIPPER$_Ld28
_$ZIPPER$_Ld28:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZIPPER_TZIPFILEENTRY
_INIT_ZIPPER_TZIPFILEENTRY:
	.byte	15,13
	.ascii	"TZipFileEntry"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	24
	.long	_INIT_SYSTEM_ANSISTRING
	.long	40

.const_data
	.align 2
.globl	_RTTI_ZIPPER_TZIPFILEENTRY
_RTTI_ZIPPER_TZIPFILEENTRY:
	.byte	15,13
	.ascii	"TZipFileEntry"
	.long	_VMT_ZIPPER_TZIPFILEENTRY
	.long	_RTTI_CLASSES_TCOLLECTIONITEM
	.short	7
	.byte	6
	.ascii	"zipper"
	.short	7
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	_ZIPPER_TZIPFILEENTRY_$__GETARCHIVEFILENAME$$ANSISTRING
	.long	24,1,0,-2147483648
	.short	0
	.byte	49,15
	.ascii	"ArchiveFileName"
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	40,40,1,0,-2147483648
	.short	1
	.byte	48,12
	.ascii	"DiskFileName"
	.long	_RTTI_SYSTEM_LONGINT
	.long	56,56,1,0,-2147483648
	.short	2
	.byte	48,4
	.ascii	"Size"
	.long	_RTTI_SYSTEM_TDATETIME
	.long	32,32,1,0,-2147483648
	.short	3
	.byte	48,8
	.ascii	"DateTime"
	.long	_RTTI_SYSTEM_BYTE
	.long	52,52,1,0,-2147483648
	.short	4
	.byte	48,2
	.ascii	"OS"
	.long	_RTTI_SYSTEM_LONGINT
	.long	28,28,1,0,-2147483648
	.short	5
	.byte	48,10
	.ascii	"Attributes"
	.long	_RTTI_ZSTREAM_TCOMPRESSIONLEVEL
	.long	64,64,1,0,-2147483648
	.short	6
	.byte	48,16
	.ascii	"CompressionLevel"

.const_data
	.align 2
.globl	_$ZIPPER$_Ld30
_$ZIPPER$_Ld30:
	.short	0
	.long	_$ZIPPER$_Ld31
	.align 2
.globl	_$ZIPPER$_Ld31
_$ZIPPER$_Ld31:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZIPPER_TZIPFILEENTRIES
_INIT_ZIPPER_TZIPFILEENTRIES:
	.byte	15,15
	.ascii	"TZipFileEntries"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_ZIPPER_TZIPFILEENTRIES
_RTTI_ZIPPER_TZIPFILEENTRIES:
	.byte	15,15
	.ascii	"TZipFileEntries"
	.long	_VMT_ZIPPER_TZIPFILEENTRIES
	.long	_RTTI_CLASSES_TCOLLECTION
	.short	0
	.byte	6
	.ascii	"zipper"
	.short	0

.const_data
	.align 2
.globl	_INIT_ZIPPER_DEF349
_INIT_ZIPPER_DEF349:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$ZIPPER$_Ld33
_$ZIPPER$_Ld33:
	.short	0
	.long	_$ZIPPER$_Ld34
	.align 2
.globl	_$ZIPPER$_Ld34
_$ZIPPER$_Ld34:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZIPPER_TZIPPER
_INIT_ZIPPER_TZIPPER:
	.byte	15,7
	.ascii	"TZipper"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	16
	.long	_INIT_SYSTEM_ANSISTRING
	.long	20

.const_data
	.align 2
.globl	_RTTI_ZIPPER_TZIPPER
_RTTI_ZIPPER_TZIPPER:
	.byte	15,7
	.ascii	"TZipper"
	.long	_VMT_ZIPPER_TZIPPER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	6
	.ascii	"zipper"
	.short	0

.const_data
	.align 2
.globl	_$ZIPPER$_Ld36
_$ZIPPER$_Ld36:
	.short	0
	.long	_$ZIPPER$_Ld37
	.align 2
.globl	_$ZIPPER$_Ld37
_$ZIPPER$_Ld37:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZIPPER_TFULLZIPFILEENTRY
_INIT_ZIPPER_TFULLZIPFILEENTRY:
	.byte	15,17
	.ascii	"TFullZipFileEntry"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_ZIPPER_TFULLZIPFILEENTRY
_RTTI_ZIPPER_TFULLZIPFILEENTRY:
	.byte	15,17
	.ascii	"TFullZipFileEntry"
	.long	_VMT_ZIPPER_TFULLZIPFILEENTRY
	.long	_RTTI_ZIPPER_TZIPFILEENTRY
	.short	7
	.byte	6
	.ascii	"zipper"
	.short	0

.const_data
	.align 2
.globl	_INIT_ZIPPER_TONCUSTOMSTREAMEVENT
_INIT_ZIPPER_TONCUSTOMSTREAMEVENT:
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
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_CLASSES_TSTREAM
	.long	_RTTI_ZIPPER_TFULLZIPFILEENTRY

.const_data
	.align 2
.globl	_RTTI_ZIPPER_TONCUSTOMSTREAMEVENT
_RTTI_ZIPPER_TONCUSTOMSTREAMEVENT:
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
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_CLASSES_TSTREAM
	.long	_RTTI_ZIPPER_TFULLZIPFILEENTRY

.const_data
	.align 2
.globl	_INIT_ZIPPER_TCUSTOMINPUTSTREAMEVENT
_INIT_ZIPPER_TCUSTOMINPUTSTREAMEVENT:
	.byte	6,23
	.ascii	"TCustomInputStreamEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	9,7
	.ascii	"AStream"
	.ascii	"\007TStream"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_CLASSES_TSTREAM

.const_data
	.align 2
.globl	_RTTI_ZIPPER_TCUSTOMINPUTSTREAMEVENT
_RTTI_ZIPPER_TCUSTOMINPUTSTREAMEVENT:
	.byte	6,23
	.ascii	"TCustomInputStreamEvent"
	.byte	0,2,8,6
	.ascii	"Sender"
	.ascii	"\007TObject"
	.byte	9,7
	.ascii	"AStream"
	.ascii	"\007TStream"
	.byte	0
	.long	_RTTI_SYSTEM_TOBJECT
	.long	_RTTI_CLASSES_TSTREAM

.const_data
	.align 2
.globl	_$ZIPPER$_Ld39
_$ZIPPER$_Ld39:
	.short	0
	.long	_$ZIPPER$_Ld40
	.align 2
.globl	_$ZIPPER$_Ld40
_$ZIPPER$_Ld40:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZIPPER_TFULLZIPFILEENTRIES
_INIT_ZIPPER_TFULLZIPFILEENTRIES:
	.byte	15,19
	.ascii	"TFullZipFileEntries"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_ZIPPER_TFULLZIPFILEENTRIES
_RTTI_ZIPPER_TFULLZIPFILEENTRIES:
	.byte	15,19
	.ascii	"TFullZipFileEntries"
	.long	_VMT_ZIPPER_TFULLZIPFILEENTRIES
	.long	_RTTI_ZIPPER_TZIPFILEENTRIES
	.short	0
	.byte	6
	.ascii	"zipper"
	.short	0

.const_data
	.align 2
.globl	_INIT_ZIPPER_DEF425
_INIT_ZIPPER_DEF425:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_ZIPPER_DEF428
_INIT_ZIPPER_DEF428:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_ZIPPER_DEF437
_INIT_ZIPPER_DEF437:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$ZIPPER$_Ld42
_$ZIPPER$_Ld42:
	.short	0
	.long	_$ZIPPER$_Ld43
	.align 2
.globl	_$ZIPPER$_Ld43
_$ZIPPER$_Ld43:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZIPPER_TUNZIPPER
_INIT_ZIPPER_TUNZIPPER:
	.byte	15,9
	.ascii	"TUnZipper"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	44
	.long	_INIT_SYSTEM_ANSISTRING
	.long	48
	.long	_INIT_SYSTEM_ANSISTRING
	.long	52

.const_data
	.align 2
.globl	_RTTI_ZIPPER_TUNZIPPER
_RTTI_ZIPPER_TUNZIPPER:
	.byte	15,9
	.ascii	"TUnZipper"
	.long	_VMT_ZIPPER_TUNZIPPER
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	6
	.ascii	"zipper"
	.short	0

.const_data
	.align 2
.globl	_$ZIPPER$_Ld45
_$ZIPPER$_Ld45:
	.short	0
	.long	_$ZIPPER$_Ld46
	.align 2
.globl	_$ZIPPER$_Ld46
_$ZIPPER$_Ld46:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZIPPER_EZIPERROR
_INIT_ZIPPER_EZIPERROR:
	.byte	15,9
	.ascii	"EZipError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_ZIPPER_EZIPERROR
_RTTI_ZIPPER_EZIPERROR:
	.byte	15,9
	.ascii	"EZipError"
	.long	_VMT_ZIPPER_EZIPERROR
	.long	_RTTI_SYSUTILS_EXCEPTION
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

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ZIPPER$_Ld1$non_lazy_ptr:
.indirect_symbol _$ZIPPER$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ZIPPER$_Ld3$non_lazy_ptr:
.indirect_symbol _$ZIPPER$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_ZIPPER_CRC_32_TAB$non_lazy_ptr:
.indirect_symbol _TC_ZIPPER_CRC_32_TAB
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ZIPPER$_Ld5$non_lazy_ptr:
.indirect_symbol _$ZIPPER$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_ZSTREAM_TCOMPRESSIONSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_ZSTREAM_TCOMPRESSIONSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ZIPPER$_Ld6$non_lazy_ptr:
.indirect_symbol _$ZIPPER$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_ZSTREAM_TDECOMPRESSIONSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_ZSTREAM_TDECOMPRESSIONSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE$non_lazy_ptr:
.indirect_symbol _TC_ZIPPER_TSHRINKER_$_SHRINK$SMALLINT_LASTCODE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZIPPER_SERRMISSINGFILENAME$non_lazy_ptr:
.indirect_symbol _RESSTR_ZIPPER_SERRMISSINGFILENAME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_ZIPPER_EZIPERROR$non_lazy_ptr:
.indirect_symbol _VMT_ZIPPER_EZIPERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_SYSUTILS_TSEARCHREC$non_lazy_ptr:
.indirect_symbol _INIT_SYSUTILS_TSEARCHREC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZIPPER_SERRFILEDOESNOTEXIST$non_lazy_ptr:
.indirect_symbol _RESSTR_ZIPPER_SERRFILEDOESNOTEXIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZIPPER_SERRMISSINGARCHIVENAME$non_lazy_ptr:
.indirect_symbol _RESSTR_ZIPPER_SERRMISSINGARCHIVENAME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TSTRINGSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFILESTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_ZIPPER_TDEFLATER$non_lazy_ptr:
.indirect_symbol _VMT_ZIPPER_TDEFLATER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TMEMORYSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ZIPPER$_Ld7$non_lazy_ptr:
.indirect_symbol _$ZIPPER$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZIPPER_SERRBUFSIZECHANGE$non_lazy_ptr:
.indirect_symbol _RESSTR_ZIPPER_SERRBUFSIZECHANGE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZIPPER_SERRFILECHANGE$non_lazy_ptr:
.indirect_symbol _RESSTR_ZIPPER_SERRFILECHANGE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ZIPPER$_Ld9$non_lazy_ptr:
.indirect_symbol _$ZIPPER$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_ZIPPER_TZIPFILEENTRY$non_lazy_ptr:
.indirect_symbol _VMT_ZIPPER_TZIPFILEENTRY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_ZIPPER_TZIPFILEENTRIES$non_lazy_ptr:
.indirect_symbol _VMT_ZIPPER_TZIPFILEENTRIES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSTEM_ALLOWDIRECTORYSEPARATORS$non_lazy_ptr:
.indirect_symbol _TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ZIPPER$_Ld10$non_lazy_ptr:
.indirect_symbol _$ZIPPER$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZIPPER_SERRCORRUPTZIP$non_lazy_ptr:
.indirect_symbol _RESSTR_ZIPPER_SERRCORRUPTZIP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_ZIPPER_TFULLZIPFILEENTRY$non_lazy_ptr:
.indirect_symbol _VMT_ZIPPER_TFULLZIPFILEENTRY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_ZIPPER_TINFLATER$non_lazy_ptr:
.indirect_symbol _VMT_ZIPPER_TINFLATER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZIPPER_SERRUNSUPPORTEDCOMPRESSIONFORMAT$non_lazy_ptr:
.indirect_symbol _RESSTR_ZIPPER_SERRUNSUPPORTEDCOMPRESSIONFORMAT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZIPPER_SERRINVALIDCRC$non_lazy_ptr:
.indirect_symbol _RESSTR_ZIPPER_SERRINVALIDCRC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_ZIPPER_TFULLZIPFILEENTRIES$non_lazy_ptr:
.indirect_symbol _VMT_ZIPPER_TFULLZIPFILEENTRIES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZIPPER_SERRNOFILENAME$non_lazy_ptr:
.indirect_symbol _RESSTR_ZIPPER_SERRNOFILENAME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZIPPER_SERRNOSTREAM$non_lazy_ptr:
.indirect_symbol _RESSTR_ZIPPER_SERRNOSTREAM
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_ZIPPER_START
_RESSTR_ZIPPER_START:
	.long	_$ZIPPER$_Ld47
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_ZIPPER_SERRBUFSIZECHANGE
_RESSTR_ZIPPER_SERRBUFSIZECHANGE:
	.long	_$ZIPPER$_Ld51
	.long	_$ZIPPER$_Ld49
	.long	_$ZIPPER$_Ld49
	.long	65062167

.data
	.align 2
.globl	_RESSTR_ZIPPER_SERRFILECHANGE
_RESSTR_ZIPPER_SERRFILECHANGE:
	.long	_$ZIPPER$_Ld55
	.long	_$ZIPPER$_Ld53
	.long	_$ZIPPER$_Ld53
	.long	59495751

.data
	.align 2
.globl	_RESSTR_ZIPPER_SERRINVALIDCRC
_RESSTR_ZIPPER_SERRINVALIDCRC:
	.long	_$ZIPPER$_Ld59
	.long	_$ZIPPER$_Ld57
	.long	_$ZIPPER$_Ld57
	.long	152773827

.data
	.align 2
.globl	_RESSTR_ZIPPER_SERRCORRUPTZIP
_RESSTR_ZIPPER_SERRCORRUPTZIP:
	.long	_$ZIPPER$_Ld63
	.long	_$ZIPPER$_Ld61
	.long	_$ZIPPER$_Ld61
	.long	13962387

.data
	.align 2
.globl	_RESSTR_ZIPPER_SERRUNSUPPORTEDCOMPRESSIONFORMAT
_RESSTR_ZIPPER_SERRUNSUPPORTEDCOMPRESSIONFORMAT:
	.long	_$ZIPPER$_Ld67
	.long	_$ZIPPER$_Ld65
	.long	_$ZIPPER$_Ld65
	.long	89252324

.data
	.align 2
.globl	_RESSTR_ZIPPER_SERRMISSINGFILENAME
_RESSTR_ZIPPER_SERRMISSINGFILENAME:
	.long	_$ZIPPER$_Ld71
	.long	_$ZIPPER$_Ld69
	.long	_$ZIPPER$_Ld69
	.long	83633732

.data
	.align 2
.globl	_RESSTR_ZIPPER_SERRMISSINGARCHIVENAME
_RESSTR_ZIPPER_SERRMISSINGARCHIVENAME:
	.long	_$ZIPPER$_Ld75
	.long	_$ZIPPER$_Ld73
	.long	_$ZIPPER$_Ld73
	.long	45880644

.data
	.align 2
.globl	_RESSTR_ZIPPER_SERRFILEDOESNOTEXIST
_RESSTR_ZIPPER_SERRFILEDOESNOTEXIST:
	.long	_$ZIPPER$_Ld79
	.long	_$ZIPPER$_Ld77
	.long	_$ZIPPER$_Ld77
	.long	198206814

.data
	.align 2
.globl	_RESSTR_ZIPPER_SERRNOFILENAME
_RESSTR_ZIPPER_SERRNOFILENAME:
	.long	_$ZIPPER$_Ld83
	.long	_$ZIPPER$_Ld81
	.long	_$ZIPPER$_Ld81
	.long	151265006

.data
	.align 2
.globl	_RESSTR_ZIPPER_SERRNOSTREAM
_RESSTR_ZIPPER_SERRNOSTREAM:
	.long	_$ZIPPER$_Ld87
	.long	_$ZIPPER$_Ld85
	.long	_$ZIPPER$_Ld85
	.long	15201278

.data
	.align 2
.globl	_RESSTR_ZIPPER_END
_RESSTR_ZIPPER_END:
	.long	_RESSTR_ZIPPER_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

