# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JCPHUFF_START_PASS_PHUFF$J_COMPRESS_PTR$BOOLEAN
_JCPHUFF_START_PASS_PHUFF$J_COMPRESS_PTR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	call	Lj4
Lj4:
	popl	%edi
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	344(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,32(%eax)
	movl	-12(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,12(%eax)
	movl	-4(%ebp),%eax
	movl	296(%eax),%eax
	testl	%eax,%eax
	seteb	-13(%ebp)
	movl	-4(%ebp),%eax
	movl	304(%eax),%eax
	testl	%eax,%eax
	je	Lj13
	jmp	Lj14
Lj13:
	cmpb	$0,-13(%ebp)
	jne	Lj15
	jmp	Lj16
Lj15:
	movl	-12(%ebp),%edx
	movl	L_JCPHUFF_ENCODE_MCU_DC_FIRST$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr-Lj4(%edi),%eax
	movl	%eax,4(%edx)
	jmp	Lj19
Lj16:
	movl	-12(%ebp),%edx
	movl	L_JCPHUFF_ENCODE_MCU_AC_FIRST$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr-Lj4(%edi),%eax
	movl	%eax,4(%edx)
Lj19:
	jmp	Lj22
Lj14:
	cmpb	$0,-13(%ebp)
	jne	Lj23
	jmp	Lj24
Lj23:
	movl	-12(%ebp),%edx
	movl	L_JCPHUFF_ENCODE_MCU_DC_REFINE$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr-Lj4(%edi),%eax
	movl	%eax,4(%edx)
	jmp	Lj27
Lj24:
	movl	-12(%ebp),%edx
	movl	L_JCPHUFF_ENCODE_MCU_AC_REFINE$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr-Lj4(%edi),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	64(%eax),%eax
	testl	%eax,%eax
	je	Lj30
	jmp	Lj31
Lj30:
	movl	-4(%ebp),%eax
	movl	$1000,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	-12(%ebp),%edx
	movl	%eax,64(%edx)
Lj31:
Lj27:
Lj22:
	cmpb	$0,-8(%ebp)
	jne	Lj40
	jmp	Lj41
Lj40:
	movl	-12(%ebp),%edx
	movl	L_JCPHUFF_FINISH_PASS_GATHER_PHUFF$J_COMPRESS_PTR$non_lazy_ptr-Lj4(%edi),%eax
	movl	%eax,8(%edx)
	jmp	Lj44
Lj41:
	movl	-12(%ebp),%edx
	movl	L_JCPHUFF_FINISH_PASS_PHUFF$J_COMPRESS_PTR$non_lazy_ptr-Lj4(%edi),%eax
	movl	%eax,8(%edx)
Lj44:
	movl	-4(%ebp),%eax
	movl	224(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj48
	decl	-20(%ebp)
	.align 2
Lj49:
	incl	-20(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	228(%edx,%eax,4),%eax
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	$0,36(%eax,%edx,4)
	cmpb	$0,-13(%ebp)
	jne	Lj54
	jmp	Lj55
Lj54:
	movl	-4(%ebp),%eax
	movl	304(%eax),%eax
	testl	%eax,%eax
	jne	Lj56
	jmp	Lj57
Lj56:
	jmp	Lj47
Lj57:
	movl	-28(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj60
Lj55:
	movl	-28(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,52(%eax)
Lj60:
	cmpb	$0,-8(%ebp)
	jne	Lj65
	jmp	Lj66
Lj65:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj67
	jmp	Lj69
Lj69:
	movl	-24(%ebp),%eax
	cmpl	$4,%eax
	jge	Lj67
	jmp	Lj68
Lj67:
	movl	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$51,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj68:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	92(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj76
	jmp	Lj77
Lj76:
	movl	-4(%ebp),%eax
	movl	$1028,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%esi
	movl	4(%esi),%esi
	movl	(%esi),%esi
	call	*%esi
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	%eax,92(%ecx,%edx,4)
Lj77:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	92(%edx,%eax,4),%eax
	movl	$1028,%edx
	call	L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub
	jmp	Lj90
Lj66:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	leal	76(%edx,%eax,4),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movb	-13(%ebp),%dl
	movl	-4(%ebp),%eax
	call	L_JCHUFF_JPEG_MAKE_C_DERIVED_TBL$J_COMPRESS_PTR$BOOLEAN$LONGINT$C_DERIVED_TBL_PTR$stub
Lj90:
Lj47:
	cmpl	-20(%ebp),%ebx
	jg	Lj49
Lj48:
	movl	-12(%ebp),%eax
	movl	$0,56(%eax)
	movl	-12(%ebp),%eax
	movl	$0,60(%eax)
	movl	-12(%ebp),%eax
	movl	$0,24(%eax)
	movl	-12(%ebp),%eax
	movl	$0,28(%eax)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	movl	%eax,68(%edx)
	movl	-12(%ebp),%eax
	movl	$0,72(%eax)
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JCPHUFF_DUMP_BUFFER$PHUFF_ENTROPY_PTR
_JCPHUFF_DUMP_BUFFER$PHUFF_ENTROPY_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	24(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	-8(%ebp),%edx
	movl	12(%edx),%edx
	call	*%edx
	testb	%al,%al
	je	Lj115
	jmp	Lj116
Lj115:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movb	$24,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj116:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,16(%edx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,20(%edx)
	leave
	ret

.text
	.align 4
.globl	_JCPHUFF_EMIT_BITS$PHUFF_ENTROPY_PTR$LONGWORD$LONGINT
_JCPHUFF_EMIT_BITS$PHUFF_ENTROPY_PTR$LONGWORD$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj133
	jmp	Lj134
Lj133:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movb	$41,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj134:
	movl	-4(%ebp),%eax
	cmpb	$0,12(%eax)
	jne	Lj139
	jmp	Lj140
Lj139:
	jmp	Lj127
Lj140:
	movl	$1,%eax
	movl	-12(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	movl	-16(%ebp),%edx
	andl	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	-20(%ebp),%ecx
	movl	$24,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	-16(%ebp),%eax
	shll	%cl,%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-16(%ebp),%eax
	orl	%eax,%edx
	movl	%edx,-16(%ebp)
	jmp	Lj148
	.align 2
Lj147:
	movl	-16(%ebp),%eax
	shrl	$16,%eax
	andl	$255,%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	-24(%ebp),%dl
	movb	%dl,(%eax)
	movl	-4(%ebp),%eax
	incl	16(%eax)
	movl	-4(%ebp),%eax
	decl	20(%eax)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj154
	jmp	Lj155
Lj154:
	movl	-4(%ebp),%eax
	call	L_JCPHUFF_DUMP_BUFFER$PHUFF_ENTROPY_PTR$stub
Lj155:
	movl	-24(%ebp),%eax
	cmpl	$255,%eax
	je	Lj158
	jmp	Lj159
Lj158:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	$0,(%eax)
	movl	-4(%ebp),%eax
	incl	16(%eax)
	movl	-4(%ebp),%eax
	decl	20(%eax)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj162
	jmp	Lj163
Lj162:
	movl	-4(%ebp),%eax
	call	L_JCPHUFF_DUMP_BUFFER$PHUFF_ENTROPY_PTR$stub
Lj163:
Lj159:
	movl	-16(%ebp),%eax
	shll	$8,%eax
	movl	%eax,-16(%ebp)
	subl	$8,-20(%ebp)
Lj148:
	movl	-20(%ebp),%eax
	cmpl	$8,%eax
	jge	Lj147
	jmp	Lj149
Lj149:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,28(%edx)
Lj127:
	leave
	ret

.text
	.align 4
.globl	_JCPHUFF_FLUSH_BITS$PHUFF_ENTROPY_PTR
_JCPHUFF_FLUSH_BITS$PHUFF_ENTROPY_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$7,%ecx
	movl	$127,%edx
	call	L_JCPHUFF_EMIT_BITS$PHUFF_ENTROPY_PTR$LONGWORD$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	$0,24(%eax)
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	leave
	ret

.text
	.align 4
.globl	_JCPHUFF_EMIT_SYMBOL$PHUFF_ENTROPY_PTR$LONGINT$LONGINT
_JCPHUFF_EMIT_SYMBOL$PHUFF_ENTROPY_PTR$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,12(%eax)
	jne	Lj186
	jmp	Lj187
Lj186:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	92(%edx,%eax,4),%edx
	movl	-12(%ebp),%eax
	incl	(%edx,%eax,4)
	jmp	Lj188
Lj187:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	76(%eax,%edx,4),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	movzbl	1024(%eax,%edx,1),%ecx
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	-4(%ebp),%eax
	call	L_JCPHUFF_EMIT_BITS$PHUFF_ENTROPY_PTR$LONGWORD$LONGINT$stub
Lj188:
	leave
	ret

.text
	.align 4
.globl	_JCPHUFF_EMIT_BUFFERED_BITS$PHUFF_ENTROPY_PTR$JBYTEPTR$LONGWORD
_JCPHUFF_EMIT_BUFFERED_BITS$PHUFF_ENTROPY_PTR$JBYTEPTR$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,12(%eax)
	jne	Lj199
	jmp	Lj200
Lj199:
	jmp	Lj197
Lj200:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj204
	.align 2
Lj203:
	movl	-16(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_JCPHUFF_EMIT_BITS$PHUFF_ENTROPY_PTR$LONGWORD$LONGINT$stub
	incl	-16(%ebp)
	decl	-12(%ebp)
Lj204:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj203
	jmp	Lj205
Lj205:
Lj197:
	leave
	ret

.text
	.align 4
.globl	_JCPHUFF_EMIT_EOBRUN$PHUFF_ENTROPY_PTR
_JCPHUFF_EMIT_EOBRUN$PHUFF_ENTROPY_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$0,%eax
	ja	Lj214
	jmp	Lj215
Lj214:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-8(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj223
	.align 2
Lj222:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-8(%ebp)
Lj223:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj222
	jmp	Lj224
Lj224:
	movl	-12(%ebp),%eax
	cmpl	$14,%eax
	jg	Lj227
	jmp	Lj228
Lj227:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movb	$41,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj228:
	movl	-12(%ebp),%ecx
	shll	$4,%ecx
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCPHUFF_EMIT_SYMBOL$PHUFF_ENTROPY_PTR$LONGINT$LONGINT$stub
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj239
	jmp	Lj240
Lj239:
	movl	-4(%ebp),%eax
	movl	56(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_JCPHUFF_EMIT_BITS$PHUFF_ENTROPY_PTR$LONGWORD$LONGINT$stub
Lj240:
	movl	-4(%ebp),%eax
	movl	$0,56(%eax)
	movl	-4(%ebp),%eax
	movl	60(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	64(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCPHUFF_EMIT_BUFFERED_BITS$PHUFF_ENTROPY_PTR$JBYTEPTR$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	$0,60(%eax)
Lj215:
	leave
	ret

.text
	.align 4
.globl	_JCPHUFF_EMIT_RESTART$PHUFF_ENTROPY_PTR$LONGINT
_JCPHUFF_EMIT_RESTART$PHUFF_ENTROPY_PTR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_JCPHUFF_EMIT_EOBRUN$PHUFF_ENTROPY_PTR$stub
	movl	-4(%ebp),%eax
	movb	12(%eax),%al
	testb	%al,%al
	je	Lj261
	jmp	Lj262
Lj261:
	movl	-4(%ebp),%eax
	call	L_JCPHUFF_FLUSH_BITS$PHUFF_ENTROPY_PTR$stub
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	$255,(%eax)
	movl	-4(%ebp),%eax
	incl	16(%eax)
	movl	-4(%ebp),%eax
	decl	20(%eax)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj267
	jmp	Lj268
Lj267:
	movl	-4(%ebp),%eax
	call	L_JCPHUFF_DUMP_BUFFER$PHUFF_ENTROPY_PTR$stub
Lj268:
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	-8(%ebp),%eax
	addl	$208,%eax
	movb	%al,(%edx)
	movl	-4(%ebp),%eax
	incl	16(%eax)
	movl	-4(%ebp),%eax
	decl	20(%eax)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj273
	jmp	Lj274
Lj273:
	movl	-4(%ebp),%eax
	call	L_JCPHUFF_DUMP_BUFFER$PHUFF_ENTROPY_PTR$stub
Lj274:
Lj262:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	296(%eax),%eax
	testl	%eax,%eax
	je	Lj277
	jmp	Lj278
Lj277:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	224(%eax),%eax
	decl	%eax
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj280
	decl	-12(%ebp)
	.align 2
Lj281:
	incl	-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	$0,36(%edx,%ecx,4)
	cmpl	-12(%ebp),%eax
	jg	Lj281
Lj280:
	jmp	Lj284
Lj278:
	movl	-4(%ebp),%eax
	movl	$0,56(%eax)
	movl	-4(%ebp),%eax
	movl	$0,60(%eax)
Lj284:
	leave
	ret

.text
	.align 4
.globl	_JCPHUFF_ENCODE_MCU_DC_FIRST$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
_JCPHUFF_ENCODE_MCU_DC_FIRST$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	344(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	308(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-20(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,16(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-20(%ebp),%edx
	movl	4(%eax),%eax
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	testl	%eax,%eax
	jne	Lj299
	jmp	Lj300
Lj299:
	movl	-20(%ebp),%eax
	movl	68(%eax),%eax
	testl	%eax,%eax
	je	Lj301
	jmp	Lj302
Lj301:
	movl	-20(%ebp),%eax
	movl	72(%eax),%edx
	movl	-20(%ebp),%eax
	call	L_JCPHUFF_EMIT_RESTART$PHUFF_ENTROPY_PTR$LONGINT$stub
Lj302:
Lj300:
	movl	-4(%ebp),%eax
	movl	252(%eax),%ebx
	decl	%ebx
	movl	$0,-36(%ebp)
	cmpl	-36(%ebp),%ebx
	jl	Lj308
	decl	-36(%ebp)
	.align 2
Lj309:
	incl	-36(%ebp)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-48(%ebp)
	movl	-4(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	256(%edx,%eax,4),%eax
	movl	%eax,-40(%ebp)
	movl	-4(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	228(%edx,%eax,4),%eax
	movl	%eax,-52(%ebp)
	movl	-48(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj318
	jmp	Lj319
Lj318:
	movl	-44(%ebp),%ecx
	movl	$16,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	$-1,%eax
	shll	%cl,%eax
	movl	-56(%ebp),%edx
	movl	-44(%ebp),%ecx
	shrl	%cl,%edx
	orl	%edx,%eax
	movl	%eax,-28(%ebp)
	jmp	Lj322
Lj319:
	movl	-56(%ebp),%eax
	movl	-44(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-28(%ebp)
Lj322:
	movl	-20(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	36(%edx,%eax,4),%edx
	movl	-28(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	-40(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	%edx,36(%eax,%ecx,4)
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj331
	jmp	Lj332
Lj331:
	movl	-24(%ebp),%eax
	negl	%eax
	movl	%eax,-24(%ebp)
	decl	-28(%ebp)
Lj332:
	movl	$0,-32(%ebp)
	jmp	Lj338
	.align 2
Lj337:
	incl	-32(%ebp)
	movl	-24(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-24(%ebp)
Lj338:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj337
	jmp	Lj339
Lj339:
	movl	-32(%ebp),%eax
	cmpl	$11,%eax
	jg	Lj342
	jmp	Lj343
Lj342:
	movl	-4(%ebp),%eax
	movb	$6,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj343:
	movl	-52(%ebp),%eax
	movl	20(%eax),%edx
	movl	-32(%ebp),%ecx
	movl	-20(%ebp),%eax
	call	L_JCPHUFF_EMIT_SYMBOL$PHUFF_ENTROPY_PTR$LONGINT$LONGINT$stub
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj354
	jmp	Lj355
Lj354:
	movl	-32(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_JCPHUFF_EMIT_BITS$PHUFF_ENTROPY_PTR$LONGWORD$LONGINT$stub
Lj355:
	cmpl	-36(%ebp),%ebx
	jg	Lj309
Lj308:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	testl	%eax,%eax
	jne	Lj366
	jmp	Lj367
Lj366:
	movl	-20(%ebp),%eax
	movl	68(%eax),%eax
	testl	%eax,%eax
	je	Lj368
	jmp	Lj369
Lj368:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	movl	%eax,68(%edx)
	movl	-20(%ebp),%eax
	incl	72(%eax)
	movl	-20(%ebp),%eax
	movl	72(%eax),%edx
	andl	$7,%edx
	movl	%edx,72(%eax)
Lj369:
	movl	-20(%ebp),%eax
	decl	68(%eax)
Lj367:
	movb	$1,-13(%ebp)
	movb	-13(%ebp),%al
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCPHUFF_ENCODE_MCU_AC_FIRST$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
_JCPHUFF_ENCODE_MCU_AC_FIRST$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	call	Lj379
Lj379:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	344(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	300(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-4(%ebp),%eax
	movl	308(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-20(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,16(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-20(%ebp),%edx
	movl	4(%eax),%eax
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	testl	%eax,%eax
	jne	Lj390
	jmp	Lj391
Lj390:
	movl	-20(%ebp),%eax
	movl	68(%eax),%eax
	testl	%eax,%eax
	je	Lj392
	jmp	Lj393
Lj392:
	movl	-20(%ebp),%eax
	movl	72(%eax),%edx
	movl	-20(%ebp),%eax
	call	L_JCPHUFF_EMIT_RESTART$PHUFF_ENTROPY_PTR$LONGINT$stub
Lj393:
Lj391:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	$0,-36(%ebp)
	movl	-44(%ebp),%esi
	movl	-4(%ebp),%eax
	movl	296(%eax),%eax
	movl	%eax,-40(%ebp)
	cmpl	-40(%ebp),%esi
	jl	Lj403
	decl	-40(%ebp)
	.align 2
Lj404:
	incl	-40(%ebp)
	movl	-52(%ebp),%ecx
	movl	-40(%ebp),%eax
	movl	L_TC_JUTILS_JPEG_NATURAL_ORDER$non_lazy_ptr-Lj379(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	movl	(%ecx,%eax,4),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj407
	jmp	Lj408
Lj407:
	incl	-36(%ebp)
	jmp	Lj402
Lj408:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj409
	jmp	Lj410
Lj409:
	movl	-24(%ebp),%eax
	negl	%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	-48(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	notl	%eax
	movl	%eax,-28(%ebp)
	jmp	Lj417
Lj410:
	movl	-24(%ebp),%eax
	movl	-48(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj417:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj422
	jmp	Lj423
Lj422:
	incl	-36(%ebp)
	jmp	Lj402
Lj423:
	movl	-20(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$0,%eax
	ja	Lj424
	jmp	Lj425
Lj424:
	movl	-20(%ebp),%eax
	call	L_JCPHUFF_EMIT_EOBRUN$PHUFF_ENTROPY_PTR$stub
Lj425:
	jmp	Lj429
	.align 2
Lj428:
	movl	-20(%ebp),%eax
	movl	52(%eax),%edx
	movl	-20(%ebp),%eax
	movl	$240,%ecx
	call	L_JCPHUFF_EMIT_SYMBOL$PHUFF_ENTROPY_PTR$LONGINT$LONGINT$stub
	subl	$16,-36(%ebp)
Lj429:
	movl	-36(%ebp),%eax
	cmpl	$15,%eax
	jg	Lj428
	jmp	Lj430
Lj430:
	movl	$0,-32(%ebp)
	.align 2
Lj439:
	incl	-32(%ebp)
	movl	-24(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj441
	jmp	Lj439
Lj441:
	movl	-32(%ebp),%eax
	cmpl	$10,%eax
	jg	Lj444
	jmp	Lj445
Lj444:
	movl	-4(%ebp),%eax
	movb	$6,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj445:
	movl	-36(%ebp),%ecx
	shll	$4,%ecx
	movl	-32(%ebp),%eax
	addl	%eax,%ecx
	movl	-20(%ebp),%eax
	movl	52(%eax),%edx
	movl	-20(%ebp),%eax
	call	L_JCPHUFF_EMIT_SYMBOL$PHUFF_ENTROPY_PTR$LONGINT$LONGINT$stub
	movl	-32(%ebp),%ecx
	movl	-28(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_JCPHUFF_EMIT_BITS$PHUFF_ENTROPY_PTR$LONGWORD$LONGINT$stub
	movl	$0,-36(%ebp)
Lj402:
	cmpl	-40(%ebp),%esi
	jg	Lj404
Lj403:
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj464
	jmp	Lj465
Lj464:
	movl	-20(%ebp),%eax
	incl	56(%eax)
	movl	-20(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$32767,%eax
	je	Lj466
	jmp	Lj467
Lj466:
	movl	-20(%ebp),%eax
	call	L_JCPHUFF_EMIT_EOBRUN$PHUFF_ENTROPY_PTR$stub
Lj467:
Lj465:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	testl	%eax,%eax
	jne	Lj474
	jmp	Lj475
Lj474:
	movl	-20(%ebp),%eax
	movl	68(%eax),%eax
	testl	%eax,%eax
	je	Lj476
	jmp	Lj477
Lj476:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	movl	%eax,68(%edx)
	movl	-20(%ebp),%eax
	incl	72(%eax)
	movl	-20(%ebp),%eax
	movl	72(%eax),%edx
	andl	$7,%edx
	movl	%edx,72(%eax)
Lj477:
	movl	-20(%ebp),%eax
	decl	68(%eax)
Lj475:
	movb	$1,-13(%ebp)
	movb	-13(%ebp),%al
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JCPHUFF_ENCODE_MCU_DC_REFINE$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
_JCPHUFF_ENCODE_MCU_DC_REFINE$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	344(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	308(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-20(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,16(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-20(%ebp),%edx
	movl	4(%eax),%eax
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	testl	%eax,%eax
	jne	Lj496
	jmp	Lj497
Lj496:
	movl	-20(%ebp),%eax
	movl	68(%eax),%eax
	testl	%eax,%eax
	je	Lj498
	jmp	Lj499
Lj498:
	movl	-20(%ebp),%eax
	movl	72(%eax),%edx
	movl	-20(%ebp),%eax
	call	L_JCPHUFF_EMIT_RESTART$PHUFF_ENTROPY_PTR$LONGINT$stub
Lj499:
Lj497:
	movl	-4(%ebp),%eax
	movl	252(%eax),%ebx
	decl	%ebx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj505
	decl	-28(%ebp)
	.align 2
Lj506:
	incl	-28(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-32(%ebp),%ecx
	shrl	%cl,%edx
	movl	-20(%ebp),%eax
	movl	$1,%ecx
	call	L_JCPHUFF_EMIT_BITS$PHUFF_ENTROPY_PTR$LONGWORD$LONGINT$stub
	cmpl	-28(%ebp),%ebx
	jg	Lj506
Lj505:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	testl	%eax,%eax
	jne	Lj521
	jmp	Lj522
Lj521:
	movl	-20(%ebp),%eax
	movl	68(%eax),%eax
	testl	%eax,%eax
	je	Lj523
	jmp	Lj524
Lj523:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	movl	%eax,68(%edx)
	movl	-20(%ebp),%eax
	incl	72(%eax)
	movl	-20(%ebp),%eax
	movl	72(%eax),%edx
	andl	$7,%edx
	movl	%edx,72(%eax)
Lj524:
	movl	-20(%ebp),%eax
	decl	68(%eax)
Lj522:
	movb	$1,-13(%ebp)
	movb	-13(%ebp),%al
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCPHUFF_ENCODE_MCU_AC_REFINE$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
_JCPHUFF_ENCODE_MCU_AC_REFINE$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-320(%ebp)
	movl	%esi,-316(%ebp)
	call	Lj534
Lj534:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	344(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	300(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-4(%ebp),%eax
	movl	308(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-20(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,16(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-20(%ebp),%edx
	movl	4(%eax),%eax
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	testl	%eax,%eax
	jne	Lj545
	jmp	Lj546
Lj545:
	movl	-20(%ebp),%eax
	movl	68(%eax),%eax
	testl	%eax,%eax
	je	Lj547
	jmp	Lj548
Lj547:
	movl	-20(%ebp),%eax
	movl	72(%eax),%edx
	movl	-20(%ebp),%eax
	call	L_JCPHUFF_EMIT_RESTART$PHUFF_ENTROPY_PTR$LONGINT$stub
Lj548:
Lj546:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	$0,-36(%ebp)
	movl	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	296(%eax),%eax
	movl	%eax,-32(%ebp)
	cmpl	-32(%ebp),%edx
	jl	Lj558
	decl	-32(%ebp)
	.align 2
Lj559:
	incl	-32(%ebp)
	movl	-56(%ebp),%esi
	movl	-32(%ebp),%ecx
	movl	L_TC_JUTILS_JPEG_NATURAL_ORDER$non_lazy_ptr-Lj534(%ebx),%eax
	movl	(%eax,%ecx,4),%eax
	movl	(%esi,%eax,4),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj562
	jmp	Lj563
Lj562:
	movl	-24(%ebp),%eax
	negl	%eax
	movl	%eax,-24(%ebp)
Lj563:
	movl	-24(%ebp),%eax
	movl	-52(%ebp),%ecx
	shrl	%cl,%eax
	movl	%eax,-24(%ebp)
	movl	-32(%ebp),%ecx
	movl	-24(%ebp),%eax
	movl	%eax,-312(%ebp,%ecx,4)
	movl	-24(%ebp),%eax
	cmpl	$1,%eax
	je	Lj570
	jmp	Lj571
Lj570:
	movl	-32(%ebp),%eax
	movl	%eax,-36(%ebp)
Lj571:
	cmpl	-32(%ebp),%edx
	jg	Lj559
Lj558:
	movl	$0,-28(%ebp)
	movl	$0,-44(%ebp)
	movl	-20(%ebp),%eax
	movl	64(%eax),%edx
	movl	-20(%ebp),%eax
	movl	60(%eax),%eax
	leal	(%edx,%eax,1),%eax
	movl	%eax,-40(%ebp)
	movl	-48(%ebp),%esi
	movl	-4(%ebp),%eax
	movl	296(%eax),%eax
	movl	%eax,-32(%ebp)
	cmpl	-32(%ebp),%esi
	jl	Lj581
	decl	-32(%ebp)
	.align 2
Lj582:
	incl	-32(%ebp)
	movl	-32(%ebp),%eax
	movl	-312(%ebp,%eax,4),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj585
	jmp	Lj586
Lj585:
	incl	-28(%ebp)
	jmp	Lj580
Lj586:
	jmp	Lj588
	.align 2
Lj587:
	movl	-20(%ebp),%eax
	call	L_JCPHUFF_EMIT_EOBRUN$PHUFF_ENTROPY_PTR$stub
	movl	-20(%ebp),%eax
	movl	52(%eax),%edx
	movl	-20(%ebp),%eax
	movl	$240,%ecx
	call	L_JCPHUFF_EMIT_SYMBOL$PHUFF_ENTROPY_PTR$LONGINT$LONGINT$stub
	subl	$16,-28(%ebp)
	movl	-44(%ebp),%ecx
	movl	-40(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_JCPHUFF_EMIT_BUFFERED_BITS$PHUFF_ENTROPY_PTR$JBYTEPTR$LONGWORD$stub
	movl	-20(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	$0,-44(%ebp)
Lj588:
	movl	-28(%ebp),%eax
	cmpl	$15,%eax
	jg	Lj608
	jmp	Lj589
Lj608:
	movl	-32(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jle	Lj587
	jmp	Lj589
Lj589:
	movl	-24(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj609
	jmp	Lj610
Lj609:
	movl	-40(%ebp),%ecx
	movl	-44(%ebp),%edx
	movl	-24(%ebp),%eax
	andl	$1,%eax
	movb	%al,(%ecx,%edx,1)
	incl	-44(%ebp)
	jmp	Lj580
Lj610:
	movl	-20(%ebp),%eax
	call	L_JCPHUFF_EMIT_EOBRUN$PHUFF_ENTROPY_PTR$stub
	movl	-28(%ebp),%ecx
	shll	$4,%ecx
	incl	%ecx
	movl	-20(%ebp),%eax
	movl	52(%eax),%edx
	movl	-20(%ebp),%eax
	call	L_JCPHUFF_EMIT_SYMBOL$PHUFF_ENTROPY_PTR$LONGINT$LONGINT$stub
	movl	-56(%ebp),%ecx
	movl	-32(%ebp),%eax
	movl	L_TC_JUTILS_JPEG_NATURAL_ORDER$non_lazy_ptr-Lj534(%ebx),%edx
	movl	(%edx,%eax,4),%eax
	movl	(%ecx,%eax,4),%eax
	cmpl	$0,%eax
	jl	Lj621
	jmp	Lj622
Lj621:
	movl	$0,-24(%ebp)
	jmp	Lj625
Lj622:
	movl	$1,-24(%ebp)
Lj625:
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	$1,%ecx
	call	L_JCPHUFF_EMIT_BITS$PHUFF_ENTROPY_PTR$LONGWORD$LONGINT$stub
	movl	-44(%ebp),%ecx
	movl	-40(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_JCPHUFF_EMIT_BUFFERED_BITS$PHUFF_ENTROPY_PTR$JBYTEPTR$LONGWORD$stub
	movl	-20(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	$0,-44(%ebp)
	movl	$0,-28(%ebp)
Lj580:
	cmpl	-32(%ebp),%esi
	jg	Lj582
Lj581:
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj646
	jmp	Lj648
Lj648:
	movl	-44(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj646
	jmp	Lj647
Lj646:
	movl	-20(%ebp),%eax
	incl	56(%eax)
	movl	-20(%ebp),%eax
	movl	-44(%ebp),%edx
	addl	%edx,60(%eax)
	movl	-20(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$32767,%eax
	je	Lj649
	jmp	Lj651
Lj651:
	movl	-20(%ebp),%eax
	movl	60(%eax),%eax
	cmpl	$937,%eax
	ja	Lj649
	jmp	Lj650
Lj649:
	movl	-20(%ebp),%eax
	call	L_JCPHUFF_EMIT_EOBRUN$PHUFF_ENTROPY_PTR$stub
Lj650:
Lj647:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	testl	%eax,%eax
	jne	Lj658
	jmp	Lj659
Lj658:
	movl	-20(%ebp),%eax
	movl	68(%eax),%eax
	testl	%eax,%eax
	je	Lj660
	jmp	Lj661
Lj660:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	184(%eax),%eax
	movl	%eax,68(%edx)
	movl	-20(%ebp),%eax
	incl	72(%eax)
	movl	-20(%ebp),%eax
	movl	72(%eax),%edx
	andl	$7,%edx
	movl	%edx,72(%eax)
Lj661:
	movl	-20(%ebp),%eax
	decl	68(%eax)
Lj659:
	movb	$1,-13(%ebp)
	movb	-13(%ebp),%al
	movl	-320(%ebp),%ebx
	movl	-316(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JCPHUFF_FINISH_PASS_PHUFF$J_COMPRESS_PTR
_JCPHUFF_FINISH_PASS_PHUFF$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	344(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,16(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%edx
	movl	4(%eax),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%eax
	call	L_JCPHUFF_EMIT_EOBRUN$PHUFF_ENTROPY_PTR$stub
	movl	-8(%ebp),%eax
	call	L_JCPHUFF_FLUSH_BITS$PHUFF_ENTROPY_PTR$stub
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,4(%edx)
	leave
	ret

.text
	.align 4
.globl	_JCPHUFF_FINISH_PASS_GATHER_PHUFF$J_COMPRESS_PTR
_JCPHUFF_FINISH_PASS_GATHER_PHUFF$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	344(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	call	L_JCPHUFF_EMIT_EOBRUN$PHUFF_ENTROPY_PTR$stub
	movl	-4(%ebp),%eax
	movl	296(%eax),%eax
	testl	%eax,%eax
	seteb	-9(%ebp)
	leal	-32(%ebp),%eax
	movl	$4,%edx
	call	L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	224(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj699
	decl	-16(%ebp)
	.align 2
Lj700:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	228(%eax,%edx,4),%eax
	movl	%eax,-24(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj703
	jmp	Lj704
Lj703:
	movl	-4(%ebp),%eax
	movl	304(%eax),%eax
	testl	%eax,%eax
	jne	Lj705
	jmp	Lj706
Lj705:
	jmp	Lj698
Lj706:
	movl	-24(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj709
Lj704:
	movl	-24(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-20(%ebp)
Lj709:
	movl	-20(%ebp),%eax
	movb	-32(%ebp,%eax,1),%al
	testb	%al,%al
	je	Lj712
	jmp	Lj713
Lj712:
	cmpb	$0,-9(%ebp)
	jne	Lj714
	jmp	Lj715
Lj714:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	84(%edx,%eax,4),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj718
Lj715:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	100(%eax,%edx,4),%eax
	movl	%eax,-28(%ebp)
Lj718:
	movl	-28(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj721
	jmp	Lj722
Lj721:
	movl	-4(%ebp),%eax
	call	L_JCOMAPI_JPEG_ALLOC_HUFF_TABLE$J_COMMON_PTR$$JHUFF_TBL_PTR$stub
	movl	-28(%ebp),%edx
	movl	%eax,(%edx)
Lj722:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	92(%eax,%edx,4),%ecx
	movl	-28(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_JCHUFF_JPEG_GEN_OPTIMAL_TABLE$J_COMPRESS_PTR$JHUFF_TBL_PTR$TLONGTABLE$stub
	movl	-20(%ebp),%eax
	movb	$1,-32(%ebp,%eax,1)
Lj713:
Lj698:
	cmpl	-16(%ebp),%ebx
	jg	Lj700
Lj699:
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCPHUFF_JINIT_PHUFF_ENCODER$J_COMPRESS_PTR
_JCPHUFF_JINIT_PHUFF_ENCODER$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj736
Lj736:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$108,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,344(%eax)
	movl	-8(%ebp),%edx
	movl	L_JCPHUFF_START_PASS_PHUFF$J_COMPRESS_PTR$BOOLEAN$non_lazy_ptr-Lj736(%esi),%eax
	movl	%eax,(%edx)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.align 2
Lj751:
	incl	-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,76(%edx,%eax,4)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,92(%edx,%eax,4)
	cmpl	$3,-12(%ebp)
	jl	Lj751
	movl	-8(%ebp),%eax
	movl	$0,64(%eax)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JCPHUFF
_THREADVARLIST_JCPHUFF:
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

L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub:
.indirect_symbol _JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub:
.indirect_symbol _JINCLUDE_MEMZERO$POINTER$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCHUFF_JPEG_MAKE_C_DERIVED_TBL$J_COMPRESS_PTR$BOOLEAN$LONGINT$C_DERIVED_TBL_PTR$stub:
.indirect_symbol _JCHUFF_JPEG_MAKE_C_DERIVED_TBL$J_COMPRESS_PTR$BOOLEAN$LONGINT$C_DERIVED_TBL_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPHUFF_DUMP_BUFFER$PHUFF_ENTROPY_PTR$stub:
.indirect_symbol _JCPHUFF_DUMP_BUFFER$PHUFF_ENTROPY_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPHUFF_EMIT_BITS$PHUFF_ENTROPY_PTR$LONGWORD$LONGINT$stub:
.indirect_symbol _JCPHUFF_EMIT_BITS$PHUFF_ENTROPY_PTR$LONGWORD$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPHUFF_EMIT_SYMBOL$PHUFF_ENTROPY_PTR$LONGINT$LONGINT$stub:
.indirect_symbol _JCPHUFF_EMIT_SYMBOL$PHUFF_ENTROPY_PTR$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPHUFF_EMIT_BUFFERED_BITS$PHUFF_ENTROPY_PTR$JBYTEPTR$LONGWORD$stub:
.indirect_symbol _JCPHUFF_EMIT_BUFFERED_BITS$PHUFF_ENTROPY_PTR$JBYTEPTR$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPHUFF_EMIT_EOBRUN$PHUFF_ENTROPY_PTR$stub:
.indirect_symbol _JCPHUFF_EMIT_EOBRUN$PHUFF_ENTROPY_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPHUFF_FLUSH_BITS$PHUFF_ENTROPY_PTR$stub:
.indirect_symbol _JCPHUFF_FLUSH_BITS$PHUFF_ENTROPY_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCPHUFF_EMIT_RESTART$PHUFF_ENTROPY_PTR$LONGINT$stub:
.indirect_symbol _JCPHUFF_EMIT_RESTART$PHUFF_ENTROPY_PTR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCOMAPI_JPEG_ALLOC_HUFF_TABLE$J_COMMON_PTR$$JHUFF_TBL_PTR$stub:
.indirect_symbol _JCOMAPI_JPEG_ALLOC_HUFF_TABLE$J_COMMON_PTR$$JHUFF_TBL_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCHUFF_JPEG_GEN_OPTIMAL_TABLE$J_COMPRESS_PTR$JHUFF_TBL_PTR$TLONGTABLE$stub:
.indirect_symbol _JCHUFF_JPEG_GEN_OPTIMAL_TABLE$J_COMPRESS_PTR$JHUFF_TBL_PTR$TLONGTABLE
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
L_JCPHUFF_ENCODE_MCU_DC_FIRST$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JCPHUFF_ENCODE_MCU_DC_FIRST$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCPHUFF_ENCODE_MCU_AC_FIRST$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JCPHUFF_ENCODE_MCU_AC_FIRST$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCPHUFF_ENCODE_MCU_DC_REFINE$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JCPHUFF_ENCODE_MCU_DC_REFINE$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCPHUFF_ENCODE_MCU_AC_REFINE$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JCPHUFF_ENCODE_MCU_AC_REFINE$J_COMPRESS_PTR$array_of_JBLOCKROW$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCPHUFF_FINISH_PASS_GATHER_PHUFF$J_COMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JCPHUFF_FINISH_PASS_GATHER_PHUFF$J_COMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCPHUFF_FINISH_PASS_PHUFF$J_COMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JCPHUFF_FINISH_PASS_PHUFF$J_COMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_JUTILS_JPEG_NATURAL_ORDER$non_lazy_ptr:
.indirect_symbol _TC_JUTILS_JPEG_NATURAL_ORDER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCPHUFF_START_PASS_PHUFF$J_COMPRESS_PTR$BOOLEAN$non_lazy_ptr:
.indirect_symbol _JCPHUFF_START_PASS_PHUFF$J_COMPRESS_PTR$BOOLEAN
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

