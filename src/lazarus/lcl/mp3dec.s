	.file "mp3dec.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
MP3DEC_BITSINIT$TMP3BITS$PBYTE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
	movl	-12(%ebp),%eax
	shll	$3,%eax
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	leave
	ret

.text
	.balign 4,0x90
MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	jmp	Lj16
	.balign 4,0x90
Lj15:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	4(%edx),%eax
	jge	Lj18
	jmp	Lj19
Lj18:
	jmp	Lj11
Lj19:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$7,%eax
	addl	%eax,%edx
	sarl	$3,%edx
	movl	%edx,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	cltd
	movl	$8,%ecx
	idivl	%ecx
	movl	%edx,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	$8,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj26
	jmp	Lj27
Lj26:
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj27:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movzbl	(%eax,%edx,1),%edx
	movl	-20(%ebp),%ecx
	movl	$8,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	-24(%ebp),%eax
	subl	%eax,%ecx
	shrl	%cl,%edx
	movl	$1,%eax
	movl	-24(%ebp),%ecx
	shll	%cl,%eax
	decl	%eax
	andl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ecx
	shll	%cl,%eax
	orl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,8(%edx)
	movl	-24(%ebp),%eax
	subl	%eax,-8(%ebp)
Lj16:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj15
	jmp	Lj17
Lj17:
Lj11:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	MP3DEC_MP3FINDSYNC$PBYTE$LONGINT$LONGINT$$LONGINT
MP3DEC_MP3FINDSYNC$PBYTE$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$-1,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj40
	jmp	Lj39
Lj40:
	movl	-12(%ebp),%eax
	cmpl	$10,%eax
	jge	Lj38
	jmp	Lj39
Lj38:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$73,%al
	je	Lj44
	jmp	Lj42
Lj44:
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$68,%al
	je	Lj43
	jmp	Lj42
Lj43:
	movl	-4(%ebp),%eax
	movb	2(%eax),%al
	cmpb	$51,%al
	je	Lj41
	jmp	Lj42
Lj41:
	movl	-4(%ebp),%eax
	movzbl	6(%eax),%eax
	shll	$21,%eax
	movl	-4(%ebp),%edx
	movzbl	7(%edx),%edx
	shll	$14,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movzbl	8(%edx),%edx
	shll	$7,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movzbl	9(%edx),%edx
	orl	%edx,%eax
	addl	$10,%eax
	movl	%eax,-20(%ebp)
Lj42:
Lj39:
	jmp	Lj48
	.balign 4,0x90
Lj47:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$255,%al
	je	Lj52
	jmp	Lj51
Lj52:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	(%edx,%eax,1),%al
	andb	$224,%al
	cmpb	$224,%al
	je	Lj50
	jmp	Lj51
Lj50:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj32
Lj51:
	incl	-20(%ebp)
Lj48:
	movl	-12(%ebp),%eax
	decl	%eax
	cmpl	-20(%ebp),%eax
	jg	Lj47
	jmp	Lj49
Lj49:
Lj32:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	MP3DEC_MP3PARSEHEADER$PBYTE$LONGINT$LONGINT$TMP3FRAMEHEADER$$BOOLEAN
MP3DEC_MP3PARSEHEADER$PBYTE$LONGINT$LONGINT$TMP3FRAMEHEADER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$25,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	8(%ebp),%eax
	movb	$0,%cl
	movl	$24,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-8(%ebp),%eax
	addl	$4,%eax
	cmpl	-12(%ebp),%eax
	jg	Lj65
	jmp	Lj66
Lj65:
	jmp	Lj55
Lj66:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	incl	%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$16,%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movzbl	(%ecx,%edx,1),%edx
	shll	$24,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	addl	$2,%edx
	movzbl	(%ecx,%edx,1),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	addl	$3,%edx
	movzbl	(%ecx,%edx,1),%edx
	orl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	andl	$-2097152,%eax
	cmpl	$-2097152,%eax
	jne	Lj69
	jmp	Lj70
Lj69:
	jmp	Lj55
Lj70:
	movl	-20(%ebp),%eax
	shrl	$19,%eax
	andl	$3,%eax
	movb	%al,-21(%ebp)
	movl	-20(%ebp),%eax
	shrl	$17,%eax
	andl	$3,%eax
	movb	%al,-22(%ebp)
	movl	8(%ebp),%edx
	movl	-20(%ebp),%eax
	shrl	$16,%eax
	andl	$1,%eax
	testl	%eax,%eax
	seteb	3(%edx)
	movl	-20(%ebp),%eax
	shrl	$12,%eax
	andl	$15,%eax
	movb	%al,-23(%ebp)
	movl	-20(%ebp),%eax
	shrl	$10,%eax
	andl	$3,%eax
	movb	%al,-24(%ebp)
	movl	8(%ebp),%edx
	movl	-20(%ebp),%eax
	shrl	$9,%eax
	andl	$1,%eax
	cmpl	$1,%eax
	seteb	12(%edx)
	movl	-20(%ebp),%eax
	shrl	$6,%eax
	andl	$3,%eax
	movl	8(%ebp),%edx
	movb	%al,13(%edx)
	movl	-20(%ebp),%eax
	shrl	$4,%eax
	andl	$3,%eax
	movl	8(%ebp),%edx
	movb	%al,14(%edx)
	movzbl	-21(%ebp),%eax
	cmpl	$1,%eax
	je	Lj87
	jmp	Lj88
