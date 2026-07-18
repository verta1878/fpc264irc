# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JDPHUFF_START_PASS_PHUFF_DECODER$J_DECOMPRESS_PTR
_JDPHUFF_START_PASS_PHUFF_DECODER$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-52(%ebp)
	movl	%esi,-48(%ebp)
	movl	%edi,-44(%ebp)
	call	Lj4
Lj4:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	392(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	$0,-10(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj11
	jmp	Lj12
Lj11:
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	testl	%eax,%eax
	jne	Lj13
	jmp	Lj14
Lj13:
	movb	$1,-10(%ebp)
Lj14:
	jmp	Lj17
Lj12:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	348(%eax),%eax
	cmpl	352(%edx),%eax
	jg	Lj18
	jmp	Lj20
Lj20:
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	cmpl	$64,%eax
	jge	Lj18
	jmp	Lj19
Lj18:
	movb	$1,-10(%ebp)
Lj19:
	movl	-4(%ebp),%eax
	movl	276(%eax),%eax
	cmpl	$1,%eax
	jne	Lj23
	jmp	Lj24
Lj23:
	movb	$1,-10(%ebp)
Lj24:
Lj17:
	movl	-4(%ebp),%eax
	movl	356(%eax),%eax
	testl	%eax,%eax
	jne	Lj27
	jmp	Lj28
Lj27:
	movl	-4(%ebp),%eax
	movl	356(%eax),%eax
	decl	%eax
	movl	-4(%ebp),%edx
	cmpl	360(%edx),%eax
	jne	Lj29
	jmp	Lj30
Lj29:
	movb	$1,-10(%ebp)
Lj30:
Lj28:
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	cmpl	$13,%eax
	jg	Lj33
	jmp	Lj34
Lj33:
	movb	$1,-10(%ebp)
Lj34:
	cmpb	$0,-10(%ebp)
	jne	Lj37
	jmp	Lj38
Lj37:
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	356(%eax),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$16,%dl
	call	L_JERROR_ERREXIT4$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$LONGINT$LONGINT$stub
Lj38:
	movl	-4(%ebp),%eax
	movl	276(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj52
	decl	-16(%ebp)
	.align 2
Lj53:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	280(%eax,%edx,4),%eax
	movl	4(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-4(%ebp),%eax
	movl	124(%eax),%edx
	movl	-36(%ebp),%eax
	shll	$8,%eax
	leal	(%edx,%eax),%eax
	movl	%eax,-28(%ebp)
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj60
	jmp	Lj59
Lj60:
	movl	-28(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	jl	Lj58
	jmp	Lj59
Lj58:
	movl	$0,(%esp)
	movl	-36(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$116,%dl
	call	L_JERROR_WARNMS2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub
Lj59:
	movl	-4(%ebp),%eax
	movl	352(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	%eax,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj70
	decl	-20(%ebp)
	.align 2
Lj71:
	incl	-20(%ebp)
	movl	-28(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	cmpl	$0,%eax
	jl	Lj72
	jmp	Lj73
Lj72:
	movl	$0,-40(%ebp)
	jmp	Lj76
Lj73:
	movl	-28(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-40(%ebp)
Lj76:
	movl	-4(%ebp),%eax
	movl	356(%eax),%eax
	cmpl	-40(%ebp),%eax
	jne	Lj79
	jmp	Lj80
Lj79:
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-36(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$116,%dl
	call	L_JERROR_WARNMS2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub
Lj80:
	movl	-28(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	360(%ecx),%ecx
	movl	%ecx,(%eax,%edx,4)
	cmpl	-20(%ebp),%ebx
	jg	Lj71
Lj70:
	cmpl	-16(%ebp),%esi
	jg	Lj53
Lj52:
	movl	-4(%ebp),%eax
	movl	356(%eax),%eax
	testl	%eax,%eax
	je	Lj91
	jmp	Lj92
Lj91:
	cmpb	$0,-9(%ebp)
	jne	Lj93
	jmp	Lj94
Lj93:
	movl	-8(%ebp),%edx
	movl	L_JDPHUFF_DECODE_MCU_DC_FIRST$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr-Lj4(%edi),%eax
	movl	%eax,4(%edx)
	jmp	Lj97
Lj94:
	movl	-8(%ebp),%edx
	movl	L_JDPHUFF_DECODE_MCU_AC_FIRST$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr-Lj4(%edi),%eax
	movl	%eax,4(%edx)
Lj97:
	jmp	Lj100
Lj92:
	cmpb	$0,-9(%ebp)
	jne	Lj101
	jmp	Lj102
Lj101:
	movl	-8(%ebp),%edx
	movl	L_JDPHUFF_DECODE_MCU_DC_REFINE$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr-Lj4(%edi),%eax
	movl	%eax,4(%edx)
	jmp	Lj105
Lj102:
	movl	-8(%ebp),%edx
	movl	L_JDPHUFF_DECODE_MCU_AC_REFINE$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr-Lj4(%edi),%eax
	movl	%eax,4(%edx)
Lj105:
Lj100:
	movl	-4(%ebp),%eax
	movl	276(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj109
	decl	-16(%ebp)
	.align 2
Lj110:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	280(%eax,%edx,4),%eax
	movl	%eax,-32(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj113
	jmp	Lj114
Lj113:
	movl	-4(%ebp),%eax
	movl	356(%eax),%eax
	testl	%eax,%eax
	je	Lj115
	jmp	Lj116
Lj115:
	movl	-32(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	leal	44(%edx,%eax,4),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$1,%dl
	call	L_JDHUFF_JPEG_MAKE_D_DERIVED_TBL$J_DECOMPRESS_PTR$BOOLEAN$LONGINT$D_DERIVED_TBL_PTR$stub
Lj116:
	jmp	Lj127
Lj114:
	movl	-32(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	leal	44(%eax,%edx,4),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_JDHUFF_JPEG_MAKE_D_DERIVED_TBL$J_DECOMPRESS_PTR$BOOLEAN$LONGINT$D_DERIVED_TBL_PTR$stub
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	44(%edx,%eax,4),%eax
	movl	%eax,60(%ecx)
Lj127:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	$0,24(%eax,%edx,4)
	cmpl	-16(%ebp),%ebx
	jg	Lj110
Lj109:
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
	movl	-8(%ebp),%eax
	movl	$0,12(%eax)
	movl	-8(%ebp),%eax
	movb	$0,8(%eax)
	movl	-8(%ebp),%eax
	movl	$0,20(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	236(%eax),%eax
	movl	%eax,40(%edx)
	movl	-52(%ebp),%ebx
	movl	-48(%ebp),%esi
	movl	-44(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JDPHUFF_PROCESS_RESTART$J_DECOMPRESS_PTR$$BOOLEAN
_JDPHUFF_PROCESS_RESTART$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	392(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$7,%eax
	addl	%eax,%edx
	sarl	$3,%edx
	movl	-4(%ebp),%eax
	movl	388(%eax),%eax
	addl	%edx,20(%eax)
	movl	-12(%ebp),%eax
	movl	$0,16(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	388(%edx),%edx
	movl	8(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj158
	jmp	Lj159
Lj158:
	movb	$0,-5(%ebp)
	jmp	Lj152
Lj159:
	movl	-4(%ebp),%eax
	movl	276(%eax),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj165
	decl	-16(%ebp)
	.align 2
Lj166:
	incl	-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	$0,24(%ecx,%edx,4)
	cmpl	-16(%ebp),%eax
	jg	Lj166
Lj165:
	movl	-12(%ebp),%eax
	movl	$0,20(%eax)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	236(%eax),%eax
	movl	%eax,40(%edx)
	movl	-4(%ebp),%eax
	movl	364(%eax),%eax
	testl	%eax,%eax
	je	Lj173
	jmp	Lj174
Lj173:
	movl	-12(%ebp),%eax
	movb	$0,8(%eax)
Lj174:
	movb	$1,-5(%ebp)
Lj152:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JDPHUFF_DECODE_MCU_DC_FIRST$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
_JDPHUFF_DECODE_MCU_DC_FIRST$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-120(%ebp)
	movl	%esi,-116(%ebp)
	movl	%edi,-112(%ebp)
	call	Lj180
Lj180:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	392(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	236(%eax),%eax
	testl	%eax,%eax
	jne	Lj185
	jmp	Lj186
Lj185:
	movl	-20(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	je	Lj187
	jmp	Lj188
Lj187:
	movl	-4(%ebp),%eax
	call	L_JDPHUFF_PROCESS_RESTART$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj189
	jmp	Lj190
Lj189:
	movb	$0,-13(%ebp)
	jmp	Lj179
Lj190:
Lj188:
Lj186:
	movl	-20(%ebp),%eax
	movb	8(%eax),%al
	testb	%al,%al
	je	Lj195
	jmp	Lj196
Lj195:
	movl	-4(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	-20(%ebp),%eax
	leal	-92(%ebp),%edi
	leal	20(%eax),%esi
	cld
	movl	$5,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	movl	304(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%esi
	jl	Lj210
	decl	-36(%ebp)
	.align 2
Lj211:
	incl	-36(%ebp)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-44(%ebp)
	movl	-4(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	308(%eax,%edx,4),%eax
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	280(%eax,%edx,4),%eax
	movl	%eax,-100(%ebp)
	movl	-20(%ebp),%edx
	movl	-100(%ebp),%eax
	movl	20(%eax),%eax
	movl	44(%edx,%eax,4),%eax
	movl	%eax,-96(%ebp)
	movl	-52(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj220
	jmp	Lj221
Lj220:
	movl	$0,(%esp)
	movl	-52(%ebp),%ecx
	movl	-48(%ebp),%edx
	leal	-72(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj222
	jmp	Lj223
Lj222:
	movb	$0,-13(%ebp)
	jmp	Lj179
Lj223:
	movl	-64(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	-52(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj238
	jmp	Lj239
Lj238:
	movl	$1,-104(%ebp)
	jmp	Lj242
Lj239:
Lj221:
	movl	-52(%ebp),%ecx
	subl	$8,%ecx
	movl	-48(%ebp),%eax
	shrl	%cl,%eax
	andl	$255,%eax
	movl	%eax,-108(%ebp)
	movl	-96(%ebp),%edx
	movl	-108(%ebp),%eax
	movl	144(%edx,%eax,4),%eax
	movl	%eax,-104(%ebp)
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	jne	Lj247
	jmp	Lj248
Lj247:
	movl	-104(%ebp),%eax
	subl	%eax,-52(%ebp)
	movl	-96(%ebp),%eax
	movl	-108(%ebp),%edx
	movzbl	1168(%eax,%edx,1),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj251
Lj248:
	movl	$9,-104(%ebp)
Lj242:
	movl	-104(%ebp),%eax
	movl	%eax,(%esp)
	movl	-96(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-52(%ebp),%ecx
	movl	-48(%ebp),%edx
	leal	-72(%ebp),%eax
	call	L_JDHUFF_JPEG_HUFF_DECODE$crc98D6E41A$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj266
	jmp	Lj267
Lj266:
	movb	$0,-13(%ebp)
	jmp	Lj179
Lj267:
	movl	-64(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-52(%ebp)
Lj251:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj274
	jmp	Lj275
Lj274:
	movl	-52(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj276
	jmp	Lj277
Lj276:
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-52(%ebp),%ecx
	movl	-48(%ebp),%edx
	leal	-72(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj278
	jmp	Lj279
Lj278:
	movb	$0,-13(%ebp)
	jmp	Lj179
Lj279:
	movl	-64(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-52(%ebp)
Lj277:
	movl	-28(%ebp),%eax
	subl	%eax,-52(%ebp)
	movl	-48(%ebp),%eax
	movl	-52(%ebp),%ecx
	shrl	%cl,%eax
	movl	$1,%edx
	movl	-28(%ebp),%ecx
	shll	%cl,%edx
	decl	%edx
	andl	%edx,%eax
	movl	%eax,-32(%ebp)
	movl	-28(%ebp),%edx
	movl	L_TC_JDPHUFF_EXTEND_TEST$non_lazy_ptr-Lj180(%ebx),%eax
	movl	(%eax,%edx,4),%eax
	cmpl	-32(%ebp),%eax
	jg	Lj296
	jmp	Lj297
Lj296:
	movl	-28(%ebp),%eax
	movl	L_TC_JDPHUFF_EXTEND_OFFSET$non_lazy_ptr-Lj180(%ebx),%edx
	movl	(%edx,%eax,4),%edx
	movl	-32(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-28(%ebp)
	jmp	Lj300
Lj297:
	movl	-32(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj300:
Lj275:
	movl	-40(%ebp),%eax
	movl	-88(%ebp,%eax,4),%eax
	addl	%eax,-28(%ebp)
	movl	-40(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,-88(%ebp,%eax,4)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%ecx
	shll	%cl,%eax
	movl	-44(%ebp),%edx
	movl	%eax,(%edx)
	cmpl	-36(%ebp),%esi
	jg	Lj211
Lj210:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-72(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-68(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-20(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-20(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-20(%ebp),%eax
	leal	20(%eax),%edi
	leal	-92(%ebp),%esi
	cld
	movl	$5,%ecx
	rep
	movsl
Lj196:
	movl	-20(%ebp),%eax
	decl	40(%eax)
	movb	$1,-13(%ebp)
Lj179:
	movb	-13(%ebp),%al
	movl	-120(%ebp),%ebx
	movl	-116(%ebp),%esi
	movl	-112(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JDPHUFF_DECODE_MCU_AC_FIRST$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
_JDPHUFF_DECODE_MCU_AC_FIRST$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	call	Lj320
Lj320:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	392(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	360(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	236(%eax),%eax
	testl	%eax,%eax
	jne	Lj327
	jmp	Lj328
Lj327:
	movl	-20(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	je	Lj329
	jmp	Lj330
Lj329:
	movl	-4(%ebp),%eax
	call	L_JDPHUFF_PROCESS_RESTART$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj331
	jmp	Lj332
Lj331:
	movb	$0,-13(%ebp)
	jmp	Lj319
Lj332:
Lj330:
Lj328:
	movl	-20(%ebp),%eax
	movb	8(%eax),%al
	testb	%al,%al
	je	Lj337
	jmp	Lj338
Lj337:
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-44(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj341
	jmp	Lj342
Lj341:
	decl	-44(%ebp)
	jmp	Lj343
Lj342:
	movl	-4(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-76(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-72(%ebp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-20(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj361
	.align 2
Lj360:
	movl	-56(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj363
	jmp	Lj364
Lj363:
	movl	$0,(%esp)
	movl	-56(%ebp),%ecx
	movl	-52(%ebp),%edx
	leal	-76(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj365
	jmp	Lj366
Lj365:
	movb	$0,-13(%ebp)
	jmp	Lj319
Lj366:
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	-64(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj381
	jmp	Lj382
Lj381:
	movl	$1,-84(%ebp)
	jmp	Lj385
Lj382:
Lj364:
	movl	-56(%ebp),%ecx
	subl	$8,%ecx
	movl	-52(%ebp),%eax
	shrl	%cl,%eax
	andl	$255,%eax
	movl	%eax,-88(%ebp)
	movl	-80(%ebp),%edx
	movl	-88(%ebp),%eax
	movl	144(%edx,%eax,4),%eax
	movl	%eax,-84(%ebp)
	movl	-84(%ebp),%eax
	testl	%eax,%eax
	jne	Lj390
	jmp	Lj391
Lj390:
	movl	-84(%ebp),%eax
	subl	%eax,-56(%ebp)
	movl	-80(%ebp),%eax
	movl	-88(%ebp),%edx
	movzbl	1168(%eax,%edx,1),%eax
	movl	%eax,-32(%ebp)
	jmp	Lj394
Lj391:
	movl	$9,-84(%ebp)
Lj385:
	movl	-84(%ebp),%eax
	movl	%eax,(%esp)
	movl	-80(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-56(%ebp),%ecx
	movl	-52(%ebp),%edx
	leal	-76(%ebp),%eax
	call	L_JDHUFF_JPEG_HUFF_DECODE$crc98D6E41A$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj409
	jmp	Lj410
Lj409:
	movb	$0,-13(%ebp)
	jmp	Lj319
Lj410:
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	-64(%ebp),%eax
	movl	%eax,-56(%ebp)
Lj394:
	movl	-32(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-40(%ebp)
	movl	-32(%ebp),%eax
	andl	$15,%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj421
	jmp	Lj422
Lj421:
	movl	-40(%ebp),%eax
	addl	%eax,-36(%ebp)
	movl	-56(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jl	Lj423
	jmp	Lj424
Lj423:
	movl	-32(%ebp),%eax
	movl	%eax,(%esp)
	movl	-56(%ebp),%ecx
	movl	-52(%ebp),%edx
	leal	-76(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj425
	jmp	Lj426
Lj425:
	movb	$0,-13(%ebp)
	jmp	Lj319
Lj426:
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	-64(%ebp),%eax
	movl	%eax,-56(%ebp)
Lj424:
	movl	-32(%ebp),%eax
	subl	%eax,-56(%ebp)
	movl	-52(%ebp),%eax
	movl	-56(%ebp),%ecx
	shrl	%cl,%eax
	movl	$1,%edx
	movl	-32(%ebp),%ecx
	shll	%cl,%edx
	decl	%edx
	andl	%edx,%eax
	movl	%eax,-40(%ebp)
	movl	-32(%ebp),%eax
	movl	L_TC_JDPHUFF_EXTEND_TEST$non_lazy_ptr-Lj320(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	cmpl	-40(%ebp),%eax
	jg	Lj443
	jmp	Lj444
Lj443:
	movl	-32(%ebp),%edx
	movl	L_TC_JDPHUFF_EXTEND_OFFSET$non_lazy_ptr-Lj320(%ebx),%eax
	movl	(%eax,%edx,4),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-32(%ebp)
	jmp	Lj447
Lj444:
	movl	-40(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj447:
	movl	-48(%ebp),%esi
	movl	-36(%ebp),%eax
	movl	L_TC_JUTILS_JPEG_NATURAL_ORDER$non_lazy_ptr-Lj320(%ebx),%edx
	movl	(%edx,%eax,4),%edx
	movl	-32(%ebp),%eax
	movl	-28(%ebp),%ecx
	shll	%cl,%eax
	movl	%eax,(%esi,%edx,4)
	jmp	Lj452
Lj422:
	movl	-40(%ebp),%eax
	cmpl	$15,%eax
	je	Lj453
	jmp	Lj454
Lj453:
	addl	$15,-36(%ebp)
	jmp	Lj455
Lj454:
	movl	$1,%eax
	movl	-40(%ebp),%ecx
	shll	%cl,%eax
	movl	%eax,-44(%ebp)
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	jne	Lj458
	jmp	Lj459
Lj458:
	movl	-56(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jl	Lj460
	jmp	Lj461
Lj460:
	movl	-40(%ebp),%eax
	movl	%eax,(%esp)
	movl	-56(%ebp),%ecx
	movl	-52(%ebp),%edx
	leal	-76(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj462
	jmp	Lj463
Lj462:
	movb	$0,-13(%ebp)
	jmp	Lj319
Lj463:
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	-64(%ebp),%eax
	movl	%eax,-56(%ebp)
Lj461:
	movl	-40(%ebp),%eax
	subl	%eax,-56(%ebp)
	movl	-52(%ebp),%eax
	movl	-56(%ebp),%ecx
	shrl	%cl,%eax
	movl	$1,%edx
	movl	-40(%ebp),%ecx
	shll	%cl,%edx
	decl	%edx
	andl	%edx,%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	addl	%eax,-44(%ebp)
Lj459:
	decl	-44(%ebp)
	jmp	Lj362
Lj455:
Lj452:
	incl	-36(%ebp)
Lj361:
	movl	-36(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj360
	jmp	Lj362
Lj362:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-76(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-72(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-20(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-20(%ebp),%edx
	movl	-56(%ebp),%eax
	movl	%eax,16(%edx)
Lj343:
	movl	-20(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,20(%eax)
Lj338:
	movl	-20(%ebp),%eax
	decl	40(%eax)
	movb	$1,-13(%ebp)
Lj319:
	movb	-13(%ebp),%al
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JDPHUFF_DECODE_MCU_DC_REFINE$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
_JDPHUFF_DECODE_MCU_DC_REFINE$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	392(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%edx
	movl	$1,%eax
	movl	360(%edx),%ecx
	shll	%cl,%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	236(%eax),%eax
	testl	%eax,%eax
	jne	Lj498
	jmp	Lj499
Lj498:
	movl	-20(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	je	Lj500
	jmp	Lj501
Lj500:
	movl	-4(%ebp),%eax
	call	L_JDPHUFF_PROCESS_RESTART$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj502
	jmp	Lj503
Lj502:
	movb	$0,-13(%ebp)
	jmp	Lj492
Lj503:
Lj501:
Lj499:
	movl	-4(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%eax
	movl	304(%eax),%ebx
	decl	%ebx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj519
	decl	-28(%ebp)
	.align 2
Lj520:
	incl	-28(%ebp)
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-32(%ebp)
	movl	-40(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj523
	jmp	Lj524
Lj523:
	movl	$1,(%esp)
	movl	-40(%ebp),%ecx
	movl	-36(%ebp),%edx
	leal	-60(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj525
	jmp	Lj526
Lj525:
	movb	$0,-13(%ebp)
	jmp	Lj492
Lj526:
	movl	-52(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-48(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj524:
	decl	-40(%ebp)
	movl	-36(%ebp),%eax
	movl	-40(%ebp),%ecx
	shrl	%cl,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj541
	jmp	Lj542
Lj541:
	movl	-32(%ebp),%eax
	movl	(%eax),%edx
	movl	-24(%ebp),%eax
	orl	%eax,%edx
	movl	-32(%ebp),%eax
	movl	%edx,(%eax)
Lj542:
	cmpl	-28(%ebp),%ebx
	jg	Lj520
Lj519:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-60(%ebp),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-56(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-20(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-20(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,16(%edx)
	movl	-20(%ebp),%eax
	decl	40(%eax)
	movb	$1,-13(%ebp)
Lj492:
	movb	-13(%ebp),%al
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDPHUFF_DECODE_MCU_AC_REFINE$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
_JDPHUFF_DECODE_MCU_AC_REFINE$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$376,%esp
	movl	%ebx,-364(%ebp)
	call	Lj556
Lj556:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	392(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	352(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%edx
	movl	$1,%eax
	movl	360(%edx),%ecx
	shll	%cl,%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%edx
	movl	$-1,%eax
	movl	360(%edx),%ecx
	shll	%cl,%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	236(%eax),%eax
	testl	%eax,%eax
	jne	Lj565
	jmp	Lj566
Lj565:
	movl	-20(%ebp),%eax
	movl	40(%eax),%eax
	testl	%eax,%eax
	je	Lj567
	jmp	Lj568
Lj567:
	movl	-4(%ebp),%eax
	call	L_JDPHUFF_PROCESS_RESTART$J_DECOMPRESS_PTR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj569
	jmp	Lj570
Lj569:
	movb	$0,-13(%ebp)
	jmp	Lj555
Lj570:
Lj568:
Lj566:
	movl	-20(%ebp),%eax
	movb	8(%eax),%al
	testb	%al,%al
	je	Lj575
	jmp	Lj576
Lj575:
	movl	-4(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-64(%ebp)
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	-20(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	$0,-92(%ebp)
	movl	-4(%ebp),%eax
	movl	348(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj597
	jmp	Lj598
Lj597:
	jmp	Lj600
	.align 2
Lj599:
	movl	-64(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj602
	jmp	Lj603
Lj602:
	movl	$0,(%esp)
	movl	-64(%ebp),%ecx
	movl	-60(%ebp),%edx
	leal	-84(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj604
	jmp	Lj605
Lj604:
	jmp	Lj614
Lj605:
	movl	-76(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	-72(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	-64(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj619
	jmp	Lj620
Lj619:
	movl	$1,-356(%ebp)
	jmp	Lj623
Lj620:
Lj603:
	movl	-64(%ebp),%ecx
	subl	$8,%ecx
	movl	-60(%ebp),%eax
	shrl	%cl,%eax
	andl	$255,%eax
	movl	%eax,-360(%ebp)
	movl	-88(%ebp),%eax
	movl	-360(%ebp),%edx
	movl	144(%eax,%edx,4),%eax
	movl	%eax,-356(%ebp)
	movl	-356(%ebp),%eax
	testl	%eax,%eax
	jne	Lj628
	jmp	Lj629
Lj628:
	movl	-356(%ebp),%eax
	subl	%eax,-64(%ebp)
	movl	-88(%ebp),%edx
	movl	-360(%ebp),%eax
	movzbl	1168(%edx,%eax,1),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj632
Lj629:
	movl	$9,-356(%ebp)
Lj623:
	movl	-356(%ebp),%eax
	movl	%eax,(%esp)
	movl	-88(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-64(%ebp),%ecx
	movl	-60(%ebp),%edx
	leal	-84(%ebp),%eax
	call	L_JDHUFF_JPEG_HUFF_DECODE$crc98D6E41A$stub
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj647
	jmp	Lj648
Lj647:
	jmp	Lj614
Lj648:
	movl	-76(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	-72(%ebp),%eax
	movl	%eax,-64(%ebp)
Lj632:
	movl	-36(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-44(%ebp)
	movl	-36(%ebp),%eax
	andl	$15,%eax
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj657
	jmp	Lj658
Lj657:
	movl	-36(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj659
	jmp	Lj660
Lj659:
	movl	-4(%ebp),%eax
	movb	$119,%dl
	call	L_JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj660:
	movl	-64(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj665
	jmp	Lj666
Lj665:
	movl	$1,(%esp)
	movl	-64(%ebp),%ecx
	movl	-60(%ebp),%edx
	leal	-84(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj667
	jmp	Lj668
Lj667:
	jmp	Lj614
Lj668:
	movl	-76(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	-72(%ebp),%eax
	movl	%eax,-64(%ebp)
Lj666:
	decl	-64(%ebp)
	movl	-60(%ebp),%eax
	movl	-64(%ebp),%ecx
	shrl	%cl,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj681
	jmp	Lj682
Lj681:
	movl	-28(%ebp),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj685
Lj682:
	movl	-32(%ebp),%eax
	movl	%eax,-36(%ebp)
Lj685:
	jmp	Lj688
Lj658:
	movl	-44(%ebp),%eax
	cmpl	$15,%eax
	jne	Lj689
	jmp	Lj690
Lj689:
	movl	$1,%eax
	movl	-44(%ebp),%ecx
	shll	%cl,%eax
	movl	%eax,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	jne	Lj693
	jmp	Lj694
Lj693:
	movl	-64(%ebp),%eax
	cmpl	-44(%ebp),%eax
	jl	Lj695
	jmp	Lj696
Lj695:
	movl	-44(%ebp),%eax
	movl	%eax,(%esp)
	movl	-64(%ebp),%ecx
	movl	-60(%ebp),%edx
	leal	-84(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj697
	jmp	Lj698
Lj697:
	jmp	Lj614
Lj698:
	movl	-76(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	-72(%ebp),%eax
	movl	%eax,-64(%ebp)
Lj696:
	movl	-44(%ebp),%eax
	subl	%eax,-64(%ebp)
	movl	-60(%ebp),%eax
	movl	-64(%ebp),%ecx
	shrl	%cl,%eax
	movl	$1,%edx
	movl	-44(%ebp),%ecx
	shll	%cl,%edx
	decl	%edx
	andl	%edx,%eax
	movl	%eax,-44(%ebp)
	movl	-44(%ebp),%eax
	addl	%eax,-48(%ebp)
Lj694:
	jmp	Lj601
Lj690:
Lj688:
	.align 2
Lj713:
	movl	-52(%ebp),%ecx
	movl	-40(%ebp),%eax
	movl	L_TC_JUTILS_JPEG_NATURAL_ORDER$non_lazy_ptr-Lj556(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	leal	(%ecx,%eax,4),%eax
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj718
	jmp	Lj719
Lj718:
	movl	-64(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj720
	jmp	Lj721
Lj720:
	movl	$1,(%esp)
	movl	-64(%ebp),%ecx
	movl	-60(%ebp),%edx
	leal	-84(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj722
	jmp	Lj723
Lj722:
	jmp	Lj614
Lj723:
	movl	-76(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	-72(%ebp),%eax
	movl	%eax,-64(%ebp)
Lj721:
	decl	-64(%ebp)
	movl	-60(%ebp),%eax
	movl	-64(%ebp),%ecx
	shrl	%cl,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj736
	jmp	Lj737
Lj736:
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	movl	-28(%ebp),%edx
	andl	%edx,%eax
	testl	%eax,%eax
	je	Lj738
	jmp	Lj739
Lj738:
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	jge	Lj740
	jmp	Lj741
Lj740:
	movl	-56(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	%eax,(%edx)
	jmp	Lj742
Lj741:
	movl	-56(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,(%eax)
Lj742:
Lj739:
Lj737:
	jmp	Lj743
Lj719:
	decl	-44(%ebp)
	movl	-44(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj744
	jmp	Lj745
Lj744:
	jmp	Lj715
Lj745:
Lj743:
	incl	-40(%ebp)
	movl	-40(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jg	Lj715
	jmp	Lj713
Lj715:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj746
	jmp	Lj747
Lj746:
	movl	-40(%ebp),%edx
	movl	L_TC_JUTILS_JPEG_NATURAL_ORDER$non_lazy_ptr-Lj556(%ebx),%eax
	movl	(%eax,%edx,4),%eax
	movl	%eax,-352(%ebp)
	movl	-52(%ebp),%eax
	movl	-352(%ebp),%edx
	movl	-36(%ebp),%ecx
	movl	%ecx,(%eax,%edx,4)
	movl	-92(%ebp),%eax
	movl	-352(%ebp),%edx
	movl	%edx,-348(%ebp,%eax,4)
	incl	-92(%ebp)
Lj747:
	incl	-40(%ebp)
Lj600:
	movl	-40(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj599
	jmp	Lj601
Lj601:
Lj598:
	movl	-48(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj754
	jmp	Lj755
Lj754:
	jmp	Lj757
	.align 2
Lj756:
	movl	-52(%ebp),%ecx
	movl	-40(%ebp),%eax
	movl	L_TC_JUTILS_JPEG_NATURAL_ORDER$non_lazy_ptr-Lj556(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	leal	(%ecx,%eax,4),%eax
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj761
	jmp	Lj762
Lj761:
	movl	-64(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj763
	jmp	Lj764
Lj763:
	movl	$1,(%esp)
	movl	-64(%ebp),%ecx
	movl	-60(%ebp),%edx
	leal	-84(%ebp),%eax
	call	L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj765
	jmp	Lj766
Lj765:
	jmp	Lj614
Lj766:
	movl	-76(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	-72(%ebp),%eax
	movl	%eax,-64(%ebp)
Lj764:
	decl	-64(%ebp)
	movl	-60(%ebp),%eax
	movl	-64(%ebp),%ecx
	shrl	%cl,%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj779
	jmp	Lj780
Lj779:
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	movl	-28(%ebp),%edx
	andl	%edx,%eax
	testl	%eax,%eax
	je	Lj781
	jmp	Lj782
Lj781:
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	jge	Lj783
	jmp	Lj784
Lj783:
	movl	-56(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	%eax,(%edx)
	jmp	Lj785
Lj784:
	movl	-56(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,(%eax)
Lj785:
Lj782:
Lj780:
Lj762:
	incl	-40(%ebp)
Lj757:
	movl	-40(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj756
	jmp	Lj758
Lj758:
	decl	-48(%ebp)
Lj755:
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-84(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-80(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-20(%ebp),%eax
	movl	-60(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-20(%ebp),%edx
	movl	-64(%ebp),%eax
	movl	%eax,16(%edx)
	movl	-20(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	%eax,20(%edx)
Lj576:
	movl	-20(%ebp),%eax
	decl	40(%eax)
	movb	$1,-13(%ebp)
	jmp	Lj555
Lj614:
	jmp	Lj799
	.align 2
Lj798:
	decl	-92(%ebp)
	movl	-52(%ebp),%edx
	movl	-92(%ebp),%eax
	movl	-348(%ebp,%eax,4),%eax
	movl	$0,(%edx,%eax,4)
Lj799:
	movl	-92(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj798
	jmp	Lj800
Lj800:
	movb	$0,-13(%ebp)
Lj555:
	movb	-13(%ebp),%al
	movl	-364(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JDPHUFF_JINIT_PHUFF_DECODER$J_DECOMPRESS_PTR
_JDPHUFF_JINIT_PHUFF_DECODER$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj806
Lj806:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$64,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,392(%eax)
	movl	-8(%ebp),%edx
	movl	L_JDPHUFF_START_PASS_PHUFF_DECODER$J_DECOMPRESS_PTR$non_lazy_ptr-Lj806(%esi),%eax
	movl	%eax,(%edx)
	movl	$0,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj821:
	incl	-20(%ebp)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	$0,44(%edx,%eax,4)
	cmpl	$3,-20(%ebp)
	jl	Lj821
	movl	-4(%ebp),%eax
	movl	36(%eax),%ecx
	shll	$6,%ecx
	shll	$2,%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-4(%ebp),%edx
	movl	%eax,124(%edx)
	movl	-4(%ebp),%eax
	movl	124(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj835
	decl	-16(%ebp)
	.align 2
Lj836:
	incl	-16(%ebp)
	movl	$0,-20(%ebp)
	decl	-20(%ebp)
	.align 2
Lj839:
	incl	-20(%ebp)
	movl	-12(%ebp),%edx
	movl	$-1,(%edx)
	addl	$4,-12(%ebp)
	cmpl	$63,-20(%ebp)
	jl	Lj839
	cmpl	-16(%ebp),%eax
	jg	Lj836
Lj835:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JDPHUFF
_THREADVARLIST_JDPHUFF:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_JDPHUFF_EXTEND_TEST
_TC_JDPHUFF_EXTEND_TEST:
	.long	0,1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384

.data
	.align 2
.globl	_TC_JDPHUFF_EXTEND_OFFSET
_TC_JDPHUFF_EXTEND_OFFSET:
	.long	0,-1,-3,-7,-15,-31,-63,-127,-255,-511,-1023,-2047,-4095,-8191,-16383,-32767
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT4$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _JERROR_ERREXIT4$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_WARNMS2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub:
.indirect_symbol _JERROR_WARNMS2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDHUFF_JPEG_MAKE_D_DERIVED_TBL$J_DECOMPRESS_PTR$BOOLEAN$LONGINT$D_DERIVED_TBL_PTR$stub:
.indirect_symbol _JDHUFF_JPEG_MAKE_D_DERIVED_TBL$J_DECOMPRESS_PTR$BOOLEAN$LONGINT$D_DERIVED_TBL_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDPHUFF_PROCESS_RESTART$J_DECOMPRESS_PTR$$BOOLEAN$stub:
.indirect_symbol _JDPHUFF_PROCESS_RESTART$J_DECOMPRESS_PTR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN$stub:
.indirect_symbol _JDHUFF_JPEG_FILL_BIT_BUFFER$BITREAD_WORKING_STATE$LONGINT$LONGINT$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDHUFF_JPEG_HUFF_DECODE$crc98D6E41A$stub:
.indirect_symbol _JDHUFF_JPEG_HUFF_DECODE$crc98D6E41A
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_WARNMS$J_COMMON_PTR$J_MESSAGE_CODE
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
L_JDPHUFF_DECODE_MCU_DC_FIRST$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JDPHUFF_DECODE_MCU_DC_FIRST$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDPHUFF_DECODE_MCU_AC_FIRST$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JDPHUFF_DECODE_MCU_AC_FIRST$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDPHUFF_DECODE_MCU_DC_REFINE$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JDPHUFF_DECODE_MCU_DC_REFINE$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDPHUFF_DECODE_MCU_AC_REFINE$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JDPHUFF_DECODE_MCU_AC_REFINE$J_DECOMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JDPHUFF_EXTEND_TEST$non_lazy_ptr:
.indirect_symbol _TC_JDPHUFF_EXTEND_TEST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JDPHUFF_EXTEND_OFFSET$non_lazy_ptr:
.indirect_symbol _TC_JDPHUFF_EXTEND_OFFSET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JUTILS_JPEG_NATURAL_ORDER$non_lazy_ptr:
.indirect_symbol _TC_JUTILS_JPEG_NATURAL_ORDER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JDPHUFF_START_PASS_PHUFF_DECODER$J_DECOMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JDPHUFF_START_PASS_PHUFF_DECODER$J_DECOMPRESS_PTR
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

