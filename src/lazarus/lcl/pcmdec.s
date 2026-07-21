	.file "pcmdec.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
PCMDEC_FORMATFROMWORD$WORD$$TWAVFORMAT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	cmpw	$1,%ax
	jb	Lj6
	decw	%ax
	je	Lj7
	subw	$2,%ax
	je	Lj8
	subw	$3,%ax
	je	Lj9
	decw	%ax
	je	Lj10
	jmp	Lj6
Lj7:
	movl	$1,-8(%ebp)
	jmp	Lj5
Lj8:
	movl	$2,-8(%ebp)
	jmp	Lj5
Lj9:
	movl	$3,-8(%ebp)
	jmp	Lj5
Lj10:
	movl	$4,-8(%ebp)
	jmp	Lj5
Lj6:
	movl	$0,-8(%ebp)
Lj5:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	PCMDEC_WAVLOADMEM$PBYTE$LONGWORD$TWAVINFO$$BOOLEAN
PCMDEC_WAVLOADMEM$PBYTE$LONGWORD$TWAVINFO$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$116,%esp
	movl	%ebx,-116(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-112(%ebp)
	leal	-80(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj23
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$36,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj34
	jmp	Lj36
Lj36:
	movl	-8(%ebp),%eax
	cmpl	$36,%eax
	jb	Lj34
	jmp	Lj35
Lj34:
	jmp	Lj23
Lj35:
	movl	-4(%ebp),%eax
	leal	-32(%ebp),%edx
	movl	$12,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%eax
	pushl	%eax
	leal	-32(%ebp),%eax
	movb	$1,%cl
	movl	$3,%edx
	call	fpc_chararray_to_ansistr
	movl	-112(%ebp),%eax
	movl	$_$PCMDEC$_Ld1,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	jne	Lj43
	jmp	Lj45
Lj45:
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%eax
	pushl	%eax
	leal	-24(%ebp),%eax
	movb	$1,%cl
	movl	$3,%edx
	call	fpc_chararray_to_ansistr
	movl	-112(%ebp),%eax
	movl	$_$PCMDEC$_Ld2,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	jne	Lj43
	jmp	Lj44
Lj43:
	jmp	Lj23
Lj44:
	movl	$12,-20(%ebp)
	movb	$0,-65(%ebp)
	movb	$0,-66(%ebp)
	jmp	Lj77
	.balign 4,0x90
Lj76:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	(%edx,%eax,1),%eax
	leal	-64(%ebp),%edx
	movl	$8,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	addl	$8,-20(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%eax
	pushl	%eax
	leal	-64(%ebp),%eax
	movb	$1,%cl
	movl	$3,%edx
	call	fpc_chararray_to_ansistr
	movl	-112(%ebp),%eax
	movl	$_$PCMDEC$_Ld3,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	je	Lj85
	jmp	Lj86
Lj85:
	movl	-20(%ebp),%eax
	addl	$16,%eax
	cmpl	-8(%ebp),%eax
	ja	Lj99
	jmp	Lj100
Lj99:
	jmp	Lj23
Lj100:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	$8,%eax
	leal	(%edx,%eax,1),%eax
	leal	-56(%ebp),%edx
	movl	$24,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movw	-48(%ebp),%ax
	call	PCMDEC_FORMATFROMWORD$WORD$$TWAVFORMAT
	movl	-12(%ebp),%edx
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movw	-46(%ebp),%dx
	movw	%dx,4(%eax)
	movl	-12(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-12(%ebp),%eax
	movl	-40(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-12(%ebp),%eax
	movw	-36(%ebp),%dx
	movw	%dx,14(%eax)
	movl	-12(%ebp),%edx
	movw	-34(%ebp),%ax
	movw	%ax,12(%edx)
	movb	$1,-65(%ebp)
	jmp	Lj123
Lj86:
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%eax
	pushl	%eax
	leal	-64(%ebp),%eax
	movb	$1,%cl
	movl	$3,%edx
	call	fpc_chararray_to_ansistr
	movl	-112(%ebp),%eax
	movl	$_$PCMDEC$_Ld4,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	je	Lj124
	jmp	Lj125
Lj124:
	movl	-12(%ebp),%edx
	movl	-60(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-8(%ebp),%edx
	movl	$0,%ecx
	movl	-20(%ebp),%eax
	movl	$0,%ebx
	subl	%eax,%edx
	sbbl	%ebx,%ecx
	movl	-12(%ebp),%eax
	movl	20(%eax),%ebx
	movl	$0,%eax
	cmpl	%eax,%ecx
	jl	Lj140
	jg	Lj141
	cmpl	%ebx,%edx
	jb	Lj140
	jmp	Lj141
Lj140:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	%edx,20(%eax)
Lj141:
	movl	-12(%ebp),%eax
	movl	20(%eax),%edx
	movl	-12(%ebp),%eax
	leal	28(%eax),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	-12(%ebp),%edx
	movl	28(%edx),%edx
	movl	-12(%ebp),%ecx
	movl	20(%ecx),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movb	$1,-66(%ebp)
Lj125:
Lj123:
	movl	-20(%ebp),%eax
	subl	$8,%eax
	addl	$8,%eax
	movl	-60(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj158
	jmp	Lj159
Lj158:
	incl	-20(%ebp)
Lj159:
	cmpb	$0,-65(%ebp)
	jne	Lj162
	jmp	Lj161
Lj162:
	cmpb	$0,-66(%ebp)
	jne	Lj160
	jmp	Lj161
Lj160:
	jmp	Lj78
Lj161:
Lj77:
	movl	-20(%ebp),%eax
	addl	$8,%eax
	cmpl	-8(%ebp),%eax
	jbe	Lj76
	jmp	Lj78
Lj78:
	cmpb	$0,-65(%ebp)
	jne	Lj166
	jmp	Lj164
Lj166:
	cmpb	$0,-66(%ebp)
	jne	Lj165
	jmp	Lj164
Lj165:
	movl	-12(%ebp),%eax
	movzwl	14(%eax),%eax
	cmpl	$0,%eax
	jg	Lj163
	jmp	Lj164
Lj163:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movzwl	14(%eax),%ecx
	movl	20(%edx),%eax
	xorl	%edx,%edx
	divl	%ecx
	movl	-12(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-12(%ebp),%eax
	movb	$1,32(%eax)
	movb	$1,-13(%ebp)
	jmp	Lj173
Lj164:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	jne	Lj174
	jmp	Lj175
Lj174:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-12(%ebp),%eax
	movl	$0,28(%eax)
Lj175:
Lj173:
Lj23:
	call	FPC_POPADDRSTACK
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj24
	call	FPC_RERAISE
Lj24:
	movb	-13(%ebp),%al
	movl	-116(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	PCMDEC_WAVLOADSTREAM$TSTREAM$TWAVINFO$$BOOLEAN
PCMDEC_WAVLOADSTREAM$TSTREAM$TWAVINFO$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	subl	%eax,%ebx
	sbbl	%edx,%esi
	movl	%ebx,-20(%ebp)
	movl	-20(%ebp),%edx
	leal	-16(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj192
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	PCMDEC_WAVLOADMEM$PBYTE$LONGWORD$TWAVINFO$$BOOLEAN
	movb	%al,-9(%ebp)
Lj192:
	call	FPC_POPADDRSTACK
	movl	-16(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	popl	%eax
	testl	%eax,%eax
	je	Lj193
	decl	%eax
	testl	%eax,%eax
	je	Lj194
Lj194:
	call	FPC_RERAISE
Lj193:
	movb	-9(%ebp),%al
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	PCMDEC_WAVLOADFILE$ANSISTRING$TWAVINFO$$BOOLEAN
PCMDEC_WAVLOADFILE$ANSISTRING$TWAVINFO$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$36,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-4(%ebp),%eax
	call	SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN
	testb	%al,%al
	je	Lj222
	jmp	Lj223
Lj222:
	jmp	Lj212
Lj223:
	pushl	$64
	movl	-4(%ebp),%ecx
	movl	$VMT_CLASSES_TFILESTREAM,%edx
	movl	$0,%eax
	call	CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj236
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	PCMDEC_WAVLOADSTREAM$TSTREAM$TWAVINFO$$BOOLEAN
	movb	%al,-9(%ebp)
Lj236:
	call	FPC_POPADDRSTACK
	movl	-16(%ebp),%eax
	call	SYSTEM_TOBJECT_$__FREE
	popl	%eax
	testl	%eax,%eax
	je	Lj237
	decl	%eax
	testl	%eax,%eax
	je	Lj238
Lj238:
	call	FPC_RERAISE
Lj237:
Lj212:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	PCMDEC_WAVGETINFO$ANSISTRING$TWAVINFO$$BOOLEAN
PCMDEC_WAVGETINFO$ANSISTRING$TWAVINFO$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$412,%esp
	movl	%ebx,-412(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-408(%ebp)
	leal	-336(%ebp),%ecx
	leal	-360(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj250
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$36,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-4(%ebp),%eax
	call	SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN
	testb	%al,%al
	je	Lj261
	jmp	Lj262
Lj261:
	jmp	Lj250
Lj262:
	pushl	$64
	movl	-4(%ebp),%ecx
	movl	$VMT_CLASSES_TFILESTREAM,%edx
	movl	$0,%eax
	call	CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM
	movl	%eax,-16(%ebp)
	leal	-376(%ebp),%ecx
	leal	-400(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj275
	leal	-272(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	$256,%ecx
	movl	-16(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	%eax,-276(%ebp)
	movl	-276(%ebp),%eax
	cmpl	$36,%eax
	jl	Lj287
	jmp	Lj288
Lj287:
	jmp	Lj278
Lj288:
	leal	-288(%ebp),%edx
	leal	-272(%ebp),%eax
	movl	$12,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leal	-408(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-408(%ebp)
	leal	-408(%ebp),%eax
	pushl	%eax
	leal	-288(%ebp),%eax
	movb	$1,%cl
	movl	$3,%edx
	call	fpc_chararray_to_ansistr
	movl	-408(%ebp),%eax
	movl	$_$PCMDEC$_Ld1,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	jne	Lj295
	jmp	Lj297
Lj297:
	leal	-408(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-408(%ebp)
	leal	-408(%ebp),%eax
	pushl	%eax
	leal	-280(%ebp),%eax
	movb	$1,%cl
	movl	$3,%edx
	call	fpc_chararray_to_ansistr
	movl	-408(%ebp),%eax
	movl	$_$PCMDEC$_Ld2,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	jne	Lj295
	jmp	Lj296
Lj295:
	jmp	Lj278
Lj296:
	movl	$12,-324(%ebp)
	jmp	Lj325
	.balign 4,0x90
Lj324:
	movl	-324(%ebp),%eax
	leal	-272(%ebp,%eax,1),%eax
	leal	-320(%ebp),%edx
	movl	$8,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	addl	$8,-324(%ebp)
	leal	-408(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-408(%ebp)
	leal	-408(%ebp),%eax
	pushl	%eax
	leal	-320(%ebp),%eax
	movb	$1,%cl
	movl	$3,%edx
	call	fpc_chararray_to_ansistr
	movl	-408(%ebp),%eax
	movl	$_$PCMDEC$_Ld3,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	je	Lj333
	jmp	Lj334
Lj333:
	movl	-324(%ebp),%eax
	subl	$8,%eax
	leal	-272(%ebp,%eax,1),%eax
	leal	-312(%ebp),%edx
	movl	$24,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movw	-304(%ebp),%ax
	call	PCMDEC_FORMATFROMWORD$WORD$$TWAVFORMAT
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movw	-302(%ebp),%ax
	movw	%ax,4(%edx)
	movl	-8(%ebp),%eax
	movl	-300(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-8(%ebp),%eax
	movl	-296(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-8(%ebp),%edx
	movw	-292(%ebp),%ax
	movw	%ax,14(%edx)
	movl	-8(%ebp),%edx
	movw	-290(%ebp),%ax
	movw	%ax,12(%edx)
	jmp	Lj367
Lj334:
	leal	-408(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-408(%ebp)
	leal	-408(%ebp),%eax
	pushl	%eax
	leal	-320(%ebp),%eax
	movb	$1,%cl
	movl	$3,%edx
	call	fpc_chararray_to_ansistr
	movl	-408(%ebp),%eax
	movl	$_$PCMDEC$_Ld4,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	je	Lj368
	jmp	Lj369
Lj368:
	movl	-8(%ebp),%eax
	movl	-316(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-8(%ebp),%eax
	movzwl	14(%eax),%eax
	cmpl	$0,%eax
	jg	Lj384
	jmp	Lj385
Lj384:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movzwl	14(%eax),%ecx
	movl	20(%edx),%eax
	xorl	%edx,%edx
	divl	%ecx
	movl	-8(%ebp),%edx
	movl	%eax,24(%edx)
Lj385:
	movl	-8(%ebp),%eax
	movb	$1,32(%eax)
	movb	$1,-9(%ebp)
	jmp	Lj278
Lj369:
Lj367:
	movl	-324(%ebp),%edx
	subl	$8,%edx
	addl	$8,%edx
	movl	-316(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-324(%ebp)
	movl	-324(%ebp),%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj394
	jmp	Lj395
Lj394:
	incl	-324(%ebp)
Lj395:
Lj325:
	movl	-324(%ebp),%eax
	addl	$8,%eax
	cmpl	-276(%ebp),%eax
	jbe	Lj324
	jmp	Lj326
Lj326:
Lj275:
	call	FPC_POPADDRSTACK
	movl	-16(%ebp),%eax
	call	SYSTEM_TOBJECT_$__FREE
	popl	%eax
	testl	%eax,%eax
	je	Lj276
	decl	%eax
	testl	%eax,%eax
	je	Lj277
	decl	%eax
	testl	%eax,%eax
	je	Lj250
Lj277:
	call	FPC_RERAISE
Lj278:
	popl	%eax
	pushl	$2
	jmp	Lj275
Lj276:
Lj250:
	call	FPC_POPADDRSTACK
	leal	-408(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-408(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj251
	call	FPC_RERAISE
Lj251:
	movb	-9(%ebp),%al
	movl	-412(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	PCMDEC_WAVFREE$TWAVINFO
PCMDEC_WAVFREE$TWAVINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	jne	Lj400
	jmp	Lj401
Lj400:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
Lj401:
	movl	-4(%ebp),%eax
	movb	$0,32(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	PCMDEC_WAVDURATIONMS$TWAVINFO$$LONGWORD
PCMDEC_WAVDURATIONMS$TWAVINFO$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	ja	Lj410
	jmp	Lj411
Lj410:
	movl	-4(%ebp),%edx
	movl	$1000,%eax
	mull	20(%edx)
	movl	-4(%ebp),%ecx
	xorl	%edx,%edx
	divl	16(%ecx)
	movl	%eax,-8(%ebp)
	jmp	Lj414
Lj411:
	movl	$0,-8(%ebp)
Lj414:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	PCMDEC_WAVDURATIONSEC$TWAVINFO$$DOUBLE
PCMDEC_WAVDURATIONSEC$TWAVINFO$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	ja	Lj419
	jmp	Lj420
Lj419:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$0,-16(%ebp)
	fildq	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	$0,-24(%ebp)
	fildq	-28(%ebp)
	fdivrp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj423
Lj420:
	fldz
	fstpl	-12(%ebp)
Lj423:
	fldl	-12(%ebp)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_PCMDEC
THREADVARLIST_PCMDEC:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$PCMDEC$_Ld1
_$PCMDEC$_Ld1:
	.ascii	"RIFF\000"

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$PCMDEC$_Ld2
_$PCMDEC$_Ld2:
	.ascii	"WAVE\000"

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$PCMDEC$_Ld3
_$PCMDEC$_Ld3:
	.ascii	"fmt \000"

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$PCMDEC$_Ld4
_$PCMDEC$_Ld4:
	.ascii	"data\000"
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
.globl	INIT_PCMDEC_TWAVFORMAT
INIT_PCMDEC_TWAVFORMAT:
	.byte	3,10
	.ascii	"TWAVFormat"
	.byte	5
	.long	0,4,0
	.byte	9
	.ascii	"wfUnknown"
	.byte	5
	.ascii	"wfPCM"
	.byte	11
	.ascii	"wfIEEEFloat"
	.byte	6
	.ascii	"wfALaw"
	.byte	7
	.ascii	"wfMuLaw"
	.byte	6
	.ascii	"PCMDec"
	.byte	0

.data
	.balign 4
.globl	RTTI_PCMDEC_TWAVFORMAT
RTTI_PCMDEC_TWAVFORMAT:
	.byte	3,10
	.ascii	"TWAVFormat"
	.byte	5
	.long	0,4,0
	.byte	9
	.ascii	"wfUnknown"
	.byte	5
	.ascii	"wfPCM"
	.byte	11
	.ascii	"wfIEEEFloat"
	.byte	6
	.ascii	"wfALaw"
	.byte	7
	.ascii	"wfMuLaw"
	.byte	6
	.ascii	"PCMDec"
	.byte	0

.data
	.balign 4
.globl	RTTI_PCMDEC_TWAVFORMAT_s2o
RTTI_PCMDEC_TWAVFORMAT_s2o:
	.long	5,3
	.long	RTTI_PCMDEC_TWAVFORMAT+53
	.long	2
	.long	RTTI_PCMDEC_TWAVFORMAT+41
	.long	4
	.long	RTTI_PCMDEC_TWAVFORMAT+60
	.long	1
	.long	RTTI_PCMDEC_TWAVFORMAT+35
	.long	0
	.long	RTTI_PCMDEC_TWAVFORMAT+25

.data
	.balign 4
.globl	RTTI_PCMDEC_TWAVFORMAT_o2s
RTTI_PCMDEC_TWAVFORMAT_o2s:
	.long	0
	.long	RTTI_PCMDEC_TWAVFORMAT+25
	.long	RTTI_PCMDEC_TWAVFORMAT+35
	.long	RTTI_PCMDEC_TWAVFORMAT+41
	.long	RTTI_PCMDEC_TWAVFORMAT+53
	.long	RTTI_PCMDEC_TWAVFORMAT+60

.data
	.balign 4
.globl	INIT_PCMDEC_TWAVINFO
INIT_PCMDEC_TWAVINFO:
	.byte	13,8
	.ascii	"TWAVInfo"
	.long	36,0

.data
	.balign 4
.globl	RTTI_PCMDEC_TWAVINFO
RTTI_PCMDEC_TWAVINFO:
	.byte	13,8
	.ascii	"TWAVInfo"
	.long	36,10
	.long	RTTI_PCMDEC_TWAVFORMAT
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
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
	.long	RTTI_SYSTEM_PBYTE
	.long	28
	.long	RTTI_SYSTEM_BOOLEAN
	.long	32
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

