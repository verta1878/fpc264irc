# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPREADPNM_TFPREADERPNM_$__INTERNALCHECK$TSTREAM$$BOOLEAN
_FPREADPNM_TFPREADERPNM_$__INTERNALCHECK$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$1,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPREADPNM_DROPWHITESPACES$TSTREAM$$CHAR
_FPREADPNM_DROPWHITESPACES$TSTREAM$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	.align 2
Lj9:
	leal	-5(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movb	-5(%ebp),%al
	cmpb	$35,%al
	je	Lj18
	jmp	Lj19
Lj18:
	.align 2
Lj20:
	leal	-5(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movb	-5(%ebp),%al
	cmpb	$10,%al
	je	Lj22
	jmp	Lj20
Lj22:
Lj19:
	movzbl	-5(%ebp),%eax
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj29
	cmpl	$4,%eax
	stc
	je	Lj29
	cmpl	$23,%eax
	stc
	je	Lj29
	clc
Lj29:
	jc	Lj9
	jmp	Lj11
Lj11:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPREADPNM_READINTEGER$TSTREAM$$LONGINT
_FPREADPNM_READINTEGER$TSTREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj32
	movb	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	call	L_FPREADPNM_DROPWHITESPACES$TSTREAM$$CHAR$stub
	movb	%al,-15(%ebp)
	.align 2
Lj41:
	incb	-16(%ebp)
	movzbl	-16(%ebp),%eax
	incl	%eax
	movzbl	%al,%eax
	leal	-16(%ebp,%eax,1),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movb	-16(%ebp),%al
	cmpb	$7,%al
	je	Lj43
	jmp	Lj50
Lj50:
	movzbl	-16(%ebp),%eax
	incl	%eax
	movzbl	%al,%eax
	movzbl	-16(%ebp,%eax,1),%eax
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj51
	cmpl	$4,%eax
	stc
	je	Lj51
	cmpl	$23,%eax
	stc
	je	Lj51
	clc
Lj51:
	jc	Lj43
	jmp	Lj41
Lj43:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	leal	-16(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-60(%ebp),%eax
	call	L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub
	movl	%eax,-8(%ebp)
Lj32:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj33
	call	LFPC_RERAISE$stub
Lj33:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPREADPNM_TFPREADERPNM_$__READHEADER$TSTREAM
_FPREADPNM_TFPREADERPNM_$__READHEADER$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj61
Lj61:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leal	-9(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movb	-9(%ebp),%al
	cmpb	$80,%al
	jne	Lj68
	jmp	Lj69
Lj68:
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj61(%ebx),%edx
	movl	L_$FPREADPNM$_Ld2$non_lazy_ptr-Lj61(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj61(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj69:
	leal	-9(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	movl	-8(%ebp),%edx
	movzbl	-9(%ebp),%eax
	subl	$48,%eax
	movl	%eax,24(%edx)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	decl	%eax
	cmpl	$6,%eax
	jb	Lj86
Lj86:
	jnc	Lj84
	jmp	Lj85
Lj84:
	movl	$0,(%esp)
	movzbl	-9(%ebp),%eax
	movl	%eax,-13(%ebp)
	movl	$2,-17(%ebp)
	leal	-17(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj61(%ebx),%edx
	movl	L_$FPREADPNM$_Ld4$non_lazy_ptr-Lj61(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj61(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj85:
	movl	-4(%ebp),%eax
	call	L_FPREADPNM_READINTEGER$TSTREAM$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,28(%edx)
	movl	-4(%ebp),%eax
	call	L_FPREADPNM_READINTEGER$TSTREAM$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,32(%edx)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	$1,%eax
	je	Lj107
	cmpl	$4,%eax
	je	Lj107
Lj107:
	je	Lj105
	jmp	Lj106
Lj105:
	movl	-8(%ebp),%eax
	movl	$1,36(%eax)
	jmp	Lj110
Lj106:
	movl	-4(%ebp),%eax
	call	L_FPREADPNM_READINTEGER$TSTREAM$$LONGINT$stub
	movl	-8(%ebp),%edx
	movl	%eax,36(%edx)
Lj110:
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	$0,%eax
	jle	Lj115
	jmp	Lj118
Lj118:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$0,%eax
	jle	Lj115
	jmp	Lj117
Lj117:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	$0,%eax
	jbe	Lj115
	jmp	Lj116
Lj115:
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj61(%ebx),%edx
	movl	L_$FPREADPNM$_Ld6$non_lazy_ptr-Lj61(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj61(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj116:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	$1,%eax
	jl	Lj126
	decl	%eax
	je	Lj127
	decl	%eax
	je	Lj128
	decl	%eax
	je	Lj129
	decl	%eax
	je	Lj130
	decl	%eax
	je	Lj131
	decl	%eax
	je	Lj132
	jmp	Lj126
Lj127:
	movl	-8(%ebp),%eax
	movb	$1,40(%eax)
	jmp	Lj125
Lj128:
	movl	-8(%ebp),%eax
	movb	$16,40(%eax)
	jmp	Lj125
Lj129:
	movl	-8(%ebp),%eax
	movb	$48,40(%eax)
	jmp	Lj125
Lj130:
	movl	-8(%ebp),%eax
	movb	$1,40(%eax)
	jmp	Lj125
Lj131:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	$255,%eax
	ja	Lj141
	jmp	Lj142
Lj141:
	movl	-8(%ebp),%eax
	movb	$16,40(%eax)
	jmp	Lj145
Lj142:
	movl	-8(%ebp),%eax
	movb	$8,40(%eax)
Lj145:
	jmp	Lj125
Lj132:
	movl	-8(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	$255,%eax
	ja	Lj148
	jmp	Lj149
Lj148:
	movl	-8(%ebp),%eax
	movb	$48,40(%eax)
	jmp	Lj152
Lj149:
	movl	-8(%ebp),%eax
	movb	$24,40(%eax)
Lj152:
	jmp	Lj125
Lj126:
Lj125:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNM_TFPREADERPNM_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
_FPREADPNM_TFPREADERPNM_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADPNM_TFPREADERPNM_$__READHEADER$TSTREAM$stub
	movl	-12(%ebp),%eax
	movl	32(%eax),%ecx
	movl	-12(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*148(%ebx)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	addl	$7,%eax
	shrl	$3,%eax
	movl	-12(%ebp),%edx
	movzbl	40(%edx),%edx
	imull	%edx,%eax
	movl	-12(%ebp),%edx
	movl	%eax,44(%edx)
	movl	-12(%ebp),%eax
	movl	44(%eax),%edx
	movl	-12(%ebp),%eax
	leal	48(%eax),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj173
	movl	-8(%ebp),%eax
	movl	28(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj178
	decl	-16(%ebp)
	.align 2
Lj179:
	incl	-16(%ebp)
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADPNM_TFPREADERPNM_$__READSCANLINE$LONGINT$TSTREAM$stub
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPREADPNM_TFPREADERPNM_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj179
Lj178:
Lj173:
	call	LFPC_POPADDRSTACK$stub
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj174
	decl	%eax
	testl	%eax,%eax
	je	Lj175
Lj175:
	call	LFPC_RERAISE$stub
Lj174:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNM_TFPREADERPNM_$__READSCANLINE$LONGINT$TSTREAM
_FPREADPNM_TFPREADERPNM_$__READSCANLINE$LONGINT$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	$1,%eax
	jl	Lj197
	decl	%eax
	je	Lj198
	decl	%eax
	je	Lj199
	decl	%eax
	je	Lj200
	decl	%eax
	jl	Lj197
	subl	$2,%eax
	jle	Lj201
	jmp	Lj197
Lj198:
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%esi
	addl	$7,%esi
	shrl	$3,%esi
	decl	%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj205
	decl	-20(%ebp)
	.align 2
Lj206:
	incl	-20(%ebp)
	movl	-32(%ebp),%eax
	movb	$0,(%eax)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	shll	$3,%eax
	movl	28(%edx),%edx
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$7,%eax
	jg	Lj211
	jmp	Lj212
Lj211:
	movl	$7,-28(%ebp)
Lj212:
	movl	-28(%ebp),%edi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%edi
	jl	Lj216
	decl	-24(%ebp)
	.align 2
Lj217:
	incl	-24(%ebp)
	movl	-32(%ebp),%eax
	movzbl	(%eax),%ebx
	movl	-8(%ebp),%eax
	call	L_FPREADPNM_READINTEGER$TSTREAM$$LONGINT$stub
	movl	-24(%ebp),%ecx
	movl	$7,%edx
	subl	%ecx,%edx
	movl	%edx,%ecx
	shll	%cl,%eax
	orl	%eax,%ebx
	movb	%bl,%al
	movl	-32(%ebp),%edx
	movb	%al,(%edx)
	cmpl	-24(%ebp),%edi
	jg	Lj217
Lj216:
	incl	-32(%ebp)
	cmpl	-20(%ebp),%esi
	jg	Lj206
Lj205:
	jmp	Lj196
Lj199:
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj225
	decl	-20(%ebp)
	.align 2
Lj226:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPREADPNM_READINTEGER$TSTREAM$$LONGINT$stub
	movl	-16(%ebp),%edx
	movw	%ax,(%edx)
	addl	$2,-16(%ebp)
	cmpl	-20(%ebp),%ebx
	jg	Lj226
Lj225:
	jmp	Lj196
Lj200:
	movl	-12(%ebp),%eax
	movl	48(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	28(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj234
	decl	-20(%ebp)
	.align 2
Lj235:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPREADPNM_READINTEGER$TSTREAM$$LONGINT$stub
	movl	-16(%ebp),%edx
	movw	%ax,(%edx)
	addl	$2,-16(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPREADPNM_READINTEGER$TSTREAM$$LONGINT$stub
	movl	-16(%ebp),%edx
	movw	%ax,(%edx)
	addl	$2,-16(%ebp)
	movl	-8(%ebp),%eax
	call	L_FPREADPNM_READINTEGER$TSTREAM$$LONGINT$stub
	movl	-16(%ebp),%edx
	movw	%ax,(%edx)
	addl	$2,-16(%ebp)
	cmpl	-20(%ebp),%ebx
	jg	Lj235
Lj234:
	jmp	Lj196
Lj201:
	movl	-12(%ebp),%eax
	movl	48(%eax),%edx
	movl	-12(%ebp),%eax
	movl	44(%eax),%ecx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub
	jmp	Lj196
Lj197:
Lj196:
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADPNM_TFPREADERPNM_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE
_FPREADPNM_TFPREADERPNM_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movw	$65535,-14(%ebp)
	movl	-12(%ebp),%eax
	movl	36(%eax),%edx
	incl	%edx
	movl	-12(%ebp),%eax
	movl	36(%eax),%eax
	mull	%edx
	movl	-12(%ebp),%edx
	movl	36(%edx),%edx
	addl	%edx,%eax
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	$1,%eax
	jl	Lj275
	decl	%eax
	je	Lj276
	decl	%eax
	je	Lj277
	decl	%eax
	je	Lj278
	decl	%eax
	je	Lj279
	decl	%eax
	je	Lj280
	decl	%eax
	je	Lj281
	jmp	Lj275
Lj276:
	movl	%ebp,%eax
	call	L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_BYTEBNWSCANLINE$stub
	jmp	Lj274
Lj277:
	movl	%ebp,%eax
	call	L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_WORDGRAYSCANLINE$stub
	jmp	Lj274
Lj278:
	movl	%ebp,%eax
	call	L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_WORDRGBSCANLINE$stub
	jmp	Lj274
Lj279:
	movl	%ebp,%eax
	call	L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_BYTEBNWSCANLINE$stub
	jmp	Lj274
Lj280:
	movl	-12(%ebp),%eax
	movzbl	40(%eax),%eax
	cmpl	$8,%eax
	je	Lj290
	jmp	Lj291
Lj290:
	movl	%ebp,%eax
	call	L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_BYTEGRAYSCANLINE$stub
	jmp	Lj294
Lj291:
	movl	%ebp,%eax
	call	L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_WORDGRAYSCANLINE$stub
Lj294:
	jmp	Lj274
Lj281:
	movl	-12(%ebp),%eax
	movzbl	40(%eax),%eax
	cmpl	$24,%eax
	je	Lj297
	jmp	Lj298
Lj297:
	movl	%ebp,%eax
	call	L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_BYTERGBSCANLINE$stub
	jmp	Lj301
Lj298:
	movl	%ebp,%eax
	call	L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_WORDRGBSCANLINE$stub
Lj301:
	jmp	Lj274
Lj275:
Lj274:
	leave
	ret

.text
	.align 4
.globl	_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_BYTERGBSCANLINE
_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_BYTERGBSCANLINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	48(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj307
	decl	-12(%ebp)
	.align 2
Lj308:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%dl
	movl	-4(%ebp),%eax
	call	L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_SCALEBYTE$BYTE$$WORD$stub
	movl	-4(%ebp),%edx
	movw	%ax,-20(%edx)
	incl	-8(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%dl
	movl	-4(%ebp),%eax
	call	L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_SCALEBYTE$BYTE$$WORD$stub
	movl	-4(%ebp),%edx
	movw	%ax,-18(%edx)
	incl	-8(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%dl
	movl	-4(%ebp),%eax
	call	L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_SCALEBYTE$BYTE$$WORD$stub
	movl	-4(%ebp),%edx
	movw	%ax,-16(%edx)
	movl	-4(%ebp),%eax
	leal	-20(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	incl	-8(%ebp)
	cmpl	-12(%ebp),%ebx
	jg	Lj308
Lj307:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_BYTEGRAYSCANLINE
_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_BYTEGRAYSCANLINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	48(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	28(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj338
	decl	-12(%ebp)
	.align 2
Lj339:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%dl
	movl	-4(%ebp),%eax
	call	L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_SCALEBYTE$BYTE$$WORD$stub
	movzwl	%ax,%eax
	movl	-4(%ebp),%edx
	movl	%eax,-24(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	-24(%eax),%ax
	movw	%ax,-20(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	-24(%eax),%ax
	movw	%ax,-18(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	-24(%eax),%ax
	movw	%ax,-16(%edx)
	movl	-4(%ebp),%eax
	leal	-20(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	incl	-8(%ebp)
	cmpl	-12(%ebp),%ebx
	jg	Lj339
Lj338:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_WORDRGBSCANLINE
_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_WORDRGBSCANLINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	48(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	28(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj363
	decl	-12(%ebp)
	.align 2
Lj364:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	call	L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_SCALEWORD$WORD$$WORD$stub
	movl	-4(%ebp),%edx
	movw	%ax,-20(%edx)
	addl	$2,-8(%ebp)
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	call	L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_SCALEWORD$WORD$$WORD$stub
	movl	-4(%ebp),%edx
	movw	%ax,-18(%edx)
	addl	$2,-8(%ebp)
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	call	L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_SCALEWORD$WORD$$WORD$stub
	movl	-4(%ebp),%edx
	movw	%ax,-16(%edx)
	movl	-4(%ebp),%eax
	leal	-20(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	addl	$2,-8(%ebp)
	cmpl	-12(%ebp),%ebx
	jg	Lj364
Lj363:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_WORDGRAYSCANLINE
_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_WORDGRAYSCANLINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	48(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	28(%eax),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj394
	decl	-12(%ebp)
	.align 2
Lj395:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movw	(%eax),%dx
	movl	-4(%ebp),%eax
	call	L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_SCALEWORD$WORD$$WORD$stub
	movzwl	%ax,%eax
	movl	-4(%ebp),%edx
	movl	%eax,-24(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	-24(%eax),%ax
	movw	%ax,-20(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	-24(%eax),%ax
	movw	%ax,-18(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	-24(%eax),%ax
	movw	%ax,-16(%edx)
	movl	-4(%ebp),%eax
	leal	-20(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	addl	$2,-8(%ebp)
	cmpl	-12(%ebp),%ebx
	jg	Lj395
Lj394:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_BYTEBNWSCANLINE
_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_BYTEBNWSCANLINE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	call	Lj261
Lj261:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	48(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	28(%eax),%eax
	addl	$7,%eax
	shrl	$3,%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj419
	decl	-12(%ebp)
	.align 2
Lj420:
	incl	-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-24(%edx)
	movl	-12(%ebp),%eax
	shll	$3,%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	28(%eax),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$7,%eax
	jg	Lj427
	jmp	Lj428
Lj427:
	movl	$7,-24(%ebp)
Lj428:
	movl	-24(%ebp),%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj432
	decl	-16(%ebp)
	.align 2
Lj433:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-24(%eax),%eax
	andl	$128,%eax
	testl	%eax,%eax
	jne	Lj434
	jmp	Lj435
Lj434:
	movl	L_TC_FPIMAGE_COLBLACK$non_lazy_ptr-Lj261(%edi),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
	jmp	Lj444
Lj435:
	movl	L_TC_FPIMAGE_COLWHITE$non_lazy_ptr-Lj261(%edi),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SETCOLOR$LONGINT$LONGINT$TFPCOLOR$stub
Lj444:
	movl	-4(%ebp),%eax
	movl	-24(%eax),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	%eax,-24(%edx)
	incl	-20(%ebp)
	cmpl	-16(%ebp),%esi
	jg	Lj433
Lj432:
	incl	-8(%ebp)
	cmpl	-12(%ebp),%ebx
	jg	Lj420
Lj419:
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_SCALEWORD$WORD$$WORD
_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_SCALEWORD$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-8(%ebp)
	movw	%dx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	36(%eax),%eax
	cmpl	$65535,%eax
	je	Lj455
	jmp	Lj456
Lj455:
	movw	-4(%ebp),%ax
	movw	%ax,-10(%ebp)
	jmp	Lj459
Lj456:
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movl	$0,%edx
	movl	%edx,12(%esp)
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	36(%eax),%edx
	incl	%edx
	movzwl	-4(%ebp),%eax
	mull	%edx
	movl	%eax,%edx
	movzwl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	$65535,%eax
	mull	%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	call	Lfpc_div_int64$stub
	movw	%ax,-10(%ebp)
Lj459:
	movw	-10(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_SCALEBYTE$BYTE$$WORD
_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_SCALEBYTE$BYTE$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	36(%eax),%eax
	cmpl	$255,%eax
	je	Lj466
	jmp	Lj467
Lj466:
	movzbl	-4(%ebp),%eax
	shll	$8,%eax
	movzbl	-4(%ebp),%edx
	orl	%edx,%eax
	movw	%ax,-10(%ebp)
	jmp	Lj470
Lj467:
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movl	36(%eax),%edx
	incl	%edx
	movzbl	-4(%ebp),%eax
	mull	%edx
	movl	%eax,%edx
	movzbl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	$65535,%eax
	mull	%edx
	movl	-8(%ebp),%ecx
	xorl	%edx,%edx
	divl	-28(%ecx)
	movw	%ax,-10(%ebp)
Lj470:
	movw	-10(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPREADPNM
_INIT$_FPREADPNM:
.reference __FPREADPNM_init
.globl	__FPREADPNM_init
__FPREADPNM_init:
.reference _INIT$_FPREADPNM
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_FPREADPNM_TFPREADERPNM$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPREADPNM$_Ld8$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	L_$FPREADPNM$_Ld10$non_lazy_ptr-Lj2(%ebx),%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEREADER$crc719F27C1$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPREADPNM$_Ld12
_$FPREADPNM$_Ld12:
	.byte	12
	.ascii	"TFPReaderPNM"

.const_data
	.align 2
.globl	_VMT_FPREADPNM_TFPREADERPNM
_VMT_FPREADPNM_TFPREADERPNM:
	.long	52,-52
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEREADER
	.long	_$FPREADPNM$_Ld12
	.long	0,0
	.long	_$FPREADPNM$_Ld13
	.long	_RTTI_FPREADPNM_TFPREADERPNM
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
	.long	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__PROGRESS$TFPIMGPROGRESSSTAGE$BYTE$BOOLEAN$TRECT$ANSISTRING$BOOLEAN
	.long	_FPIMAGE_TFPCUSTOMIMAGEREADER_$__CREATE$$TFPCUSTOMIMAGEREADER
	.long	_FPREADPNM_TFPREADERPNM_$__INTERNALREAD$TSTREAM$TFPCUSTOMIMAGE
	.long	_FPREADPNM_TFPREADERPNM_$__INTERNALCHECK$TSTREAM$$BOOLEAN
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPREADPNM
_THREADVARLIST_FPREADPNM:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 2
.globl	_$FPREADPNM$_Ld1
_$FPREADPNM$_Ld1:
	.ascii	"\000\000"

.const_data
	.align 2
.globl	_$FPREADPNM$_Ld3
_$FPREADPNM$_Ld3:
	.short	0,1
	.long	0,-1,22
.reference _$FPREADPNM$_Ld2
.globl	_$FPREADPNM$_Ld2
_$FPREADPNM$_Ld2:
.reference _$FPREADPNM$_Ld3
	.ascii	"Not a valid PNM image.\000"

.const_data
	.align 2
.globl	_$FPREADPNM$_Ld5
_$FPREADPNM$_Ld5:
	.short	0,1
	.long	0,-1,24
.reference _$FPREADPNM$_Ld4
.globl	_$FPREADPNM$_Ld4
_$FPREADPNM$_Ld4:
.reference _$FPREADPNM$_Ld5
	.ascii	"Unknown PNM subtype : %s\000"

.const_data
	.align 2
.globl	_$FPREADPNM$_Ld7
_$FPREADPNM$_Ld7:
	.short	0,1
	.long	0,-1,23
.reference _$FPREADPNM$_Ld6
.globl	_$FPREADPNM$_Ld6
_$FPREADPNM$_Ld6:
.reference _$FPREADPNM$_Ld7
	.ascii	"Invalid PNM header data\000"

.const_data
	.align 2
.globl	_$FPREADPNM$_Ld9
_$FPREADPNM$_Ld9:
	.short	0,1
	.long	0,-1,15
.reference _$FPREADPNM$_Ld8
.globl	_$FPREADPNM$_Ld8
_$FPREADPNM$_Ld8:
.reference _$FPREADPNM$_Ld9
	.ascii	"PNM;PGM;PBM;PPM\000"

.const_data
	.align 2
.globl	_$FPREADPNM$_Ld11
_$FPREADPNM$_Ld11:
	.short	0,1
	.long	0,-1,13
.reference _$FPREADPNM$_Ld10
.globl	_$FPREADPNM$_Ld10
_$FPREADPNM$_Ld10:
.reference _$FPREADPNM$_Ld11
	.ascii	"Netpbm format\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__READBUFFER$formal$LONGINT
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

L_FPREADPNM_DROPWHITESPACES$TSTREAM$$CHAR$stub:
.indirect_symbol _FPREADPNM_DROPWHITESPACES$TSTREAM$$CHAR
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

Lfpc_shortstr_to_ansistr$stub:
.indirect_symbol fpc_shortstr_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_STRTOINT$ANSISTRING$$LONGINT
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

L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNM_READINTEGER$TSTREAM$$LONGINT$stub:
.indirect_symbol _FPREADPNM_READINTEGER$TSTREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNM_TFPREADERPNM_$__READHEADER$TSTREAM$stub:
.indirect_symbol _FPREADPNM_TFPREADERPNM_$__READHEADER$TSTREAM
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

L_FPREADPNM_TFPREADERPNM_$__READSCANLINE$LONGINT$TSTREAM$stub:
.indirect_symbol _FPREADPNM_TFPREADERPNM_$__READSCANLINE$LONGINT$TSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNM_TFPREADERPNM_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE$stub:
.indirect_symbol _FPREADPNM_TFPREADERPNM_$__WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE
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

L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_BYTEBNWSCANLINE$stub:
.indirect_symbol _FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_BYTEBNWSCANLINE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_WORDGRAYSCANLINE$stub:
.indirect_symbol _FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_WORDGRAYSCANLINE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_WORDRGBSCANLINE$stub:
.indirect_symbol _FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_WORDRGBSCANLINE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_BYTEGRAYSCANLINE$stub:
.indirect_symbol _FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_BYTEGRAYSCANLINE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_BYTERGBSCANLINE$stub:
.indirect_symbol _FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_BYTERGBSCANLINE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_SCALEBYTE$BYTE$$WORD$stub:
.indirect_symbol _FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_SCALEBYTE$BYTE$$WORD
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

L_FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_SCALEWORD$WORD$$WORD$stub:
.indirect_symbol _FPREADPNM_TFPREADERPNM_$_WRITESCANLINE$LONGINT$TFPCUSTOMIMAGE_SCALEWORD$WORD$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_div_int64$stub:
.indirect_symbol fpc_div_int64
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
.globl	_$FPREADPNM$_Ld13
_$FPREADPNM$_Ld13:
	.short	0
	.long	_$FPREADPNM$_Ld14
	.align 2
.globl	_$FPREADPNM$_Ld14
_$FPREADPNM$_Ld14:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPREADPNM_TFPREADERPNM
_INIT_FPREADPNM_TFPREADERPNM:
	.byte	15,12
	.ascii	"TFPReaderPNM"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPREADPNM_TFPREADERPNM
_RTTI_FPREADPNM_TFPREADERPNM:
	.byte	15,12
	.ascii	"TFPReaderPNM"
	.long	_VMT_FPREADPNM_TFPREADERPNM
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEREADER
	.short	0
	.byte	9
	.ascii	"FPReadPNM"
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
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPNM$_Ld2$non_lazy_ptr:
.indirect_symbol _$FPREADPNM$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPNM$_Ld4$non_lazy_ptr:
.indirect_symbol _$FPREADPNM$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPNM$_Ld6$non_lazy_ptr:
.indirect_symbol _$FPREADPNM$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLBLACK$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLBLACK
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPIMAGE_COLWHITE$non_lazy_ptr:
.indirect_symbol _TC_FPIMAGE_COLWHITE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPREADPNM_TFPREADERPNM$non_lazy_ptr:
.indirect_symbol _VMT_FPREADPNM_TFPREADERPNM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_IMAGEHANDLERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPNM$_Ld8$non_lazy_ptr:
.indirect_symbol _$FPREADPNM$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPREADPNM$_Ld10$non_lazy_ptr:
.indirect_symbol _$FPREADPNM$_Ld10
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

