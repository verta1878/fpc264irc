	.file "moddec.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
MODDEC_PERIODTOFREQ$WORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5
	jmp	Lj6
Lj5:
	movl	$0,-8(%ebp)
	jmp	Lj9
Lj6:
	movzwl	-4(%ebp),%ecx
	shll	$1,%ecx
	movl	$7093789,%eax
	cltd
	idivl	%ecx
	movl	%eax,-8(%ebp)
Lj9:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
MODDEC_CLAMPVOL$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj14
	jmp	Lj15
Lj14:
	movl	$0,-8(%ebp)
	jmp	Lj18
Lj15:
	movl	-4(%ebp),%eax
	cmpl	$64,%eax
	jg	Lj19
	jmp	Lj20
Lj19:
	movl	$64,-8(%ebp)
	jmp	Lj23
Lj20:
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj23:
Lj18:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	MODDEC_MODLOADMEM$PBYTE$LONGINT$TMODFILE$$BOOLEAN
MODDEC_MODLOADMEM$PBYTE$LONGINT$TMODFILE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$324,%esp
	movl	%ebx,-324(%ebp)
	movl	%esi,-320(%ebp)
	movl	%edi,-316(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$2044,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-8(%ebp),%eax
	cmpl	$1084,%eax
	jl	Lj36
	jmp	Lj37
Lj36:
	jmp	Lj26
Lj37:
	movl	-4(%ebp),%eax
	leal	1080(%eax),%eax
	leal	-40(%ebp),%edx
	movl	$4,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	pushl	$3
	pushl	$1
	leal	-40(%ebp),%ecx
	leal	-312(%ebp),%eax
	movl	$255,%edx
	call	fpc_chararray_to_shortstr
	leal	-312(%ebp),%eax
	movl	$_$MODDEC$_Ld1,%edx
	call	fpc_shortstr_compare_equal
	testl	%eax,%eax
	je	Lj44
	jmp	Lj47
Lj47:
	pushl	$3
	pushl	$1
	leal	-40(%ebp),%ecx
	leal	-312(%ebp),%eax
	movl	$255,%edx
	call	fpc_chararray_to_shortstr
	leal	-312(%ebp),%eax
	movl	$_$MODDEC$_Ld2,%edx
	call	fpc_shortstr_compare_equal
	testl	%eax,%eax
	je	Lj44
	jmp	Lj46
Lj46:
	pushl	$3
	pushl	$1
	leal	-40(%ebp),%ecx
	leal	-312(%ebp),%eax
	movl	$255,%edx
	call	fpc_chararray_to_shortstr
	leal	-312(%ebp),%eax
	movl	$_$MODDEC$_Ld3,%edx
	call	fpc_shortstr_compare_equal
	testl	%eax,%eax
	je	Lj44
	jmp	Lj45
Lj44:
	movl	-12(%ebp),%eax
	movl	$31,1384(%eax)
	movl	-12(%ebp),%eax
	movl	$4,1388(%eax)
	jmp	Lj94
Lj45:
	pushl	$3
	pushl	$1
	leal	-40(%ebp),%ecx
	leal	-312(%ebp),%eax
	movl	$255,%edx
	call	fpc_chararray_to_shortstr
	leal	-312(%ebp),%eax
	movl	$_$MODDEC$_Ld4,%edx
	call	fpc_shortstr_compare_equal
	testl	%eax,%eax
	je	Lj95
	jmp	Lj96
Lj95:
	movl	-12(%ebp),%eax
	movl	$31,1384(%eax)
	movl	-12(%ebp),%eax
	movl	$4,1388(%eax)
	jmp	Lj115
Lj96:
	pushl	$3
	pushl	$1
	leal	-40(%ebp),%ecx
	leal	-312(%ebp),%eax
	movl	$255,%edx
	call	fpc_chararray_to_shortstr
	leal	-312(%ebp),%eax
	movl	$_$MODDEC$_Ld5,%edx
	call	fpc_shortstr_compare_equal
	testl	%eax,%eax
	je	Lj116
	jmp	Lj117
Lj116:
	movl	-12(%ebp),%eax
	movl	$31,1384(%eax)
	movl	-12(%ebp),%eax
	movl	$6,1388(%eax)
	jmp	Lj136
Lj117:
	pushl	$3
	pushl	$1
	leal	-40(%ebp),%ecx
	leal	-312(%ebp),%eax
	movl	$255,%edx
	call	fpc_chararray_to_shortstr
	leal	-312(%ebp),%eax
	movl	$_$MODDEC$_Ld6,%edx
	call	fpc_shortstr_compare_equal
	testl	%eax,%eax
	je	Lj137
	jmp	Lj138
Lj137:
	movl	-12(%ebp),%eax
	movl	$31,1384(%eax)
	movl	-12(%ebp),%eax
	movl	$8,1388(%eax)
	jmp	Lj157
Lj138:
	movl	-12(%ebp),%eax
	movl	$15,1384(%eax)
	movl	-12(%ebp),%eax
	movl	$4,1388(%eax)
Lj157:
Lj136:
Lj115:
Lj94:
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	-12(%ebp),%edx
	movl	$20,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	addl	$20,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	1384(%eax),%ebx
	movl	$1,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj171
	decl	-24(%ebp)
	.balign 4,0x90
Lj172:
	incl	-24(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	(%edx,%eax,1),%eax
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%edx
	imull	$44,%edx
	leal	-24(%ecx,%edx),%edx
	movl	$22,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	addl	$22,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movzbw	(%eax,%edx,1),%ax
	movzwl	%ax,%eax
	shll	$8,%eax
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	incl	%edx
	movzbl	(%ecx,%edx,1),%edx
	orl	%edx,%eax
	movw	%ax,-44(%ebp)
	addl	$2,-20(%ebp)
	movzwl	-44(%ebp),%eax
	shll	$1,%eax
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%edx
	imull	$44,%edx
	movl	%eax,(%ecx,%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	(%edx,%eax,1),%al
	andb	$15,%al
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%edx
	imull	$44,%edx
	movb	%al,4(%ecx,%edx)
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$44,%eax
	movb	4(%edx,%eax),%al
	cmpb	$7,%al
	jg	Lj185
	jmp	Lj186
Lj185:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$44,%eax
	subb	$16,4(%edx,%eax)
Lj186:
	incl	-20(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%esi
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%eax
	imull	$44,%eax
	movb	(%edx,%esi,1),%dl
	movb	%dl,5(%ecx,%eax)
	incl	-20(%ebp)
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$44,%eax
	movzbl	5(%edx,%eax),%eax
	cmpl	$64,%eax
	jg	Lj189
	jmp	Lj190
Lj189:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$44,%eax
	movb	$64,5(%edx,%eax)
Lj190:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movzbw	(%eax,%edx,1),%ax
	movzwl	%ax,%eax
	shll	$8,%eax
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	incl	%edx
	movzbl	(%ecx,%edx,1),%edx
	orl	%edx,%eax
	movw	%ax,-46(%ebp)
	addl	$2,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movzbw	(%eax,%edx,1),%ax
	movzwl	%ax,%eax
	shll	$8,%eax
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	incl	%edx
	movzbl	(%ecx,%edx,1),%edx
	orl	%edx,%eax
	movw	%ax,-48(%ebp)
	addl	$2,-20(%ebp)
	movzwl	-46(%ebp),%eax
	shll	$1,%eax
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%edx
	imull	$44,%edx
	movl	%eax,8(%ecx,%edx)
	movzwl	-48(%ebp),%eax
	shll	$1,%eax
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%edx
	imull	$44,%edx
	movl	%eax,12(%ecx,%edx)
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$44,%eax
	movl	12(%edx,%eax),%eax
	cmpl	$2,%eax
	jbe	Lj201
	jmp	Lj202
Lj201:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$44,%eax
	movl	$0,12(%edx,%eax)
Lj202:
	cmpl	-24(%ebp),%ebx
	jg	Lj172
Lj171:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%ecx
	movb	(%edx,%eax,1),%al
	movb	%al,1396(%ecx)
	incl	-20(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%ecx
	movb	(%edx,%eax,1),%al
	movb	%al,1397(%ecx)
	incl	-20(%ebp)
	movb	$0,-41(%ebp)
	movl	$0,-24(%ebp)
	decl	-24(%ebp)
	.balign 4,0x90
Lj213:
	incl	-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%ebx
	movl	-24(%ebp),%ecx
	movb	(%eax,%edx,1),%al
	movb	%al,1398(%ebx,%ecx,1)
	incl	-20(%ebp)
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	movb	1398(%edx,%eax,1),%al
	cmpb	-41(%ebp),%al
	ja	Lj216
	jmp	Lj217
Lj216:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	movb	1398(%edx,%eax,1),%al
	movb	%al,-41(%ebp)
Lj217:
	cmpl	$127,-24(%ebp)
	jl	Lj213
	movzbl	-41(%ebp),%edx
	incl	%edx
	movl	-12(%ebp),%eax
	movl	%edx,1392(%eax)
	movl	-12(%ebp),%eax
	movl	1384(%eax),%eax
	cmpl	$31,%eax
	je	Lj222
	jmp	Lj223
Lj222:
	addl	$4,-20(%ebp)
Lj223:
	movl	-12(%ebp),%eax
	movl	1392(%eax),%ebx
	decl	%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj225
	decl	-24(%ebp)
	.balign 4,0x90
Lj226:
	incl	-24(%ebp)
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	leal	1528(%edx,%eax,4),%eax
	movl	$3072,%edx
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	1528(%eax,%edx,4),%eax
	movb	$0,%cl
	movl	$3072,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	$0,-36(%ebp)
	decl	-36(%ebp)
	.balign 4,0x90
Lj239:
	incl	-36(%ebp)
	movl	-12(%ebp),%eax
	movl	1388(%eax),%eax
	decl	%eax
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%eax
	jl	Lj241
	decl	-32(%ebp)
	.balign 4,0x90
Lj242:
	incl	-32(%ebp)
	movl	-20(%ebp),%edx
	addl	$4,%edx
	cmpl	-8(%ebp),%edx
	jg	Lj243
	jmp	Lj244
Lj243:
	jmp	Lj241
Lj244:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%ecx
	movb	(%edx,%ecx,1),%dl
	movb	%dl,-52(%ebp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	incl	%edx
	movb	(%ecx,%edx,1),%dl
	movb	%dl,-51(%ebp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	addl	$2,%edx
	movb	(%ecx,%edx,1),%dl
	movb	%dl,-50(%ebp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	addl	$3,%edx
	movb	(%ecx,%edx,1),%dl
	movb	%dl,-49(%ebp)
	addl	$4,-20(%ebp)
	movb	-52(%ebp),%dl
	andb	$240,%dl
	movzbl	%dl,%edx
	movzbl	-50(%ebp),%ecx
	shrl	$4,%ecx
	orl	%ecx,%edx
	movl	-12(%ebp),%esi
	movl	-24(%ebp),%ecx
	movl	1528(%esi,%ecx,4),%esi
	movl	-32(%ebp),%ecx
	imull	$384,%ecx
	movl	-36(%ebp),%edi
	leal	(%esi,%ecx),%ecx
	imull	$6,%edi
	movb	%dl,(%ecx,%edi)
	movzbw	-52(%ebp),%dx
	andw	$15,%dx
	movzwl	%dx,%edx
	shll	$8,%edx
	movzbl	-51(%ebp),%ecx
	orl	%ecx,%edx
	movl	-12(%ebp),%esi
	movl	-24(%ebp),%ecx
	movl	1528(%esi,%ecx,4),%esi
	movl	-32(%ebp),%ecx
	imull	$384,%ecx
	movl	-36(%ebp),%edi
	leal	(%esi,%ecx),%ecx
	imull	$6,%edi
	movw	%dx,2(%ecx,%edi)
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	1528(%ecx,%edx,4),%esi
	movl	-32(%ebp),%edx
	imull	$384,%edx
	movl	-36(%ebp),%ecx
	leal	(%esi,%edx),%esi
	imull	$6,%ecx
	movb	-50(%ebp),%dl
	andb	$15,%dl
	movb	%dl,4(%esi,%ecx)
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	1528(%edx,%ecx,4),%esi
	movl	-32(%ebp),%edx
	imull	$384,%edx
	movl	-36(%ebp),%ecx
	leal	(%esi,%edx),%esi
	imull	$6,%ecx
	movb	-49(%ebp),%dl
	movb	%dl,5(%esi,%ecx)
	cmpl	-32(%ebp),%eax
	jg	Lj242
Lj241:
	cmpl	$63,-36(%ebp)
	jl	Lj239
	cmpl	-24(%ebp),%ebx
	jg	Lj226
Lj225:
	movl	-12(%ebp),%eax
	movl	1384(%eax),%ebx
	movl	$1,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj262
	decl	-24(%ebp)
	.balign 4,0x90
Lj263:
	incl	-24(%ebp)
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$44,%eax
	movl	(%edx,%eax),%eax
	cmpl	$0,%eax
	ja	Lj264
	jmp	Lj265
Lj264:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$44,%eax
	movl	(%edx,%eax),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	cmpl	-8(%ebp),%edx
	jg	Lj266
	jmp	Lj267
Lj266:
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$44,%eax
	movl	%ecx,(%edx,%eax)
Lj267:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$44,%eax
	movl	(%edx,%eax),%eax
	cmpl	$0,%eax
	ja	Lj270
	jmp	Lj271
Lj270:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$44,%eax
	movl	(%edx,%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%eax
	imull	$44,%eax
	leal	16(%ecx,%eax),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$44,%eax
	movl	16(%edx,%eax),%edx
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%eax
	leal	(%ecx,%eax,1),%eax
	movl	-12(%ebp),%esi
	movl	-24(%ebp),%ecx
	imull	$44,%ecx
	movl	(%esi,%ecx),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$44,%eax
	movl	(%edx,%eax),%eax
	addl	%eax,-20(%ebp)
Lj271:
Lj265:
	cmpl	-24(%ebp),%ebx
	jg	Lj263
Lj262:
	movl	-12(%ebp),%eax
	movb	$1,2040(%eax)
	movb	$1,-13(%ebp)
Lj26:
	movb	-13(%ebp),%al
	movl	-324(%ebp),%ebx
	movl	-320(%ebp),%esi
	movl	-316(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	MODDEC_MODLOADFILE$SHORTSTRING$TMODFILE$$BOOLEAN
MODDEC_MODLOADFILE$SHORTSTRING$TMODFILE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$360,%esp
	movl	%ebx,-360(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$2044,%edx
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
	jne	Lj304
	jmp	Lj305
Lj304:
	jmp	Lj286
Lj305:
	leal	-344(%ebp),%eax
	call	SYSTEM_FILESIZE$file$$INT64
	movl	%eax,%ebx
	call	FPC_IOCHECK
	movl	%ebx,-352(%ebp)
	movl	-352(%ebp),%eax
	cmpl	$600,%eax
	jl	Lj310
	jmp	Lj311
Lj310:
	leal	-344(%ebp),%eax
	call	SYSTEM_CLOSE$file
	call	FPC_IOCHECK
	jmp	Lj286
Lj311:
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
	jne	Lj328
	jmp	Lj329
Lj328:
	movl	-348(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	jmp	Lj286
Lj329:
	movl	-8(%ebp),%ecx
	movl	-352(%ebp),%edx
	movl	-348(%ebp),%eax
	call	MODDEC_MODLOADMEM$PBYTE$LONGINT$TMODFILE$$BOOLEAN
	movb	%al,-9(%ebp)
	movl	-348(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj286:
	movb	-9(%ebp),%al
	movl	-360(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	MODDEC_MODFREE$TMODFILE
MODDEC_MODFREE$TMODFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	decl	-8(%ebp)
	.balign 4,0x90
Lj346:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	1528(%eax,%edx,4),%eax
	testl	%eax,%eax
	jne	Lj347
	jmp	Lj348
Lj347:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	1528(%edx,%eax,4),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	$0,1528(%eax,%edx,4)
Lj348:
	cmpl	$127,-8(%ebp)
	jl	Lj346
	movl	$1,-8(%ebp)
	decl	-8(%ebp)
	.balign 4,0x90
Lj355:
	incl	-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	imull	$44,%eax
	movl	16(%edx,%eax),%eax
	testl	%eax,%eax
	jne	Lj356
	jmp	Lj357
Lj356:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	imull	$44,%eax
	movl	16(%edx,%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	imull	$44,%eax
	movl	$0,16(%edx,%eax)
Lj357:
	cmpl	$31,-8(%ebp)
	jl	Lj355
	movl	-4(%ebp),%eax
	movb	$0,2040(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	MODDEC_MODDURATION$TMODFILE$$LONGINT
MODDEC_MODDURATION$TMODFILE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	$125,-16(%ebp)
	movl	$6,-12(%ebp)
	movl	-4(%ebp),%eax
	movzbl	1396(%eax),%eax
	shll	$6,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	imull	%edx,%eax
	imull	$1000,%eax
	movl	-16(%ebp),%ecx
	imull	$400,%ecx
	cltd
	idivl	%ecx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	MODDEC_MODRENDER$TMODFILE$LONGWORD$PSMALLINT$$LONGINT
MODDEC_MODRENDER$TMODFILE$LONGWORD$PSMALLINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$420,%esp
	movl	%ebx,-420(%ebp)
	movl	%esi,-416(%ebp)
	movl	%edi,-412(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$-1,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	movb	2040(%eax),%al
	testb	%al,%al
	je	Lj380
	jmp	Lj381
Lj380:
	jmp	Lj374
Lj381:
	movl	-4(%ebp),%eax
	call	MODDEC_MODDURATION$TMODFILE$$LONGINT
	addl	$2,%eax
	movl	-8(%ebp),%edx
	imull	%edx,%eax
	shll	$2,%eax
	movl	%eax,-372(%ebp)
	movl	-372(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj386
	jmp	Lj387
Lj386:
	movl	$60,%eax
	mull	-8(%ebp)
	shll	$2,%eax
	movl	%eax,-372(%ebp)
Lj387:
	movl	-372(%ebp),%edx
	leal	-360(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-360(%ebp),%eax
	movl	-372(%ebp),%edx
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leal	-304(%ebp),%eax
	movb	$0,%cl
	movl	$288,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	$125,-308(%ebp)
	movl	$6,-312(%ebp)
	movl	$0,-368(%ebp)
	movl	$-1,-400(%ebp)
	movl	-4(%ebp),%eax
	movzbl	1396(%eax),%eax
	decl	%eax
	movl	%eax,-408(%ebp)
	movl	$0,-332(%ebp)
	movl	-408(%ebp),%eax
	cmpl	-332(%ebp),%eax
	jl	Lj415
	decl	-332(%ebp)
	.balign 4,0x90
Lj416:
	incl	-332(%ebp)
	movl	-4(%ebp),%eax
	movl	-332(%ebp),%edx
	movzbl	1398(%eax,%edx,1),%edx
	movl	-4(%ebp),%eax
	cmpl	1392(%eax),%edx
	jge	Lj417
	jmp	Lj418
Lj417:
	jmp	Lj414
Lj418:
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-332(%ebp),%eax
	movzbl	1398(%edx,%eax,1),%eax
	movl	1528(%ecx,%eax,4),%eax
	movl	%eax,-336(%ebp)
	movl	-336(%ebp),%eax
	testl	%eax,%eax
	je	Lj421
	jmp	Lj422
Lj421:
	jmp	Lj414
Lj422:
	movl	$0,-324(%ebp)
	jmp	Lj426
	.balign 4,0x90
Lj425:
	movb	$0,-391(%ebp)
	movl	$0,-396(%ebp)
	movl	-4(%ebp),%eax
	movl	1388(%eax),%ebx
	decl	%ebx
	movl	$0,-348(%ebp)
	cmpl	-348(%ebp),%ebx
	jl	Lj433
	decl	-348(%ebp)
	.balign 4,0x90
Lj434:
	incl	-348(%ebp)
	movl	-336(%ebp),%edx
	movl	-348(%ebp),%eax
	imull	$384,%eax
	movl	-324(%ebp),%ecx
	leal	(%edx,%eax),%eax
	imull	$6,%ecx
	movl	(%eax,%ecx),%edx
	movl	%edx,-342(%ebp)
	movw	4(%eax,%ecx),%ax
	movw	%ax,-338(%ebp)
	movzbl	-342(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj437
	jmp	Lj438
Lj437:
	movb	-342(%ebp),%al
	movb	%al,-353(%ebp)
	movzbl	-353(%ebp),%eax
	movl	-4(%ebp),%edx
	cmpl	1384(%edx),%eax
	jle	Lj441
	jmp	Lj442
Lj441:
	movl	-348(%ebp),%edx
	imull	$36,%edx
	movb	-353(%ebp),%al
	movb	%al,-304(%ebp,%edx)
	movl	-348(%ebp),%ecx
	imull	$36,%ecx
	movl	-4(%ebp),%edx
	movzbl	-353(%ebp),%eax
	imull	$44,%eax
	movzbl	5(%edx,%eax),%eax
	movl	%eax,-296(%ebp,%ecx)
	movl	-348(%ebp),%edx
	imull	$36,%edx
	movl	-4(%ebp),%ecx
	movzbl	-353(%ebp),%eax
	imull	$44,%eax
	movb	4(%ecx,%eax),%al
	movb	%al,-292(%ebp,%edx)
Lj442:
Lj438:
	movzwl	-340(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj449
	jmp	Lj450
Lj449:
	movl	-348(%ebp),%eax
	imull	$36,%eax
	movw	-340(%ebp),%dx
	movw	%dx,-302(%ebp,%eax)
	movl	-348(%ebp),%eax
	imull	$36,%eax
	movw	-340(%ebp),%dx
	movw	%dx,-300(%ebp,%eax)
	movl	-348(%ebp),%eax
	imull	$36,%eax
	movl	$0,-288(%ebp,%eax)
	movl	-348(%ebp),%eax
	imull	$36,%eax
	movb	$1,-280(%ebp,%eax)
	movzwl	-340(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj459
	jmp	Lj460
Lj459:
	movw	-340(%ebp),%ax
	call	MODDEC_PERIODTOFREQ$WORD$$LONGWORD
	shll	$16,%eax
	xorl	%edx,%edx
	divl	-8(%ebp)
	movl	-348(%ebp),%edx
	imull	$36,%edx
	movl	%eax,-284(%ebp,%edx)
Lj460:
Lj450:
	movzbl	-337(%ebp),%eax
	shrl	$4,%eax
	movb	%al,-389(%ebp)
	movb	-337(%ebp),%al
	andb	$15,%al
	movb	%al,-390(%ebp)
	movb	-338(%ebp),%al
	cmpb	$11,%al
	jb	Lj470
	subb	$11,%al
	je	Lj471
	decb	%al
	je	Lj472
	decb	%al
	je	Lj473
	subb	$2,%al
	je	Lj474
	jmp	Lj470
Lj471:
	movzbl	-337(%ebp),%eax
	movl	%eax,-400(%ebp)
	jmp	Lj469
Lj472:
	movzbl	-337(%ebp),%eax
	call	MODDEC_CLAMPVOL$LONGINT$$LONGINT
	movl	-348(%ebp),%edx
	imull	$36,%edx
	movl	%eax,-296(%ebp,%edx)
	jmp	Lj469
Lj473:
	movb	$1,-391(%ebp)
	movzbl	-389(%ebp),%edx
	imull	$10,%edx
	movzbl	-390(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-396(%ebp)
	jmp	Lj469
Lj474:
	movzbl	-337(%ebp),%eax
	cmpl	$32,%eax
	jl	Lj485
	jmp	Lj486
Lj485:
	movzbl	-337(%ebp),%eax
	movl	%eax,-312(%ebp)
	jmp	Lj489
Lj486:
	movzbl	-337(%ebp),%eax
	movl	%eax,-308(%ebp)
Lj489:
	jmp	Lj469
Lj470:
Lj469:
	cmpl	-348(%ebp),%ebx
	jg	Lj434
Lj433:
	movl	-308(%ebp),%eax
	shll	$1,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	pushl	%edx
	pushl	%eax
	movl	$5,%eax
	mull	-8(%ebp)
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	call	fpc_div_int64
	movl	%eax,-316(%ebp)
	movl	-312(%ebp),%eax
	decl	%eax
	movl	%eax,-404(%ebp)
	movl	$0,-320(%ebp)
	movl	-404(%ebp),%eax
	cmpl	-320(%ebp),%eax
	jl	Lj499
	decl	-320(%ebp)
	.balign 4,0x90
Lj500:
	incl	-320(%ebp)
	movl	-320(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj501
	jmp	Lj502
Lj501:
	movl	-4(%ebp),%eax
	movl	1388(%eax),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-348(%ebp)
	cmpl	-348(%ebp),%ebx
	jl	Lj504
	decl	-348(%ebp)
	.balign 4,0x90
Lj505:
	incl	-348(%ebp)
	movl	-336(%ebp),%ecx
	movl	-348(%ebp),%eax
	imull	$384,%eax
	movl	-324(%ebp),%edx
	leal	(%ecx,%eax),%ecx
	imull	$6,%edx
	movl	(%ecx,%edx),%eax
	movl	%eax,-342(%ebp)
	movw	4(%ecx,%edx),%ax
	movw	%ax,-338(%ebp)
	movzbl	-337(%ebp),%eax
	shrl	$4,%eax
	movb	%al,-389(%ebp)
	movb	-337(%ebp),%al
	andb	$15,%al
	movb	%al,-390(%ebp)
	movb	-338(%ebp),%al
	testb	%al,%al
	je	Lj514
	decb	%al
	je	Lj515
	decb	%al
	je	Lj516
	subb	$8,%al
	je	Lj517
	jmp	Lj513
Lj514:
	movzbl	-337(%ebp),%eax
	testl	%eax,%eax
	jne	Lj518
	jmp	Lj519
Lj518:
	movl	-320(%ebp),%eax
	cltd
	movl	$3,%ecx
	idivl	%ecx
	movl	-348(%ebp),%eax
	imull	$36,%eax
	movb	%dl,-270(%ebp,%eax)
Lj519:
	jmp	Lj512
Lj515:
	movl	-348(%ebp),%eax
	imull	$36,%eax
	movzbw	-337(%ebp),%dx
	cmpw	-302(%ebp,%eax),%dx
	jb	Lj522
	jmp	Lj523
Lj522:
	movzbw	-337(%ebp),%dx
	movl	-348(%ebp),%eax
	imull	$36,%eax
	subw	%dx,-302(%ebp,%eax)
Lj523:
	jmp	Lj512
Lj516:
	movzbw	-337(%ebp),%dx
	movl	-348(%ebp),%eax
	imull	$36,%eax
	addw	%dx,-302(%ebp,%eax)
	jmp	Lj512
Lj517:
	movzbl	-389(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj524
	jmp	Lj525
Lj524:
	movl	-348(%ebp),%eax
	imull	$36,%eax
	movzbl	-389(%ebp),%edx
	movl	-296(%ebp,%eax),%eax
	addl	%edx,%eax
	call	MODDEC_CLAMPVOL$LONGINT$$LONGINT
	movl	-348(%ebp),%edx
	imull	$36,%edx
	movl	%eax,-296(%ebp,%edx)
	jmp	Lj530
Lj525:
	movl	-348(%ebp),%eax
	imull	$36,%eax
	movzbl	-390(%ebp),%edx
	movl	-296(%ebp,%eax),%eax
	subl	%edx,%eax
	call	MODDEC_CLAMPVOL$LONGINT$$LONGINT
	movl	-348(%ebp),%edx
	imull	$36,%edx
	movl	%eax,-296(%ebp,%edx)
Lj530:
	jmp	Lj512
Lj513:
Lj512:
	movl	-348(%ebp),%eax
	imull	$36,%eax
	movzwl	-302(%ebp,%eax),%eax
	cmpl	$0,%eax
	jg	Lj535
	jmp	Lj536
Lj535:
	movl	-348(%ebp),%eax
	imull	$36,%eax
	movw	-302(%ebp,%eax),%ax
	call	MODDEC_PERIODTOFREQ$WORD$$LONGWORD
	shll	$16,%eax
	xorl	%edx,%edx
	divl	-8(%ebp)
	movl	-348(%ebp),%edx
	imull	$36,%edx
	movl	%eax,-284(%ebp,%edx)
Lj536:
	cmpl	-348(%ebp),%ebx
	jg	Lj505
Lj504:
Lj502:
	movl	-316(%ebp),%eax
	decl	%eax
	movl	%eax,%edx
	movl	$0,-352(%ebp)
	cmpl	-352(%ebp),%edx
	jl	Lj542
	decl	-352(%ebp)
	.balign 4,0x90
Lj543:
	incl	-352(%ebp)
	movl	-368(%ebp),%eax
	incl	%eax
	shll	$1,%eax
	cmpl	-372(%ebp),%eax
	jge	Lj544
	jmp	Lj545
Lj544:
	jmp	Lj542
Lj545:
	movl	$0,-376(%ebp)
	movl	$0,-380(%ebp)
	movl	-4(%ebp),%eax
	movl	1388(%eax),%eax
	decl	%eax
	movl	$0,-348(%ebp)
	cmpl	-348(%ebp),%eax
	jl	Lj551
	decl	-348(%ebp)
	.balign 4,0x90
Lj552:
	incl	-348(%ebp)
	movl	-348(%ebp),%ecx
	imull	$36,%ecx
	movb	-280(%ebp,%ecx),%cl
	testb	%cl,%cl
	je	Lj553
	jmp	Lj554
Lj553:
	jmp	Lj550
Lj554:
	movl	-348(%ebp),%ecx
	imull	$36,%ecx
	movzbl	-304(%ebp,%ecx),%ecx
	testl	%ecx,%ecx
	je	Lj555
	jmp	Lj556
Lj555:
	jmp	Lj550
Lj556:
	movl	-348(%ebp),%ecx
	imull	$36,%ecx
	movb	-304(%ebp,%ecx),%cl
	movb	%cl,-353(%ebp)
	movzbl	-353(%ebp),%ecx
	movl	-4(%ebp),%ebx
	cmpl	1384(%ebx),%ecx
	jg	Lj559
	jmp	Lj561
Lj561:
	movl	-4(%ebp),%ebx
	movzbl	-353(%ebp),%ecx
	imull	$44,%ecx
	movl	16(%ebx,%ecx),%ecx
	testl	%ecx,%ecx
	je	Lj559
	jmp	Lj560
Lj559:
	jmp	Lj550
Lj560:
	movl	-348(%ebp),%ecx
	imull	$36,%ecx
	movl	-288(%ebp,%ecx),%ecx
	shrl	$16,%ecx
	movl	%ecx,-388(%ebp)
	movl	-4(%ebp),%ebx
	movzbl	-353(%ebp),%ecx
	imull	$44,%ecx
	movl	12(%ebx,%ecx),%ecx
	cmpl	$0,%ecx
	ja	Lj564
	jmp	Lj565
Lj564:
	jmp	Lj567
	.balign 4,0x90
Lj566:
	movl	-4(%ebp),%ebx
	movzbl	-353(%ebp),%ecx
	imull	$44,%ecx
	movl	12(%ebx,%ecx),%ecx
	subl	%ecx,-388(%ebp)
Lj567:
	movl	-4(%ebp),%ebx
	movzbl	-353(%ebp),%ecx
	imull	$44,%ecx
	movl	-4(%ebp),%esi
	movzbl	-353(%ebp),%edi
	imull	$44,%edi
	movl	8(%ebx,%ecx),%ebx
	movl	12(%esi,%edi),%ecx
	addl	%ecx,%ebx
	cmpl	-388(%ebp),%ebx
	jbe	Lj566
	jmp	Lj568
Lj568:
	jmp	Lj569
Lj565:
	movl	-4(%ebp),%ebx
	movzbl	-353(%ebp),%ecx
	imull	$44,%ecx
	movl	(%ebx,%ecx),%ecx
	cmpl	-388(%ebp),%ecx
	jbe	Lj570
	jmp	Lj571
Lj570:
	movl	-348(%ebp),%ecx
	imull	$36,%ecx
	movb	$0,-280(%ebp,%ecx)
	jmp	Lj550
Lj571:
Lj569:
	movl	-4(%ebp),%ebx
	movzbl	-353(%ebp),%ecx
	imull	$44,%ecx
	movl	16(%ebx,%ecx),%ecx
	movl	-388(%ebp),%ebx
	movsbl	(%ecx,%ebx,1),%ebx
	movl	-348(%ebp),%ecx
	imull	$36,%ecx
	movl	-296(%ebp,%ecx),%ecx
	imull	%ecx,%ebx
	movl	%ebx,-384(%ebp)
	movl	-348(%ebp),%ecx
	andl	$3,%ecx
	cmpl	$0,%ecx
	je	Lj578
	cmpl	$3,%ecx
	je	Lj578
Lj578:
	je	Lj576
	jmp	Lj577
Lj576:
	movl	-384(%ebp),%ecx
	addl	%ecx,-376(%ebp)
	movl	-384(%ebp),%ecx
	movl	%ecx,%ebx
	sarl	$31,%ebx
	andl	$3,%ebx
	addl	%ebx,%ecx
	sarl	$2,%ecx
	addl	%ecx,-380(%ebp)
	jmp	Lj579
Lj577:
	movl	-384(%ebp),%ecx
	addl	%ecx,-380(%ebp)
	movl	-384(%ebp),%ecx
	movl	%ecx,%ebx
	sarl	$31,%ebx
	andl	$3,%ebx
	addl	%ebx,%ecx
	sarl	$2,%ecx
	addl	%ecx,-376(%ebp)
Lj579:
	movl	-348(%ebp),%ecx
	imull	$36,%ecx
	movl	-348(%ebp),%ebx
	imull	$36,%ebx
	movl	-284(%ebp,%ecx),%ecx
	addl	%ecx,-288(%ebp,%ebx)
Lj550:
	cmpl	-348(%ebp),%eax
	jg	Lj552
Lj551:
	movl	-376(%ebp),%eax
	cmpl	$32767,%eax
	jg	Lj580
	jmp	Lj581
Lj580:
	movl	$32767,-376(%ebp)
Lj581:
	movl	-376(%ebp),%eax
	cmpl	$-32768,%eax
	jl	Lj584
	jmp	Lj585
Lj584:
	movl	$-32768,-376(%ebp)
Lj585:
	movl	-380(%ebp),%eax
	cmpl	$32767,%eax
	jg	Lj588
	jmp	Lj589
Lj588:
	movl	$32767,-380(%ebp)
Lj589:
	movl	-380(%ebp),%eax
	cmpl	$-32768,%eax
	jl	Lj592
	jmp	Lj593
Lj592:
	movl	$-32768,-380(%ebp)
Lj593:
	movl	-360(%ebp),%ecx
	movl	-368(%ebp),%eax
	shll	$1,%eax
	movw	-376(%ebp),%bx
	movw	%bx,(%ecx,%eax,2)
	movl	-360(%ebp),%ebx
	movl	-368(%ebp),%eax
	shll	$1,%eax
	incl	%eax
	movw	-380(%ebp),%cx
	movw	%cx,(%ebx,%eax,2)
	incl	-368(%ebp)
	cmpl	-352(%ebp),%edx
	jg	Lj543
Lj542:
	movl	-404(%ebp),%eax
	cmpl	-320(%ebp),%eax
	jg	Lj500
Lj499:
	incl	-324(%ebp)
	cmpb	$0,-391(%ebp)
	jne	Lj600
	jmp	Lj601
Lj600:
	jmp	Lj427
Lj601:
	movl	-400(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj602
	jmp	Lj603
Lj602:
	jmp	Lj427
Lj603:
Lj426:
	movl	-324(%ebp),%eax
	cmpl	$64,%eax
	jl	Lj425
	jmp	Lj427
Lj427:
	movl	-400(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj604
	jmp	Lj605
Lj604:
	movl	$-1,-400(%ebp)
Lj605:
Lj414:
	movl	-408(%ebp),%eax
	cmpl	-332(%ebp),%eax
	jg	Lj416
Lj415:
	movl	-368(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-368(%ebp),%eax
	shll	$2,%eax
	movl	%eax,-372(%ebp)
	movl	-372(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-360(%ebp),%eax
	movl	-372(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-360(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj374:
	movl	-16(%ebp),%eax
	movl	-420(%ebp),%ebx
	movl	-416(%ebp),%esi
	movl	-412(%ebp),%edi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_MODDEC
THREADVARLIST_MODDEC:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 2
TC_MODDEC_PERIODTABLE:
	.short	856,808,762,720,678,640,604,570,538,508,480,453,428,404,381,360,339,320,302,285,269,254,240,226
	.short	214,202,190,180,170,160,151,143,135,127,120,113

.data
TC_MODDEC_SINETABLE:
	.byte	0,24,49,74,97,120,141,161,180,197,212,224,235,244,250,253,255,253,250,244,235,224,212,197,180,161
	.byte	141,120,97,74,49,24

.data
	.balign 4
.globl	_$MODDEC$_Ld1
_$MODDEC$_Ld1:
	.ascii	"\004M.K.\000"

.data
	.balign 4
.globl	_$MODDEC$_Ld2
_$MODDEC$_Ld2:
	.ascii	"\004M!K!\000"

.data
	.balign 4
.globl	_$MODDEC$_Ld3
_$MODDEC$_Ld3:
	.ascii	"\004FLT4\000"

.data
	.balign 4
.globl	_$MODDEC$_Ld4
_$MODDEC$_Ld4:
	.ascii	"\0044CHN\000"

.data
	.balign 4
.globl	_$MODDEC$_Ld5
_$MODDEC$_Ld5:
	.ascii	"\0046CHN\000"

.data
	.balign 4
.globl	_$MODDEC$_Ld6
_$MODDEC$_Ld6:
	.ascii	"\0048CHN\000"
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
.globl	INIT_MODDEC_TMODSAMPLE
INIT_MODDEC_TMODSAMPLE:
	.byte	13,10
	.ascii	"TMODSample"
	.long	44,0

.data
	.balign 4
.globl	RTTI_MODDEC_DEF1
RTTI_MODDEC_DEF1:
	.byte	12
	.ascii	"\000"
	.long	1,22
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_MODDEC_TMODSAMPLE
RTTI_MODDEC_TMODSAMPLE:
	.byte	13,10
	.ascii	"TMODSample"
	.long	44,7
	.long	RTTI_MODDEC_DEF1
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	24
	.long	RTTI_SYSTEM_SHORTINT
	.long	28
	.long	RTTI_SYSTEM_BYTE
	.long	29
	.long	RTTI_SYSTEM_LONGWORD
	.long	32
	.long	RTTI_SYSTEM_LONGWORD
	.long	36
	.long	RTTI_SYSTEM_PSHORTINT
	.long	40

.data
	.balign 4
.globl	INIT_MODDEC_TMODNOTE
INIT_MODDEC_TMODNOTE:
	.byte	13,8
	.ascii	"TMODNote"
	.long	6,0

.data
	.balign 4
.globl	RTTI_MODDEC_TMODNOTE
RTTI_MODDEC_TMODNOTE:
	.byte	13,8
	.ascii	"TMODNote"
	.long	6,4
	.long	RTTI_SYSTEM_BYTE
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_BYTE
	.long	4
	.long	RTTI_SYSTEM_BYTE
	.long	5

.data
	.balign 4
.globl	INIT_MODDEC_DEF4
INIT_MODDEC_DEF4:
	.byte	12
	.ascii	"\000"
	.long	6,64
	.long	INIT_MODDEC_TMODNOTE
	.long	-1

.data
	.balign 4
.globl	INIT_MODDEC_TMODPATTERN
INIT_MODDEC_TMODPATTERN:
	.byte	12
	.ascii	"\013TMODPattern"
	.long	384,8
	.long	INIT_MODDEC_DEF4
	.long	-1

.data
	.balign 4
.globl	RTTI_MODDEC_DEF4
RTTI_MODDEC_DEF4:
	.byte	12
	.ascii	"\000"
	.long	6,64
	.long	RTTI_MODDEC_TMODNOTE
	.long	-1

.data
	.balign 4
.globl	RTTI_MODDEC_TMODPATTERN
RTTI_MODDEC_TMODPATTERN:
	.byte	12
	.ascii	"\013TMODPattern"
	.long	384,8
	.long	RTTI_MODDEC_DEF4
	.long	-1

.data
	.balign 4
.globl	INIT_MODDEC_PMODPATTERN
INIT_MODDEC_PMODPATTERN:
	.byte	0
	.ascii	"\013PMODPattern"

.data
	.balign 4
.globl	RTTI_MODDEC_PMODPATTERN
RTTI_MODDEC_PMODPATTERN:
	.byte	0
	.ascii	"\013PMODPattern"

.data
	.balign 4
.globl	INIT_MODDEC_TMODCHANNEL
INIT_MODDEC_TMODCHANNEL:
	.byte	13,11
	.ascii	"TMODChannel"
	.long	36,0

.data
	.balign 4
.globl	RTTI_MODDEC_TMODCHANNEL
RTTI_MODDEC_TMODCHANNEL:
	.byte	13,11
	.ascii	"TMODChannel"
	.long	36,16
	.long	RTTI_SYSTEM_BYTE
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_LONGINT
	.long	8
	.long	RTTI_SYSTEM_SHORTINT
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_LONGWORD
	.long	20
	.long	RTTI_SYSTEM_BOOLEAN
	.long	24
	.long	RTTI_SYSTEM_BYTE
	.long	25
	.long	RTTI_SYSTEM_BYTE
	.long	26
	.long	RTTI_SYSTEM_BYTE
	.long	27
	.long	RTTI_SYSTEM_BYTE
	.long	28
	.long	RTTI_SYSTEM_BYTE
	.long	29
	.long	RTTI_SYSTEM_BYTE
	.long	30
	.long	RTTI_SYSTEM_WORD
	.long	32
	.long	RTTI_SYSTEM_BYTE
	.long	34

.data
	.balign 4
.globl	INIT_MODDEC_TMODFILE
INIT_MODDEC_TMODFILE:
	.byte	13,8
	.ascii	"TMODFile"
	.long	2044,0

.data
	.balign 4
.globl	RTTI_MODDEC_DEF8
RTTI_MODDEC_DEF8:
	.byte	12
	.ascii	"\000"
	.long	1,20
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_MODDEC_DEF9
RTTI_MODDEC_DEF9:
	.byte	12
	.ascii	"\000"
	.long	44,31
	.long	RTTI_MODDEC_TMODSAMPLE
	.long	-1

.data
	.balign 4
.globl	RTTI_MODDEC_DEF10
RTTI_MODDEC_DEF10:
	.byte	12
	.ascii	"\000"
	.long	1,128
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_MODDEC_DEF11
RTTI_MODDEC_DEF11:
	.byte	12
	.ascii	"\000"
	.long	4,128
	.long	RTTI_MODDEC_PMODPATTERN
	.long	-1

.data
	.balign 4
.globl	RTTI_MODDEC_TMODFILE
RTTI_MODDEC_TMODFILE:
	.byte	13,8
	.ascii	"TMODFile"
	.long	2044,10
	.long	RTTI_MODDEC_DEF8
	.long	0
	.long	RTTI_MODDEC_DEF9
	.long	20
	.long	RTTI_SYSTEM_LONGINT
	.long	1384
	.long	RTTI_SYSTEM_LONGINT
	.long	1388
	.long	RTTI_SYSTEM_LONGINT
	.long	1392
	.long	RTTI_SYSTEM_BYTE
	.long	1396
	.long	RTTI_SYSTEM_BYTE
	.long	1397
	.long	RTTI_MODDEC_DEF10
	.long	1398
	.long	RTTI_MODDEC_DEF11
	.long	1528
	.long	RTTI_SYSTEM_BOOLEAN
	.long	2040
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

