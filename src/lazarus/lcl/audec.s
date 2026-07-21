	.file "audec.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
.globl	AUDEC_MULAWDECODE$BYTE$$SMALLINT
AUDEC_MULAWDECODE$BYTE$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movb	%al,-4(%ebp)
	movb	-4(%ebp),%al
	notb	%al
	movb	%al,-4(%ebp)
	movb	-4(%ebp),%al
	andb	$128,%al
	movzbl	%al,%eax
	movl	%eax,-12(%ebp)
	movzbl	-4(%ebp),%eax
	shrl	$4,%eax
	andl	$7,%eax
	movl	%eax,-16(%ebp)
	movb	-4(%ebp),%al
	andb	$15,%al
	movzbl	%al,%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%ecx
	addl	$3,%ecx
	movl	-20(%ebp),%eax
	shll	%cl,%eax
	movl	-16(%ebp),%ecx
	addl	$3,%ecx
	movl	$1,%edx
	shll	%cl,%edx
	addl	%edx,%eax
	subl	$132,%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj15
	jmp	Lj16
Lj15:
	movl	-24(%ebp),%eax
	negl	%eax
	movw	%ax,-6(%ebp)
	jmp	Lj19
Lj16:
	movw	-24(%ebp),%ax
	movw	%ax,-6(%ebp)
Lj19:
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	AUDEC_ALAWDECODE$BYTE$$SMALLINT
AUDEC_ALAWDECODE$BYTE$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movb	%al,-4(%ebp)
	movzbl	-4(%ebp),%eax
	xorl	$85,%eax
	movb	%al,-4(%ebp)
	movb	-4(%ebp),%al
	andb	$128,%al
	movzbl	%al,%eax
	movl	%eax,-12(%ebp)
	movzbl	-4(%ebp),%eax
	shrl	$4,%eax
	andl	$7,%eax
	movl	%eax,-16(%ebp)
	movb	-4(%ebp),%al
	andb	$15,%al
	movzbl	%al,%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj32
	jmp	Lj33
Lj32:
	movl	-20(%ebp),%eax
	shll	$4,%eax
	addl	$8,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj36
Lj33:
	movl	-20(%ebp),%eax
	shll	$4,%eax
	addl	$264,%eax
	movl	-16(%ebp),%ecx
	decl	%ecx
	shll	%cl,%eax
	movl	%eax,-24(%ebp)
Lj36:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj39
	jmp	Lj40
Lj39:
	movl	-24(%ebp),%eax
	negl	%eax
	movw	%ax,-6(%ebp)
	jmp	Lj43
Lj40:
	movw	-24(%ebp),%ax
	movw	%ax,-6(%ebp)
Lj43:
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
AUDEC_READBE32$PBYTE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$24,%eax
	movl	-4(%ebp),%edx
	movzbl	1(%edx),%edx
	shll	$16,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movzbl	2(%edx),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movzbl	3(%edx),%edx
	orl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
AUDEC_READBE16$PBYTE$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbw	(%eax),%ax
	movzwl	%ax,%eax
	shll	$8,%eax
	movl	-4(%ebp),%edx
	movzbw	1(%edx),%dx
	movzwl	%dx,%edx
	orl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	AUDEC_AULOADMEM$PBYTE$LONGINT$TAUINFO$$BOOLEAN
AUDEC_AULOADMEM$PBYTE$LONGINT$TAUINFO$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,%cl
	movl	$288,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-8(%ebp),%eax
	cmpl	$24,%eax
	jl	Lj64
	jmp	Lj65
Lj64:
	jmp	Lj54
Lj65:
	movl	-4(%ebp),%eax
	call	AUDEC_READBE32$PBYTE$$LONGWORD
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$779316836,%eax
	jne	Lj70
	jmp	Lj71
Lj70:
	jmp	Lj54
