	.file "vocdec.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
.globl	VOCDEC_VOCTIMECONSTTORATE$BYTE$WORD$$LONGWORD
VOCDEC_VOCTIMECONSTTORATE$BYTE$WORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movb	%al,-4(%ebp)
	movw	%dx,-8(%ebp)
	movzwl	-8(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj5
	jmp	Lj6
Lj5:
	movw	$1,-8(%ebp)
Lj6:
	movzbl	-4(%ebp),%ecx
	movl	$256,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	$1000000,%eax
	xorl	%edx,%edx
	divl	%ecx
	movl	%eax,-12(%ebp)
	movzwl	-8(%ebp),%eax
	cmpl	$2,%eax
	je	Lj11
	jmp	Lj12
Lj11:
	movl	-12(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-12(%ebp)
Lj12:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN
VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$276,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	-12(%ebp),%eax
	movw	$8,12(%eax)
	movl	-12(%ebp),%eax
	movw	$1,14(%eax)
	movl	-12(%ebp),%eax
	movl	$8000,8(%eax)
	movb	$0,-39(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$26,%eax
	jl	Lj45
	jmp	Lj46
Lj45:
	jmp	Lj15
Lj46:
	movl	$0,-24(%ebp)
	decl	-24(%ebp)
	.balign 4,0x90
Lj49:
	incl	-24(%ebp)
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	-24(%ebp),%eax
	incl	%eax
	movzbl	%al,%eax
	movb	(%edx,%ecx,1),%dl
	cmpb	_$VOCDEC$_Ld1(,%eax,1),%dl
	jne	Lj50
	jmp	Lj51
Lj50:
	jmp	Lj15
Lj51:
	cmpl	$18,-24(%ebp)
	jl	Lj49
	movl	-4(%ebp),%eax
	movzbl	19(%eax),%eax
	cmpl	$26,%eax
	jne	Lj52
	jmp	Lj53
Lj52:
	jmp	Lj15
Lj53:
	movl	$20,-20(%ebp)
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READWORD$$WORD
	movzwl	%ax,%eax
	movl	%eax,-24(%ebp)
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movl	-12(%ebp),%edx
	movb	%al,17(%edx)
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movl	-12(%ebp),%edx
	movb	%al,16(%edx)
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READWORD$$WORD
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movw	$0,-54(%ebp)
	movl	$0,-60(%ebp)
	movl	$-1,-64(%ebp)
	jmp	Lj79
	.balign 4,0x90
Lj78:
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movb	%al,-25(%ebp)
	movzbl	-25(%ebp),%eax
	testl	%eax,%eax
	je	Lj85
	jmp	Lj86
Lj85:
	movl	-64(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj87
	jmp	Lj88
Lj87:
	decl	-64(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj79
	jmp	Lj91
Lj88:
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj92
	jmp	Lj93
Lj92:
	jmp	Lj80
	jmp	Lj94
Lj93:
	jmp	Lj80
Lj94:
Lj91:
Lj86:
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movzbl	%al,%ebx
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movzbl	%al,%eax
	shll	$8,%eax
	orl	%eax,%ebx
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movzbl	%al,%eax
	shll	$16,%eax
	orl	%eax,%ebx
	movl	%ebx,-32(%ebp)
	movb	-25(%ebp),%al
	cmpb	$1,%al
	jb	Lj104
	decb	%al
	je	Lj105
	decb	%al
	je	Lj106
	decb	%al
	je	Lj107
	decb	%al
	je	Lj108
	decb	%al
	je	Lj109
	decb	%al
	je	Lj110
	decb	%al
	je	Lj111
	decb	%al
	je	Lj112
	decb	%al
	je	Lj113
	jmp	Lj104
Lj105:
	movl	-32(%ebp),%eax
	cmpl	$2,%eax
	jb	Lj114
	jmp	Lj115
Lj114:
	movl	-32(%ebp),%eax
	addl	%eax,-20(%ebp)
	jmp	Lj79
Lj115:
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movb	%al,-33(%ebp)
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movb	%al,-34(%ebp)
	cmpb	$0,-39(%ebp)
	jne	Lj124
	jmp	Lj125
Lj124:
	movb	$0,-39(%ebp)
	jmp	Lj128
Lj125:
	movb	-33(%ebp),%al
	movw	$1,%dx
	call	VOCDEC_VOCTIMECONSTTORATE$BYTE$WORD$$LONGWORD
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movw	$1,14(%eax)
Lj128:
	movb	-34(%ebp),%al
	testb	%al,%al
	je	Lj139
	subb	$4,%al
	je	Lj140
	jmp	Lj138
Lj139:
	movl	-12(%ebp),%eax
	movw	$8,12(%eax)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,1),%edx
	movl	-32(%ebp),%ecx
	subl	$2,%ecx
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_APPENDDATA$PBYTE$LONGWORD
	jmp	Lj137
Lj140:
	movl	-12(%ebp),%eax
	movw	$16,12(%eax)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	(%edx,%eax,1),%edx
	movl	-32(%ebp),%ecx
	subl	$2,%ecx
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_APPENDDATA$PBYTE$LONGWORD
	jmp	Lj137
Lj138:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,1),%edx
	movl	-32(%ebp),%ecx
	subl	$2,%ecx
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_APPENDDATA$PBYTE$LONGWORD
Lj137:
	movl	-32(%ebp),%eax
	subl	$2,%eax
	addl	%eax,-20(%ebp)
	jmp	Lj103
Lj106:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,1),%edx
	movl	-32(%ebp),%ecx
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_APPENDDATA$PBYTE$LONGWORD
	movl	-32(%ebp),%eax
	addl	%eax,-20(%ebp)
	jmp	Lj103
Lj107:
	movl	-32(%ebp),%eax
	cmpl	$3,%eax
	jae	Lj169
	jmp	Lj170
Lj169:
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READWORD$$WORD
	movw	%ax,-50(%ebp)
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movb	%al,-51(%ebp)
	movl	-12(%ebp),%eax
	movw	14(%eax),%dx
	movb	-51(%ebp),%al
	call	VOCDEC_VOCTIMECONSTTORATE$BYTE$WORD$$LONGWORD
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	movzwl	-50(%ebp),%edx
	incl	%edx
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_APPENDSILENCE$LONGWORD
	movl	-32(%ebp),%eax
	subl	$3,%eax
	addl	%eax,-20(%ebp)
	jmp	Lj189
Lj170:
	movl	-32(%ebp),%eax
	addl	%eax,-20(%ebp)
Lj189:
	jmp	Lj103
Lj108:
	movl	-32(%ebp),%eax
	addl	%eax,-20(%ebp)
	jmp	Lj103
Lj109:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj190
	jmp	Lj191
Lj190:
	movl	-12(%ebp),%eax
	movb	$1,18(%eax)
	movl	-32(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	-80(%ebp),%eax
	cmpl	$255,%eax
	jg	Lj196
	jmp	Lj197
Lj196:
	movl	$255,-80(%ebp)
Lj197:
	movl	-80(%ebp),%ecx
	movl	-12(%ebp),%eax
	leal	19(%eax),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
	movl	-80(%ebp),%ecx
	movl	$1,-24(%ebp)
	cmpl	-24(%ebp),%ecx
	jl	Lj207
	decl	-24(%ebp)
	.balign 4,0x90
Lj208:
	incl	-24(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj209
	jmp	Lj210
Lj209:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%esi
	movzbl	-24(%ebp),%ebx
	movb	(%edx,%eax,1),%al
	movb	%al,19(%esi,%ebx,1)
	incl	-20(%ebp)
Lj210:
	cmpl	-24(%ebp),%ecx
	jg	Lj208
Lj207:
	jmp	Lj214
	.balign 4,0x90
Lj213:
	movl	-12(%ebp),%eax
	movzbl	19(%eax),%ecx
	decl	%ecx
	movl	-12(%ebp),%eax
	leal	19(%eax),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
Lj214:
	movl	-12(%ebp),%eax
	movzbl	19(%eax),%eax
	cmpl	$0,%eax
	jg	Lj222
	jmp	Lj215
Lj222:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	19(%eax),%eax
	movb	19(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj213
	jmp	Lj215
Lj215:
	movl	-32(%ebp),%eax
	movl	-80(%ebp),%edx
	subl	%edx,%eax
	addl	%eax,-20(%ebp)
Lj191:
	jmp	Lj103
Lj110:
	movl	-32(%ebp),%eax
	cmpl	$2,%eax
	jae	Lj223
	jmp	Lj224
Lj223:
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READWORD$$WORD
	movw	%ax,-54(%ebp)
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%eax
	addl	%eax,%edx
	subl	$2,%edx
	movl	%edx,-60(%ebp)
	movw	-54(%ebp),%ax
	cmpw	$65535,%ax
	je	Lj231
	jmp	Lj232
Lj231:
	movl	$-2,-64(%ebp)
	jmp	Lj235
Lj232:
	movzwl	-54(%ebp),%eax
	movl	%eax,-64(%ebp)
Lj235:
	movl	-32(%ebp),%eax
	subl	$2,%eax
	addl	%eax,-20(%ebp)
	jmp	Lj238
Lj224:
	movl	-32(%ebp),%eax
	addl	%eax,-20(%ebp)
Lj238:
	jmp	Lj103
Lj111:
	movl	-64(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj239
	jmp	Lj240
Lj239:
	decl	-64(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj243
Lj240:
	movl	-64(%ebp),%eax
	cmpl	$-2,%eax
	je	Lj244
	jmp	Lj245
Lj244:
	movl	$-1,-64(%ebp)
	jmp	Lj248
Lj245:
	movl	-32(%ebp),%eax
	addl	%eax,-20(%ebp)
Lj248:
Lj243:
	jmp	Lj103
Lj112:
	movl	-32(%ebp),%eax
	cmpl	$4,%eax
	jae	Lj249
	jmp	Lj250
Lj249:
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READWORD$$WORD
	movw	%ax,-36(%ebp)
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movb	%al,-37(%ebp)
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movzbl	%al,%eax
	incl	%eax
	movb	%al,-38(%ebp)
	movzbl	-38(%ebp),%edx
	movl	$0,%eax
	pushl	%eax
	pushl	%edx
	movzwl	-36(%ebp),%eax
	movl	$0,%ecx
	movl	$65536,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	$0,%edx
	sbbl	%ecx,%edx
	movl	%edx,%ecx
	pushl	%ecx
	pushl	%eax
	movl	$0,%eax
	call	fpc_mul_int64
	pushl	%edx
	pushl	%eax
	pushl	$0
	pushl	$256000000
	call	fpc_div_int64
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-12(%ebp),%edx
	movzbw	-38(%ebp),%ax
	movw	%ax,14(%edx)
	movb	$1,-39(%ebp)
	movl	-32(%ebp),%eax
	subl	$4,%eax
	addl	%eax,-20(%ebp)
	jmp	Lj279
Lj250:
	movl	-32(%ebp),%eax
	addl	%eax,-20(%ebp)
Lj279:
	jmp	Lj103
Lj113:
	movl	-32(%ebp),%eax
	cmpl	$12,%eax
	jae	Lj280
	jmp	Lj281
Lj280:
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READDWORD$$LONGWORD
	movl	%eax,-44(%ebp)
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movzbw	%al,%ax
	movw	%ax,-46(%ebp)
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movzbw	%al,%ax
	movw	%ax,-48(%ebp)
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READWORD$$WORD
	movb	%al,-34(%ebp)
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READDWORD$$LONGWORD
	movl	-12(%ebp),%eax
	movl	-44(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-12(%ebp),%edx
	movw	-46(%ebp),%ax
	movw	%ax,12(%edx)
	movl	-12(%ebp),%eax
	movw	-48(%ebp),%dx
	movw	%dx,14(%eax)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	(%edx,%eax,1),%edx
	movl	-32(%ebp),%ecx
	subl	$12,%ecx
	movl	%ebp,%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_APPENDDATA$PBYTE$LONGWORD
	movl	-32(%ebp),%eax
	subl	$12,%eax
	addl	%eax,-20(%ebp)
	jmp	Lj312
Lj281:
	movl	-32(%ebp),%eax
	addl	%eax,-20(%ebp)
Lj312:
	jmp	Lj103
Lj104:
	movl	-32(%ebp),%eax
	addl	%eax,-20(%ebp)
Lj103:
Lj79:
	movl	-20(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj78
	jmp	Lj80
Lj80:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj315
	jmp	Lj314
Lj315:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$0,%eax
	ja	Lj313
	jmp	Lj314
Lj313:
	movb	$1,-13(%ebp)
	jmp	Lj316
Lj314:
	movb	$0,-13(%ebp)
Lj316:
Lj15:
	movb	-13(%ebp),%al
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_APPENDSILENCE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movzwl	12(%eax),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%eax
	sarl	$3,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	pushl	%edx
	pushl	%eax
	movl	$0,%eax
	call	fpc_mul_int64
	pushl	%edx
	pushl	%eax
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movzwl	14(%eax),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	leal	-12(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-8(%ebp),%eax
	movl	-12(%eax),%eax
	movzwl	12(%eax),%eax
	cmpl	$8,%eax
	je	Lj335
	jmp	Lj336
Lj335:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	$128,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	jmp	Lj343
Lj336:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
Lj343:
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_APPENDDATA$PBYTE$LONGWORD
	movl	-12(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	leave
	ret

.text
	.balign 4,0x90
VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_APPENDDATA$PBYTE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj358
	jmp	Lj359
Lj358:
	jmp	Lj23
Lj359:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	call	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	4(%eax),%eax
	leal	(%edx,%eax,1),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-12(%ebp),%eax
	movl	-12(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,4(%edx)
Lj23:
	leave
	ret

.text
	.balign 4,0x90
VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READDWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movzbl	%al,%ebx
	movl	-4(%ebp),%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movzbl	%al,%eax
	shll	$8,%eax
	orl	%eax,%ebx
	movl	-4(%ebp),%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movzbl	%al,%eax
	shll	$16,%eax
	orl	%eax,%ebx
	movl	-4(%ebp),%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movzbl	%al,%eax
	shll	$24,%eax
	orl	%eax,%ebx
	movl	%ebx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READWORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movzbl	%al,%ebx
	movl	-4(%ebp),%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE
	movzbw	%al,%ax
	movzwl	%ax,%eax
	shll	$8,%eax
	orl	%eax,%ebx
	movw	%bx,-6(%ebp)
	movw	-6(%ebp),%ax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN_READBYTE$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-20(%eax),%eax
	cmpl	-8(%edx),%eax
	jl	Lj386
	jmp	Lj387
Lj386:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-20(%eax),%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-5(%ebp)
	movl	-4(%ebp),%eax
	incl	-20(%eax)
	jmp	Lj390
Lj387:
	movb	$0,-5(%ebp)
Lj390:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	VOCDEC_VOCLOADFILE$SHORTSTRING$TVOCINFO$$BOOLEAN
VOCDEC_VOCLOADFILE$SHORTSTRING$TVOCINFO$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$360,%esp
	movl	%ebx,-360(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$276,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-4(%ebp),%edx
	leal	-344(%ebp),%eax
	call	SYSTEM_ASSIGN$file$SHORTSTRING
	leal	-344(%ebp),%eax
	movl	$1,%edx
	call	SYSTEM_RESET$file$LONGINT
	call	SYSTEM_IORESULT$$WORD
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj411
	jmp	Lj412
Lj411:
	jmp	Lj393
Lj412:
	leal	-344(%ebp),%eax
	call	SYSTEM_FILESIZE$file$$INT64
	movl	%eax,%ebx
	call	FPC_IOCHECK
	movl	%ebx,-352(%ebp)
	movl	-352(%ebp),%eax
	cmpl	$26,%eax
	jl	Lj417
	jmp	Lj418
Lj417:
	leal	-344(%ebp),%eax
	call	SYSTEM_CLOSE$file
	call	FPC_IOCHECK
	jmp	Lj393
Lj418:
	movl	-352(%ebp),%edx
	leal	-348(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	leal	-356(%ebp),%eax
	pushl	%eax
	movl	-348(%ebp),%edx
	movl	-352(%ebp),%ecx
	leal	-344(%ebp),%eax
	call	SYSTEM_BLOCKREAD$file$formal$LONGINT$LONGINT
	call	FPC_IOCHECK
	leal	-344(%ebp),%eax
	call	SYSTEM_CLOSE$file
	call	FPC_IOCHECK
	movl	-356(%ebp),%eax
	cmpl	-352(%ebp),%eax
	jne	Lj435
	jmp	Lj436
Lj435:
	movl	-348(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	jmp	Lj393
Lj436:
	movl	-8(%ebp),%ecx
	movl	-352(%ebp),%edx
	movl	-348(%ebp),%eax
	call	VOCDEC_VOCLOADMEM$PBYTE$LONGINT$TVOCINFO$$BOOLEAN
	movb	%al,-9(%ebp)
	movl	-348(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj393:
	movb	-9(%ebp),%al
	movl	-360(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	VOCDEC_VOCFREE$TVOCINFO
VOCDEC_VOCFREE$TVOCINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj451
	jmp	Lj452
Lj451:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj452:
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_VOCDEC
THREADVARLIST_VOCDEC:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 4
.globl	_$VOCDEC$_Ld1
_$VOCDEC$_Ld1:
	.ascii	"\023Creative Voice File\000"
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
.globl	INIT_VOCDEC_TVOCINFO
INIT_VOCDEC_TVOCINFO:
	.byte	13,8
	.ascii	"TVOCInfo"
	.long	276,0

.data
	.balign 4
.globl	RTTI_VOCDEC_TVOCINFO
RTTI_VOCDEC_TVOCINFO:
	.byte	13,8
	.ascii	"TVOCInfo"
	.long	276,9
	.long	RTTI_SYSTEM_PBYTE
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	12
	.long	RTTI_SYSTEM_WORD
	.long	14
	.long	RTTI_SYSTEM_BYTE
	.long	16
	.long	RTTI_SYSTEM_BYTE
	.long	17
	.long	RTTI_SYSTEM_BOOLEAN
	.long	18
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	19
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

