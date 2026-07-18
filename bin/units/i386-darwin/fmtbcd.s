# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FMTBCD___GET_NULL$$TBCD
_FMTBCD___GET_NULL$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	call	Lj4
Lj4:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edi
	movl	L_U_FMTBCD_NULLBCD_$non_lazy_ptr-Lj4(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD___GET_ONE$$TBCD
_FMTBCD___GET_ONE$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	call	Lj8
Lj8:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edi
	movl	L_U_FMTBCD_ONEBCD_$non_lazy_ptr-Lj8(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_RANGEERROR
_FMTBCD_RANGEERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj12
Lj12:
	popl	%ebx
	movl	L_RESSTR_SYSCONST_SRANGEERROR$non_lazy_ptr-Lj12(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_ERANGEERROR$non_lazy_ptr-Lj12(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj12(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_NOT_IMPLEMENTED
_FMTBCD_NOT_IMPLEMENTED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj20
Lj20:
	popl	%ebx
	movl	L_VMT_FMTBCD_EBCDNOTIMPLEMENTEDEXCEPTION$non_lazy_ptr-Lj20(%ebx),%edx
	movl	L_$FMTBCD$_Ld1$non_lazy_ptr-Lj20(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj20(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER
_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj28
Lj28:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edi
	movl	L_U_FMTBCD_NULL_$non_lazy_ptr-Lj28(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$34,%ecx
	rep
	movsl
	movsb
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	cmpl	$132,%edx
	jbe	Lj33
	call	LFPC_RANGEERROR$stub
Lj33:
	movb	(%eax),%al
	movb	%al,(%ecx)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$0,%eax
	jg	Lj34
	jmp	Lj35
Lj34:
	movl	-4(%ebp),%eax
	movb	1(%eax),%dl
	andb	$63,%dl
	movzbl	%dl,%eax
	cmpl	$132,%eax
	jbe	Lj38
	call	LFPC_RANGEERROR$stub
Lj38:
	movl	-8(%ebp),%eax
	movb	%dl,1(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	136(%edx)
	movl	-8(%ebp),%ecx
	movl	-8(%ebp),%eax
	movzbl	1(%eax),%edx
	cmpl	$65,%edx
	jbe	Lj43
	call	LFPC_RANGEERROR$stub
Lj43:
	movb	1(%eax),%al
	movb	%al,3(%ecx)
	movl	-8(%ebp),%eax
	movsbl	3(%eax),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	subl	%eax,%edx
	jno	Lj46
	call	LFPC_OVERFLOW$stub
Lj46:
	addl	$1,%edx
	jno	Lj47
	call	LFPC_OVERFLOW$stub
Lj47:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj48
	call	LFPC_RANGEERROR$stub
Lj48:
	movl	-8(%ebp),%eax
	movb	%dl,2(%eax)
	movb	$0,-10(%ebp)
	movl	-8(%ebp),%edx
	movsbl	2(%edx),%eax
	subl	$-65,%eax
	cmpl	$130,%eax
	jbe	Lj53
	call	LFPC_RANGEERROR$stub
Lj53:
	movb	2(%edx),%al
	movb	%al,-9(%ebp)
	jmp	Lj55
	.align 2
Lj54:
	movl	-4(%ebp),%ecx
	movsbl	-10(%ebp),%eax
	cmpl	$31,%eax
	jbe	Lj59
	call	LFPC_RANGEERROR$stub
Lj59:
	movzbl	-10(%ebp),%edx
	movzbl	2(%ecx,%edx,1),%eax
	cmpl	$153,%eax
	jbe	Lj60
	call	LFPC_RANGEERROR$stub
Lj60:
	movb	2(%ecx,%edx,1),%al
	movb	%al,-11(%ebp)
	movzbl	-11(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,%edx
	cmpl	$9,%edx
	jbe	Lj63
	call	LFPC_RANGEERROR$stub
Lj63:
	movl	-8(%ebp),%ecx
	movsbl	-9(%ebp),%edx
	movb	%al,70(%ecx,%edx,1)
	movl	-8(%ebp),%eax
	movb	-9(%ebp),%dl
	cmpb	3(%eax),%dl
	jl	Lj64
	jmp	Lj65
Lj64:
	movl	-8(%ebp),%ecx
	movsbl	-9(%ebp),%edx
	addl	$1,%edx
	jno	Lj68
	call	LFPC_OVERFLOW$stub
Lj68:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj69
	call	LFPC_RANGEERROR$stub
Lj69:
	movb	-11(%ebp),%al
	andb	$15,%al
	movzbl	%al,%esi
	cmpl	$9,%esi
	jbe	Lj70
	call	LFPC_RANGEERROR$stub
Lj70:
	movb	%al,70(%ecx,%edx,1)
Lj65:
	movsbl	-10(%ebp),%edx
	addl	$1,%edx
	jno	Lj73
	call	LFPC_OVERFLOW$stub
Lj73:
	movl	%edx,%eax
	subl	$-1,%eax
	cmpl	$32,%eax
	jbe	Lj74
	call	LFPC_RANGEERROR$stub
Lj74:
	movb	%dl,-10(%ebp)
	movsbl	-9(%ebp),%edx
	addl	$2,%edx
	jno	Lj77
	call	LFPC_OVERFLOW$stub
Lj77:
	movl	%edx,%eax
	subl	$-65,%eax
	cmpl	$130,%eax
	jbe	Lj78
	call	LFPC_RANGEERROR$stub
Lj78:
	movb	%dl,-9(%ebp)
Lj55:
	movl	-8(%ebp),%eax
	movb	-9(%ebp),%dl
	cmpb	3(%eax),%dl
	jle	Lj54
	jmp	Lj56
Lj56:
Lj35:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_PACK_BCD$TBCD_HELPER$TBCD$$BOOLEAN
_FMTBCD_PACK_BCD$TBCD_HELPER$TBCD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	call	Lj80
Lj80:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-9(%ebp)
	leal	-54(%ebp),%edi
	movl	L_U_FMTBCD_NULLBCD_$non_lazy_ptr-Lj80(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	-8(%ebp),%edi
	leal	-54(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	-4(%ebp),%eax
	movb	2(%eax),%al
	cmpb	$0,%al
	setleb	-20(%ebp)
	jmp	Lj90
	.align 2
Lj89:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movsbl	2(%eax),%eax
	movzbl	70(%edx,%eax,1),%eax
	testl	%eax,%eax
	je	Lj92
	jmp	Lj93
Lj92:
	movl	-4(%ebp),%eax
	movsbl	2(%eax),%edx
	addl	$1,%edx
	jno	Lj96
	call	LFPC_OVERFLOW$stub
Lj96:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj97
	call	LFPC_RANGEERROR$stub
Lj97:
	movl	-4(%ebp),%eax
	movb	%dl,2(%eax)
	movl	-4(%ebp),%eax
	movb	2(%eax),%al
	cmpb	$0,%al
	jg	Lj98
	jmp	Lj99
Lj98:
	movb	$0,-20(%ebp)
Lj99:
	jmp	Lj102
Lj93:
	movb	$0,-20(%ebp)
Lj102:
Lj90:
	cmpb	$0,-20(%ebp)
	jne	Lj89
	jmp	Lj91
Lj91:
	movl	-4(%ebp),%eax
	movb	2(%eax),%al
	cmpb	$1,%al
	jg	Lj105
	jmp	Lj106
Lj105:
	movl	-4(%ebp),%eax
	movb	$1,2(%eax)
Lj106:
	movl	-4(%ebp),%eax
	movsbl	3(%eax),%edx
	movl	-4(%ebp),%eax
	movsbl	2(%eax),%eax
	subl	%eax,%edx
	jno	Lj111
	call	LFPC_OVERFLOW$stub
Lj111:
	addl	$1,%edx
	jno	Lj112
	call	LFPC_OVERFLOW$stub
Lj112:
	movl	%edx,%eax
	cmpl	$132,%eax
	jbe	Lj113
	call	LFPC_RANGEERROR$stub
Lj113:
	movb	%dl,-10(%ebp)
	movl	-4(%ebp),%eax
	movzbw	1(%eax),%ax
	movw	%ax,-12(%ebp)
	movb	$0,-19(%ebp)
	movw	-12(%ebp),%ax
	cmpw	$64,%ax
	jge	Lj118
	jmp	Lj119
Lj118:
	movb	$1,-19(%ebp)
	movswl	-12(%ebp),%edx
	subl	$63,%edx
	jno	Lj124
	call	LFPC_OVERFLOW$stub
Lj124:
	movl	%edx,%eax
	cmpl	$69,%eax
	jbe	Lj125
	call	LFPC_RANGEERROR$stub
Lj125:
	movb	%dl,-13(%ebp)
	movzbl	-10(%ebp),%edx
	movzbl	-13(%ebp),%eax
	subl	%eax,%edx
	jno	Lj128
	call	LFPC_OVERFLOW$stub
Lj128:
	movl	%edx,%eax
	cmpl	$132,%eax
	jbe	Lj129
	call	LFPC_RANGEERROR$stub
Lj129:
	movb	%dl,-10(%ebp)
	movswl	-12(%ebp),%edx
	movzbl	-13(%ebp),%eax
	subl	%eax,%edx
	jno	Lj132
	call	LFPC_OVERFLOW$stub
Lj132:
	movl	%edx,%eax
	subl	$-132,%eax
	cmpl	$264,%eax
	jbe	Lj133
	call	LFPC_RANGEERROR$stub
Lj133:
	movw	%dx,-12(%ebp)
	movl	-4(%ebp),%eax
	movsbl	3(%eax),%edx
	movzbl	-13(%ebp),%eax
	subl	%eax,%edx
	jno	Lj136
	call	LFPC_OVERFLOW$stub
Lj136:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj137
	call	LFPC_RANGEERROR$stub
Lj137:
	movl	-4(%ebp),%eax
	movb	%dl,3(%eax)
Lj119:
	movzbl	-10(%ebp),%eax
	cmpl	$64,%eax
	jg	Lj138
	jmp	Lj139
Lj138:
	movb	$1,-19(%ebp)
	movzbl	-10(%ebp),%edx
	subl	$64,%edx
	jno	Lj144
	call	LFPC_OVERFLOW$stub
Lj144:
	movl	%edx,%eax
	cmpl	$69,%eax
	jbe	Lj145
	call	LFPC_RANGEERROR$stub
Lj145:
	movb	%dl,-13(%ebp)
	movzbl	-10(%ebp),%edx
	movzbl	-13(%ebp),%eax
	subl	%eax,%edx
	jno	Lj148
	call	LFPC_OVERFLOW$stub
Lj148:
	movl	%edx,%eax
	cmpl	$132,%eax
	jbe	Lj149
	call	LFPC_RANGEERROR$stub
Lj149:
	movb	%dl,-10(%ebp)
	movswl	-12(%ebp),%edx
	movzbl	-13(%ebp),%eax
	subl	%eax,%edx
	jno	Lj152
	call	LFPC_OVERFLOW$stub
Lj152:
	movl	%edx,%eax
	subl	$-132,%eax
	cmpl	$264,%eax
	jbe	Lj153
	call	LFPC_RANGEERROR$stub
Lj153:
	movw	%dx,-12(%ebp)
	movl	-4(%ebp),%eax
	movsbl	3(%eax),%edx
	movzbl	-13(%ebp),%eax
	subl	%eax,%edx
	jno	Lj156
	call	LFPC_OVERFLOW$stub
Lj156:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj157
	call	LFPC_RANGEERROR$stub
Lj157:
	movl	-4(%ebp),%eax
	movb	%dl,3(%eax)
Lj139:
	movw	-12(%ebp),%ax
	cmpw	$0,%ax
	jl	Lj158
	jmp	Lj159
Lj158:
	jmp	Lj79
Lj159:
	cmpb	$0,-19(%ebp)
	jne	Lj160
	jmp	Lj161
Lj160:
	movl	-4(%ebp),%ecx
	movswl	-12(%ebp),%edx
	addl	$1,%edx
	jno	Lj164
	call	LFPC_OVERFLOW$stub
Lj164:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj165
	call	LFPC_RANGEERROR$stub
Lj165:
	movb	70(%ecx,%edx,1),%al
	movb	%al,-17(%ebp)
	movzbl	-17(%ebp),%eax
	cmpl	$4,%eax
	jg	Lj166
	jmp	Lj167
Lj166:
	movb	$1,-16(%ebp)
	movl	-4(%ebp),%eax
	movb	3(%eax),%al
	movb	%al,-14(%ebp)
	jmp	Lj173
	.align 2
Lj172:
	movl	-4(%ebp),%edx
	movsbl	-14(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj177
	call	LFPC_RANGEERROR$stub
Lj177:
	movsbl	-14(%ebp),%eax
	movzbl	70(%edx,%eax,1),%edx
	movzbl	-16(%ebp),%eax
	addl	%eax,%edx
	jnb	Lj178
	call	LFPC_OVERFLOW$stub
Lj178:
	movl	%edx,%eax
	cmpl	$10,%eax
	jbe	Lj179
	call	LFPC_RANGEERROR$stub
Lj179:
	movb	%dl,-17(%ebp)
	movzbl	-17(%ebp),%ecx
	movl	$1717986919,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,%eax
	cmpl	$1,%eax
	jbe	Lj182
	call	LFPC_RANGEERROR$stub
Lj182:
	movb	%dl,-16(%ebp)
	movzbl	-17(%ebp),%eax
	cltd
	movl	$10,%ecx
	idivl	%ecx
	movl	%edx,%eax
	cmpl	$9,%eax
	jbe	Lj185
	call	LFPC_RANGEERROR$stub
Lj185:
	movl	-4(%ebp),%ecx
	movsbl	-14(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj186
	call	LFPC_RANGEERROR$stub
Lj186:
	movsbl	-14(%ebp),%eax
	movb	%dl,70(%ecx,%eax,1)
	movsbl	-14(%ebp),%edx
	subl	$1,%edx
	jno	Lj189
	call	LFPC_OVERFLOW$stub
Lj189:
	movl	%edx,%eax
	subl	$-67,%eax
	cmpl	$132,%eax
	jbe	Lj190
	call	LFPC_RANGEERROR$stub
Lj190:
	movb	%dl,-14(%ebp)
Lj173:
	movl	-4(%ebp),%eax
	movb	-14(%ebp),%dl
	cmpb	2(%eax),%dl
	jge	Lj191
	jmp	Lj174
Lj191:
	movzbl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj172
	jmp	Lj174
Lj174:
	movzbl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj192
	jmp	Lj193
Lj192:
	movl	-4(%ebp),%eax
	movsbl	2(%eax),%edx
	subl	$1,%edx
	jno	Lj196
	call	LFPC_OVERFLOW$stub
Lj196:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj197
	call	LFPC_RANGEERROR$stub
Lj197:
	movl	-4(%ebp),%eax
	movb	%dl,2(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movsbl	2(%eax),%eax
	movb	-16(%ebp),%dl
	movb	%dl,70(%ecx,%eax,1)
	movl	-4(%ebp),%eax
	movsbl	3(%eax),%edx
	subl	$1,%edx
	jno	Lj202
	call	LFPC_OVERFLOW$stub
Lj202:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj203
	call	LFPC_RANGEERROR$stub
Lj203:
	movl	-4(%ebp),%eax
	movb	%dl,3(%eax)
	movswl	-12(%ebp),%edx
	subl	$1,%edx
	jno	Lj206
	call	LFPC_OVERFLOW$stub
Lj206:
	movl	%edx,%eax
	subl	$-132,%eax
	cmpl	$264,%eax
	jbe	Lj207
	call	LFPC_RANGEERROR$stub
Lj207:
	movw	%dx,-12(%ebp)
	movw	-12(%ebp),%ax
	cmpw	$0,%ax
	jl	Lj208
	jmp	Lj209
Lj208:
	jmp	Lj79
Lj209:
Lj193:
Lj167:
Lj161:
	movb	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	movb	3(%eax),%al
	movb	%al,-14(%ebp)
	jmp	Lj215
	.align 2
Lj214:
	movl	-4(%ebp),%edx
	movsbl	-14(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj219
	call	LFPC_RANGEERROR$stub
Lj219:
	movsbl	-14(%ebp),%eax
	movzbl	70(%edx,%eax,1),%eax
	testl	%eax,%eax
	jne	Lj217
	jmp	Lj218
Lj217:
	movsbl	-14(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj222
	call	LFPC_RANGEERROR$stub
Lj222:
	movb	-14(%ebp),%al
	movb	%al,-18(%ebp)
	movb	$1,-20(%ebp)
Lj218:
	movsbl	-14(%ebp),%edx
	subl	$1,%edx
	jno	Lj227
	call	LFPC_OVERFLOW$stub
Lj227:
	movl	%edx,%eax
	subl	$-67,%eax
	cmpl	$132,%eax
	jbe	Lj228
	call	LFPC_RANGEERROR$stub
Lj228:
	movb	%dl,-14(%ebp)
Lj215:
	movl	-4(%ebp),%eax
	movb	-14(%ebp),%dl
	cmpb	2(%eax),%dl
	jge	Lj229
	jmp	Lj216
Lj229:
	movb	-20(%ebp),%al
	testb	%al,%al
	je	Lj214
	jmp	Lj216
Lj216:
	cmpb	$0,-20(%ebp)
	jne	Lj230
	jmp	Lj231
Lj230:
	movl	-4(%ebp),%eax
	movsbl	3(%eax),%edx
	movsbl	-18(%ebp),%eax
	subl	%eax,%edx
	jno	Lj234
	call	LFPC_OVERFLOW$stub
Lj234:
	movl	%edx,%eax
	cmpl	$69,%eax
	jbe	Lj235
	call	LFPC_RANGEERROR$stub
Lj235:
	movb	%dl,-13(%ebp)
	movzbl	-13(%ebp),%eax
	testl	%eax,%eax
	jne	Lj236
	jmp	Lj237
Lj236:
	movzbl	-10(%ebp),%edx
	movzbl	-13(%ebp),%eax
	subl	%eax,%edx
	jno	Lj240
	call	LFPC_OVERFLOW$stub
Lj240:
	movl	%edx,%eax
	cmpl	$132,%eax
	jbe	Lj241
	call	LFPC_RANGEERROR$stub
Lj241:
	movb	%dl,-10(%ebp)
	movswl	-12(%ebp),%edx
	movzbl	-13(%ebp),%eax
	subl	%eax,%edx
	jno	Lj244
	call	LFPC_OVERFLOW$stub
Lj244:
	movl	%edx,%eax
	subl	$-132,%eax
	cmpl	$264,%eax
	jbe	Lj245
	call	LFPC_RANGEERROR$stub
Lj245:
	movw	%dx,-12(%ebp)
	movl	-4(%ebp),%eax
	movsbl	3(%eax),%edx
	movzbl	-13(%ebp),%eax
	subl	%eax,%edx
	jno	Lj248
	call	LFPC_OVERFLOW$stub
Lj248:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj249
	call	LFPC_RANGEERROR$stub
Lj249:
	movl	-4(%ebp),%eax
	movb	%dl,3(%eax)
	movw	-12(%ebp),%ax
	cmpw	$0,%ax
	jl	Lj250
	jmp	Lj251
Lj250:
	movzbl	-10(%ebp),%edx
	movswl	-12(%ebp),%eax
	subl	%eax,%edx
	jno	Lj254
	call	LFPC_OVERFLOW$stub
Lj254:
	movl	%edx,%eax
	cmpl	$132,%eax
	jbe	Lj255
	call	LFPC_RANGEERROR$stub
Lj255:
	movb	%dl,-10(%ebp)
	movl	-4(%ebp),%eax
	movsbl	3(%eax),%edx
	movswl	-12(%ebp),%eax
	subl	%eax,%edx
	jno	Lj258
	call	LFPC_OVERFLOW$stub
Lj258:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj259
	call	LFPC_RANGEERROR$stub
Lj259:
	movl	-4(%ebp),%eax
	movb	%dl,3(%eax)
	movw	$0,-12(%ebp)
Lj251:
Lj237:
	jmp	Lj262
Lj231:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	2(%eax),%al
	movb	%al,3(%edx)
	movw	$0,-12(%ebp)
	movb	$0,-10(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,136(%eax)
Lj262:
	movzbl	-10(%ebp),%eax
	testl	%eax,%eax
	jne	Lj271
	jmp	Lj272
Lj271:
	movl	-8(%ebp),%edx
	movzbl	-10(%ebp),%eax
	cmpl	$64,%eax
	jbe	Lj275
	call	LFPC_RANGEERROR$stub
Lj275:
	movb	-10(%ebp),%al
	movb	%al,(%edx)
	movb	$0,-15(%ebp)
	movl	-4(%ebp),%eax
	movb	2(%eax),%al
	movb	%al,-14(%ebp)
	jmp	Lj281
	.align 2
Lj280:
	movl	-4(%ebp),%eax
	movb	-14(%ebp),%dl
	cmpb	3(%eax),%dl
	jl	Lj283
	jmp	Lj284
Lj283:
	movl	-4(%ebp),%edx
	movsbl	-14(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj287
	call	LFPC_RANGEERROR$stub
Lj287:
	movsbl	-14(%ebp),%eax
	movzbl	70(%edx,%eax,1),%eax
	shll	$4,%eax
	movl	-4(%ebp),%esi
	movsbl	-14(%ebp),%ecx
	addl	$1,%ecx
	jno	Lj288
	call	LFPC_OVERFLOW$stub
Lj288:
	movl	%ecx,%edx
	subl	$-66,%edx
	cmpl	$131,%edx
	jbe	Lj289
	call	LFPC_RANGEERROR$stub
Lj289:
	movzbl	70(%esi,%ecx,1),%edx
	orl	%edx,%eax
	movl	%eax,%edx
	cmpl	$255,%edx
	jbe	Lj290
	call	LFPC_RANGEERROR$stub
Lj290:
	movl	-8(%ebp),%ecx
	movzbl	-15(%ebp),%edx
	cmpl	$31,%edx
	jbe	Lj291
	call	LFPC_RANGEERROR$stub
Lj291:
	movzbl	-15(%ebp),%edx
	movb	%al,2(%ecx,%edx,1)
	jmp	Lj292
Lj284:
	movl	-4(%ebp),%edx
	movsbl	-14(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj295
	call	LFPC_RANGEERROR$stub
Lj295:
	movsbl	-14(%ebp),%eax
	movzbl	70(%edx,%eax,1),%eax
	shll	$4,%eax
	movl	%eax,%edx
	cmpl	$255,%edx
	jbe	Lj296
	call	LFPC_RANGEERROR$stub
Lj296:
	movl	-8(%ebp),%ecx
	movzbl	-15(%ebp),%edx
	cmpl	$31,%edx
	jbe	Lj297
	call	LFPC_RANGEERROR$stub
Lj297:
	movzbl	-15(%ebp),%edx
	movb	%al,2(%ecx,%edx,1)
Lj292:
	movzbl	-15(%ebp),%edx
	addl	$1,%edx
	jnb	Lj300
	call	LFPC_OVERFLOW$stub
Lj300:
	movl	%edx,%eax
	cmpl	$32,%eax
	jbe	Lj301
	call	LFPC_RANGEERROR$stub
Lj301:
	movb	%dl,-15(%ebp)
	movsbl	-14(%ebp),%edx
	addl	$2,%edx
	jno	Lj304
	call	LFPC_OVERFLOW$stub
Lj304:
	movl	%edx,%eax
	subl	$-67,%eax
	cmpl	$132,%eax
	jbe	Lj305
	call	LFPC_RANGEERROR$stub
Lj305:
	movb	%dl,-14(%ebp)
Lj281:
	movl	-4(%ebp),%eax
	movb	-14(%ebp),%dl
	cmpb	3(%eax),%dl
	jle	Lj280
	jmp	Lj282
Lj282:
	movl	-4(%ebp),%eax
	cmpb	$0,136(%eax)
	jne	Lj306
	jmp	Lj307
Lj306:
	movl	-8(%ebp),%eax
	movb	$128,1(%eax)
Lj307:
	movl	-8(%ebp),%eax
	movzbl	1(%eax),%edx
	movswl	-12(%ebp),%eax
	orl	%eax,%edx
	movl	%edx,%eax
	cmpl	$255,%eax
	jbe	Lj312
	call	LFPC_RANGEERROR$stub
Lj312:
	movl	-8(%ebp),%eax
	movb	%dl,1(%eax)
Lj272:
	movb	$1,-9(%ebp)
Lj79:
	movb	-9(%ebp),%al
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDPRECISION$TBCD$$WORD
_FMTBCD_BCDPRECISION$TBCD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbw	(%eax),%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDSCALE$TBCD$$WORD
_FMTBCD_BCDSCALE$TBCD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	andb	$63,%al
	movzbw	%al,%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_ISBCDNEGATIVE$TBCD$$BOOLEAN
_FMTBCD_ISBCDNEGATIVE$TBCD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDNEGATE$TBCD
_FMTBCD_BCDNEGATE$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj329
	jmp	Lj330
Lj329:
	movl	-4(%ebp),%eax
	movb	1(%eax),%dl
	xorb	$128,%dl
	movl	-4(%ebp),%eax
	movb	%dl,1(%eax)
Lj330:
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT
_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	-24(%ebp)
	movl	-8(%ebp),%eax
	movb	1(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	-25(%ebp)
	cmpb	$0,-24(%ebp)
	jne	Lj341
	jmp	Lj340
Lj341:
	movb	-25(%ebp),%al
	testb	%al,%al
	je	Lj339
	jmp	Lj340
Lj339:
	movl	$-1,-12(%ebp)
	jmp	Lj344
Lj340:
	movb	-24(%ebp),%al
	testb	%al,%al
	je	Lj347
	jmp	Lj346
Lj347:
	cmpb	$0,-25(%ebp)
	jne	Lj345
	jmp	Lj346
Lj345:
	movl	$1,-12(%ebp)
	jmp	Lj350
Lj346:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-15(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-16(%ebp)
	movl	-4(%ebp),%eax
	movb	1(%eax),%dl
	andb	$63,%dl
	movzbl	%dl,%eax
	cmpl	$63,%eax
	jbe	Lj357
	call	LFPC_RANGEERROR$stub
Lj357:
	movb	%dl,-13(%ebp)
	movl	-8(%ebp),%eax
	movb	1(%eax),%dl
	andb	$63,%dl
	movzbl	%dl,%eax
	cmpl	$63,%eax
	jbe	Lj360
	call	LFPC_RANGEERROR$stub
Lj360:
	movb	%dl,-14(%ebp)
	movzbl	-15(%ebp),%edx
	movzbl	-13(%ebp),%eax
	subl	%eax,%edx
	jno	Lj363
	call	LFPC_OVERFLOW$stub
Lj363:
	movl	%edx,%eax
	cmpl	$64,%eax
	jbe	Lj364
	call	LFPC_RANGEERROR$stub
Lj364:
	movb	%dl,-18(%ebp)
	movzbl	-16(%ebp),%edx
	movzbl	-14(%ebp),%eax
	subl	%eax,%edx
	jno	Lj367
	call	LFPC_OVERFLOW$stub
Lj367:
	movl	%edx,%eax
	cmpl	$64,%eax
	jbe	Lj368
	call	LFPC_RANGEERROR$stub
Lj368:
	movb	%dl,-19(%ebp)
	movb	-18(%ebp),%al
	cmpb	-19(%ebp),%al
	jne	Lj369
	jmp	Lj370
Lj369:
	movb	-18(%ebp),%al
	cmpb	-19(%ebp),%al
	setab	%al
	cmpb	-24(%ebp),%al
	je	Lj371
	jmp	Lj372
Lj371:
	movl	$-1,-12(%ebp)
	jmp	Lj375
Lj372:
	movl	$1,-12(%ebp)
Lj375:
	jmp	Lj378
Lj370:
	movb	-15(%ebp),%al
	cmpb	-16(%ebp),%al
	jb	Lj379
	jmp	Lj380
Lj379:
	movb	-15(%ebp),%al
	movb	%al,-17(%ebp)
	jmp	Lj383
Lj380:
	movb	-16(%ebp),%al
	movb	%al,-17(%ebp)
Lj383:
	movb	$0,-23(%ebp)
	movb	$0,-20(%ebp)
	jmp	Lj391
	.align 2
Lj390:
	movl	-4(%ebp),%ebx
	movzbl	-20(%ebp),%eax
	cmpl	$31,%eax
	jbe	Lj395
	call	LFPC_RANGEERROR$stub
Lj395:
	movzbl	-20(%ebp),%edx
	movl	-8(%ebp),%ecx
	movzbl	-20(%ebp),%eax
	cmpl	$31,%eax
	jbe	Lj396
	call	LFPC_RANGEERROR$stub
Lj396:
	movzbl	-20(%ebp),%eax
	movb	2(%ebx,%edx,1),%dl
	cmpb	2(%ecx,%eax,1),%dl
	jb	Lj393
	jmp	Lj394
Lj393:
	movb	$-1,-23(%ebp)
	jmp	Lj399
Lj394:
	movl	-4(%ebp),%ecx
	movzbl	-20(%ebp),%eax
	cmpl	$31,%eax
	jbe	Lj402
	call	LFPC_RANGEERROR$stub
Lj402:
	movzbl	-20(%ebp),%edx
	movl	-8(%ebp),%ebx
	movzbl	-20(%ebp),%eax
	cmpl	$31,%eax
	jbe	Lj403
	call	LFPC_RANGEERROR$stub
Lj403:
	movzbl	-20(%ebp),%eax
	movb	2(%ecx,%edx,1),%dl
	cmpb	2(%ebx,%eax,1),%dl
	ja	Lj400
	jmp	Lj401
Lj400:
	movb	$1,-23(%ebp)
	jmp	Lj406
Lj401:
Lj406:
Lj399:
	movzbl	-20(%ebp),%edx
	addl	$1,%edx
	jnb	Lj409
	call	LFPC_OVERFLOW$stub
Lj409:
	movl	%edx,%eax
	cmpl	$32,%eax
	jbe	Lj410
	call	LFPC_RANGEERROR$stub
Lj410:
	movb	%dl,-20(%ebp)
Lj391:
	movb	-23(%ebp),%al
	testb	%al,%al
	je	Lj411
	jmp	Lj392
Lj411:
	movzbl	-17(%ebp),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movzbl	-20(%ebp),%edx
	cmpl	%edx,%eax
	jg	Lj390
	jmp	Lj392
Lj392:
	movb	-23(%ebp),%al
	testb	%al,%al
	je	Lj412
	jmp	Lj413
Lj412:
	movzbl	-17(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	andl	$1,%eax
	testb	%al,%al
	jne	Lj414
	jmp	Lj415
Lj414:
	movl	-4(%ebp),%edx
	movzbl	-20(%ebp),%eax
	cmpl	$31,%eax
	jbe	Lj424
	call	LFPC_RANGEERROR$stub
Lj424:
	movzbl	-20(%ebp),%eax
	movb	2(%edx,%eax,1),%dl
	andb	$240,%dl
	movzbl	%dl,%eax
	cmpl	$153,%eax
	jbe	Lj425
	call	LFPC_RANGEERROR$stub
Lj425:
	movb	%dl,-21(%ebp)
	movl	-8(%ebp),%edx
	movzbl	-20(%ebp),%eax
	cmpl	$31,%eax
	jbe	Lj428
	call	LFPC_RANGEERROR$stub
Lj428:
	movzbl	-20(%ebp),%eax
	movb	2(%edx,%eax,1),%dl
	andb	$240,%dl
	movzbl	%dl,%eax
	cmpl	$153,%eax
	jbe	Lj429
	call	LFPC_RANGEERROR$stub
Lj429:
	movb	%dl,-22(%ebp)
	movb	-21(%ebp),%al
	cmpb	-22(%ebp),%al
	jb	Lj430
	jmp	Lj431
Lj430:
	movb	$-1,-23(%ebp)
	jmp	Lj434
Lj431:
	movb	-21(%ebp),%al
	cmpb	-22(%ebp),%al
	ja	Lj435
	jmp	Lj436
Lj435:
	movb	$1,-23(%ebp)
Lj436:
Lj434:
Lj415:
	movb	-23(%ebp),%al
	testb	%al,%al
	je	Lj439
	jmp	Lj440
Lj439:
	movb	-15(%ebp),%al
	cmpb	-16(%ebp),%al
	ja	Lj441
	jmp	Lj442
Lj441:
	movb	$1,-23(%ebp)
	jmp	Lj445
Lj442:
	movb	-15(%ebp),%al
	cmpb	-16(%ebp),%al
	jb	Lj446
	jmp	Lj447
Lj446:
	movb	$-1,-23(%ebp)
Lj447:
Lj445:
Lj440:
Lj413:
	cmpb	$0,-24(%ebp)
	jne	Lj450
	jmp	Lj451
Lj450:
	movsbl	-23(%ebp),%eax
	negl	%eax
	cmpl	$-2147483648,%eax
	jne	Lj454
	call	LFPC_OVERFLOW$stub
Lj454:
	movl	%eax,-12(%ebp)
	jmp	Lj455
Lj451:
	movsbl	-23(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj455:
Lj378:
Lj350:
Lj344:
	movl	-12(%ebp),%eax
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_TRYSTRTOBCD$SHORTSTRING$TBCD$$BOOLEAN
_FMTBCD_TRYSTRTOBCD$SHORTSTRING$TBCD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj459
Lj459:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj459(%ebx),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_TRYSTRTOBCD$SHORTSTRING$TBCD$TFORMATSETTINGS$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_TRYSTRTOBCD$SHORTSTRING$TBCD$TFORMATSETTINGS$$BOOLEAN
_FMTBCD_TRYSTRTOBCD$SHORTSTRING$TBCD$TFORMATSETTINGS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$232,%esp
	movl	%ebx,-224(%ebp)
	movl	%esi,-220(%ebp)
	movl	%edi,-216(%ebp)
	call	Lj469
Lj469:
	popl	-212(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$1,-13(%ebp)
	leal	-172(%ebp),%eax
	movb	$0,%cl
	movl	$152,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	leal	-206(%ebp),%edi
	movl	-212(%ebp),%edx
	movl	L_U_FMTBCD_NULLBCD_$non_lazy_ptr-Lj469(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	-8(%ebp),%edi
	leal	-206(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-14(%ebp)
	movzbl	-14(%ebp),%eax
	testl	%eax,%eax
	jne	Lj484
	jmp	Lj485
Lj484:
	leal	-158(%ebp),%eax
	movl	%eax,%ebx
	jmp	Lj489
	.align 2
Lj488:
	movzbl	-166(%ebp),%edx
	addl	$1,%edx
	jnb	Lj493
	call	LFPC_OVERFLOW$stub
Lj493:
	movl	%edx,%eax
	cmpl	$255,%eax
	jbe	Lj494
	call	LFPC_RANGEERROR$stub
Lj494:
	movb	%dl,-166(%ebp)
	movl	-4(%ebp),%eax
	movzbl	-166(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$32,%al
	setneb	-21(%ebp)
Lj489:
	movb	-166(%ebp),%al
	cmpb	-14(%ebp),%al
	jb	Lj497
	jmp	Lj490
Lj497:
	movb	-21(%ebp),%al
	testb	%al,%al
	je	Lj488
	jmp	Lj490
Lj490:
	cmpb	$0,-21(%ebp)
	jne	Lj498
	jmp	Lj499
Lj498:
	movl	-4(%ebp),%edx
	movzbl	-166(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	cmpl	$43,%eax
	je	Lj502
	cmpl	$45,%eax
	je	Lj502
Lj502:
	je	Lj500
	jmp	Lj501
Lj500:
	movb	-166(%ebp),%al
	movb	%al,-165(%ebp)
	movzbl	-166(%ebp),%edx
	addl	$1,%edx
	jnb	Lj507
	call	LFPC_OVERFLOW$stub
Lj507:
	movl	%edx,%eax
	cmpl	$255,%eax
	jbe	Lj508
	call	LFPC_RANGEERROR$stub
Lj508:
	movb	%dl,-166(%ebp)
Lj501:
	movl	$0,-20(%ebp)
	movb	-14(%ebp),%dl
	movb	-166(%ebp),%al
	movb	%al,-15(%ebp)
	cmpb	-15(%ebp),%dl
	jb	Lj512
	subb	$1,-15(%ebp)
	.align 2
Lj513:
	addb	$1,-15(%ebp)
	movl	-4(%ebp),%eax
	movzbl	-15(%ebp),%ecx
	movb	(%eax,%ecx,1),%al
	movb	%al,-16(%ebp)
	movb	-16(%ebp),%al
	cmpb	$43,%al
	jb	Lj517
	subb	$43,%al
	je	Lj521
	subb	$1,%al
	je	Lj519
	subb	$1,%al
	je	Lj521
	subb	$1,%al
	je	Lj519
	subb	$2,%al
	jb	Lj517
	subb	$9,%al
	jbe	Lj518
	subb	$12,%al
	je	Lj520
	subb	$32,%al
	je	Lj520
	jmp	Lj517
Lj518:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj524
	subl	$1,%eax
	je	Lj525
	subl	$1,%eax
	je	Lj524
	jmp	Lj523
Lj524:
	movl	-20(%ebp),%eax
	movzbl	-172(%ebp,%eax,1),%eax
	testl	%eax,%eax
	je	Lj526
	jmp	Lj527
Lj526:
	movb	-16(%ebp),%al
	cmpb	$48,%al
	jne	Lj528
	jmp	Lj529
Lj528:
	movl	-20(%ebp),%ecx
	movb	-15(%ebp),%al
	movb	%al,-172(%ebp,%ecx,1)
	movl	-20(%ebp),%ecx
	movb	-15(%ebp),%al
	movb	%al,-169(%ebp,%ecx,1)
Lj529:
	jmp	Lj534
Lj527:
	movl	-20(%ebp),%ecx
	movb	-15(%ebp),%al
	movb	%al,-169(%ebp,%ecx,1)
Lj534:
	jmp	Lj522
Lj525:
	movzbl	-171(%ebp),%eax
	testl	%eax,%eax
	je	Lj537
	jmp	Lj538
Lj537:
	movb	-15(%ebp),%al
	movb	%al,-171(%ebp)
Lj538:
	movb	-16(%ebp),%al
	cmpb	$48,%al
	jne	Lj541
	jmp	Lj542
Lj541:
	movb	-15(%ebp),%al
	movb	%al,-168(%ebp)
Lj542:
	jmp	Lj522
Lj523:
Lj522:
	jmp	Lj516
Lj519:
	movl	-12(%ebp),%ecx
	movb	-16(%ebp),%al
	cmpb	3(%ecx),%al
	je	Lj545
	jmp	Lj546
Lj545:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj547
	jmp	Lj548
Lj547:
	movb	$0,-13(%ebp)
	jmp	Lj551
Lj548:
	movl	$1,-20(%ebp)
Lj551:
Lj546:
	jmp	Lj516
Lj520:
	movl	-20(%ebp),%eax
	cmpl	$2,%eax
	je	Lj554
	jmp	Lj555
Lj554:
	movb	$0,-13(%ebp)
	jmp	Lj558
Lj555:
	movl	$2,-20(%ebp)
Lj558:
	jmp	Lj516
Lj521:
	movl	-20(%ebp),%eax
	cmpl	$2,%eax
	je	Lj563
	jmp	Lj562
Lj563:
	movzbl	-170(%ebp),%eax
	testl	%eax,%eax
	je	Lj561
	jmp	Lj562
Lj561:
	movb	-15(%ebp),%al
	movb	%al,-164(%ebp)
	jmp	Lj566
Lj562:
	movb	$0,-13(%ebp)
Lj566:
	jmp	Lj516
Lj517:
	movb	$0,-13(%ebp)
	movb	-15(%ebp),%al
	movb	%al,-163(%ebp)
Lj516:
	cmpb	-15(%ebp),%dl
	ja	Lj513
Lj512:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj573
	jmp	Lj574
Lj573:
	movb	$1,-13(%ebp)
	movb	-14(%ebp),%dl
	movb	-163(%ebp),%al
	movb	%al,-15(%ebp)
	cmpb	-15(%ebp),%dl
	jb	Lj578
	subb	$1,-15(%ebp)
	.align 2
Lj579:
	addb	$1,-15(%ebp)
	movl	-4(%ebp),%ecx
	movzbl	-15(%ebp),%eax
	movb	(%ecx,%eax,1),%al
	cmpb	$32,%al
	jne	Lj580
	jmp	Lj581
Lj580:
	movb	$0,-13(%ebp)
Lj581:
	cmpb	-15(%ebp),%dl
	ja	Lj579
Lj578:
Lj574:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj584
	jmp	Lj585
Lj584:
	jmp	Lj468
Lj585:
	movzbl	-165(%ebp),%eax
	testl	%eax,%eax
	jne	Lj586
	jmp	Lj587
Lj586:
	movl	-4(%ebp),%edx
	movzbl	-165(%ebp),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$45,%al
	seteb	136(%ebx)
Lj587:
	movzbl	-168(%ebp),%eax
	testl	%eax,%eax
	je	Lj590
	jmp	Lj591
Lj590:
	movb	$0,-171(%ebp)
Lj591:
	movzbl	-170(%ebp),%eax
	testl	%eax,%eax
	jne	Lj594
	jmp	Lj595
Lj594:
	movw	$0,-162(%ebp)
	movb	-167(%ebp),%al
	movb	-170(%ebp),%dl
	movb	%dl,-15(%ebp)
	cmpb	-15(%ebp),%al
	jb	Lj599
	subb	$1,-15(%ebp)
	.align 2
Lj600:
	addb	$1,-15(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj601
	jmp	Lj602
Lj601:
	movl	-4(%ebp),%edx
	movzbl	-15(%ebp),%ecx
	movl	-12(%ebp),%esi
	movb	(%edx,%ecx,1),%dl
	cmpb	2(%esi),%dl
	jne	Lj603
	jmp	Lj604
Lj603:
	movswl	-162(%ebp),%ecx
	imull	$10,%ecx
	jno	Lj607
	call	LFPC_OVERFLOW$stub
Lj607:
	movl	-4(%ebp),%esi
	movzbl	-15(%ebp),%edx
	movzbl	(%esi,%edx,1),%edx
	subl	$48,%edx
	jno	Lj608
	call	LFPC_OVERFLOW$stub
Lj608:
	addl	%edx,%ecx
	jno	Lj609
	call	LFPC_OVERFLOW$stub
Lj609:
	movl	%ecx,%edx
	subl	$-9999,%edx
	cmpl	$19998,%edx
	jbe	Lj610
	call	LFPC_RANGEERROR$stub
Lj610:
	movw	%cx,-162(%ebp)
	movw	-162(%ebp),%dx
	cmpw	$999,%dx
	jg	Lj611
	jmp	Lj612
Lj611:
	movb	$0,-13(%ebp)
Lj612:
Lj604:
Lj602:
	cmpb	-15(%ebp),%al
	ja	Lj600
Lj599:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj615
	jmp	Lj616
Lj615:
	jmp	Lj468
Lj616:
	movzbl	-164(%ebp),%eax
	testl	%eax,%eax
	jne	Lj617
	jmp	Lj618
Lj617:
	movl	-4(%ebp),%edx
	movzbl	-164(%ebp),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$45,%al
	je	Lj619
	jmp	Lj620
Lj619:
	movswl	-162(%ebp),%eax
	negl	%eax
	cmpl	$-2147483648,%eax
	jne	Lj623
	call	LFPC_OVERFLOW$stub
Lj623:
	movl	%eax,%edx
	subl	$-9999,%edx
	cmpl	$19998,%edx
	jbe	Lj624
	call	LFPC_RANGEERROR$stub
Lj624:
	movw	%ax,-162(%ebp)
Lj620:
Lj618:
Lj595:
	movswl	-162(%ebp),%eax
	negl	%eax
	cmpl	$-2147483648,%eax
	jne	Lj627
	call	LFPC_OVERFLOW$stub
Lj627:
	movl	%eax,%edx
	subl	$-9999,%edx
	cmpl	$19998,%edx
	jbe	Lj628
	call	LFPC_RANGEERROR$stub
Lj628:
	movw	%ax,-160(%ebp)
	movzbl	-171(%ebp),%eax
	testl	%eax,%eax
	jne	Lj629
	jmp	Lj630
Lj629:
	movb	-168(%ebp),%dl
	movb	-171(%ebp),%al
	movb	%al,-15(%ebp)
	cmpb	-15(%ebp),%dl
	jb	Lj632
	subb	$1,-15(%ebp)
	.align 2
Lj633:
	addb	$1,-15(%ebp)
	movl	-4(%ebp),%ecx
	movzbl	-15(%ebp),%eax
	movl	-12(%ebp),%esi
	movb	(%ecx,%eax,1),%al
	cmpb	2(%esi),%al
	jne	Lj634
	jmp	Lj635
Lj634:
	movw	-160(%ebp),%ax
	cmpw	$66,%ax
	jl	Lj636
	jmp	Lj637
Lj636:
	movswl	-160(%ebp),%eax
	addl	$1,%eax
	jno	Lj640
	call	LFPC_OVERFLOW$stub
Lj640:
	movl	%eax,%ecx
	subl	$-9999,%ecx
	cmpl	$19998,%ecx
	jbe	Lj641
	call	LFPC_RANGEERROR$stub
Lj641:
	movw	%ax,-160(%ebp)
	movl	-4(%ebp),%ecx
	movzbl	-15(%ebp),%eax
	movzbl	(%ecx,%eax,1),%eax
	subl	$48,%eax
	jno	Lj644
	call	LFPC_OVERFLOW$stub
Lj644:
	movl	%eax,%ecx
	cmpl	$9,%ecx
	jbe	Lj645
	call	LFPC_RANGEERROR$stub
Lj645:
	movswl	-160(%ebp),%ecx
	subl	$-66,%ecx
	cmpl	$131,%ecx
	jbe	Lj646
	call	LFPC_RANGEERROR$stub
Lj646:
	movswl	-160(%ebp),%ecx
	movb	%al,70(%ebx,%ecx,1)
Lj637:
Lj635:
	cmpb	-15(%ebp),%dl
	ja	Lj633
Lj632:
Lj630:
	movswl	-160(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj649
	call	LFPC_RANGEERROR$stub
Lj649:
	movb	-160(%ebp),%al
	movb	%al,3(%ebx)
	movswl	-162(%ebp),%edx
	movl	$1,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	jno	Lj652
	call	LFPC_OVERFLOW$stub
Lj652:
	movl	%edx,%eax
	subl	$-9999,%eax
	cmpl	$19998,%eax
	jbe	Lj653
	call	LFPC_RANGEERROR$stub
Lj653:
	movw	%dx,-160(%ebp)
	movzbl	-172(%ebp),%eax
	testl	%eax,%eax
	jne	Lj654
	jmp	Lj655
Lj654:
	movb	-172(%ebp),%dl
	movb	-169(%ebp),%al
	movb	%al,-15(%ebp)
	cmpb	-15(%ebp),%dl
	ja	Lj657
	addb	$1,-15(%ebp)
	.align 2
Lj658:
	subb	$1,-15(%ebp)
	movl	-4(%ebp),%ecx
	movzbl	-15(%ebp),%eax
	movl	-12(%ebp),%esi
	movb	(%ecx,%eax,1),%al
	cmpb	2(%esi),%al
	jne	Lj659
	jmp	Lj660
Lj659:
	movw	-160(%ebp),%ax
	cmpw	$-66,%ax
	jg	Lj661
	jmp	Lj662
Lj661:
	movswl	-160(%ebp),%eax
	subl	$1,%eax
	jno	Lj665
	call	LFPC_OVERFLOW$stub
Lj665:
	movl	%eax,%ecx
	subl	$-9999,%ecx
	cmpl	$19998,%ecx
	jbe	Lj666
	call	LFPC_RANGEERROR$stub
Lj666:
	movw	%ax,-160(%ebp)
	movl	-4(%ebp),%eax
	movzbl	-15(%ebp),%ecx
	movzbl	(%eax,%ecx,1),%eax
	subl	$48,%eax
	jno	Lj669
	call	LFPC_OVERFLOW$stub
Lj669:
	movl	%eax,%ecx
	cmpl	$9,%ecx
	jbe	Lj670
	call	LFPC_RANGEERROR$stub
Lj670:
	movswl	-160(%ebp),%ecx
	subl	$-66,%ecx
	cmpl	$131,%ecx
	jbe	Lj671
	call	LFPC_RANGEERROR$stub
Lj671:
	movswl	-160(%ebp),%ecx
	movb	%al,70(%ebx,%ecx,1)
	jmp	Lj672
Lj662:
	movb	$0,-13(%ebp)
Lj672:
Lj660:
	cmpb	-15(%ebp),%dl
	jb	Lj658
Lj657:
Lj655:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj675
	jmp	Lj676
Lj675:
	jmp	Lj468
Lj676:
	movswl	-160(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj679
	call	LFPC_RANGEERROR$stub
Lj679:
	movb	-160(%ebp),%al
	movb	%al,2(%ebx)
	movb	3(%ebx),%al
	cmpb	$0,%al
	jl	Lj680
	jmp	Lj681
Lj680:
	movb	$0,3(%ebx)
Lj681:
	movsbl	3(%ebx),%eax
	cmpl	$132,%eax
	jbe	Lj686
	call	LFPC_RANGEERROR$stub
Lj686:
	movb	3(%ebx),%al
	movb	%al,1(%ebx)
	movl	-8(%ebp),%edx
	leal	-158(%ebp),%eax
	call	L_FMTBCD_PACK_BCD$TBCD_HELPER$TBCD$$BOOLEAN$stub
	movb	%al,-13(%ebp)
Lj499:
Lj485:
Lj468:
	movb	-13(%ebp),%al
	movl	-224(%ebp),%ebx
	movl	-220(%ebp),%esi
	movl	-216(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD
_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj694
Lj694:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj694(%ebx),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$TFORMATSETTINGS$$TBCD$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_STRTOBCD$SHORTSTRING$TFORMATSETTINGS$$TBCD
_FMTBCD_STRTOBCD$SHORTSTRING$TFORMATSETTINGS$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj702
Lj702:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_TRYSTRTOBCD$SHORTSTRING$TBCD$TFORMATSETTINGS$$BOOLEAN$stub
	testb	%al,%al
	je	Lj703
	jmp	Lj704
Lj703:
	movl	L_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION$non_lazy_ptr-Lj702(%ebx),%edx
	movl	L_$FMTBCD$_Ld3$non_lazy_ptr-Lj702(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj702(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj704:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD
_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-316(%ebp)
	movl	%esi,-312(%ebp)
	movl	%edi,-308(%ebp)
	call	Lj718
Lj718:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_INIT_SYSUTILS_TFORMATSETTINGS$non_lazy_ptr-Lj718(%ebx),%edx
	leal	-228(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-240(%ebp),%ecx
	leal	-264(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-268(%ebp)
	testl	%eax,%eax
	jne	Lj719
	movl	$30,(%esp)
	leal	-35(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	16(%ebp),%eax
	movl	%eax,16(%esp)
	movl	$2,%ecx
	movl	$-1,%edx
	movl	$25,%eax
	call	Lfpc_shortstr_float$stub
	movb	$46,-225(%ebp)
	movb	$0,-226(%ebp)
	leal	-302(%ebp),%ecx
	leal	-228(%ebp),%edx
	leal	-35(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$TFORMATSETTINGS$$TBCD$stub
	movl	-4(%ebp),%edi
	leal	-302(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
Lj719:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_SYSUTILS_TFORMATSETTINGS$non_lazy_ptr-Lj718(%ebx),%edx
	leal	-228(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-268(%ebp),%eax
	testl	%eax,%eax
	je	Lj720
	call	LFPC_RERAISE$stub
Lj720:
	movl	-316(%ebp),%ebx
	movl	-312(%ebp),%esi
	movl	-308(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_DOUBLETOBCD$EXTENDED$$TBCD
_FMTBCD_DOUBLETOBCD$EXTENDED$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_INTEGERTOBCD$INT64$$TBCD
_FMTBCD_INTEGERTOBCD$INT64$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$216,%esp
	movl	%ebx,-200(%ebp)
	movl	%esi,-196(%ebp)
	movl	%edi,-192(%ebp)
	call	Lj761
Lj761:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jne	Lj763
	cmpl	$0,%eax
	jne	Lj763
	jmp	Lj762
Lj762:
	leal	-188(%ebp),%edi
	movl	L_U_FMTBCD_NULLBCD_$non_lazy_ptr-Lj761(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	-4(%ebp),%edi
	leal	-188(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	jmp	Lj768
Lj763:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jne	Lj770
	cmpl	$1,%eax
	jne	Lj770
	jmp	Lj769
Lj769:
	leal	-188(%ebp),%edi
	movl	L_U_FMTBCD_ONEBCD_$non_lazy_ptr-Lj761(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	-4(%ebp),%edi
	leal	-188(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	jmp	Lj775
Lj770:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$-2147483648,%edx
	jne	Lj777
	cmpl	$0,%eax
	jne	Lj777
	jmp	Lj776
Lj776:
	movl	-4(%ebp),%edi
	movl	L_U_FMTBCD_MYMININTBCD$non_lazy_ptr-Lj761(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	jmp	Lj780
Lj777:
	leal	-141(%ebp),%edi
	movl	L_U_FMTBCD_NULL_$non_lazy_ptr-Lj761(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$34,%ecx
	rep
	movsl
	movsb
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj783
	jg	Lj784
	cmpl	$0,%eax
	jb	Lj783
	jmp	Lj784
Lj783:
	movb	$1,-5(%ebp)
	jmp	Lj785
Lj784:
	movb	$0,-5(%ebp)
Lj785:
	cmpb	$0,-5(%ebp)
	jne	Lj786
	jmp	Lj787
Lj786:
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	notl	%edx
	negl	%ecx
	sbbl	$-1,%edx
	movl	%edx,%eax
	xorl	$-2147483648,%eax
	orl	%ecx,%eax
	testl	%eax,%eax
	jne	Lj790
	call	LFPC_OVERFLOW$stub
Lj790:
	testl	%edx,%edx
	jge	Lj791
	call	LFPC_RANGEERROR$stub
Lj791:
	movl	%ecx,-152(%ebp)
	movl	%edx,-148(%ebp)
	jmp	Lj792
Lj787:
	movl	12(%ebp),%eax
	testl	%eax,%eax
	jge	Lj795
	call	LFPC_RANGEERROR$stub
Lj795:
	movl	8(%ebp),%eax
	movl	%eax,-152(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-148(%ebp)
Lj792:
	movb	$0,-138(%ebp)
	movb	$0,-153(%ebp)
	.align 2
Lj800:
	movl	$0,12(%esp)
	movl	$10,8(%esp)
	movl	-148(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-152(%ebp),%eax
	movl	%eax,(%esp)
	call	Lfpc_mod_qword$stub
	testl	%edx,%edx
	je	Lj809
	call	LFPC_RANGEERROR$stub
Lj809:
	movl	%eax,%edx
	cmpl	$9,%edx
	jbe	Lj810
	call	LFPC_RANGEERROR$stub
Lj810:
	movsbl	-153(%ebp),%edx
	subl	$-66,%edx
	cmpl	$131,%edx
	jbe	Lj811
	call	LFPC_RANGEERROR$stub
Lj811:
	movsbl	-153(%ebp),%edx
	movb	%al,-71(%ebp,%edx,1)
	movl	$0,12(%esp)
	movl	$10,8(%esp)
	movl	-148(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-152(%ebp),%eax
	movl	%eax,(%esp)
	call	Lfpc_div_qword$stub
	movl	%eax,-152(%ebp)
	movl	%edx,-148(%ebp)
	movl	-152(%ebp),%eax
	movl	-148(%ebp),%edx
	cmpl	$0,%edx
	jne	Lj819
	cmpl	$0,%eax
	jne	Lj819
	jmp	Lj818
Lj818:
	movb	$1,-154(%ebp)
	jmp	Lj820
Lj819:
	movb	$0,-154(%ebp)
Lj820:
	movsbl	-153(%ebp),%edx
	subl	$1,%edx
	jno	Lj823
	call	LFPC_OVERFLOW$stub
Lj823:
	movl	%edx,%eax
	subl	$-67,%eax
	cmpl	$67,%eax
	jbe	Lj824
	call	LFPC_RANGEERROR$stub
Lj824:
	movb	%dl,-153(%ebp)
	movb	-153(%ebp),%al
	cmpb	$-66,%al
	jl	Lj825
	jmp	Lj826
Lj825:
	movb	$1,-154(%ebp)
	movl	L_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION$non_lazy_ptr-Lj761(%ebx),%edx
	movl	L_$FMTBCD$_Ld5$non_lazy_ptr-Lj761(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj761(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj826:
	cmpb	$0,-154(%ebp)
	jne	Lj802
	jmp	Lj800
Lj802:
	movsbl	-153(%ebp),%edx
	addl	$1,%edx
	jno	Lj837
	call	LFPC_OVERFLOW$stub
Lj837:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj838
	call	LFPC_RANGEERROR$stub
Lj838:
	movb	%dl,-139(%ebp)
	movl	-4(%ebp),%edx
	leal	-141(%ebp),%eax
	call	L_FMTBCD_PACK_BCD$TBCD_HELPER$TBCD$$BOOLEAN$stub
Lj780:
Lj775:
Lj768:
	movl	-200(%ebp),%ebx
	movl	-196(%ebp),%esi
	movl	-192(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN
_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-47(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-4(%ebp),%edi
	leal	-47(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	orl	$4,%eax
	movl	%eax,%edx
	cmpl	$255,%edx
	jbe	Lj853
	call	LFPC_RANGEERROR$stub
Lj853:
	movl	-4(%ebp),%edx
	movb	%al,1(%edx)
	movl	-12(%ebp),%eax
	cmpl	$4,%eax
	jne	Lj854
	jmp	Lj856
Lj856:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj854
	jmp	Lj855
Lj854:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_NORMALIZEBCD$TBCD$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	jmp	Lj867
Lj855:
	movb	$1,-13(%ebp)
Lj867:
	movb	-13(%ebp),%al
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDTOSTR$TBCD$$SHORTSTRING
_FMTBCD_BCDTOSTR$TBCD$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj871
Lj871:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj871(%ebx),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDTOSTR$TBCD$TFORMATSETTINGS$$SHORTSTRING$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDTOSTR$TBCD$TFORMATSETTINGS$$SHORTSTRING
_FMTBCD_BCDTOSTR$TBCD$TFORMATSETTINGS$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-156(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-149(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub
	movb	$0,-150(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj886
	jmp	Lj887
Lj886:
	movzbl	-150(%ebp),%edx
	addl	$1,%edx
	jnb	Lj890
	call	LFPC_OVERFLOW$stub
Lj890:
	movl	%edx,%eax
	cmpl	$66,%eax
	jbe	Lj891
	call	LFPC_RANGEERROR$stub
Lj891:
	movb	%dl,-150(%ebp)
	movl	-12(%ebp),%eax
	movzbl	-150(%ebp),%edx
	movb	$45,(%eax,%edx,1)
Lj887:
	movb	-148(%ebp),%al
	cmpb	-149(%ebp),%al
	jae	Lj894
	jmp	Lj895
Lj894:
	movzbl	-150(%ebp),%edx
	addl	$1,%edx
	jnb	Lj898
	call	LFPC_OVERFLOW$stub
Lj898:
	movl	%edx,%eax
	cmpl	$66,%eax
	jbe	Lj899
	call	LFPC_RANGEERROR$stub
Lj899:
	movb	%dl,-150(%ebp)
	movl	-12(%ebp),%eax
	movzbl	-150(%ebp),%edx
	movb	$48,(%eax,%edx,1)
Lj895:
	movzbl	-149(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj902
	jmp	Lj903
Lj902:
	movzbl	-148(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj904
	jmp	Lj905
Lj904:
	movb	-148(%ebp),%al
	cmpb	-149(%ebp),%al
	ja	Lj906
	jmp	Lj907
Lj906:
	movb	$1,-147(%ebp)
Lj907:
	movb	$1,-152(%ebp)
	jmp	Lj912
Lj905:
	movb	$-67,-152(%ebp)
Lj912:
	movb	-146(%ebp),%cl
	movb	-147(%ebp),%al
	movb	%al,-151(%ebp)
	cmpb	-151(%ebp),%cl
	jl	Lj916
	subb	$1,-151(%ebp)
	.align 2
Lj917:
	addb	$1,-151(%ebp)
	movb	-151(%ebp),%al
	cmpb	-152(%ebp),%al
	je	Lj918
	jmp	Lj919
Lj918:
	movzbl	-150(%ebp),%edx
	addl	$1,%edx
	jnb	Lj922
	call	LFPC_OVERFLOW$stub
Lj922:
	movl	%edx,%eax
	cmpl	$66,%eax
	jbe	Lj923
	call	LFPC_RANGEERROR$stub
Lj923:
	movb	%dl,-150(%ebp)
	movl	-12(%ebp),%edx
	movzbl	-150(%ebp),%ebx
	movl	-8(%ebp),%eax
	movb	3(%eax),%al
	movb	%al,(%edx,%ebx,1)
Lj919:
	movzbl	-150(%ebp),%edx
	addl	$1,%edx
	jnb	Lj928
	call	LFPC_OVERFLOW$stub
Lj928:
	movl	%edx,%eax
	cmpl	$66,%eax
	jbe	Lj929
	call	LFPC_RANGEERROR$stub
Lj929:
	movb	%dl,-150(%ebp)
	movsbl	-151(%ebp),%eax
	movzbl	-79(%ebp,%eax,1),%edx
	addl	$48,%edx
	jnb	Lj932
	call	LFPC_OVERFLOW$stub
Lj932:
	movl	%edx,%eax
	cmpl	$255,%eax
	jbe	Lj933
	call	LFPC_RANGEERROR$stub
Lj933:
	movl	-12(%ebp),%eax
	movzbl	-150(%ebp),%ebx
	movb	%dl,(%eax,%ebx,1)
	cmpb	-151(%ebp),%cl
	jg	Lj917
Lj916:
Lj903:
	movl	-12(%ebp),%eax
	movb	-150(%ebp),%dl
	movb	%dl,(%eax)
	movl	-156(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDTODOUBLE$TBCD$$EXTENDED
_FMTBCD_BCDTODOUBLE$TBCD$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$216,%esp
	movl	%ebx,-208(%ebp)
	call	Lj937
Lj937:
	popl	%ebx
	movl	%eax,-4(%ebp)
	leal	-161(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub
	fldz
	fstpt	-184(%ebp)
	fld1
	fstpt	-200(%ebp)
	movb	-159(%ebp),%dl
	movb	$0,-162(%ebp)
	cmpb	-162(%ebp),%dl
	jg	Lj947
	addb	$1,-162(%ebp)
	.align 2
Lj948:
	subb	$1,-162(%ebp)
	movsbl	-162(%ebp),%eax
	movzbl	-91(%ebp,%eax,1),%eax
	movl	%eax,-204(%ebp)
	fildl	-204(%ebp)
	fldt	-200(%ebp)
	fmulp	%st,%st(1)
	fldt	-184(%ebp)
	faddp	%st,%st(1)
	fstpt	-184(%ebp)
	movl	L_$FMTBCD$_Ld7$non_lazy_ptr-Lj937(%ebx),%eax
	fldt	(%eax)
	fldt	-200(%ebp)
	fmulp	%st,%st(1)
	fstpt	-200(%ebp)
	cmpb	-162(%ebp),%dl
	jl	Lj948
Lj947:
	fld1
	fstpt	-200(%ebp)
	movb	-158(%ebp),%dl
	movb	$1,-162(%ebp)
	cmpb	-162(%ebp),%dl
	jl	Lj956
	subb	$1,-162(%ebp)
	.align 2
Lj957:
	addb	$1,-162(%ebp)
	movl	L_$FMTBCD$_Ld7$non_lazy_ptr-Lj937(%ebx),%eax
	fldt	(%eax)
	fldt	-200(%ebp)
	fdivp	%st,%st(1)
	fstpt	-200(%ebp)
	movsbl	-162(%ebp),%eax
	movzbl	-91(%ebp,%eax,1),%eax
	movl	%eax,-204(%ebp)
	fildl	-204(%ebp)
	fldt	-200(%ebp)
	fmulp	%st,%st(1)
	fldt	-184(%ebp)
	faddp	%st,%st(1)
	fstpt	-184(%ebp)
	cmpb	-162(%ebp),%dl
	jg	Lj957
Lj956:
	cmpb	$0,-25(%ebp)
	jne	Lj962
	jmp	Lj963
Lj962:
	fldt	-184(%ebp)
	fchs
	fstpt	-24(%ebp)
	jmp	Lj966
Lj963:
	movl	-184(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-180(%ebp),%eax
	movl	%eax,-20(%ebp)
	movw	-176(%ebp),%ax
	movw	%ax,-16(%ebp)
Lj966:
	fldt	-24(%ebp)
	movl	-208(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDTOINTEGER$TBCD$BOOLEAN$$INT64
_FMTBCD_BCDTOINTEGER$TBCD$BOOLEAN$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$200,%esp
	movl	%ebx,-172(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	leal	-153(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub
	movl	$0,-164(%ebp)
	movl	$0,-160(%ebp)
	movsbl	-151(%ebp),%eax
	subl	$-66,%eax
	cmpl	$66,%eax
	jbe	Lj980
	call	LFPC_RANGEERROR$stub
Lj980:
	movb	-151(%ebp),%al
	movb	%al,-165(%ebp)
	cmpb	$0,-165(%ebp)
	jg	Lj978
	subb	$1,-165(%ebp)
	.align 2
Lj979:
	addb	$1,-165(%ebp)
	movl	$0,4(%esp)
	movl	$10,(%esp)
	movl	-160(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-164(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$-1,%eax
	call	Lfpc_mul_int64$stub
	movsbl	-165(%ebp),%ecx
	movzbl	-83(%ebp,%ecx,1),%ecx
	movl	$0,%ebx
	subl	%ecx,%eax
	sbbl	%ebx,%edx
	jno	Lj989
	call	LFPC_OVERFLOW$stub
Lj989:
	movl	%eax,-164(%ebp)
	movl	%edx,-160(%ebp)
	cmpb	$0,-165(%ebp)
	jl	Lj979
Lj978:
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj990
	jmp	Lj991
Lj990:
	movzbl	-152(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj992
	jmp	Lj993
Lj992:
	movzbl	-82(%ebp),%eax
	cmpl	$4,%eax
	jg	Lj994
	jmp	Lj995
Lj994:
	movl	-164(%ebp),%edx
	movl	-160(%ebp),%eax
	subl	$1,%edx
	sbbl	$0,%eax
	jno	Lj998
	call	LFPC_OVERFLOW$stub
Lj998:
	movl	%edx,-164(%ebp)
	movl	%eax,-160(%ebp)
Lj995:
Lj993:
Lj991:
	cmpb	$0,-17(%ebp)
	jne	Lj999
	jmp	Lj1000
Lj999:
	movl	-164(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-160(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj1003
Lj1000:
	movl	-164(%ebp),%ecx
	movl	-160(%ebp),%edx
	notl	%edx
	negl	%ecx
	sbbl	$-1,%edx
	movl	%edx,%eax
	xorl	$-2147483648,%eax
	orl	%ecx,%eax
	testl	%eax,%eax
	jne	Lj1006
	call	LFPC_OVERFLOW$stub
Lj1006:
	movl	%ecx,-16(%ebp)
	movl	%edx,-12(%ebp)
Lj1003:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-172(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDTOCURR$TBCD$CURRENCY$$BOOLEAN
_FMTBCD_BCDTOCURR$TBCD$CURRENCY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$184,%esp
	movl	%ebx,-168(%ebp)
	movl	%esi,-164(%ebp)
	call	Lj1008
Lj1008:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-9(%ebp)
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	andb	$63,%al
	movzbw	%al,%ax
	movzwl	%ax,%eax
	movl	-4(%ebp),%edx
	movzbw	(%edx),%dx
	movzwl	%dx,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	jno	Lj1017
	call	LFPC_OVERFLOW$stub
Lj1017:
	cmpl	$15,%eax
	jg	Lj1011
	jmp	Lj1012
Lj1011:
	jmp	Lj1007
Lj1012:
	leal	-146(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub
	movl	$0,-156(%ebp)
	movl	$0,-152(%ebp)
	movsbl	-144(%ebp),%eax
	subl	$-66,%eax
	cmpl	$70,%eax
	jbe	Lj1027
	call	LFPC_RANGEERROR$stub
Lj1027:
	movb	-144(%ebp),%al
	movb	%al,-157(%ebp)
	cmpb	$4,-157(%ebp)
	jg	Lj1025
	subb	$1,-157(%ebp)
	.align 2
Lj1026:
	addb	$1,-157(%ebp)
	movl	$0,4(%esp)
	movl	$10,(%esp)
	movl	-152(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-156(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$-1,%eax
	call	Lfpc_mul_qword$stub
	movsbl	-157(%ebp),%ecx
	movzbl	-76(%ebp,%ecx,1),%ecx
	movl	$0,%esi
	addl	%ecx,%eax
	adcl	%esi,%edx
	jae	Lj1036
	call	LFPC_OVERFLOW$stub
Lj1036:
	movl	%eax,-156(%ebp)
	movl	%edx,-152(%ebp)
	cmpb	$4,-157(%ebp)
	jl	Lj1026
Lj1025:
	movzbl	-145(%ebp),%eax
	cmpl	$4,%eax
	jg	Lj1037
	jmp	Lj1038
Lj1037:
	movzbl	-71(%ebp),%eax
	cmpl	$4,%eax
	jg	Lj1039
	jmp	Lj1040
Lj1039:
	movl	-156(%ebp),%eax
	movl	-152(%ebp),%edx
	addl	$1,%eax
	adcl	$0,%edx
	jae	Lj1043
	call	LFPC_OVERFLOW$stub
Lj1043:
	movl	%eax,-156(%ebp)
	movl	%edx,-152(%ebp)
Lj1040:
Lj1038:
	movzbl	-10(%ebp),%edx
	movl	L_TC_FMTBCD_BCDTOCURR$TBCD$CURRENCY$$BOOLEAN_MAXCURR$non_lazy_ptr-Lj1008(%ebx),%eax
	movl	(%eax,%edx,8),%ecx
	movl	L_TC_FMTBCD_BCDTOCURR$TBCD$CURRENCY$$BOOLEAN_MAXCURR$non_lazy_ptr-Lj1008(%ebx),%eax
	movl	4(%eax,%edx,8),%eax
	cmpl	-152(%ebp),%eax
	jb	Lj1044
	ja	Lj1045
	cmpl	-156(%ebp),%ecx
	jb	Lj1044
	jmp	Lj1045
	jmp	Lj1045
Lj1044:
	jmp	Lj1007
Lj1045:
	cmpb	$0,-10(%ebp)
	jne	Lj1046
	jmp	Lj1047
Lj1046:
	movl	-156(%ebp),%edx
	movl	-152(%ebp),%eax
	notl	%eax
	notl	%edx
	movl	%edx,-156(%ebp)
	movl	%eax,-152(%ebp)
	movl	-156(%ebp),%edx
	movl	-152(%ebp),%eax
	addl	$1,%edx
	adcl	$0,%eax
	jae	Lj1052
	call	LFPC_OVERFLOW$stub
Lj1052:
	movl	%edx,-156(%ebp)
	movl	%eax,-152(%ebp)
Lj1047:
	movl	-8(%ebp),%edx
	movl	-156(%ebp),%eax
	movl	%eax,(%edx)
	movl	-152(%ebp),%eax
	movl	%eax,4(%edx)
	movb	$1,-9(%ebp)
Lj1007:
	movb	-9(%ebp),%al
	movl	-168(%ebp),%ebx
	movl	-164(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDADD$TBCD$TBCD$TBCD
_FMTBCD_BCDADD$TBCD$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$488,%esp
	movl	%ebx,-476(%ebp)
	movl	%esi,-472(%ebp)
	movl	%edi,-468(%ebp)
	call	Lj1058
Lj1058:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	%al
	movb	%al,-461(%ebp)
	movl	-8(%ebp),%eax
	movb	1(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	%al
	cmpb	-461(%ebp),%al
	jne	Lj1063
	jmp	Lj1064
Lj1063:
	cmpb	$0,-461(%ebp)
	jne	Lj1067
	jmp	Lj1068
Lj1067:
	movl	-4(%ebp),%esi
	leal	-460(%ebp),%edi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movzbl	-460(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1071
	jmp	Lj1072
Lj1071:
	movb	-459(%ebp),%al
	xorb	$128,%al
	movb	%al,-459(%ebp)
Lj1072:
	movl	-12(%ebp),%ecx
	leal	-460(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
	jmp	Lj1057
Lj1068:
	movl	-8(%ebp),%esi
	leal	-460(%ebp),%edi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movzbl	-460(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1083
	jmp	Lj1084
Lj1083:
	movb	-459(%ebp),%al
	xorb	$128,%al
	movb	%al,-459(%ebp)
Lj1084:
	movl	-12(%ebp),%ecx
	leal	-460(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
	jmp	Lj1057
Lj1064:
	leal	-149(%ebp),%edi
	movl	L_U_FMTBCD_NULL_$non_lazy_ptr-Lj1058(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$34,%ecx
	rep
	movsl
	movsb
	leal	-286(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub
	leal	-423(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub
	movb	-284(%ebp),%al
	cmpb	-421(%ebp),%al
	jl	Lj1103
	jmp	Lj1104
Lj1103:
	movb	-284(%ebp),%al
	movb	%al,-147(%ebp)
	jmp	Lj1107
Lj1104:
	movb	-421(%ebp),%al
	movb	%al,-147(%ebp)
Lj1107:
	movb	-283(%ebp),%al
	cmpb	-420(%ebp),%al
	jg	Lj1110
	jmp	Lj1111
Lj1110:
	movb	-283(%ebp),%al
	movb	%al,-146(%ebp)
	jmp	Lj1114
Lj1111:
	movb	-420(%ebp),%al
	movb	%al,-146(%ebp)
Lj1114:
	movsbl	-146(%ebp),%eax
	cmpl	$132,%eax
	jbe	Lj1119
	call	LFPC_RANGEERROR$stub
Lj1119:
	movb	-146(%ebp),%al
	movb	%al,-148(%ebp)
	movb	$0,-424(%ebp)
	movb	-147(%ebp),%cl
	movb	-146(%ebp),%al
	movb	%al,-425(%ebp)
	cmpb	-425(%ebp),%cl
	jg	Lj1123
	addb	$1,-425(%ebp)
	.align 2
Lj1124:
	subb	$1,-425(%ebp)
	movsbl	-425(%ebp),%eax
	movzbl	-216(%ebp,%eax,1),%eax
	movsbl	-425(%ebp),%edx
	movzbl	-353(%ebp,%edx,1),%edx
	addl	%edx,%eax
	jnb	Lj1127
	call	LFPC_OVERFLOW$stub
Lj1127:
	movzbl	-424(%ebp),%edx
	addl	%edx,%eax
	jnb	Lj1128
	call	LFPC_OVERFLOW$stub
Lj1128:
	movl	%eax,%edx
	cmpl	$19,%edx
	jbe	Lj1129
	call	LFPC_RANGEERROR$stub
Lj1129:
	movb	%al,-426(%ebp)
	movzbl	-426(%ebp),%esi
	movl	$1717986919,%eax
	imull	%esi
	movl	%esi,%eax
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,%eax
	cmpl	$1,%eax
	jbe	Lj1132
	call	LFPC_RANGEERROR$stub
Lj1132:
	movb	%dl,-424(%ebp)
	movzbl	-426(%ebp),%eax
	cltd
	movl	$10,%esi
	idivl	%esi
	movl	%edx,%eax
	cmpl	$9,%eax
	jbe	Lj1135
	call	LFPC_RANGEERROR$stub
Lj1135:
	movsbl	-425(%ebp),%eax
	movb	%dl,-79(%ebp,%eax,1)
	cmpb	-425(%ebp),%cl
	jl	Lj1124
Lj1123:
	movzbl	-424(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1136
	jmp	Lj1137
Lj1136:
	movsbl	-147(%ebp),%edx
	subl	$1,%edx
	jno	Lj1140
	call	LFPC_OVERFLOW$stub
Lj1140:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1141
	call	LFPC_RANGEERROR$stub
Lj1141:
	movb	%dl,-147(%ebp)
	movsbl	-147(%ebp),%eax
	movb	-424(%ebp),%dl
	movb	%dl,-79(%ebp,%eax,1)
Lj1137:
	movb	-461(%ebp),%al
	movb	%al,-13(%ebp)
	movl	-12(%ebp),%edx
	leal	-149(%ebp),%eax
	call	L_FMTBCD_PACK_BCD$TBCD_HELPER$TBCD$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1146
	jmp	Lj1147
Lj1146:
	movl	L_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION$non_lazy_ptr-Lj1058(%ebx),%edx
	movl	L_$FMTBCD$_Ld8$non_lazy_ptr-Lj1058(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj1058(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1147:
Lj1057:
	movl	-476(%ebp),%ebx
	movl	-472(%ebp),%esi
	movl	-468(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD
_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$520,%esp
	movl	%ebx,-508(%ebp)
	movl	%esi,-504(%ebp)
	movl	%edi,-500(%ebp)
	call	Lj1159
Lj1159:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	%al
	movb	%al,-428(%ebp)
	movl	-8(%ebp),%eax
	movb	1(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	%al
	cmpb	-428(%ebp),%al
	jne	Lj1164
	jmp	Lj1165
Lj1164:
	cmpb	$0,-428(%ebp)
	jne	Lj1168
	jmp	Lj1169
Lj1168:
	movl	-4(%ebp),%esi
	leal	-462(%ebp),%edi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movzbl	-462(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1172
	jmp	Lj1173
Lj1172:
	movb	-461(%ebp),%al
	xorb	$128,%al
	movb	%al,-461(%ebp)
Lj1173:
	movl	-12(%ebp),%ecx
	leal	-462(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj1182
	jmp	Lj1183
Lj1182:
	movl	-12(%ebp),%eax
	movb	1(%eax),%dl
	xorb	$128,%dl
	movl	-12(%ebp),%eax
	movb	%dl,1(%eax)
Lj1183:
	jmp	Lj1158
Lj1169:
	movl	-8(%ebp),%esi
	leal	-462(%ebp),%edi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movzbl	-462(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1188
	jmp	Lj1189
Lj1188:
	movb	-461(%ebp),%al
	xorb	$128,%al
	movb	%al,-461(%ebp)
Lj1189:
	movl	-12(%ebp),%ecx
	leal	-462(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	jmp	Lj1158
Lj1165:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT$stub
	movl	%eax,%edx
	subl	$-1,%edx
	cmpl	$2,%edx
	jbe	Lj1204
	call	LFPC_RANGEERROR$stub
Lj1204:
	movb	%al,-424(%ebp)
	movb	-424(%ebp),%al
	testb	%al,%al
	je	Lj1205
	jmp	Lj1206
Lj1205:
	leal	-496(%ebp),%edi
	movl	L_U_FMTBCD_NULLBCD_$non_lazy_ptr-Lj1159(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	-12(%ebp),%edi
	leal	-496(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	jmp	Lj1158
Lj1206:
	leal	-149(%ebp),%edi
	movl	L_U_FMTBCD_NULL_$non_lazy_ptr-Lj1159(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$34,%ecx
	rep
	movsl
	movsb
	movb	-424(%ebp),%al
	cmpb	$0,%al
	setgb	%al
	cmpb	-428(%ebp),%al
	je	Lj1213
	jmp	Lj1214
Lj1213:
	leal	-423(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub
	leal	-286(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub
	movb	-428(%ebp),%al
	testb	%al,%al
	seteb	-428(%ebp)
	jmp	Lj1225
Lj1214:
	leal	-286(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub
	leal	-423(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub
Lj1225:
	movb	-284(%ebp),%al
	cmpb	-421(%ebp),%al
	jl	Lj1234
	jmp	Lj1235
Lj1234:
	movb	-284(%ebp),%al
	movb	%al,-147(%ebp)
	jmp	Lj1238
Lj1235:
	movb	-421(%ebp),%al
	movb	%al,-147(%ebp)
Lj1238:
	movb	-283(%ebp),%al
	cmpb	-420(%ebp),%al
	jg	Lj1241
	jmp	Lj1242
Lj1241:
	movb	-283(%ebp),%al
	movb	%al,-146(%ebp)
	jmp	Lj1245
Lj1242:
	movb	-420(%ebp),%al
	movb	%al,-146(%ebp)
Lj1245:
	movsbl	-146(%ebp),%eax
	cmpl	$132,%eax
	jbe	Lj1250
	call	LFPC_RANGEERROR$stub
Lj1250:
	movb	-146(%ebp),%al
	movb	%al,-148(%ebp)
	movb	$0,-425(%ebp)
	movb	-147(%ebp),%dl
	movb	-146(%ebp),%al
	movb	%al,-426(%ebp)
	cmpb	-426(%ebp),%dl
	jg	Lj1254
	addb	$1,-426(%ebp)
	.align 2
Lj1255:
	subb	$1,-426(%ebp)
	movsbl	-426(%ebp),%eax
	movzbl	-216(%ebp,%eax,1),%eax
	movsbl	-426(%ebp),%ecx
	movzbl	-353(%ebp,%ecx,1),%ecx
	subl	%ecx,%eax
	jno	Lj1258
	call	LFPC_OVERFLOW$stub
Lj1258:
	movzbl	-425(%ebp),%ecx
	subl	%ecx,%eax
	jno	Lj1259
	call	LFPC_OVERFLOW$stub
Lj1259:
	movl	%eax,%ecx
	subl	$-10,%ecx
	cmpl	$19,%ecx
	jbe	Lj1260
	call	LFPC_RANGEERROR$stub
Lj1260:
	movb	%al,-427(%ebp)
	movb	$0,-425(%ebp)
	movb	-427(%ebp),%al
	cmpb	$0,%al
	jl	Lj1263
	jmp	Lj1264
Lj1263:
	movb	$1,-425(%ebp)
	movsbl	-427(%ebp),%eax
	addl	$10,%eax
	jno	Lj1269
	call	LFPC_OVERFLOW$stub
Lj1269:
	movl	%eax,%ecx
	subl	$-10,%ecx
	cmpl	$19,%ecx
	jbe	Lj1270
	call	LFPC_RANGEERROR$stub
Lj1270:
	movb	%al,-427(%ebp)
Lj1264:
	movsbl	-426(%ebp),%ecx
	movsbl	-427(%ebp),%eax
	cmpl	$9,%eax
	jbe	Lj1273
	call	LFPC_RANGEERROR$stub
Lj1273:
	movb	-427(%ebp),%al
	movb	%al,-79(%ebp,%ecx,1)
	cmpb	-426(%ebp),%dl
	jl	Lj1255
Lj1254:
	movb	-428(%ebp),%al
	movb	%al,-13(%ebp)
	movl	-12(%ebp),%edx
	leal	-149(%ebp),%eax
	call	L_FMTBCD_PACK_BCD$TBCD_HELPER$TBCD$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1276
	jmp	Lj1277
Lj1276:
	movl	L_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION$non_lazy_ptr-Lj1159(%ebx),%edx
	movl	L_$FMTBCD$_Ld10$non_lazy_ptr-Lj1159(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La6:
	movl	%ebp,%ecx
	leal	La6-Lj1159(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1277:
Lj1158:
	movl	-508(%ebp),%ebx
	movl	-504(%ebp),%esi
	movl	-500(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_NORMALIZEBCD$TBCD$TBCD$LONGINT$LONGINT$$BOOLEAN
_FMTBCD_NORMALIZEBCD$TBCD$TBCD$LONGINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-164(%ebp)
	movl	%esi,-160(%ebp)
	movl	%edi,-156(%ebp)
	call	Lj1289
Lj1289:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1290
	jmp	Lj1292
Lj1292:
	movl	-12(%ebp),%eax
	cmpl	$64,%eax
	jg	Lj1290
	jmp	Lj1291
Lj1290:
	call	L_FMTBCD_RANGEERROR$stub
Lj1291:
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1293
	jmp	Lj1295
Lj1295:
	movl	-12(%ebp),%eax
	cmpl	$64,%eax
	jge	Lj1293
	jmp	Lj1294
Lj1293:
	call	L_FMTBCD_RANGEERROR$stub
Lj1294:
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	andb	$63,%al
	movzbw	%al,%ax
	movzwl	%ax,%eax
	cmpl	8(%ebp),%eax
	jg	Lj1296
	jmp	Lj1298
Lj1298:
	movl	-4(%ebp),%eax
	movzbw	(%eax),%ax
	movzwl	%ax,%eax
	cmpl	8(%ebp),%eax
	jl	Lj1296
	jmp	Lj1297
Lj1296:
	leal	-150(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub
	movzbl	-149(%ebp),%edx
	movl	8(%ebp),%eax
	subl	%eax,%edx
	jno	Lj1309
	call	LFPC_OVERFLOW$stub
Lj1309:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1310
	call	LFPC_RANGEERROR$stub
Lj1310:
	movb	%dl,-151(%ebp)
	movl	8(%ebp),%eax
	cmpl	$132,%eax
	jbe	Lj1313
	call	LFPC_RANGEERROR$stub
Lj1313:
	movb	8(%ebp),%al
	movb	%al,-149(%ebp)
	movzbl	-150(%ebp),%edx
	movsbl	-151(%ebp),%eax
	subl	%eax,%edx
	jno	Lj1316
	call	LFPC_OVERFLOW$stub
Lj1316:
	movl	%edx,%eax
	cmpl	$132,%eax
	jbe	Lj1317
	call	LFPC_RANGEERROR$stub
Lj1317:
	movb	%dl,-150(%ebp)
	movsbl	-147(%ebp),%edx
	movsbl	-151(%ebp),%eax
	subl	%eax,%edx
	jno	Lj1320
	call	LFPC_OVERFLOW$stub
Lj1320:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1321
	call	LFPC_RANGEERROR$stub
Lj1321:
	movb	%dl,-147(%ebp)
	movb	-151(%ebp),%al
	cmpb	$0,%al
	setleb	-13(%ebp)
	movl	-8(%ebp),%edx
	leal	-150(%ebp),%eax
	call	L_FMTBCD_PACK_BCD$TBCD_HELPER$TBCD$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1324
	jmp	Lj1325
Lj1324:
	movl	L_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION$non_lazy_ptr-Lj1289(%ebx),%edx
	movl	L_$FMTBCD$_Ld12$non_lazy_ptr-Lj1289(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La7:
	movl	%ebp,%ecx
	leal	La7-Lj1289(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1325:
	jmp	Lj1336
Lj1297:
	movl	-8(%ebp),%edi
	movl	-4(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movb	$1,-13(%ebp)
Lj1336:
	movb	-13(%ebp),%al
	movl	-164(%ebp),%ebx
	movl	-160(%ebp),%esi
	movl	-156(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD
_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1032,%esp
	movl	%ebx,-1020(%ebp)
	movl	%esi,-1016(%ebp)
	movl	%edi,-1012(%ebp)
	call	Lj1342
Lj1342:
	popl	-1008(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-149(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub
	leal	-286(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub
	movzbl	-149(%ebp),%eax
	testl	%eax,%eax
	je	Lj1351
	jmp	Lj1353
Lj1353:
	movzbl	-286(%ebp),%eax
	testl	%eax,%eax
	je	Lj1351
	jmp	Lj1352
Lj1351:
	leal	-1003(%ebp),%edi
	movl	-1008(%ebp),%edx
	movl	L_U_FMTBCD_NULLBCD_$non_lazy_ptr-Lj1342(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	-12(%ebp),%edi
	leal	-1003(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	jmp	Lj1341
Lj1352:
	leal	-423(%ebp),%edi
	movl	-1008(%ebp),%eax
	movl	L_U_FMTBCD_NULL_$non_lazy_ptr-Lj1342(%eax),%edx
	movl	%edx,%esi
	cld
	movl	$34,%ecx
	rep
	movsl
	movsb
	leal	-962(%ebp),%edi
	movl	-1008(%ebp),%edx
	movl	L_U_FMTBCD_NULL_$non_lazy_ptr-Lj1342(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$134,%ecx
	rep
	movsl
	movsb
	movb	-13(%ebp),%dl
	movb	-150(%ebp),%al
	xorb	%al,%dl
	movb	%dl,-426(%ebp)
	movsbl	-147(%ebp),%edx
	movsbl	-284(%ebp),%eax
	addl	%eax,%edx
	jno	Lj1366
	call	LFPC_OVERFLOW$stub
Lj1366:
	movl	%edx,%eax
	subl	$-133,%eax
	cmpl	$263,%eax
	jbe	Lj1367
	call	LFPC_RANGEERROR$stub
Lj1367:
	movw	%dx,-958(%ebp)
	movsbl	-146(%ebp),%edx
	movsbl	-283(%ebp),%eax
	addl	%eax,%edx
	jno	Lj1370
	call	LFPC_OVERFLOW$stub
Lj1370:
	movl	%edx,%eax
	subl	$-133,%eax
	cmpl	$263,%eax
	jbe	Lj1371
	call	LFPC_RANGEERROR$stub
Lj1371:
	movw	%dx,-956(%ebp)
	movb	-146(%ebp),%bl
	movb	-147(%ebp),%al
	movb	%al,-963(%ebp)
	cmpb	-963(%ebp),%bl
	jl	Lj1373
	subb	$1,-963(%ebp)
	.align 2
Lj1374:
	addb	$1,-963(%ebp)
	movb	-283(%ebp),%cl
	movb	-284(%ebp),%al
	movb	%al,-964(%ebp)
	cmpb	-964(%ebp),%cl
	jl	Lj1376
	subb	$1,-964(%ebp)
	.align 2
Lj1377:
	addb	$1,-964(%ebp)
	movsbl	-963(%ebp),%edx
	movsbl	-964(%ebp),%eax
	addl	%eax,%edx
	jno	Lj1380
	call	LFPC_OVERFLOW$stub
Lj1380:
	movl	%edx,%eax
	subl	$-133,%eax
	cmpl	$263,%eax
	jbe	Lj1381
	call	LFPC_RANGEERROR$stub
Lj1381:
	leal	-688(%ebp,%edx,2),%esi
	movsbl	-963(%ebp),%eax
	movzbl	-79(%ebp,%eax,1),%edx
	movsbl	-964(%ebp),%eax
	movzbl	-216(%ebp,%eax,1),%eax
	mull	%edx
	jae	Lj1384
	call	LFPC_OVERFLOW$stub
Lj1384:
	movzwl	(%esi),%edx
	addl	%edx,%eax
	jnb	Lj1385
	call	LFPC_OVERFLOW$stub
Lj1385:
	movl	%eax,%edx
	cmpl	$2511,%edx
	jbe	Lj1386
	call	LFPC_RANGEERROR$stub
Lj1386:
	movw	%ax,(%esi)
	cmpb	-964(%ebp),%cl
	jg	Lj1377
Lj1376:
	cmpb	-963(%ebp),%bl
	jg	Lj1374
Lj1373:
	movw	-958(%ebp),%ax
	cmpw	$-66,%ax
	jl	Lj1387
	jmp	Lj1388
Lj1387:
	movl	-1008(%ebp),%eax
	movl	L_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION$non_lazy_ptr-Lj1342(%eax),%edx
	movl	-1008(%ebp),%eax
	movl	L_$FMTBCD$_Ld14$non_lazy_ptr-Lj1342(%eax),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La8:
	movl	%ebp,%ecx
	movl	-1008(%ebp),%ebx
	leal	La8-Lj1342(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1388:
	movb	$0,-969(%ebp)
	movw	-958(%ebp),%cx
	movw	-956(%ebp),%ax
	movw	%ax,-966(%ebp)
	cmpw	-966(%ebp),%cx
	jg	Lj1398
	addw	$1,-966(%ebp)
	.align 2
Lj1399:
	subw	$1,-966(%ebp)
	movswl	-966(%ebp),%eax
	movzwl	-688(%ebp,%eax,2),%edx
	movzbl	-969(%ebp),%eax
	addl	%eax,%edx
	jnb	Lj1402
	call	LFPC_OVERFLOW$stub
Lj1402:
	movl	%edx,%eax
	cmpl	$2511,%eax
	jbe	Lj1403
	call	LFPC_RANGEERROR$stub
Lj1403:
	movw	%dx,-968(%ebp)
	movzwl	-968(%ebp),%ebx
	movl	$1717986919,%eax
	imull	%ebx
	movl	%ebx,%eax
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,%eax
	cmpl	$251,%eax
	jbe	Lj1406
	call	LFPC_RANGEERROR$stub
Lj1406:
	movb	%dl,-969(%ebp)
	movzwl	-968(%ebp),%eax
	cltd
	movl	$10,%ebx
	idivl	%ebx
	movl	%edx,%eax
	cmpl	$2511,%eax
	jbe	Lj1409
	call	LFPC_RANGEERROR$stub
Lj1409:
	movw	%dx,-968(%ebp)
	movswl	-966(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1412
	call	LFPC_RANGEERROR$stub
Lj1412:
	movswl	-966(%ebp),%edx
	movzwl	-968(%ebp),%eax
	cmpl	$9,%eax
	jbe	Lj1413
	call	LFPC_RANGEERROR$stub
Lj1413:
	movb	-968(%ebp),%al
	movb	%al,-353(%ebp,%edx,1)
	cmpw	-966(%ebp),%cx
	jl	Lj1399
Lj1398:
	jmp	Lj1415
	.align 2
Lj1414:
	movswl	-958(%ebp),%eax
	subl	$1,%eax
	jno	Lj1419
	call	LFPC_OVERFLOW$stub
Lj1419:
	movl	%eax,%edx
	subl	$-133,%edx
	cmpl	$263,%edx
	jbe	Lj1420
	call	LFPC_RANGEERROR$stub
Lj1420:
	movw	%ax,-958(%ebp)
	movw	-958(%ebp),%ax
	cmpw	$-66,%ax
	jl	Lj1421
	jmp	Lj1422
Lj1421:
	movl	-1008(%ebp),%eax
	movl	L_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION$non_lazy_ptr-Lj1342(%eax),%edx
	movl	-1008(%ebp),%eax
	movl	L_$FMTBCD$_Ld14$non_lazy_ptr-Lj1342(%eax),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La9:
	movl	%ebp,%ecx
	movl	-1008(%ebp),%ebx
	leal	La9-Lj1342(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1422:
	movzbl	-969(%ebp),%eax
	cltd
	movl	$10,%ecx
	idivl	%ecx
	movl	%edx,%eax
	cmpl	$9,%eax
	jbe	Lj1431
	call	LFPC_RANGEERROR$stub
Lj1431:
	movswl	-958(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1432
	call	LFPC_RANGEERROR$stub
Lj1432:
	movswl	-958(%ebp),%eax
	movb	%dl,-353(%ebp,%eax,1)
	movzbl	-969(%ebp),%ecx
	movl	$1717986919,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,%eax
	cmpl	$251,%eax
	jbe	Lj1435
	call	LFPC_RANGEERROR$stub
Lj1435:
	movb	%dl,-969(%ebp)
Lj1415:
	movzbl	-969(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1414
	jmp	Lj1416
Lj1416:
	movb	-13(%ebp),%dl
	movb	-150(%ebp),%al
	xorb	%al,%dl
	movb	%dl,-287(%ebp)
	movswl	-956(%ebp),%eax
	cmpl	$132,%eax
	jbe	Lj1440
	call	LFPC_RANGEERROR$stub
Lj1440:
	movb	-956(%ebp),%al
	movb	%al,-422(%ebp)
	movswl	-958(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1443
	call	LFPC_RANGEERROR$stub
Lj1443:
	movb	-958(%ebp),%al
	movb	%al,-421(%ebp)
	movw	-956(%ebp),%ax
	cmpw	$65,%ax
	jg	Lj1444
	jmp	Lj1445
Lj1444:
	movb	$65,-420(%ebp)
	jmp	Lj1448
Lj1445:
	movswl	-956(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1451
	call	LFPC_RANGEERROR$stub
Lj1451:
	movb	-956(%ebp),%al
	movb	%al,-420(%ebp)
Lj1448:
	movl	-12(%ebp),%edx
	leal	-423(%ebp),%eax
	call	L_FMTBCD_PACK_BCD$TBCD_HELPER$TBCD$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1452
	jmp	Lj1453
Lj1452:
	movl	-1008(%ebp),%eax
	movl	L_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION$non_lazy_ptr-Lj1342(%eax),%edx
	movl	-1008(%ebp),%eax
	movl	L_$FMTBCD$_Ld14$non_lazy_ptr-Lj1342(%eax),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La10:
	movl	%ebp,%ecx
	movl	-1008(%ebp),%ebx
	leal	La10-Lj1342(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1453:
Lj1341:
	movl	-1020(%ebp),%ebx
	movl	-1016(%ebp),%esi
	movl	-1012(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDMULTIPLY$TBCD$EXTENDED$TBCD
_FMTBCD_BCDMULTIPLY$TBCD$EXTENDED$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	leal	-42(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDMULTIPLY$TBCD$SHORTSTRING$TBCD
_FMTBCD_BCDMULTIPLY$TBCD$SHORTSTRING$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDMULTIPLY$SHORTSTRING$SHORTSTRING$TBCD
_FMTBCD_BCDMULTIPLY$SHORTSTRING$SHORTSTRING$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%ebx
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-80(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	%ebx,%edx
	call	L_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD$stub
	movl	-84(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD
_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$664,%esp
	movl	%ebx,-652(%ebp)
	movl	%esi,-648(%ebp)
	movl	%edi,-644(%ebp)
	call	Lj1505
Lj1505:
	popl	-640(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-423(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub
	leal	-286(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub
	movsbl	-284(%ebp),%edx
	movsbl	-421(%ebp),%eax
	subl	%eax,%edx
	jno	Lj1516
	call	LFPC_OVERFLOW$stub
Lj1516:
	movl	%edx,%eax
	subl	$-131,%eax
	cmpl	$262,%eax
	jbe	Lj1517
	call	LFPC_RANGEERROR$stub
Lj1517:
	movw	%dx,-562(%ebp)
	movzbl	-423(%ebp),%eax
	testl	%eax,%eax
	je	Lj1518
	jmp	Lj1519
Lj1518:
	movl	-640(%ebp),%eax
	movl	L_VMT_FMTBCD_EBCDEXCEPTION$non_lazy_ptr-Lj1505(%eax),%edx
	movl	-640(%ebp),%eax
	movl	L_$FMTBCD$_Ld16$non_lazy_ptr-Lj1505(%eax),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La11:
	movl	%ebp,%ecx
	movl	-640(%ebp),%ebx
	leal	La11-Lj1505(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj1526
Lj1519:
	movzbl	-286(%ebp),%eax
	testl	%eax,%eax
	je	Lj1527
	jmp	Lj1528
Lj1527:
	leal	-634(%ebp),%edi
	movl	-640(%ebp),%edx
	movl	L_U_FMTBCD_NULLBCD_$non_lazy_ptr-Lj1505(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	-12(%ebp),%edi
	leal	-634(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	jmp	Lj1533
Lj1528:
	movw	-562(%ebp),%ax
	cmpw	$-66,%ax
	jl	Lj1534
	jmp	Lj1535
Lj1534:
	movl	-640(%ebp),%eax
	movl	L_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION$non_lazy_ptr-Lj1505(%eax),%edx
	movl	-640(%ebp),%eax
	movl	L_$FMTBCD$_Ld18$non_lazy_ptr-Lj1505(%eax),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La12:
	movl	%ebp,%ecx
	movl	-640(%ebp),%ebx
	leal	La12-Lj1505(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
	jmp	Lj1542
Lj1535:
	leal	-560(%ebp),%edi
	movl	-640(%ebp),%edx
	movl	L_U_FMTBCD_NULL_$non_lazy_ptr-Lj1505(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$34,%ecx
	rep
	movsl
	movsb
	movb	-150(%ebp),%al
	movb	-287(%ebp),%dl
	xorb	%dl,%al
	movb	%al,-424(%ebp)
	movw	-562(%ebp),%ax
	cmpw	$65,%ax
	jle	Lj1547
	jmp	Lj1548
Lj1547:
	leal	-149(%ebp),%edi
	movl	-640(%ebp),%edx
	movl	L_U_FMTBCD_NULL_$non_lazy_ptr-Lj1505(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$34,%ecx
	rep
	movsl
	movsb
	movb	$0,-596(%ebp)
	movw	-562(%ebp),%ax
	cmpw	$0,%ax
	setgb	-600(%ebp)
	movb	$0,-590(%ebp)
	movb	$1,-597(%ebp)
	jmp	Lj1560
	.align 2
Lj1559:
	movzbl	-596(%ebp),%eax
	imull	$137,%eax
	leal	-286(%ebp,%eax),%eax
	movl	%eax,%ebx
	movsbl	-421(%ebp),%eax
	movzbl	-353(%ebp,%eax,1),%edx
	movsbl	2(%ebx),%eax
	movzbl	70(%ebx,%eax,1),%eax
	addl	%eax,%edx
	jnb	Lj1566
	call	LFPC_OVERFLOW$stub
Lj1566:
	testl	%edx,%edx
	je	Lj1564
	jmp	Lj1565
Lj1564:
	movb	2(%ebx),%al
	cmpb	3(%ebx),%al
	jge	Lj1567
	jmp	Lj1569
Lj1569:
	movb	-421(%ebp),%al
	cmpb	-420(%ebp),%al
	jge	Lj1567
	jmp	Lj1568
Lj1567:
	movb	$0,-597(%ebp)
	jmp	Lj1572
Lj1568:
	movsbl	2(%ebx),%edx
	addl	$1,%edx
	jno	Lj1575
	call	LFPC_OVERFLOW$stub
Lj1575:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1576
	call	LFPC_RANGEERROR$stub
Lj1576:
	movb	%dl,2(%ebx)
	movsbl	-421(%ebp),%edx
	addl	$1,%edx
	jno	Lj1579
	call	LFPC_OVERFLOW$stub
Lj1579:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1580
	call	LFPC_RANGEERROR$stub
Lj1580:
	movb	%dl,-421(%ebp)
Lj1572:
	jmp	Lj1581
Lj1565:
	movsbl	2(%ebx),%eax
	movb	70(%ebx,%eax,1),%al
	movb	%al,-563(%ebp)
	movsbl	-421(%ebp),%eax
	movb	-353(%ebp,%eax,1),%al
	movb	%al,-564(%ebp)
	movb	-563(%ebp),%al
	cmpb	-564(%ebp),%al
	setbb	-599(%ebp)
	movb	-563(%ebp),%al
	cmpb	-564(%ebp),%al
	je	Lj1588
	jmp	Lj1589
Lj1588:
	movb	$0,-597(%ebp)
	movsbl	2(%ebx),%edx
	addl	$1,%edx
	jno	Lj1594
	call	LFPC_OVERFLOW$stub
Lj1594:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1595
	call	LFPC_RANGEERROR$stub
Lj1595:
	movsbw	%dl,%dx
	movw	%dx,-580(%ebp)
	movsbw	3(%ebx),%ax
	movw	%ax,-582(%ebp)
	jmp	Lj1599
	.align 2
Lj1598:
	movswl	-580(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1603
	call	LFPC_RANGEERROR$stub
Lj1603:
	movswl	-580(%ebp),%eax
	movb	70(%ebx,%eax,1),%al
	movb	%al,-563(%ebp)
	movswl	-580(%ebp),%edx
	movswl	-562(%ebp),%eax
	subl	%eax,%edx
	jno	Lj1606
	call	LFPC_OVERFLOW$stub
Lj1606:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1607
	call	LFPC_RANGEERROR$stub
Lj1607:
	movb	-353(%ebp,%edx,1),%al
	movb	%al,-564(%ebp)
	movb	-563(%ebp),%al
	cmpb	-564(%ebp),%al
	jne	Lj1608
	jmp	Lj1609
Lj1608:
	movb	$1,-597(%ebp)
	movb	-563(%ebp),%al
	cmpb	-564(%ebp),%al
	jb	Lj1612
	jmp	Lj1613
Lj1612:
	movb	$1,-599(%ebp)
Lj1613:
Lj1609:
	movswl	-580(%ebp),%eax
	addl	$1,%eax
	jno	Lj1618
	call	LFPC_OVERFLOW$stub
Lj1618:
	movl	%eax,%edx
	subl	$-66,%edx
	cmpl	$262,%edx
	jbe	Lj1619
	call	LFPC_RANGEERROR$stub
Lj1619:
	movw	%ax,-580(%ebp)
Lj1599:
	movw	-580(%ebp),%ax
	cmpw	-582(%ebp),%ax
	jle	Lj1621
	jmp	Lj1600
Lj1621:
	movb	-597(%ebp),%al
	testb	%al,%al
	je	Lj1620
	jmp	Lj1600
Lj1620:
	movb	-599(%ebp),%al
	testb	%al,%al
	je	Lj1598
	jmp	Lj1600
Lj1600:
Lj1589:
	movb	-597(%ebp),%al
	testb	%al,%al
	je	Lj1622
	jmp	Lj1623
Lj1622:
	movb	$1,-590(%ebp)
	jmp	Lj1626
Lj1623:
	cmpb	$0,-599(%ebp)
	jne	Lj1627
	jmp	Lj1628
Lj1627:
	movswl	-562(%ebp),%eax
	addl	$1,%eax
	jno	Lj1631
	call	LFPC_OVERFLOW$stub
Lj1631:
	movl	%eax,%edx
	subl	$-131,%edx
	cmpl	$262,%edx
	jbe	Lj1632
	call	LFPC_RANGEERROR$stub
Lj1632:
	movw	%ax,-562(%ebp)
	movw	-562(%ebp),%ax
	cmpw	$65,%ax
	jg	Lj1633
	jmp	Lj1634
Lj1633:
	movb	$0,-597(%ebp)
	jmp	Lj1637
Lj1634:
	movsbl	-421(%ebp),%edx
	subl	$1,%edx
	jno	Lj1640
	call	LFPC_OVERFLOW$stub
Lj1640:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1641
	call	LFPC_RANGEERROR$stub
Lj1641:
	movb	%dl,-421(%ebp)
Lj1637:
	jmp	Lj1642
Lj1628:
	movb	2(%ebx),%al
	movb	%al,-565(%ebp)
	movsbl	3(%ebx),%edx
	movsbl	2(%ebx),%eax
	subl	%eax,%edx
	jno	Lj1647
	call	LFPC_OVERFLOW$stub
Lj1647:
	movl	%edx,%eax
	subl	$-131,%eax
	cmpl	$262,%eax
	jbe	Lj1648
	call	LFPC_RANGEERROR$stub
Lj1648:
	movw	%dx,-568(%ebp)
	movsbl	-420(%ebp),%edx
	movsbl	-421(%ebp),%eax
	subl	%eax,%edx
	jno	Lj1651
	call	LFPC_OVERFLOW$stub
Lj1651:
	movl	%edx,%eax
	subl	$-131,%eax
	cmpl	$262,%eax
	jbe	Lj1652
	call	LFPC_RANGEERROR$stub
Lj1652:
	movw	%dx,-570(%ebp)
	movw	-568(%ebp),%ax
	cmpw	-570(%ebp),%ax
	jg	Lj1653
	jmp	Lj1654
Lj1653:
	movw	-568(%ebp),%ax
	movw	%ax,-572(%ebp)
	jmp	Lj1657
Lj1654:
	movw	-570(%ebp),%ax
	movw	%ax,-572(%ebp)
Lj1657:
	movsbl	-565(%ebp),%edx
	movswl	-572(%ebp),%eax
	addl	%eax,%edx
	jno	Lj1662
	call	LFPC_OVERFLOW$stub
Lj1662:
	movl	%edx,%eax
	subl	$-197,%eax
	cmpl	$393,%eax
	jbe	Lj1663
	call	LFPC_RANGEERROR$stub
Lj1663:
	movw	%dx,-574(%ebp)
	movw	-574(%ebp),%ax
	cmpw	$65,%ax
	jg	Lj1664
	jmp	Lj1665
Lj1664:
	movswl	-574(%ebp),%edx
	subl	$65,%edx
	jno	Lj1668
	call	LFPC_OVERFLOW$stub
Lj1668:
	movl	%edx,%eax
	subl	$-262,%eax
	cmpl	$393,%eax
	jbe	Lj1669
	call	LFPC_RANGEERROR$stub
Lj1669:
	movw	%dx,-576(%ebp)
	movswl	-572(%ebp),%edx
	movswl	-576(%ebp),%eax
	subl	%eax,%edx
	jno	Lj1672
	call	LFPC_OVERFLOW$stub
Lj1672:
	movl	%edx,%eax
	subl	$-131,%eax
	cmpl	$262,%eax
	jbe	Lj1673
	call	LFPC_RANGEERROR$stub
Lj1673:
	movw	%dx,-572(%ebp)
	movswl	-574(%ebp),%edx
	movswl	-576(%ebp),%eax
	subl	%eax,%edx
	jno	Lj1676
	call	LFPC_OVERFLOW$stub
Lj1676:
	movl	%edx,%eax
	subl	$-197,%eax
	cmpl	$393,%eax
	jbe	Lj1677
	call	LFPC_RANGEERROR$stub
Lj1677:
	movw	%dx,-574(%ebp)
Lj1665:
	movb	$1,-598(%ebp)
	movb	$0,-590(%ebp)
	movw	$0,-586(%ebp)
	movw	$0,-588(%ebp)
	movb	$0,-591(%ebp)
	movsbl	-565(%ebp),%eax
	movzbl	70(%ebx,%eax,1),%eax
	movsbl	-565(%ebp),%ecx
	movswl	-562(%ebp),%edx
	subl	%edx,%ecx
	jno	Lj1690
	call	LFPC_OVERFLOW$stub
Lj1690:
	movl	%ecx,%edx
	subl	$-66,%edx
	cmpl	$131,%edx
	jbe	Lj1691
	call	LFPC_RANGEERROR$stub
Lj1691:
	movzbl	-353(%ebp,%ecx,1),%ecx
	addl	$1,%ecx
	jno	Lj1692
	call	LFPC_OVERFLOW$stub
Lj1692:
	cltd
	idivl	%ecx
	movl	%eax,%edx
	cmpl	$9,%edx
	jbe	Lj1693
	call	LFPC_RANGEERROR$stub
Lj1693:
	movb	%al,-589(%ebp)
	movzbl	-589(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj1694
	jmp	Lj1695
Lj1694:
	movb	$1,-589(%ebp)
Lj1695:
	movsbw	-565(%ebp),%ax
	movw	%ax,%cx
	movswl	-574(%ebp),%eax
	subl	$-66,%eax
	cmpl	$262,%eax
	jbe	Lj1701
	call	LFPC_RANGEERROR$stub
Lj1701:
	movw	-574(%ebp),%ax
	movw	%ax,-578(%ebp)
	cmpw	-578(%ebp),%cx
	jg	Lj1699
	addw	$1,-578(%ebp)
	.align 2
Lj1700:
	subw	$1,-578(%ebp)
	movswl	-578(%ebp),%edx
	movswl	-562(%ebp),%eax
	subl	%eax,%edx
	jno	Lj1704
	call	LFPC_OVERFLOW$stub
Lj1704:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1705
	call	LFPC_RANGEERROR$stub
Lj1705:
	movzbl	-353(%ebp,%edx,1),%edx
	movzbl	-589(%ebp),%eax
	mull	%edx
	jae	Lj1706
	call	LFPC_OVERFLOW$stub
Lj1706:
	movswl	-578(%ebp),%edx
	subl	$-66,%edx
	cmpl	$131,%edx
	jbe	Lj1707
	call	LFPC_RANGEERROR$stub
Lj1707:
	movswl	-578(%ebp),%edx
	movzbl	70(%ebx,%edx,1),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	jno	Lj1708
	call	LFPC_OVERFLOW$stub
Lj1708:
	movzbl	-591(%ebp),%edx
	subl	%edx,%eax
	jno	Lj1709
	call	LFPC_OVERFLOW$stub
Lj1709:
	movl	%eax,%edx
	subl	$-180,%edx
	cmpl	$189,%edx
	jbe	Lj1710
	call	LFPC_RANGEERROR$stub
Lj1710:
	movw	%ax,-594(%ebp)
	movb	$0,-591(%ebp)
	jmp	Lj1714
	.align 2
Lj1713:
	movzbl	-591(%ebp),%eax
	addl	$1,%eax
	jnb	Lj1718
	call	LFPC_OVERFLOW$stub
Lj1718:
	movl	%eax,%edx
	cmpl	$99,%edx
	jbe	Lj1719
	call	LFPC_RANGEERROR$stub
Lj1719:
	movb	%al,-591(%ebp)
	movswl	-594(%ebp),%eax
	addl	$10,%eax
	jno	Lj1722
	call	LFPC_OVERFLOW$stub
Lj1722:
	movl	%eax,%edx
	subl	$-180,%edx
	cmpl	$189,%edx
	jbe	Lj1723
	call	LFPC_RANGEERROR$stub
Lj1723:
	movw	%ax,-594(%ebp)
Lj1714:
	movswl	-594(%ebp),%eax
	subl	$-128,%eax
	cmpl	$255,%eax
	jbe	Lj1724
	call	LFPC_RANGEERROR$stub
Lj1724:
	movb	-594(%ebp),%al
	cmpb	$0,%al
	jl	Lj1713
	jmp	Lj1715
Lj1715:
	movb	-596(%ebp),%al
	testb	%al,%al
	seteb	%al
	movzbl	%al,%eax
	movl	%eax,%edx
	imull	$137,%edx
	movswl	-578(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1727
	call	LFPC_RANGEERROR$stub
Lj1727:
	movswl	-578(%ebp),%esi
	leal	-216(%ebp,%edx),%edx
	movswl	-594(%ebp),%eax
	cmpl	$9,%eax
	jbe	Lj1728
	call	LFPC_RANGEERROR$stub
Lj1728:
	movb	-594(%ebp),%al
	movb	%al,(%edx,%esi,1)
	cmpw	-578(%ebp),%cx
	jl	Lj1700
Lj1699:
	movb	$0,-598(%ebp)
	movsbw	-565(%ebp),%ax
	movw	%ax,-586(%ebp)
	movswl	-574(%ebp),%eax
	subl	$-66,%eax
	cmpl	$262,%eax
	jbe	Lj1735
	call	LFPC_RANGEERROR$stub
Lj1735:
	movw	-574(%ebp),%ax
	movw	%ax,-588(%ebp)
	movzbl	-590(%ebp),%edx
	movzbl	-589(%ebp),%eax
	addl	%eax,%edx
	jnb	Lj1738
	call	LFPC_OVERFLOW$stub
Lj1738:
	movl	%edx,%eax
	cmpl	$99,%eax
	jbe	Lj1739
	call	LFPC_RANGEERROR$stub
Lj1739:
	movb	%dl,-590(%ebp)
	cmpb	$0,-598(%ebp)
	jne	Lj1740
	jmp	Lj1741
Lj1740:
	movb	$0,-597(%ebp)
	jmp	Lj1744
Lj1741:
	movzbl	-596(%ebp),%eax
	imull	$137,%eax
	leal	-286(%ebp,%eax),%eax
	movb	$0,%cl
	movl	$137,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movb	-596(%ebp),%al
	testb	%al,%al
	seteb	-596(%ebp)
	movzbl	-596(%ebp),%eax
	imull	$137,%eax
	leal	-286(%ebp,%eax),%edx
	movswl	-586(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1757
	call	LFPC_RANGEERROR$stub
Lj1757:
	movb	-586(%ebp),%al
	movb	%al,2(%edx)
	movswl	-588(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1760
	call	LFPC_RANGEERROR$stub
Lj1760:
	movb	-588(%ebp),%al
	movb	%al,3(%edx)
Lj1744:
Lj1642:
Lj1626:
	movzbl	-590(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1761
	jmp	Lj1762
Lj1761:
	movb	-600(%ebp),%al
	testb	%al,%al
	je	Lj1763
	jmp	Lj1764
Lj1763:
	movswl	-562(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1767
	call	LFPC_RANGEERROR$stub
Lj1767:
	movb	-562(%ebp),%al
	movb	%al,-558(%ebp)
	movb	$1,-600(%ebp)
Lj1764:
	movsbw	-557(%ebp),%ax
	cmpw	-562(%ebp),%ax
	jl	Lj1770
	jmp	Lj1771
Lj1770:
	movswl	-562(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1774
	call	LFPC_RANGEERROR$stub
Lj1774:
	movb	-562(%ebp),%al
	movb	%al,-557(%ebp)
	movsbl	-557(%ebp),%eax
	movsbl	-558(%ebp),%edx
	subl	%edx,%eax
	jno	Lj1777
	call	LFPC_OVERFLOW$stub
Lj1777:
	cmpl	$65,%eax
	jg	Lj1775
	jmp	Lj1776
Lj1775:
	movb	$0,-597(%ebp)
Lj1776:
Lj1771:
	movswl	-562(%ebp),%eax
	subl	$-66,%eax
	cmpl	$262,%eax
	jbe	Lj1782
	call	LFPC_RANGEERROR$stub
Lj1782:
	movw	-562(%ebp),%ax
	movw	%ax,-584(%ebp)
	jmp	Lj1784
	.align 2
Lj1783:
	movswl	-584(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1788
	call	LFPC_RANGEERROR$stub
Lj1788:
	movswl	-584(%ebp),%eax
	movzbl	-490(%ebp,%eax,1),%edx
	movzbl	-590(%ebp),%eax
	addl	%eax,%edx
	jnb	Lj1789
	call	LFPC_OVERFLOW$stub
Lj1789:
	movl	%edx,%eax
	cmpl	$108,%eax
	jbe	Lj1790
	call	LFPC_RANGEERROR$stub
Lj1790:
	movb	%dl,-595(%ebp)
	movzbl	-595(%ebp),%ecx
	movl	$1717986919,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,%eax
	cmpl	$99,%eax
	jbe	Lj1793
	call	LFPC_RANGEERROR$stub
Lj1793:
	movb	%dl,-590(%ebp)
	movzbl	-595(%ebp),%eax
	cltd
	movl	$10,%ecx
	idivl	%ecx
	movl	%edx,%eax
	cmpl	$9,%eax
	jbe	Lj1796
	call	LFPC_RANGEERROR$stub
Lj1796:
	movswl	-584(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1797
	call	LFPC_RANGEERROR$stub
Lj1797:
	movswl	-584(%ebp),%eax
	movb	%dl,-490(%ebp,%eax,1)
	movswl	-584(%ebp),%edx
	subl	$1,%edx
	jno	Lj1800
	call	LFPC_OVERFLOW$stub
Lj1800:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$262,%eax
	jbe	Lj1801
	call	LFPC_RANGEERROR$stub
Lj1801:
	movw	%dx,-584(%ebp)
Lj1784:
	movzbl	-590(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1802
	jmp	Lj1785
Lj1802:
	movsbw	-558(%ebp),%ax
	cmpw	-584(%ebp),%ax
	jle	Lj1783
	jmp	Lj1785
Lj1785:
	movzbl	-590(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1803
	jmp	Lj1804
Lj1803:
	movsbl	-558(%ebp),%edx
	subl	$1,%edx
	jno	Lj1807
	call	LFPC_OVERFLOW$stub
Lj1807:
	movl	%edx,%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj1808
	call	LFPC_RANGEERROR$stub
Lj1808:
	movb	%dl,-558(%ebp)
	movsbl	-558(%ebp),%edx
	movzbl	-590(%ebp),%eax
	cmpl	$9,%eax
	jbe	Lj1811
	call	LFPC_RANGEERROR$stub
Lj1811:
	movb	-590(%ebp),%al
	movb	%al,-490(%ebp,%edx,1)
	movb	$0,-590(%ebp)
Lj1804:
Lj1762:
Lj1581:
Lj1560:
	cmpb	$0,-597(%ebp)
	jne	Lj1559
	jmp	Lj1561
Lj1561:
Lj1548:
	movb	-557(%ebp),%al
	cmpb	$0,%al
	jl	Lj1814
	jmp	Lj1815
Lj1814:
	movb	$0,-557(%ebp)
Lj1815:
	movb	-557(%ebp),%al
	cmpb	$0,%al
	jg	Lj1818
	jmp	Lj1819
Lj1818:
	movsbl	-557(%ebp),%eax
	cmpl	$132,%eax
	jbe	Lj1822
	call	LFPC_RANGEERROR$stub
Lj1822:
	movb	-557(%ebp),%al
	movb	%al,-559(%ebp)
	jmp	Lj1823
Lj1819:
	movb	$0,-559(%ebp)
Lj1823:
	movl	-12(%ebp),%edx
	leal	-560(%ebp),%eax
	call	L_FMTBCD_PACK_BCD$TBCD_HELPER$TBCD$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1826
	jmp	Lj1827
Lj1826:
	movl	-640(%ebp),%eax
	movl	L_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION$non_lazy_ptr-Lj1505(%eax),%edx
	movl	-640(%ebp),%eax
	movl	L_$FMTBCD$_Ld18$non_lazy_ptr-Lj1505(%eax),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La13:
	movl	%ebp,%ecx
	movl	-640(%ebp),%ebx
	leal	La13-Lj1505(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1827:
Lj1542:
Lj1533:
Lj1526:
	movl	-652(%ebp),%ebx
	movl	-648(%ebp),%esi
	movl	-644(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDDIVIDE$SHORTSTRING$SHORTSTRING$TBCD
_FMTBCD_BCDDIVIDE$SHORTSTRING$SHORTSTRING$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%ebx
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-80(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	%ebx,%edx
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	movl	-84(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDDIVIDE$TBCD$EXTENDED$TBCD
_FMTBCD_BCDDIVIDE$TBCD$EXTENDED$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	leal	-42(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDDIVIDE$TBCD$SHORTSTRING$TBCD
_FMTBCD_BCDDIVIDE$TBCD$SHORTSTRING$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_VARFMTBCDCREATE$VARIANT$TBCD
_FMTBCD_VARFMTBCDCREATE$VARIANT$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj1879
Lj1879:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_VARIANTS_VARCLEAR$VARIANT$stub
	movl	L_TC_FMTBCD_FMTBCDFACTORY$non_lazy_ptr-Lj1879(%ebx),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movw	4(%eax),%ax
	movw	%ax,(%edx)
	movl	-8(%ebp),%ecx
	movl	L_VMT_FMTBCD_TFMTBCDVARDATA$non_lazy_ptr-Lj1879(%ebx),%edx
	movl	$0,%eax
	call	L_FMTBCD_TFMTBCDVARDATA_$__CREATE$TBCD$$TFMTBCDVARDATA$stub
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_VARFMTBCDCREATE$$VARIANT
_FMTBCD_VARFMTBCDCREATE$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%esi,-48(%ebp)
	movl	%edi,-44(%ebp)
	call	Lj1893
Lj1893:
	popl	%ebx
	movl	%eax,-4(%ebp)
	leal	-38(%ebp),%edi
	movl	L_U_FMTBCD_NULLBCD_$non_lazy_ptr-Lj1893(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	leal	-38(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_VARFMTBCDCREATE$VARIANT$TBCD$stub
	movl	-52(%ebp),%ebx
	movl	-48(%ebp),%esi
	movl	-44(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_VARFMTBCDCREATE$SHORTSTRING$WORD$WORD$$VARIANT
_FMTBCD_VARFMTBCDCREATE$SHORTSTRING$WORD$WORD$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_FMTBCD_VARFMTBCDCREATE$VARIANT$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_VARFMTBCDCREATE$EXTENDED$WORD$WORD$$VARIANT
_FMTBCD_VARFMTBCDCREATE$EXTENDED$WORD$WORD$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-46(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	leal	-46(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FMTBCD_VARFMTBCDCREATE$VARIANT$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_VARFMTBCDCREATE$TBCD$$VARIANT
_FMTBCD_VARFMTBCDCREATE$TBCD$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_VARFMTBCDCREATE$VARIANT$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_VARISFMTBCD$VARIANT$$BOOLEAN
_FMTBCD_VARISFMTBCD$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1927
Lj1927:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	L_TC_FMTBCD_FMTBCDFACTORY$non_lazy_ptr-Lj1927(%ecx),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movw	4(%eax),%ax
	cmpw	(%edx),%ax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_VARFMTBCD$$WORD
_FMTBCD_VARFMTBCD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1931
Lj1931:
	popl	%edx
	movl	L_TC_FMTBCD_FMTBCDFACTORY$non_lazy_ptr-Lj1931(%edx),%eax
	movl	(%eax),%eax
	movw	4(%eax),%ax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDTOSTRF$TBCD$TFLOATFORMAT$LONGINT$LONGINT$$SHORTSTRING
_FMTBCD_BCDTOSTRF$TBCD$TFLOATFORMAT$LONGINT$LONGINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$920,%esp
	movl	%ebx,-912(%ebp)
	movl	%esi,-908(%ebp)
	call	Lj1935
Lj1935:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-904(%ebp)
	movl	$0,-872(%ebp)
	movl	$0,-612(%ebp)
	movl	$0,-352(%ebp)
	movl	$0,-332(%ebp)
	movl	$0,-328(%ebp)
	movl	$0,-324(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1942
	leal	-320(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDTOSTR$TBCD$$SHORTSTRING$stub
	leal	-320(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1955
	jmp	Lj1956
Lj1955:
	jmp	Lj1942
Lj1956:
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movb	3(%eax),%al
	movb	%al,-22(%ebp)
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movb	2(%eax),%al
	movb	%al,-23(%ebp)
	movl	8(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$45,%al
	seteb	-21(%ebp)
	movl	8(%ebp),%edx
	movb	-22(%ebp),%al
	call	L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1969
	jmp	Lj1970
Lj1969:
	movl	8(%ebp),%eax
	movzbl	(%eax),%eax
	addl	$1,%eax
	jno	Lj1973
	call	LFPC_OVERFLOW$stub
Lj1973:
	movl	%eax,-16(%ebp)
Lj1970:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj1975
	subl	$1,%eax
	je	Lj1976
	subl	$1,%eax
	je	Lj1977
	subl	$1,%eax
	je	Lj1978
	subl	$1,%eax
	je	Lj1979
	jmp	Lj1975
Lj1976:
	movl	-16(%ebp),%edx
	subl	$2,%edx
	jno	Lj1982
	call	LFPC_OVERFLOW$stub
Lj1982:
	movzbl	-21(%ebp),%eax
	subl	%eax,%edx
	jno	Lj1985
	call	LFPC_OVERFLOW$stub
Lj1985:
	movl	%edx,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1988
	jmp	Lj1987
Lj1988:
	movl	8(%ebp),%ecx
	movl	-16(%ebp),%edx
	subl	$1,%edx
	jno	Lj1989
	call	LFPC_OVERFLOW$stub
Lj1989:
	movl	%edx,%eax
	cmpl	$255,%eax
	jbe	Lj1990
	call	LFPC_RANGEERROR$stub
Lj1990:
	movzbl	%dl,%edx
	movb	(%ecx,%edx,1),%al
	cmpb	$48,%al
	je	Lj1986
	jmp	Lj1987
Lj1986:
	.align 2
Lj1991:
	movl	-20(%ebp),%eax
	subl	$1,%eax
	jno	Lj1996
	call	LFPC_OVERFLOW$stub
Lj1996:
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	jno	Lj1998
	call	LFPC_OVERFLOW$stub
Lj1998:
	movl	8(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	%eax,%edx
	jge	Lj1993
	jmp	Lj1997
Lj1997:
	movl	8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	jno	Lj1999
	call	LFPC_OVERFLOW$stub
Lj1999:
	movl	%edx,%eax
	cmpl	$255,%eax
	jbe	Lj2000
	call	LFPC_RANGEERROR$stub
Lj2000:
	movzbl	%dl,%edx
	movb	(%ecx,%edx,1),%al
	cmpb	$48,%al
	jne	Lj1993
	jmp	Lj1991
Lj1993:
Lj1987:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2001
	jmp	Lj2002
Lj2001:
	movl	$1,(%esp)
	movl	-16(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	jno	Lj2013
	call	LFPC_OVERFLOW$stub
Lj2013:
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%edx
	movb	-22(%ebp),%al
	movl	$255,%ecx
	call	L_SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT$stub
Lj2002:
	movl	-12(%ebp),%edx
	subl	$1,%edx
	jno	Lj2024
	call	LFPC_OVERFLOW$stub
Lj2024:
	movl	%ebp,%eax
	call	L_FMTBCD_BCDTOSTRF$crc3D9E8529_ADDDECIMALDIGITS$LONGINT$stub
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj2027
	jmp	Lj2028
Lj2027:
	movl	-20(%ebp),%eax
	negl	%eax
	cmpl	$-2147483648,%eax
	jne	Lj2031
	call	LFPC_OVERFLOW$stub
Lj2031:
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%eax
	addl	%eax,%ecx
	jno	Lj2034
	call	LFPC_OVERFLOW$stub
Lj2034:
	subl	$1,%ecx
	jno	Lj2035
	call	LFPC_OVERFLOW$stub
Lj2035:
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
	leal	-324(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-324(%ebp)
	leal	-328(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-328(%ebp)
	leal	-328(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$0,-80(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$0,-72(%ebp)
	leal	-80(%ebp),%edx
	movl	$1,%ecx
	movl	L_$FMTBCD$_Ld20$non_lazy_ptr-Lj1935(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-328(%ebp),%esi
	leal	-332(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-332(%ebp)
	leal	-332(%ebp),%edx
	movl	8(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-332(%ebp),%edx
	leal	-324(%ebp),%eax
	movl	%esi,%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-324(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj2064
Lj2028:
	leal	-332(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-332(%ebp)
	leal	-328(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-328(%ebp)
	leal	-328(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,-344(%ebp)
	movl	$0,-348(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-336(%ebp)
	movl	$0,-340(%ebp)
	leal	-348(%ebp),%edx
	movl	$1,%ecx
	movl	L_$FMTBCD$_Ld22$non_lazy_ptr-Lj1935(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-328(%ebp),%esi
	leal	-324(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-324(%ebp)
	leal	-324(%ebp),%edx
	movl	8(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-324(%ebp),%edx
	leal	-332(%ebp),%eax
	movl	%esi,%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-332(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
Lj2064:
	jmp	Lj1974
Lj1977:
	movl	12(%ebp),%edx
	movl	%ebp,%eax
	call	L_FMTBCD_BCDTOSTRF$crc3D9E8529_ADDDECIMALDIGITS$LONGINT$stub
	jmp	Lj1974
Lj1978:
	movl	12(%ebp),%edx
	movl	%ebp,%eax
	call	L_FMTBCD_BCDTOSTRF$crc3D9E8529_ADDDECIMALDIGITS$LONGINT$stub
	movl	%ebp,%eax
	call	L_FMTBCD_BCDTOSTRF$crc3D9E8529_ADDTHOUSANDSEPARATORS$stub
	jmp	Lj1974
Lj1979:
	cmpb	$0,-21(%ebp)
	jne	Lj2099
	jmp	Lj2100
Lj2099:
	movl	$1,(%esp)
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	$255,%edx
	call	L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub
Lj2100:
	movl	12(%ebp),%edx
	movl	%ebp,%eax
	call	L_FMTBCD_BCDTOSTRF$crc3D9E8529_ADDDECIMALDIGITS$LONGINT$stub
	movl	%ebp,%eax
	call	L_FMTBCD_BCDTOSTRF$crc3D9E8529_ADDTHOUSANDSEPARATORS$stub
	movb	-21(%ebp),%al
	testb	%al,%al
	je	Lj2115
	jmp	Lj2116
Lj2115:
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj2119
	subb	$1,%al
	je	Lj2120
	subb	$1,%al
	je	Lj2121
	subb	$1,%al
	je	Lj2122
	jmp	Lj2118
Lj2119:
	leal	-332(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-332(%ebp)
	leal	-352(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-352(%ebp)
	leal	-352(%ebp),%edx
	movl	8(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-352(%ebp),%ecx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	8(%eax),%edx
	leal	-332(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-332(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj2117
Lj2120:
	leal	-352(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-352(%ebp)
	leal	-332(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-332(%ebp)
	leal	-332(%ebp),%edx
	movl	8(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-332(%ebp),%edx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	8(%eax),%ecx
	leal	-352(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-352(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj2117
Lj2121:
	leal	-352(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-352(%ebp)
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,-344(%ebp)
	movl	L_$FMTBCD$_Ld24$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	%eax,-340(%ebp)
	leal	-332(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-332(%ebp)
	leal	-332(%ebp),%edx
	movl	8(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-332(%ebp),%eax
	movl	%eax,-336(%ebp)
	leal	-344(%ebp),%edx
	leal	-352(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-352(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj2117
Lj2122:
	leal	-352(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-352(%ebp)
	leal	-332(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-332(%ebp)
	movl	L_$FMTBCD$_Ld26$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%ecx
	leal	-608(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	leal	-608(%ebp),%eax
	leal	-332(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-332(%ebp),%edx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	8(%eax),%ecx
	leal	-352(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-352(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj2117
Lj2118:
Lj2117:
	jmp	Lj2195
Lj2116:
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movb	1(%eax),%al
	testb	%al,%al
	je	Lj2198
	subb	$1,%al
	je	Lj2199
	subb	$1,%al
	je	Lj2200
	subb	$1,%al
	je	Lj2201
	subb	$1,%al
	je	Lj2202
	subb	$1,%al
	je	Lj2203
	subb	$1,%al
	je	Lj2204
	subb	$1,%al
	je	Lj2205
	subb	$1,%al
	je	Lj2206
	subb	$1,%al
	je	Lj2207
	subb	$1,%al
	je	Lj2208
	jmp	Lj2197
Lj2198:
	leal	-352(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-352(%ebp)
	movl	L_$FMTBCD$_Ld27$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	%eax,-368(%ebp)
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,-364(%ebp)
	leal	-612(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-612(%ebp)
	leal	-612(%ebp),%edx
	movl	8(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-612(%ebp),%eax
	movl	%eax,-360(%ebp)
	movl	L_$FMTBCD$_Ld29$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	%eax,-356(%ebp)
	leal	-368(%ebp),%edx
	leal	-352(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-352(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj2196
Lj2199:
	leal	-612(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-612(%ebp)
	movl	L_$FMTBCD$_Ld31$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	%eax,-364(%ebp)
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,-360(%ebp)
	leal	-352(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-352(%ebp)
	leal	-352(%ebp),%edx
	movl	8(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-352(%ebp),%eax
	movl	%eax,-356(%ebp)
	leal	-364(%ebp),%edx
	leal	-612(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-612(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj2196
Lj2200:
	leal	-612(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-612(%ebp)
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,-364(%ebp)
	movl	L_$FMTBCD$_Ld31$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	%eax,-360(%ebp)
	leal	-352(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-352(%ebp)
	leal	-352(%ebp),%edx
	movl	8(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-352(%ebp),%eax
	movl	%eax,-356(%ebp)
	leal	-364(%ebp),%edx
	leal	-612(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-612(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj2196
Lj2201:
	leal	-612(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-612(%ebp)
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,-364(%ebp)
	leal	-352(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-352(%ebp)
	leal	-352(%ebp),%edx
	movl	8(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-352(%ebp),%eax
	movl	%eax,-360(%ebp)
	movl	L_$FMTBCD$_Ld31$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	%eax,-356(%ebp)
	leal	-364(%ebp),%edx
	leal	-612(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-612(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj2196
Lj2202:
	leal	-612(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-612(%ebp)
	leal	-352(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-352(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-868(%ebp),%eax
	movl	L_$FMTBCD$_Ld33$non_lazy_ptr-Lj1935(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	leal	-868(%ebp),%eax
	leal	-352(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-352(%ebp),%eax
	movl	%eax,-364(%ebp)
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,-360(%ebp)
	movl	L_$FMTBCD$_Ld29$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	%eax,-356(%ebp)
	leal	-364(%ebp),%edx
	leal	-612(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-612(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj2196
Lj2203:
	leal	-612(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-612(%ebp)
	leal	-872(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-872(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-868(%ebp),%eax
	movl	L_$FMTBCD$_Ld34$non_lazy_ptr-Lj1935(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	leal	-868(%ebp),%eax
	leal	-872(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-872(%ebp),%edx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	8(%eax),%ecx
	leal	-612(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-612(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj2196
Lj2204:
	leal	-872(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-872(%ebp)
	leal	-612(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-612(%ebp)
	movl	L_$FMTBCD$_Ld34$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	%eax,(%esp)
	movl	8(%ebp),%ecx
	leal	-868(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	leal	-868(%ebp),%eax
	leal	-612(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-612(%ebp),%edx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	8(%eax),%ecx
	leal	-872(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-872(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj2196
Lj2205:
	leal	-872(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-872(%ebp)
	leal	-612(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-612(%ebp)
	leal	-612(%ebp),%edx
	movl	8(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-612(%ebp),%eax
	movl	%eax,-624(%ebp)
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,-620(%ebp)
	movl	L_$FMTBCD$_Ld31$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	%eax,-616(%ebp)
	leal	-624(%ebp),%edx
	leal	-872(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-872(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj2196
Lj2206:
	leal	-872(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-872(%ebp)
	leal	-612(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-612(%ebp)
	movl	$2,(%esp)
	movl	L_$FMTBCD$_Ld34$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	%eax,-884(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-880(%ebp)
	movl	L_$FMTBCD$_Ld26$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	%eax,-876(%ebp)
	leal	-884(%ebp),%ecx
	leal	-868(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
	leal	-868(%ebp),%eax
	leal	-612(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-612(%ebp),%edx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	8(%eax),%ecx
	leal	-872(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movl	-872(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj2196
Lj2207:
	leal	-872(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-872(%ebp)
	movl	L_$FMTBCD$_Ld31$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	%eax,-900(%ebp)
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,-896(%ebp)
	movl	L_$FMTBCD$_Ld24$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	%eax,-892(%ebp)
	leal	-904(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-904(%ebp)
	leal	-904(%ebp),%edx
	movl	8(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-904(%ebp),%eax
	movl	%eax,-888(%ebp)
	leal	-900(%ebp),%edx
	leal	-872(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-872(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj2196
Lj2208:
	leal	-904(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-904(%ebp)
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	8(%eax),%eax
	movl	%eax,-888(%ebp)
	movl	L_$FMTBCD$_Ld24$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	%eax,-884(%ebp)
	leal	-872(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-872(%ebp)
	leal	-872(%ebp),%edx
	movl	8(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-872(%ebp),%eax
	movl	%eax,-880(%ebp)
	movl	L_$FMTBCD$_Ld31$non_lazy_ptr-Lj1935(%ebx),%eax
	movl	%eax,-876(%ebp)
	leal	-888(%ebp),%edx
	leal	-904(%ebp),%eax
	movl	$3,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-904(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj2196
Lj2197:
Lj2196:
Lj2195:
	jmp	Lj1974
Lj1975:
Lj1974:
Lj1942:
	call	LFPC_POPADDRSTACK$stub
	leal	-904(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-904(%ebp)
	leal	-872(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-872(%ebp)
	leal	-612(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-612(%ebp)
	leal	-352(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-352(%ebp)
	leal	-332(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-332(%ebp)
	leal	-328(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-328(%ebp)
	leal	-324(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-324(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1943
	call	LFPC_RERAISE$stub
Lj1943:
	movl	-912(%ebp),%ebx
	movl	-908(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDTOSTRF$crc3D9E8529_ADDTHOUSANDSEPARATORS
_FMTBCD_BCDTOSTRF$crc3D9E8529_ADDTHOUSANDSEPARATORS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	-16(%eax),%eax
	movl	(%eax),%edx
	subl	$3,%edx
	jno	Lj2421
	call	LFPC_OVERFLOW$stub
Lj2421:
	movl	%edx,(%eax)
	jmp	Lj2423
	.align 2
Lj2422:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-16(%eax),%edx
	subl	$1,%edx
	jno	Lj2428
	call	LFPC_OVERFLOW$stub
Lj2428:
	movl	%edx,%eax
	cmpl	$255,%eax
	jbe	Lj2429
	call	LFPC_RANGEERROR$stub
Lj2429:
	movzbl	%dl,%edx
	movb	(%ecx,%edx,1),%al
	cmpb	$45,%al
	jne	Lj2427
	jmp	Lj2426
Lj2427:
	movl	-4(%ebp),%eax
	movb	-23(%eax),%al
	testb	%al,%al
	jne	Lj2425
	jmp	Lj2426
Lj2425:
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movb	-23(%eax),%al
	movl	$255,%ecx
	call	L_SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT$stub
Lj2426:
	movl	-4(%ebp),%eax
	leal	-16(%eax),%eax
	movl	(%eax),%edx
	subl	$3,%edx
	jno	Lj2442
	call	LFPC_OVERFLOW$stub
Lj2442:
	movl	%edx,(%eax)
Lj2423:
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	cmpl	$1,%eax
	jg	Lj2422
	jmp	Lj2424
Lj2424:
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDTOSTRF$crc3D9E8529_ADDDECIMALDIGITS$LONGINT
_FMTBCD_BCDTOSTRF$crc3D9E8529_ADDDECIMALDIGITS$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-324(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-320(%ebp)
	movl	$0,-316(%ebp)
	movl	$0,-312(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2443
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	-16(%edx),%eax
	jl	Lj2446
	jmp	Lj2447
Lj2446:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2448
	jmp	Lj2449
Lj2448:
	jmp	Lj2443
	jmp	Lj2450
Lj2449:
	movl	-8(%ebp),%eax
	movzbl	-22(%eax),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-308(%ebp)
	leal	-308(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
Lj2450:
Lj2447:
	movl	-8(%ebp),%eax
	movl	-16(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	jno	Lj2461
	call	LFPC_OVERFLOW$stub
Lj2461:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movzbl	(%eax),%eax
	subl	%eax,%edx
	jno	Lj2462
	call	LFPC_OVERFLOW$stub
Lj2462:
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2463
	jmp	Lj2464
Lj2463:
	leal	-312(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-312(%ebp)
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-316(%ebp)
	leal	-316(%ebp),%ecx
	movl	-12(%ebp),%edx
	movb	$48,%al
	call	L_SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING$stub
	movl	-316(%ebp),%ebx
	leal	-320(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-320(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	leal	-320(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-320(%ebp),%edx
	leal	-312(%ebp),%eax
	movl	%ebx,%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-312(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	jmp	Lj2487
Lj2464:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj2488
	jmp	Lj2489
Lj2488:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_BCDTOSTRF$crc3D9E8529_ROUNDDECIMALDIGITS$LONGINT$stub
Lj2489:
Lj2487:
Lj2443:
	call	LFPC_POPADDRSTACK$stub
	leal	-320(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-320(%ebp)
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-316(%ebp)
	leal	-312(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-312(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2444
	call	LFPC_RERAISE$stub
Lj2444:
	movl	-324(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDTOSTRF$crc3D9E8529_ROUNDDECIMALDIGITS$LONGINT
_FMTBCD_BCDTOSTRF$crc3D9E8529_ROUNDDECIMALDIGITS$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-276(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	jno	Lj2496
	call	LFPC_OVERFLOW$stub
Lj2496:
	movl	%edx,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movzbl	(%eax),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj2499
	jmp	Lj2498
Lj2499:
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-16(%ebp),%edx
	addl	$1,%edx
	jno	Lj2500
	call	LFPC_OVERFLOW$stub
Lj2500:
	movl	%edx,%eax
	cmpl	$255,%eax
	jbe	Lj2501
	call	LFPC_RANGEERROR$stub
Lj2501:
	movzbl	%dl,%edx
	movb	(%ecx,%edx,1),%al
	cmpb	$53,%al
	jae	Lj2497
	jmp	Lj2498
Lj2497:
	movl	-8(%ebp),%eax
	movzbl	-21(%eax),%ebx
	addl	$1,%ebx
	jno	Lj2507
	call	LFPC_OVERFLOW$stub
Lj2507:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jg	Lj2503
	addl	$1,-12(%ebp)
	.align 2
Lj2504:
	subl	$1,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-12(%ebp),%eax
	cmpl	$255,%eax
	jbe	Lj2510
	call	LFPC_RANGEERROR$stub
Lj2510:
	movzbl	-12(%ebp),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$57,%al
	je	Lj2508
	jmp	Lj2509
Lj2508:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-12(%ebp),%eax
	cmpl	$255,%eax
	jbe	Lj2513
	call	LFPC_RANGEERROR$stub
Lj2513:
	movzbl	-12(%ebp),%eax
	movb	$48,(%edx,%eax,1)
	movl	-8(%ebp),%eax
	movzbl	-21(%eax),%eax
	addl	$1,%eax
	jno	Lj2518
	call	LFPC_OVERFLOW$stub
Lj2518:
	cmpl	-12(%ebp),%eax
	je	Lj2514
	jmp	Lj2515
Lj2514:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	$255,%ecx
	movb	$49,%al
	call	L_SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT$stub
	movl	-8(%ebp),%eax
	leal	-16(%eax),%eax
	movl	(%eax),%edx
	addl	$1,%edx
	jno	Lj2531
	call	LFPC_OVERFLOW$stub
Lj2531:
	movl	%edx,(%eax)
	movl	-16(%ebp),%eax
	addl	$1,%eax
	jno	Lj2534
	call	LFPC_OVERFLOW$stub
Lj2534:
	movl	%eax,-16(%ebp)
Lj2515:
	jmp	Lj2535
Lj2509:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-12(%ebp),%eax
	cmpl	$255,%eax
	jbe	Lj2538
	call	LFPC_RANGEERROR$stub
Lj2538:
	movzbl	-12(%ebp),%eax
	movl	-8(%ebp),%ecx
	movb	(%edx,%eax,1),%al
	cmpb	-22(%ecx),%al
	jne	Lj2536
	jmp	Lj2537
Lj2536:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-12(%ebp),%eax
	cmpl	$255,%eax
	jbe	Lj2541
	call	LFPC_RANGEERROR$stub
Lj2541:
	movzbl	-12(%ebp),%eax
	leal	(%edx,%eax,1),%eax
	movzbl	(%eax),%edx
	addl	$1,%edx
	jno	Lj2544
	call	LFPC_OVERFLOW$stub
Lj2544:
	movl	%edx,%ecx
	cmpl	$255,%ecx
	jbe	Lj2545
	call	LFPC_RANGEERROR$stub
Lj2545:
	movb	%dl,(%eax)
	jmp	Lj2503
Lj2537:
Lj2535:
	cmpl	-12(%ebp),%ebx
	jl	Lj2504
Lj2503:
Lj2498:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2546
	jmp	Lj2547
Lj2546:
	movl	-16(%ebp),%eax
	subl	$1,%eax
	jno	Lj2550
	call	LFPC_OVERFLOW$stub
Lj2550:
	movl	%eax,-16(%ebp)
Lj2547:
	leal	-272(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	$1,%edx
	call	Lfpc_shortstr_copy$stub
	leal	-272(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-276(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_FORMATBCD$SHORTSTRING$TBCD$$SHORTSTRING
_FMTBCD_FORMATBCD$SHORTSTRING$TBCD$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$776,%esp
	movl	%ebx,-756(%ebp)
	movl	%esi,-752(%ebp)
	movl	%edi,-748(%ebp)
	call	Lj2566
Lj2566:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%esi
	leal	-452(%ebp),%edi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	leal	-486(%ebp),%edi
	movl	L_U_FMTBCD_NULLBCD_$non_lazy_ptr-Lj2566(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	leal	-486(%ebp),%edx
	leal	-452(%ebp),%eax
	call	L_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT$stub
	cmpl	$-1,%eax
	je	Lj2575
	testl	%eax,%eax
	je	Lj2574
	cmpl	$1,%eax
	je	Lj2573
	jmp	Lj2572
Lj2573:
	movl	$1,-36(%ebp)
	jmp	Lj2571
Lj2574:
	movl	$3,-36(%ebp)
	jmp	Lj2571
Lj2575:
	movl	$2,-36(%ebp)
	jmp	Lj2571
Lj2572:
Lj2571:
	movl	-36(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2588
	jmp	Lj2589
Lj2588:
	movzbl	-452(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2590
	jmp	Lj2591
Lj2590:
	movb	-451(%ebp),%al
	xorb	$128,%al
	movb	%al,-451(%ebp)
Lj2591:
Lj2589:
	movl	%ebp,%eax
	call	L_FMTBCD_FORMATBCD$SHORTSTRING$TBCD$$SHORTSTRING_PARSEFORMAT$stub
	movl	-72(%ebp),%eax
	cmpl	-68(%ebp),%eax
	je	Lj2596
	jmp	Lj2597
Lj2596:
	movl	$0,-76(%ebp)
	jmp	Lj2600
Lj2597:
	cmpb	$0,-48(%ebp)
	jne	Lj2601
	jmp	Lj2602
Lj2601:
	movl	$3,-76(%ebp)
	jmp	Lj2605
Lj2602:
	movl	$2,-76(%ebp)
Lj2605:
Lj2600:
	movb	-451(%ebp),%al
	andb	$63,%al
	movzbw	%al,%ax
	movzwl	%ax,%eax
	movl	%eax,-44(%ebp)
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2614
	jmp	Lj2613
Lj2614:
	movl	-44(%ebp),%eax
	cmpl	-52(%ebp),%eax
	jg	Lj2612
	jmp	Lj2613
Lj2612:
	movl	-52(%ebp),%eax
	movl	%eax,-44(%ebp)
Lj2613:
	leal	-742(%ebp),%eax
	movl	%eax,(%esp)
	movl	-44(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-76(%ebp),%edx
	leal	-452(%ebp),%eax
	movl	$64,%ecx
	call	L_FMTBCD_BCDTOSTRF$TBCD$TFLOATFORMAT$LONGINT$LONGINT$$SHORTSTRING$stub
	leal	-742(%ebp),%ecx
	leal	-332(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj2633
	jmp	Lj2634
Lj2633:
	leal	-332(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	jmp	Lj2565
Lj2634:
	movl	$85,-28(%ebp)
	movl	$86,-32(%ebp)
	cmpb	$0,-47(%ebp)
	jne	Lj2647
	jmp	Lj2646
Lj2647:
	movl	-68(%ebp),%edx
	movl	-60(%ebp),%eax
	subl	%eax,%edx
	cmpl	$1,%edx
	jg	Lj2645
	jmp	Lj2646
Lj2645:
	movl	-60(%ebp),%eax
	movl	%eax,-16(%ebp)
	movzbl	-332(%ebp),%edx
	movl	-44(%ebp),%eax
	subl	%eax,%edx
	jno	Lj2652
	call	LFPC_OVERFLOW$stub
Lj2652:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	seteb	%al
	movzbl	%al,%eax
	addl	%eax,%edx
	jno	Lj2655
	call	LFPC_OVERFLOW$stub
Lj2655:
	movl	%edx,-20(%ebp)
	movl	-68(%ebp),%edx
	movl	-60(%ebp),%eax
	subl	%eax,%edx
	movl	-28(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	jno	Lj2658
	call	LFPC_OVERFLOW$stub
Lj2658:
	movl	%edx,-28(%ebp)
	movl	-28(%ebp),%eax
	addl	$1,%eax
	jno	Lj2661
	call	LFPC_OVERFLOW$stub
Lj2661:
	movl	%eax,-24(%ebp)
	jmp	Lj2663
	.align 2
Lj2662:
	movl	$1,(%esp)
	leal	-24(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-20(%ebp),%ecx
	leal	-16(%ebp),%edx
	movl	%ebp,%eax
	call	L_FMTBCD_FORMATBCD$SHORTSTRING$TBCD$$SHORTSTRING_PUTFMTDIGIT$PCHAR$LONGINT$LONGINT$LONGINT$stub
Lj2663:
	movl	-16(%ebp),%eax
	cmpl	-68(%ebp),%eax
	jb	Lj2662
	jmp	Lj2664
Lj2664:
	movl	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj2646:
	movl	-60(%ebp),%eax
	subl	$1,%eax
	movl	%eax,-16(%ebp)
	movzbl	-332(%ebp),%edx
	movl	-44(%ebp),%eax
	subl	%eax,%edx
	jno	Lj2681
	call	LFPC_OVERFLOW$stub
Lj2681:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	setneb	%al
	movzbl	%al,%eax
	subl	%eax,%edx
	jno	Lj2684
	call	LFPC_OVERFLOW$stub
Lj2684:
	movl	%edx,-20(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj2688
	.align 2
Lj2687:
	movl	$-1,(%esp)
	leal	-24(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-20(%ebp),%ecx
	leal	-16(%ebp),%edx
	movl	%ebp,%eax
	call	L_FMTBCD_FORMATBCD$SHORTSTRING$TBCD$$SHORTSTRING_PUTFMTDIGIT$PCHAR$LONGINT$LONGINT$LONGINT$stub
Lj2688:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2700
	jmp	Lj2689
Lj2700:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2687
	jmp	Lj2689
Lj2689:
	jmp	Lj2702
	.align 2
Lj2701:
	movl	$-1,(%esp)
	leal	-24(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-20(%ebp),%ecx
	leal	-16(%ebp),%edx
	movl	%ebp,%eax
	call	L_FMTBCD_FORMATBCD$SHORTSTRING$TBCD$$SHORTSTRING_PUTFMTDIGIT$PCHAR$LONGINT$LONGINT$LONGINT$stub
Lj2702:
	movl	-16(%ebp),%eax
	cmpl	-72(%ebp),%eax
	jae	Lj2714
	jmp	Lj2703
Lj2714:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$48,%al
	je	Lj2701
	jmp	Lj2703
Lj2703:
	movl	-36(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2717
	jmp	Lj2716
Lj2717:
	movl	-40(%ebp),%eax
	cmpl	$1,%eax
	je	Lj2715
	jmp	Lj2716
Lj2715:
	movl	-24(%ebp),%eax
	cmpl	$85,%eax
	jbe	Lj2720
	call	LFPC_RANGEERROR$stub
Lj2720:
	movl	-24(%ebp),%eax
	movb	$45,-418(%ebp,%eax,1)
	movl	-24(%ebp),%eax
	subl	$1,%eax
	jno	Lj2723
	call	LFPC_OVERFLOW$stub
Lj2723:
	movl	%eax,-24(%ebp)
Lj2716:
	jmp	Lj2725
	.align 2
Lj2724:
	movl	$-1,(%esp)
	leal	-24(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-20(%ebp),%ecx
	leal	-16(%ebp),%edx
	movl	%ebp,%eax
	call	L_FMTBCD_FORMATBCD$SHORTSTRING$TBCD$$SHORTSTRING_PUTFMTDIGIT$PCHAR$LONGINT$LONGINT$LONGINT$stub
Lj2725:
	movl	-16(%ebp),%eax
	cmpl	-72(%ebp),%eax
	jae	Lj2724
	jmp	Lj2726
Lj2726:
	movl	-24(%ebp),%eax
	addl	$1,%eax
	jno	Lj2739
	call	LFPC_OVERFLOW$stub
Lj2739:
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$85,%eax
	jg	Lj2740
	jmp	Lj2741
Lj2740:
	movl	-12(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj2744
Lj2741:
	movl	-32(%ebp),%edx
	movl	-24(%ebp),%eax
	subl	%eax,%edx
	jno	Lj2747
	call	LFPC_OVERFLOW$stub
Lj2747:
	movl	%edx,(%esp)
	movl	-24(%ebp),%eax
	cmpl	$85,%eax
	jbe	Lj2750
	call	LFPC_RANGEERROR$stub
Lj2750:
	movl	-24(%ebp),%eax
	leal	-418(%ebp,%eax,1),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	L_SYSTEM_SETSTRING$OPENSTRING$PCHAR$LONGINT$stub
Lj2744:
Lj2565:
	movl	-756(%ebp),%ebx
	movl	-752(%ebp),%esi
	movl	-748(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_FORMATBCD$SHORTSTRING$TBCD$$SHORTSTRING_PUTFMTDIGIT$PCHAR$LONGINT$LONGINT$LONGINT
_FMTBCD_FORMATBCD$SHORTSTRING$TBCD$$SHORTSTRING_PUTFMTDIGIT$PCHAR$LONGINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	call	Lj2570
Lj2570:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	jl	Lj2755
	jmp	Lj2757
Lj2757:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$85,%eax
	jg	Lj2755
	jmp	Lj2756
Lj2755:
	movl	L_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION$non_lazy_ptr-Lj2570(%ebx),%edx
	movl	L_$FMTBCD$_Ld36$non_lazy_ptr-Lj2570(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La14:
	movl	%ebp,%ecx
	leal	La14-Lj2570(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2756:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	jl	Lj2764
	jmp	Lj2766
Lj2766:
	movl	-12(%ebp),%eax
	movzbl	-332(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jl	Lj2764
	jmp	Lj2765
Lj2764:
	movb	$0,-13(%ebp)
	jmp	Lj2769
Lj2765:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	cmpl	$255,%edx
	jbe	Lj2772
	call	LFPC_RANGEERROR$stub
Lj2772:
	movzbl	(%eax),%eax
	movb	-332(%ecx,%eax,1),%al
	movb	%al,-13(%ebp)
Lj2769:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-64(%eax),%eax
	cmpl	(%edx),%eax
	ja	Lj2777
	jmp	Lj2775
Lj2777:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-60(%eax),%eax
	cmpl	(%edx),%eax
	ja	Lj2776
	jmp	Lj2775
Lj2776:
	movb	-13(%ebp),%al
	testb	%al,%al
	jne	Lj2773
	jmp	Lj2775
Lj2775:
	movb	-13(%ebp),%dl
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj2570(%ebx),%eax
	cmpb	2(%eax),%dl
	je	Lj2773
	jmp	Lj2774
Lj2773:
	movl	-12(%ebp),%ecx
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	cmpl	$85,%edx
	jbe	Lj2780
	call	LFPC_RANGEERROR$stub
Lj2780:
	movl	(%eax),%edx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	movl	(%edi),%eax
	cmpl	$255,%eax
	jbe	Lj2781
	call	LFPC_RANGEERROR$stub
Lj2781:
	movzbl	(%edi),%eax
	movb	-332(%esi,%eax,1),%al
	movb	%al,-418(%ecx,%edx,1)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	addl	%eax,%edx
	jno	Lj2784
	call	LFPC_OVERFLOW$stub
Lj2784:
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	addl	%eax,%edx
	jno	Lj2787
	call	LFPC_OVERFLOW$stub
Lj2787:
	movl	12(%ebp),%eax
	movl	%edx,(%eax)
	jmp	Lj2569
Lj2774:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$34,%al
	jb	Lj2789
	subb	$34,%al
	je	Lj2790
	subb	$1,%al
	je	Lj2792
	subb	$4,%al
	je	Lj2790
	subb	$5,%al
	je	Lj2793
	subb	$2,%al
	je	Lj2791
	subb	$2,%al
	je	Lj2791
	jmp	Lj2789
Lj2790:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	movb	%al,-14(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%ebp),%edx
	addl	%edx,(%eax)
	jmp	Lj2797
	.align 2
Lj2796:
	movl	-12(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	(%edx),%eax
	cmpl	$85,%eax
	jbe	Lj2801
	call	LFPC_RANGEERROR$stub
Lj2801:
	movl	(%edx),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	movb	%al,-418(%ecx,%edx,1)
	movl	-4(%ebp),%eax
	movl	8(%ebp),%edx
	addl	%edx,(%eax)
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	addl	%eax,%edx
	jno	Lj2804
	call	LFPC_OVERFLOW$stub
Lj2804:
	movl	12(%ebp),%eax
	movl	%edx,(%eax)
Lj2797:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-72(%eax),%eax
	cmpl	(%edx),%eax
	jb	Lj2806
	jmp	Lj2798
Lj2806:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-68(%eax),%eax
	cmpl	(%edx),%eax
	ja	Lj2805
	jmp	Lj2798
Lj2805:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	-14(%ebp),%al
	jne	Lj2796
	jmp	Lj2798
Lj2798:
	jmp	Lj2788
Lj2791:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$46,%al
	je	Lj2807
	jmp	Lj2808
Lj2807:
	movl	-12(%ebp),%ecx
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	cmpl	$85,%edx
	jbe	Lj2811
	call	LFPC_RANGEERROR$stub
Lj2811:
	movl	(%eax),%edx
	movl	L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr-Lj2570(%ebx),%eax
	movb	3(%eax),%al
	movb	%al,-418(%ecx,%edx,1)
	jmp	Lj2812
Lj2808:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj2813
	jmp	Lj2814
Lj2813:
	movl	-12(%ebp),%ecx
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	cmpl	$85,%edx
	jbe	Lj2817
	call	LFPC_RANGEERROR$stub
Lj2817:
	movl	(%eax),%eax
	movb	$48,-418(%ecx,%eax,1)
	jmp	Lj2818
Lj2814:
	movl	-12(%ebp),%ecx
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	cmpl	$85,%edx
	jbe	Lj2821
	call	LFPC_RANGEERROR$stub
Lj2821:
	movl	(%eax),%eax
	movb	-13(%ebp),%dl
	movb	%dl,-418(%ecx,%eax,1)
Lj2818:
Lj2812:
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	addl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	addl	%eax,%edx
	jno	Lj2824
	call	LFPC_OVERFLOW$stub
Lj2824:
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	addl	%eax,%edx
	jno	Lj2827
	call	LFPC_OVERFLOW$stub
Lj2827:
	movl	12(%ebp),%eax
	movl	%edx,(%eax)
	jmp	Lj2788
Lj2792:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj2828
	jmp	Lj2829
Lj2828:
	movl	-4(%ebp),%eax
	movl	8(%ebp),%edx
	addl	%edx,(%eax)
	jmp	Lj2830
Lj2829:
	movb	-13(%ebp),%al
	cmpb	$48,%al
	je	Lj2833
	jmp	Lj2832
Lj2833:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj2831
	jmp	Lj2832
Lj2831:
	movl	-4(%ebp),%edx
	movl	8(%ebp),%eax
	addl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	addl	%eax,%edx
	jno	Lj2836
	call	LFPC_OVERFLOW$stub
Lj2836:
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
	jmp	Lj2837
Lj2832:
	movl	-12(%ebp),%ecx
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	cmpl	$85,%edx
	jbe	Lj2840
	call	LFPC_RANGEERROR$stub
Lj2840:
	movl	(%eax),%eax
	movb	-13(%ebp),%dl
	movb	%dl,-418(%ecx,%eax,1)
	movl	-4(%ebp),%eax
	movl	8(%ebp),%edx
	addl	%edx,(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	addl	%eax,%edx
	jno	Lj2843
	call	LFPC_OVERFLOW$stub
Lj2843:
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	addl	%eax,%edx
	jno	Lj2846
	call	LFPC_OVERFLOW$stub
Lj2846:
	movl	12(%ebp),%eax
	movl	%edx,(%eax)
Lj2837:
Lj2830:
	jmp	Lj2788
Lj2793:
	movl	-4(%ebp),%eax
	movl	8(%ebp),%edx
	addl	%edx,(%eax)
	jmp	Lj2788
Lj2789:
	movl	-12(%ebp),%ecx
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	cmpl	$85,%edx
	jbe	Lj2849
	call	LFPC_RANGEERROR$stub
Lj2849:
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	movb	%al,-418(%ecx,%edx,1)
	movl	-4(%ebp),%eax
	movl	8(%ebp),%edx
	addl	%edx,(%eax)
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	addl	%eax,%edx
	jno	Lj2852
	call	LFPC_OVERFLOW$stub
Lj2852:
	movl	12(%ebp),%eax
	movl	%edx,(%eax)
Lj2788:
Lj2569:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_FORMATBCD$SHORTSTRING$TBCD$$SHORTSTRING_PARSEFORMAT
_FMTBCD_FORMATBCD$SHORTSTRING$TBCD$$SHORTSTRING_PARSEFORMAT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-48(%ebp)
	movl	%edi,-44(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	leal	1(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%eax,-16(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movzbl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movl	%eax,-72(%edx)
	movl	-4(%ebp),%eax
	movl	$0,-64(%eax)
	movl	-4(%ebp),%eax
	movl	$0,-56(%eax)
	movl	-4(%ebp),%eax
	movb	$0,-48(%eax)
	movl	-4(%ebp),%eax
	movb	$0,-47(%eax)
	movl	-4(%ebp),%eax
	movl	$1,-40(%eax)
	jmp	Lj2870
	.align 2
Lj2869:
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	cmpl	-12(%ebp),%eax
	jae	Lj2872
	jmp	Lj2873
Lj2872:
	movb	$0,-5(%ebp)
	jmp	Lj2876
Lj2873:
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
Lj2876:
	movb	-5(%ebp),%al
	testb	%al,%al
	je	Lj2882
	subb	$34,%al
	je	Lj2881
	subb	$1,%al
	je	Lj2885
	subb	$4,%al
	je	Lj2881
	subb	$5,%al
	je	Lj2884
	subb	$2,%al
	je	Lj2883
	subb	$2,%al
	je	Lj2885
	subb	$11,%al
	je	Lj2882
	jmp	Lj2880
Lj2881:
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movb	(%eax),%al
	movb	%al,-6(%ebp)
	movl	-4(%ebp),%eax
	addl	$1,-16(%eax)
	jmp	Lj2889
	.align 2
Lj2888:
	movl	-4(%ebp),%eax
	addl	$1,-16(%eax)
Lj2889:
	movl	-12(%ebp),%eax
	subl	$1,%eax
	movl	-4(%ebp),%edx
	cmpl	-16(%edx),%eax
	ja	Lj2891
	jmp	Lj2890
Lj2891:
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movb	(%eax),%al
	cmpb	-6(%ebp),%al
	jne	Lj2888
	jmp	Lj2890
Lj2890:
	jmp	Lj2879
Lj2882:
	movl	-4(%ebp),%eax
	movl	-40(%eax),%eax
	cmpl	$1,%eax
	jg	Lj2892
	jmp	Lj2893
Lj2892:
	movl	-4(%ebp),%eax
	movl	-68(%eax),%eax
	addl	$1,%eax
	movl	-4(%ebp),%edx
	movl	%eax,-72(%edx)
Lj2893:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movl	%eax,-68(%edx)
	movl	-4(%ebp),%eax
	cmpl	$0,-64(%eax)
	jne	Lj2899
	jmp	Lj2898
Lj2898:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-68(%eax),%eax
	movl	%eax,-64(%edx)
Lj2899:
	movl	-4(%ebp),%eax
	movb	-47(%eax),%al
	testb	%al,%al
	je	Lj2902
	jmp	Lj2903
Lj2902:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-68(%eax),%eax
	movl	%eax,-60(%edx)
	movl	-4(%ebp),%eax
	movl	$0,-52(%eax)
Lj2903:
	movl	-4(%ebp),%eax
	movl	-40(%eax),%eax
	cmpl	$1,%eax
	je	Lj2908
	jmp	Lj2909
Lj2908:
	movl	-4(%ebp),%eax
	leal	-40(%ebp),%edi
	leal	-72(%eax),%esi
	cld
	movl	$7,%ecx
	rep
	movsl
Lj2909:
	movb	-5(%ebp),%al
	testb	%al,%al
	je	Lj2912
	jmp	Lj2914
Lj2914:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-40(%eax),%eax
	cmpl	-36(%edx),%eax
	je	Lj2912
	jmp	Lj2913
Lj2912:
	jmp	Lj2871
Lj2913:
	movl	-4(%ebp),%eax
	movl	$0,-64(%eax)
	movl	-4(%ebp),%eax
	movl	$0,-56(%eax)
	movl	-4(%ebp),%eax
	movb	$0,-48(%eax)
	movl	-4(%ebp),%eax
	movb	$0,-47(%eax)
	movl	-4(%ebp),%eax
	leal	-40(%eax),%eax
	movl	(%eax),%edx
	addl	$1,%edx
	jno	Lj2927
	call	LFPC_OVERFLOW$stub
Lj2927:
	movl	%edx,(%eax)
	jmp	Lj2879
Lj2883:
	movl	-4(%ebp),%eax
	movb	$1,-47(%eax)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movl	%eax,-60(%edx)
	movl	-4(%ebp),%eax
	movl	$0,-52(%eax)
	jmp	Lj2879
Lj2884:
	movl	-4(%ebp),%eax
	movb	$1,-48(%eax)
	jmp	Lj2879
Lj2885:
	movl	-4(%ebp),%eax
	cmpl	$0,-64(%eax)
	jne	Lj2937
	jmp	Lj2936
Lj2936:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movl	%eax,-64(%edx)
Lj2937:
	movl	-4(%ebp),%eax
	leal	-56(%eax),%eax
	movl	(%eax),%edx
	addl	$1,%edx
	jno	Lj2944
	call	LFPC_OVERFLOW$stub
Lj2944:
	movl	%edx,(%eax)
	movl	-4(%ebp),%eax
	leal	-52(%eax),%eax
	movl	(%eax),%edx
	addl	$1,%edx
	jno	Lj2949
	call	LFPC_OVERFLOW$stub
Lj2949:
	movl	%edx,(%eax)
	jmp	Lj2879
Lj2880:
Lj2879:
	movl	-4(%ebp),%eax
	addl	$1,-16(%eax)
Lj2870:
	jmp	Lj2869
Lj2871:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-36(%eax),%eax
	cmpl	-40(%edx),%eax
	jg	Lj2950
	jmp	Lj2952
Lj2952:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-72(%eax),%eax
	cmpl	-68(%edx),%eax
	je	Lj2950
	jmp	Lj2951
Lj2950:
	movl	-4(%ebp),%eax
	leal	-72(%eax),%edi
	leal	-40(%ebp),%esi
	cld
	movl	$7,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	movl	$1,-40(%eax)
Lj2951:
	movl	-48(%ebp),%esi
	movl	-44(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_CURRTOBCD$CURRENCY$$TBCD
_FMTBCD_CURRTOBCD$CURRENCY$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDADD$TBCD$INT64$TBCD
_FMTBCD_BCDADD$TBCD$INT64$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%ebx,-244(%ebp)
	movl	%esi,-240(%ebp)
	movl	%edi,-236(%ebp)
	call	Lj2968
Lj2968:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jne	Lj2970
	cmpl	$0,%eax
	jne	Lj2970
	jmp	Lj2969
Lj2969:
	movl	-8(%ebp),%edi
	movl	-4(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	jmp	Lj2967
Lj2970:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$-2147483648,%edx
	jne	Lj2974
	cmpl	$0,%eax
	jne	Lj2974
	jmp	Lj2973
Lj2973:
	movl	-8(%ebp),%ecx
	movl	L_U_FMTBCD_MYMININTBCD$non_lazy_ptr-Lj2968(%ebx),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	jmp	Lj2967
Lj2974:
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	%al
	testb	%al,%al
	jne	Lj2981
	jmp	Lj2982
Lj2981:
	movl	-4(%ebp),%esi
	leal	-42(%ebp),%edi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movzbl	-42(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2987
	jmp	Lj2988
Lj2987:
	movb	-41(%ebp),%al
	xorb	$128,%al
	movb	%al,-41(%ebp)
Lj2988:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj2991
	jg	Lj2992
	cmpl	$0,%eax
	jb	Lj2991
	jmp	Lj2992
Lj2991:
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	notl	%edx
	negl	%ecx
	sbbl	$-1,%edx
	movl	%edx,%eax
	xorl	$-2147483648,%eax
	orl	%ecx,%eax
	testl	%eax,%eax
	jne	Lj2995
	call	LFPC_OVERFLOW$stub
Lj2995:
	movl	%edx,4(%esp)
	movl	%ecx,(%esp)
	movl	-8(%ebp),%edx
	leal	-42(%ebp),%eax
	call	L_FMTBCD_BCDADD$TBCD$INT64$TBCD$stub
	jmp	Lj3000
Lj2992:
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	leal	-42(%ebp),%eax
	call	L_FMTBCD_BCDSUBTRACT$TBCD$INT64$TBCD$stub
Lj3000:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj3007
	jmp	Lj3008
Lj3007:
	movl	-8(%ebp),%eax
	movb	1(%eax),%dl
	xorb	$128,%dl
	movl	-8(%ebp),%eax
	movb	%dl,1(%eax)
Lj3008:
	jmp	Lj2967
Lj2982:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj3011
	jg	Lj3012
	cmpl	$0,%eax
	jb	Lj3011
	jmp	Lj3012
Lj3011:
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	notl	%edx
	negl	%ecx
	sbbl	$-1,%edx
	movl	%edx,%eax
	xorl	$-2147483648,%eax
	orl	%ecx,%eax
	testl	%eax,%eax
	jne	Lj3015
	call	LFPC_OVERFLOW$stub
Lj3015:
	movl	%edx,4(%esp)
	movl	%ecx,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDSUBTRACT$TBCD$INT64$TBCD$stub
	jmp	Lj2967
Lj3012:
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$2147483647,%eax
	jg	Lj3020
	jl	Lj3021
	cmpl	$-10,%edx
	ja	Lj3020
	jmp	Lj3021
Lj3020:
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-231(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	leal	-231(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	jmp	Lj2967
Lj3021:
	leal	-179(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub
	movb	$0,-180(%ebp)
	movb	$1,-197(%ebp)
	movl	12(%ebp),%eax
	testl	%eax,%eax
	jge	Lj3042
	call	LFPC_RANGEERROR$stub
Lj3042:
	movl	8(%ebp),%eax
	movl	%eax,-188(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-184(%ebp)
	jmp	Lj3044
	.align 2
Lj3043:
	movsbl	-180(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj3048
	call	LFPC_RANGEERROR$stub
Lj3048:
	movsbl	-180(%ebp),%eax
	movzbl	-109(%ebp,%eax,1),%eax
	movl	$0,%edx
	addl	-188(%ebp),%eax
	adcl	-184(%ebp),%edx
	jno	Lj3049
	call	LFPC_OVERFLOW$stub
Lj3049:
	testl	%edx,%edx
	jge	Lj3050
	call	LFPC_RANGEERROR$stub
Lj3050:
	movl	%eax,-196(%ebp)
	movl	%edx,-192(%ebp)
	movl	$0,12(%esp)
	movl	$10,8(%esp)
	movl	-192(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-196(%ebp),%eax
	movl	%eax,(%esp)
	call	Lfpc_mod_qword$stub
	testl	%edx,%edx
	je	Lj3057
	call	LFPC_RANGEERROR$stub
Lj3057:
	movl	%eax,%edx
	cmpl	$9,%edx
	jbe	Lj3058
	call	LFPC_RANGEERROR$stub
Lj3058:
	movsbl	-180(%ebp),%edx
	subl	$-66,%edx
	cmpl	$131,%edx
	jbe	Lj3059
	call	LFPC_RANGEERROR$stub
Lj3059:
	movsbl	-180(%ebp),%edx
	movb	%al,-109(%ebp,%edx,1)
	movl	$0,12(%esp)
	movl	$10,8(%esp)
	movl	-192(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-196(%ebp),%eax
	movl	%eax,(%esp)
	call	Lfpc_div_qword$stub
	movl	%eax,-188(%ebp)
	movl	%edx,-184(%ebp)
	movl	-188(%ebp),%edx
	movl	-184(%ebp),%eax
	cmpl	$0,%eax
	jne	Lj3067
	cmpl	$0,%edx
	jne	Lj3067
	jmp	Lj3066
Lj3066:
	movb	$0,-197(%ebp)
	jmp	Lj3070
Lj3067:
	movsbl	-180(%ebp),%edx
	subl	$1,%edx
	jno	Lj3073
	call	LFPC_OVERFLOW$stub
Lj3073:
	movl	%edx,%eax
	subl	$-67,%eax
	cmpl	$67,%eax
	jbe	Lj3074
	call	LFPC_RANGEERROR$stub
Lj3074:
	movb	%dl,-180(%ebp)
Lj3070:
Lj3044:
	cmpb	$0,-197(%ebp)
	jne	Lj3043
	jmp	Lj3045
Lj3045:
	movb	-180(%ebp),%al
	cmpb	-177(%ebp),%al
	jl	Lj3075
	jmp	Lj3076
Lj3075:
	movsbl	-180(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj3079
	call	LFPC_RANGEERROR$stub
Lj3079:
	movb	-180(%ebp),%al
	movb	%al,-177(%ebp)
	movsbl	-177(%ebp),%edx
	movsbl	-180(%ebp),%eax
	subl	%eax,%edx
	jno	Lj3082
	call	LFPC_OVERFLOW$stub
Lj3082:
	movzbl	-179(%ebp),%eax
	addl	%eax,%edx
	jno	Lj3083
	call	LFPC_OVERFLOW$stub
Lj3083:
	movl	%edx,%eax
	cmpl	$132,%eax
	jbe	Lj3084
	call	LFPC_RANGEERROR$stub
Lj3084:
	movb	%dl,-179(%ebp)
Lj3076:
	movl	-8(%ebp),%edx
	leal	-179(%ebp),%eax
	call	L_FMTBCD_PACK_BCD$TBCD_HELPER$TBCD$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3085
	jmp	Lj3086
Lj3085:
	movl	L_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION$non_lazy_ptr-Lj2968(%ebx),%edx
	movl	L_$FMTBCD$_Ld8$non_lazy_ptr-Lj2968(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La15:
	movl	%ebp,%ecx
	leal	La15-Lj2968(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj3086:
Lj2967:
	movl	-244(%ebp),%ebx
	movl	-240(%ebp),%esi
	movl	-236(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDSUBTRACT$TBCD$INT64$TBCD
_FMTBCD_BCDSUBTRACT$TBCD$INT64$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$248,%esp
	movl	%ebx,-232(%ebp)
	movl	%esi,-228(%ebp)
	movl	%edi,-224(%ebp)
	call	Lj3098
Lj3098:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jne	Lj3100
	cmpl	$0,%eax
	jne	Lj3100
	jmp	Lj3099
Lj3099:
	movl	-8(%ebp),%edi
	movl	-4(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	jmp	Lj3097
Lj3100:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$-2147483648,%edx
	jne	Lj3104
	cmpl	$0,%eax
	jne	Lj3104
	jmp	Lj3103
Lj3103:
	movl	-8(%ebp),%ecx
	movl	L_U_FMTBCD_MYMININTBCD$non_lazy_ptr-Lj3098(%ebx),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
	jmp	Lj3097
Lj3104:
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	%al
	testb	%al,%al
	jne	Lj3111
	jmp	Lj3112
Lj3111:
	movl	-4(%ebp),%esi
	leal	-42(%ebp),%edi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movzbl	-42(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3117
	jmp	Lj3118
Lj3117:
	movb	-41(%ebp),%al
	xorb	$128,%al
	movb	%al,-41(%ebp)
Lj3118:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj3121
	jg	Lj3122
	cmpl	$0,%eax
	jb	Lj3121
	jmp	Lj3122
Lj3121:
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	notl	%edx
	negl	%ecx
	sbbl	$-1,%edx
	movl	%edx,%eax
	xorl	$-2147483648,%eax
	orl	%ecx,%eax
	testl	%eax,%eax
	jne	Lj3125
	call	LFPC_OVERFLOW$stub
Lj3125:
	movl	%edx,4(%esp)
	movl	%ecx,(%esp)
	movl	-8(%ebp),%edx
	leal	-42(%ebp),%eax
	call	L_FMTBCD_BCDSUBTRACT$TBCD$INT64$TBCD$stub
	jmp	Lj3130
Lj3122:
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	leal	-42(%ebp),%eax
	call	L_FMTBCD_BCDADD$TBCD$INT64$TBCD$stub
Lj3130:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj3137
	jmp	Lj3138
Lj3137:
	movl	-8(%ebp),%eax
	movb	1(%eax),%dl
	xorb	$128,%dl
	movl	-8(%ebp),%eax
	movb	%dl,1(%eax)
Lj3138:
	jmp	Lj3097
Lj3112:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj3141
	jg	Lj3142
	cmpl	$0,%eax
	jb	Lj3141
	jmp	Lj3142
Lj3141:
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	notl	%edx
	negl	%ecx
	sbbl	$-1,%edx
	movl	%edx,%eax
	xorl	$-2147483648,%eax
	orl	%ecx,%eax
	testl	%eax,%eax
	jne	Lj3145
	call	LFPC_OVERFLOW$stub
Lj3145:
	movl	%edx,4(%esp)
	movl	%ecx,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDADD$TBCD$INT64$TBCD$stub
	jmp	Lj3097
Lj3142:
	movb	$0,-186(%ebp)
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	andb	$63,%al
	movzbl	%al,%eax
	movl	-4(%ebp),%edx
	movzbl	(%edx),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	jno	Lj3162
	call	LFPC_OVERFLOW$stub
Lj3162:
	cmpl	$2,%eax
	jl	Lj3153
	subl	$2,%eax
	je	Lj3154
	subl	$1,%eax
	je	Lj3155
	subl	$1,%eax
	je	Lj3156
	subl	$1,%eax
	je	Lj3157
	subl	$1,%eax
	je	Lj3158
	subl	$1,%eax
	je	Lj3159
	subl	$1,%eax
	je	Lj3160
	subl	$1,%eax
	je	Lj3161
	jmp	Lj3153
Lj3154:
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3163
	jg	Lj3164
	cmpl	$10,%edx
	jb	Lj3163
	jmp	Lj3164
Lj3163:
	movb	$1,-186(%ebp)
	jmp	Lj3165
Lj3164:
	movb	$0,-186(%ebp)
Lj3165:
	jmp	Lj3152
Lj3155:
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3166
	jg	Lj3167
	cmpl	$100,%edx
	jb	Lj3166
	jmp	Lj3167
Lj3166:
	movb	$1,-186(%ebp)
	jmp	Lj3168
Lj3167:
	movb	$0,-186(%ebp)
Lj3168:
	jmp	Lj3152
Lj3156:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj3169
	jg	Lj3170
	cmpl	$1000,%eax
	jb	Lj3169
	jmp	Lj3170
Lj3169:
	movb	$1,-186(%ebp)
	jmp	Lj3171
Lj3170:
	movb	$0,-186(%ebp)
Lj3171:
	jmp	Lj3152
Lj3157:
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3172
	jg	Lj3173
	cmpl	$10000,%edx
	jb	Lj3172
	jmp	Lj3173
Lj3172:
	movb	$1,-186(%ebp)
	jmp	Lj3174
Lj3173:
	movb	$0,-186(%ebp)
Lj3174:
	jmp	Lj3152
Lj3158:
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3175
	jg	Lj3176
	cmpl	$100000,%edx
	jb	Lj3175
	jmp	Lj3176
Lj3175:
	movb	$1,-186(%ebp)
	jmp	Lj3177
Lj3176:
	movb	$0,-186(%ebp)
Lj3177:
	jmp	Lj3152
Lj3159:
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3178
	jg	Lj3179
	cmpl	$1000000,%edx
	jb	Lj3178
	jmp	Lj3179
Lj3178:
	movb	$1,-186(%ebp)
	jmp	Lj3180
Lj3179:
	movb	$0,-186(%ebp)
Lj3180:
	jmp	Lj3152
Lj3160:
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3181
	jg	Lj3182
	cmpl	$10000000,%edx
	jb	Lj3181
	jmp	Lj3182
Lj3181:
	movb	$1,-186(%ebp)
	jmp	Lj3183
Lj3182:
	movb	$0,-186(%ebp)
Lj3183:
	jmp	Lj3152
Lj3161:
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3184
	jg	Lj3185
	cmpl	$100000000,%edx
	jb	Lj3184
	jmp	Lj3185
Lj3184:
	movb	$1,-186(%ebp)
	jmp	Lj3186
Lj3185:
	movb	$0,-186(%ebp)
Lj3186:
	jmp	Lj3152
Lj3153:
Lj3152:
	cmpb	$0,-186(%ebp)
	jne	Lj3187
	jmp	Lj3188
Lj3187:
	leal	-179(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub
	movb	$0,-180(%ebp)
	movl	12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3197
	call	LFPC_RANGEERROR$stub
Lj3197:
	movl	8(%ebp),%eax
	cmpl	$99999999,%eax
	jbe	Lj3198
	call	LFPC_RANGEERROR$stub
Lj3198:
	movl	8(%ebp),%eax
	movl	%eax,-184(%ebp)
	jmp	Lj3200
	.align 2
Lj3199:
	movl	-184(%ebp),%eax
	cltd
	movl	$10,%ecx
	idivl	%ecx
	movsbl	-180(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj3204
	call	LFPC_RANGEERROR$stub
Lj3204:
	movsbl	-180(%ebp),%eax
	movzbl	-109(%ebp,%eax,1),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	jno	Lj3205
	call	LFPC_OVERFLOW$stub
Lj3205:
	movl	%edx,%eax
	subl	$-9,%eax
	cmpl	$18,%eax
	jbe	Lj3206
	call	LFPC_RANGEERROR$stub
Lj3206:
	movb	%dl,-185(%ebp)
	movl	-184(%ebp),%edx
	movl	$-858993459,%eax
	mull	%edx
	shrl	$3,%edx
	movl	%edx,%eax
	cmpl	$99999999,%eax
	jbe	Lj3209
	call	LFPC_RANGEERROR$stub
Lj3209:
	movl	%edx,-184(%ebp)
	movb	-185(%ebp),%al
	cmpb	$0,%al
	jl	Lj3210
	jmp	Lj3211
Lj3210:
	movsbl	-185(%ebp),%edx
	addl	$10,%edx
	jno	Lj3214
	call	LFPC_OVERFLOW$stub
Lj3214:
	movl	%edx,%eax
	subl	$-9,%eax
	cmpl	$18,%eax
	jbe	Lj3215
	call	LFPC_RANGEERROR$stub
Lj3215:
	movb	%dl,-185(%ebp)
	movl	-184(%ebp),%edx
	addl	$1,%edx
	jno	Lj3218
	call	LFPC_OVERFLOW$stub
Lj3218:
	movl	%edx,%eax
	cmpl	$99999999,%eax
	jbe	Lj3219
	call	LFPC_RANGEERROR$stub
Lj3219:
	movl	%edx,-184(%ebp)
Lj3211:
	movsbl	-180(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj3222
	call	LFPC_RANGEERROR$stub
Lj3222:
	movsbl	-180(%ebp),%edx
	movsbl	-185(%ebp),%eax
	cmpl	$9,%eax
	jbe	Lj3223
	call	LFPC_RANGEERROR$stub
Lj3223:
	movb	-185(%ebp),%al
	movb	%al,-109(%ebp,%edx,1)
	movsbl	-180(%ebp),%edx
	subl	$1,%edx
	jno	Lj3226
	call	LFPC_OVERFLOW$stub
Lj3226:
	movl	%edx,%eax
	subl	$-67,%eax
	cmpl	$67,%eax
	jbe	Lj3227
	call	LFPC_RANGEERROR$stub
Lj3227:
	movb	%dl,-180(%ebp)
Lj3200:
	movb	-180(%ebp),%al
	cmpb	-177(%ebp),%al
	jge	Lj3199
	jmp	Lj3201
Lj3201:
	movl	-8(%ebp),%edx
	leal	-179(%ebp),%eax
	call	L_FMTBCD_PACK_BCD$TBCD_HELPER$TBCD$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3228
	jmp	Lj3229
Lj3228:
	movl	L_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION$non_lazy_ptr-Lj3098(%ebx),%edx
	movl	L_$FMTBCD$_Ld10$non_lazy_ptr-Lj3098(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La16:
	movl	%ebp,%ecx
	leal	La16-Lj3098(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj3229:
	jmp	Lj3240
Lj3188:
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-220(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	leal	-220(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
Lj3240:
Lj3097:
	movl	-232(%ebp),%ebx
	movl	-228(%ebp),%esi
	movl	-224(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDADD$INT64$TBCD$TBCD
_FMTBCD_BCDADD$INT64$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDADD$TBCD$INT64$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDADD$TBCD$EXTENDED$TBCD
_FMTBCD_BCDADD$TBCD$EXTENDED$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	leal	-42(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDADD$EXTENDED$TBCD$TBCD
_FMTBCD_BCDADD$EXTENDED$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	leal	-42(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDADD$TBCD$CURRENCY$TBCD
_FMTBCD_BCDADD$TBCD$CURRENCY$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-42(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	leal	-42(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDADD$CURRENCY$TBCD$TBCD
_FMTBCD_BCDADD$CURRENCY$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-42(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	leal	-42(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDADD$TBCD$SHORTSTRING$TBCD
_FMTBCD_BCDADD$TBCD$SHORTSTRING$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDADD$SHORTSTRING$TBCD$TBCD
_FMTBCD_BCDADD$SHORTSTRING$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDADD$SHORTSTRING$SHORTSTRING$TBCD
_FMTBCD_BCDADD$SHORTSTRING$SHORTSTRING$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%ebx
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-80(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	%ebx,%edx
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	movl	-84(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDSUBTRACT$INT64$TBCD$TBCD
_FMTBCD_BCDSUBTRACT$INT64$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDSUBTRACT$TBCD$INT64$TBCD$stub
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj3363
	jmp	Lj3364
Lj3363:
	movl	-8(%ebp),%eax
	movb	1(%eax),%dl
	xorb	$128,%dl
	movl	-8(%ebp),%eax
	movb	%dl,1(%eax)
Lj3364:
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDSUBTRACT$TBCD$EXTENDED$TBCD
_FMTBCD_BCDSUBTRACT$TBCD$EXTENDED$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	leal	-42(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDSUBTRACT$EXTENDED$TBCD$TBCD
_FMTBCD_BCDSUBTRACT$EXTENDED$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	leal	-42(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDSUBTRACT$TBCD$CURRENCY$TBCD
_FMTBCD_BCDSUBTRACT$TBCD$CURRENCY$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-42(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	leal	-42(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDSUBTRACT$CURRENCY$TBCD$TBCD
_FMTBCD_BCDSUBTRACT$CURRENCY$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-42(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	leal	-42(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDSUBTRACT$TBCD$SHORTSTRING$TBCD
_FMTBCD_BCDSUBTRACT$TBCD$SHORTSTRING$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDSUBTRACT$SHORTSTRING$TBCD$TBCD
_FMTBCD_BCDSUBTRACT$SHORTSTRING$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDSUBTRACT$SHORTSTRING$SHORTSTRING$TBCD
_FMTBCD_BCDSUBTRACT$SHORTSTRING$SHORTSTRING$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%ebx
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-80(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	%ebx,%edx
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
	movl	-84(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDMULTIPLY$TBCD$INT64$TBCD
_FMTBCD_BCDMULTIPLY$TBCD$INT64$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$888,%esp
	movl	%ebx,-876(%ebp)
	movl	%esi,-872(%ebp)
	movl	%edi,-868(%ebp)
	call	Lj3464
Lj3464:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	jne	Lj3466
	cmpl	$0,%edx
	jne	Lj3466
	jmp	Lj3465
Lj3465:
	leal	-862(%ebp),%edi
	movl	L_U_FMTBCD_NULLBCD_$non_lazy_ptr-Lj3464(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	-8(%ebp),%edi
	leal	-862(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	jmp	Lj3463
Lj3466:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jne	Lj3472
	cmpl	$1,%eax
	jne	Lj3472
	jmp	Lj3471
Lj3471:
	movl	-8(%ebp),%edi
	movl	-4(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	jmp	Lj3463
Lj3472:
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj3476
	cmpl	$-1,%edx
	jne	Lj3476
	jmp	Lj3475
Lj3475:
	movl	-8(%ebp),%edi
	movl	-4(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj3479
	jmp	Lj3480
Lj3479:
	movl	-8(%ebp),%eax
	movb	1(%eax),%dl
	xorb	$128,%dl
	movl	-8(%ebp),%eax
	movb	%dl,1(%eax)
Lj3480:
	jmp	Lj3463
Lj3476:
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$-2147483648,%eax
	jne	Lj3484
	cmpl	$0,%edx
	jne	Lj3484
	jmp	Lj3483
Lj3483:
	movl	-8(%ebp),%ecx
	movl	L_U_FMTBCD_MYMININTBCD$non_lazy_ptr-Lj3464(%ebx),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD$stub
	jmp	Lj3463
Lj3484:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj3493
	jg	Lj3494
	cmpl	$0,%eax
	jb	Lj3493
	jmp	Lj3494
Lj3493:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	jmp	Lj3497
Lj3494:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
Lj3497:
	cmpl	$0,%edx
	jg	Lj3491
	jl	Lj3492
	cmpl	$0,%eax
	ja	Lj3491
	jmp	Lj3492
Lj3491:
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-862(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	leal	-862(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD$stub
	jmp	Lj3463
Lj3492:
	leal	-145(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub
	movzbl	-145(%ebp),%eax
	testl	%eax,%eax
	je	Lj3514
	jmp	Lj3515
Lj3514:
	leal	-862(%ebp),%edi
	movl	L_U_FMTBCD_NULLBCD_$non_lazy_ptr-Lj3464(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	-8(%ebp),%edi
	leal	-862(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	jmp	Lj3463
Lj3515:
	leal	-282(%ebp),%edi
	movl	L_U_FMTBCD_NULL_$non_lazy_ptr-Lj3464(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$34,%ecx
	rep
	movsl
	movsb
	leal	-820(%ebp),%edi
	movl	L_U_FMTBCD_NULL_$non_lazy_ptr-Lj3464(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$134,%ecx
	rep
	movsl
	movsb
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj3526
	jg	Lj3527
	cmpl	$0,%eax
	jb	Lj3526
	jmp	Lj3527
Lj3526:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	jmp	Lj3530
Lj3527:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
Lj3530:
	testl	%edx,%edx
	je	Lj3533
	call	LFPC_RANGEERROR$stub
Lj3533:
	movl	%eax,%edx
	cmpl	$251,%edx
	jbe	Lj3534
	call	LFPC_RANGEERROR$stub
Lj3534:
	movb	%al,-821(%ebp)
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3537
	jg	Lj3538
	cmpl	$0,%edx
	jb	Lj3537
	jmp	Lj3538
Lj3537:
	movb	$1,%al
	jmp	Lj3539
Lj3538:
	movb	$0,%al
Lj3539:
	movb	-9(%ebp),%dl
	xorb	%dl,%al
	movb	%al,-284(%ebp)
	movsbw	-143(%ebp),%ax
	movw	%ax,-816(%ebp)
	movsbw	-142(%ebp),%ax
	movw	%ax,-814(%ebp)
	movb	-142(%ebp),%cl
	movb	-143(%ebp),%al
	movb	%al,-822(%ebp)
	cmpb	-822(%ebp),%cl
	jl	Lj3545
	subb	$1,-822(%ebp)
	.align 2
Lj3546:
	addb	$1,-822(%ebp)
	movsbl	-822(%ebp),%eax
	movzbl	-75(%ebp,%eax,1),%edx
	movzbl	-821(%ebp),%eax
	mull	%edx
	jae	Lj3549
	call	LFPC_OVERFLOW$stub
Lj3549:
	movl	%eax,%edx
	cmpl	$2511,%edx
	jbe	Lj3550
	call	LFPC_RANGEERROR$stub
Lj3550:
	movsbl	-822(%ebp),%edx
	movw	%ax,-546(%ebp,%edx,2)
	cmpb	-822(%ebp),%cl
	jg	Lj3546
Lj3545:
	movw	$0,-828(%ebp)
	movswl	-816(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj3556
	call	LFPC_RANGEERROR$stub
Lj3556:
	movb	-816(%ebp),%cl
	movswl	-814(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj3557
	call	LFPC_RANGEERROR$stub
Lj3557:
	movb	-814(%ebp),%al
	movb	%al,-823(%ebp)
	cmpb	-823(%ebp),%cl
	jg	Lj3554
	addb	$1,-823(%ebp)
	.align 2
Lj3555:
	subb	$1,-823(%ebp)
	movsbl	-823(%ebp),%eax
	movzwl	-546(%ebp,%eax,2),%edx
	movzwl	-828(%ebp),%eax
	addl	%eax,%edx
	jnb	Lj3560
	call	LFPC_OVERFLOW$stub
Lj3560:
	movl	%edx,%eax
	cmpl	$2762,%eax
	jbe	Lj3561
	call	LFPC_RANGEERROR$stub
Lj3561:
	movw	%dx,-826(%ebp)
	movzwl	-826(%ebp),%esi
	movl	$1717986919,%eax
	imull	%esi
	movl	%esi,%eax
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,%eax
	cmpl	$276,%eax
	jbe	Lj3564
	call	LFPC_RANGEERROR$stub
Lj3564:
	movw	%dx,-828(%ebp)
	movzwl	-826(%ebp),%eax
	cltd
	movl	$10,%esi
	idivl	%esi
	movl	%edx,%eax
	cmpl	$2762,%eax
	jbe	Lj3567
	call	LFPC_RANGEERROR$stub
Lj3567:
	movw	%dx,-826(%ebp)
	movsbl	-823(%ebp),%edx
	movzwl	-826(%ebp),%eax
	cmpl	$9,%eax
	jbe	Lj3570
	call	LFPC_RANGEERROR$stub
Lj3570:
	movb	-826(%ebp),%al
	movb	%al,-212(%ebp,%edx,1)
	cmpb	-823(%ebp),%cl
	jl	Lj3555
Lj3554:
	jmp	Lj3572
	.align 2
Lj3571:
	movswl	-816(%ebp),%edx
	subl	$1,%edx
	jno	Lj3576
	call	LFPC_OVERFLOW$stub
Lj3576:
	movl	%edx,%eax
	subl	$-133,%eax
	cmpl	$263,%eax
	jbe	Lj3577
	call	LFPC_RANGEERROR$stub
Lj3577:
	movw	%dx,-816(%ebp)
	movw	-816(%ebp),%ax
	cmpw	$-66,%ax
	jl	Lj3578
	jmp	Lj3579
Lj3578:
	movl	L_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION$non_lazy_ptr-Lj3464(%ebx),%edx
	movl	L_$FMTBCD$_Ld14$non_lazy_ptr-Lj3464(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La17:
	movl	%ebp,%ecx
	leal	La17-Lj3464(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj3579:
	movzwl	-828(%ebp),%eax
	cltd
	movl	$10,%ecx
	idivl	%ecx
	movl	%edx,%eax
	cmpl	$9,%eax
	jbe	Lj3588
	call	LFPC_RANGEERROR$stub
Lj3588:
	movswl	-816(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj3589
	call	LFPC_RANGEERROR$stub
Lj3589:
	movswl	-816(%ebp),%eax
	movb	%dl,-212(%ebp,%eax,1)
	movzwl	-828(%ebp),%ecx
	movl	$1717986919,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,%eax
	cmpl	$276,%eax
	jbe	Lj3592
	call	LFPC_RANGEERROR$stub
Lj3592:
	movw	%dx,-828(%ebp)
Lj3572:
	movzwl	-828(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3571
	jmp	Lj3573
Lj3573:
	movswl	-814(%ebp),%eax
	cmpl	$132,%eax
	jbe	Lj3595
	call	LFPC_RANGEERROR$stub
Lj3595:
	movb	-814(%ebp),%al
	movb	%al,-281(%ebp)
	movswl	-816(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj3598
	call	LFPC_RANGEERROR$stub
Lj3598:
	movb	-816(%ebp),%al
	movb	%al,-280(%ebp)
	movw	-814(%ebp),%ax
	cmpw	$65,%ax
	jg	Lj3599
	jmp	Lj3600
Lj3599:
	movb	$65,-279(%ebp)
	jmp	Lj3603
Lj3600:
	movswl	-814(%ebp),%eax
	subl	$-66,%eax
	cmpl	$131,%eax
	jbe	Lj3606
	call	LFPC_RANGEERROR$stub
Lj3606:
	movb	-814(%ebp),%al
	movb	%al,-279(%ebp)
Lj3603:
	movl	-8(%ebp),%edx
	leal	-282(%ebp),%eax
	call	L_FMTBCD_PACK_BCD$TBCD_HELPER$TBCD$$BOOLEAN$stub
	testb	%al,%al
	je	Lj3607
	jmp	Lj3608
Lj3607:
	movl	L_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION$non_lazy_ptr-Lj3464(%ebx),%edx
	movl	L_$FMTBCD$_Ld14$non_lazy_ptr-Lj3464(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La18:
	movl	%ebp,%ecx
	leal	La18-Lj3464(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj3608:
Lj3463:
	movl	-876(%ebp),%ebx
	movl	-872(%ebp),%esi
	movl	-868(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDMULTIPLY$INT64$TBCD$TBCD
_FMTBCD_BCDMULTIPLY$INT64$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDMULTIPLY$TBCD$INT64$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDMULTIPLY$EXTENDED$TBCD$TBCD
_FMTBCD_BCDMULTIPLY$EXTENDED$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	leal	-42(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDMULTIPLY$TBCD$CURRENCY$TBCD
_FMTBCD_BCDMULTIPLY$TBCD$CURRENCY$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-42(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	leal	-42(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDMULTIPLY$CURRENCY$TBCD$TBCD
_FMTBCD_BCDMULTIPLY$CURRENCY$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-42(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	leal	-42(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDMULTIPLY$SHORTSTRING$TBCD$TBCD
_FMTBCD_BCDMULTIPLY$SHORTSTRING$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDDIVIDE$TBCD$INT64$TBCD
_FMTBCD_BCDDIVIDE$TBCD$INT64$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	leal	-42(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDDIVIDE$INT64$TBCD$TBCD
_FMTBCD_BCDDIVIDE$INT64$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	leal	-42(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDDIVIDE$EXTENDED$TBCD$TBCD
_FMTBCD_BCDDIVIDE$EXTENDED$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	leal	-42(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDDIVIDE$TBCD$CURRENCY$TBCD
_FMTBCD_BCDDIVIDE$TBCD$CURRENCY$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-42(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	leal	-42(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDDIVIDE$CURRENCY$TBCD$TBCD
_FMTBCD_BCDDIVIDE$CURRENCY$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-42(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	leal	-42(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_BCDDIVIDE$SHORTSTRING$TBCD$TBCD
_FMTBCD_BCDDIVIDE$SHORTSTRING$TBCD$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_equal$TBCD$TBCD$$BOOLEAN
_FMTBCD_equal$TBCD$TBCD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_lower$TBCD$TBCD$$BOOLEAN
_FMTBCD_lower$TBCD$TBCD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT$stub
	cmpl	$0,%eax
	setlb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_greater$TBCD$TBCD$$BOOLEAN
_FMTBCD_greater$TBCD$TBCD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT$stub
	cmpl	$0,%eax
	setgb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_lower_or_equal$TBCD$TBCD$$BOOLEAN
_FMTBCD_lower_or_equal$TBCD$TBCD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT$stub
	cmpl	$0,%eax
	setleb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_greater_or_equal$TBCD$TBCD$$BOOLEAN
_FMTBCD_greater_or_equal$TBCD$TBCD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT$stub
	cmpl	$0,%eax
	setgeb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_minus$TBCD$$TBCD
_FMTBCD_minus$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edi
	movl	-4(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj3807
	jmp	Lj3808
Lj3807:
	movl	-8(%ebp),%eax
	movb	1(%eax),%dl
	xorb	$128,%dl
	movl	-8(%ebp),%eax
	movb	%dl,1(%eax)
Lj3808:
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_plus$TBCD$TBCD$$TBCD
_FMTBCD_plus$TBCD$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_plus$TBCD$INT64$$TBCD
_FMTBCD_plus$TBCD$INT64$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDADD$TBCD$INT64$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_plus$INT64$TBCD$$TBCD
_FMTBCD_plus$INT64$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDADD$TBCD$INT64$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_plus$TBCD$EXTENDED$$TBCD
_FMTBCD_plus$TBCD$EXTENDED$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	leal	-42(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_plus$EXTENDED$TBCD$$TBCD
_FMTBCD_plus$EXTENDED$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	leal	-42(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_plus$TBCD$CURRENCY$$TBCD
_FMTBCD_plus$TBCD$CURRENCY$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-42(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	leal	-42(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_plus$CURRENCY$TBCD$$TBCD
_FMTBCD_plus$CURRENCY$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-42(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	leal	-42(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_plus$TBCD$SHORTSTRING$$TBCD
_FMTBCD_plus$TBCD$SHORTSTRING$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_plus$SHORTSTRING$TBCD$$TBCD
_FMTBCD_plus$SHORTSTRING$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_minus$TBCD$TBCD$$TBCD
_FMTBCD_minus$TBCD$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_minus$TBCD$INT64$$TBCD
_FMTBCD_minus$TBCD$INT64$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDSUBTRACT$TBCD$INT64$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_minus$INT64$TBCD$$TBCD
_FMTBCD_minus$INT64$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDSUBTRACT$TBCD$INT64$TBCD$stub
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj3939
	jmp	Lj3940
Lj3939:
	movl	-8(%ebp),%eax
	movb	1(%eax),%dl
	xorb	$128,%dl
	movl	-8(%ebp),%eax
	movb	%dl,1(%eax)
Lj3940:
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_minus$TBCD$EXTENDED$$TBCD
_FMTBCD_minus$TBCD$EXTENDED$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	leal	-42(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_minus$EXTENDED$TBCD$$TBCD
_FMTBCD_minus$EXTENDED$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	leal	-42(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_minus$TBCD$CURRENCY$$TBCD
_FMTBCD_minus$TBCD$CURRENCY$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-42(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	leal	-42(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_minus$CURRENCY$TBCD$$TBCD
_FMTBCD_minus$CURRENCY$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-42(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	leal	-42(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_minus$TBCD$SHORTSTRING$$TBCD
_FMTBCD_minus$TBCD$SHORTSTRING$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_minus$SHORTSTRING$TBCD$$TBCD
_FMTBCD_minus$SHORTSTRING$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_star$TBCD$TBCD$$TBCD
_FMTBCD_star$TBCD$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_star$TBCD$INT64$$TBCD
_FMTBCD_star$TBCD$INT64$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDMULTIPLY$TBCD$INT64$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_star$INT64$TBCD$$TBCD
_FMTBCD_star$INT64$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDMULTIPLY$TBCD$INT64$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_star$TBCD$EXTENDED$$TBCD
_FMTBCD_star$TBCD$EXTENDED$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	leal	-42(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_star$EXTENDED$TBCD$$TBCD
_FMTBCD_star$EXTENDED$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	leal	-42(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_star$TBCD$CURRENCY$$TBCD
_FMTBCD_star$TBCD$CURRENCY$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-42(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	leal	-42(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_star$CURRENCY$TBCD$$TBCD
_FMTBCD_star$CURRENCY$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-42(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	leal	-42(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_star$TBCD$SHORTSTRING$$TBCD
_FMTBCD_star$TBCD$SHORTSTRING$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_star$SHORTSTRING$TBCD$$TBCD
_FMTBCD_star$SHORTSTRING$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_slash$TBCD$TBCD$$TBCD
_FMTBCD_slash$TBCD$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_slash$TBCD$INT64$$TBCD
_FMTBCD_slash$TBCD$INT64$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	leal	-42(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_slash$INT64$TBCD$$TBCD
_FMTBCD_slash$INT64$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	leal	-42(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_slash$TBCD$EXTENDED$$TBCD
_FMTBCD_slash$TBCD$EXTENDED$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	leal	-42(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_slash$EXTENDED$TBCD$$TBCD
_FMTBCD_slash$EXTENDED$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	leal	-42(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	leal	-42(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_slash$TBCD$CURRENCY$$TBCD
_FMTBCD_slash$TBCD$CURRENCY$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-42(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	leal	-42(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_slash$CURRENCY$TBCD$$TBCD
_FMTBCD_slash$CURRENCY$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-42(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	leal	-42(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_slash$TBCD$SHORTSTRING$$TBCD
_FMTBCD_slash$TBCD$SHORTSTRING$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_slash$SHORTSTRING$TBCD$$TBCD
_FMTBCD_slash$SHORTSTRING$TBCD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-46(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leal	-46(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$BYTE$$TBCD
_FMTBCD_assign$BYTE$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movzbl	-4(%ebp),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$TBCD$$BYTE
_FMTBCD_assign$TBCD$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_FMTBCD_BCDTOINTEGER$TBCD$BOOLEAN$$INT64$stub
	testl	%edx,%edx
	je	Lj4253
	call	LFPC_RANGEERROR$stub
Lj4253:
	movl	%eax,%edx
	cmpl	$255,%edx
	jbe	Lj4254
	call	LFPC_RANGEERROR$stub
Lj4254:
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$WORD$$TBCD
_FMTBCD_assign$WORD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movzwl	-4(%ebp),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$TBCD$$WORD
_FMTBCD_assign$TBCD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_FMTBCD_BCDTOINTEGER$TBCD$BOOLEAN$$INT64$stub
	testl	%edx,%edx
	je	Lj4269
	call	LFPC_RANGEERROR$stub
Lj4269:
	movl	%eax,%edx
	cmpl	$65535,%edx
	jbe	Lj4270
	call	LFPC_RANGEERROR$stub
Lj4270:
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$LONGWORD$$TBCD
_FMTBCD_assign$LONGWORD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$TBCD$$LONGWORD
_FMTBCD_assign$TBCD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_FMTBCD_BCDTOINTEGER$TBCD$BOOLEAN$$INT64$stub
	testl	%edx,%edx
	je	Lj4285
	call	LFPC_RANGEERROR$stub
Lj4285:
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$QWORD$$TBCD
_FMTBCD_assign$QWORD$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$TBCD$$QWORD
_FMTBCD_assign$TBCD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_FMTBCD_BCDTOINTEGER$TBCD$BOOLEAN$$INT64$stub
	testl	%edx,%edx
	jge	Lj4300
	call	LFPC_RANGEERROR$stub
Lj4300:
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$SHORTINT$$TBCD
_FMTBCD_assign$SHORTINT$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movsbl	-4(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$TBCD$$SHORTINT
_FMTBCD_assign$TBCD$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_FMTBCD_BCDTOINTEGER$TBCD$BOOLEAN$$INT64$stub
	testl	%edx,%edx
	je	Lj4315
	cmpl	$-1,%edx
	je	Lj4316
	call	LFPC_RANGEERROR$stub
Lj4315:
	movl	%eax,%edx
	cmpl	$127,%edx
	jbe	Lj4317
	call	LFPC_RANGEERROR$stub
Lj4317:
	jmp	Lj4318
Lj4316:
	testl	%eax,%eax
	jl	Lj4319
	call	LFPC_RANGEERROR$stub
Lj4319:
	movl	%eax,%edx
	subl	$-128,%edx
	cmpl	$255,%edx
	jbe	Lj4320
	call	LFPC_RANGEERROR$stub
Lj4320:
Lj4318:
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$SMALLINT$$TBCD
_FMTBCD_assign$SMALLINT$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movswl	-4(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$TBCD$$SMALLINT
_FMTBCD_assign$TBCD$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_FMTBCD_BCDTOINTEGER$TBCD$BOOLEAN$$INT64$stub
	testl	%edx,%edx
	je	Lj4335
	cmpl	$-1,%edx
	je	Lj4336
	call	LFPC_RANGEERROR$stub
Lj4335:
	movl	%eax,%edx
	cmpl	$32767,%edx
	jbe	Lj4337
	call	LFPC_RANGEERROR$stub
Lj4337:
	jmp	Lj4338
Lj4336:
	testl	%eax,%eax
	jl	Lj4339
	call	LFPC_RANGEERROR$stub
Lj4339:
	movl	%eax,%edx
	subl	$-32768,%edx
	cmpl	$65535,%edx
	jbe	Lj4340
	call	LFPC_RANGEERROR$stub
Lj4340:
Lj4338:
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$LONGINT$$TBCD
_FMTBCD_assign$LONGINT$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$TBCD$$LONGINT
_FMTBCD_assign$TBCD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_FMTBCD_BCDTOINTEGER$TBCD$BOOLEAN$$INT64$stub
	testl	%edx,%edx
	je	Lj4355
	cmpl	$-1,%edx
	je	Lj4356
	call	LFPC_RANGEERROR$stub
Lj4355:
	movl	%eax,%edx
	cmpl	$2147483647,%edx
	jbe	Lj4357
	call	LFPC_RANGEERROR$stub
Lj4357:
	jmp	Lj4358
Lj4356:
	testl	%eax,%eax
	jl	Lj4359
	call	LFPC_RANGEERROR$stub
Lj4359:
Lj4358:
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$INT64$$TBCD
_FMTBCD_assign$INT64$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$TBCD$$INT64
_FMTBCD_assign$TBCD$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	L_FMTBCD_BCDTOINTEGER$TBCD$BOOLEAN$$INT64$stub
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$SINGLE$$TBCD
_FMTBCD_assign$SINGLE$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	flds	8(%ebp)
	fstpt	-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$TBCD$$SINGLE
_FMTBCD_assign$TBCD$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDTODOUBLE$TBCD$$EXTENDED$stub
	fstps	-8(%ebp)
	flds	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$DOUBLE$$TBCD
_FMTBCD_assign$DOUBLE$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	fldl	8(%ebp)
	fstpt	-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$TBCD$$DOUBLE
_FMTBCD_assign$TBCD$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDTODOUBLE$TBCD$$EXTENDED$stub
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$EXTENDED$$TBCD
_FMTBCD_assign$EXTENDED$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$TBCD$$EXTENDED
_FMTBCD_assign$TBCD$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDTODOUBLE$TBCD$$EXTENDED$stub
	fstpt	-24(%ebp)
	fldt	-24(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$CURRENCY$$TBCD
_FMTBCD_assign$CURRENCY$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$TBCD$$CURRENCY
_FMTBCD_assign$TBCD$$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDTOCURR$TBCD$CURRENCY$$BOOLEAN$stub
	fildq	-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$SHORTSTRING$$TBCD
_FMTBCD_assign$SHORTSTRING$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$TBCD$$SHORTSTRING
_FMTBCD_assign$TBCD$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDTOSTR$TBCD$$SHORTSTRING$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$ANSISTRING$$TBCD
_FMTBCD_assign$ANSISTRING$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-264(%ebp),%eax
	movl	-8(%ebp),%edx
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_assign$TBCD$$ANSISTRING
_FMTBCD_assign$TBCD$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_BCDTOSTR$TBCD$$SHORTSTRING$stub
	leal	-264(%ebp),%eax
	movl	-8(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_VARIANTTOBCD$TVARDATA$$TBCD
_FMTBCD_VARIANTTOBCD$TVARDATA$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$632,%esp
	movl	%ebx,-620(%ebp)
	movl	%esi,-616(%ebp)
	movl	%edi,-612(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-332(%ebp)
	movl	$0,-328(%ebp)
	movl	$0,-324(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4466
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	andl	$-4096,%eax
	testl	%eax,%eax
	jl	Lj4470
	testl	%eax,%eax
	je	Lj4471
	subl	$16384,%eax
	je	Lj4472
	jmp	Lj4470
Lj4471:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	testw	%ax,%ax
	je	Lj4475
	subw	$2,%ax
	je	Lj4476
	subw	$1,%ax
	je	Lj4478
	subw	$1,%ax
	je	Lj4479
	subw	$1,%ax
	je	Lj4480
	subw	$1,%ax
	je	Lj4481
	subw	$1,%ax
	je	Lj4482
	subw	$1,%ax
	je	Lj4491
	subw	$3,%ax
	je	Lj4483
	subw	$1,%ax
	je	Lj4484
	subw	$4,%ax
	je	Lj4477
	subw	$1,%ax
	je	Lj4485
	subw	$1,%ax
	je	Lj4486
	subw	$1,%ax
	je	Lj4487
	subw	$1,%ax
	je	Lj4488
	subw	$1,%ax
	je	Lj4489
	subw	$235,%ax
	je	Lj4490
	subw	$2,%ax
	je	Lj4492
	jmp	Lj4474
Lj4475:
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4473
Lj4476:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4473
Lj4477:
	movl	-4(%ebp),%eax
	movsbl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4473
Lj4478:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4473
Lj4479:
	movl	-4(%ebp),%eax
	flds	8(%eax)
	fstpt	-64(%ebp)
	movl	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-60(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%eax
	jmp	Lj4473
Lj4480:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fstpt	-64(%ebp)
	movl	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-60(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%eax
	jmp	Lj4473
Lj4481:
	movl	-4(%ebp),%edx
	movl	8(%edx),%eax
	movl	%eax,(%esp)
	movl	12(%edx),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	movl	-8(%ebp),%eax
	jmp	Lj4473
Lj4482:
	movl	-4(%ebp),%eax
	fldl	8(%eax)
	fstpt	-64(%ebp)
	movl	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-60(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-56(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%eax
	jmp	Lj4473
Lj4483:
	movl	-4(%ebp),%eax
	movswl	8(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	-52(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4473
Lj4484:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_FMTBCD_VARIANTTOBCD$TVARDATA$$TBCD$stub
	jmp	Lj4473
Lj4485:
	movl	-4(%ebp),%eax
	movzbl	8(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4473
Lj4486:
	movl	-4(%ebp),%eax
	movzwl	8(%eax),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4473
Lj4487:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4473
Lj4488:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,4(%esp)
	movl	8(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4473
Lj4489:
	movl	-4(%ebp),%edx
	movl	12(%edx),%eax
	movl	%eax,4(%esp)
	movl	8(%edx),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4473
Lj4490:
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	leal	-320(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-320(%ebp),%eax
	movl	-8(%ebp),%edx
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4473
Lj4491:
	leal	-324(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-324(%ebp)
	leal	-328(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-328(%ebp)
	leal	-332(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-332(%ebp)
	leal	-332(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	Lfpc_pwidechar_to_unicodestr$stub
	movl	-332(%ebp),%eax
	leal	-328(%ebp),%edx
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-328(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-324(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-328(%ebp),%eax
	movl	%eax,-324(%ebp)
	movl	-324(%ebp),%ecx
	leal	-588(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-588(%ebp),%eax
	movl	-8(%ebp),%edx
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4473
Lj4492:
	leal	-328(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-328(%ebp)
	leal	-324(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-324(%ebp)
	leal	-324(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-324(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-328(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-324(%ebp),%eax
	movl	%eax,-328(%ebp)
	movl	-328(%ebp),%ecx
	leal	-588(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-588(%ebp),%eax
	movl	-8(%ebp),%edx
	call	L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4473
Lj4474:
	movl	-4(%ebp),%ebx
	call	L_FMTBCD_VARFMTBCD$$WORD$stub
	cmpw	(%ebx),%ax
	je	Lj4613
	jmp	Lj4614
Lj4613:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edi
	leal	12(%eax),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	jmp	Lj4617
Lj4614:
	call	L_FMTBCD_NOT_IMPLEMENTED$stub
Lj4617:
Lj4473:
	jmp	Lj4469
Lj4472:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj4618
	jmp	Lj4619
Lj4618:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	andw	$4095,%ax
	cmpw	$2,%ax
	jb	Lj4621
	subw	$2,%ax
	je	Lj4622
	subw	$1,%ax
	je	Lj4624
	subw	$1,%ax
	je	Lj4625
	subw	$1,%ax
	je	Lj4626
	subw	$1,%ax
	je	Lj4627
	subw	$1,%ax
	je	Lj4628
	subw	$4,%ax
	je	Lj4629
	subw	$1,%ax
	je	Lj4630
	subw	$4,%ax
	je	Lj4623
	subw	$1,%ax
	je	Lj4631
	subw	$1,%ax
	je	Lj4632
	subw	$1,%ax
	je	Lj4633
	subw	$1,%ax
	je	Lj4634
	subw	$1,%ax
	je	Lj4635
	jmp	Lj4621
Lj4622:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%ax
	movw	%ax,-588(%ebp)
	movswl	-588(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4620
Lj4623:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-333(%ebp)
	movsbl	-333(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4620
Lj4624:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-336(%ebp)
	movl	-336(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4620
Lj4625:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-336(%ebp)
	flds	-336(%ebp)
	fstpt	-352(%ebp)
	movl	-352(%ebp),%eax
	movl	%eax,(%esp)
	movl	-348(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-344(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%eax
	jmp	Lj4620
Lj4626:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,-340(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-336(%ebp)
	fldl	-340(%ebp)
	fstpt	-608(%ebp)
	movl	-608(%ebp),%eax
	movl	%eax,(%esp)
	movl	-604(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-600(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%eax
	jmp	Lj4620
Lj4627:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	(%edx),%eax
	movl	%eax,-344(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-340(%ebp)
	movl	-344(%ebp),%eax
	movl	%eax,(%esp)
	movl	-340(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	movl	$32,%edx
	call	L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub
	movl	-8(%ebp),%eax
	jmp	Lj4620
Lj4628:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	(%edx),%eax
	movl	%eax,-344(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-340(%ebp)
	fldl	-344(%ebp)
	fstpt	-360(%ebp)
	movl	-360(%ebp),%eax
	movl	%eax,(%esp)
	movl	-356(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-352(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%eax
	jmp	Lj4620
Lj4629:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%ax
	movw	%ax,-338(%ebp)
	movswl	-338(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4620
Lj4630:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_FMTBCD_VARIANTTOBCD$TVARDATA$$TBCD$stub
	jmp	Lj4620
Lj4631:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movb	(%eax),%al
	movb	%al,-337(%ebp)
	movzbl	-337(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4620
Lj4632:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	(%eax),%ax
	movw	%ax,-338(%ebp)
	movzwl	-338(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4620
Lj4633:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-340(%ebp)
	movl	-340(%ebp),%edx
	movl	$0,%eax
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4620
Lj4634:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,-344(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-340(%ebp)
	movl	-340(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-344(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4620
Lj4635:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%edx
	movl	%edx,-344(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-340(%ebp)
	movl	-340(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-344(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	call	L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub
	movl	-8(%ebp),%eax
	jmp	Lj4620
Lj4621:
	call	L_FMTBCD_NOT_IMPLEMENTED$stub
Lj4620:
	jmp	Lj4730
Lj4619:
	call	L_FMTBCD_NOT_IMPLEMENTED$stub
Lj4730:
	jmp	Lj4469
Lj4470:
	call	L_FMTBCD_NOT_IMPLEMENTED$stub
Lj4469:
Lj4466:
	call	LFPC_POPADDRSTACK$stub
	leal	-332(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-332(%ebp)
	leal	-328(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-328(%ebp)
	leal	-324(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-324(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4467
	call	LFPC_RERAISE$stub
Lj4467:
	movl	-620(%ebp),%ebx
	movl	-616(%ebp),%esi
	movl	-612(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_VARTOBCD$VARIANT$$TBCD
_FMTBCD_VARTOBCD$VARIANT$$TBCD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_VARIANTTOBCD$TVARDATA$$TBCD$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_TFMTBCDVARDATA_$__CREATE$$TFMTBCDVARDATA
_FMTBCD_TFMTBCDVARDATA_$__CREATE$$TFMTBCDVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-136(%ebp)
	movl	%esi,-132(%ebp)
	movl	%edi,-128(%ebp)
	call	Lj4738
Lj4738:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj4739
	jmp	Lj4740
Lj4739:
	movl	-4(%ebp),%edi
	movl	-4(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%edi,%eax
	call	*52(%esi)
	movl	%eax,-8(%ebp)
Lj4740:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4745
	jmp	Lj4746
Lj4745:
	jmp	Lj4737
Lj4746:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj4749
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj4753
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	leal	-122(%ebp),%edi
	movl	L_U_FMTBCD_NULLBCD_$non_lazy_ptr-Lj4738(%ebx),%eax
	movl	%eax,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	-8(%ebp),%eax
	leal	12(%eax),%edi
	leal	-122(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
Lj4753:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj4754
	call	LFPC_RERAISE$stub
Lj4754:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4766
	jmp	Lj4765
Lj4766:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4764
	jmp	Lj4765
Lj4764:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj4765:
Lj4749:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj4751
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj4770
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4771
	jmp	Lj4772
Lj4771:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj4772:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj4770:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj4769
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4769:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4751
Lj4751:
Lj4737:
	movl	-8(%ebp),%eax
	movl	-136(%ebp),%ebx
	movl	-132(%ebp),%esi
	movl	-128(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_TFMTBCDVARDATA_$__CREATE$TBCD$$TFMTBCDVARDATA
_FMTBCD_TFMTBCDVARDATA_$__CREATE$TBCD$$TFMTBCDVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-104(%ebp)
	movl	%esi,-100(%ebp)
	movl	%edi,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj4779
	jmp	Lj4780
Lj4779:
	movl	-8(%ebp),%esi
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_CHECK_OBJECT$stub
	movl	%esi,%eax
	call	*52(%ebx)
	movl	%eax,-12(%ebp)
Lj4780:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4785
	jmp	Lj4786
Lj4785:
	jmp	Lj4777
Lj4786:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj4789
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4793
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%esi
	leal	12(%eax),%edi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
Lj4793:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4794
	call	LFPC_RERAISE$stub
Lj4794:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4804
	jmp	Lj4803
Lj4804:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4802
	jmp	Lj4803
Lj4802:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj4803:
Lj4789:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj4791
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj4808
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4809
	jmp	Lj4810
Lj4809:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj4810:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj4808:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj4807
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj4807:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj4791
Lj4791:
Lj4777:
	movl	-12(%ebp),%eax
	movl	-104(%ebp),%ebx
	movl	-100(%ebp),%esi
	movl	-96(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_TFMTBCDFACTORY_$__GETINSTANCE$TVARDATA$$TOBJECT
_FMTBCD_TFMTBCDFACTORY_$__GETINSTANCE$TVARDATA$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_TFMTBCDFACTORY_$__BINARYOP$TVARDATA$TVARDATA$TVAROP
_FMTBCD_TFMTBCDFACTORY_$__BINARYOP$TVARDATA$TVARDATA$TVAROP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%esi,-124(%ebp)
	movl	%edi,-120(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-114(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_VARIANTTOBCD$TVARDATA$$TBCD$stub
	leal	-46(%ebp),%edi
	leal	-114(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	leal	-114(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_VARIANTTOBCD$TVARDATA$$TBCD$stub
	leal	-80(%ebp),%edi
	leal	-114(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4835
	subl	$1,%eax
	je	Lj4836
	subl	$1,%eax
	je	Lj4837
	subl	$1,%eax
	je	Lj4838
	jmp	Lj4834
Lj4835:
	leal	-114(%ebp),%ecx
	leal	-80(%ebp),%edx
	leal	-46(%ebp),%eax
	call	L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub
	leal	-46(%ebp),%edi
	leal	-114(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	jmp	Lj4833
Lj4836:
	leal	-114(%ebp),%ecx
	leal	-80(%ebp),%edx
	leal	-46(%ebp),%eax
	call	L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub
	leal	-46(%ebp),%edi
	leal	-114(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	jmp	Lj4833
Lj4837:
	leal	-114(%ebp),%ecx
	leal	-80(%ebp),%edx
	leal	-46(%ebp),%eax
	call	L_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD$stub
	leal	-46(%ebp),%edi
	leal	-114(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	jmp	Lj4833
Lj4838:
	leal	-114(%ebp),%ecx
	leal	-80(%ebp),%edx
	leal	-46(%ebp),%eax
	call	L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub
	leal	-46(%ebp),%edi
	leal	-114(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	jmp	Lj4833
Lj4834:
	movl	-12(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEINVALIDOP$stub
Lj4833:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movw	4(%eax),%ax
	cmpw	(%edx),%ax
	je	Lj4873
	jmp	Lj4874
Lj4873:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	leal	12(%eax),%edi
	leal	-46(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	jmp	Lj4877
Lj4874:
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$5,%eax
	je	Lj4878
	jmp	Lj4879
Lj4878:
	leal	-46(%ebp),%eax
	call	L_FMTBCD_BCDTODOUBLE$TBCD$$EXTENDED$stub
	fstpl	-88(%ebp)
	movl	-4(%ebp),%edx
	movl	-88(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-84(%ebp),%eax
	movl	%eax,12(%edx)
	jmp	Lj4886
Lj4879:
	movl	-12(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEINVALIDOP$stub
Lj4886:
Lj4877:
	movl	-124(%ebp),%esi
	movl	-120(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_TFMTBCDFACTORY_$__COMPARE$TVARDATA$TVARDATA$TVARCOMPARERESULT
_FMTBCD_TFMTBCDFACTORY_$__COMPARE$TVARDATA$TVARDATA$TVARCOMPARERESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%esi,-128(%ebp)
	movl	%edi,-124(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-118(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_VARIANTTOBCD$TVARDATA$$TBCD$stub
	leal	-46(%ebp),%edi
	leal	-118(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	leal	-118(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_VARIANTTOBCD$TVARDATA$$TBCD$stub
	leal	-80(%ebp),%edi
	leal	-118(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	leal	-80(%ebp),%edx
	leal	-46(%ebp),%eax
	call	L_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT$stub
	movl	%eax,-84(%ebp)
	movl	-84(%ebp),%eax
	testl	%eax,%eax
	je	Lj4909
	jmp	Lj4910
Lj4909:
	movl	8(%ebp),%eax
	movl	$1,(%eax)
	jmp	Lj4913
Lj4910:
	movl	-84(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj4914
	jmp	Lj4915
Lj4914:
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj4918
Lj4915:
	movl	8(%ebp),%eax
	movl	$2,(%eax)
Lj4918:
Lj4913:
	movl	-128(%ebp),%esi
	movl	-124(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_TFMTBCDFACTORY_$__COMPAREOP$TVARDATA$TVARDATA$TVAROP$$BOOLEAN
_FMTBCD_TFMTBCDFACTORY_$__COMPAREOP$TVARDATA$TVARDATA$TVAROP$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%esi,-124(%ebp)
	movl	%edi,-120(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	leal	-115(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FMTBCD_VARIANTTOBCD$TVARDATA$$TBCD$stub
	leal	-47(%ebp),%edi
	leal	-115(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	leal	-115(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FMTBCD_VARIANTTOBCD$TVARDATA$$TBCD$stub
	leal	-81(%ebp),%edi
	leal	-115(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movsw
	movl	8(%ebp),%eax
	cmpl	$14,%eax
	jb	Lj4936
	subl	$14,%eax
	je	Lj4937
	subl	$1,%eax
	je	Lj4938
	subl	$1,%eax
	je	Lj4939
	subl	$1,%eax
	je	Lj4940
	subl	$1,%eax
	je	Lj4941
	subl	$1,%eax
	je	Lj4942
	jmp	Lj4936
Lj4937:
	leal	-81(%ebp),%edx
	leal	-47(%ebp),%eax
	call	L_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT$stub
	testl	%eax,%eax
	seteb	%al
	movb	%al,-13(%ebp)
	jmp	Lj4935
Lj4938:
	leal	-81(%ebp),%edx
	leal	-47(%ebp),%eax
	call	L_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT$stub
	testl	%eax,%eax
	seteb	%al
	testb	%al,%al
	seteb	-13(%ebp)
	jmp	Lj4935
Lj4939:
	leal	-81(%ebp),%edx
	leal	-47(%ebp),%eax
	call	L_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT$stub
	cmpl	$0,%eax
	setlb	%al
	movb	%al,-13(%ebp)
	jmp	Lj4935
Lj4940:
	leal	-81(%ebp),%edx
	leal	-47(%ebp),%eax
	call	L_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT$stub
	cmpl	$0,%eax
	setleb	%al
	movb	%al,-13(%ebp)
	jmp	Lj4935
Lj4941:
	leal	-81(%ebp),%edx
	leal	-47(%ebp),%eax
	call	L_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT$stub
	cmpl	$0,%eax
	setgb	%al
	movb	%al,-13(%ebp)
	jmp	Lj4935
Lj4942:
	leal	-81(%ebp),%edx
	leal	-47(%ebp),%eax
	call	L_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT$stub
	cmpl	$0,%eax
	setgeb	%al
	movb	%al,-13(%ebp)
	jmp	Lj4935
Lj4936:
	movl	-12(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEINVALIDOP$stub
Lj4935:
	movb	-13(%ebp),%al
	movl	-124(%ebp),%esi
	movl	-120(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_TFMTBCDFACTORY_$__CLEAR$TVARDATA
_FMTBCD_TFMTBCDFACTORY_$__CLEAR$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	8(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-4(%ebp),%eax
	movw	$0,(%eax)
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_TFMTBCDFACTORY_$__COPY$TVARDATA$TVARDATA$BOOLEAN
_FMTBCD_TFMTBCDFACTORY_$__COPY$TVARDATA$TVARDATA$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj5000
Lj5000:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	cmpb	$0,8(%ebp)
	jne	Lj5001
	jmp	Lj5002
Lj5001:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
	jmp	Lj5005
Lj5002:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	leal	12(%eax),%ecx
	movl	L_VMT_FMTBCD_TFMTBCDVARDATA$non_lazy_ptr-Lj5000(%ebx),%edx
	movl	$0,%eax
	call	L_FMTBCD_TFMTBCDVARDATA_$__CREATE$TBCD$$TFMTBCDVARDATA$stub
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
Lj5005:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movw	4(%eax),%ax
	movw	%ax,(%edx)
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_TFMTBCDFACTORY_$__CAST$TVARDATA$TVARDATA
_FMTBCD_TFMTBCDFACTORY_$__CAST$TVARDATA$TVARDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	call	L_FMTBCD_NOT_IMPLEMENTED$stub
	leave
	ret

.text
	.align 4
.globl	_FMTBCD_TFMTBCDFACTORY_$__CASTTO$TVARDATA$TVARDATA$WORD
_FMTBCD_TFMTBCDFACTORY_$__CASTTO$TVARDATA$TVARDATA$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj5020
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movw	4(%eax),%ax
	cmpw	(%edx),%ax
	je	Lj5023
	jmp	Lj5024
Lj5023:
	movzwl	8(%ebp),%eax
	cmpl	$256,%eax
	je	Lj5025
	jmp	Lj5026
Lj5025:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	leal	12(%eax),%eax
	leal	-328(%ebp),%edx
	call	L_FMTBCD_BCDTOSTR$TBCD$$SHORTSTRING$stub
	leal	-328(%ebp),%eax
	leal	-72(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-72(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAFROMSTR$TVARDATA$ANSISTRING$stub
	jmp	Lj5041
Lj5026:
	leal	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAINIT$TVARDATA$stub
	movw	$5,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	leal	12(%eax),%eax
	call	L_FMTBCD_BCDTODOUBLE$TBCD$$EXTENDED$stub
	fstpl	-20(%ebp)
	movw	8(%ebp),%ax
	movw	%ax,(%esp)
	leal	-28(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACASTTO$TVARDATA$TVARDATA$WORD$stub
Lj5041:
	jmp	Lj5060
Lj5024:
	movw	8(%ebp),%ax
	movw	%ax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__CASTTO$TVARDATA$TVARDATA$WORD$stub
Lj5060:
Lj5020:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj5021
	call	LFPC_RERAISE$stub
Lj5021:
	leave
	ret

.text
	.align 4
.globl	_INIT$_FMTBCD
_INIT$_FMTBCD:
.reference __FMTBCD_init
.globl	__FMTBCD_init
__FMTBCD_init:
.reference _INIT$_FMTBCD
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_U_FMTBCD_NULL_$non_lazy_ptr-Lj2(%ebx),%eax
	movb	$0,%cl
	movl	$538,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	L_U_FMTBCD_NULLBCD_$non_lazy_ptr-Lj2(%ebx),%eax
	movb	$0,%cl
	movl	$34,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	L_U_FMTBCD_ONEBCD_$non_lazy_ptr-Lj2(%ebx),%eax
	movb	$0,%cl
	movl	$34,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	L_U_FMTBCD_ONEBCD_$non_lazy_ptr-Lj2(%ebx),%eax
	movb	$1,(%eax)
	movl	L_U_FMTBCD_ONEBCD_$non_lazy_ptr-Lj2(%ebx),%eax
	movb	$16,2(%eax)
	movl	L_U_FMTBCD_MYMININTBCD$non_lazy_ptr-Lj2(%ebx),%eax
	movb	$0,%cl
	movl	$34,%edx
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
	movl	L_U_FMTBCD_MYMININTBCD$non_lazy_ptr-Lj2(%ebx),%eax
	movb	$128,1(%eax)
	movl	L_U_FMTBCD_MYMININTBCD$non_lazy_ptr-Lj2(%ebx),%eax
	movb	$10,(%eax)
	movl	L_U_FMTBCD_MYMININTBCD$non_lazy_ptr-Lj2(%ebx),%eax
	leal	2(%eax),%edx
	movl	L_TC_FMTBCD_MYMININTBCDVALUE$non_lazy_ptr-Lj2(%ebx),%eax
	movl	$10,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	L_VMT_FMTBCD_TFMTBCDFACTORY$non_lazy_ptr-Lj2(%ebx),%edx
	movl	$0,%eax
	call	L_VARIANTS_TCUSTOMVARIANTTYPE_$__CREATE$$TCUSTOMVARIANTTYPE$stub
	movl	L_TC_FMTBCD_FMTBCDFACTORY$non_lazy_ptr-Lj2(%ebx),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_FMTBCD
_FINALIZE$_FMTBCD:
.reference __FMTBCD_finalize
.globl	__FMTBCD_finalize
__FMTBCD_finalize:
.reference _FINALIZE$_FMTBCD
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj5070
Lj5070:
	popl	%ebx
	movl	L_TC_FMTBCD_FMTBCDFACTORY$non_lazy_ptr-Lj5070(%ebx),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


.globl _U_FMTBCD_NULLBCD_
.data
.zerofill __DATA, __common, _U_FMTBCD_NULLBCD_, 34,1




.globl _U_FMTBCD_ONEBCD_
.data
.zerofill __DATA, __common, _U_FMTBCD_ONEBCD_, 34,1




	.align 1
.globl _U_FMTBCD_NULL_
.data
.zerofill __DATA, __common, _U_FMTBCD_NULL_, 538,1




.globl _U_FMTBCD_MYMININTBCD
.data
.zerofill __DATA, __common, _U_FMTBCD_MYMININTBCD, 34,1



.const_data
	.align 2
.globl	_$FMTBCD$_Ld38
_$FMTBCD$_Ld38:
	.byte	13
	.ascii	"eBCDException"

.const_data
	.align 2
.globl	_VMT_FMTBCD_EBCDEXCEPTION
_VMT_FMTBCD_EBCDEXCEPTION:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$FMTBCD$_Ld38
	.long	0,0
	.long	_$FMTBCD$_Ld39
	.long	_RTTI_FMTBCD_EBCDEXCEPTION
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
.globl	_$FMTBCD$_Ld41
_$FMTBCD$_Ld41:
	.byte	21
	.ascii	"eBCDOverflowException"

.const_data
	.align 2
.globl	_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION
_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION:
	.long	12,-12
	.long	_VMT_FMTBCD_EBCDEXCEPTION
	.long	_$FMTBCD$_Ld41
	.long	0,0
	.long	_$FMTBCD$_Ld42
	.long	_RTTI_FMTBCD_EBCDOVERFLOWEXCEPTION
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
.globl	_$FMTBCD$_Ld44
_$FMTBCD$_Ld44:
	.byte	27
	.ascii	"eBCDNotImplementedException"

.const_data
	.align 2
.globl	_VMT_FMTBCD_EBCDNOTIMPLEMENTEDEXCEPTION
_VMT_FMTBCD_EBCDNOTIMPLEMENTEDEXCEPTION:
	.long	12,-12
	.long	_VMT_FMTBCD_EBCDEXCEPTION
	.long	_$FMTBCD$_Ld44
	.long	0,0
	.long	_$FMTBCD$_Ld45
	.long	_RTTI_FMTBCD_EBCDNOTIMPLEMENTEDEXCEPTION
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
.globl	_$FMTBCD$_Ld47
_$FMTBCD$_Ld47:
	.byte	14
	.ascii	"TFMTBcdFactory"

.const_data
	.align 2
.globl	_VMT_FMTBCD_TFMTBCDFACTORY
_VMT_FMTBCD_TFMTBCDFACTORY:
	.long	20,-20
	.long	_VMT_VARIANTS_TPUBLISHABLEVARIANTTYPE
	.long	_$FMTBCD$_Ld47
	.long	0,0
	.long	_$FMTBCD$_Ld48
	.long	_RTTI_FMTBCD_TFMTBCDFACTORY
	.long	0,0,0,0
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__DESTROY
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
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__LEFTPROMOTION$TVARDATA$TVAROP$WORD$$BOOLEAN
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__RIGHTPROMOTION$TVARDATA$TVAROP$WORD$$BOOLEAN
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__OLEPROMOTION$TVARDATA$WORD$$BOOLEAN
	.long	_VARIANTS_TINVOKEABLEVARIANTTYPE_$__DISPINVOKE$PVARDATA$TVARDATA$PCALLDESC$POINTER
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__ISCLEAR$TVARDATA$$BOOLEAN
	.long	_FMTBCD_TFMTBCDFACTORY_$__CAST$TVARDATA$TVARDATA
	.long	_FMTBCD_TFMTBCDFACTORY_$__CASTTO$TVARDATA$TVARDATA$WORD
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__CASTTOOLE$TVARDATA$TVARDATA
	.long	_FMTBCD_TFMTBCDFACTORY_$__CLEAR$TVARDATA
	.long	_FMTBCD_TFMTBCDFACTORY_$__COPY$TVARDATA$TVARDATA$BOOLEAN
	.long	_FMTBCD_TFMTBCDFACTORY_$__BINARYOP$TVARDATA$TVARDATA$TVAROP
	.long	_VARIANTS_TCUSTOMVARIANTTYPE_$__UNARYOP$TVARDATA$TVAROP
	.long	_FMTBCD_TFMTBCDFACTORY_$__COMPAREOP$TVARDATA$TVARDATA$TVAROP$$BOOLEAN
	.long	_FMTBCD_TFMTBCDFACTORY_$__COMPARE$TVARDATA$TVARDATA$TVARCOMPARERESULT
	.long	_VARIANTS_TINVOKEABLEVARIANTTYPE_$__DOFUNCTION$TVARDATA$TVARDATA$ANSISTRING$TVARDATAARRAY$$BOOLEAN
	.long	_VARIANTS_TINVOKEABLEVARIANTTYPE_$__DOPROCEDURE$TVARDATA$ANSISTRING$TVARDATAARRAY$$BOOLEAN
	.long	_VARIANTS_TPUBLISHABLEVARIANTTYPE_$__GETPROPERTY$TVARDATA$TVARDATA$ANSISTRING$$BOOLEAN
	.long	_VARIANTS_TPUBLISHABLEVARIANTTYPE_$__SETPROPERTY$TVARDATA$ANSISTRING$TVARDATA$$BOOLEAN
	.long	_FMTBCD_TFMTBCDFACTORY_$__GETINSTANCE$TVARDATA$$TOBJECT
	.long	0

.const_data
	.align 2
.globl	_$FMTBCD$_Ld50
_$FMTBCD$_Ld50:
	.byte	14
	.ascii	"TFMTBcdVarData"

.const_data
	.align 2
.globl	_VMT_FMTBCD_TFMTBCDVARDATA
_VMT_FMTBCD_TFMTBCDVARDATA:
	.long	48,-48
	.long	_VMT_CLASSES_TPERSISTENT
	.long	_$FMTBCD$_Ld50
	.long	0,0
	.long	_$FMTBCD$_Ld51
	.long	_RTTI_FMTBCD_TFMTBCDVARDATA
	.long	0,0,0,0
	.long	_CLASSES_TPERSISTENT_$__DESTROY
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
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FMTBCD
_THREADVARLIST_FMTBCD:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_FMTBCD_FMTBCDFACTORY
_TC_FMTBCD_FMTBCDFACTORY:
	.long	0

.const_data
	.align 2
.globl	_$FMTBCD$_Ld2
_$FMTBCD$_Ld2:
	.short	0,1
	.long	0,-1,15
.reference _$FMTBCD$_Ld1
.globl	_$FMTBCD$_Ld1
_$FMTBCD$_Ld1:
.reference _$FMTBCD$_Ld2
	.ascii	"not implemented\000"

.const_data
	.align 2
.globl	_$FMTBCD$_Ld4
_$FMTBCD$_Ld4:
	.short	0,1
	.long	0,-1,11
.reference _$FMTBCD$_Ld3
.globl	_$FMTBCD$_Ld3
_$FMTBCD$_Ld3:
.reference _$FMTBCD$_Ld4
	.ascii	"in StrToBCD\000"

.const_data
	.align 2
.globl	_$FMTBCD$_Ld6
_$FMTBCD$_Ld6:
	.short	0,1
	.long	0,-1,15
.reference _$FMTBCD$_Ld5
.globl	_$FMTBCD$_Ld5
_$FMTBCD$_Ld5:
.reference _$FMTBCD$_Ld6
	.ascii	"in IntegerToBCD\000"

.const
	.align 3
.globl	_$FMTBCD$_Ld7
_$FMTBCD$_Ld7:
	.byte	0,0,0,0,0,0,0,160,2,64

.data
	.align 2
.globl	_TC_FMTBCD_BCDTOCURR$TBCD$CURRENCY$$BOOLEAN_MAXCURR
_TC_FMTBCD_BCDTOCURR$TBCD$CURRENCY$$BOOLEAN_MAXCURR:
	.long	-1,2147483647
	.long	0,-2147483648

.const_data
	.align 2
.globl	_$FMTBCD$_Ld9
_$FMTBCD$_Ld9:
	.short	0,1
	.long	0,-1,9
.reference _$FMTBCD$_Ld8
.globl	_$FMTBCD$_Ld8
_$FMTBCD$_Ld8:
.reference _$FMTBCD$_Ld9
	.ascii	"in BCDAdd\000"

.const_data
	.align 2
.globl	_$FMTBCD$_Ld11
_$FMTBCD$_Ld11:
	.short	0,1
	.long	0,-1,14
.reference _$FMTBCD$_Ld10
.globl	_$FMTBCD$_Ld10
_$FMTBCD$_Ld10:
.reference _$FMTBCD$_Ld11
	.ascii	"in BCDSubtract\000"

.const_data
	.align 2
.globl	_$FMTBCD$_Ld13
_$FMTBCD$_Ld13:
	.short	0,1
	.long	0,-1,15
.reference _$FMTBCD$_Ld12
.globl	_$FMTBCD$_Ld12
_$FMTBCD$_Ld12:
.reference _$FMTBCD$_Ld13
	.ascii	"in NormalizeBCD\000"

.const_data
	.align 2
.globl	_$FMTBCD$_Ld15
_$FMTBCD$_Ld15:
	.short	0,1
	.long	0,-1,14
.reference _$FMTBCD$_Ld14
.globl	_$FMTBCD$_Ld14
_$FMTBCD$_Ld14:
.reference _$FMTBCD$_Ld15
	.ascii	"in BCDMultiply\000"

.const_data
	.align 2
.globl	_$FMTBCD$_Ld17
_$FMTBCD$_Ld17:
	.short	0,1
	.long	0,-1,16
.reference _$FMTBCD$_Ld16
.globl	_$FMTBCD$_Ld16
_$FMTBCD$_Ld16:
.reference _$FMTBCD$_Ld17
	.ascii	"Division by zero\000"

.const_data
	.align 2
.globl	_$FMTBCD$_Ld19
_$FMTBCD$_Ld19:
	.short	0,1
	.long	0,-1,12
.reference _$FMTBCD$_Ld18
.globl	_$FMTBCD$_Ld18
_$FMTBCD$_Ld18:
.reference _$FMTBCD$_Ld19
	.ascii	"in BCDDivide\000"

.const_data
	.align 2
.globl	_$FMTBCD$_Ld21
_$FMTBCD$_Ld21:
	.short	0,1
	.long	0,-1,5
.reference _$FMTBCD$_Ld20
.globl	_$FMTBCD$_Ld20
_$FMTBCD$_Ld20:
.reference _$FMTBCD$_Ld21
	.ascii	"E%.*d\000"

.const_data
	.align 2
.globl	_$FMTBCD$_Ld23
_$FMTBCD$_Ld23:
	.short	0,1
	.long	0,-1,6
.reference _$FMTBCD$_Ld22
.globl	_$FMTBCD$_Ld22
_$FMTBCD$_Ld22:
.reference _$FMTBCD$_Ld23
	.ascii	"E+%.*d\000"

.const_data
	.align 2
.globl	_$FMTBCD$_Ld25
_$FMTBCD$_Ld25:
	.short	0,1
	.long	0,-1,1
.reference _$FMTBCD$_Ld24
.globl	_$FMTBCD$_Ld24
_$FMTBCD$_Ld24:
.reference _$FMTBCD$_Ld25
	.ascii	" \000"

.const
	.align 2
.globl	_$FMTBCD$_Ld26
_$FMTBCD$_Ld26:
	.ascii	"\001 \000"

.const_data
	.align 2
.globl	_$FMTBCD$_Ld28
_$FMTBCD$_Ld28:
	.short	0,1
	.long	0,-1,1
.reference _$FMTBCD$_Ld27
.globl	_$FMTBCD$_Ld27
_$FMTBCD$_Ld27:
.reference _$FMTBCD$_Ld28
	.ascii	"(\000"

.const_data
	.align 2
.globl	_$FMTBCD$_Ld30
_$FMTBCD$_Ld30:
	.short	0,1
	.long	0,-1,1
.reference _$FMTBCD$_Ld29
.globl	_$FMTBCD$_Ld29
_$FMTBCD$_Ld29:
.reference _$FMTBCD$_Ld30
	.ascii	")\000"

.const_data
	.align 2
.globl	_$FMTBCD$_Ld32
_$FMTBCD$_Ld32:
	.short	0,1
	.long	0,-1,1
.reference _$FMTBCD$_Ld31
.globl	_$FMTBCD$_Ld31
_$FMTBCD$_Ld31:
.reference _$FMTBCD$_Ld32
	.ascii	"-\000"

.const
	.align 2
.globl	_$FMTBCD$_Ld33
_$FMTBCD$_Ld33:
	.ascii	"\001(\000"

.const
	.align 2
.globl	_$FMTBCD$_Ld34
_$FMTBCD$_Ld34:
	.ascii	"\001-\000"

.const
	.align 2
.globl	_$FMTBCD$_Ld35
_$FMTBCD$_Ld35:
	.ascii	"\000\000"

.const_data
	.align 2
.globl	_$FMTBCD$_Ld37
_$FMTBCD$_Ld37:
	.short	0,1
	.long	0,-1,12
.reference _$FMTBCD$_Ld36
.globl	_$FMTBCD$_Ld36
_$FMTBCD$_Ld36:
.reference _$FMTBCD$_Ld37
	.ascii	"in FormatBCD\000"

.data
.globl	_TC_FMTBCD_MYMININTBCDVALUE
_TC_FMTBCD_MYMININTBCDVALUE:
	.byte	33,71,72,54,72,0,0,0,0,0
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

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

LFPC_RANGEERROR$stub:
.indirect_symbol FPC_RANGEERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_OVERFLOW$stub:
.indirect_symbol FPC_OVERFLOW
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_TRYSTRTOBCD$SHORTSTRING$TBCD$TFORMATSETTINGS$$BOOLEAN$stub:
.indirect_symbol _FMTBCD_TRYSTRTOBCD$SHORTSTRING$TBCD$TFORMATSETTINGS$$BOOLEAN
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

L_FMTBCD_PACK_BCD$TBCD_HELPER$TBCD$$BOOLEAN$stub:
.indirect_symbol _FMTBCD_PACK_BCD$TBCD_HELPER$TBCD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_STRTOBCD$SHORTSTRING$TFORMATSETTINGS$$TBCD$stub:
.indirect_symbol _FMTBCD_STRTOBCD$SHORTSTRING$TFORMATSETTINGS$$TBCD
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

Lfpc_shortstr_float$stub:
.indirect_symbol fpc_shortstr_float
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

L_FMTBCD_DOUBLETOBCD$EXTENDED$TBCD$stub:
.indirect_symbol _FMTBCD_DOUBLETOBCD$EXTENDED$TBCD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_mod_qword$stub:
.indirect_symbol fpc_mod_qword
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_div_qword$stub:
.indirect_symbol fpc_div_qword
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_INTEGERTOBCD$INT64$$TBCD$stub:
.indirect_symbol _FMTBCD_INTEGERTOBCD$INT64$$TBCD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_NORMALIZEBCD$TBCD$TBCD$LONGINT$LONGINT$$BOOLEAN$stub:
.indirect_symbol _FMTBCD_NORMALIZEBCD$TBCD$TBCD$LONGINT$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_BCDTOSTR$TBCD$TFORMATSETTINGS$$SHORTSTRING$stub:
.indirect_symbol _FMTBCD_BCDTOSTR$TBCD$TFORMATSETTINGS$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER$stub:
.indirect_symbol _FMTBCD_UNPACK_BCD$TBCD$TBCD_HELPER
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

Lfpc_mul_qword$stub:
.indirect_symbol fpc_mul_qword
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD$stub:
.indirect_symbol _FMTBCD_BCDSUBTRACT$TBCD$TBCD$TBCD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_BCDADD$TBCD$TBCD$TBCD$stub:
.indirect_symbol _FMTBCD_BCDADD$TBCD$TBCD$TBCD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT$stub:
.indirect_symbol _FMTBCD_BCDCOMPARE$TBCD$TBCD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_RANGEERROR$stub:
.indirect_symbol _FMTBCD_RANGEERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD$stub:
.indirect_symbol _FMTBCD_BCDMULTIPLY$TBCD$TBCD$TBCD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_STRTOBCD$SHORTSTRING$$TBCD$stub:
.indirect_symbol _FMTBCD_STRTOBCD$SHORTSTRING$$TBCD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD$stub:
.indirect_symbol _FMTBCD_BCDDIVIDE$TBCD$TBCD$TBCD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_VARCLEAR$VARIANT$stub:
.indirect_symbol _VARIANTS_VARCLEAR$VARIANT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_TFMTBCDVARDATA_$__CREATE$TBCD$$TFMTBCDVARDATA$stub:
.indirect_symbol _FMTBCD_TFMTBCDVARDATA_$__CREATE$TBCD$$TFMTBCDVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_VARFMTBCDCREATE$VARIANT$TBCD$stub:
.indirect_symbol _FMTBCD_VARFMTBCDCREATE$VARIANT$TBCD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_BCDTOSTR$TBCD$$SHORTSTRING$stub:
.indirect_symbol _FMTBCD_BCDTOSTR$TBCD$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_shortstr$stub:
.indirect_symbol fpc_shortstr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT$stub:
.indirect_symbol _SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_BCDTOSTRF$crc3D9E8529_ADDDECIMALDIGITS$LONGINT$stub:
.indirect_symbol _FMTBCD_BCDTOSTRF$crc3D9E8529_ADDDECIMALDIGITS$LONGINT
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

L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
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

Lfpc_ansistr_concat$stub:
.indirect_symbol fpc_ansistr_concat
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

L_FMTBCD_BCDTOSTRF$crc3D9E8529_ADDTHOUSANDSEPARATORS$stub:
.indirect_symbol _FMTBCD_BCDTOSTRF$crc3D9E8529_ADDTHOUSANDSEPARATORS
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

Lfpc_shortstr_concat$stub:
.indirect_symbol fpc_shortstr_concat
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_concat_multi$stub:
.indirect_symbol fpc_shortstr_concat_multi
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_BCDTOSTRF$crc3D9E8529_ROUNDDECIMALDIGITS$LONGINT$stub:
.indirect_symbol _FMTBCD_BCDTOSTRF$crc3D9E8529_ROUNDDECIMALDIGITS$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_copy$stub:
.indirect_symbol fpc_shortstr_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_FORMATBCD$SHORTSTRING$TBCD$$SHORTSTRING_PARSEFORMAT$stub:
.indirect_symbol _FMTBCD_FORMATBCD$SHORTSTRING$TBCD$$SHORTSTRING_PARSEFORMAT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_BCDTOSTRF$TBCD$TFLOATFORMAT$LONGINT$LONGINT$$SHORTSTRING$stub:
.indirect_symbol _FMTBCD_BCDTOSTRF$TBCD$TFLOATFORMAT$LONGINT$LONGINT$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_FORMATBCD$SHORTSTRING$TBCD$$SHORTSTRING_PUTFMTDIGIT$PCHAR$LONGINT$LONGINT$LONGINT$stub:
.indirect_symbol _FMTBCD_FORMATBCD$SHORTSTRING$TBCD$$SHORTSTRING_PUTFMTDIGIT$PCHAR$LONGINT$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SETSTRING$OPENSTRING$PCHAR$LONGINT$stub:
.indirect_symbol _SYSTEM_SETSTRING$OPENSTRING$PCHAR$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN$stub:
.indirect_symbol _FMTBCD_CURRTOBCD$CURRENCY$TBCD$LONGINT$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_BCDADD$TBCD$INT64$TBCD$stub:
.indirect_symbol _FMTBCD_BCDADD$TBCD$INT64$TBCD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_BCDSUBTRACT$TBCD$INT64$TBCD$stub:
.indirect_symbol _FMTBCD_BCDSUBTRACT$TBCD$INT64$TBCD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_BCDMULTIPLY$TBCD$INT64$TBCD$stub:
.indirect_symbol _FMTBCD_BCDMULTIPLY$TBCD$INT64$TBCD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_BCDTOINTEGER$TBCD$BOOLEAN$$INT64$stub:
.indirect_symbol _FMTBCD_BCDTOINTEGER$TBCD$BOOLEAN$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_BCDTODOUBLE$TBCD$$EXTENDED$stub:
.indirect_symbol _FMTBCD_BCDTODOUBLE$TBCD$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_BCDTOCURR$TBCD$CURRENCY$$BOOLEAN$stub:
.indirect_symbol _FMTBCD_BCDTOCURR$TBCD$CURRENCY$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_VARIANTTOBCD$TVARDATA$$TBCD$stub:
.indirect_symbol _FMTBCD_VARIANTTOBCD$TVARDATA$$TBCD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_UNICODESTR_DECR_REF$stub:
.indirect_symbol FPC_UNICODESTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_pwidechar_to_unicodestr$stub:
.indirect_symbol fpc_pwidechar_to_unicodestr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_to_ansistr$stub:
.indirect_symbol fpc_unicodestr_to_ansistr
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

L_FMTBCD_VARFMTBCD$$WORD$stub:
.indirect_symbol _FMTBCD_VARFMTBCD$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FMTBCD_NOT_IMPLEMENTED$stub:
.indirect_symbol _FMTBCD_NOT_IMPLEMENTED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_CHECK_OBJECT$stub:
.indirect_symbol FPC_CHECK_OBJECT
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

L_VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEINVALIDOP$stub:
.indirect_symbol _VARIANTS_TCUSTOMVARIANTTYPE_$__RAISEINVALIDOP
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

L_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAFROMSTR$TVARDATA$ANSISTRING$stub:
.indirect_symbol _VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAFROMSTR$TVARDATA$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAINIT$TVARDATA$stub:
.indirect_symbol _VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATAINIT$TVARDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACASTTO$TVARDATA$TVARDATA$WORD$stub:
.indirect_symbol _VARIANTS_TCUSTOMVARIANTTYPE_$__VARDATACASTTO$TVARDATA$TVARDATA$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_VARIANTS_TCUSTOMVARIANTTYPE_$__CASTTO$TVARDATA$TVARDATA$WORD$stub:
.indirect_symbol _VARIANTS_TCUSTOMVARIANTTYPE_$__CASTTO$TVARDATA$TVARDATA$WORD
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

L_VARIANTS_TCUSTOMVARIANTTYPE_$__CREATE$$TCUSTOMVARIANTTYPE$stub:
.indirect_symbol _VARIANTS_TCUSTOMVARIANTTYPE_$__CREATE$$TCUSTOMVARIANTTYPE
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
.globl	_INIT_FMTBCD_PBCD
_INIT_FMTBCD_PBCD:
	.byte	0
	.ascii	"\004pBCD"

.const_data
	.align 2
.globl	_RTTI_FMTBCD_PBCD
_RTTI_FMTBCD_PBCD:
	.byte	0
	.ascii	"\004pBCD"

.const_data
	.align 2
.globl	_INIT_FMTBCD_TBCD
_INIT_FMTBCD_TBCD:
	.byte	13,4
	.ascii	"tBCD"
	.long	34,0

.const_data
	.align 2
.globl	_RTTI_FMTBCD_DEF2
_RTTI_FMTBCD_DEF2:
	.byte	1
	.ascii	"\000"
	.byte	0
	.long	0,64

.const_data
	.align 2
.globl	_RTTI_FMTBCD_DEF3
_RTTI_FMTBCD_DEF3:
	.byte	12
	.ascii	"\000"
	.long	1,32
	.long	_RTTI_SYSTEM_BYTE
	.long	17

.const_data
	.align 2
.globl	_RTTI_FMTBCD_TBCD
_RTTI_FMTBCD_TBCD:
	.byte	13,4
	.ascii	"tBCD"
	.long	34,3
	.long	_RTTI_FMTBCD_DEF2
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_FMTBCD_DEF3
	.long	2

.const_data
	.align 2
.globl	_$FMTBCD$_Ld39
_$FMTBCD$_Ld39:
	.short	0
	.long	_$FMTBCD$_Ld40
	.align 2
.globl	_$FMTBCD$_Ld40
_$FMTBCD$_Ld40:
	.short	0

.const_data
	.align 2
.globl	_INIT_FMTBCD_EBCDEXCEPTION
_INIT_FMTBCD_EBCDEXCEPTION:
	.byte	15,13
	.ascii	"eBCDException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FMTBCD_EBCDEXCEPTION
_RTTI_FMTBCD_EBCDEXCEPTION:
	.byte	15,13
	.ascii	"eBCDException"
	.long	_VMT_FMTBCD_EBCDEXCEPTION
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	6
	.ascii	"FmtBCD"
	.short	0

.const_data
	.align 2
.globl	_$FMTBCD$_Ld42
_$FMTBCD$_Ld42:
	.short	0
	.long	_$FMTBCD$_Ld43
	.align 2
.globl	_$FMTBCD$_Ld43
_$FMTBCD$_Ld43:
	.short	0

.const_data
	.align 2
.globl	_INIT_FMTBCD_EBCDOVERFLOWEXCEPTION
_INIT_FMTBCD_EBCDOVERFLOWEXCEPTION:
	.byte	15,21
	.ascii	"eBCDOverflowException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FMTBCD_EBCDOVERFLOWEXCEPTION
_RTTI_FMTBCD_EBCDOVERFLOWEXCEPTION:
	.byte	15,21
	.ascii	"eBCDOverflowException"
	.long	_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION
	.long	_RTTI_FMTBCD_EBCDEXCEPTION
	.short	0
	.byte	6
	.ascii	"FmtBCD"
	.short	0

.const_data
	.align 2
.globl	_$FMTBCD$_Ld45
_$FMTBCD$_Ld45:
	.short	0
	.long	_$FMTBCD$_Ld46
	.align 2
.globl	_$FMTBCD$_Ld46
_$FMTBCD$_Ld46:
	.short	0

.const_data
	.align 2
.globl	_INIT_FMTBCD_EBCDNOTIMPLEMENTEDEXCEPTION
_INIT_FMTBCD_EBCDNOTIMPLEMENTEDEXCEPTION:
	.byte	15,27
	.ascii	"eBCDNotImplementedException"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FMTBCD_EBCDNOTIMPLEMENTEDEXCEPTION
_RTTI_FMTBCD_EBCDNOTIMPLEMENTEDEXCEPTION:
	.byte	15,27
	.ascii	"eBCDNotImplementedException"
	.long	_VMT_FMTBCD_EBCDNOTIMPLEMENTEDEXCEPTION
	.long	_RTTI_FMTBCD_EBCDEXCEPTION
	.short	0
	.byte	6
	.ascii	"FmtBCD"
	.short	0

.const_data
	.align 2
.globl	_INIT_FMTBCD_DEF441
_INIT_FMTBCD_DEF441:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FMTBCD_DEF442
_INIT_FMTBCD_DEF442:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FMTBCD_DEF443
_INIT_FMTBCD_DEF443:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FMTBCD_DEF444
_INIT_FMTBCD_DEF444:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FMTBCD_DEF445
_INIT_FMTBCD_DEF445:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FMTBCD_DEF446
_INIT_FMTBCD_DEF446:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FMTBCD_DEF447
_INIT_FMTBCD_DEF447:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FMTBCD_DEF449
_INIT_FMTBCD_DEF449:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_FMTBCD_DEF450
_INIT_FMTBCD_DEF450:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$FMTBCD$_Ld48
_$FMTBCD$_Ld48:
	.short	0
	.long	_$FMTBCD$_Ld49
	.align 2
.globl	_$FMTBCD$_Ld49
_$FMTBCD$_Ld49:
	.short	0

.const_data
	.align 2
.globl	_RTTI_FMTBCD_TFMTBCDFACTORY
_RTTI_FMTBCD_TFMTBCDFACTORY:
	.byte	15,14
	.ascii	"TFMTBcdFactory"
	.long	_VMT_FMTBCD_TFMTBCDFACTORY
	.long	_RTTI_VARIANTS_TPUBLISHABLEVARIANTTYPE
	.short	0
	.byte	6
	.ascii	"FmtBCD"
	.short	0

.const_data
	.align 2
.globl	_$FMTBCD$_Ld51
_$FMTBCD$_Ld51:
	.short	0
	.long	_$FMTBCD$_Ld52
	.align 2
.globl	_$FMTBCD$_Ld52
_$FMTBCD$_Ld52:
	.short	0

.const_data
	.align 2
.globl	_RTTI_FMTBCD_TFMTBCDVARDATA
_RTTI_FMTBCD_TFMTBCDVARDATA:
	.byte	15,14
	.ascii	"TFMTBcdVarData"
	.long	_VMT_FMTBCD_TFMTBCDVARDATA
	.long	_RTTI_CLASSES_TPERSISTENT
	.short	0
	.byte	6
	.ascii	"FmtBCD"
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
L_U_FMTBCD_NULLBCD_$non_lazy_ptr:
.indirect_symbol _U_FMTBCD_NULLBCD_
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FMTBCD_ONEBCD_$non_lazy_ptr:
.indirect_symbol _U_FMTBCD_ONEBCD_
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_SYSCONST_SRANGEERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_SYSCONST_SRANGEERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_ERANGEERROR$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_ERANGEERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FMTBCD_EBCDNOTIMPLEMENTEDEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_FMTBCD_EBCDNOTIMPLEMENTEDEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld1$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FMTBCD_NULL_$non_lazy_ptr:
.indirect_symbol _U_FMTBCD_NULL_
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSUTILS_DEFAULTFORMATSETTINGS$non_lazy_ptr:
.indirect_symbol _TC_SYSUTILS_DEFAULTFORMATSETTINGS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FMTBCD_EBCDOVERFLOWEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_FMTBCD_EBCDOVERFLOWEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld3$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_SYSUTILS_TFORMATSETTINGS$non_lazy_ptr:
.indirect_symbol _INIT_SYSUTILS_TFORMATSETTINGS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FMTBCD_MYMININTBCD$non_lazy_ptr:
.indirect_symbol _U_FMTBCD_MYMININTBCD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld5$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld7$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FMTBCD_BCDTOCURR$TBCD$CURRENCY$$BOOLEAN_MAXCURR$non_lazy_ptr:
.indirect_symbol _TC_FMTBCD_BCDTOCURR$TBCD$CURRENCY$$BOOLEAN_MAXCURR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld8$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld10$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld12$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld12
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld14$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld14
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FMTBCD_EBCDEXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_FMTBCD_EBCDEXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld16$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld16
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld18$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld18
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FMTBCD_FMTBCDFACTORY$non_lazy_ptr:
.indirect_symbol _TC_FMTBCD_FMTBCDFACTORY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FMTBCD_TFMTBCDVARDATA$non_lazy_ptr:
.indirect_symbol _VMT_FMTBCD_TFMTBCDVARDATA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld20$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld20
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld22$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld22
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld24$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld24
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld26$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld26
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld27$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld27
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld29$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld29
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld31$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld31
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld33$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld33
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld34$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld34
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FMTBCD$_Ld36$non_lazy_ptr:
.indirect_symbol _$FMTBCD$_Ld36
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FMTBCD_MYMININTBCDVALUE$non_lazy_ptr:
.indirect_symbol _TC_FMTBCD_MYMININTBCDVALUE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FMTBCD_TFMTBCDFACTORY$non_lazy_ptr:
.indirect_symbol _VMT_FMTBCD_TFMTBCDFACTORY
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