Lj71:
	movl	-4(%ebp),%eax
	leal	4(%eax),%eax
	call	AUDEC_READBE32$PBYTE$$LONGWORD
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	leal	8(%eax),%eax
	call	AUDEC_READBE32$PBYTE$$LONGWORD
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	call	AUDEC_READBE32$PBYTE$$LONGWORD
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	call	AUDEC_READBE32$PBYTE$$LONGWORD
	movl	%eax,-36(%ebp)
	movl	-4(%ebp),%eax
	leal	20(%eax),%eax
	call	AUDEC_READBE32$PBYTE$$LONGWORD
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj92
	jmp	Lj94
Lj94:
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj92
	jmp	Lj93
Lj92:
	jmp	Lj54
Lj93:
	movl	-24(%ebp),%eax
	cmpl	$24,%eax
	jb	Lj95
	jmp	Lj96
Lj95:
	movl	$24,-24(%ebp)
Lj96:
	movl	-24(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj99
	jmp	Lj100
Lj99:
	jmp	Lj54
Lj100:
	movl	-24(%ebp),%eax
	cmpl	$24,%eax
	ja	Lj101
	jmp	Lj102
Lj101:
	movl	-24(%ebp),%eax
	subl	$24,%eax
	movl	%eax,-60(%ebp)
	movl	-60(%ebp),%eax
	cmpl	$255,%eax
	jg	Lj105
	jmp	Lj106
Lj105:
	movl	$255,-60(%ebp)
Lj106:
	movl	-12(%ebp),%eax
	movb	$1,28(%eax)
	movl	-60(%ebp),%ecx
	movl	-12(%ebp),%eax
	leal	29(%eax),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
	movl	-4(%ebp),%eax
	leal	24(%eax),%eax
	movl	-60(%ebp),%ecx
	movl	-12(%ebp),%edx
	leal	30(%edx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj124
	.balign 4,0x90
Lj123:
	movl	-12(%ebp),%eax
	movzbl	29(%eax),%ecx
	decl	%ecx
	movl	-12(%ebp),%eax
	leal	29(%eax),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
Lj124:
	movl	-12(%ebp),%eax
	movzbl	29(%eax),%eax
	cmpl	$0,%eax
	jg	Lj132
	jmp	Lj125
Lj132:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	29(%eax),%eax
	movb	29(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj123
	jmp	Lj125
Lj125:
Lj102:
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	%edx,24(%eax)
	movl	-12(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-12(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%eax,16(%edx)
	movl	-12(%ebp),%eax
	movw	$16,20(%eax)
	movl	-28(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj141
	jmp	Lj142
Lj141:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
	jmp	Lj145
Lj142:
	movl	-24(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	%eax,%edx
	cmpl	-8(%ebp),%edx
	jg	Lj146
	jmp	Lj147
Lj146:
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-28(%ebp)
Lj147:
Lj145:
	movl	-24(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj153
	decl	%eax
	je	Lj154
	decl	%eax
	je	Lj156
	decl	%eax
	je	Lj157
	decl	%eax
	je	Lj158
	decl	%eax
	je	Lj159
	subl	$22,%eax
	je	Lj155
	jmp	Lj153
Lj154:
	movl	-28(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-40(%ebp),%edx
	movl	$0,%eax
	pushl	%eax
	pushl	%edx
	movl	-56(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	call	fpc_div_int64
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-56(%ebp),%eax
	shll	$1,%eax
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-56(%ebp),%ebx
	decl	%ebx
	movl	$0,-48(%ebp)
	cmpl	-48(%ebp),%ebx
	jl	Lj175
	decl	-48(%ebp)
	.balign 4,0x90
Lj176:
	incl	-48(%ebp)
	movl	-4(%ebp),%ecx
	movl	-44(%ebp),%eax
	movl	-48(%ebp),%edx
	addl	%edx,%eax
	movb	(%ecx,%eax,1),%al
	call	AUDEC_MULAWDECODE$BYTE$$SMALLINT
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	movl	-48(%ebp),%ecx
	movw	%ax,(%edx,%ecx,2)
	cmpl	-48(%ebp),%ebx
	jg	Lj176
Lj175:
	jmp	Lj152
Lj155:
	movl	-28(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-40(%ebp),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	movl	-56(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	call	fpc_div_int64
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-56(%ebp),%eax
	shll	$1,%eax
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-56(%ebp),%ebx
	decl	%ebx
	movl	$0,-48(%ebp)
	cmpl	-48(%ebp),%ebx
	jl	Lj196
	decl	-48(%ebp)
	.balign 4,0x90
Lj197:
	incl	-48(%ebp)
	movl	-4(%ebp),%ecx
	movl	-44(%ebp),%eax
	movl	-48(%ebp),%edx
	addl	%edx,%eax
	movb	(%ecx,%eax,1),%al
	call	AUDEC_ALAWDECODE$BYTE$$SMALLINT
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	movl	-48(%ebp),%ecx
	movw	%ax,(%edx,%ecx,2)
	cmpl	-48(%ebp),%ebx
	jg	Lj197
Lj196:
	jmp	Lj152
Lj156:
	movl	-28(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-40(%ebp),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	movl	-56(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	call	fpc_div_int64
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-56(%ebp),%eax
	shll	$1,%eax
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-56(%ebp),%eax
	decl	%eax
	movl	$0,-48(%ebp)
	cmpl	-48(%ebp),%eax
	jl	Lj217
	decl	-48(%ebp)
	.balign 4,0x90
Lj218:
	incl	-48(%ebp)
	movl	-4(%ebp),%ebx
	movl	-44(%ebp),%edx
	movl	-48(%ebp),%ecx
	addl	%ecx,%edx
	movsbw	(%ebx,%edx,1),%dx
	movswl	%dx,%edx
	shll	$8,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ebx
	movl	-48(%ebp),%ecx
	movw	%dx,(%ebx,%ecx,2)
	cmpl	-48(%ebp),%eax
	jg	Lj218
Lj217:
	jmp	Lj152
Lj157:
	movl	-28(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-56(%ebp)
	movl	-40(%ebp),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	movl	-56(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	call	fpc_div_int64
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-56(%ebp),%eax
	shll	$1,%eax
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-56(%ebp),%ebx
	decl	%ebx
	movl	$0,-48(%ebp)
	cmpl	-48(%ebp),%ebx
	jl	Lj236
	decl	-48(%ebp)
	.balign 4,0x90
Lj237:
	incl	-48(%ebp)
	movl	-4(%ebp),%ecx
	movl	-48(%ebp),%eax
	shll	$1,%eax
	movl	-44(%ebp),%edx
	addl	%edx,%eax
	leal	(%ecx,%eax,1),%eax
	call	AUDEC_READBE16$PBYTE$$WORD
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	movl	-48(%ebp),%ecx
	movw	%ax,(%edx,%ecx,2)
	cmpl	-48(%ebp),%ebx
	jg	Lj237
Lj236:
	jmp	Lj152
Lj158:
	movl	-28(%ebp),%edx
	movl	$-1431655765,%eax
	mull	%edx
	shrl	$1,%edx
	movl	%edx,-56(%ebp)
	movl	-40(%ebp),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	movl	-56(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	call	fpc_div_int64
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-56(%ebp),%eax
	shll	$1,%eax
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-56(%ebp),%eax
	decl	%eax
	movl	$0,-48(%ebp)
	cmpl	-48(%ebp),%eax
	jl	Lj257
	decl	-48(%ebp)
	.balign 4,0x90
Lj258:
	incl	-48(%ebp)
	movl	-48(%ebp),%edx
	imull	$3,%edx
	movl	-44(%ebp),%ecx
	addl	%ecx,%edx
	movl	%edx,-52(%ebp)
	movl	-4(%ebp),%edx
	movl	-52(%ebp),%ecx
	movzbw	(%edx,%ecx,1),%dx
	movzwl	%dx,%edx
	shll	$8,%edx
	movl	-4(%ebp),%ebx
	movl	-52(%ebp),%ecx
	incl	%ecx
	movzbw	(%ebx,%ecx,1),%cx
	movzwl	%cx,%ecx
	orl	%ecx,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	-48(%ebp),%ebx
	movw	%dx,(%ecx,%ebx,2)
	cmpl	-48(%ebp),%eax
	jg	Lj258
Lj257:
	jmp	Lj152
Lj159:
	movl	-28(%ebp),%eax
	shrl	$2,%eax
	movl	%eax,-56(%ebp)
	movl	-40(%ebp),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	movl	-56(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	call	fpc_div_int64
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-56(%ebp),%eax
	shll	$1,%eax
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-56(%ebp),%ebx
	decl	%ebx
	movl	$0,-48(%ebp)
	cmpl	-48(%ebp),%ebx
	jl	Lj278
	decl	-48(%ebp)
	.balign 4,0x90
Lj279:
	incl	-48(%ebp)
	movl	-4(%ebp),%ecx
	movl	-48(%ebp),%eax
	shll	$2,%eax
	movl	-44(%ebp),%edx
	addl	%edx,%eax
	leal	(%ecx,%eax,1),%eax
	call	AUDEC_READBE32$PBYTE$$LONGWORD
	movl	%eax,-64(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-48(%ebp),%ecx
	movl	-64(%ebp),%eax
	shrl	$16,%eax
	movw	%ax,(%edx,%ecx,2)
	cmpl	-48(%ebp),%ebx
	jg	Lj279
Lj278:
	jmp	Lj152
Lj153:
	jmp	Lj54
Lj152:
	movb	$1,-13(%ebp)
Lj54:
	movb	-13(%ebp),%al
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	AUDEC_AULOADFILE$SHORTSTRING$TAUINFO$$BOOLEAN
AUDEC_AULOADFILE$SHORTSTRING$TAUINFO$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$360,%esp
	movl	%ebx,-360(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,%cl
	movl	$288,%edx
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
	jne	Lj306
	jmp	Lj307
Lj306:
	jmp	Lj288
Lj307:
	leal	-344(%ebp),%eax
	call	SYSTEM_FILESIZE$file$$INT64
	movl	%eax,%ebx
	call	FPC_IOCHECK
	movl	%ebx,-352(%ebp)
	movl	-352(%ebp),%eax
	cmpl	$24,%eax
	jl	Lj312
	jmp	Lj313
Lj312:
	leal	-344(%ebp),%eax
	call	SYSTEM_CLOSE$file
	call	FPC_IOCHECK
	jmp	Lj288
Lj313:
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
	jne	Lj330
	jmp	Lj331
Lj330:
	movl	-348(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	jmp	Lj288
Lj331:
	movl	-8(%ebp),%ecx
	movl	-352(%ebp),%edx
	movl	-348(%ebp),%eax
	call	AUDEC_AULOADMEM$PBYTE$LONGINT$TAUINFO$$BOOLEAN
	movb	%al,-9(%ebp)
	movl	-348(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj288:
	movb	-9(%ebp),%al
	movl	-360(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	AUDEC_AUFREE$TAUINFO
AUDEC_AUFREE$TAUINFO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj346
	jmp	Lj347
Lj346:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj347:
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_AUDEC
THREADVARLIST_AUDEC:
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
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.data
	.balign 4
.globl	INIT_AUDEC_TAUINFO
INIT_AUDEC_TAUINFO:
	.byte	13,7
	.ascii	"TAUInfo"
	.long	288,0

.data
	.balign 4
.globl	RTTI_AUDEC_TAUINFO
RTTI_AUDEC_TAUINFO:
	.byte	13,7
	.ascii	"TAUInfo"
	.long	288,9
	.long	RTTI_SYSTEM_PSMALLINT
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_LONGWORD
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_WORD
	.long	20
	.long	RTTI_SYSTEM_LONGWORD
	.long	24
	.long	RTTI_SYSTEM_BOOLEAN
	.long	28
	.long	RTTI_SYSTEM_SHORTSTRING
	.long	29
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

