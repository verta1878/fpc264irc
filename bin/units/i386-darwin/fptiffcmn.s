# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPTIFFCMN_TIFFRATIONALTOSTR$TTIFFRATIONAL$$ANSISTRING
_FPTIFFCMN_TIFFRATIONALTOSTR$TTIFFRATIONAL$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj5
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	leal	-64(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	L_$FPTIFFCMN$_Ld1$non_lazy_ptr-Lj4(%ebx),%eax
	movl	%eax,-56(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	leal	-68(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj5:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj6
	call	LFPC_RERAISE$stub
Lj6:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPTIFFCMN_STRTOTIFFRATIONALDEF$ANSISTRING$TTIFFRATIONAL$$TTIFFRATIONAL
_FPTIFFCMN_STRTOTIFFRATIONALDEF$ANSISTRING$TTIFFRATIONAL$$TTIFFRATIONAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj23
Lj23:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj24
	movl	-8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	movb	$47,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj35
	jmp	Lj36
Lj35:
	jmp	Lj24
Lj36:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-64(%ebp),%eax
	movl	L_TC_FPTIFFCMN_TIFFRATIONAL0$non_lazy_ptr-Lj23(%ebx),%edx
	movl	(%edx),%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj61
	movl	-4(%ecx),%ecx
Lj61:
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-64(%ebp),%eax
	movl	L_TC_FPTIFFCMN_TIFFRATIONAL0$non_lazy_ptr-Lj23(%ebx),%edx
	movl	4(%edx),%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
Lj24:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj25
	call	LFPC_RERAISE$stub
Lj25:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPTIFFCMN_CLEARTIFFEXTRAS$TFPCUSTOMIMAGE
_FPTIFFCMN_CLEARTIFFEXTRAS$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj67
Lj67:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj68
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__EXTRACOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jl	Lj72
	incl	-8(%ebp)
	.align 2
Lj73:
	decl	-8(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,(%esp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRAKEY$LONGINT$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	movl	$4,%ecx
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-52(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld3$non_lazy_ptr-Lj67(%ebx),%edx
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	je	Lj76
	jmp	Lj77
Lj76:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRAKEY$LONGINT$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__REMOVEEXTRA$ANSISTRING$stub
Lj77:
	cmpl	$0,-8(%ebp)
	jg	Lj73
Lj72:
Lj68:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj69
	call	LFPC_RERAISE$stub
Lj69:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPTIFFCMN_COPYTIFFEXTRAS$TFPCUSTOMIMAGE$TFPCUSTOMIMAGE
_FPTIFFCMN_COPYTIFFEXTRAS$TFPCUSTOMIMAGE$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj107
Lj107:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj108
	movl	-8(%ebp),%eax
	call	L_FPTIFFCMN_CLEARTIFFEXTRAS$TFPCUSTOMIMAGE$stub
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__EXTRACOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jl	Lj114
	incl	-12(%ebp)
	.align 2
Lj115:
	decl	-12(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRAKEY$LONGINT$$ANSISTRING$stub
	movl	-60(%ebp),%eax
	movl	$4,%ecx
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-56(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld3$non_lazy_ptr-Lj107(%ebx),%edx
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	je	Lj118
	jmp	Lj119
Lj118:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRAVALUE$LONGINT$$ANSISTRING$stub
	movl	-60(%ebp),%esi
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRAKEY$LONGINT$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%esi,%ecx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub
Lj119:
	cmpl	$0,-12(%ebp)
	jg	Lj115
Lj114:
Lj108:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj109
	call	LFPC_RERAISE$stub
Lj109:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPTIFFCMN_WRITETIFFEXTRAS$ANSISTRING$TFPCUSTOMIMAGE
_FPTIFFCMN_WRITETIFFEXTRAS$ANSISTRING$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	call	Lj157
Lj157:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj158
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$FPTIFFCMN$_Ld5$non_lazy_ptr-Lj157(%edi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__EXTRACOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj178
	decl	-12(%ebp)
	.align 2
Lj179:
	incl	-12(%ebp)
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	%esi,%edx
	movl	L_$FPTIFFCMN$_Ld6$non_lazy_ptr-Lj157(%edi),%eax
	movl	%eax,%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-12(%ebp),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_sint$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movb	$32,%cl
	movl	$0,%eax
	call	Lfpc_write_text_char$stub
	call	LFPC_IOCHECK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRAKEY$LONGINT$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movb	$61,%cl
	movl	$0,%eax
	call	Lfpc_write_text_char$stub
	call	LFPC_IOCHECK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRAVALUE$LONGINT$$ANSISTRING$stub
	movl	-56(%ebp),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	cmpl	-12(%ebp),%ebx
	jg	Lj179
Lj178:
Lj158:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj159
	call	LFPC_RERAISE$stub
Lj159:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPTIFFCMN_TIFFCOMPRESSIONNAME$WORD$$ANSISTRING
_FPTIFFCMN_TIFFCOMPRESSIONNAME$WORD$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	call	Lj235
Lj235:
	popl	%esi
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj236
	movw	-4(%ebp),%ax
	cmpw	$1,%ax
	jb	Lj240
	decw	%ax
	je	Lj241
	decw	%ax
	je	Lj242
	decw	%ax
	je	Lj243
	decw	%ax
	je	Lj244
	decw	%ax
	je	Lj245
	decw	%ax
	je	Lj246
	decw	%ax
	je	Lj247
	decw	%ax
	je	Lj248
	decw	%ax
	je	Lj249
	decw	%ax
	je	Lj250
	subw	$32756,%ax
	je	Lj251
	subw	$5,%ax
	je	Lj252
	subw	$2,%ax
	je	Lj253
	subw	$36,%ax
	je	Lj254
	subw	$86,%ax
	je	Lj255
	decw	%ax
	je	Lj256
	decw	%ax
	je	Lj257
	decw	%ax
	je	Lj258
	subw	$10,%ax
	je	Lj259
	decw	%ax
	je	Lj260
	subw	$37,%ax
	je	Lj261
	decw	%ax
	je	Lj262
	subw	$1714,%ax
	je	Lj263
	subw	$15,%ax
	je	Lj264
	decw	%ax
	je	Lj265
	subw	$35,%ax
	je	Lj266
	jmp	Lj240
Lj241:
	movl	L_$FPTIFFCMN$_Ld7$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj242:
	movl	L_$FPTIFFCMN$_Ld9$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj243:
	movl	L_$FPTIFFCMN$_Ld11$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj244:
	movl	L_$FPTIFFCMN$_Ld13$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj245:
	movl	L_$FPTIFFCMN$_Ld15$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj246:
	movl	L_$FPTIFFCMN$_Ld17$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj247:
	movl	L_$FPTIFFCMN$_Ld19$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj248:
	movl	L_$FPTIFFCMN$_Ld21$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj249:
	movl	L_$FPTIFFCMN$_Ld23$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj250:
	movl	L_$FPTIFFCMN$_Ld25$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj251:
	movl	L_$FPTIFFCMN$_Ld27$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj252:
	movl	L_$FPTIFFCMN$_Ld29$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj253:
	movl	L_$FPTIFFCMN$_Ld31$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj254:
	movl	L_$FPTIFFCMN$_Ld33$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj255:
	movl	L_$FPTIFFCMN$_Ld35$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj256:
	movl	L_$FPTIFFCMN$_Ld37$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj257:
	movl	L_$FPTIFFCMN$_Ld39$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj258:
	movl	L_$FPTIFFCMN$_Ld41$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj259:
	movl	L_$FPTIFFCMN$_Ld43$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj260:
	movl	L_$FPTIFFCMN$_Ld45$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj261:
	movl	L_$FPTIFFCMN$_Ld47$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj262:
	movl	L_$FPTIFFCMN$_Ld49$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj263:
	movl	L_$FPTIFFCMN$_Ld51$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj264:
	movl	L_$FPTIFFCMN$_Ld53$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj265:
	movl	L_$FPTIFFCMN$_Ld55$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj266:
	movl	L_$FPTIFFCMN$_Ld57$non_lazy_ptr-Lj235(%esi),%ebx
	movl	-8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj239
Lj240:
	movl	L_$FPTIFFCMN$_Ld59$non_lazy_ptr-Lj235(%esi),%eax
	movl	%eax,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movzwl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	L_$FPTIFFCMN$_Ld61$non_lazy_ptr-Lj235(%esi),%eax
	movl	%eax,-52(%ebp)
	leal	-60(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj239:
Lj236:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj237
	call	LFPC_RERAISE$stub
Lj237:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPTIFFCMN_TTIFFIFD_$__CLEAR
_FPTIFFCMN_TTIFFIFD_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	Lj330
Lj330:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,104(%eax)
	movl	-4(%ebp),%eax
	movl	$1,108(%eax)
	movl	-4(%ebp),%eax
	movl	$1,36(%eax)
	movl	-4(%ebp),%eax
	movw	$1,40(%eax)
	movl	-4(%ebp),%eax
	movl	$0,72(%eax)
	movl	-4(%ebp),%eax
	movl	$0,80(%eax)
	movl	-4(%ebp),%eax
	movb	$0,78(%eax)
	movl	-4(%ebp),%eax
	movb	$0,77(%eax)
	movl	-4(%ebp),%eax
	movb	$0,76(%eax)
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	$0,-8(%ebp)
	leal	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_FPTIFFCMN_DEF86$non_lazy_ptr-Lj330(%ebx),%edx
	movl	-4(%ebp),%eax
	leal	20(%eax),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-4(%ebp),%eax
	movl	$0,112(%eax)
	movl	-4(%ebp),%edx
	movl	L_TC_FPTIFFCMN_TIFFRATIONAL0$non_lazy_ptr-Lj330(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,156(%edx)
	movl	L_TC_FPTIFFCMN_TIFFRATIONAL0$non_lazy_ptr-Lj330(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,160(%edx)
	movl	-4(%ebp),%edx
	movl	L_TC_FPTIFFCMN_TIFFRATIONAL0$non_lazy_ptr-Lj330(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,164(%edx)
	movl	L_TC_FPTIFFCMN_TIFFRATIONAL0$non_lazy_ptr-Lj330(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,168(%edx)
	movl	-4(%ebp),%eax
	movl	$0,116(%eax)
	movl	-4(%ebp),%eax
	movl	$0,132(%eax)
	movl	-4(%ebp),%eax
	movl	$0,128(%eax)
	movl	-4(%ebp),%eax
	movl	$0,120(%eax)
	movl	-4(%ebp),%esi
	leal	12(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,12(%esi)
	movl	-4(%ebp),%esi
	leal	64(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,64(%esi)
	movl	-4(%ebp),%esi
	leal	68(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,68(%esi)
	movl	-4(%ebp),%esi
	leal	84(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,84(%esi)
	movl	-4(%ebp),%esi
	leal	88(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,88(%esi)
	movl	-4(%ebp),%esi
	leal	44(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,44(%esi)
	movl	-4(%ebp),%esi
	leal	48(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,48(%esi)
	movl	-4(%ebp),%esi
	leal	124(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,124(%esi)
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	movl	-4(%ebp),%eax
	movl	$0,24(%eax)
	movl	-4(%ebp),%eax
	movl	$0,60(%eax)
	movl	-4(%ebp),%eax
	movl	$0,92(%eax)
	movl	-4(%ebp),%eax
	movw	$0,96(%eax)
	movl	-4(%ebp),%eax
	movw	$0,98(%eax)
	movl	-4(%ebp),%esi
	leal	100(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,100(%esi)
	movl	-4(%ebp),%eax
	movl	$0,136(%eax)
	movl	-4(%ebp),%eax
	movl	$0,140(%eax)
	movl	-4(%ebp),%eax
	movl	$0,144(%eax)
	movl	-4(%ebp),%eax
	movl	$0,148(%eax)
	movl	-4(%ebp),%eax
	movl	$0,152(%eax)
	movl	-4(%ebp),%eax
	movw	$0,178(%eax)
	movl	-4(%ebp),%eax
	movw	$0,180(%eax)
	movl	-4(%ebp),%eax
	movw	$0,182(%eax)
	movl	-4(%ebp),%eax
	movw	$0,184(%eax)
	movl	-4(%ebp),%eax
	movw	$0,186(%eax)
	movl	-4(%ebp),%eax
	movw	$0,188(%eax)
	movl	-4(%ebp),%eax
	cmpb	$0,176(%eax)
	jne	Lj431
	jmp	Lj432
Lj431:
	movl	-4(%ebp),%eax
	movb	$0,176(%eax)
	movl	-4(%ebp),%eax
	leal	172(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj432:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPTIFFCMN_TTIFFIFD_$__ASSIGN$TTIFFIFD
_FPTIFFCMN_TTIFFIFD_$__ASSIGN$TTIFFIFD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	call	Lj438
Lj438:
	popl	%edi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	movl	%eax,104(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	movl	%eax,108(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	movl	%eax,36(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	40(%eax),%ax
	movw	%ax,40(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	movl	%eax,72(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	80(%eax),%eax
	movl	%eax,80(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	78(%eax),%al
	movb	%al,78(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	77(%eax),%al
	movb	%al,77(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	76(%eax),%al
	movb	%al,76(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,16(%edx)
	movl	-4(%ebp),%ebx
	movl	20(%ebx),%eax
	call	LFPC_DYNARRAY_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	L_INIT_FPTIFFCMN_DEF86$non_lazy_ptr-Lj438(%edi),%edx
	leal	20(%esi),%eax
	call	LFPC_DYNARRAY_DECR_REF$stub
	movl	20(%ebx),%eax
	movl	%eax,20(%esi)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	112(%eax),%eax
	movl	%eax,112(%edx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	156(%eax),%edx
	movl	%edx,156(%ecx)
	movl	160(%eax),%eax
	movl	%eax,160(%ecx)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	164(%eax),%edx
	movl	%edx,164(%ecx)
	movl	168(%eax),%eax
	movl	%eax,168(%ecx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	116(%eax),%eax
	movl	%eax,116(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	132(%eax),%eax
	movl	%eax,132(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	128(%eax),%eax
	movl	%eax,128(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	120(%eax),%eax
	movl	%eax,120(%edx)
	movl	-4(%ebp),%esi
	movl	12(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	12(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	12(%esi),%eax
	movl	%eax,12(%ebx)
	movl	-4(%ebp),%esi
	movl	64(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	64(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	64(%esi),%eax
	movl	%eax,64(%ebx)
	movl	-4(%ebp),%esi
	movl	68(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	68(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	68(%esi),%eax
	movl	%eax,68(%ebx)
	movl	-4(%ebp),%esi
	movl	84(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	84(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	84(%esi),%eax
	movl	%eax,84(%ebx)
	movl	-4(%ebp),%esi
	movl	88(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	88(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	88(%esi),%eax
	movl	%eax,88(%ebx)
	movl	-4(%ebp),%esi
	movl	44(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	44(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	44(%esi),%eax
	movl	%eax,44(%ebx)
	movl	-4(%ebp),%esi
	movl	48(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	48(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	48(%esi),%eax
	movl	%eax,48(%ebx)
	movl	-4(%ebp),%esi
	movl	124(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	124(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	124(%esi),%eax
	movl	%eax,124(%ebx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,24(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,60(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	92(%eax),%eax
	movl	%eax,92(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	96(%eax),%ax
	movw	%ax,96(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	98(%eax),%ax
	movw	%ax,98(%edx)
	movl	-4(%ebp),%esi
	movl	100(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	100(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	100(%esi),%eax
	movl	%eax,100(%ebx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	136(%eax),%eax
	movl	%eax,136(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	140(%eax),%eax
	movl	%eax,140(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	144(%eax),%eax
	movl	%eax,144(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	148(%eax),%eax
	movl	%eax,148(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	152(%eax),%eax
	movl	%eax,152(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	178(%eax),%ax
	movw	%ax,178(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	180(%eax),%ax
	movw	%ax,180(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	182(%eax),%ax
	movw	%ax,182(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	184(%eax),%ax
	movw	%ax,184(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	186(%eax),%ax
	movw	%ax,186(%edx)
	movl	-8(%ebp),%eax
	movl	172(%eax),%eax
	testl	%eax,%eax
	jne	Lj531
	jmp	Lj530
Lj531:
	movl	-4(%ebp),%eax
	movl	172(%eax),%eax
	testl	%eax,%eax
	jne	Lj529
	jmp	Lj530
Lj529:
	movl	-4(%ebp),%eax
	movl	172(%eax),%edx
	movl	-8(%ebp),%eax
	movl	172(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	172(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*112(%ecx)
Lj530:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPTIFFCMN_TTIFFIFD_$__READFPIMGEXTRAS$TFPCUSTOMIMAGE
_FPTIFFCMN_TTIFFIFD_$__READFPIMGEXTRAS$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj537
Lj537:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj538
	movl	-8(%ebp),%eax
	call	L_FPTIFFCMN_TTIFFIFD_$__CLEAR$stub
	movl	-8(%ebp),%eax
	movl	$2,104(%eax)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld63$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	jne	Lj545
	jmp	Lj546
Lj545:
	movl	$0,4(%esp)
	movl	$-1,(%esp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld63$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	L_SYSUTILS_STRTOINT64DEF$ANSISTRING$INT64$$INT64$stub
	movl	-8(%ebp),%edx
	movl	%eax,104(%edx)
Lj546:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld65$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	12(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,12(%esi)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld67$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	44(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,44(%esi)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld69$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	52(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,52(%esi)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld71$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	48(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,48(%esi)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld73$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	64(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,64(%esi)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld75$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	84(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,84(%esi)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld77$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	88(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,88(%esi)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld79$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	68(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,68(%esi)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld81$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	124(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,124(%esi)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld83$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	$1,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,92(%edx)
	movl	-8(%ebp),%eax
	movl	92(%eax),%eax
	decl	%eax
	cmpl	$8,%eax
	jb	Lj651
Lj651:
	jnc	Lj649
	jmp	Lj650
Lj649:
	movl	-8(%ebp),%eax
	movl	$1,92(%eax)
Lj650:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld85$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	$2,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,112(%edx)
	movl	-8(%ebp),%eax
	movl	112(%eax),%eax
	decl	%eax
	cmpl	$3,%eax
	jb	Lj668
Lj668:
	jnc	Lj666
	jmp	Lj667
Lj666:
	movl	-8(%ebp),%eax
	movl	$2,112(%eax)
Lj667:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld87$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	L_TC_FPTIFFCMN_TIFFRATIONAL72$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPTIFFCMN_STRTOTIFFRATIONALDEF$ANSISTRING$TTIFFRATIONAL$$TTIFFRATIONAL$stub
	movl	%eax,-60(%ebp)
	movl	%edx,-56(%ebp)
	movl	-8(%ebp),%edx
	movl	-60(%ebp),%eax
	movl	%eax,156(%edx)
	movl	-56(%ebp),%eax
	movl	%eax,160(%edx)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld89$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	L_TC_FPTIFFCMN_TIFFRATIONAL72$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPTIFFCMN_STRTOTIFFRATIONALDEF$ANSISTRING$TTIFFRATIONAL$$TTIFFRATIONAL$stub
	movl	%eax,-60(%ebp)
	movl	%edx,-56(%ebp)
	movl	-8(%ebp),%edx
	movl	-60(%ebp),%eax
	movl	%eax,164(%edx)
	movl	-56(%ebp),%eax
	movl	%eax,168(%edx)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld91$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	$0,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	-8(%ebp),%edx
	movw	%ax,96(%edx)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld93$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	$0,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	-8(%ebp),%edx
	movw	%ax,98(%edx)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld95$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	100(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,100(%esi)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movzwl	98(%eax),%eax
	cmpl	$0,%eax
	setgb	77(%edx)
	movl	-8(%ebp),%esi
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld97$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	setneb	78(%esi)
	movl	-8(%ebp),%esi
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld99$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	setneb	76(%esi)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld101$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	$0,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,136(%edx)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld103$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	$0,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,140(%edx)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	L_$FPTIFFCMN$_Ld105$non_lazy_ptr-Lj537(%ebx),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub
	movl	-52(%ebp),%eax
	movl	$1,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,36(%edx)
Lj538:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj539
	call	LFPC_RERAISE$stub
Lj539:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPTIFFCMN_TTIFFIFD_$__IMAGELENGTH$$LONGWORD
_FPTIFFCMN_TTIFFIFD_$__IMAGELENGTH$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPTIFFCMN_TTIFFIFD_$__CREATE$$TTIFFIFD
_FPTIFFCMN_TTIFFIFD_$__CREATE$$TTIFFIFD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj787
	jmp	Lj788
Lj787:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj788:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj793
	jmp	Lj794
Lj793:
	jmp	Lj785
Lj794:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj797
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj801
	movl	-8(%ebp),%eax
	movl	$1,108(%eax)
Lj801:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj802
	call	LFPC_RERAISE$stub
Lj802:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj808
	jmp	Lj807
Lj808:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj806
	jmp	Lj807
Lj806:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj807:
Lj797:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj799
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj812
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj813
	jmp	Lj814
Lj813:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj814:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj812:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj811
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj811:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj799
Lj799:
Lj785:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPTIFFCMN_TTIFFIFD_$__DESTROY
_FPTIFFCMN_TTIFFIFD_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj821
	jmp	Lj822
Lj821:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj822:
	movl	-8(%ebp),%eax
	cmpb	$0,176(%eax)
	jne	Lj825
	jmp	Lj826
Lj825:
	movl	-8(%ebp),%eax
	leal	172(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj826:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj835
	jmp	Lj834
Lj835:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj833
	jmp	Lj834
Lj833:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj834:
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld107
_$FPTIFFCMN$_Ld107:
	.byte	8
	.ascii	"TTiffIFD"

.const_data
	.align 2
.globl	_VMT_FPTIFFCMN_TTIFFIFD
_VMT_FPTIFFCMN_TTIFFIFD:
	.long	192,-192
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$FPTIFFCMN$_Ld107
	.long	0,0
	.long	_$FPTIFFCMN$_Ld108
	.long	_RTTI_FPTIFFCMN_TTIFFIFD
	.long	_INIT_FPTIFFCMN_TTIFFIFD
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPTIFFCMN_TTIFFIFD_$__DESTROY
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
.globl	_THREADVARLIST_FPTIFFCMN
_THREADVARLIST_FPTIFFCMN:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_FPTIFFCMN_TIFFRATIONAL0
_TC_FPTIFFCMN_TIFFRATIONAL0:
	.long	0,0

.data
	.align 2
.globl	_TC_FPTIFFCMN_TIFFRATIONAL72
_TC_FPTIFFCMN_TIFFRATIONAL72:
	.long	72,1

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld2
_$FPTIFFCMN$_Ld2:
	.short	0,1
	.long	0,-1,1
.reference _$FPTIFFCMN$_Ld1
.globl	_$FPTIFFCMN$_Ld1
_$FPTIFFCMN$_Ld1:
.reference _$FPTIFFCMN$_Ld2
	.ascii	"/\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld4
_$FPTIFFCMN$_Ld4:
	.short	0,1
	.long	0,-1,4
.reference _$FPTIFFCMN$_Ld3
.globl	_$FPTIFFCMN$_Ld3
_$FPTIFFCMN$_Ld3:
.reference _$FPTIFFCMN$_Ld4
	.ascii	"Tiff\000"

.const
	.align 2
.globl	_$FPTIFFCMN$_Ld5
_$FPTIFFCMN$_Ld5:
	.ascii	"\020WriteTiffExtras \000"

.const
	.align 2
.globl	_$FPTIFFCMN$_Ld6
_$FPTIFFCMN$_Ld6:
	.ascii	"\002  \000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld8
_$FPTIFFCMN$_Ld8:
	.short	0,1
	.long	0,-1,14
.reference _$FPTIFFCMN$_Ld7
.globl	_$FPTIFFCMN$_Ld7
_$FPTIFFCMN$_Ld7:
.reference _$FPTIFFCMN$_Ld8
	.ascii	"no compression\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld10
_$FPTIFFCMN$_Ld10:
	.short	0,1
	.long	0,-1,64
.reference _$FPTIFFCMN$_Ld9
.globl	_$FPTIFFCMN$_Ld9
_$FPTIFFCMN$_Ld9:
.reference _$FPTIFFCMN$_Ld10
	.ascii	"CCITT Group 3 1-Dimensional Modified Huffman run le"
	.ascii	"ngth encoding\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld12
_$FPTIFFCMN$_Ld12:
	.short	0,1
	.long	0,-1,26
.reference _$FPTIFFCMN$_Ld11
.globl	_$FPTIFFCMN$_Ld11
_$FPTIFFCMN$_Ld11:
.reference _$FPTIFFCMN$_Ld12
	.ascii	"CCITT Group 3 fax encoding\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld14
_$FPTIFFCMN$_Ld14:
	.short	0,1
	.long	0,-1,26
.reference _$FPTIFFCMN$_Ld13
.globl	_$FPTIFFCMN$_Ld13
_$FPTIFFCMN$_Ld13:
.reference _$FPTIFFCMN$_Ld14
	.ascii	"CCITT Group 4 fax encoding\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld16
_$FPTIFFCMN$_Ld16:
	.short	0,1
	.long	0,-1,3
.reference _$FPTIFFCMN$_Ld15
.globl	_$FPTIFFCMN$_Ld15
_$FPTIFFCMN$_Ld15:
.reference _$FPTIFFCMN$_Ld16
	.ascii	"LZW\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld18
_$FPTIFFCMN$_Ld18:
	.short	0,1
	.long	0,-1,14
.reference _$FPTIFFCMN$_Ld17
.globl	_$FPTIFFCMN$_Ld17
_$FPTIFFCMN$_Ld17:
.reference _$FPTIFFCMN$_Ld18
	.ascii	"JPEG old style\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld20
_$FPTIFFCMN$_Ld20:
	.short	0,1
	.long	0,-1,4
.reference _$FPTIFFCMN$_Ld19
.globl	_$FPTIFFCMN$_Ld19
_$FPTIFFCMN$_Ld19:
.reference _$FPTIFFCMN$_Ld20
	.ascii	"JPEG\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld22
_$FPTIFFCMN$_Ld22:
	.short	0,1
	.long	0,-1,19
.reference _$FPTIFFCMN$_Ld21
.globl	_$FPTIFFCMN$_Ld21
_$FPTIFFCMN$_Ld21:
.reference _$FPTIFFCMN$_Ld22
	.ascii	"Deflate Adobe style\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld24
_$FPTIFFCMN$_Ld24:
	.short	0,1
	.long	0,-1,24
.reference _$FPTIFFCMN$_Ld23
.globl	_$FPTIFFCMN$_Ld23
_$FPTIFFCMN$_Ld23:
.reference _$FPTIFFCMN$_Ld24
	.ascii	"RFC2301 JBIG white/black\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld26
_$FPTIFFCMN$_Ld26:
	.short	0,1
	.long	0,-1,18
.reference _$FPTIFFCMN$_Ld25
.globl	_$FPTIFFCMN$_Ld25
_$FPTIFFCMN$_Ld25:
.reference _$FPTIFFCMN$_Ld26
	.ascii	"RFC2301 JBIG color\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld28
_$FPTIFFCMN$_Ld28:
	.short	0,1
	.long	0,-1,4
.reference _$FPTIFFCMN$_Ld27
.globl	_$FPTIFFCMN$_Ld27
_$FPTIFFCMN$_Ld27:
.reference _$FPTIFFCMN$_Ld28
	.ascii	"NeXT\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld30
_$FPTIFFCMN$_Ld30:
	.short	0,1
	.long	0,-1,9
.reference _$FPTIFFCMN$_Ld29
.globl	_$FPTIFFCMN$_Ld29
_$FPTIFFCMN$_Ld29:
.reference _$FPTIFFCMN$_Ld30
	.ascii	"CCITTRLEW\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld32
_$FPTIFFCMN$_Ld32:
	.short	0,1
	.long	0,-1,8
.reference _$FPTIFFCMN$_Ld31
.globl	_$FPTIFFCMN$_Ld31
_$FPTIFFCMN$_Ld31:
.reference _$FPTIFFCMN$_Ld32
	.ascii	"PackBits\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld34
_$FPTIFFCMN$_Ld34:
	.short	0,1
	.long	0,-1,11
.reference _$FPTIFFCMN$_Ld33
.globl	_$FPTIFFCMN$_Ld33
_$FPTIFFCMN$_Ld33:
.reference _$FPTIFFCMN$_Ld34
	.ascii	"THUNDERSCAN\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld36
_$FPTIFFCMN$_Ld36:
	.short	0,1
	.long	0,-1,8
.reference _$FPTIFFCMN$_Ld35
.globl	_$FPTIFFCMN$_Ld35
_$FPTIFFCMN$_Ld35:
.reference _$FPTIFFCMN$_Ld36
	.ascii	"IT8CTPAD\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld38
_$FPTIFFCMN$_Ld38:
	.short	0,1
	.long	0,-1,5
.reference _$FPTIFFCMN$_Ld37
.globl	_$FPTIFFCMN$_Ld37
_$FPTIFFCMN$_Ld37:
.reference _$FPTIFFCMN$_Ld38
	.ascii	"IT8LW\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld40
_$FPTIFFCMN$_Ld40:
	.short	0,1
	.long	0,-1,5
.reference _$FPTIFFCMN$_Ld39
.globl	_$FPTIFFCMN$_Ld39
_$FPTIFFCMN$_Ld39:
.reference _$FPTIFFCMN$_Ld40
	.ascii	"IT8MP\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld42
_$FPTIFFCMN$_Ld42:
	.short	0,1
	.long	0,-1,5
.reference _$FPTIFFCMN$_Ld41
.globl	_$FPTIFFCMN$_Ld41
_$FPTIFFCMN$_Ld41:
.reference _$FPTIFFCMN$_Ld42
	.ascii	"IT8BL\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld44
_$FPTIFFCMN$_Ld44:
	.short	0,1
	.long	0,-1,9
.reference _$FPTIFFCMN$_Ld43
.globl	_$FPTIFFCMN$_Ld43
_$FPTIFFCMN$_Ld43:
.reference _$FPTIFFCMN$_Ld44
	.ascii	"PIXARFILM\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld46
_$FPTIFFCMN$_Ld46:
	.short	0,1
	.long	0,-1,8
.reference _$FPTIFFCMN$_Ld45
.globl	_$FPTIFFCMN$_Ld45
_$FPTIFFCMN$_Ld45:
.reference _$FPTIFFCMN$_Ld46
	.ascii	"PIXARLOG\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld48
_$FPTIFFCMN$_Ld48:
	.short	0,1
	.long	0,-1,12
.reference _$FPTIFFCMN$_Ld47
.globl	_$FPTIFFCMN$_Ld47
_$FPTIFFCMN$_Ld47:
.reference _$FPTIFFCMN$_Ld48
	.ascii	"Deflate ZLib\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld50
_$FPTIFFCMN$_Ld50:
	.short	0,1
	.long	0,-1,3
.reference _$FPTIFFCMN$_Ld49
.globl	_$FPTIFFCMN$_Ld49
_$FPTIFFCMN$_Ld49:
.reference _$FPTIFFCMN$_Ld50
	.ascii	"DCS\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld52
_$FPTIFFCMN$_Ld52:
	.short	0,1
	.long	0,-1,4
.reference _$FPTIFFCMN$_Ld51
.globl	_$FPTIFFCMN$_Ld51
_$FPTIFFCMN$_Ld51:
.reference _$FPTIFFCMN$_Ld52
	.ascii	"JBIG\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld54
_$FPTIFFCMN$_Ld54:
	.short	0,1
	.long	0,-1,6
.reference _$FPTIFFCMN$_Ld53
.globl	_$FPTIFFCMN$_Ld53
_$FPTIFFCMN$_Ld53:
.reference _$FPTIFFCMN$_Ld54
	.ascii	"SGILOG\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld56
_$FPTIFFCMN$_Ld56:
	.short	0,1
	.long	0,-1,8
.reference _$FPTIFFCMN$_Ld55
.globl	_$FPTIFFCMN$_Ld55
_$FPTIFFCMN$_Ld55:
.reference _$FPTIFFCMN$_Ld56
	.ascii	"SGILOG24\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld58
_$FPTIFFCMN$_Ld58:
	.short	0,1
	.long	0,-1,6
.reference _$FPTIFFCMN$_Ld57
.globl	_$FPTIFFCMN$_Ld57
_$FPTIFFCMN$_Ld57:
.reference _$FPTIFFCMN$_Ld58
	.ascii	"JP2000\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld60
_$FPTIFFCMN$_Ld60:
	.short	0,1
	.long	0,-1,8
.reference _$FPTIFFCMN$_Ld59
.globl	_$FPTIFFCMN$_Ld59
_$FPTIFFCMN$_Ld59:
.reference _$FPTIFFCMN$_Ld60
	.ascii	"unknown(\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld62
_$FPTIFFCMN$_Ld62:
	.short	0,1
	.long	0,-1,1
.reference _$FPTIFFCMN$_Ld61
.globl	_$FPTIFFCMN$_Ld61
_$FPTIFFCMN$_Ld61:
.reference _$FPTIFFCMN$_Ld62
	.ascii	")\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld64
_$FPTIFFCMN$_Ld64:
	.short	0,1
	.long	0,-1,29
.reference _$FPTIFFCMN$_Ld63
.globl	_$FPTIFFCMN$_Ld63
_$FPTIFFCMN$_Ld63:
.reference _$FPTIFFCMN$_Ld64
	.ascii	"TiffPhotoMetricInterpretation\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld66
_$FPTIFFCMN$_Ld66:
	.short	0,1
	.long	0,-1,10
.reference _$FPTIFFCMN$_Ld65
.globl	_$FPTIFFCMN$_Ld65
_$FPTIFFCMN$_Ld65:
.reference _$FPTIFFCMN$_Ld66
	.ascii	"TiffArtist\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld68
_$FPTIFFCMN$_Ld68:
	.short	0,1
	.long	0,-1,13
.reference _$FPTIFFCMN$_Ld67
.globl	_$FPTIFFCMN$_Ld67
_$FPTIFFCMN$_Ld67:
.reference _$FPTIFFCMN$_Ld68
	.ascii	"TiffCopyright\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld70
_$FPTIFFCMN$_Ld70:
	.short	0,1
	.long	0,-1,16
.reference _$FPTIFFCMN$_Ld69
.globl	_$FPTIFFCMN$_Ld69
_$FPTIFFCMN$_Ld69:
.reference _$FPTIFFCMN$_Ld70
	.ascii	"TiffDocumentName\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld72
_$FPTIFFCMN$_Ld72:
	.short	0,1
	.long	0,-1,12
.reference _$FPTIFFCMN$_Ld71
.globl	_$FPTIFFCMN$_Ld71
_$FPTIFFCMN$_Ld71:
.reference _$FPTIFFCMN$_Ld72
	.ascii	"TiffDateTime\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld74
_$FPTIFFCMN$_Ld74:
	.short	0,1
	.long	0,-1,16
.reference _$FPTIFFCMN$_Ld73
.globl	_$FPTIFFCMN$_Ld73
_$FPTIFFCMN$_Ld73:
.reference _$FPTIFFCMN$_Ld74
	.ascii	"TiffHostComputer\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld76
_$FPTIFFCMN$_Ld76:
	.short	0,1
	.long	0,-1,28
.reference _$FPTIFFCMN$_Ld75
.globl	_$FPTIFFCMN$_Ld75
_$FPTIFFCMN$_Ld75:
.reference _$FPTIFFCMN$_Ld76
	.ascii	"TiffMake_ScannerManufacturer\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld78
_$FPTIFFCMN$_Ld78:
	.short	0,1
	.long	0,-1,17
.reference _$FPTIFFCMN$_Ld77
.globl	_$FPTIFFCMN$_Ld77
_$FPTIFFCMN$_Ld77:
.reference _$FPTIFFCMN$_Ld78
	.ascii	"TiffModel_Scanner\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld80
_$FPTIFFCMN$_Ld80:
	.short	0,1
	.long	0,-1,20
.reference _$FPTIFFCMN$_Ld79
.globl	_$FPTIFFCMN$_Ld79
_$FPTIFFCMN$_Ld79:
.reference _$FPTIFFCMN$_Ld80
	.ascii	"TiffImageDescription\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld82
_$FPTIFFCMN$_Ld82:
	.short	0,1
	.long	0,-1,12
.reference _$FPTIFFCMN$_Ld81
.globl	_$FPTIFFCMN$_Ld81
_$FPTIFFCMN$_Ld81:
.reference _$FPTIFFCMN$_Ld82
	.ascii	"TiffSoftware\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld84
_$FPTIFFCMN$_Ld84:
	.short	0,1
	.long	0,-1,15
.reference _$FPTIFFCMN$_Ld83
.globl	_$FPTIFFCMN$_Ld83
_$FPTIFFCMN$_Ld83:
.reference _$FPTIFFCMN$_Ld84
	.ascii	"TiffOrientation\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld86
_$FPTIFFCMN$_Ld86:
	.short	0,1
	.long	0,-1,18
.reference _$FPTIFFCMN$_Ld85
.globl	_$FPTIFFCMN$_Ld85
_$FPTIFFCMN$_Ld85:
.reference _$FPTIFFCMN$_Ld86
	.ascii	"TiffResolutionUnit\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld88
_$FPTIFFCMN$_Ld88:
	.short	0,1
	.long	0,-1,15
.reference _$FPTIFFCMN$_Ld87
.globl	_$FPTIFFCMN$_Ld87
_$FPTIFFCMN$_Ld87:
.reference _$FPTIFFCMN$_Ld88
	.ascii	"TiffXResolution\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld90
_$FPTIFFCMN$_Ld90:
	.short	0,1
	.long	0,-1,15
.reference _$FPTIFFCMN$_Ld89
.globl	_$FPTIFFCMN$_Ld89
_$FPTIFFCMN$_Ld89:
.reference _$FPTIFFCMN$_Ld90
	.ascii	"TiffYResolution\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld92
_$FPTIFFCMN$_Ld92:
	.short	0,1
	.long	0,-1,14
.reference _$FPTIFFCMN$_Ld91
.globl	_$FPTIFFCMN$_Ld91
_$FPTIFFCMN$_Ld91:
.reference _$FPTIFFCMN$_Ld92
	.ascii	"TiffPageNumber\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld94
_$FPTIFFCMN$_Ld94:
	.short	0,1
	.long	0,-1,13
.reference _$FPTIFFCMN$_Ld93
.globl	_$FPTIFFCMN$_Ld93
_$FPTIFFCMN$_Ld93:
.reference _$FPTIFFCMN$_Ld94
	.ascii	"TiffPageCount\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld96
_$FPTIFFCMN$_Ld96:
	.short	0,1
	.long	0,-1,12
.reference _$FPTIFFCMN$_Ld95
.globl	_$FPTIFFCMN$_Ld95
_$FPTIFFCMN$_Ld95:
.reference _$FPTIFFCMN$_Ld96
	.ascii	"TiffPageName\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld98
_$FPTIFFCMN$_Ld98:
	.short	0,1
	.long	0,-1,15
.reference _$FPTIFFCMN$_Ld97
.globl	_$FPTIFFCMN$_Ld97
_$FPTIFFCMN$_Ld97:
.reference _$FPTIFFCMN$_Ld98
	.ascii	"TiffIsThumbnail\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld100
_$FPTIFFCMN$_Ld100:
	.short	0,1
	.long	0,-1,10
.reference _$FPTIFFCMN$_Ld99
.globl	_$FPTIFFCMN$_Ld99
_$FPTIFFCMN$_Ld99:
.reference _$FPTIFFCMN$_Ld100
	.ascii	"TiffIsMask\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld102
_$FPTIFFCMN$_Ld102:
	.short	0,1
	.long	0,-1,13
.reference _$FPTIFFCMN$_Ld101
.globl	_$FPTIFFCMN$_Ld101
_$FPTIFFCMN$_Ld101:
.reference _$FPTIFFCMN$_Ld102
	.ascii	"TiffTileWidth\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld104
_$FPTIFFCMN$_Ld104:
	.short	0,1
	.long	0,-1,14
.reference _$FPTIFFCMN$_Ld103
.globl	_$FPTIFFCMN$_Ld103
_$FPTIFFCMN$_Ld103:
.reference _$FPTIFFCMN$_Ld104
	.ascii	"TiffTileLength\000"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld106
_$FPTIFFCMN$_Ld106:
	.short	0,1
	.long	0,-1,15
.reference _$FPTIFFCMN$_Ld105
.globl	_$FPTIFFCMN$_Ld105
_$FPTIFFCMN$_Ld105:
.reference _$FPTIFFCMN$_Ld106
	.ascii	"TiffCompression\000"
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_INTTOSTR$QWORD$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$QWORD$$ANSISTRING
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

L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_copy$stub:
.indirect_symbol fpc_ansistr_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__EXTRACOUNT$$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__EXTRACOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRAKEY$LONGINT$$ANSISTRING$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRAKEY$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__REMOVEEXTRA$ANSISTRING$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__REMOVEEXTRA$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPTIFFCMN_CLEARTIFFEXTRAS$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPTIFFCMN_CLEARTIFFEXTRAS$TFPCUSTOMIMAGE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRAVALUE$LONGINT$$ANSISTRING$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRAVALUE$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETEXTRA$ANSISTRING$ANSISTRING
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

Lfpc_get_output$stub:
.indirect_symbol fpc_get_output
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_shortstr$stub:
.indirect_symbol fpc_write_text_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_IOCHECK$stub:
.indirect_symbol FPC_IOCHECK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_ansistr$stub:
.indirect_symbol fpc_write_text_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_writeln_end$stub:
.indirect_symbol fpc_writeln_end
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_sint$stub:
.indirect_symbol fpc_write_text_sint
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_char$stub:
.indirect_symbol fpc_write_text_char
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING
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

L_SYSUTILS_FREEANDNIL$formal$stub:
.indirect_symbol _SYSUTILS_FREEANDNIL$formal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DYNARRAY_INCR_REF$stub:
.indirect_symbol FPC_DYNARRAY_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DYNARRAY_DECR_REF$stub:
.indirect_symbol FPC_DYNARRAY_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPTIFFCMN_TTIFFIFD_$__CLEAR$stub:
.indirect_symbol _FPTIFFCMN_TTIFFIFD_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETEXTRA$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTOINT64DEF$ANSISTRING$INT64$$INT64$stub:
.indirect_symbol _SYSUTILS_STRTOINT64DEF$ANSISTRING$INT64$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPTIFFCMN_STRTOTIFFRATIONALDEF$ANSISTRING$TTIFFRATIONAL$$TTIFFRATIONAL$stub:
.indirect_symbol _FPTIFFCMN_STRTOTIFFRATIONALDEF$ANSISTRING$TTIFFRATIONAL$$TTIFFRATIONAL
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

L_SYSTEM_TOBJECT_$__DESTROY$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__DESTROY
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
.globl	_INIT_FPTIFFCMN_TTIFFRATIONAL
_INIT_FPTIFFCMN_TTIFFRATIONAL:
	.byte	13,13
	.ascii	"TTiffRational"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_FPTIFFCMN_TTIFFRATIONAL
_RTTI_FPTIFFCMN_TTIFFRATIONAL:
	.byte	13,13
	.ascii	"TTiffRational"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4

.const_data
	.align 2
.globl	_INIT_FPTIFFCMN_TTIFFCHUNKTYPE
_INIT_FPTIFFCMN_TTIFFCHUNKTYPE:
	.byte	3,14
	.ascii	"TTiffChunkType"
	.byte	5
	.long	0,1,0
	.byte	8
	.ascii	"tctStrip"
	.byte	7
	.ascii	"tctTile"
	.byte	9
	.ascii	"FPTiffCmn"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPTIFFCMN_TTIFFCHUNKTYPE
_RTTI_FPTIFFCMN_TTIFFCHUNKTYPE:
	.byte	3,14
	.ascii	"TTiffChunkType"
	.byte	5
	.long	0,1,0
	.byte	8
	.ascii	"tctStrip"
	.byte	7
	.ascii	"tctTile"
	.byte	9
	.ascii	"FPTiffCmn"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPTIFFCMN_TTIFFCHUNKTYPE_s2o
_RTTI_FPTIFFCMN_TTIFFCHUNKTYPE_s2o:
	.long	2,0
	.long	_RTTI_FPTIFFCMN_TTIFFCHUNKTYPE+29
	.long	1
	.long	_RTTI_FPTIFFCMN_TTIFFCHUNKTYPE+38

.const_data
	.align 2
.globl	_RTTI_FPTIFFCMN_TTIFFCHUNKTYPE_o2s
_RTTI_FPTIFFCMN_TTIFFCHUNKTYPE_o2s:
	.long	0
	.long	_RTTI_FPTIFFCMN_TTIFFCHUNKTYPE+29
	.long	_RTTI_FPTIFFCMN_TTIFFCHUNKTYPE+38

.const_data
	.align 2
.globl	_INIT_FPTIFFCMN_DEF86
_INIT_FPTIFFCMN_DEF86:
	.byte	21
	.ascii	"\000"
	.long	2
	.long	_INIT_SYSTEM_WORD
	.long	18,0
	.byte	9
	.ascii	"FPTiffCmn"

.const_data
	.align 2
.globl	_$FPTIFFCMN$_Ld108
_$FPTIFFCMN$_Ld108:
	.short	0
	.long	_$FPTIFFCMN$_Ld109
	.align 2
.globl	_$FPTIFFCMN$_Ld109
_$FPTIFFCMN$_Ld109:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPTIFFCMN_TTIFFIFD
_INIT_FPTIFFCMN_TTIFFIFD:
	.byte	15,8
	.ascii	"TTiffIFD"
	.long	4,11
	.long	_INIT_SYSTEM_ANSISTRING
	.long	12
	.long	_INIT_FPTIFFCMN_DEF86
	.long	20
	.long	_INIT_SYSTEM_ANSISTRING
	.long	44
	.long	_INIT_SYSTEM_ANSISTRING
	.long	48
	.long	_INIT_SYSTEM_ANSISTRING
	.long	52
	.long	_INIT_SYSTEM_ANSISTRING
	.long	64
	.long	_INIT_SYSTEM_ANSISTRING
	.long	68
	.long	_INIT_SYSTEM_ANSISTRING
	.long	84
	.long	_INIT_SYSTEM_ANSISTRING
	.long	88
	.long	_INIT_SYSTEM_ANSISTRING
	.long	100
	.long	_INIT_SYSTEM_ANSISTRING
	.long	124

.const_data
	.align 2
.globl	_RTTI_FPTIFFCMN_TTIFFIFD
_RTTI_FPTIFFCMN_TTIFFIFD:
	.byte	15,8
	.ascii	"TTiffIFD"
	.long	_VMT_FPTIFFCMN_TTIFFIFD
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	9
	.ascii	"FPTiffCmn"
	.short	0

.const_data
	.align 2
.globl	_INIT_FPTIFFCMN_DEF101
_INIT_FPTIFFCMN_DEF101:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPTIFFCMN_DEF138
_INIT_FPTIFFCMN_DEF138:
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
L_$FPTIFFCMN$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPTIFFCMN_TIFFRATIONAL0$non_lazy_ptr:
.indirect_symbol _TC_FPTIFFCMN_TIFFRATIONAL0
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld6$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld7$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld9$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld11$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld13$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld15$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld17$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld19$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld21$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld23$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld25$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld27$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld27
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld29$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld29
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld31$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld31
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld33$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld33
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld35$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld35
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld37$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld37
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld39$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld39
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld41$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld41
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld43$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld43
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld45$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld45
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld47$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld47
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld49$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld49
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld51$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld51
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld53$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld53
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld55$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld55
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld57$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld57
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld59$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld59
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld61$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld61
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_FPTIFFCMN_DEF86$non_lazy_ptr:
.indirect_symbol _INIT_FPTIFFCMN_DEF86
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld63$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld63
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld65$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld65
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld67$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld67
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld69$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld69
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld71$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld71
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld73$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld73
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld75$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld75
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld77$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld77
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld79$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld79
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld81$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld81
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld83$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld83
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld85$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld85
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld87$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld87
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPTIFFCMN_TIFFRATIONAL72$non_lazy_ptr:
.indirect_symbol _TC_FPTIFFCMN_TIFFRATIONAL72
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld89$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld89
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld91$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld91
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld93$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld93
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld95$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld95
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld97$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld97
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld99$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld99
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld101$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld101
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld103$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld103
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPTIFFCMN$_Ld105$non_lazy_ptr:
.indirect_symbol _$FPTIFFCMN$_Ld105
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

