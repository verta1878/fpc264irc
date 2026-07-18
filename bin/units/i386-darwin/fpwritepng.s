# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__CREATE$$TFPWRITERPNG
_FPWRITEPNG_TFPWRITERPNG_$__CREATE$$TFPWRITERPNG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
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
	movl	-8(%ebp),%eax
	movl	$0,28(%eax)
	movl	-8(%ebp),%eax
	movl	$0,44(%eax)
	movl	-8(%ebp),%eax
	movb	$0,25(%eax)
	movl	-8(%ebp),%eax
	movb	$0,23(%eax)
	movl	-8(%ebp),%eax
	movb	$1,21(%eax)
	movl	-8(%ebp),%eax
	movb	$1,22(%eax)
	movl	-8(%ebp),%eax
	movb	$0,24(%eax)
	movl	-8(%ebp),%eax
	movl	$2,128(%eax)
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	call	LFPC_RERAISE$stub
Lj20:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj44
	jmp	Lj43
Lj44:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj42
	jmp	Lj43
Lj42:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj43:
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
	jne	Lj48
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj49
	jmp	Lj50
Lj49:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj50:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj48:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj47
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj47:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj17
Lj17:
Lj3:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__DESTROY
_FPWRITEPNG_TFPWRITERPNG_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj57
	jmp	Lj58
Lj57:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj58:
	movl	-8(%ebp),%eax
	cmpb	$0,88(%eax)
	jne	Lj61
	jmp	Lj62