Lj87:
	jmp	Lj55
Lj88:
	movzbl	-22(%ebp),%eax
	testl	%eax,%eax
	je	Lj89
	jmp	Lj90
Lj89:
	jmp	Lj55
Lj90:
	movzbl	-23(%ebp),%eax
	cmpl	$15,%eax
	je	Lj91
	jmp	Lj92
Lj91:
	jmp	Lj55
Lj92:
	movzbl	-24(%ebp),%eax
	cmpl	$3,%eax
	je	Lj93
	jmp	Lj94
Lj93:
	jmp	Lj55
Lj94:
	movl	8(%ebp),%eax
	movb	-21(%ebp),%dl
	movb	%dl,1(%eax)
	movzbl	-22(%ebp),%edx
	movl	$4,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	8(%ebp),%eax
	movb	%dl,2(%eax)
	movl	8(%ebp),%eax
	movzbl	2(%eax),%eax
	cmpl	$3,%eax
	jne	Lj99
	jmp	Lj100
Lj99:
	jmp	Lj55
Lj100:
	movzbl	-21(%ebp),%eax
	cmpl	$3,%eax
	seteb	-25(%ebp)
	cmpb	$0,-25(%ebp)
	jne	Lj103
	jmp	Lj104
Lj103:
	movzbl	-23(%ebp),%eax
	movzwl	TC_MP3DEC_BITRATETABLE1L3(,%eax,2),%edx
	movl	8(%ebp),%eax
	movl	%edx,4(%eax)
	jmp	Lj107
Lj104:
	movzbl	-23(%ebp),%eax
	movzwl	TC_MP3DEC_BITRATETABLE2L3(,%eax,2),%edx
	movl	8(%ebp),%eax
	movl	%edx,4(%eax)
