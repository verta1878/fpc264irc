# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPREADBMP_RGBATOFPCOLOR$TCOLORRGBA$$TFPCOLOR
_FPREADBMP_RGBATOFPCOLOR$TCOLORRGBA$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movzbl	10(%ebp),%eax
	shll	$8,%eax
	movzbl	10(%ebp),%edx
	orl	%edx,%eax
	movw	%ax,-8(%ebp)
	movzbl	9(%ebp),%eax
	shll	$8,%eax
	movzbl	9(%ebp),%edx
	orl	%edx,%eax
	movw	%ax,-6(%ebp)
	movzbl	8(%ebp),%eax
	shll	$8,%eax
	movzbl	8(%ebp),%edx
	orl	%edx,%eax
	movw	%ax,-4(%ebp)
	movzbl	11(%ebp),%edx
	movl	$255,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movw	%dx,-2(%ebp)
	movzwl	-2(%ebp),%eax
	shll	$8,%eax
	movzwl	-2(%ebp),%edx
	orl	%edx,%eax
	movw	%ax,-2(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADBMP_RGBTOFPCOLOR$TCOLORRGB$$TFPCOLOR
_FPREADBMP_RGBTOFPCOLOR$TCOLORRGB$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movzbl	10(%ebp),%eax
	shll	$8,%eax
	movzbl	10(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-8(%ebp)
	movzbl	9(%ebp),%eax
	shll	$8,%eax
	movzbl	9(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-6(%ebp)
	movzbl	8(%ebp),%eax
	shll	$8,%eax
	movzbl	8(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-4(%ebp)
	movw	$65535,-2(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADBMP_TFPREADERBMP_$__CREATE$$TFPREADERBMP
_FPREADBMP_TFPREADERBMP_$__CREATE$$TFPREADERBMP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj27
	jmp	Lj28
Lj27:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj28:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj33
	jmp	Lj34
Lj33:
	jmp	Lj25
Lj34:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj37
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj41
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER$stub
Lj41:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj42
	call	LFPC_RERAISE$stub
Lj42:
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
Lj37:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj39
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
	jmp	Lj39
Lj39:
Lj25:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPREADBMP_TFPREADERBMP_$__DESTROY
_FPREADBMP_TFPREADERBMP_$__DESTROY:
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
	call	L_FPREADBMP_TFPREADERBMP_$__FREEBUFS$stub
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
.globl	_FPREADBMP_TFPREADERBMP_$__FREEBUFS
_FPREADBMP_TFPREADERBMP_$__FREEBUFS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	testl	%eax,%eax
	jne	Lj80
	jmp	Lj81
Lj80:
	movl	-4(%ebp),%eax
	movl	108(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	$0,108(%eax)
Lj81:
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	testl	%eax,%eax
	jne	Lj86
	jmp	Lj87
Lj86:
	movl	-4(%ebp),%eax
	movl	104(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	$0,104(%eax)
Lj87:
	leave
	ret

.text
	.align 4
.globl	_FPREADBMP_TFPREADERBMP_$__COUNTBITS$BYTE$$SHORTINT
_FPREADBMP_TFPREADERBMP_$__COUNTBITS$BYTE$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movb	$0,-11(%ebp)
	movb	$0,-10(%ebp)
	decb	-10(%ebp)
	.align 2
Lj98:
	incb	-10(%ebp)
	movzbl	-4(%ebp),%eax
	cltd
	movl	$2,%ecx
	idivl	%ecx
	testl	%edx,%edx
	jne	Lj99
	jmp	Lj100
Lj99:
	incb	-11(%ebp)
Lj100:
	movzbl	-4(%ebp),%eax
	shrl	$1,%eax
	movb	%al,-4(%ebp)
	cmpb	$7,-10(%ebp)
	jl	Lj98
	movb	-11(%ebp),%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPREADBMP_TFPREADERBMP_$__SHIFTCOUNT$LONGWORD$$SHORTINT
_FPREADBMP_TFPREADERBMP_$__SHIFTCOUNT$LONGWORD$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-10(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj109
	jmp	Lj110
Lj109:
	movb	$0,-9(%ebp)
	jmp	Lj105
Lj110:
	jmp	Lj114
	.align 2
Lj113:
	incb	-10(%ebp)
	movl	-4(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-4(%ebp)
Lj114:
	movl	-4(%ebp),%eax
	xorl	%edx,%edx
	movl	$2,%ecx
	divl	%ecx
	testl	%edx,%edx
	je	Lj113
	jmp	Lj115
Lj115:
	movsbl	-10(%ebp),%ebx
	movl	-4(%ebp),%edx
	andl	$255,%edx
	movl	-8(%ebp),%eax
	call	L_FPREADBMP_TFPREADERBMP_$__COUNTBITS$BYTE$$SHORTINT$stub
	movsbl	%al,%eax
	movl	$8,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	subl	%eax,%ebx
	movb	%bl,%al
	movb	%al,-10(%ebp)
	movb	-10(%ebp),%al
	movb	%al,-9(%ebp)
Lj105:
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADBMP_TFPREADERBMP_$__EXPANDCOLOR$LONGWORD$$TFPCOLOR
_FPREADBMP_TFPREADERBMP_$__EXPANDCOLOR$LONGWORD$$TFPCOLOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	112(%eax),%edx
	movl	-4(%ebp),%eax
	andl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	116(%eax),%eax
	movl	-4(%ebp),%edx
	andl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	120(%eax),%edx
	movl	-4(%ebp),%eax
	andl	%eax,%edx
	movl	%edx,-28(%ebp)
	movl	-8(%ebp),%eax
	movb	124(%eax),%al
	cmpb	$0,%al
	jl	Lj134
	jmp	Lj135
Lj134:
	movl	-8(%ebp),%eax
	movsbl	124(%eax),%ecx
	negl	%ecx
	movl	-20(%ebp),%eax
	shll	%cl,%eax
	movb	%al,-29(%ebp)
	jmp	Lj138
Lj135:
	movl	-8(%ebp),%eax
	movsbl	124(%eax),%ecx
	movl	-20(%ebp),%eax
	shrl	%cl,%eax
	movb	%al,-29(%ebp)
Lj138:
	movl	-8(%ebp),%eax
	movb	125(%eax),%al
	cmpb	$0,%al
	jl	Lj141
	jmp	Lj142
Lj141:
	movl	-8(%ebp),%eax
	movsbl	125(%eax),%ecx
	negl	%ecx
	movl	-24(%ebp),%eax
	shll	%cl,%eax
	movb	%al,-30(%ebp)
	jmp	Lj145
Lj142:
	movl	-8(%ebp),%eax
	movsbl	125(%eax),%ecx
	movl	-24(%ebp),%eax
	shrl	%cl,%eax
	movb	%al,-30(%ebp)
Lj145:
	movl	-8(%ebp),%eax
	movb	126(%eax),%al
	cmpb	$0,%al
	jl	Lj148
	jmp	Lj149
Lj148:
	movl	-8(%ebp),%eax
	movsbl	126(%eax),%ecx
	negl	%ecx
	movl	-28(%ebp),%eax
	shll	%cl,%eax
	movb	%al,-31(%ebp)
	jmp	Lj152
Lj149:
	movl	-8(%ebp),%eax
	movsbl	126(%eax),%ecx
	movl	-28(%ebp),%eax
	shrl	%cl,%eax
	movb	%al,-31(%ebp)
Lj152:
	movw	-31(%ebp),%ax
	movw	%ax,(%esp)
	movb	-29(%ebp),%al
	movb	%al,2(%esp)
	call	L_FPREADBMP_RGBTOFPCOLOR$TCOLORRGB$$TFPCOLOR$stub
	movl	%eax,-40(%ebp)
	movl	%edx,-36(%ebp)
	movl	-40(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	leave
	ret

.text
	.align 4
.globl	_FPREADBMP_TFPREADERBMP_$__SETUPREAD$LONGINT$LONGINT$TSTREAM
_FPREADBMP_TFPREADERBMP_$__SETUPREAD$LONGINT$LONGINT$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	call	Lj160
Lj160:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-16(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj161
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	testl	%eax,%eax
	je	Lj166
	jmp	Lj165
Lj166:
	movl	-12(%ebp),%eax
	movzwl	78(%eax),%eax
	cmpl	$16,%eax
	je	Lj164
	jmp	Lj165
Lj164:
	movl	-12(%ebp),%eax
	movl	$31744,112(%eax)
	movl	-12(%ebp),%eax
	movb	$7,124(%eax)
	movl	-12(%ebp),%eax
	movl	$992,116(%eax)
	movl	-12(%ebp),%eax
	movb	$2,125(%eax)
	movl	-12(%ebp),%eax
	movl	$31,120(%eax)
	movl	-12(%ebp),%eax
	movb	$-3,126(%eax)
	jmp	Lj179
Lj165:
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	cmpl	$3,%eax
	je	Lj182
	jmp	Lj181
Lj182:
	movl	-12(%ebp),%eax
	movzwl	78(%eax),%eax
	cmpl	$16,%eax
	je	Lj183
	cmpl	$32,%eax
	je	Lj183
Lj183:
	je	Lj180
	jmp	Lj181
Lj180:
	movl	-12(%ebp),%eax
	leal	112(%eax),%edx
	movl	8(%ebp),%eax
	movl	$4,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-12(%ebp),%eax
	leal	116(%eax),%edx
	movl	8(%ebp),%eax
	movl	$4,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-12(%ebp),%eax
	leal	120(%eax),%edx
	movl	8(%ebp),%eax
	movl	$4,%ecx
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-12(%ebp),%eax
	movl	112(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADBMP_TFPREADERBMP_$__SHIFTCOUNT$LONGWORD$$SHORTINT$stub
	movl	-12(%ebp),%edx
	movb	%al,124(%edx)
	movl	-12(%ebp),%eax
	movl	116(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADBMP_TFPREADERBMP_$__SHIFTCOUNT$LONGWORD$$SHORTINT$stub
	movl	-12(%ebp),%edx
	movb	%al,125(%edx)
	movl	-12(%ebp),%eax
	movl	120(%eax),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADBMP_TFPREADERBMP_$__SHIFTCOUNT$LONGWORD$$SHORTINT$stub
	movl	-12(%ebp),%edx
	movb	%al,126(%edx)
	jmp	Lj220
Lj181:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj221
	jmp	Lj222
Lj221:
	movl	-4(%ebp),%edx
	shll	$3,%edx
	movl	-12(%ebp),%eax
	leal	104(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-4(%ebp),%eax
	movl	%eax,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_FPREADBMP_DEF30$non_lazy_ptr-Lj160(%esi),%edx
	leal	-16(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	cmpl	$0,%eax
	jg	Lj237
	jmp	Lj238
Lj237:
	movl	-12(%ebp),%eax
	movl	96(%eax),%ecx
	shll	$2,%ecx
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	jmp	Lj245
Lj238:
	movl	-4(%ebp),%ecx
	shll	$2,%ecx
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	movl	8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
Lj245:
	movl	-16(%ebp),%eax
	call	Lfpc_dynarray_high$stub
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj253
	decl	-20(%ebp)
	.align 2
Lj254:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,(%esp)
	call	L_FPREADBMP_RGBATOFPCOLOR$TCOLORRGBA$$TFPCOLOR$stub
	movl	%eax,-72(%ebp)
	movl	%edx,-68(%ebp)
	movl	-12(%ebp),%eax
	movl	104(%eax),%edx
	movl	-20(%ebp),%ecx
	movl	-72(%ebp),%eax
	movl	%eax,(%edx,%ecx,8)
	movl	-68(%ebp),%eax
	movl	%eax,4(%edx,%ecx,8)
	cmpl	-20(%ebp),%ebx
	jg	Lj254
Lj253:
	jmp	Lj261
Lj222:
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	cmpl	$0,%eax
	jg	Lj262
	jmp	Lj263
Lj262:
	movl	8(%ebp),%eax
	movl	8(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	-12(%ebp),%ecx
	movl	96(%ecx),%ecx
	shll	$2,%ecx
	movl	%ecx,%ebx
	sarl	$31,%ebx
	addl	%ecx,%eax
	adcl	%ebx,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	8(%ebp),%eax
	movl	8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
Lj263:
Lj261:
Lj220:
Lj179:
	movl	-8(%ebp),%eax
	addl	$31,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$31,%edx
	addl	%edx,%eax
	sarl	$5,%eax
	shll	$2,%eax
	movl	-12(%ebp),%edx
	movl	%eax,60(%edx)
	movl	-12(%ebp),%eax
	movl	60(%eax),%edx
	movl	-12(%ebp),%eax
	leal	108(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
Lj161:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_FPREADBMP_DEF30$non_lazy_ptr-Lj160(%esi),%edx
	leal	-16(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj162
	call	LFPC_RERAISE$stub
Lj162:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADBMP_TFPREADERBMP_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
_FPREADBMP_TFPREADERBMP_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	call	Lj283
Lj283:
	popl	%edi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,44(%eax)
	movl	-12(%ebp),%eax
	movl	$0,48(%eax)
	movl	-12(%ebp),%eax
	movl	$0,52(%eax)
	movl	-12(%ebp),%eax
	movl	$0,56(%eax)
	movl	-12(%ebp),%eax
	movb	$1,33(%eax)
	movl	$0,4(%esp)
	movb	$0,12(%esp)
	movl	-12(%ebp),%eax
	leal	33(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	leal	44(%eax),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$0,%edx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*100(%ebx)
	movl	-12(%ebp),%eax
	movb	33(%eax),%al
	testb	%al,%al
	je	Lj308
	jmp	Lj309
Lj308:
	jmp	Lj282
Lj309:
	movl	-12(%ebp),%eax
	leal	64(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$40,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	subl	$40,%eax
	sbbl	$0,%edx
	movl	-12(%ebp),%ecx
	movl	64(%ecx),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	addl	%ebx,%eax
	adcl	%ecx,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-12(%ebp),%eax
	leal	64(%eax),%ebx
	movb	$0,-25(%ebp)
	movl	16(%ebx),%eax
	cmpl	$2,%eax
	je	Lj328
	jmp	Lj327
Lj328:
	movzwl	14(%ebx),%eax
	cmpl	$4,%eax
	jne	Lj326
	jmp	Lj327
Lj326:
	movb	$1,-25(%ebp)
Lj327:
	movl	16(%ebx),%eax
	cmpl	$1,%eax
	je	Lj333
	jmp	Lj332
Lj333:
	movzwl	14(%ebx),%eax
	cmpl	$8,%eax
	jne	Lj331
	jmp	Lj332
Lj331:
	movb	$1,-25(%ebp)
Lj332:
	movl	16(%ebx),%eax
	cmpl	$3,%eax
	je	Lj338
	jmp	Lj337
Lj338:
	movzwl	14(%ebx),%eax
	cmpl	$16,%eax
	je	Lj339
	cmpl	$32,%eax
	je	Lj339
Lj339:
	jne	Lj336
	jmp	Lj337
Lj336:
	movb	$1,-25(%ebp)
Lj337:
	movl	16(%ebx),%eax
	cmpl	$4,%eax
	jb	Lj344
Lj344:
	jnc	Lj342
	jmp	Lj343
Lj342:
	movb	$1,-25(%ebp)
Lj343:
	cmpb	$0,-25(%ebp)
	jne	Lj347
	jmp	Lj348
Lj347:
	movl	L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr-Lj283(%edi),%edx
	movl	L_$FPREADBMP$_Ld1$non_lazy_ptr-Lj283(%edi),%eax
	movl	$0,%esi
	movl	%eax,%ecx
	movl	%esi,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj283(%edi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj348:
	movl	-12(%ebp),%eax
	movl	8(%ebx),%edx
	cmpl	$0,%edx
	setlb	32(%eax)
	movl	8(%ebx),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	movl	%eax,8(%ebx)
	movl	-12(%ebp),%eax
	cmpb	$0,32(%eax)
	jne	Lj361
	jmp	Lj360
Lj361:
	movl	16(%ebx),%eax
	cmpl	$0,%eax
	je	Lj362
	cmpl	$3,%eax
	je	Lj362
Lj362:
	jne	Lj359
	jmp	Lj360
Lj359:
	movl	L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr-Lj283(%edi),%edx
	movl	L_$FPREADBMP$_Ld3$non_lazy_ptr-Lj283(%edi),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj283(%edi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj360:
	movl	-8(%ebp),%eax
	movl	$0,%ecx
	movl	$0,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*148(%esi)
	movzwl	14(%ebx),%eax
	cmpl	$8,%eax
	jle	Lj375
	jmp	Lj376
Lj375:
	movl	-8(%ebp),%eax
	movb	$1,%dl
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-8(%ebp),%edx
	movl	24(%edx),%edx
	movl	(%edx),%edx
	call	*136(%edx)
	jmp	Lj383
Lj376:
	movl	-8(%ebp),%eax
	movb	$0,%dl
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*136(%ecx)
Lj383:
	movl	-12(%ebp),%eax
	movw	78(%eax),%ax
	cmpw	$1,%ax
	jb	Lj389
	decw	%ax
	je	Lj390
	subw	$3,%ax
	je	Lj391
	subw	$4,%ax
	je	Lj392
	subw	$8,%ax
	je	Lj393
	subw	$8,%ax
	je	Lj394
	subw	$8,%ax
	je	Lj395
	jmp	Lj389
Lj390:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	4(%ebx),%ecx
	movl	-12(%ebp),%eax
	movl	$2,%edx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*116(%esi)
	jmp	Lj388
Lj391:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	4(%ebx),%ecx
	shll	$2,%ecx
	movl	-12(%ebp),%eax
	movl	$16,%edx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*116(%esi)
	jmp	Lj388
Lj392:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	4(%ebx),%ecx
	shll	$3,%ecx
	movl	-12(%ebp),%eax
	movl	$256,%edx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*116(%esi)
	jmp	Lj388
Lj393:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	4(%ebx),%ecx
	shll	$3,%ecx
	shll	$1,%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*116(%esi)
	jmp	Lj388
Lj394:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	4(%ebx),%ecx
	shll	$3,%ecx
	imull	$3,%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*116(%esi)
	jmp	Lj388
Lj395:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	4(%ebx),%ecx
	shll	$3,%ecx
	shll	$2,%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*116(%esi)
	jmp	Lj388
Lj389:
Lj388:
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj444
	movl	$0,-24(%ebp)
	movl	-12(%ebp),%eax
	movzwl	78(%eax),%eax
	cmpl	$8,%eax
	jle	Lj450
	jmp	Lj451
Lj450:
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	cmpl	$0,%eax
	jg	Lj452
	jmp	Lj453
Lj452:
	movl	-12(%ebp),%eax
	movl	96(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj456
Lj453:
	movl	-12(%ebp),%eax
	movzwl	78(%eax),%ecx
	movl	$1,%eax
	shll	%cl,%eax
	movl	%eax,-24(%ebp)
Lj456:
Lj451:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj459
	jmp	Lj460
Lj459:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	24(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*100(%ecx)
	movl	-24(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj466
	decl	-20(%ebp)
	.align 2
Lj467:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	104(%eax),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,8),%ecx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	24(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*104(%ebx)
	cmpl	-20(%ebp),%esi
	jg	Lj467
Lj466:
Lj460:
	movl	-12(%ebp),%eax
	movl	72(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	68(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
	movl	-12(%ebp),%eax
	movb	$0,34(%eax)
	movl	-8(%ebp),%eax
	movl	28(%eax),%ecx
	shll	$2,%ecx
	movl	$1374389535,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	%edx,36(%eax)
	movl	-12(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	je	Lj484
	jmp	Lj485
Lj484:
	movl	-12(%ebp),%eax
	movl	$-1,36(%eax)
Lj485:
	movl	-12(%ebp),%eax
	movl	$0,40(%eax)
	movl	-12(%ebp),%eax
	movl	$-1,24(%eax)
	movl	-12(%ebp),%eax
	movl	$-1,28(%eax)
	movl	-12(%ebp),%eax
	cmpb	$0,32(%eax)
	jne	Lj494
	jmp	Lj495
Lj494:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj497
	decl	-16(%ebp)
	.align 2
Lj498:
	incl	-16(%ebp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*124(%ebx)
	movl	-12(%ebp),%eax
	movb	33(%eax),%al
	testb	%al,%al
	je	Lj511
	jmp	Lj512
Lj511:
	jmp	Lj447
Lj512:
	cmpl	-16(%ebp),%esi
	jg	Lj498
Lj497:
	jmp	Lj513
Lj495:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jl	Lj515
	incl	-16(%ebp)
	.align 2
Lj516:
	decl	-16(%ebp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*124(%ebx)
	movl	-12(%ebp),%eax
	movb	33(%eax),%al
	testb	%al,%al
	je	Lj529
	jmp	Lj530
Lj529:
	jmp	Lj447
Lj530:
	cmpl	$0,-16(%ebp)
	jg	Lj516
Lj515:
Lj513:
	movl	$0,4(%esp)
	movb	$0,12(%esp)
	movl	-12(%ebp),%eax
	leal	33(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	leal	44(%eax),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movb	$100,%cl
	movl	$2,%edx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*100(%ebx)
Lj444:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	call	L_FPREADBMP_TFPREADERBMP_$__FREEBUFS$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj445
	decl	%eax
	testl	%eax,%eax
	je	Lj446
	decl	%eax
	testl	%eax,%eax
	je	Lj282
Lj446:
	call	LFPC_RERAISE$stub
Lj447:
	movl	-68(%ebp),%eax
	movl	$2,-68(%ebp)
	jmp	Lj444
Lj445:
Lj282:
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADBMP_TFPREADERBMP_$__EXPANDRLE8SCANLINE$LONGINT$TSTREAM
_FPREADBMP_TFPREADERBMP_$__EXPANDRLE8SCANLINE$LONGINT$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-112(%ebp)
	movl	%esi,-108(%ebp)
	call	Lj548
Lj548:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-104(%ebp)
	movl	$0,-100(%ebp)
	movl	$0,-96(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj549
	movl	$0,-16(%ebp)
	jmp	Lj555
	.align 2
Lj554:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj557
	jmp	Lj558
Lj557:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj559
	jmp	Lj560
Lj559:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj563
Lj560:
	movl	-12(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,-20(%ebp)
Lj563:
	jmp	Lj567
	.align 2
Lj566:
	movl	-12(%ebp),%eax
	movl	108(%eax),%edx
	movl	-16(%ebp),%eax
	movb	$0,(%edx,%eax,1)
	incl	-16(%ebp)
Lj567:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj566
	jmp	Lj568
Lj568:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj571
	jmp	Lj572
Lj571:
	movl	-12(%ebp),%eax
	movl	$-1,28(%eax)
	jmp	Lj575
Lj572:
	jmp	Lj556
Lj575:
Lj558:
	leal	-21(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	leal	-22(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movzbl	-21(%ebp),%eax
	testl	%eax,%eax
	jne	Lj588
	jmp	Lj589
Lj588:
	movzbl	-21(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	cmpl	60(%eax),%edx
	jg	Lj590
	jmp	Lj591
Lj590:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	L_$FPREADBMP$_Ld5$non_lazy_ptr-Lj548(%esi),%eax
	movl	%eax,-92(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-96(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	L_$FPREADBMP$_Ld7$non_lazy_ptr-Lj548(%esi),%eax
	movl	%eax,-84(%ebp)
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-100(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-100(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$FPREADBMP$_Ld9$non_lazy_ptr-Lj548(%esi),%eax
	movl	%eax,-76(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-104(%ebp),%edx
	movl	$16,%eax
	call	L_SYSUTILS_INTTOHEX$INT64$LONGINT$$ANSISTRING$stub
	movl	-104(%ebp),%eax
	movl	%eax,-72(%ebp)
	leal	-92(%ebp),%edx
	leal	-68(%ebp),%eax
	movl	$5,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-68(%ebp),%ecx
	movl	L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr-Lj548(%esi),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj548(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj591:
	movzbl	-21(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj623
	.align 2
Lj622:
	movl	-12(%ebp),%eax
	movl	108(%eax),%eax
	movl	-16(%ebp),%ecx
	movb	-22(%ebp),%dl
	movb	%dl,(%eax,%ecx,1)
	incl	-16(%ebp)
Lj623:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj622
	jmp	Lj624
Lj624:
	jmp	Lj627
Lj589:
	movb	-22(%ebp),%al
	testb	%al,%al
	je	Lj630
	decb	%al
	je	Lj631
	decb	%al
	je	Lj632
	jmp	Lj629
Lj630:
	jmp	Lj556
	jmp	Lj628
Lj631:
	jmp	Lj556
	jmp	Lj628
Lj632:
	leal	-21(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	leal	-22(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movzbl	-21(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	%edx,24(%eax)
	movzbl	-22(%ebp),%eax
	movl	-4(%ebp),%edx
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	%edx,28(%eax)
	jmp	Lj628
Lj629:
	movzbl	-22(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	cmpl	60(%eax),%edx
	jg	Lj649
	jmp	Lj650
Lj649:
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	movl	L_$FPREADBMP$_Ld5$non_lazy_ptr-Lj548(%esi),%eax
	movl	%eax,-92(%ebp)
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-100(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-100(%ebp),%eax
	movl	%eax,-88(%ebp)
	movl	L_$FPREADBMP$_Ld7$non_lazy_ptr-Lj548(%esi),%eax
	movl	%eax,-84(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-96(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	L_$FPREADBMP$_Ld9$non_lazy_ptr-Lj548(%esi),%eax
	movl	%eax,-76(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-68(%ebp),%edx
	movl	$16,%eax
	call	L_SYSUTILS_INTTOHEX$INT64$LONGINT$$ANSISTRING$stub
	movl	-68(%ebp),%eax
	movl	%eax,-72(%ebp)
	leal	-92(%ebp),%edx
	leal	-104(%ebp),%eax
	movl	$5,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-104(%ebp),%ecx
	movl	L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr-Lj548(%esi),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj548(%esi),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj650:
	movl	-12(%ebp),%eax
	movl	108(%eax),%edx
	movl	-16(%ebp),%eax
	leal	(%edx,%eax,1),%edx
	movzbl	-22(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movzbl	-22(%ebp),%eax
	addl	%eax,-16(%ebp)
	movzbl	-22(%ebp),%eax
	cltd
	movl	$2,%ecx
	idivl	%ecx
	testl	%edx,%edx
	jne	Lj685
	jmp	Lj686
Lj685:
	movl	-8(%ebp),%eax
	movw	$1,%cx
	movl	$1,%edx
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*136(%ebx)
Lj686:
Lj628:
Lj627:
Lj555:
	jmp	Lj554
Lj556:
Lj549:
	call	LFPC_POPADDRSTACK$stub
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-96(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-96(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj550
	call	LFPC_RERAISE$stub
Lj550:
	movl	-112(%ebp),%ebx
	movl	-108(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADBMP_TFPREADERBMP_$__EXPANDRLE4SCANLINE$LONGINT$TSTREAM
_FPREADBMP_TFPREADERBMP_$__EXPANDRLE4SCANLINE$LONGINT$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$184,%esp
	movl	%ebx,-164(%ebp)
	movl	%esi,-160(%ebp)
	call	Lj694
Lj694:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-156(%ebp)
	movl	$0,-152(%ebp)
	movl	$0,-148(%ebp)
	movl	$0,-120(%ebp)
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-76(%ebp)
	testl	%eax,%eax
	jne	Lj695
	movl	-12(%ebp),%eax
	movl	60(%eax),%eax
	shll	$1,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	leal	-32(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj704
	jmp	Lj705
Lj704:
	movl	L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr-Lj694(%ebx),%edx
	movl	L_$FPREADBMP$_Ld11$non_lazy_ptr-Lj694(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj694(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj705:
	leal	-88(%ebp),%ecx
	leal	-112(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-116(%ebp)
	testl	%eax,%eax
	jne	Lj712
	movl	$0,-16(%ebp)
	jmp	Lj719
	.align 2
Lj718:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj721
	jmp	Lj722
Lj721:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj723
	jmp	Lj724
Lj723:
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj727
Lj724:
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj727:
	jmp	Lj731
	.align 2
Lj730:
	movl	-32(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	$0,(%eax,%edx,1)
	incl	-16(%ebp)
Lj731:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj730
	jmp	Lj732
Lj732:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj735
	jmp	Lj736
Lj735:
	movl	-12(%ebp),%eax
	movl	$-1,28(%eax)
	jmp	Lj739
Lj736:
	jmp	Lj720
Lj739:
Lj722:
	leal	-25(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	leal	-26(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	movzbl	-25(%ebp),%eax
	testl	%eax,%eax
	jne	Lj752
	jmp	Lj753
Lj752:
	movzbl	-25(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	cmpl	-24(%ebp),%edx
	jg	Lj754
	jmp	Lj755
Lj754:
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	movl	L_$FPREADBMP$_Ld5$non_lazy_ptr-Lj694(%ebx),%eax
	movl	%eax,-144(%ebp)
	leal	-148(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-148(%ebp)
	leal	-148(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-148(%ebp),%eax
	movl	%eax,-140(%ebp)
	movl	L_$FPREADBMP$_Ld7$non_lazy_ptr-Lj694(%ebx),%eax
	movl	%eax,-136(%ebp)
	leal	-152(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-152(%ebp)
	leal	-152(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-152(%ebp),%eax
	movl	%eax,-132(%ebp)
	movl	L_$FPREADBMP$_Ld9$non_lazy_ptr-Lj694(%ebx),%eax
	movl	%eax,-128(%ebp)
	leal	-156(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-156(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-156(%ebp),%edx
	movl	$16,%eax
	call	L_SYSUTILS_INTTOHEX$INT64$LONGINT$$ANSISTRING$stub
	movl	-156(%ebp),%eax
	movl	%eax,-124(%ebp)
	leal	-144(%ebp),%edx
	leal	-120(%ebp),%eax
	movl	$5,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-120(%ebp),%ecx
	movl	L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr-Lj694(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La6:
	movl	%ebp,%ecx
	leal	La6-Lj694(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj755:
	movb	$1,-33(%ebp)
	movzbl	-25(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	jmp	Lj789
	.align 2
Lj788:
	cmpb	$0,-33(%ebp)
	jne	Lj791
	jmp	Lj792
Lj791:
	movb	-26(%ebp),%al
	andb	$240,%al
	movzbl	%al,%eax
	shrl	$4,%eax
	movl	-32(%ebp),%edx
	movl	-16(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	jmp	Lj795
Lj792:
	movl	-32(%ebp),%eax
	movl	-16(%ebp),%ecx
	movb	-26(%ebp),%dl
	andb	$15,%dl
	movb	%dl,(%eax,%ecx,1)
Lj795:
	incl	-16(%ebp)
	movb	-33(%ebp),%al
	testb	%al,%al
	seteb	-33(%ebp)
Lj789:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj788
	jmp	Lj790
Lj790:
	jmp	Lj800
Lj753:
	movb	-26(%ebp),%al
	testb	%al,%al
	je	Lj803
	decb	%al
	je	Lj804
	decb	%al
	je	Lj805
	jmp	Lj802
Lj803:
	jmp	Lj720
	jmp	Lj801
Lj804:
	jmp	Lj720
	jmp	Lj801
Lj805:
	leal	-25(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	leal	-26(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	movzbl	-25(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	%edx,24(%eax)
	movzbl	-26(%ebp),%eax
	movl	-4(%ebp),%edx
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	%edx,28(%eax)
	jmp	Lj801
Lj802:
	movzbl	-26(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	cmpl	-24(%ebp),%edx
	jg	Lj822
	jmp	Lj823
Lj822:
	leal	-156(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-156(%ebp)
	movl	L_$FPREADBMP$_Ld5$non_lazy_ptr-Lj694(%ebx),%eax
	movl	%eax,-144(%ebp)
	leal	-152(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-152(%ebp)
	leal	-152(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-152(%ebp),%eax
	movl	%eax,-140(%ebp)
	movl	L_$FPREADBMP$_Ld7$non_lazy_ptr-Lj694(%ebx),%eax
	movl	%eax,-136(%ebp)
	leal	-148(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-148(%ebp)
	leal	-148(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-148(%ebp),%eax
	movl	%eax,-132(%ebp)
	movl	L_$FPREADBMP$_Ld9$non_lazy_ptr-Lj694(%ebx),%eax
	movl	%eax,-128(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	leal	-120(%ebp),%edx
	movl	$16,%eax
	call	L_SYSUTILS_INTTOHEX$INT64$LONGINT$$ANSISTRING$stub
	movl	-120(%ebp),%eax
	movl	%eax,-124(%ebp)
	leal	-144(%ebp),%edx
	leal	-156(%ebp),%eax
	movl	$5,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-156(%ebp),%ecx
	movl	L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr-Lj694(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La7:
	movl	%ebp,%ecx
	leal	La7-Lj694(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj823:
	movzbl	-26(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movb	$1,-33(%ebp)
	jmp	Lj857
	.align 2
Lj856:
	cmpb	$0,-33(%ebp)
	jne	Lj859
	jmp	Lj860
Lj859:
	leal	-25(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*128(%esi)
	movb	-25(%ebp),%al
	andb	$240,%al
	movzbl	%al,%eax
	shrl	$4,%eax
	movl	-32(%ebp),%edx
	movl	-16(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	jmp	Lj869
Lj860:
	movl	-32(%ebp),%eax
	movl	-16(%ebp),%ecx
	movb	-25(%ebp),%dl
	andb	$15,%dl
	movb	%dl,(%eax,%ecx,1)
Lj869:
	incl	-16(%ebp)
	movb	-33(%ebp),%al
	testb	%al,%al
	seteb	-33(%ebp)
Lj857:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj856
	jmp	Lj858
Lj858:
	movzbl	-26(%ebp),%eax
	cltd
	movl	$2,%ecx
	idivl	%ecx
	movzbl	-26(%ebp),%eax
	addl	%eax,%edx
	movb	%dl,-26(%ebp)
	movzbl	-26(%ebp),%eax
	cltd
	movl	$4,%ecx
	idivl	%ecx
	testl	%edx,%edx
	jne	Lj876
	jmp	Lj877
Lj876:
	movl	-8(%ebp),%eax
	movw	$1,%cx
	movl	$1,%edx
	movl	-8(%ebp),%esi
	movl	(%esi),%esi
	call	*136(%esi)
Lj877:
Lj801:
Lj800:
Lj719:
	jmp	Lj718
Lj720:
	movl	-12(%ebp),%eax
	movl	60(%eax),%edx
	decl	%edx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%edx
	jl	Lj885
	decl	-16(%ebp)
	.align 2
Lj886:
	incl	-16(%ebp)
	movl	-32(%ebp),%ecx
	movl	-16(%ebp),%eax
	shll	$1,%eax
	movzbl	(%ecx,%eax,1),%eax
	shll	$4,%eax
	movl	-32(%ebp),%esi
	movl	-16(%ebp),%ecx
	shll	$1,%ecx
	incl	%ecx
	movzbl	(%esi,%ecx,1),%ecx
	orl	%ecx,%eax
	movl	-12(%ebp),%ecx
	movl	108(%ecx),%esi
	movl	-16(%ebp),%ecx
	movb	%al,(%esi,%ecx,1)
	cmpl	-16(%ebp),%edx
	jg	Lj886
Lj885:
Lj712:
	call	LFPC_POPADDRSTACK$stub
	movl	-32(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-116(%ebp),%eax
	testl	%eax,%eax
	je	Lj713
	decl	%eax
	testl	%eax,%eax
	je	Lj714
Lj714:
	call	LFPC_RERAISE$stub
Lj713:
Lj695:
	call	LFPC_POPADDRSTACK$stub
	leal	-156(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-156(%ebp)
	leal	-152(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-152(%ebp)
	leal	-148(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-148(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj696
	call	LFPC_RERAISE$stub
Lj696:
	movl	-164(%ebp),%ebx
	movl	-160(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPREADBMP_TFPREADERBMP_$__READSCANLINE$LONGINT$TSTREAM
_FPREADBMP_TFPREADERBMP_$__READSCANLINE$LONGINT$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	cmpl	$1,%eax
	je	Lj893
	jmp	Lj894
Lj893:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADBMP_TFPREADERBMP_$__EXPANDRLE8SCANLINE$LONGINT$TSTREAM$stub
	jmp	Lj901
Lj894:
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	cmpl	$2,%eax
	je	Lj902
	jmp	Lj903
Lj902:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADBMP_TFPREADERBMP_$__EXPANDRLE4SCANLINE$LONGINT$TSTREAM$stub
	jmp	Lj910
Lj903:
	movl	-12(%ebp),%eax
	movl	108(%eax),%edx
	movl	-12(%ebp),%eax
	movl	60(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
Lj910:
Lj901:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADBMP_TFPREADERBMP_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE
_FPREADBMP_TFPREADERBMP_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movw	78(%eax),%ax
	cmpw	$1,%ax
	jb	Lj920
	decw	%ax
	je	Lj921
	subw	$3,%ax
	je	Lj922
	subw	$4,%ax
	je	Lj923
	subw	$8,%ax
	je	Lj924
	subw	$8,%ax
	je	Lj925
	subw	$8,%ax
	je	Lj926
	jmp	Lj920
Lj921:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj928
	decl	-16(%ebp)
	.align 2
Lj929:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	108(%eax),%ecx
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$7,%eax
	addl	%eax,%edx
	sarl	$3,%edx
	movzbl	(%ecx,%edx,1),%edx
	movl	-16(%ebp),%ecx
	andl	$7,%ecx
	movl	$7,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	shrl	%cl,%edx
	andl	$1,%edx
	testl	%edx,%edx
	jne	Lj930
	jmp	Lj931
Lj930:
	movl	$1,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub
	jmp	Lj940
Lj931:
	movl	$0,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub
Lj940:
	cmpl	-16(%ebp),%ebx
	jg	Lj929
Lj928:
	jmp	Lj919
Lj922:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj950
	decl	-16(%ebp)
	.align 2
Lj951:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	108(%eax),%ecx
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	movzbl	(%ecx,%edx,1),%eax
	movl	-16(%ebp),%ecx
	incl	%ecx
	andl	$1,%ecx
	shll	$2,%ecx
	shrl	%cl,%eax
	andl	$15,%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj951
Lj950:
	jmp	Lj919
Lj923:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj961
	decl	-16(%ebp)
	.align 2
Lj962:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	108(%eax),%eax
	movl	-16(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj962
Lj961:
	jmp	Lj919
Lj924:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj972
	decl	-16(%ebp)
	.align 2
Lj973:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	108(%eax),%eax
	movl	-16(%ebp),%edx
	movzwl	(%eax,%edx,2),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADBMP_TFPREADERBMP_$__EXPANDCOLOR$LONGWORD$$TFPCOLOR$stub
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj973
Lj972:
	jmp	Lj919
Lj925:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj987
	decl	-16(%ebp)
	.align 2
Lj988:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	108(%eax),%ecx
	movl	-16(%ebp),%eax
	imull	$3,%eax
	movw	(%ecx,%eax),%dx
	movw	%dx,(%esp)
	movb	2(%ecx,%eax),%al
	movb	%al,2(%esp)
	call	L_FPREADBMP_RGBTOFPCOLOR$TCOLORRGB$$TFPCOLOR$stub
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj988
Lj987:
	jmp	Lj919
Lj926:
	movl	-8(%ebp),%eax
	movl	32(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj1000
	decl	-16(%ebp)
	.align 2
Lj1001:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	80(%eax),%eax
	cmpl	$3,%eax
	je	Lj1002
	jmp	Lj1003
Lj1002:
	movl	-12(%ebp),%eax
	movl	108(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADBMP_TFPREADERBMP_$__EXPANDCOLOR$LONGWORD$$TFPCOLOR$stub
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	jmp	Lj1016
Lj1003:
	movl	-12(%ebp),%eax
	movl	108(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,(%esp)
	call	L_FPREADBMP_RGBATOFPCOLOR$TCOLORRGBA$$TFPCOLOR$stub
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
Lj1016:
	cmpl	-16(%ebp),%ebx
	jg	Lj1001
Lj1000:
	jmp	Lj919
Lj920:
Lj919:
	movl	-12(%ebp),%eax
	addl	$4,40(%eax)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	40(%eax),%eax
	cmpl	36(%edx),%eax
	jae	Lj1027
	jmp	Lj1028
Lj1027:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	40(%eax),%eax
	xorl	%edx,%edx
	divl	36(%ecx)
	movl	-12(%ebp),%edx
	movzbl	34(%edx),%edx
	addl	%edx,%eax
	movl	-12(%ebp),%edx
	movb	%al,34(%edx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	40(%eax),%eax
	xorl	%edx,%edx
	divl	36(%ecx)
	movl	-12(%ebp),%eax
	movl	%edx,40(%eax)
	movl	$0,4(%esp)
	movb	$0,12(%esp)
	movl	-12(%ebp),%eax
	leal	33(%eax),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	leal	44(%eax),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	movb	34(%eax),%cl
	movl	-12(%ebp),%eax
	movl	$1,%edx
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*100(%ebx)
Lj1028:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADBMP_TFPREADERBMP_$__INTERNALCHECK$TSTREAM$$BOOLEAN
_FPREADBMP_TFPREADERBMP_$__INTERNALCHECK$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$14,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movzwl	-24(%ebp),%eax
	cmpl	$19778,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPREADBMP
_INIT$_FPREADBMP:
.reference __FPREADBMP_init
.globl	__FPREADBMP_init
__FPREADBMP_init:
.reference _INIT$_FPREADBMP
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_FPREADBMP_TFPREADERBMP$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPREADBMP$_Ld13$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	L_$FPREADBMP$_Ld15$non_lazy_ptr-Lj2(%ebx),%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPREADBMP$_Ld17
_$FPREADBMP$_Ld17:
	.byte	12
	.ascii	"TFPReaderBMP"

.const_data
	.align 2
.globl	_VMT_FPREADBMP_TFPREADERBMP
_VMT_FPREADBMP_TFPREADERBMP:
	.long	128,-128
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEREADER
	.long	_$FPREADBMP$_Ld17
	.long	0,0
	.long	_$FPREADBMP$_Ld18
	.long	_RTTI_FPREADBMP_TFPREADERBMP
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_FPREADBMP_TFPREADERBMP_$__DESTROY
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
	.long	_FPREADBMP_TFPREADERBMP_$__CREATE$$TFPREADERBMP
	.long	_FPREADBMP_TFPREADERBMP_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
	.long	_FPREADBMP_TFPREADERBMP_$__INTERNALCHECK$TSTREAM$$BOOLEAN
	.long	_FPREADBMP_TFPREADERBMP_$__SETUPREAD$LONGINT$LONGINT$TSTREAM
	.long	_FPREADBMP_TFPREADERBMP_$__READSCANLINE$LONGINT$TSTREAM
	.long	_FPREADBMP_TFPREADERBMP_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPREADBMP
_THREADVARLIST_FPREADBMP:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$FPREADBMP$_Ld2
_$FPREADBMP$_Ld2:
	.short	0,1
	.long	0,-1,24
.reference _$FPREADBMP$_Ld1
.globl	_$FPREADBMP$_Ld1
_$FPREADBMP$_Ld1:
.reference _$FPREADBMP$_Ld2
	.ascii	"Bad BMP compression mode\000"

.const_data
	.align 2
.globl	_$FPREADBMP$_Ld4
_$FPREADBMP$_Ld4:
	.short	0,1
	.long	0,-1,37
.reference _$FPREADBMP$_Ld3
.globl	_$FPREADBMP$_Ld3
_$FPREADBMP$_Ld3:
.reference _$FPREADBMP$_Ld4
	.ascii	"Top-down bitmaps cannot be compressed\000"

.const_data
	.align 2
.globl	_$FPREADBMP$_Ld6
_$FPREADBMP$_Ld6:
	.short	0,1
	.long	0,-1,25
.reference _$FPREADBMP$_Ld5
.globl	_$FPREADBMP$_Ld5
_$FPREADBMP$_Ld5:
.reference _$FPREADBMP$_Ld6
	.ascii	"Bad BMP RLE chunk at row \000"

.const_data
	.align 2
.globl	_$FPREADBMP$_Ld8
_$FPREADBMP$_Ld8:
	.short	0,1
	.long	0,-1,6
.reference _$FPREADBMP$_Ld7
.globl	_$FPREADBMP$_Ld7
_$FPREADBMP$_Ld7:
.reference _$FPREADBMP$_Ld8
	.ascii	", col \000"

.const_data
	.align 2
.globl	_$FPREADBMP$_Ld10
_$FPREADBMP$_Ld10:
	.short	0,1
	.long	0,-1,15
.reference _$FPREADBMP$_Ld9
.globl	_$FPREADBMP$_Ld9
_$FPREADBMP$_Ld9:
.reference _$FPREADBMP$_Ld10
	.ascii	", file offset $\000"

.const_data
	.align 2
.globl	_$FPREADBMP$_Ld12
_$FPREADBMP$_Ld12:
	.short	0,1
	.long	0,-1,13
.reference _$FPREADBMP$_Ld11
.globl	_$FPREADBMP$_Ld11
_$FPREADBMP$_Ld11:
.reference _$FPREADBMP$_Ld12
	.ascii	"Out of memory\000"

.const_data
	.align 2
.globl	_$FPREADBMP$_Ld14
_$FPREADBMP$_Ld14:
	.short	0,1
	.long	0,-1,3
.reference _$FPREADBMP$_Ld13
.globl	_$FPREADBMP$_Ld13
_$FPREADBMP$_Ld13:
.reference _$FPREADBMP$_Ld14
	.ascii	"bmp\000"

.const_data
	.align 2
.globl	_$FPREADBMP$_Ld16
_$FPREADBMP$_Ld16:
	.short	0,1
	.long	0,-1,10
.reference _$FPREADBMP$_Ld15
.globl	_$FPREADBMP$_Ld15
_$FPREADBMP$_Ld15:
.reference _$FPREADBMP$_Ld16
	.ascii	"BMP Format\000"
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

L_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER
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

L_FPREADBMP_TFPREADERBMP_$__FREEBUFS$stub:
.indirect_symbol _FPREADBMP_TFPREADERBMP_$__FREEBUFS
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

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADBMP_TFPREADERBMP_$__COUNTBITS$BYTE$$SHORTINT$stub:
.indirect_symbol _FPREADBMP_TFPREADERBMP_$__COUNTBITS$BYTE$$SHORTINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADBMP_RGBTOFPCOLOR$TCOLORRGB$$TFPCOLOR$stub:
.indirect_symbol _FPREADBMP_RGBTOFPCOLOR$TCOLORRGB$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADBMP_TFPREADERBMP_$__SHIFTCOUNT$LONGWORD$$SHORTINT$stub:
.indirect_symbol _FPREADBMP_TFPREADERBMP_$__SHIFTCOUNT$LONGWORD$$SHORTINT
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

Lfpc_dynarray_setlength$stub:
.indirect_symbol fpc_dynarray_setlength
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_dynarray_high$stub:
.indirect_symbol fpc_dynarray_high
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADBMP_RGBATOFPCOLOR$TCOLORRGBA$$TFPCOLOR$stub:
.indirect_symbol _FPREADBMP_RGBATOFPCOLOR$TCOLORRGBA$$TFPCOLOR
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
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

L_SYSUTILS_INTTOHEX$INT64$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOHEX$INT64$LONGINT$$ANSISTRING
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

L_FPREADBMP_TFPREADERBMP_$__EXPANDRLE8SCANLINE$LONGINT$TSTREAM$stub:
.indirect_symbol _FPREADBMP_TFPREADERBMP_$__EXPANDRLE8SCANLINE$LONGINT$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADBMP_TFPREADERBMP_$__EXPANDRLE4SCANLINE$LONGINT$TSTREAM$stub:
.indirect_symbol _FPREADBMP_TFPREADERBMP_$__EXPANDRLE4SCANLINE$LONGINT$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETPIXEL$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADBMP_TFPREADERBMP_$__EXPANDCOLOR$LONGWORD$$TFPCOLOR$stub:
.indirect_symbol _FPREADBMP_TFPREADERBMP_$__EXPANDCOLOR$LONGWORD$$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1$stub:
.indirect_symbol _FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1
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
.globl	_INIT_FPREADBMP_DEF30
_INIT_FPREADBMP_DEF30:
	.byte	21
	.ascii	"\000"
	.long	4
	.long	_INIT_BMPCOMN_TCOLORRGBA
	.long	-1,0
	.byte	9
	.ascii	"FPReadBMP"

.const_data
	.align 2
.globl	_INIT_FPREADBMP_DEF57
_INIT_FPREADBMP_DEF57:
	.byte	12
	.ascii	"\000"
	.long	4,6
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPREADBMP_DEF58
_INIT_FPREADBMP_DEF58:
	.byte	12
	.ascii	"\000"
	.long	4,6
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPREADBMP_DEF78
_INIT_FPREADBMP_DEF78:
	.byte	12
	.ascii	"\000"
	.long	4,6
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FPREADBMP_DEF79
_INIT_FPREADBMP_DEF79:
	.byte	12
	.ascii	"\000"
	.long	4,6
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FPREADBMP$_Ld18
_$FPREADBMP$_Ld18:
	.short	0
	.long	_$FPREADBMP$_Ld19
	.align 2
.globl	_$FPREADBMP$_Ld19
_$FPREADBMP$_Ld19:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPREADBMP_TFPREADERBMP
_INIT_FPREADBMP_TFPREADERBMP:
	.byte	15,12
	.ascii	"TFPReaderBMP"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPREADBMP_TFPREADERBMP
_RTTI_FPREADBMP_TFPREADERBMP:
	.byte	15,12
	.ascii	"TFPReaderBMP"
	.long	_VMT_FPREADBMP_TFPREADERBMP
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEREADER
	.short	0
	.byte	9
	.ascii	"FPReadBMP"
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
L_INIT_FPREADBMP_DEF30$non_lazy_ptr:
.indirect_symbol _INIT_FPREADBMP_DEF30
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPIMAGE_FPIMAGEEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_FPIMAGE_FPIMAGEEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADBMP$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPREADBMP$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADBMP$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPREADBMP$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADBMP$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPREADBMP$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADBMP$_Ld7$non_lazy_ptr:
.indirect_symbol _$FPREADBMP$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADBMP$_Ld9$non_lazy_ptr:
.indirect_symbol _$FPREADBMP$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADBMP$_Ld11$non_lazy_ptr:
.indirect_symbol _$FPREADBMP$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPREADBMP_TFPREADERBMP$non_lazy_ptr:
.indirect_symbol _VMT_FPREADBMP_TFPREADERBMP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_IMAGEHANDLERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADBMP$_Ld13$non_lazy_ptr:
.indirect_symbol _$FPREADBMP$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADBMP$_Ld15$non_lazy_ptr:
.indirect_symbol _$FPREADBMP$_Ld15
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