Lj61:
	movl	-8(%ebp),%eax
	leal	84(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj62:
	movl	-8(%ebp),%eax
	leal	28(%eax),%ebx
	movl	(%ebx),%eax
	cmpl	$0,%eax
	ja	Lj67
	jmp	Lj68
Lj67:
	movl	16(%ebx),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj68:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj77
	jmp	Lj76
Lj77:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj75
	jmp	Lj76
Lj75:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj76:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__WRITECHUNK
_FPWRITEPNG_TFPWRITERPNG_$__WRITECHUNK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	call	Lj81
Lj81:
	popl	-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj82
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,%edi
	movl	4(%edi),%eax
	call	L_FPIMGCMN_SWAP$LONGWORD$$LONGWORD$stub
	movl	%eax,-12(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	leal	12(%edi),%eax
	movb	$1,%cl
	movl	$3,%edx
	call	Lfpc_chararray_to_ansistr$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj91
	jmp	Lj92
Lj91:
	movl	20(%edi),%eax
	cmpl	$20,%eax
	jne	Lj101
	jmp	Lj102
Lj101:
	movl	20(%edi),%eax
	movl	-64(%ebp),%ecx
	movl	L_TC_PNGCOMN_CHUNKTYPES$non_lazy_ptr-Lj81(%ecx),%edx
	movl	(%edx,%eax,4),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj105
Lj102:
	movl	-64(%ebp),%eax
	movl	L_VMT_PNGCOMN_PNGIMAGEEXCEPTION$non_lazy_ptr-Lj81(%eax),%edx
	movl	-64(%ebp),%eax
	movl	L_$FPWRITEPNG$_Ld1$non_lazy_ptr-Lj81(%eax),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	movl	-64(%ebp),%ebx
	leal	La1-Lj81(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj105:
	jmp	Lj112
Lj92:
	movl	12(%edi),%eax
	movl	%eax,-8(%ebp)
Lj112:
	leal	12(%edi),%edx
	movl	-64(%ebp),%eax
	movl	L_TC_PNGCOMN_ALL1BITS$non_lazy_ptr-Lj81(%eax),%ecx
	movl	(%ecx),%eax
	movl	$4,%ecx
	call	L_FPIMGCMN_CALCULATECRC$LONGWORD$formal$LONGINT$$LONGWORD$stub
	movl	%eax,-16(%ebp)
	movl	4(%edi),%ecx
	movl	16(%edi),%edx
	movl	-16(%ebp),%eax
	call	L_FPIMGCMN_CALCULATECRC$LONGWORD$formal$LONGINT$$LONGWORD$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-64(%ebp),%edx
	movl	L_TC_PNGCOMN_ALL1BITS$non_lazy_ptr-Lj81(%edx),%ecx
	movl	(%ecx),%edx
	xorl	%edx,%eax
	call	L_FPIMGCMN_SWAP$LONGWORD$$LONGWORD$stub
	movl	%eax,8(%edi)
	movl	-4(%ebp),%eax
	movl	12(%eax),%esi
	leal	-12(%ebp),%edx
	movl	%esi,%eax
	movl	$8,%ecx
	movl	%esi,%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	4(%edi),%ecx
	movl	16(%edi),%eax
	movl	%eax,%edx
	movl	%esi,%eax
	movl	%esi,%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	leal	8(%edi),%edx
	movl	%esi,%eax
	movl	$4,%ecx
	movl	%esi,%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj82:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj83
	call	LFPC_RERAISE$stub
Lj83:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKLENGTH$LONGWORD
_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKLENGTH$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	leal	28(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	%eax,4(%ebx)
	movl	-4(%ebp),%eax
	cmpl	(%ebx),%eax
	ja	Lj161
	jmp	Lj162
Lj161:
	movl	(%ebx),%eax
	cmpl	$0,%eax
	ja	Lj163
	jmp	Lj164
Lj163:
	movl	16(%ebx),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj164:
	movl	4(%ebx),%edx
	leal	16(%ebx),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	4(%ebx),%eax
	movl	%eax,(%ebx)
Lj162:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKTYPE$TCHUNKTYPES
_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKTYPE$TCHUNKTYPES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj174
Lj174:
	popl	%ecx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%ebx
	movl	L_TC_PNGCOMN_CHUNKTYPES$non_lazy_ptr-Lj174(%ecx),%edx
	movl	(%edx,%ebx,4),%edx
	movl	%edx,12(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKTYPE$TCHUNKCODE
_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKTYPE$TCHUNKCODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$536,%esp
	movl	%ebx,-528(%ebp)
	movl	%esi,-524(%ebp)
	movl	%edi,-520(%ebp)
	call	Lj182
Lj182:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	movl	8(%ebp),%edx
	movl	%edx,12(%eax)
	movl	%eax,%ebx
	movl	$0,20(%ebx)
	jmp	Lj190
	.align 2
Lj189:
	incl	20(%ebx)
Lj190:
	movl	20(%ebx),%eax
	cmpl	$20,%eax
	jb	Lj192
	jmp	Lj191
Lj192:
	movb	$1,(%esp)
	movl	$3,4(%esp)
	movl	20(%ebx),%eax
	movl	L_TC_PNGCOMN_CHUNKTYPES$non_lazy_ptr-Lj182(%edi),%edx
	leal	(%edx,%eax,4),%ecx
	leal	-260(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_chararray_to_shortstr$stub
	leal	-260(%ebp),%esi
	movb	$1,(%esp)
	movl	$3,4(%esp)
	leal	8(%ebp),%ecx
	leal	-516(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_chararray_to_shortstr$stub
	leal	-516(%ebp),%edx
	movl	%esi,%eax
	call	Lfpc_shortstr_compare_equal$stub
	testl	%eax,%eax
	jne	Lj189
	jmp	Lj191
Lj191:
	movl	-528(%ebp),%ebx
	movl	-524(%ebp),%esi
	movl	-520(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__CURRENTLINE$LONGWORD$$BYTE
_FPWRITEPNG_TFPWRITERPNG_$__CURRENTLINE$LONGWORD$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	76(%eax),%eax
	movl	-4(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__PREVSAMPLE$LONGWORD$$BYTE
_FPWRITEPNG_TFPWRITERPNG_$__PREVSAMPLE$LONGWORD$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	cmpl	-4(%ebp),%eax
	ja	Lj223
	jmp	Lj224
Lj223:
	movb	$0,-9(%ebp)
	jmp	Lj227
Lj224:
	movl	-8(%ebp),%eax
	movl	76(%eax),%ecx
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%edx
	movl	-4(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movb	(%ecx,%edx,1),%al
	movb	%al,-9(%ebp)
Lj227:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__PREVIOUSLINE$LONGWORD$$BYTE
_FPWRITEPNG_TFPWRITERPNG_$__PREVIOUSLINE$LONGWORD$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	80(%eax),%eax
	movl	-4(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__PREVLINEPREVSAMPLE$LONGWORD$$BYTE
_FPWRITEPNG_TFPWRITERPNG_$__PREVLINEPREVSAMPLE$LONGWORD$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%eax
	cmpl	-4(%ebp),%eax
	ja	Lj236
	jmp	Lj237
Lj236:
	movb	$0,-9(%ebp)
	jmp	Lj240
Lj237:
	movl	-8(%ebp),%eax
	movl	80(%eax),%ecx
	movl	-8(%ebp),%eax
	movzbl	26(%eax),%edx
	movl	-4(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movb	(%ecx,%edx,1),%al
	movb	%al,-9(%ebp)
Lj240:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__DOFILTER$BYTE$LONGWORD$BYTE$$BYTE
_FPWRITEPNG_TFPWRITERPNG_$__DOFILTER$BYTE$LONGWORD$BYTE$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj255
	decb	%al
	je	Lj256
	decb	%al
	je	Lj257
	decb	%al
	je	Lj258
	decb	%al
	je	Lj259
	jmp	Lj254
Lj255:
	movb	$0,-14(%ebp)
	jmp	Lj253
Lj256:
	movl	%ebp,%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERSUB$stub
	jmp	Lj253
Lj257:
	movl	%ebp,%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERUP$stub
	jmp	Lj253
Lj258:
	movl	%ebp,%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERAVERAGE$stub
	jmp	Lj253
Lj259:
	movl	%ebp,%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERPAETH$stub
	jmp	Lj253
Lj254:
Lj253:
	movb	-14(%ebp),%al
	cmpb	8(%ebp),%al
	ja	Lj270
	jmp	Lj271
Lj270:
	movzbl	8(%ebp),%eax
	addl	$256,%eax
	movzbl	-14(%ebp),%edx
	subl	%edx,%eax
	movb	%al,-13(%ebp)
	jmp	Lj274
Lj271:
	movzbl	8(%ebp),%eax
	movzbl	-14(%ebp),%edx
	subl	%edx,%eax
	movb	%al,-13(%ebp)
Lj274:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERPAETH
_FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERPAETH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__PREVSAMPLE$LONGWORD$$BYTE$stub
	movb	%al,-11(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__PREVLINEPREVSAMPLE$LONGWORD$$BYTE$stub
	movb	%al,-13(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__PREVIOUSLINE$LONGWORD$$BYTE$stub
	movb	%al,-12(%ebp)
	movzbl	-11(%ebp),%edx
	movzbl	-12(%ebp),%eax
	addl	%eax,%edx
	movzbl	-13(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-20(%ebp)
	movzbl	-11(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%eax
	xorl	%eax,%edx
	subl	%eax,%edx
	movw	%dx,-6(%ebp)
	movzbl	-13(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%eax
	xorl	%eax,%edx
	subl	%eax,%edx
	movw	%dx,-10(%ebp)
	movzbl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%eax
	xorl	%eax,%edx
	subl	%eax,%edx
	movw	%dx,-8(%ebp)
	movw	-6(%ebp),%ax
	cmpw	-8(%ebp),%ax
	jbe	Lj305
	jmp	Lj304
Lj305:
	movw	-6(%ebp),%ax
	cmpw	-10(%ebp),%ax
	jbe	Lj303
	jmp	Lj304
Lj303:
	movl	-4(%ebp),%eax
	movb	-11(%ebp),%dl
	movb	%dl,-14(%eax)
	jmp	Lj308
Lj304:
	movw	-8(%ebp),%ax
	cmpw	-10(%ebp),%ax
	jbe	Lj309
	jmp	Lj310
Lj309:
	movl	-4(%ebp),%eax
	movb	-12(%ebp),%dl
	movb	%dl,-14(%eax)
	jmp	Lj313
Lj310:
	movl	-4(%ebp),%eax
	movb	-13(%ebp),%dl
	movb	%dl,-14(%eax)
Lj313:
Lj308:
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERAVERAGE
_FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERAVERAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__PREVSAMPLE$LONGWORD$$BYTE$stub
	movzbw	%al,%ax
	movw	%ax,-6(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__PREVIOUSLINE$LONGWORD$$BYTE$stub
	movzbw	%al,%ax
	movw	%ax,-8(%ebp)
	movzwl	-6(%ebp),%eax
	movzwl	-8(%ebp),%edx
	addl	%edx,%eax
	shrl	$1,%eax
	movl	-4(%ebp),%edx
	movb	%al,-14(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERUP
_FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERUP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__PREVIOUSLINE$LONGWORD$$BYTE$stub
	movl	-4(%ebp),%edx
	movb	%al,-14(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERSUB
_FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERSUB:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__PREVSAMPLE$LONGWORD$$BYTE$stub
	movl	-4(%ebp),%edx
	movb	%al,-14(%edx)
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__DETERMINEHEADER$THEADERCHUNK
_FPWRITEPNG_TFPWRITERPNG_$__DETERMINEHEADER$THEADERCHUNK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj343
Lj343:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	32(%eax),%eax
	call	L_FPIMGCMN_SWAP$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	28(%eax),%eax
	call	L_FPIMGCMN_SWAP$LONGWORD$$LONGWORD$stub
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	cmpb	$0,24(%eax)
	jne	Lj356
	jmp	Lj357
Lj356:
	movl	%ebp,%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$_DETERMINEHEADER$THEADERCHUNK_COUNTALPHAS$$LONGINT$stub
	movl	%eax,-12(%ebp)
	jmp	Lj362
Lj357:
	movl	$0,-12(%ebp)
Lj362:
	movl	-8(%ebp),%eax
	cmpb	$0,23(%eax)
	jne	Lj365
	jmp	Lj366
Lj365:
	movl	-8(%ebp),%eax
	cmpb	$0,88(%eax)
	jne	Lj367
	jmp	Lj368
Lj367:
	movl	-8(%ebp),%eax
	leal	84(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj368:
	movl	-8(%ebp),%esi
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN$stub
	testb	%al,%al
	seteb	88(%esi)
	movl	-8(%ebp),%eax
	cmpb	$0,88(%eax)
	jne	Lj375
	jmp	Lj376
Lj375:
	movl	L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr-Lj343(%ebx),%edx
	movl	$16,%ecx
	movl	$0,%eax
	call	L_FPIMAGE_TFPPALETTE_$__CREATE$LONGINT$$TFPPALETTE$stub
	movl	-8(%ebp),%edx
	movl	%eax,84(%edx)
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	84(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*116(%ecx)
	jmp	Lj389
Lj376:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	movl	24(%eax),%eax
	movl	%eax,84(%edx)
Lj389:
	movl	-8(%ebp),%eax
	movl	84(%eax),%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	cmpl	$256,%eax
	jg	Lj392
	jmp	Lj393
Lj392:
	movl	L_VMT_PNGCOMN_PNGIMAGEEXCEPTION$non_lazy_ptr-Lj343(%ebx),%edx
	movl	L_$FPWRITEPNG$_Ld3$non_lazy_ptr-Lj343(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj343(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj393:
	movl	-4(%ebp),%eax
	movb	$3,9(%eax)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	setgb	20(%edx)
	movl	-4(%ebp),%eax
	movb	$8,8(%eax)
	movl	-8(%ebp),%eax
	movb	$1,26(%eax)
	jmp	Lj410
Lj366:
	movl	-12(%ebp),%eax
	cmpl	$3,%eax
	je	Lj411
	jmp	Lj412
Lj411:
	movl	-4(%ebp),%eax
	movb	$4,9(%eax)
Lj412:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	cmpl	$2,%eax
	seteb	20(%edx)
	movl	-8(%ebp),%eax
	movb	25(%eax),%al
	testb	%al,%al
	je	Lj417
	jmp	Lj418
Lj417:
	movl	-4(%ebp),%eax
	movzbl	9(%eax),%eax
	addl	$2,%eax
	movl	-4(%ebp),%edx
	movb	%al,9(%edx)
Lj418:
	movl	-8(%ebp),%eax
	cmpb	$0,22(%eax)
	jne	Lj421
	jmp	Lj422
Lj421:
	movl	-4(%ebp),%eax
	movb	$16,8(%eax)
	jmp	Lj425
Lj422:
	movl	-4(%ebp),%eax
	movb	$8,8(%eax)
Lj425:
	movl	%ebp,%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$_DETERMINEHEADER$THEADERCHUNK_DETERMINECOLORFORMAT$stub
Lj410:
	movl	-4(%ebp),%eax
	movb	$0,10(%eax)
	movl	-4(%ebp),%eax
	movb	$0,11(%eax)
	movl	-4(%ebp),%eax
	movb	$0,12(%eax)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$_DETERMINEHEADER$THEADERCHUNK_DETERMINECOLORFORMAT
_FPWRITEPNG_TFPWRITERPNG_$_DETERMINEHEADER$THEADERCHUNK_DETERMINECOLORFORMAT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj347
Lj347:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	9(%eax),%dl
	testb	%dl,%dl
	je	Lj440
	subb	$2,%dl
	je	Lj441
	subb	$2,%dl
	je	Lj442
	subb	$2,%dl
	je	Lj443
	jmp	Lj439
Lj440:
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	cmpb	$0,22(%edx)
	jne	Lj444
	jmp	Lj445
Lj444:
	movl	-4(%ebp),%edx
	movl	-8(%edx),%ebx
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	movl	%edx,-8(%ebp)
	movl	L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYW$TFPCOLOR$$QWORD$non_lazy_ptr-Lj347(%ecx),%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	%edx,56(%ebx)
	movl	-8(%ebp),%edx
	movl	%edx,60(%ebx)
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	movb	$2,26(%edx)
	jmp	Lj450
Lj445:
	movl	-4(%ebp),%edx
	movl	-8(%edx),%ebx
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	movl	%edx,-8(%ebp)
	movl	L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYB$TFPCOLOR$$QWORD$non_lazy_ptr-Lj347(%ecx),%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	%edx,56(%ebx)
	movl	-8(%ebp),%edx
	movl	%edx,60(%ebx)
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	movb	$1,26(%edx)
Lj450:
	jmp	Lj438
Lj441:
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	cmpb	$0,22(%edx)
	jne	Lj455
	jmp	Lj456
Lj455:
	movl	-4(%ebp),%edx
	movl	-8(%edx),%ebx
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	movl	%edx,-8(%ebp)
	movl	L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORW$TFPCOLOR$$QWORD$non_lazy_ptr-Lj347(%ecx),%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	%edx,56(%ebx)
	movl	-8(%ebp),%edx
	movl	%edx,60(%ebx)
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	movb	$6,26(%edx)
	jmp	Lj461
Lj456:
	movl	-4(%ebp),%edx
	movl	-8(%edx),%ebx
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	movl	%edx,-8(%ebp)
	movl	L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORB$TFPCOLOR$$QWORD$non_lazy_ptr-Lj347(%ecx),%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	%edx,56(%ebx)
	movl	-8(%ebp),%edx
	movl	%edx,60(%ebx)
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	movb	$3,26(%edx)
Lj461:
	jmp	Lj438
Lj442:
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	cmpb	$0,22(%edx)
	jne	Lj466
	jmp	Lj467
Lj466:
	movl	-4(%ebp),%edx
	movl	-8(%edx),%ebx
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	movl	%edx,-8(%ebp)
	movl	L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYAW$TFPCOLOR$$QWORD$non_lazy_ptr-Lj347(%ecx),%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	%edx,56(%ebx)
	movl	-8(%ebp),%edx
	movl	%edx,60(%ebx)
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	movb	$4,26(%edx)
	jmp	Lj472
Lj467:
	movl	-4(%ebp),%edx
	movl	-8(%edx),%ebx
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	movl	%edx,-8(%ebp)
	movl	L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYAB$TFPCOLOR$$QWORD$non_lazy_ptr-Lj347(%ecx),%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	%edx,56(%ebx)
	movl	-8(%ebp),%edx
	movl	%edx,60(%ebx)
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	movb	$2,26(%edx)
Lj472:
	jmp	Lj438
Lj443:
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	cmpb	$0,22(%edx)
	jne	Lj477
	jmp	Lj478
Lj477:
	movl	-4(%ebp),%edx
	movl	-8(%edx),%ebx
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	movl	%edx,-8(%ebp)
	movl	L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORAW$TFPCOLOR$$QWORD$non_lazy_ptr-Lj347(%ecx),%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	%edx,56(%ebx)
	movl	-8(%ebp),%edx
	movl	%edx,60(%ebx)
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	movb	$8,26(%edx)
	jmp	Lj483
Lj478:
	movl	-4(%ebp),%edx
	movl	-8(%edx),%ebx
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	movl	%edx,-8(%ebp)
	movl	L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORAB$TFPCOLOR$$QWORD$non_lazy_ptr-Lj347(%ecx),%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	%edx,56(%ebx)
	movl	-8(%ebp),%edx
	movl	%edx,60(%ebx)
	movl	-4(%ebp),%edx
	movl	-8(%edx),%edx
	movb	$4,26(%edx)
Lj483:
	jmp	Lj438
Lj439:
Lj438:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$_DETERMINEHEADER$THEADERCHUNK_COUNTALPHAS$$LONGINT
_FPWRITEPNG_TFPWRITERPNG_$_DETERMINEHEADER$THEADERCHUNK_COUNTALPHAS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%esi,-48(%ebp)
	movl	%eax,-4(%ebp)
	movb	$0,-10(%ebp)
	movb	$0,-9(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	16(%eax),%ebx
	movl	%ebx,%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj494
	jmp	Lj495
Lj494:
	movl	24(%ebx),%esi
	movl	%esi,%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movw	$65535,70(%eax)
	jmp	Lj507
	.align 2
Lj506:
	movl	-24(%ebp),%edx
	movl	%esi,%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-44(%ebp)
	movl	%edx,-40(%ebp)
	movl	-44(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-40(%ebp),%eax
	movl	%eax,-28(%ebp)
	movw	-26(%ebp),%ax
	movw	%ax,-34(%ebp)
	movzwl	-34(%ebp),%eax
	testl	%eax,%eax
	je	Lj517
	jmp	Lj518
Lj517:
	movb	$1,-9(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-32(%ebp),%eax
	movl	%eax,64(%edx)
	movl	-28(%ebp),%eax
	movl	%eax,68(%edx)
	jmp	Lj523
Lj518:
	movw	-34(%ebp),%ax
	cmpw	$65535,%ax
	jne	Lj524
	jmp	Lj525
Lj524:
	movb	$1,-10(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movw	70(%eax),%ax
	cmpw	-34(%ebp),%ax
	jb	Lj528
	jmp	Lj529
Lj528:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-32(%ebp),%eax
	movl	%eax,64(%edx)
	movl	-28(%ebp),%eax
	movl	%eax,68(%edx)
Lj529:
Lj525:
Lj523:
	decl	-24(%ebp)
Lj507:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj506
	jmp	Lj508
Lj508:
	jmp	Lj532
Lj495:
	movl	32(%ebx),%eax
	decl	%eax
	movl	%eax,-16(%ebp)
	movl	28(%ebx),%eax
	decl	%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movw	$65535,70(%eax)
	jmp	Lj540
	.align 2
Lj539:
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	%ebx,%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-44(%ebp)
	movl	%edx,-40(%ebp)
	movl	-44(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-40(%ebp),%eax
	movl	%eax,-28(%ebp)
	movw	-26(%ebp),%ax
	movw	%ax,-34(%ebp)
	movzwl	-34(%ebp),%eax
	testl	%eax,%eax
	je	Lj552
	jmp	Lj553
Lj552:
	movb	$1,-9(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-32(%ebp),%eax
	movl	%eax,64(%edx)
	movl	-28(%ebp),%eax
	movl	%eax,68(%edx)
	jmp	Lj558
Lj553:
	movw	-34(%ebp),%ax
	cmpw	$65535,%ax
	jne	Lj559
	jmp	Lj560
Lj559:
	movb	$1,-10(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movw	70(%eax),%ax
	cmpw	-34(%ebp),%ax
	jb	Lj563
	jmp	Lj564
Lj563:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-32(%ebp),%eax
	movl	%eax,64(%edx)
	movl	-28(%ebp),%eax
	movl	%eax,68(%edx)
Lj564:
Lj560:
Lj558:
	decl	-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj567
	jmp	Lj568
Lj567:
	decl	-20(%ebp)
	movl	32(%ebx),%eax
	decl	%eax
	movl	%eax,-16(%ebp)
Lj568:
Lj540:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj571
	jmp	Lj541
Lj571:
	cmpb	$0,-10(%ebp)
	jne	Lj572
	jmp	Lj539
Lj572:
	cmpb	$0,-9(%ebp)
	jne	Lj541
	jmp	Lj539
Lj541:
Lj532:
	movl	$1,-8(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj575
	jmp	Lj576
Lj575:
	incl	-8(%ebp)
Lj576:
	cmpb	$0,-10(%ebp)
	jne	Lj577
	jmp	Lj578
Lj577:
	incl	-8(%ebp)
Lj578:
	movl	-8(%ebp),%eax
	movl	-52(%ebp),%ebx
	movl	-48(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__WRITEIHDR
_FPWRITEPNG_TFPWRITERPNG_$__WRITEIHDR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj580
Lj580:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	L_TC_PNGCOMN_SIGNATURE$non_lazy_ptr-Lj580(%ebx),%edx
	movl	$8,%ecx
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	leal	92(%eax),%eax
	movb	$0,%cl
	movl	$16,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	-4(%ebp),%eax
	leal	92(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-4(%ebp),%eax
	movl	$13,%edx
	call	L_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKLENGTH$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	44(%eax),%edx
	movl	-4(%ebp),%eax
	leal	92(%eax),%eax
	movl	$13,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKTYPE$TCHUNKTYPES$stub
	movl	-4(%ebp),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__WRITECHUNK$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYB$TFPCOLOR$$QWORD
_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYB$TFPCOLOR$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-26(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-22(%ebp)
	leal	-26(%ebp),%eax
	call	L_FPIMAGE_CALCULATEGRAY$TFPCOLOR$$WORD$stub
	movw	%ax,-18(%ebp)
	movzwl	-18(%ebp),%eax
	shrl	$8,%eax
	movzbl	%al,%eax
	movzbl	%al,%eax
	movl	$0,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYW$TFPCOLOR$$QWORD
_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYW$TFPCOLOR$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-20(%ebp)
	leal	-24(%ebp),%eax
	call	L_FPIMAGE_CALCULATEGRAY$TFPCOLOR$$WORD$stub
	movzwl	%ax,%eax
	movzwl	%ax,%eax
	movl	$0,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYAB$TFPCOLOR$$QWORD
_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYAB$TFPCOLOR$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-20(%ebp)
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYB$TFPCOLOR$$QWORD$stub
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	shldl	$8,%edx,%ecx
	shll	$8,%edx
	movzwl	-18(%ebp),%eax
	shrl	$8,%eax
	movzbl	%al,%eax
	movzbl	%al,%eax
	movl	$0,%ebx
	andl	%eax,%edx
	andl	%ebx,%ecx
	movl	%edx,-16(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYAW$TFPCOLOR$$QWORD
_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYAW$TFPCOLOR$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-20(%ebp)
	leal	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYW$TFPCOLOR$$QWORD$stub
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	shldl	$16,%eax,%edx
	shll	$16,%eax
	movzwl	-18(%ebp),%ecx
	movl	$0,%ebx
	andl	%ecx,%eax
	andl	%ebx,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORB$TFPCOLOR$$QWORD
_FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORB$TFPCOLOR$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-20(%ebp)
	movzwl	-24(%ebp),%eax
	shrl	$8,%eax
	movzbl	%al,%eax
	movw	-22(%ebp),%dx
	andw	$65280,%dx
	movzwl	%dx,%edx
	addl	%edx,%eax
	movzwl	-20(%ebp),%edx
	shrl	$8,%edx
	movzbl	%dl,%edx
	shll	$16,%edx
	addl	%edx,%eax
	movl	$0,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORW$TFPCOLOR$$QWORD
_FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORW$TFPCOLOR$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-20(%ebp)
	movzwl	-22(%ebp),%eax
	shll	$16,%eax
	movzwl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	$0,%ebx
	movzwl	-20(%ebp),%edx
	movl	$0,%ecx
	xorl	%ecx,%ecx
	addl	%ecx,%eax
	adcl	%edx,%ebx
	movl	%eax,-16(%ebp)
	movl	%ebx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORAB$TFPCOLOR$$QWORD
_FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORAB$TFPCOLOR$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-20(%ebp)
	movzwl	-24(%ebp),%eax
	shrl	$8,%eax
	movzbl	%al,%eax
	movw	-22(%ebp),%dx
	andw	$65280,%dx
	movzwl	%dx,%edx
	addl	%edx,%eax
	movzwl	-20(%ebp),%edx
	shrl	$8,%edx
	movzbl	%dl,%edx
	shll	$16,%edx
	addl	%edx,%eax
	movzwl	-18(%ebp),%edx
	shrl	$8,%edx
	movzbl	%dl,%edx
	shll	$24,%edx
	addl	%edx,%eax
	movl	$0,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORAW$TFPCOLOR$$QWORD
_FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORAW$TFPCOLOR$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-20(%ebp)
	movzwl	-22(%ebp),%eax
	shll	$16,%eax
	movzwl	-24(%ebp),%edx
	addl	%edx,%eax
	movl	$0,%ebx
	movzwl	-20(%ebp),%edx
	movl	$0,%ecx
	xorl	%ecx,%ecx
	addl	%ecx,%eax
	adcl	%edx,%ebx
	movzwl	-18(%ebp),%edx
	movl	$0,%ecx
	xorl	%ecx,%ecx
	shll	$16,%edx
	addl	%ecx,%eax
	adcl	%edx,%ebx
	movl	%eax,-16(%ebp)
	movl	%ebx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__GETCOLORPIXEL$LONGWORD$LONGWORD$$QWORD
_FPWRITEPNG_TFPWRITERPNG_$__GETCOLORPIXEL$LONGWORD$LONGWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	leal	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	60(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	56(%ecx),%ecx
	call	*%ecx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__GETPALETTEPIXEL$LONGWORD$LONGWORD$$QWORD
_FPWRITEPNG_TFPWRITERPNG_$__GETPALETTEPIXEL$LONGWORD$LONGWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETPIXEL$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__GETCOLPALPIXEL$LONGWORD$LONGWORD$$QWORD
_FPWRITEPNG_TFPWRITERPNG_$__GETCOLPALPIXEL$LONGWORD$LONGWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	leal	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	84(%eax),%eax
	movl	-12(%ebp),%ecx
	movl	84(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*128(%ecx)
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__DECIDEGETPIXEL$$TGETPIXELFUNC
_FPWRITEPNG_TFPWRITERPNG_$__DECIDEGETPIXEL$$TGETPIXELFUNC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj702
Lj702:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	101(%eax),%al
	cmpb	$3,%al
	jb	Lj704
	subb	$3,%al
	je	Lj705
	jmp	Lj704
Lj705:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj706
	jmp	Lj707
Lj706:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	L_FPWRITEPNG_TFPWRITERPNG_$__GETPALETTEPIXEL$LONGWORD$LONGWORD$$QWORD$non_lazy_ptr-Lj702(%ebx),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj712
Lj707:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	L_FPWRITEPNG_TFPWRITERPNG_$__GETCOLPALPIXEL$LONGWORD$LONGWORD$$QWORD$non_lazy_ptr-Lj702(%ebx),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj712:
	jmp	Lj703
Lj704:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	L_FPWRITEPNG_TFPWRITERPNG_$__GETCOLORPIXEL$LONGWORD$LONGWORD$$QWORD$non_lazy_ptr-Lj702(%ebx),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj703:
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__WRITEPLTE
_FPWRITEPNG_TFPWRITERPNG_$__WRITEPLTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	84(%eax),%ebx
	movl	%ebx,%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%edx
	imull	$3,%edx
	movl	-4(%ebp),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKLENGTH$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	$4,%edx
	call	L_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKTYPE$TCHUNKTYPES$stub
	movl	$0,-12(%ebp)
	movl	%ebx,%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%esi
	decl	%esi
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%esi
	jl	Lj734
	decl	-8(%ebp)
	.align 2
Lj735:
	incl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	%ebx,%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movzwl	-20(%ebp),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$255,%edx
	addl	%edx,%eax
	sarl	$8,%eax
	movl	-4(%ebp),%edx
	movl	44(%edx),%edx
	movl	-12(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	incl	-12(%ebp)
	movzwl	-18(%ebp),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$255,%edx
	addl	%edx,%eax
	sarl	$8,%eax
	movl	-4(%ebp),%edx
	movl	44(%edx),%edx
	movl	-12(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	incl	-12(%ebp)
	movzwl	-16(%ebp),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$255,%edx
	addl	%edx,%eax
	sarl	$8,%eax
	movl	-4(%ebp),%edx
	movl	44(%edx),%edx
	movl	-12(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	incl	-12(%ebp)
	cmpl	-8(%ebp),%esi
	jg	Lj735
Lj734:
	movl	-4(%ebp),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__WRITECHUNK$stub
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__INITWRITEIDAT
_FPWRITEPNG_TFPWRITERPNG_$__INITWRITEIDAT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj753
Lj753:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	-4(%ebp),%eax
	movzbl	26(%eax),%eax
	movl	32(%edx),%edx
	imull	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,116(%eax)
	movl	-4(%ebp),%eax
	movl	116(%eax),%edx
	movl	-4(%ebp),%eax
	leal	80(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	116(%eax),%edx
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	-4(%ebp),%edx
	movl	116(%edx),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr-Lj753(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-4(%ebp),%edx
	movl	%eax,120(%edx)
	movb	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	120(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	128(%eax),%ecx
	movl	L_VMT_ZSTREAM_TCOMPRESSIONSTREAM$non_lazy_ptr-Lj753(%ebx),%edx
	movl	$0,%eax
	call	L_ZSTREAM_TCOMPRESSIONSTREAM_$__CREATE$TCOMPRESSIONLEVEL$TSTREAM$BOOLEAN$$TCOMPRESSIONSTREAM$stub
	movl	-4(%ebp),%edx
	movl	%eax,124(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*140(%edx)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,108(%edx)
	movl	-8(%ebp),%eax
	movl	%eax,112(%edx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__FINALWRITEIDAT
_FPWRITEPNG_TFPWRITERPNG_$__FINALWRITEIDAT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	120(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__DETERMINEFILTER$PBYTEARRAY$PBYTEARRAY$LONGWORD$$BYTE
_FPWRITEPNG_TFPWRITERPNG_$__DETERMINEFILTER$PBYTEARRAY$PBYTEARRAY$LONGWORD$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__FILLSCANLINE$LONGINT$PBYTEARRAY
_FPWRITEPNG_TFPWRITERPNG_$__FILLSCANLINE$LONGINT$PBYTEARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%edi,-40(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-32(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj809
	decl	-20(%ebp)
	.align 2
Lj810:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	112(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%esi
	movl	108(%esi),%esi
	call	*%esi
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	movl	-12(%ebp),%eax
	movzbl	26(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	leal	(%edx,%eax,1),%edx
	leal	-28(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	cmpb	$0,22(%eax)
	jne	Lj825
	jmp	Lj826
Lj825:
	movl	$1,-16(%ebp)
	jmp	Lj830
	.align 2
Lj829:
	movl	-8(%ebp),%ecx
	movl	-32(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movb	(%ecx,%eax,1),%al
	movb	%al,-33(%ebp)
	movl	-8(%ebp),%esi
	movl	-32(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%ecx
	movl	-16(%ebp),%edi
	addl	%edi,%ecx
	movb	(%esi,%eax,1),%al
	movb	%al,(%edx,%ecx,1)
	movl	-8(%ebp),%ecx
	movl	-32(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	movb	-33(%ebp),%dl
	movb	%dl,(%ecx,%eax,1)
	addl	$2,-16(%ebp)
Lj830:
	movl	-12(%ebp),%eax
	movzbl	26(%eax),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj829
	jmp	Lj831
Lj831:
Lj826:
	movl	-12(%ebp),%eax
	movzbl	26(%eax),%eax
	addl	%eax,-32(%ebp)
	cmpl	-20(%ebp),%ebx
	jg	Lj810
Lj809:
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	movl	-40(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__GATHERDATA
_FPWRITEPNG_TFPWRITERPNG_$__GATHERDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%esi
	jl	Lj841
	decl	-12(%ebp)
	.align 2
Lj842:
	incl	-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	%eax,72(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,76(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	movl	%eax,80(%edx)
	movl	-4(%ebp),%eax
	movl	76(%eax),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*152(%ebx)
	movl	-4(%ebp),%eax
	movl	116(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	80(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	76(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
	movb	%al,-13(%ebp)
	movl	-4(%ebp),%eax
	movl	116(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj866
	decl	-8(%ebp)
	.align 2
Lj867:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	76(%eax),%eax
	movl	-8(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,(%esp)
	movl	-8(%ebp),%ecx
	movb	-13(%ebp),%dl
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edi
	movl	(%edi),%edi
	call	*136(%edi)
	movl	-4(%ebp),%edx
	movl	76(%edx),%edx
	movl	-8(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	cmpl	-8(%ebp),%ebx
	jg	Lj867
Lj866:
	movl	-4(%ebp),%eax
	movl	124(%eax),%eax
	leal	-13(%ebp),%edx
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	124(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-4(%ebp),%eax
	movl	76(%eax),%edx
	movl	-4(%ebp),%eax
	movl	116(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	124(%eax),%eax
	movl	-4(%ebp),%ebx
	movl	124(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	cmpl	-12(%ebp),%esi
	jg	Lj842
Lj841:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__WRITECOMPRESSEDDATA
_FPWRITEPNG_TFPWRITERPNG_$__WRITECOMPRESSEDDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	124(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-4(%ebp),%eax
	movl	120(%eax),%eax
	movl	-4(%ebp),%edx
	movl	120(%edx),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%eax,-8(%ebp)
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	120(%eax),%eax
	movl	-4(%ebp),%edx
	movl	120(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKLENGTH$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	$10,%edx
	call	L_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKTYPE$TCHUNKTYPES$stub
	movl	-4(%ebp),%eax
	movl	44(%eax),%edx
	movl	-4(%ebp),%eax
	movl	120(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%ebx
	movl	120(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-4(%ebp),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__WRITECHUNK$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__WRITEIDAT
_FPWRITEPNG_TFPWRITERPNG_$__WRITEIDAT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__INITWRITEIDAT$stub
	movl	-4(%ebp),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__GATHERDATA$stub
	movl	-4(%ebp),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__WRITECOMPRESSEDDATA$stub
	movl	-4(%ebp),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__FINALWRITEIDAT$stub
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__WRITETRNS
_FPWRITEPNG_TFPWRITERPNG_$__WRITETRNS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	Lj929
Lj929:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$7,%edx
	call	L_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKTYPE$TCHUNKTYPES$stub
	movl	-4(%ebp),%eax
	movb	101(%eax),%al
	testb	%al,%al
	je	Lj945
	subb	$2,%al
	je	Lj944
	decb	%al
	je	Lj943
	decb	%al
	je	Lj942
	subb	$2,%al
	je	Lj942
	jmp	Lj941
Lj942:
	movl	L_VMT_PNGCOMN_PNGIMAGEEXCEPTION$non_lazy_ptr-Lj929(%ebx),%edx
	movl	L_$FPWRITEPNG$_Ld5$non_lazy_ptr-Lj929(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj929(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj940
Lj943:
	movl	%ebp,%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$_WRITETRNS_PALETTEALPHA$stub
	jmp	Lj940
Lj944:
	movl	%ebp,%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$_WRITETRNS_COLORALPHA$stub
	jmp	Lj940
Lj945:
	movl	%ebp,%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$_WRITETRNS_GRAYALPHA$stub
	jmp	Lj940
Lj941:
Lj940:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$_WRITETRNS_COLORALPHA
_FPWRITEPNG_TFPWRITERPNG_$_WRITETRNS_COLORALPHA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	$6,%edx
	call	L_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKLENGTH$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	64(%eax),%edx
	movl	%edx,-12(%ebp)
	movl	68(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	cmpb	$0,22(%eax)
	jne	Lj964
	jmp	Lj965
Lj964:
	movw	-12(%ebp),%ax
	call	L_FPIMGCMN_SWAP$WORD$$WORD$stub
	movw	%ax,-12(%ebp)
	movw	-10(%ebp),%ax
	call	L_FPIMGCMN_SWAP$WORD$$WORD$stub
	movw	%ax,-10(%ebp)
	movw	-8(%ebp),%ax
	call	L_FPIMGCMN_SWAP$WORD$$WORD$stub
	movw	%ax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	44(%eax),%edx
	leal	-12(%ebp),%eax
	movl	$6,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	jmp	Lj984
Lj965:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	44(%eax),%eax
	movb	$0,(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	44(%eax),%edx
	movzwl	-12(%ebp),%eax
	shrl	$8,%eax
	movb	%al,1(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	44(%eax),%eax
	movb	$0,2(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	44(%eax),%edx
	movzwl	-10(%ebp),%eax
	shrl	$8,%eax
	movb	%al,3(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	44(%eax),%eax
	movb	$0,4(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	44(%eax),%edx
	movzwl	-8(%ebp),%eax
	shrl	$8,%eax
	movb	%al,5(%edx)
Lj984:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__WRITECHUNK$stub
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$_WRITETRNS_GRAYALPHA
_FPWRITEPNG_TFPWRITERPNG_$_WRITETRNS_GRAYALPHA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	$2,%edx
	call	L_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKLENGTH$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	cmpb	$0,22(%eax)
	jne	Lj1003
	jmp	Lj1004
Lj1003:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	leal	64(%eax),%eax
	call	L_FPIMAGE_CALCULATEGRAY$TFPCOLOR$$WORD$stub
	movw	%ax,-6(%ebp)
	jmp	Lj1009
Lj1004:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	leal	64(%eax),%eax
	call	L_FPIMAGE_CALCULATEGRAY$TFPCOLOR$$WORD$stub
	movzwl	%ax,%eax
	shrl	$8,%eax
	movzbw	%al,%ax
	movw	%ax,-6(%ebp)
Lj1009:
	movw	-6(%ebp),%ax
	call	L_FPIMGCMN_SWAP$WORD$$WORD$stub
	movw	%ax,-6(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	44(%eax),%edx
	leal	-6(%ebp),%eax
	movl	$2,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__WRITECHUNK$stub
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$_WRITETRNS_PALETTEALPHA
_FPWRITEPNG_TFPWRITERPNG_$_WRITETRNS_PALETTEALPHA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	16(%eax),%eax
	movl	24(%eax),%ebx
	movl	%ebx,%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOUNT$$LONGINT$stub
	movl	%eax,-8(%ebp)
	.align 2
Lj1032:
	decl	-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1034
	jmp	Lj1035
Lj1035:
	movl	-8(%ebp),%edx
	movl	%ebx,%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movw	-10(%ebp),%ax
	cmpw	$65535,%ax
	jne	Lj1034
	jmp	Lj1032
Lj1034:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj1040
	jmp	Lj1041
Lj1040:
	movl	-8(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKLENGTH$LONGWORD$stub
	.align 2
Lj1046:
	movl	-8(%ebp),%edx
	movl	%ebx,%eax
	call	L_FPIMAGE_TFPPALETTE_$__GETCOLOR$LONGINT$$TFPCOLOR$stub
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	movzwl	-18(%ebp),%eax
	shrl	$8,%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	44(%edx),%edx
	movl	-8(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	decl	-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1048
	jmp	Lj1046
Lj1048:
Lj1041:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__WRITECHUNK$stub
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__WRITETEXTS
_FPWRITEPNG_TFPWRITERPNG_$__WRITETEXTS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__WRITEIEND
_FPWRITEPNG_TFPWRITERPNG_$__WRITEIEND:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKLENGTH$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	$15,%edx
	call	L_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKTYPE$TCHUNKTYPES$stub
	movl	-4(%ebp),%eax
	call	L_FPWRITEPNG_TFPWRITERPNG_$__WRITECHUNK$stub
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNG_TFPWRITERPNG_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE
_FPWRITEPNG_TFPWRITERPNG_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	-12(%ebp),%eax
	movzbl	101(%eax),%eax
	cmpl	$3,%eax
	je	Lj1075
	jmp	Lj1076
Lj1075:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
Lj1076:
	movl	-12(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj1079
	jmp	Lj1080
Lj1079:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*120(%edx)
Lj1080:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*124(%edx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*132(%edx)
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPWRITEPNG
_INIT$_FPWRITEPNG:
.reference __FPWRITEPNG_init
.globl	__FPWRITEPNG_init
__FPWRITEPNG_init:
.reference _INIT$_FPWRITEPNG
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_FPWRITEPNG_TFPWRITERPNG$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPWRITEPNG$_Ld7$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	L_$FPWRITEPNG$_Ld9$non_lazy_ptr-Lj2(%ebx),%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPWRITEPNG$_Ld11
_$FPWRITEPNG$_Ld11:
	.byte	12
	.ascii	"TFPWriterPNG"

.const_data
	.align 2
.globl	_VMT_FPWRITEPNG_TFPWRITERPNG
_VMT_FPWRITEPNG_TFPWRITERPNG:
	.long	132,-132
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEWRITER
	.long	_$FPWRITEPNG$_Ld11
	.long	0,0
	.long	_$FPWRITEPNG$_Ld12
	.long	_RTTI_FPWRITEPNG_TFPWRITERPNG
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPWRITEPNG_TFPWRITERPNG_$__DESTROY
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
	.long	_FPWRITEPNG_TFPWRITERPNG_$__CREATE$$TFPWRITERPNG
	.long	_FPWRITEPNG_TFPWRITERPNG_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE
	.long	_FPWRITEPNG_TFPWRITERPNG_$__WRITEIHDR
	.long	_FPWRITEPNG_TFPWRITERPNG_$__WRITEPLTE
	.long	_FPWRITEPNG_TFPWRITERPNG_$__WRITETRNS
	.long	_FPWRITEPNG_TFPWRITERPNG_$__WRITEIDAT
	.long	_FPWRITEPNG_TFPWRITERPNG_$__WRITETEXTS
	.long	_FPWRITEPNG_TFPWRITERPNG_$__WRITEIEND
	.long	_FPWRITEPNG_TFPWRITERPNG_$__DOFILTER$BYTE$LONGWORD$BYTE$$BYTE
	.long	_FPWRITEPNG_TFPWRITERPNG_$__DECIDEGETPIXEL$$TGETPIXELFUNC
	.long	_FPWRITEPNG_TFPWRITERPNG_$__DETERMINEHEADER$THEADERCHUNK
	.long	_FPWRITEPNG_TFPWRITERPNG_$__DETERMINEFILTER$PBYTEARRAY$PBYTEARRAY$LONGWORD$$BYTE
	.long	_FPWRITEPNG_TFPWRITERPNG_$__FILLSCANLINE$LONGINT$PBYTEARRAY
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPWRITEPNG
_THREADVARLIST_FPWRITEPNG:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$FPWRITEPNG$_Ld2
_$FPWRITEPNG$_Ld2:
	.short	0,1
	.long	0,-1,33
.reference _$FPWRITEPNG$_Ld1
.globl	_$FPWRITEPNG$_Ld1
_$FPWRITEPNG$_Ld1:
.reference _$FPWRITEPNG$_Ld2
	.ascii	"Doesn't have a chunktype to write\000"

.const_data
	.align 2
.globl	_$FPWRITEPNG$_Ld4
_$FPWRITEPNG$_Ld4:
	.short	0,1
	.long	0,-1,45
.reference _$FPWRITEPNG$_Ld3
.globl	_$FPWRITEPNG$_Ld3
_$FPWRITEPNG$_Ld3:
.reference _$FPWRITEPNG$_Ld4
	.ascii	"Too many colors to use indexed PNG color type\000"

.const_data
	.align 2
.globl	_$FPWRITEPNG$_Ld6
_$FPWRITEPNG$_Ld6:
	.short	0,1
	.long	0,-1,44
.reference _$FPWRITEPNG$_Ld5
.globl	_$FPWRITEPNG$_Ld5
_$FPWRITEPNG$_Ld5:
.reference _$FPWRITEPNG$_Ld6
	.ascii	"tRNS chunk forbidden for full alpha channels\000"

.const_data
	.align 2
.globl	_$FPWRITEPNG$_Ld8
_$FPWRITEPNG$_Ld8:
	.short	0,1
	.long	0,-1,3
.reference _$FPWRITEPNG$_Ld7
.globl	_$FPWRITEPNG$_Ld7
_$FPWRITEPNG$_Ld7:
.reference _$FPWRITEPNG$_Ld8
	.ascii	"png\000"

.const_data
	.align 2
.globl	_$FPWRITEPNG$_Ld10
_$FPWRITEPNG$_Ld10:
	.short	0,1
	.long	0,-1,25
.reference _$FPWRITEPNG$_Ld9
.globl	_$FPWRITEPNG$_Ld9
_$FPWRITEPNG$_Ld9:
.reference _$FPWRITEPNG$_Ld10
	.ascii	"Portable Network Graphics\000"
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

L_SYSUTILS_FREEANDNIL$formal$stub:
.indirect_symbol _SYSUTILS_FREEANDNIL$formal
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

L_SYSTEM_TOBJECT_$__DESTROY$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMGCMN_SWAP$LONGWORD$$LONGWORD$stub:
.indirect_symbol _FPIMGCMN_SWAP$LONGWORD$$LONGWORD
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

Lfpc_chararray_to_ansistr$stub:
.indirect_symbol fpc_chararray_to_ansistr
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

L_FPIMGCMN_CALCULATECRC$LONGWORD$formal$LONGINT$$LONGWORD$stub:
.indirect_symbol _FPIMGCMN_CALCULATECRC$LONGWORD$formal$LONGINT$$LONGWORD
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

Lfpc_chararray_to_shortstr$stub:
.indirect_symbol fpc_chararray_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_compare_equal$stub:
.indirect_symbol fpc_shortstr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERSUB$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERSUB
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERUP$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERUP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERAVERAGE$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERAVERAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERPAETH$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$_DOFILTER$BYTE$LONGWORD$BYTE$$BYTE_FILTERPAETH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNG_TFPWRITERPNG_$__PREVSAMPLE$LONGWORD$$BYTE$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__PREVSAMPLE$LONGWORD$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNG_TFPWRITERPNG_$__PREVLINEPREVSAMPLE$LONGWORD$$BYTE$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__PREVLINEPREVSAMPLE$LONGWORD$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNG_TFPWRITERPNG_$__PREVIOUSLINE$LONGWORD$$BYTE$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__PREVIOUSLINE$LONGWORD$$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNG_TFPWRITERPNG_$_DETERMINEHEADER$THEADERCHUNK_COUNTALPHAS$$LONGINT$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$_DETERMINEHEADER$THEADERCHUNK_COUNTALPHAS$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETUSEPALETTE$$BOOLEAN
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

L_FPWRITEPNG_TFPWRITERPNG_$_DETERMINEHEADER$THEADERCHUNK_DETERMINECOLORFORMAT$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$_DETERMINEHEADER$THEADERCHUNK_DETERMINECOLORFORMAT
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

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR
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

L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKLENGTH$LONGWORD$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKLENGTH$LONGWORD
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

L_FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKTYPE$TCHUNKTYPES$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__SETCHUNKTYPE$TCHUNKTYPES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNG_TFPWRITERPNG_$__WRITECHUNK$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__WRITECHUNK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_CALCULATEGRAY$TFPCOLOR$$WORD$stub:
.indirect_symbol _FPIMAGE_CALCULATEGRAY$TFPCOLOR$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYB$TFPCOLOR$$QWORD$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYB$TFPCOLOR$$QWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYW$TFPCOLOR$$QWORD$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYW$TFPCOLOR$$QWORD
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

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
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

L_ZSTREAM_TCOMPRESSIONSTREAM_$__CREATE$TCOMPRESSIONLEVEL$TSTREAM$BOOLEAN$$TCOMPRESSIONSTREAM$stub:
.indirect_symbol _ZSTREAM_TCOMPRESSIONSTREAM_$__CREATE$TCOMPRESSIONLEVEL$TSTREAM$BOOLEAN$$TCOMPRESSIONSTREAM
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

L_FPWRITEPNG_TFPWRITERPNG_$__INITWRITEIDAT$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__INITWRITEIDAT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNG_TFPWRITERPNG_$__GATHERDATA$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__GATHERDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNG_TFPWRITERPNG_$__WRITECOMPRESSEDDATA$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__WRITECOMPRESSEDDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNG_TFPWRITERPNG_$__FINALWRITEIDAT$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__FINALWRITEIDAT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNG_TFPWRITERPNG_$_WRITETRNS_PALETTEALPHA$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$_WRITETRNS_PALETTEALPHA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNG_TFPWRITERPNG_$_WRITETRNS_COLORALPHA$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$_WRITETRNS_COLORALPHA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNG_TFPWRITERPNG_$_WRITETRNS_GRAYALPHA$stub:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$_WRITETRNS_GRAYALPHA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMGCMN_SWAP$WORD$$WORD$stub:
.indirect_symbol _FPIMGCMN_SWAP$WORD$$WORD
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
.globl	_INIT_FPWRITEPNG_TGETPIXELFUNC
_INIT_FPWRITEPNG_TGETPIXELFUNC:
	.byte	6,13
	.ascii	"TGetPixelFunc"
	.byte	1,2,0,1
	.ascii	"x"
	.ascii	"\010LongWord"
	.byte	0,1
	.ascii	"y"
	.ascii	"\010LongWord"
	.ascii	"\005QWord"
	.long	_RTTI_SYSTEM_QWORD
	.byte	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	_RTTI_SYSTEM_LONGWORD

.const_data
	.align 2
.globl	_RTTI_FPWRITEPNG_TGETPIXELFUNC
_RTTI_FPWRITEPNG_TGETPIXELFUNC:
	.byte	6,13
	.ascii	"TGetPixelFunc"
	.byte	1,2,0,1
	.ascii	"x"
	.ascii	"\010LongWord"
	.byte	0,1
	.ascii	"y"
	.ascii	"\010LongWord"
	.ascii	"\005QWord"
	.long	_RTTI_SYSTEM_QWORD
	.byte	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	_RTTI_SYSTEM_LONGWORD

.const_data
	.align 2
.globl	_INIT_FPWRITEPNG_TCOLORFORMATFUNCTION
_INIT_FPWRITEPNG_TCOLORFORMATFUNCTION:
	.byte	6,20
	.ascii	"TColorFormatFunction"
	.byte	1,1,0,5
	.ascii	"color"
	.ascii	"\010TFPColor"
	.ascii	"\005QWord"
	.long	_RTTI_SYSTEM_QWORD
	.byte	0
	.long	_RTTI_FPIMAGE_TFPCOLOR

.const_data
	.align 2
.globl	_RTTI_FPWRITEPNG_TCOLORFORMATFUNCTION
_RTTI_FPWRITEPNG_TCOLORFORMATFUNCTION:
	.byte	6,20
	.ascii	"TColorFormatFunction"
	.byte	1,1,0,5
	.ascii	"color"
	.ascii	"\010TFPColor"
	.ascii	"\005QWord"
	.long	_RTTI_SYSTEM_QWORD
	.byte	0
	.long	_RTTI_FPIMAGE_TFPCOLOR

.const_data
	.align 2
.globl	_$FPWRITEPNG$_Ld12
_$FPWRITEPNG$_Ld12:
	.short	0
	.long	_$FPWRITEPNG$_Ld13
	.align 2
.globl	_$FPWRITEPNG$_Ld13
_$FPWRITEPNG$_Ld13:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPWRITEPNG_TFPWRITERPNG
_INIT_FPWRITEPNG_TFPWRITERPNG:
	.byte	15,12
	.ascii	"TFPWriterPNG"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPWRITEPNG_TFPWRITERPNG
_RTTI_FPWRITEPNG_TFPWRITERPNG:
	.byte	15,12
	.ascii	"TFPWriterPNG"
	.long	_VMT_FPWRITEPNG_TFPWRITERPNG
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEWRITER
	.short	0
	.byte	10
	.ascii	"FPWritePNG"
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
L_TC_PNGCOMN_CHUNKTYPES$non_lazy_ptr:
.indirect_symbol _TC_PNGCOMN_CHUNKTYPES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_PNGCOMN_PNGIMAGEEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_PNGCOMN_PNGIMAGEEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNG$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNG$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_PNGCOMN_ALL1BITS$non_lazy_ptr:
.indirect_symbol _TC_PNGCOMN_ALL1BITS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_TFPPALETTE$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_TFPPALETTE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNG$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNG$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYW$TFPCOLOR$$QWORD$non_lazy_ptr:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYW$TFPCOLOR$$QWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYB$TFPCOLOR$$QWORD$non_lazy_ptr:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYB$TFPCOLOR$$QWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORW$TFPCOLOR$$QWORD$non_lazy_ptr:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORW$TFPCOLOR$$QWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORB$TFPCOLOR$$QWORD$non_lazy_ptr:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORB$TFPCOLOR$$QWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYAW$TFPCOLOR$$QWORD$non_lazy_ptr:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYAW$TFPCOLOR$$QWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYAB$TFPCOLOR$$QWORD$non_lazy_ptr:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__COLORDATAGRAYAB$TFPCOLOR$$QWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORAW$TFPCOLOR$$QWORD$non_lazy_ptr:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORAW$TFPCOLOR$$QWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORAB$TFPCOLOR$$QWORD$non_lazy_ptr:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__COLORDATACOLORAB$TFPCOLOR$$QWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_PNGCOMN_SIGNATURE$non_lazy_ptr:
.indirect_symbol _TC_PNGCOMN_SIGNATURE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPWRITEPNG_TFPWRITERPNG_$__GETPALETTEPIXEL$LONGWORD$LONGWORD$$QWORD$non_lazy_ptr:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__GETPALETTEPIXEL$LONGWORD$LONGWORD$$QWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPWRITEPNG_TFPWRITERPNG_$__GETCOLPALPIXEL$LONGWORD$LONGWORD$$QWORD$non_lazy_ptr:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__GETCOLPALPIXEL$LONGWORD$LONGWORD$$QWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_FPWRITEPNG_TFPWRITERPNG_$__GETCOLORPIXEL$LONGWORD$LONGWORD$$QWORD$non_lazy_ptr:
.indirect_symbol _FPWRITEPNG_TFPWRITERPNG_$__GETCOLORPIXEL$LONGWORD$LONGWORD$$QWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TMEMORYSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_ZSTREAM_TCOMPRESSIONSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_ZSTREAM_TCOMPRESSIONSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNG$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNG$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPWRITEPNG_TFPWRITERPNG$non_lazy_ptr:
.indirect_symbol _VMT_FPWRITEPNG_TFPWRITERPNG
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_IMAGEHANDLERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNG$_Ld7$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNG$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNG$_Ld9$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNG$_Ld9
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