Lj107:
	movl	8(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj110
	jmp	Lj111
Lj110:
	jmp	Lj55
Lj111:
	cmpb	$0,-25(%ebp)
	jne	Lj112
	jmp	Lj113
Lj112:
	movzbl	-24(%ebp),%eax
	movzwl	TC_MP3DEC_SAMPLERATETABLE(,%eax,2),%eax
	movl	8(%ebp),%edx
	movl	%eax,8(%edx)
	jmp	Lj116
Lj113:
	movzbl	-24(%ebp),%eax
	movzwl	TC_MP3DEC_SAMPLERATETABLE+6(,%eax,2),%eax
	movl	8(%ebp),%edx
	movl	%eax,8(%edx)
Lj116:
	movl	8(%ebp),%eax
	movzbl	13(%eax),%eax
	cmpl	$3,%eax
	je	Lj119
	jmp	Lj120
Lj119:
	movl	8(%ebp),%eax
	movb	$1,22(%eax)
	jmp	Lj123
Lj120:
	movl	8(%ebp),%eax
	movb	$2,22(%eax)
Lj123:
	cmpb	$0,-25(%ebp)
	jne	Lj126
	jmp	Lj127
Lj126:
	movl	8(%ebp),%eax
	movw	$1152,20(%eax)
	jmp	Lj130
Lj127:
	movl	8(%ebp),%eax
	movw	$576,20(%eax)
Lj130:
	cmpb	$0,-25(%ebp)
	jne	Lj133
	jmp	Lj134
Lj133:
	movl	8(%ebp),%edx
	movl	$144,%eax
	mull	4(%edx)
	movl	%eax,%edx
	movl	$1000,%eax
	mull	%edx
	movl	8(%ebp),%ecx
	xorl	%edx,%edx
	divl	8(%ecx)
	movl	8(%ebp),%edx
	movl	%eax,16(%edx)
	jmp	Lj137
Lj134:
	movl	8(%ebp),%edx
	movl	$72,%eax
	mull	4(%edx)
	movl	%eax,%edx
	movl	$1000,%eax
	mull	%edx
	movl	8(%ebp),%ecx
	xorl	%edx,%edx
	divl	8(%ecx)
	movl	8(%ebp),%edx
	movl	%eax,16(%edx)
Lj137:
	movl	8(%ebp),%eax
	cmpb	$0,12(%eax)
	jne	Lj140
	jmp	Lj141
Lj140:
	movl	8(%ebp),%eax
	incl	16(%eax)
Lj141:
	movl	8(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$21,%eax
	jb	Lj142
	jmp	Lj143
Lj142:
	jmp	Lj55
Lj143:
	movl	8(%ebp),%eax
	movb	$1,(%eax)
	movb	$1,-13(%ebp)
Lj55:
	movb	-13(%ebp),%al
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	MP3DEC_MP3GETDURATION$PBYTE$LONGINT$LONGWORD$WORD$LONGWORD$LONGWORD$$LONGWORD
MP3DEC_MP3GETDURATION$PBYTE$LONGINT$LONGWORD$WORD$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	16(%ebp),%eax
	movw	$0,(%eax)
	movl	12(%ebp),%eax
	movl	$0,(%eax)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-52(%ebp)
	movl	$0,-48(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	MP3DEC_MP3FINDSYNC$PBYTE$LONGINT$LONGINT$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj170
	jmp	Lj171
Lj170:
	jmp	Lj148
Lj171:
	jmp	Lj173
	.balign 4,0x90
Lj172:
	leal	-44(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MP3DEC_MP3PARSEHEADER$PBYTE$LONGINT$LONGINT$TMP3FRAMEHEADER$$BOOLEAN
	testb	%al,%al
	je	Lj175
	jmp	Lj176
Lj175:
	incl	-20(%ebp)
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MP3DEC_MP3FINDSYNC$PBYTE$LONGINT$LONGINT$$LONGINT
	movl	%eax,-20(%ebp)
	jmp	Lj173
Lj176:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj193
	jmp	Lj194
Lj193:
	movl	-12(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	%eax,(%edx)
	movl	16(%ebp),%eax
	movzbw	-22(%ebp),%dx
	movw	%dx,(%eax)
Lj194:
	movl	12(%ebp),%eax
	incl	(%eax)
	movl	-40(%ebp),%eax
	movl	$0,%edx
	movl	-52(%ebp),%ebx
	movl	-48(%ebp),%ecx
	addl	%eax,%ebx
	adcl	%edx,%ecx
	movl	%ebx,-52(%ebp)
	movl	%ecx,-48(%ebp)
	movl	-28(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj199
	jmp	Lj200
Lj199:
	jmp	Lj174
Lj200:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$255,%al
	je	Lj203
	jmp	Lj202
Lj203:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	(%edx,%eax,1),%al
	andb	$224,%al
	cmpb	$224,%al
	je	Lj201
	jmp	Lj202
Lj201:
	jmp	Lj173
	jmp	Lj204
Lj202:
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MP3DEC_MP3FINDSYNC$PBYTE$LONGINT$LONGINT$$LONGINT
	movl	%eax,-20(%ebp)
Lj204:
Lj173:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj172
	jmp	Lj174
Lj174:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	ja	Lj213
	jmp	Lj214
Lj213:
	movl	12(%ebp),%eax
	movl	(%eax),%edx
	movl	$0,%eax
	pushl	%eax
	pushl	%edx
	pushl	-48(%ebp)
	pushl	-52(%ebp)
	call	fpc_div_int64
	movl	8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	ja	Lj221
	jmp	Lj222
Lj221:
	movzbl	-43(%ebp),%eax
	cmpl	$3,%eax
	je	Lj223
	jmp	Lj224
Lj223:
	movl	12(%ebp),%edx
	movl	$1152,%eax
	mull	(%edx)
	movl	%eax,%edx
	movl	$1000,%eax
	mull	%edx
	movl	-12(%ebp),%ecx
	xorl	%edx,%edx
	divl	(%ecx)
	movl	%eax,-16(%ebp)
	jmp	Lj227
Lj224:
	movl	12(%ebp),%edx
	movl	$576,%eax
	mull	(%edx)
	movl	%eax,%edx
	movl	$1000,%eax
	mull	%edx
	movl	-12(%ebp),%ecx
	xorl	%edx,%edx
	divl	(%ecx)
	movl	%eax,-16(%ebp)
Lj227:
Lj222:
Lj214:
Lj148:
	movl	-16(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	MP3DEC_MP3LOADMEM$PBYTE$LONGINT$TMP3INFO$$BOOLEAN
MP3DEC_MP3LOADMEM$PBYTE$LONGINT$TMP3INFO$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13048,%esp
	movl	%ebx,-13048(%ebp)
	movl	%esi,-13044(%ebp)
	movl	%edi,-13040(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$32,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	pushl	%eax
	leal	-48(%ebp),%eax
	pushl	%eax
	leal	-52(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	leal	8(%eax),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MP3DEC_MP3GETDURATION$PBYTE$LONGINT$LONGWORD$WORD$LONGWORD$LONGWORD$$LONGWORD
	movl	-12(%ebp),%edx
	movl	%eax,28(%edx)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj254
	jmp	Lj255
Lj254:
	jmp	Lj230
Lj255:
	movl	-12(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-12(%ebp),%eax
	movb	$1,26(%eax)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$32000,%eax
	ja	Lj260
	jmp	Lj261
Lj260:
	movl	$1152,%eax
	mull	-48(%ebp)
	movl	-12(%ebp),%edx
	movl	%eax,16(%edx)
	jmp	Lj264
Lj261:
	movl	$576,%eax
	mull	-48(%ebp)
	movl	-12(%ebp),%edx
	movl	%eax,16(%edx)
Lj264:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movzwl	12(%eax),%eax
	mull	16(%edx)
	shll	$1,%eax
	movl	%eax,-64(%ebp)
	movl	-64(%ebp),%edx
	leal	-60(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-60(%ebp),%eax
	movl	-64(%ebp),%edx
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	$0,-68(%ebp)
	movl	$8192,-188(%ebp)
	movl	-188(%ebp),%edx
	leal	-180(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	$0,-184(%ebp)
	leal	-13020(%ebp),%eax
	movb	$0,%cl
	movl	$8192,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leal	-13028(%ebp),%eax
	movb	$0,%cl
	movl	$8,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	MP3DEC_MP3FINDSYNC$PBYTE$LONGINT$LONGINT$$LONGINT
	movl	%eax,-20(%ebp)
	movl	$0,-56(%ebp)
	jmp	Lj312
	.balign 4,0x90
Lj311:
	leal	-44(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MP3DEC_MP3PARSEHEADER$PBYTE$LONGINT$LONGINT$TMP3FRAMEHEADER$$BOOLEAN
	testb	%al,%al
	je	Lj314
	jmp	Lj315
Lj314:
	incl	-20(%ebp)
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	MP3DEC_MP3FINDSYNC$PBYTE$LONGINT$LONGINT$$LONGINT
	movl	%eax,-20(%ebp)
	jmp	Lj312
Lj315:
	movzbl	-22(%ebp),%eax
	movl	%eax,-212(%ebp)
	movzbl	-43(%ebp),%eax
	cmpl	$3,%eax
	je	Lj334
	jmp	Lj335
Lj334:
	movl	-12(%ebp),%eax
	movb	$1,24(%eax)
	movl	-212(%ebp),%eax
	cmpl	$1,%eax
	je	Lj338
	jmp	Lj339
Lj338:
	movl	$17,-72(%ebp)
	jmp	Lj342
Lj339:
	movl	$32,-72(%ebp)
Lj342:
	jmp	Lj345
Lj335:
	movl	-12(%ebp),%eax
	movb	$2,24(%eax)
	movl	-212(%ebp),%eax
	cmpl	$1,%eax
	je	Lj348
	jmp	Lj349
Lj348:
	movl	$9,-72(%ebp)
	jmp	Lj352
Lj349:
	movl	$17,-72(%ebp)
Lj352:
Lj345:
	movl	-12(%ebp),%eax
	movb	$3,25(%eax)
	movl	-20(%ebp),%eax
	addl	$4,%eax
	movl	%eax,-192(%ebp)
	cmpb	$0,-41(%ebp)
	jne	Lj359
	jmp	Lj360
Lj359:
	addl	$2,-192(%ebp)
Lj360:
	movl	-192(%ebp),%eax
	movl	-72(%ebp),%edx
	addl	%edx,%eax
	cmpl	-8(%ebp),%eax
	jg	Lj361
	jmp	Lj362
Lj361:
	jmp	Lj313
Lj362:
	movl	-4(%ebp),%edx
	movl	-192(%ebp),%eax
	leal	(%edx,%eax,1),%edx
	movl	-72(%ebp),%ecx
	leal	-84(%ebp),%eax
	call	MP3DEC_BITSINIT$TMP3BITS$PBYTE$LONGINT
	leal	-174(%ebp),%eax
	movb	$0,%cl
	movl	$90,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-12(%ebp),%eax
	movzbl	24(%eax),%eax
	cmpl	$1,%eax
	je	Lj375
	jmp	Lj376
Lj375:
	leal	-84(%ebp),%eax
	movl	$9,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movw	%ax,-174(%ebp)
	movl	-212(%ebp),%eax
	cmpl	$1,%eax
	je	Lj383
	jmp	Lj384
Lj383:
	leal	-84(%ebp),%eax
	movl	$5,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	jmp	Lj389
Lj384:
	leal	-84(%ebp),%eax
	movl	$3,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
Lj389:
	movl	-212(%ebp),%ebx
	decl	%ebx
	movl	$0,-204(%ebp)
	cmpl	-204(%ebp),%ebx
	jl	Lj395
	decl	-204(%ebp)
	.balign 4,0x90
Lj396:
	incl	-204(%ebp)
	leal	-84(%ebp),%eax
	movl	$4,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	cmpl	-204(%ebp),%ebx
	jg	Lj396
Lj395:
	movl	$0,-200(%ebp)
	decl	-200(%ebp)
	.balign 4,0x90
Lj403:
	incl	-200(%ebp)
	movl	-212(%ebp),%ebx
	decl	%ebx
	movl	$0,-204(%ebp)
	cmpl	-204(%ebp),%ebx
	jl	Lj405
	decl	-204(%ebp)
	.balign 4,0x90
Lj406:
	incl	-204(%ebp)
	movl	-200(%ebp),%eax
	imull	$44,%eax
	movl	-204(%ebp),%edx
	leal	-172(%ebp,%eax),%eax
	imull	$22,%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-208(%ebp)
	leal	-84(%ebp),%eax
	movl	$12,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%edx
	movw	%ax,(%edx)
	leal	-84(%ebp),%eax
	movl	$9,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%edx
	movw	%ax,2(%edx)
	leal	-84(%ebp),%eax
	movl	$8,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%edx
	movw	%ax,4(%edx)
	leal	-84(%ebp),%eax
	movl	$4,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%edx
	movw	%ax,6(%edx)
	movl	-208(%ebp),%esi
	leal	-84(%ebp),%eax
	movl	$1,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	cmpl	$1,%eax
	seteb	8(%esi)
	movl	-208(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj439
	jmp	Lj440
Lj439:
	leal	-84(%ebp),%eax
	movl	$2,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%edx
	movb	%al,9(%edx)
	movl	-208(%ebp),%esi
	leal	-84(%ebp),%eax
	movl	$1,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	cmpl	$1,%eax
	seteb	10(%esi)
	movl	$0,-216(%ebp)
	decl	-216(%ebp)
	.balign 4,0x90
Lj455:
	incl	-216(%ebp)
	leal	-84(%ebp),%eax
	movl	$5,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%ecx
	movl	-216(%ebp),%edx
	movb	%al,11(%ecx,%edx,1)
	cmpl	$1,-216(%ebp)
	jl	Lj455
	movl	$0,-216(%ebp)
	decl	-216(%ebp)
	.balign 4,0x90
Lj464:
	incl	-216(%ebp)
	leal	-84(%ebp),%eax
	movl	$3,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%edx
	movl	-216(%ebp),%ecx
	movb	%al,14(%edx,%ecx,1)
	cmpl	$2,-216(%ebp)
	jl	Lj464
	jmp	Lj471
Lj440:
	movl	$0,-216(%ebp)
	decl	-216(%ebp)
	.balign 4,0x90
Lj474:
	incl	-216(%ebp)
	leal	-84(%ebp),%eax
	movl	$5,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%edx
	movl	-216(%ebp),%ecx
	movb	%al,11(%edx,%ecx,1)
	cmpl	$2,-216(%ebp)
	jl	Lj474
	leal	-84(%ebp),%eax
	movl	$4,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%edx
	movb	%al,17(%edx)
	leal	-84(%ebp),%eax
	movl	$3,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%edx
	movb	%al,18(%edx)
Lj471:
	movl	-208(%ebp),%esi
	leal	-84(%ebp),%eax
	movl	$1,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	cmpl	$1,%eax
	seteb	19(%esi)
	movl	-208(%ebp),%esi
	leal	-84(%ebp),%eax
	movl	$1,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	cmpl	$1,%eax
	seteb	20(%esi)
	movl	-208(%ebp),%esi
	leal	-84(%ebp),%eax
	movl	$1,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	cmpl	$1,%eax
	seteb	21(%esi)
	cmpl	-204(%ebp),%ebx
	jg	Lj406
Lj405:
	cmpl	$1,-200(%ebp)
	jl	Lj403
	jmp	Lj511
Lj376:
	leal	-84(%ebp),%eax
	movl	$8,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movw	%ax,-174(%ebp)
	movl	-212(%ebp),%eax
	cmpl	$1,%eax
	je	Lj518
	jmp	Lj519
Lj518:
	leal	-84(%ebp),%eax
	movl	$1,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	jmp	Lj524
Lj519:
	leal	-84(%ebp),%eax
	movl	$2,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
Lj524:
	movl	-212(%ebp),%ebx
	decl	%ebx
	movl	$0,-204(%ebp)
	cmpl	-204(%ebp),%ebx
	jl	Lj530
	decl	-204(%ebp)
	.balign 4,0x90
Lj531:
	incl	-204(%ebp)
	movl	-204(%ebp),%eax
	imull	$22,%eax
	leal	-172(%ebp,%eax),%eax
	movl	%eax,-208(%ebp)
	leal	-84(%ebp),%eax
	movl	$12,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%edx
	movw	%ax,(%edx)
	leal	-84(%ebp),%eax
	movl	$9,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%edx
	movw	%ax,2(%edx)
	leal	-84(%ebp),%eax
	movl	$8,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%edx
	movw	%ax,4(%edx)
	leal	-84(%ebp),%eax
	movl	$9,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%edx
	movw	%ax,6(%edx)
	movl	-208(%ebp),%esi
	leal	-84(%ebp),%eax
	movl	$1,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	cmpl	$1,%eax
	seteb	8(%esi)
	movl	-208(%ebp),%eax
	cmpb	$0,8(%eax)
	jne	Lj564
	jmp	Lj565
Lj564:
	leal	-84(%ebp),%eax
	movl	$2,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%edx
	movb	%al,9(%edx)
	movl	-208(%ebp),%esi
	leal	-84(%ebp),%eax
	movl	$1,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	cmpl	$1,%eax
	seteb	10(%esi)
	movl	$0,-216(%ebp)
	decl	-216(%ebp)
	.balign 4,0x90
Lj580:
	incl	-216(%ebp)
	leal	-84(%ebp),%eax
	movl	$5,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%ecx
	movl	-216(%ebp),%edx
	movb	%al,11(%ecx,%edx,1)
	cmpl	$1,-216(%ebp)
	jl	Lj580
	movl	$0,-216(%ebp)
	decl	-216(%ebp)
	.balign 4,0x90
Lj589:
	incl	-216(%ebp)
	leal	-84(%ebp),%eax
	movl	$3,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%edx
	movl	-216(%ebp),%ecx
	movb	%al,14(%edx,%ecx,1)
	cmpl	$2,-216(%ebp)
	jl	Lj589
	jmp	Lj596
Lj565:
	movl	$0,-216(%ebp)
	decl	-216(%ebp)
	.balign 4,0x90
Lj599:
	incl	-216(%ebp)
	leal	-84(%ebp),%eax
	movl	$5,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%edx
	movl	-216(%ebp),%ecx
	movb	%al,11(%edx,%ecx,1)
	cmpl	$2,-216(%ebp)
	jl	Lj599
	leal	-84(%ebp),%eax
	movl	$4,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%edx
	movb	%al,17(%edx)
	leal	-84(%ebp),%eax
	movl	$3,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	movl	-208(%ebp),%edx
	movb	%al,18(%edx)
Lj596:
	movl	-208(%ebp),%esi
	leal	-84(%ebp),%eax
	movl	$1,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	cmpl	$1,%eax
	seteb	20(%esi)
	movl	-208(%ebp),%esi
	leal	-84(%ebp),%eax
	movl	$1,%edx
	call	MP3DEC_BITSREAD$TMP3BITS$LONGINT$$LONGWORD
	cmpl	$1,%eax
	seteb	21(%esi)
	cmpl	-204(%ebp),%ebx
	jg	Lj531
Lj530:
Lj511:
	movl	-28(%ebp),%edx
	subl	$4,%edx
	movl	-72(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-196(%ebp)
	cmpb	$0,-41(%ebp)
	jne	Lj632
	jmp	Lj633
Lj632:
	subl	$2,-196(%ebp)
Lj633:
	movl	-196(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj634
	jmp	Lj635
Lj634:
	movl	$0,-196(%ebp)
Lj635:
	movl	-184(%ebp),%eax
	movl	-196(%ebp),%edx
	addl	%edx,%eax
	cmpl	-188(%ebp),%eax
	jg	Lj638
	jmp	Lj639
Lj638:
	movl	-184(%ebp),%eax
	movl	-196(%ebp),%edx
	addl	%edx,%eax
	shll	$1,%eax
	movl	%eax,-188(%ebp)
	movl	-188(%ebp),%edx
	leal	-180(%ebp),%eax
	call	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
Lj639:
	movl	-192(%ebp),%edx
	movl	-72(%ebp),%eax
	addl	%eax,%edx
	movl	-196(%ebp),%eax
	addl	%eax,%edx
	cmpl	-8(%ebp),%edx
	jle	Lj646
	jmp	Lj647
Lj646:
	movl	-4(%ebp),%ecx
	movl	-192(%ebp),%edx
	movl	-72(%ebp),%eax
	addl	%eax,%edx
	leal	(%ecx,%edx,1),%eax
	movl	-180(%ebp),%ecx
	movl	-184(%ebp),%edx
	leal	(%ecx,%edx,1),%edx
	movl	-196(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-196(%ebp),%eax
	addl	%eax,-184(%ebp)
Lj647:
	leal	-4828(%ebp),%eax
	movb	$0,%cl
	movl	$4608,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-12(%ebp),%eax
	movzbl	24(%eax),%eax
	cmpl	$1,%eax
	seteb	%al
	movzbl	%al,%eax
	movl	%eax,-13036(%ebp)
	movl	$0,-200(%ebp)
	movl	-13036(%ebp),%eax
	cmpl	-200(%ebp),%eax
	jl	Lj661
	decl	-200(%ebp)
	.balign 4,0x90
Lj662:
	incl	-200(%ebp)
	movl	-212(%ebp),%esi
	decl	%esi
	movl	$0,-204(%ebp)
	cmpl	-204(%ebp),%esi
	jl	Lj666
	decl	-204(%ebp)
	.balign 4,0x90
Lj667:
	incl	-204(%ebp)
	movl	-200(%ebp),%eax
	imull	$44,%eax
	movl	-204(%ebp),%edx
	leal	-172(%ebp,%eax),%eax
	imull	$22,%edx
	leal	(%eax,%edx),%eax
	movl	%eax,-208(%ebp)
	movl	-208(%ebp),%eax
	movzwl	4(%eax),%eax
	subl	$210,%eax
	shll	$7,%eax
	movl	%eax,-13032(%ebp)
	movl	-13032(%ebp),%eax
	cmpl	$32767,%eax
	jg	Lj672
	jmp	Lj673
Lj672:
	movl	$32767,-13032(%ebp)
Lj673:
	movl	-13032(%ebp),%eax
	cmpl	$-32768,%eax
	jl	Lj676
	jmp	Lj677
Lj676:
	movl	$-32768,-13032(%ebp)
Lj677:
	movzwl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	24(%eax),%eax
	cmpl	$1,%eax
	seteb	%al
	movzbl	%al,%ecx
	incl	%ecx
	movl	%edx,%eax
	cltd
	idivl	%ecx
	decl	%eax
	movl	$0,-216(%ebp)
	cmpl	-216(%ebp),%eax
	jl	Lj681
	decl	-216(%ebp)
	.balign 4,0x90
Lj682:
	incl	-216(%ebp)
	movl	-204(%ebp),%edx
	imull	$2304,%edx
	movl	-216(%ebp),%ecx
	leal	-4828(%ebp,%edx),%ebx
	movl	-13032(%ebp),%edx
	movl	%edx,(%ebx,%ecx,4)
	cmpl	-216(%ebp),%eax
	jg	Lj682
Lj681:
	cmpl	-204(%ebp),%esi
	jg	Lj667
Lj666:
	movzwl	-24(%ebp),%eax
	movl	-12(%ebp),%edx
	movzbl	24(%edx),%edx
	cmpl	$1,%edx
	seteb	%dl
	movzbl	%dl,%ecx
	incl	%ecx
	cltd
	idivl	%ecx
	decl	%eax
	movl	$0,-216(%ebp)
	cmpl	-216(%ebp),%eax
	jl	Lj688
	decl	-216(%ebp)
	.balign 4,0x90
Lj689:
	incl	-216(%ebp)
	movl	-12(%ebp),%edx
	movl	-68(%ebp),%ecx
	cmpl	16(%edx),%ecx
	jge	Lj692
	jmp	Lj693
Lj692:
	jmp	Lj688
Lj693:
	movl	-212(%ebp),%edx
	decl	%edx
	movl	$0,-204(%ebp)
	cmpl	-204(%ebp),%edx
	jl	Lj695
	decl	-204(%ebp)
	.balign 4,0x90
Lj696:
	incl	-204(%ebp)
	movl	-68(%ebp),%ebx
	movl	-212(%ebp),%ecx
	imull	%ecx,%ebx
	movl	-204(%ebp),%ecx
	addl	%ecx,%ebx
	movl	%ebx,-220(%ebp)
	movl	-220(%ebp),%ecx
	shll	$1,%ecx
	cmpl	-64(%ebp),%ecx
	jl	Lj699
	jmp	Lj700
Lj699:
	movl	-60(%ebp),%ecx
	movl	-220(%ebp),%ebx
	movl	-204(%ebp),%esi
	movl	%esi,%edi
	imull	$2304,%edi
	movl	-216(%ebp),%esi
	leal	-4828(%ebp,%edi),%edi
	movw	(%edi,%esi,4),%si
	movw	%si,(%ecx,%ebx,2)
Lj700:
	cmpl	-204(%ebp),%edx
	jg	Lj696
Lj695:
	incl	-68(%ebp)
	cmpl	-216(%ebp),%eax
	jg	Lj689
Lj688:
	movl	-13036(%ebp),%eax
	cmpl	-200(%ebp),%eax
	jg	Lj662
Lj661:
	movl	-184(%ebp),%eax
	cmpl	$2048,%eax
	jg	Lj703
	jmp	Lj704
Lj703:
	movl	-180(%ebp),%edx
	movl	-184(%ebp),%eax
	subl	$512,%eax
	leal	(%edx,%eax,1),%eax
	movl	-180(%ebp),%edx
	movl	$512,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	$512,-184(%ebp)
Lj704:
	incl	-56(%ebp)
	movl	-28(%ebp),%eax
	addl	%eax,-20(%ebp)
Lj312:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj713
	jmp	Lj313
Lj713:
	movl	-20(%ebp),%eax
	addl	$4,%eax
	cmpl	-8(%ebp),%eax
	jl	Lj311
	jmp	Lj313
Lj313:
	movl	-180(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-12(%ebp),%edx
	movl	-68(%ebp),%eax
	movl	%eax,16(%edx)
	movl	-12(%ebp),%eax
	movzwl	12(%eax),%eax
	movl	-68(%ebp),%edx
	imull	%eax,%edx
	shll	$1,%edx
	movl	-12(%ebp),%eax
	movl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-60(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	4(%ecx),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-60(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	setab	-13(%ebp)
Lj230:
	movb	-13(%ebp),%al
	movl	-13048(%ebp),%ebx
	movl	-13044(%ebp),%esi
	movl	-13040(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	MP3DEC_MP3LOADFILE$SHORTSTRING$TMP3INFO$$BOOLEAN
MP3DEC_MP3LOADFILE$SHORTSTRING$TMP3INFO$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$360,%esp
	movl	%ebx,-360(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$32,%edx
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
	jne	Lj752
	jmp	Lj753
Lj752:
	jmp	Lj734
Lj753:
	leal	-344(%ebp),%eax
	call	SYSTEM_FILESIZE$file$$INT64
	movl	%eax,%ebx
	call	FPC_IOCHECK
	movl	%ebx,-352(%ebp)
	movl	-352(%ebp),%eax
	cmpl	$128,%eax
	jl	Lj758
	jmp	Lj759
Lj758:
	leal	-344(%ebp),%eax
	call	SYSTEM_CLOSE$file
	call	FPC_IOCHECK
	jmp	Lj734
Lj759:
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
	jne	Lj776
	jmp	Lj777
Lj776:
	movl	-348(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	jmp	Lj734
Lj777:
	movl	-8(%ebp),%ecx
	movl	-352(%ebp),%edx
	movl	-348(%ebp),%eax
	call	MP3DEC_MP3LOADMEM$PBYTE$LONGINT$TMP3INFO$$BOOLEAN
	movb	%al,-9(%ebp)
	movl	-348(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj734:
	movb	-9(%ebp),%al
	movl	-360(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	MP3DEC_MP3FREE$TMP3INFO
MP3DEC_MP3FREE$TMP3INFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj792
	jmp	Lj793
Lj792:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj793:
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_MP3DEC
THREADVARLIST_MP3DEC:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 2
TC_MP3DEC_BITRATETABLE1L3:
	.short	0,32,40,48,56,64,80,96,112,128,160,192,224,256,320

.data
	.balign 2
TC_MP3DEC_BITRATETABLE2L3:
	.short	0,8,16,24,32,40,48,56,64,80,96,112,128,144,160

.data
	.balign 2
TC_MP3DEC_SAMPLERATETABLE:
	.short	44100,48000,32000,22050,24000,16000

.data
	.balign 4
TC_MP3DEC_IMDCTWIN:
	.long	2621,7853,13043,18162,23170,28028,32696,37134,41305,45173,48703,51862,54622,56955,58840
	.long	60257,61194,61640,61640,61194,60257,58840,56955,54622,51862,48703,45173,41305,37134,32696
	.long	28028,23170,18162,13043,7853,2621

.data
	.balign 4
TC_MP3DEC_SYNTHWINBASE:
	.long	0,-65,-195,-390,-650,-1040,-1560,-2275,-3120,-4180,-5440,-7010,-8895,-11155,-13870,-17120
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
.globl	INIT_MP3DEC_TMP3INFO
INIT_MP3DEC_TMP3INFO:
	.byte	13,8
	.ascii	"TMP3Info"
	.long	32,0

.data
	.balign 4
.globl	RTTI_MP3DEC_TMP3INFO
RTTI_MP3DEC_TMP3INFO:
	.byte	13,8
	.ascii	"TMP3Info"
	.long	32,10
	.long	RTTI_SYSTEM_PSMALLINT
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_LONGWORD
	.long	20
	.long	RTTI_SYSTEM_BYTE
	.long	24
	.long	RTTI_SYSTEM_BYTE
	.long	25
	.long	RTTI_SYSTEM_BOOLEAN
	.long	26
	.long	RTTI_SYSTEM_LONGWORD
	.long	28

.data
	.balign 4
.globl	INIT_MP3DEC_TMP3FRAMEHEADER
INIT_MP3DEC_TMP3FRAMEHEADER:
	.byte	13,15
	.ascii	"TMP3FrameHeader"
	.long	24,0

.data
	.balign 4
.globl	RTTI_MP3DEC_TMP3FRAMEHEADER
RTTI_MP3DEC_TMP3FRAMEHEADER:
	.byte	13,15
	.ascii	"TMP3FrameHeader"
	.long	24,12
	.long	RTTI_SYSTEM_BOOLEAN
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	1
	.long	RTTI_SYSTEM_BYTE
	.long	2
	.long	RTTI_SYSTEM_BOOLEAN
	.long	3
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_BOOLEAN
	.long	12
	.long	RTTI_SYSTEM_BYTE
	.long	13
	.long	RTTI_SYSTEM_BYTE
	.long	14
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_WORD
	.long	20
	.long	RTTI_SYSTEM_BYTE
	.long	22
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

