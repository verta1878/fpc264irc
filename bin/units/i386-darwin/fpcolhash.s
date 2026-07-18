# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPCOLHASH_FPCOLOR2PACKED$TFPCOLOR$$TFPPACKEDCOLOR
_FPCOLHASH_FPCOLOR2PACKED$TFPCOLOR$$TFPPACKEDCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
	movw	-16(%ebp),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movb	%al,-8(%ebp)
	movw	-14(%ebp),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movb	%al,-7(%ebp)
	movw	-12(%ebp),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movb	%al,-6(%ebp)
	movw	-10(%ebp),%ax
	andw	$65280,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	movb	%al,-5(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_PACKED2FPCOLOR$TFPPACKEDCOLOR$$TFPCOLOR
_FPCOLHASH_PACKED2FPCOLOR$TFPPACKEDCOLOR$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movzbl	8(%ebp),%eax
	shll	$8,%eax
	movzbl	8(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-8(%ebp)
	movzbl	9(%ebp),%eax
	shll	$8,%eax
	movzbl	9(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-6(%ebp)
	movzbl	10(%ebp),%eax
	shll	$8,%eax
	movzbl	10(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-4(%ebp)
	movzbl	11(%ebp),%eax
	shll	$8,%eax
	movzbl	11(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-2(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__CREATE$$TFPCOLORHASHTABLE
_FPCOLHASH_TFPCOLORHASHTABLE_$__CREATE$$TFPCOLORHASHTABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj25
	jmp	Lj26
Lj25:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj26:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj31
	jmp	Lj32
Lj31:
	jmp	Lj23
Lj32:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj35
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj39
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	movl	-8(%ebp),%eax
	movb	$1,8(%eax)
	movl	-8(%ebp),%eax
	movl	$0,4(%eax)
Lj39:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj40
	call	LFPC_RERAISE$stub
Lj40:
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
Lj35:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj37
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
	jmp	Lj37
Lj37:
Lj23:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__DESTROY
_FPCOLHASH_TFPCOLORHASHTABLE_$__DESTROY:
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
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__FREEALLDATA$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
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
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__CALCULATEINDEXES$TFPPACKEDCOLOR$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE
_FPCOLHASH_TFPCOLORHASHTABLE_$__CALCULATEINDEXES$TFPPACKEDCOLOR$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	31(%ebp),%al
	andb	$240,%al
	movzbl	%al,%eax
	shrl	$4,%eax
	movl	-4(%ebp),%edx
	movb	%al,(%edx)
	movb	31(%ebp),%dl
	andb	$15,%dl
	movl	-8(%ebp),%eax
	movb	%dl,(%eax)
	movb	28(%ebp),%dl
	andb	$15,%dl
	movl	24(%ebp),%eax
	movb	%dl,(%eax)
	movb	29(%ebp),%dl
	andb	$15,%dl
	movl	20(%ebp),%eax
	movb	%dl,(%eax)
	movb	30(%ebp),%dl
	andb	$15,%dl
	movl	16(%ebp),%eax
	movb	%dl,(%eax)
	movb	28(%ebp),%al
	andb	$240,%al
	movzbl	%al,%eax
	shll	$4,%eax
	movb	29(%ebp),%dl
	andb	$240,%dl
	movzbl	%dl,%edx
	orl	%edx,%eax
	movb	30(%ebp),%dl
	andb	$240,%dl
	movzbl	%dl,%edx
	shrl	$4,%edx
	orl	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	shrl	$8,%eax
	movl	12(%ebp),%edx
	movb	%al,(%edx)
	movl	-16(%ebp),%eax
	xorl	%edx,%edx
	movl	$256,%ecx
	divl	%ecx
	movl	8(%ebp),%eax
	movb	%dl,(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__CALCULATECOLOR$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$$TFPPACKEDCOLOR
_FPCOLHASH_TFPCOLORHASHTABLE_$__CALCULATECOLOR$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$$TFPPACKEDCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movb	%dl,-4(%ebp)
	movb	%cl,-8(%ebp)
	movzbl	12(%ebp),%eax
	shll	$8,%eax
	movzbl	8(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
	movzbl	-4(%ebp),%eax
	shll	$4,%eax
	movzbl	-8(%ebp),%edx
	orl	%edx,%eax
	movb	%al,-21(%ebp)
	movl	-20(%ebp),%eax
	andl	$3840,%eax
	shrl	$4,%eax
	movzbl	24(%ebp),%edx
	addl	%edx,%eax
	movb	%al,-24(%ebp)
	movl	-20(%ebp),%eax
	andl	$240,%eax
	movzbl	20(%ebp),%edx
	addl	%edx,%eax
	movb	%al,-23(%ebp)
	movl	-20(%ebp),%eax
	andl	$15,%eax
	shll	$4,%eax
	movzbl	16(%ebp),%edx
	addl	%edx,%eax
	movb	%al,-22(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__FREEALLDATA
_FPCOLHASH_TFPCOLORHASHTABLE_$__FREEALLDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__DEALLOCATEMAINNODE$PCOLHASHMAINNODE$BYTE$stub
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	movl	$0,12(%eax)
	movl	-4(%ebp),%eax
	movb	$1,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__ALLOCATEMAINNODE$$PCOLHASHMAINNODE
_FPCOLHASH_TFPCOLORHASHTABLE_$__ALLOCATEMAINNODE$$PCOLHASHMAINNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj125
Lj125:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$68,%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj132
	jmp	Lj133
Lj132:
	movl	L_VMT_FPCOLHASH_TFPCOLORHASHEXCEPTION$non_lazy_ptr-Lj125(%ebx),%edx
	movl	L_$FPCOLHASH$_Ld1$non_lazy_ptr-Lj125(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj125(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj133:
	movb	$0,-13(%ebp)
	decb	-13(%ebp)
	.align 2
Lj142:
	incb	-13(%ebp)
	movl	-12(%ebp),%edx
	movzbl	-13(%ebp),%eax
	movl	$0,(%edx,%eax,4)
	cmpb	$16,-13(%ebp)
	jb	Lj142
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__ALLOCATESUBNODE$$PCOLHASHSUBNODE
_FPCOLHASH_TFPCOLORHASHTABLE_$__ALLOCATESUBNODE$$PCOLHASHSUBNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj148
Lj148:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$9,%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj155
	jmp	Lj156
Lj155:
	movl	L_VMT_FPCOLHASH_TFPCOLORHASHEXCEPTION$non_lazy_ptr-Lj148(%ebx),%edx
	movl	L_$FPCOLHASH$_Ld1$non_lazy_ptr-Lj148(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj148(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj156:
	movl	-12(%ebp),%eax
	movb	$0,(%eax)
	movl	-12(%ebp),%eax
	movl	$0,1(%eax)
	movl	-12(%ebp),%eax
	movl	$0,5(%eax)
	movl	-4(%ebp),%eax
	incl	12(%eax)
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__DEALLOCATELINKEDLIST$PCOLHASHSUBNODE
_FPCOLHASH_TFPCOLORHASHTABLE_$__DEALLOCATELINKEDLIST$PCOLHASHSUBNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	jmp	Lj174
	.align 2
Lj173:
	movl	-4(%ebp),%eax
	movl	5(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	1(%eax),%eax
	testl	%eax,%eax
	jne	Lj178
	jmp	Lj179
Lj178:
	movl	-4(%ebp),%eax
	movl	1(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj179:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj174:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj173
	jmp	Lj175
Lj175:
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__DEALLOCATEMAINNODE$PCOLHASHMAINNODE$BYTE
_FPCOLHASH_TFPCOLORHASHTABLE_$__DEALLOCATEMAINNODE$PCOLHASHMAINNODE$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj188
	jmp	Lj189
Lj188:
	jmp	Lj186
Lj189:
	movzbl	-8(%ebp),%eax
	cmpl	$5,%eax
	je	Lj190
	jmp	Lj191
Lj190:
	movb	$0,-13(%ebp)
	decb	-13(%ebp)
	.align 2
Lj194:
	incb	-13(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-13(%ebp),%eax
	movl	(%edx,%eax,4),%edx
	movl	-12(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__DEALLOCATELINKEDLIST$PCOLHASHSUBNODE$stub
	cmpb	$16,-13(%ebp)
	jb	Lj194
	jmp	Lj199
Lj191:
	movb	$0,-13(%ebp)
	decb	-13(%ebp)
	.align 2
Lj202:
	incb	-13(%ebp)
	movzbl	-8(%ebp),%ecx
	incl	%ecx
	movl	-4(%ebp),%edx
	movzbl	-13(%ebp),%eax
	movl	(%edx,%eax,4),%edx
	movl	-12(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__DEALLOCATEMAINNODE$PCOLHASHMAINNODE$BYTE$stub
	cmpb	$16,-13(%ebp)
	jb	Lj202
Lj199:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
Lj186:
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCHSUBNODE$PCOLHASHSUBNODE$BYTE$$PCOLHASHSUBNODE
_FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCHSUBNODE$PCOLHASHSUBNODE$BYTE$$PCOLHASHSUBNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj218
	.align 2
Lj217:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	cmpb	-8(%ebp),%al
	je	Lj220
	jmp	Lj221
Lj220:
	jmp	Lj219
	jmp	Lj222
Lj221:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	cmpb	-8(%ebp),%al
	ja	Lj223
	jmp	Lj224
Lj223:
	jmp	Lj211
Lj224:
Lj222:
	movl	-20(%ebp),%eax
	movl	5(%eax),%eax
	movl	%eax,-20(%ebp)
Lj218:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj217
	jmp	Lj219
Lj219:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj211:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCHSUBNODEALLOCATE$PCOLHASHSUBNODE$BYTE$$PCOLHASHSUBNODE
_FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCHSUBNODEALLOCATE$PCOLHASHSUBNODE$BYTE$$PCOLHASHSUBNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj238
	.align 2
Lj237:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	-8(%ebp),%al
	je	Lj240
	jmp	Lj241
Lj240:
	jmp	Lj239
	jmp	Lj242
Lj241:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	-8(%ebp),%al
	ja	Lj243
	jmp	Lj244
Lj243:
	movl	-12(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__ALLOCATESUBNODE$$PCOLHASHSUBNODE$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,(%eax)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,5(%eax)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj253
	jmp	Lj254
Lj253:
	movl	-28(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,5(%eax)
	jmp	Lj257
Lj254:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
Lj257:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj239
Lj244:
Lj242:
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	movl	5(%eax),%eax
	movl	%eax,-24(%ebp)
Lj238:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj237
	jmp	Lj239
Lj239:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj266
	jmp	Lj267
Lj266:
	movl	-12(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__ALLOCATESUBNODE$$PCOLHASHSUBNODE$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,(%eax)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,5(%eax)
Lj267:
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCH$TFPPACKEDCOLOR$$PCOLHASHSUBNODE
_FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCH$TFPPACKEDCOLOR$$PCOLHASHSUBNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-15(%ebp),%eax
	movl	%eax,(%esp)
	leal	-14(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-13(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-12(%ebp),%eax
	movl	%eax,12(%esp)
	leal	-11(%ebp),%eax
	movl	%eax,16(%esp)
	movl	8(%ebp),%eax
	movl	%eax,20(%esp)
	leal	-10(%ebp),%ecx
	leal	-9(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__CALCULATEINDEXES$TFPPACKEDCOLOR$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj300
	jmp	Lj301
Lj300:
	jmp	Lj278
Lj301:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movzbl	-9(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj302
	jmp	Lj303
Lj302:
	jmp	Lj278
Lj303:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movzbl	-9(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movzbl	-10(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj306
	jmp	Lj307
Lj306:
	jmp	Lj278
Lj307:
	movl	-20(%ebp),%eax
	movzbl	-10(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movzbl	-11(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj310
	jmp	Lj311
Lj310:
	jmp	Lj278
Lj311:
	movl	-20(%ebp),%eax
	movzbl	-11(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movzbl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj314
	jmp	Lj315
Lj314:
	jmp	Lj278
Lj315:
	movl	-20(%ebp),%eax
	movzbl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movzbl	-13(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj318
	jmp	Lj319
Lj318:
	jmp	Lj278
Lj319:
	movl	-20(%ebp),%eax
	movzbl	-13(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movzbl	-14(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj322
	jmp	Lj323
Lj322:
	jmp	Lj278
Lj323:
	movl	-20(%ebp),%eax
	movzbl	-14(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movb	-15(%ebp),%cl
	movl	-4(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCHSUBNODE$PCOLHASHSUBNODE$BYTE$$PCOLHASHSUBNODE$stub
	movl	%eax,-8(%ebp)
Lj278:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCHALLOCATE$TFPPACKEDCOLOR$$PCOLHASHSUBNODE
_FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCHALLOCATE$TFPPACKEDCOLOR$$PCOLHASHSUBNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-15(%ebp),%eax
	movl	%eax,(%esp)
	leal	-14(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-13(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-12(%ebp),%eax
	movl	%eax,12(%esp)
	leal	-11(%ebp),%eax
	movl	%eax,16(%esp)
	movl	8(%ebp),%eax
	movl	%eax,20(%esp)
	leal	-10(%ebp),%ecx
	leal	-9(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__CALCULATEINDEXES$TFPPACKEDCOLOR$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj354
	jmp	Lj355
Lj354:
	movl	-4(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__ALLOCATEMAINNODE$$PCOLHASHMAINNODE$stub
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
Lj355:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movzbl	-9(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj360
	jmp	Lj361
Lj360:
	movl	-4(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__ALLOCATEMAINNODE$$PCOLHASHMAINNODE$stub
	movl	-4(%ebp),%edx
	movl	4(%edx),%ecx
	movzbl	-9(%ebp),%edx
	movl	%eax,(%ecx,%edx,4)
Lj361:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movzbl	-9(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movzbl	-10(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj368
	jmp	Lj369
Lj368:
	movl	-4(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__ALLOCATEMAINNODE$$PCOLHASHMAINNODE$stub
	movl	-20(%ebp),%edx
	movzbl	-10(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
Lj369:
	movl	-20(%ebp),%eax
	movzbl	-10(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movzbl	-11(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj376
	jmp	Lj377
Lj376:
	movl	-4(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__ALLOCATEMAINNODE$$PCOLHASHMAINNODE$stub
	movl	-20(%ebp),%ecx
	movzbl	-11(%ebp),%edx
	movl	%eax,(%ecx,%edx,4)
Lj377:
	movl	-20(%ebp),%eax
	movzbl	-11(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movzbl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj384
	jmp	Lj385
Lj384:
	movl	-4(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__ALLOCATEMAINNODE$$PCOLHASHMAINNODE$stub
	movl	-20(%ebp),%edx
	movzbl	-12(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
Lj385:
	movl	-20(%ebp),%eax
	movzbl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movzbl	-13(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj392
	jmp	Lj393
Lj392:
	movl	-4(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__ALLOCATEMAINNODE$$PCOLHASHMAINNODE$stub
	movl	-20(%ebp),%edx
	movzbl	-13(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
Lj393:
	movl	-20(%ebp),%eax
	movzbl	-13(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movzbl	-14(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj400
	jmp	Lj401
Lj400:
	movl	-4(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__ALLOCATESUBNODE$$PCOLHASHSUBNODE$stub
	movl	-20(%ebp),%edx
	movzbl	-14(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
	movl	-20(%ebp),%eax
	movzbl	-14(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movb	-15(%ebp),%dl
	movb	%dl,(%eax)
	jmp	Lj332
Lj401:
	movl	-20(%ebp),%edx
	movzbl	-14(%ebp),%eax
	leal	(%edx,%eax,4),%edx
	movb	-15(%ebp),%cl
	movl	-4(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCHSUBNODEALLOCATE$PCOLHASHSUBNODE$BYTE$$PCOLHASHSUBNODE$stub
	movl	%eax,-8(%ebp)
Lj332:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__INSERT$TFPCOLOR$LONGINT
_FPCOLHASH_TFPCOLORHASHTABLE_$__INSERT$TFPCOLOR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCOLHASH_FPCOLOR2PACKED$TFPCOLOR$$TFPPACKEDCOLOR$stub
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCHALLOCATE$TFPPACKEDCOLOR$$PCOLHASHSUBNODE$stub
	movl	%eax,-16(%ebp)
	movl	$4,%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	-16(%ebp),%edx
	movl	%eax,1(%edx)
	movl	-16(%ebp),%eax
	movl	1(%eax),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__INSERT$TFPCOLOR$POINTER
_FPCOLHASH_TFPCOLORHASHTABLE_$__INSERT$TFPCOLOR$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCOLHASH_FPCOLOR2PACKED$TFPCOLOR$$TFPPACKEDCOLOR$stub
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCHALLOCATE$TFPPACKEDCOLOR$$PCOLHASHSUBNODE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,1(%edx)
	movl	-12(%ebp),%eax
	movb	$0,8(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__ADD$TFPCOLOR$LONGINT
_FPCOLHASH_TFPCOLORHASHTABLE_$__ADD$TFPCOLOR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCOLHASH_FPCOLOR2PACKED$TFPCOLOR$$TFPPACKEDCOLOR$stub
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCHALLOCATE$TFPPACKEDCOLOR$$PCOLHASHSUBNODE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	1(%eax),%eax
	testl	%eax,%eax
	je	Lj458
	jmp	Lj459
Lj458:
	movl	$4,%eax
	call	L_SYSTEM_GETMEM$LONGWORD$$POINTER$stub
	movl	-16(%ebp),%edx
	movl	%eax,1(%edx)
	movl	-16(%ebp),%eax
	movl	1(%eax),%eax
	movl	$0,(%eax)
Lj459:
	movl	-16(%ebp),%eax
	movl	1(%eax),%eax
	movl	-8(%ebp),%edx
	addl	%edx,(%eax)
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__GET$TFPCOLOR$$POINTER
_FPCOLHASH_TFPCOLORHASHTABLE_$__GET$TFPCOLOR$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCOLHASH_FPCOLOR2PACKED$TFPCOLOR$$TFPPACKEDCOLOR$stub
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCH$TFPPACKEDCOLOR$$PCOLHASHSUBNODE$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj476
	jmp	Lj477
Lj476:
	movl	-16(%ebp),%eax
	movl	1(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj480
Lj477:
	movl	$0,-12(%ebp)
Lj480:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__CLEAR
_FPCOLHASH_TFPCOLORHASHTABLE_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__FREEALLDATA$stub
	leave
	ret

.text
	.align 4
.globl	_FPCOLHASH_TFPCOLORHASHTABLE_$__GETARRAY$$TFPCOLORWEIGHTARRAY
_FPCOLHASH_TFPCOLORHASHTABLE_$__GETARRAY$$TFPCOLORWEIGHTARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj488
Lj488:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj489
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	testb	%al,%al
	je	Lj492
	jmp	Lj493
Lj492:
	movl	L_VMT_FPCOLHASH_TFPCOLORHASHEXCEPTION$non_lazy_ptr-Lj488(%esi),%edx
	movl	L_$FPCOLHASH$_Ld3$non_lazy_ptr-Lj488(%esi),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj488(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj493:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-92(%ebp)
	leal	-92(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_FPCOLHASH_TFPCOLORWEIGHTARRAY$non_lazy_ptr-Lj488(%esi),%edx
	leal	-8(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj510
	jmp	Lj511
Lj510:
	jmp	Lj489
Lj511:
	movl	$0,-24(%ebp)
	movb	$0,-9(%ebp)
	decb	-9(%ebp)
	.align 2
Lj516:
	incb	-9(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movzbl	-9(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj517
	jmp	Lj518
Lj517:
	jmp	Lj514
Lj518:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movzbl	-9(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-32(%ebp)
	movb	$0,-10(%ebp)
	decb	-10(%ebp)
	.align 2
Lj523:
	incb	-10(%ebp)
	movl	-32(%ebp),%edx
	movzbl	-10(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj524
	jmp	Lj525
Lj524:
	jmp	Lj521
Lj525:
	movl	-32(%ebp),%edx
	movzbl	-10(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-36(%ebp)
	movb	$0,-11(%ebp)
	decb	-11(%ebp)
	.align 2
Lj530:
	incb	-11(%ebp)
	movl	-36(%ebp),%eax
	movzbl	-11(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj531
	jmp	Lj532
Lj531:
	jmp	Lj528
Lj532:
	movl	-36(%ebp),%eax
	movzbl	-11(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-40(%ebp)
	movb	$0,-12(%ebp)
	decb	-12(%ebp)
	.align 2
Lj537:
	incb	-12(%ebp)
	movl	-40(%ebp),%edx
	movzbl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj538
	jmp	Lj539
Lj538:
	jmp	Lj535
Lj539:
	movl	-40(%ebp),%edx
	movzbl	-12(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-44(%ebp)
	movb	$0,-13(%ebp)
	decb	-13(%ebp)
	.align 2
Lj544:
	incb	-13(%ebp)
	movl	-44(%ebp),%eax
	movzbl	-13(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj545
	jmp	Lj546
Lj545:
	jmp	Lj542
Lj546:
	movl	-44(%ebp),%eax
	movzbl	-13(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-48(%ebp)
	movb	$0,-14(%ebp)
	decb	-14(%ebp)
	.align 2
Lj551:
	incb	-14(%ebp)
	movl	-48(%ebp),%eax
	movzbl	-14(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj555
	.align 2
Lj554:
	leal	-28(%ebp),%eax
	movl	$8,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj561
	jmp	Lj562
Lj561:
	movl	L_VMT_FPCOLHASH_TFPCOLORHASHEXCEPTION$non_lazy_ptr-Lj488(%esi),%edx
	movl	L_$FPCOLHASH$_Ld1$non_lazy_ptr-Lj488(%esi),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj488(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj562:
	movb	-14(%ebp),%al
	movb	%al,4(%esp)
	movb	-13(%ebp),%al
	movb	%al,8(%esp)
	movb	-12(%ebp),%al
	movb	%al,12(%esp)
	movb	-11(%ebp),%al
	movb	%al,16(%esp)
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%esp)
	movb	-10(%ebp),%cl
	movb	-9(%ebp),%al
	movl	-4(%ebp),%ebx
	movb	%al,%dl
	movl	%ebx,%eax
	call	L_FPCOLHASH_TFPCOLORHASHTABLE_$__CALCULATECOLOR$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$$TFPPACKEDCOLOR$stub
	movl	-28(%ebp),%edx
	movl	%eax,(%edx)
	movl	-20(%ebp),%eax
	movl	1(%eax),%eax
	movl	-28(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	-28(%ebp),%eax
	movl	%eax,(%edx,%ecx,4)
	incl	-24(%ebp)
	movl	-20(%ebp),%eax
	movl	5(%eax),%eax
	movl	%eax,-20(%ebp)
Lj555:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj554
	jmp	Lj556
Lj556:
	cmpb	$15,-14(%ebp)
	jb	Lj551
Lj542:
	cmpb	$15,-13(%ebp)
	jb	Lj544
Lj535:
	cmpb	$15,-12(%ebp)
	jb	Lj537
Lj528:
	cmpb	$15,-11(%ebp)
	jb	Lj530
Lj521:
	cmpb	$15,-10(%ebp)
	jb	Lj523
Lj514:
	cmpb	$15,-9(%ebp)
	jb	Lj516
Lj489:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj490
	movl	L_INIT_FPCOLHASH_TFPCOLORWEIGHTARRAY$non_lazy_ptr-Lj488(%esi),%edx
	leal	-8(%ebp),%eax
	call	Lfpc_finalize$stub
	call	LFPC_RERAISE$stub
Lj490:
	movl	-8(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPCOLHASH$_Ld5
_$FPCOLHASH$_Ld5:
	.byte	21
	.ascii	"TFPColorHashException"

.const_data
	.align 2
.globl	_VMT_FPCOLHASH_TFPCOLORHASHEXCEPTION
_VMT_FPCOLHASH_TFPCOLORHASHEXCEPTION:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$FPCOLHASH$_Ld5
	.long	0,0
	.long	_$FPCOLHASH$_Ld6
	.long	_RTTI_FPCOLHASH_TFPCOLORHASHEXCEPTION
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
.globl	_$FPCOLHASH$_Ld8
_$FPCOLHASH$_Ld8:
	.byte	17
	.ascii	"TFPColorHashTable"

.const_data
	.align 2
.globl	_VMT_FPCOLHASH_TFPCOLORHASHTABLE
_VMT_FPCOLHASH_TFPCOLORHASHTABLE:
	.long	16,-16
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPCOLHASH$_Ld8
	.long	0,0
	.long	_$FPCOLHASH$_Ld9
	.long	_RTTI_FPCOLHASH_TFPCOLORHASHTABLE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPCOLHASH_TFPCOLORHASHTABLE_$__DESTROY
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
.globl	_THREADVARLIST_FPCOLHASH
_THREADVARLIST_FPCOLHASH:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$FPCOLHASH$_Ld2
_$FPCOLHASH$_Ld2:
	.short	0,1
	.long	0,-1,13
.reference _$FPCOLHASH$_Ld1
.globl	_$FPCOLHASH$_Ld1
_$FPCOLHASH$_Ld1:
.reference _$FPCOLHASH$_Ld2
	.ascii	"Out of memory\000"

.const_data
	.align 2
.globl	_$FPCOLHASH$_Ld4
_$FPCOLHASH$_Ld4:
	.short	0,1
	.long	0,-1,39
.reference _$FPCOLHASH$_Ld3
.globl	_$FPCOLHASH$_Ld3
_$FPCOLHASH$_Ld3:
.reference _$FPCOLHASH$_Ld4
	.ascii	"Hashtable data is not made by integers.\000"
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

L_FPCOLHASH_TFPCOLORHASHTABLE_$__FREEALLDATA$stub:
.indirect_symbol _FPCOLHASH_TFPCOLORHASHTABLE_$__FREEALLDATA
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

L_FPCOLHASH_TFPCOLORHASHTABLE_$__DEALLOCATEMAINNODE$PCOLHASHMAINNODE$BYTE$stub:
.indirect_symbol _FPCOLHASH_TFPCOLORHASHTABLE_$__DEALLOCATEMAINNODE$PCOLHASHMAINNODE$BYTE
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

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCOLHASH_TFPCOLORHASHTABLE_$__DEALLOCATELINKEDLIST$PCOLHASHSUBNODE$stub:
.indirect_symbol _FPCOLHASH_TFPCOLORHASHTABLE_$__DEALLOCATELINKEDLIST$PCOLHASHSUBNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCOLHASH_TFPCOLORHASHTABLE_$__ALLOCATESUBNODE$$PCOLHASHSUBNODE$stub:
.indirect_symbol _FPCOLHASH_TFPCOLORHASHTABLE_$__ALLOCATESUBNODE$$PCOLHASHSUBNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCOLHASH_TFPCOLORHASHTABLE_$__CALCULATEINDEXES$TFPPACKEDCOLOR$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$stub:
.indirect_symbol _FPCOLHASH_TFPCOLORHASHTABLE_$__CALCULATEINDEXES$TFPPACKEDCOLOR$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCHSUBNODE$PCOLHASHSUBNODE$BYTE$$PCOLHASHSUBNODE$stub:
.indirect_symbol _FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCHSUBNODE$PCOLHASHSUBNODE$BYTE$$PCOLHASHSUBNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCOLHASH_TFPCOLORHASHTABLE_$__ALLOCATEMAINNODE$$PCOLHASHMAINNODE$stub:
.indirect_symbol _FPCOLHASH_TFPCOLORHASHTABLE_$__ALLOCATEMAINNODE$$PCOLHASHMAINNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCHSUBNODEALLOCATE$PCOLHASHSUBNODE$BYTE$$PCOLHASHSUBNODE$stub:
.indirect_symbol _FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCHSUBNODEALLOCATE$PCOLHASHSUBNODE$BYTE$$PCOLHASHSUBNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCOLHASH_FPCOLOR2PACKED$TFPCOLOR$$TFPPACKEDCOLOR$stub:
.indirect_symbol _FPCOLHASH_FPCOLOR2PACKED$TFPCOLOR$$TFPPACKEDCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCHALLOCATE$TFPPACKEDCOLOR$$PCOLHASHSUBNODE$stub:
.indirect_symbol _FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCHALLOCATE$TFPPACKEDCOLOR$$PCOLHASHSUBNODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCH$TFPPACKEDCOLOR$$PCOLHASHSUBNODE$stub:
.indirect_symbol _FPCOLHASH_TFPCOLORHASHTABLE_$__SEARCH$TFPPACKEDCOLOR$$PCOLHASHSUBNODE
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

L_SYSTEM_GETMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_GETMEM$POINTER$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPCOLHASH_TFPCOLORHASHTABLE_$__CALCULATECOLOR$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$$TFPPACKEDCOLOR$stub:
.indirect_symbol _FPCOLHASH_TFPCOLORHASHTABLE_$__CALCULATECOLOR$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$BYTE$$TFPPACKEDCOLOR
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
.globl	_$FPCOLHASH$_Ld6
_$FPCOLHASH$_Ld6:
	.short	0
	.long	_$FPCOLHASH$_Ld7
	.align 2
.globl	_$FPCOLHASH$_Ld7
_$FPCOLHASH$_Ld7:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCOLHASH_TFPCOLORHASHEXCEPTION
_INIT_FPCOLHASH_TFPCOLORHASHEXCEPTION:
	.byte	15,21
	.ascii	"TFPColorHashException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCOLHASH_TFPCOLORHASHEXCEPTION
_RTTI_FPCOLHASH_TFPCOLORHASHEXCEPTION:
	.byte	15,21
	.ascii	"TFPColorHashException"
	.long	_VMT_FPCOLHASH_TFPCOLORHASHEXCEPTION
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	9
	.ascii	"FPColHash"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCOLHASH_PCOLHASHSUBNODE
_INIT_FPCOLHASH_PCOLHASHSUBNODE:
	.byte	0
	.ascii	"\017PColHashSubNode"

.const_data
	.align 2
.globl	_RTTI_FPCOLHASH_PCOLHASHSUBNODE
_RTTI_FPCOLHASH_PCOLHASHSUBNODE:
	.byte	0
	.ascii	"\017PColHashSubNode"

.const_data
	.align 2
.globl	_INIT_FPCOLHASH_TCOLHASHSUBNODE
_INIT_FPCOLHASH_TCOLHASHSUBNODE:
	.byte	13,15
	.ascii	"TColHashSubNode"
	.long	9,0

.const_data
	.align 2
.globl	_RTTI_FPCOLHASH_TCOLHASHSUBNODE
_RTTI_FPCOLHASH_TCOLHASHSUBNODE:
	.byte	13,15
	.ascii	"TColHashSubNode"
	.long	9,3
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	1
	.long	_RTTI_FPCOLHASH_PCOLHASHSUBNODE
	.long	5

.const_data
	.align 2
.globl	_INIT_FPCOLHASH_PCOLHASHMAINNODE
_INIT_FPCOLHASH_PCOLHASHMAINNODE:
	.byte	0
	.ascii	"\020PColHashMainNode"

.const_data
	.align 2
.globl	_RTTI_FPCOLHASH_PCOLHASHMAINNODE
_RTTI_FPCOLHASH_PCOLHASHMAINNODE:
	.byte	0
	.ascii	"\020PColHashMainNode"

.const_data
	.align 2
.globl	_INIT_FPCOLHASH_TCOLHASHMAINNODE
_INIT_FPCOLHASH_TCOLHASHMAINNODE:
	.byte	13,16
	.ascii	"TColHashMainNode"
	.long	68,0

.const_data
	.align 2
.globl	_RTTI_FPCOLHASH_DEF5
_RTTI_FPCOLHASH_DEF5:
	.byte	12
	.ascii	"\000"
	.long	4,17
	.long	_RTTI_SYSTEM_POINTER
	.long	-1

.const_data
	.align 2
.globl	_RTTI_FPCOLHASH_TCOLHASHMAINNODE
_RTTI_FPCOLHASH_TCOLHASHMAINNODE:
	.byte	13,16
	.ascii	"TColHashMainNode"
	.long	68,1
	.long	_RTTI_FPCOLHASH_DEF5
	.long	0

.const_data
	.align 2
.globl	_INIT_FPCOLHASH_TFPPACKEDCOLOR
_INIT_FPCOLHASH_TFPPACKEDCOLOR:
	.byte	13,14
	.ascii	"TFPPackedColor"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCOLHASH_TFPPACKEDCOLOR
_RTTI_FPCOLHASH_TFPPACKEDCOLOR:
	.byte	13,14
	.ascii	"TFPPackedColor"
	.long	4,4
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_BYTE
	.long	2
	.long	_RTTI_SYSTEM_BYTE
	.long	3

.const_data
	.align 2
.globl	_INIT_FPCOLHASH_TFPCOLORWEIGHT
_INIT_FPCOLHASH_TFPCOLORWEIGHT:
	.byte	13,14
	.ascii	"TFPColorWeight"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_FPCOLHASH_TFPCOLORWEIGHT
_RTTI_FPCOLHASH_TFPCOLORWEIGHT:
	.byte	13,14
	.ascii	"TFPColorWeight"
	.long	8,2
	.long	_RTTI_FPCOLHASH_TFPPACKEDCOLOR
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4

.const_data
	.align 2
.globl	_INIT_FPCOLHASH_PFPCOLORWEIGHT
_INIT_FPCOLHASH_PFPCOLORWEIGHT:
	.byte	0
	.ascii	"\016PFPColorWeight"

.const_data
	.align 2
.globl	_RTTI_FPCOLHASH_PFPCOLORWEIGHT
_RTTI_FPCOLHASH_PFPCOLORWEIGHT:
	.byte	0
	.ascii	"\016PFPColorWeight"

.const_data
	.align 2
.globl	_INIT_FPCOLHASH_TFPCOLORWEIGHTARRAY
_INIT_FPCOLHASH_TFPCOLORWEIGHTARRAY:
	.byte	21
	.ascii	"\023TFPColorWeightArray"
	.long	4
	.long	_INIT_FPCOLHASH_PFPCOLORWEIGHT
	.long	-1,0
	.byte	9
	.ascii	"FPColHash"

.const_data
	.align 2
.globl	_RTTI_FPCOLHASH_TFPCOLORWEIGHTARRAY
_RTTI_FPCOLHASH_TFPCOLORWEIGHTARRAY:
	.byte	21
	.ascii	"\023TFPColorWeightArray"
	.long	4
	.long	_RTTI_FPCOLHASH_PFPCOLORWEIGHT
	.long	-1,0
	.byte	9
	.ascii	"FPColHash"

.const_data
	.align 2
.globl	_$FPCOLHASH$_Ld9
_$FPCOLHASH$_Ld9:
	.short	0
	.long	_$FPCOLHASH$_Ld10
	.align 2
.globl	_$FPCOLHASH$_Ld10
_$FPCOLHASH$_Ld10:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPCOLHASH_TFPCOLORHASHTABLE
_INIT_FPCOLHASH_TFPCOLORHASHTABLE:
	.byte	15,17
	.ascii	"TFPColorHashTable"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPCOLHASH_TFPCOLORHASHTABLE
_RTTI_FPCOLHASH_TFPCOLORHASHTABLE:
	.byte	15,17
	.ascii	"TFPColorHashTable"
	.long	_VMT_FPCOLHASH_TFPCOLORHASHTABLE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	9
	.ascii	"FPColHash"
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
L_VMT_FPCOLHASH_TFPCOLORHASHEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_FPCOLHASH_TFPCOLORHASHEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCOLHASH$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPCOLHASH$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPCOLHASH$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPCOLHASH$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_FPCOLHASH_TFPCOLORWEIGHTARRAY$non_lazy_ptr:
.indirect_symbol _INIT_FPCOLHASH_TFPCOLORWEIGHTARRAY
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

