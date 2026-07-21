	.file "adpcmdec.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
.globl	ADPCMDEC_CLAMPS16$LONGINT$$SMALLINT
ADPCMDEC_CLAMPS16$LONGINT$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$-32768,%eax
	jl	Lj5
	jmp	Lj6
Lj5:
	movw	$-32768,-6(%ebp)
	jmp	Lj9
Lj6:
	movl	-4(%ebp),%eax
	cmpl	$32767,%eax
	jg	Lj10
	jmp	Lj11
Lj10:
	movw	$32767,-6(%ebp)
	jmp	Lj14
Lj11:
	movw	-4(%ebp),%ax
	movw	%ax,-6(%ebp)
Lj14:
Lj9:
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	ADPCMDEC_IMAINITSTATE$TIMASTATE
ADPCMDEC_IMAINITSTATE$TIMASTATE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	$0,(%eax)
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	ADPCMDEC_IMADECODENIBBLE$TIMASTATE$BYTE$$SMALLINT
ADPCMDEC_IMADECODENIBBLE$TIMASTATE$BYTE$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$17,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movw	TC_ADPCMDEC_IMASTEPTABLE(,%eax,2),%ax
	movw	%ax,-12(%ebp)
	movb	-8(%ebp),%al
	andb	$8,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	setneb	-17(%ebp)
	movl	$0,-16(%ebp)
	movb	-8(%ebp),%al
	andb	$4,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj31
	jmp	Lj32
Lj31:
	movswl	-12(%ebp),%eax
	addl	%eax,-16(%ebp)
Lj32:
	movb	-8(%ebp),%al
	andb	$2,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj33
	jmp	Lj34
Lj33:
	movswl	-12(%ebp),%eax
	shrl	$1,%eax
	addl	%eax,-16(%ebp)
Lj34:
	movb	-8(%ebp),%al
	andb	$1,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj35
	jmp	Lj36
Lj35:
	movswl	-12(%ebp),%eax
	shrl	$2,%eax
	addl	%eax,-16(%ebp)
Lj36:
	movswl	-12(%ebp),%eax
	shrl	$3,%eax
	addl	%eax,-16(%ebp)
	cmpb	$0,-17(%ebp)
	jne	Lj37
	jmp	Lj38
Lj37:
	movl	-4(%ebp),%eax
	movswl	(%eax),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	call	ADPCMDEC_CLAMPS16$LONGINT$$SMALLINT
	movl	-4(%ebp),%edx
	movw	%ax,(%edx)
	jmp	Lj43
Lj38:
	movl	-4(%ebp),%eax
	movswl	(%eax),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	call	ADPCMDEC_CLAMPS16$LONGINT$$SMALLINT
	movl	-4(%ebp),%edx
	movw	%ax,(%edx)
Lj43:
	movb	-8(%ebp),%al
	andb	$15,%al
	movzbl	%al,%eax
	movsbl	TC_ADPCMDEC_IMAINDEXTABLE(,%eax,1),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,4(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jl	Lj50
	jmp	Lj51
Lj50:
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
Lj51:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$88,%eax
	jg	Lj54
	jmp	Lj55
Lj54:
	movl	-4(%ebp),%eax
	movl	$88,4(%eax)
Lj55:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-10(%ebp)
	movw	-10(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	ADPCMDEC_IMADECODE$PBYTE$LONGINT$WORD$WORD$PSMALLINT$LONGINT$$BOOLEAN
ADPCMDEC_IMADECODE$PBYTE$LONGINT$WORD$WORD$PSMALLINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	12(%ebp),%eax
	movl	$0,(%eax)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movzwl	-12(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj68
	jmp	Lj70
Lj70:
	movzwl	-12(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj68
	jmp	Lj69
Lj68:
	jmp	Lj60
Lj69:
	movzwl	-12(%ebp),%eax
	shll	$2,%eax
	movzwl	16(%ebp),%edx
	cmpl	%edx,%eax
	jg	Lj71
	jmp	Lj72
Lj71:
	jmp	Lj60
Lj72:
	movzwl	16(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj73
	jmp	Lj74
Lj73:
	jmp	Lj60
Lj74:
	movzwl	-12(%ebp),%eax
	shll	$2,%eax
	movzwl	16(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-56(%ebp)
	movzwl	-12(%ebp),%eax
	cmpl	$1,%eax
	je	Lj77
	jmp	Lj78
Lj77:
	movl	-56(%ebp),%eax
	shll	$1,%eax
	incl	%eax
	movl	%eax,-48(%ebp)
	jmp	Lj81
Lj78:
	movzwl	-12(%ebp),%ecx
	movl	-56(%ebp),%eax
	cltd
	idivl	%ecx
	shll	$1,%eax
	incl	%eax
	movl	%eax,-48(%ebp)
Lj81:
	movzwl	16(%ebp),%ecx
	movl	-8(%ebp),%eax
	cltd
	idivl	%ecx
	movl	%eax,-44(%ebp)
	movl	-44(%ebp),%edx
	movl	-48(%ebp),%eax
	imull	%eax,%edx
	movl	%edx,-52(%ebp)
	movzwl	-12(%ebp),%eax
	movl	-52(%ebp),%edx
	imull	%eax,%edx
	shll	$1,%edx
	movl	12(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	8(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	%edx,(%eax)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	jmp	Lj99
	.balign 4,0x90
Lj98:
	movzwl	-12(%ebp),%eax
	decl	%eax
	movl	$0,-60(%ebp)
	cmpl	-60(%ebp),%eax
	jl	Lj102
	decl	-60(%ebp)
	.balign 4,0x90
Lj103:
	incl	-60(%ebp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	incl	%edx
	movzbw	(%ecx,%edx,1),%dx
	movzwl	%dx,%edx
	shll	$8,%edx
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%ebx
	movzbl	(%ecx,%ebx,1),%ecx
	orl	%ecx,%edx
	movl	-60(%ebp),%ecx
	movw	%dx,-40(%ebp,%ecx,8)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	addl	$2,%edx
	movzbl	(%ecx,%edx,1),%edx
	movl	-60(%ebp),%ecx
	movl	%edx,-36(%ebp,%ecx,8)
	movl	-60(%ebp),%edx
	movl	-36(%ebp,%edx,8),%edx
	cmpl	$88,%edx
	jg	Lj108
	jmp	Lj109
Lj108:
	movl	-60(%ebp),%edx
	movl	$88,-36(%ebp,%edx,8)
Lj109:
	addl	$4,-20(%ebp)
	movzwl	-12(%ebp),%edx
	cmpl	$1,%edx
	je	Lj112
	jmp	Lj113
Lj112:
	movl	12(%ebp),%edx
	movl	(%edx),%ebx
	movl	-24(%ebp),%ecx
	movl	-60(%ebp),%edx
	movw	-40(%ebp,%edx,8),%dx
	movw	%dx,(%ebx,%ecx,2)
	incl	-24(%ebp)
	jmp	Lj116
Lj113:
	movl	12(%ebp),%edx
	movl	(%edx),%ebx
	movl	-24(%ebp),%edx
	movl	-60(%ebp),%ecx
	addl	%ecx,%edx
	movl	-60(%ebp),%ecx
	movw	-40(%ebp,%ecx,8),%cx
	movw	%cx,(%ebx,%edx,2)
Lj116:
	cmpl	-60(%ebp),%eax
	jg	Lj103
Lj102:
	movzwl	-12(%ebp),%eax
	cmpl	$2,%eax
	je	Lj119
	jmp	Lj120
Lj119:
	addl	$2,-24(%ebp)
Lj120:
	movzwl	-12(%ebp),%eax
	cmpl	$1,%eax
	je	Lj121
	jmp	Lj122
Lj121:
	movl	-56(%ebp),%ebx
	decl	%ebx
	movl	$0,-64(%ebp)
	cmpl	-64(%ebp),%ebx
	jl	Lj124
	decl	-64(%ebp)
	.balign 4,0x90
Lj125:
	incl	-64(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj126
	jmp	Lj127
Lj126:
	jmp	Lj124
Lj127:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,-65(%ebp)
	incl	-20(%ebp)
	movb	-65(%ebp),%dl
	andb	$15,%dl
	leal	-40(%ebp),%eax
	call	ADPCMDEC_IMADECODENIBBLE$TIMASTATE$BYTE$$SMALLINT
	movl	12(%ebp),%edx
	movl	(%edx),%edx
	movl	-24(%ebp),%ecx
	movw	%ax,(%edx,%ecx,2)
	incl	-24(%ebp)
	movzbl	-65(%ebp),%edx
	shrl	$4,%edx
	andl	$15,%edx
	leal	-40(%ebp),%eax
	call	ADPCMDEC_IMADECODENIBBLE$TIMASTATE$BYTE$$SMALLINT
	movl	12(%ebp),%edx
	movl	(%edx),%edx
	movl	-24(%ebp),%ecx
	movw	%ax,(%edx,%ecx,2)
	incl	-24(%ebp)
	cmpl	-64(%ebp),%ebx
	jg	Lj125
Lj124:
	jmp	Lj142
Lj122:
	movl	$0,-64(%ebp)
	jmp	Lj146
	.balign 4,0x90
Lj145:
	movzwl	-12(%ebp),%ebx
	decl	%ebx
	movl	$0,-60(%ebp)
	cmpl	-60(%ebp),%ebx
	jl	Lj149
	decl	-60(%ebp)
	.balign 4,0x90
Lj150:
	incl	-60(%ebp)
	movb	$0,-65(%ebp)
	decb	-65(%ebp)
	.balign 4,0x90
Lj153:
	incb	-65(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj154
	jmp	Lj155
Lj154:
	jmp	Lj152
Lj155:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,-66(%ebp)
	incl	-20(%ebp)
	incl	-64(%ebp)
	movb	-66(%ebp),%dl
	andb	$15,%dl
	movl	-60(%ebp),%eax
	leal	-40(%ebp,%eax,8),%eax
	call	ADPCMDEC_IMADECODENIBBLE$TIMASTATE$BYTE$$SMALLINT
	movl	12(%ebp),%edx
	movl	(%edx),%edx
	movl	-24(%ebp),%ecx
	movw	%ax,(%edx,%ecx,2)
	movzwl	-12(%ebp),%eax
	addl	%eax,-24(%ebp)
	movzbl	-66(%ebp),%edx
	shrl	$4,%edx
	andl	$15,%edx
	movl	-60(%ebp),%eax
	leal	-40(%ebp,%eax,8),%eax
	call	ADPCMDEC_IMADECODENIBBLE$TIMASTATE$BYTE$$SMALLINT
	movl	12(%ebp),%edx
	movl	(%edx),%ecx
	movl	-24(%ebp),%edx
	movw	%ax,(%ecx,%edx,2)
	movzwl	-12(%ebp),%eax
	addl	%eax,-24(%ebp)
	cmpb	$3,-65(%ebp)
	jb	Lj153
Lj152:
	cmpl	-60(%ebp),%ebx
	jg	Lj150
Lj149:
Lj146:
	movl	-64(%ebp),%eax
	cmpl	-56(%ebp),%eax
	jl	Lj145
	jmp	Lj147
Lj147:
Lj142:
Lj99:
	movzwl	16(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%eax,%edx
	cmpl	-8(%ebp),%edx
	jle	Lj98
	jmp	Lj100
Lj100:
	movb	$1,-13(%ebp)
Lj60:
	movb	-13(%ebp),%al
	movl	-72(%ebp),%ebx
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	ADPCMDEC_MSDECODENIBBLE$TMSADPCMSTATE$BYTE$$SMALLINT
ADPCMDEC_MSDECODENIBBLE$TMSADPCMSTATE$BYTE$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movzbl	-8(%ebp),%eax
	cmpl	$8,%eax
	jge	Lj174
	jmp	Lj175
Lj174:
	movsbl	-8(%ebp),%eax
	subl	$16,%eax
	movb	%al,-11(%ebp)
	jmp	Lj178
Lj175:
	movb	-8(%ebp),%al
	movb	%al,-11(%ebp)
Lj178:
	movl	-4(%ebp),%eax
	movswl	6(%eax),%eax
	movl	-4(%ebp),%edx
	movswl	(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	movswl	8(%edx),%ecx
	movl	-4(%ebp),%edx
	movswl	2(%edx),%edx
	imull	%edx,%ecx
	addl	%ecx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$255,%edx
	addl	%edx,%eax
	sarl	$8,%eax
	movl	%eax,-16(%ebp)
	movsbl	-11(%ebp),%edx
	movl	-4(%ebp),%eax
	movswl	4(%eax),%eax
	imull	%eax,%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%eax
	call	ADPCMDEC_CLAMPS16$LONGINT$$SMALLINT
	movw	%ax,-10(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movw	6(%eax),%ax
	movw	%ax,8(%edx)
	movl	-4(%ebp),%edx
	movw	-10(%ebp),%ax
	movw	%ax,6(%edx)
	movb	-8(%ebp),%al
	andb	$15,%al
	movzbl	%al,%eax
	movswl	TC_ADPCMDEC_MSADAPTTABLE(,%eax,2),%eax
	movl	-4(%ebp),%edx
	movswl	4(%edx),%edx
	imull	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$255,%edx
	addl	%edx,%eax
	sarl	$8,%eax
	movl	-4(%ebp),%edx
	movw	%ax,4(%edx)
	movl	-4(%ebp),%eax
	movw	4(%eax),%ax
	cmpw	$16,%ax
	jl	Lj195
	jmp	Lj196
Lj195:
	movl	-4(%ebp),%eax
	movw	$16,4(%eax)
Lj196:
	movw	-10(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	ADPCMDEC_MSDECODE$crcAA2D1886
ADPCMDEC_MSDECODE$crcAA2D1886:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$76,%esp
	movl	%ebx,-76(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	12(%ebp),%eax
	movl	$0,(%eax)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movzwl	-12(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj207
	jmp	Lj209
Lj209:
	movzwl	-12(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj207
	jmp	Lj208
Lj207:
	jmp	Lj199
Lj208:
	movzwl	-12(%ebp),%edx
	imull	$7,%edx
	movzwl	28(%ebp),%eax
	cmpl	%eax,%edx
	jg	Lj210
	jmp	Lj211
Lj210:
	jmp	Lj199
Lj211:
	movzwl	28(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj212
	jmp	Lj213
Lj212:
	jmp	Lj199
Lj213:
	movzwl	20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj216
	jmp	Lj215
Lj216:
	movl	16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj214
	jmp	Lj215
Lj214:
	movl	16(%ebp),%eax
	movl	%eax,-72(%ebp)
	jmp	Lj219
Lj215:
	movl	$TC_ADPCMDEC_MSDEFAULTCOEFFS,%eax
	movl	%eax,-72(%ebp)
	movw	$7,20(%ebp)
Lj219:
	movzwl	28(%ebp),%ecx
	movl	-8(%ebp),%eax
	cltd
	idivl	%ecx
	movl	%eax,-48(%ebp)
	movzwl	24(%ebp),%eax
	movl	-48(%ebp),%edx
	imull	%eax,%edx
	movl	%edx,-52(%ebp)
	movzwl	-12(%ebp),%eax
	movl	-52(%ebp),%edx
	imull	%eax,%edx
	shll	$1,%edx
	movl	12(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	8(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	%edx,(%eax)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	jmp	Lj239
	.balign 4,0x90
Lj238:
	movzwl	-12(%ebp),%eax
	decl	%eax
	movl	$0,-60(%ebp)
	cmpl	-60(%ebp),%eax
	jl	Lj242
	decl	-60(%ebp)
	.balign 4,0x90
Lj243:
	incl	-60(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%ecx
	movb	(%edx,%ecx,1),%dl
	movb	%dl,-53(%ebp)
	incl	-20(%ebp)
	movzbw	-53(%ebp),%dx
	cmpw	20(%ebp),%dx
	jae	Lj246
	jmp	Lj247
Lj246:
	movb	$0,-53(%ebp)
Lj247:
	movzbl	-53(%ebp),%edx
	shll	$2,%edx
	movl	-72(%ebp),%ecx
	addl	%ecx,%edx
	movl	-60(%ebp),%ecx
	imull	$10,%ecx
	movw	(%edx),%dx
	movw	%dx,-44(%ebp,%ecx)
	movzbl	-53(%ebp),%edx
	shll	$2,%edx
	movl	-72(%ebp),%ecx
	addl	%ecx,%edx
	addl	$2,%edx
	movl	-60(%ebp),%ecx
	imull	$10,%ecx
	movw	(%edx),%dx
	movw	%dx,-42(%ebp,%ecx)
	cmpl	-60(%ebp),%eax
	jg	Lj243
Lj242:
	movzwl	-12(%ebp),%eax
	decl	%eax
	movl	$0,-60(%ebp)
	cmpl	-60(%ebp),%eax
	jl	Lj255
	decl	-60(%ebp)
	.balign 4,0x90
Lj256:
	incl	-60(%ebp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	incl	%edx
	movzbw	(%ecx,%edx,1),%dx
	movzwl	%dx,%edx
	shll	$8,%edx
	movl	-4(%ebp),%ebx
	movl	-20(%ebp),%ecx
	movzbl	(%ebx,%ecx,1),%ecx
	orl	%ecx,%edx
	movl	-60(%ebp),%ecx
	imull	$10,%ecx
	movw	%dx,-40(%ebp,%ecx)
	addl	$2,-20(%ebp)
	cmpl	-60(%ebp),%eax
	jg	Lj256
Lj255:
	movzwl	-12(%ebp),%eax
	decl	%eax
	movl	$0,-60(%ebp)
	cmpl	-60(%ebp),%eax
	jl	Lj260
	decl	-60(%ebp)
	.balign 4,0x90
Lj261:
	incl	-60(%ebp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	incl	%edx
	movzbw	(%ecx,%edx,1),%dx
	movzwl	%dx,%edx
	shll	$8,%edx
	movl	-4(%ebp),%ebx
	movl	-20(%ebp),%ecx
	movzbl	(%ebx,%ecx,1),%ecx
	orl	%ecx,%edx
	movl	-60(%ebp),%ecx
	imull	$10,%ecx
	movw	%dx,-38(%ebp,%ecx)
	addl	$2,-20(%ebp)
	cmpl	-60(%ebp),%eax
	jg	Lj261
Lj260:
	movzwl	-12(%ebp),%eax
	decl	%eax
	movl	$0,-60(%ebp)
	cmpl	-60(%ebp),%eax
	jl	Lj265
	decl	-60(%ebp)
	.balign 4,0x90
Lj266:
	incl	-60(%ebp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	incl	%edx
	movzbw	(%ecx,%edx,1),%dx
	movzwl	%dx,%edx
	shll	$8,%edx
	movl	-4(%ebp),%ebx
	movl	-20(%ebp),%ecx
	movzbl	(%ebx,%ecx,1),%ecx
	orl	%ecx,%edx
	movl	-60(%ebp),%ecx
	imull	$10,%ecx
	movw	%dx,-36(%ebp,%ecx)
	addl	$2,-20(%ebp)
	cmpl	-60(%ebp),%eax
	jg	Lj266
Lj265:
	movzwl	-12(%ebp),%eax
	cmpl	$1,%eax
	je	Lj269
	jmp	Lj270
Lj269:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	-24(%ebp),%ecx
	movw	-36(%ebp),%dx
	movw	%dx,(%eax,%ecx,2)
	incl	-24(%ebp)
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	-24(%ebp),%edx
	movw	-38(%ebp),%cx
	movw	%cx,(%eax,%edx,2)
	incl	-24(%ebp)
	jmp	Lj275
Lj270:
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	-24(%ebp),%edx
	movw	-36(%ebp),%cx
	movw	%cx,(%eax,%edx,2)
	movl	12(%ebp),%eax
	movl	(%eax),%ecx
	movl	-24(%ebp),%eax
	incl	%eax
	movw	-26(%ebp),%dx
	movw	%dx,(%ecx,%eax,2)
	addl	$2,-24(%ebp)
	movl	12(%ebp),%eax
	movl	(%eax),%ecx
	movl	-24(%ebp),%eax
	movw	-38(%ebp),%dx
	movw	%dx,(%ecx,%eax,2)
	movl	12(%ebp),%eax
	movl	(%eax),%ecx
	movl	-24(%ebp),%eax
	incl	%eax
	movw	-28(%ebp),%dx
	movw	%dx,(%ecx,%eax,2)
	addl	$2,-24(%ebp)
Lj275:
	movl	$2,-64(%ebp)
	jmp	Lj287
	.balign 4,0x90
Lj286:
	movl	-20(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj289
	jmp	Lj290
Lj289:
	jmp	Lj288
Lj290:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,-65(%ebp)
	incl	-20(%ebp)
	movzwl	-12(%ebp),%eax
	cmpl	$1,%eax
	je	Lj293
	jmp	Lj294
Lj293:
	movzbl	-65(%ebp),%edx
	shrl	$4,%edx
	andl	$15,%edx
	leal	-44(%ebp),%eax
	call	ADPCMDEC_MSDECODENIBBLE$TMSADPCMSTATE$BYTE$$SMALLINT
	movl	12(%ebp),%edx
	movl	(%edx),%ecx
	movl	-24(%ebp),%edx
	movw	%ax,(%ecx,%edx,2)
	incl	-24(%ebp)
	incl	-64(%ebp)
	movzwl	24(%ebp),%eax
	cmpl	-64(%ebp),%eax
	jg	Lj301
	jmp	Lj302
Lj301:
	movb	-65(%ebp),%dl
	andb	$15,%dl
	leal	-44(%ebp),%eax
	call	ADPCMDEC_MSDECODENIBBLE$TMSADPCMSTATE$BYTE$$SMALLINT
	movl	12(%ebp),%edx
	movl	(%edx),%ecx
	movl	-24(%ebp),%edx
	movw	%ax,(%ecx,%edx,2)
	incl	-24(%ebp)
	incl	-64(%ebp)
Lj302:
	jmp	Lj309
Lj294:
	movzbl	-65(%ebp),%edx
	shrl	$4,%edx
	andl	$15,%edx
	leal	-44(%ebp),%eax
	call	ADPCMDEC_MSDECODENIBBLE$TMSADPCMSTATE$BYTE$$SMALLINT
	movl	12(%ebp),%edx
	movl	(%edx),%ecx
	movl	-24(%ebp),%edx
	movw	%ax,(%ecx,%edx,2)
	movb	-65(%ebp),%dl
	andb	$15,%dl
	leal	-34(%ebp),%eax
	call	ADPCMDEC_MSDECODENIBBLE$TMSADPCMSTATE$BYTE$$SMALLINT
	movl	12(%ebp),%edx
	movl	(%edx),%ecx
	movl	-24(%ebp),%edx
	incl	%edx
	movw	%ax,(%ecx,%edx,2)
	addl	$2,-24(%ebp)
	incl	-64(%ebp)
Lj309:
Lj287:
	movzwl	24(%ebp),%eax
	cmpl	-64(%ebp),%eax
	jg	Lj286
	jmp	Lj288
Lj288:
Lj239:
	movzwl	28(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%edx,%eax
	cmpl	-8(%ebp),%eax
	jle	Lj238
	jmp	Lj240
Lj240:
	movb	$1,-13(%ebp)
Lj199:
	movb	-13(%ebp),%al
	movl	-76(%ebp),%ebx
	leave
	ret	$24
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_ADPCMDEC
THREADVARLIST_ADPCMDEC:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 2
TC_ADPCMDEC_IMASTEPTABLE:
	.short	7,8,9,10,11,12,13,14,16,17,19,21,23,25,28,31,34,37,41,45,50,55,60,66,73,80,88,97,107,118,130,143,157,173
	.short	190,209,230,253,279,307,337,371,408,449,494,544,598,658,724,796,876,963,1060,1166,1282,1411,1552
	.short	1707,1878,2066,2272,2499,2749,3024,3327,3660,4026,4428,4871,5358,5894,6484,7132,7845,8630
	.short	9493,10442,11487,12635,13899,15289,16818,18500,20350,22385,24623,27086,29794,32767

.data
TC_ADPCMDEC_IMAINDEXTABLE:
	.byte	255,255,255,255,2,4,6,8,255,255,255,255,2,4,6,8

.data
	.balign 2
TC_ADPCMDEC_MSADAPTTABLE:
	.short	230,230,230,230,307,409,512,614,768,614,512,409,307,230,230,230

.data
	.balign 2
TC_ADPCMDEC_MSDEFAULTCOEFFS:
	.short	256,0,512,65280,0,0,192,64,240,0,460,65328,392,65304
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
.globl	INIT_ADPCMDEC_TIMASTATE
INIT_ADPCMDEC_TIMASTATE:
	.byte	13,9
	.ascii	"TIMAState"
	.long	8,0

.data
	.balign 4
.globl	RTTI_ADPCMDEC_TIMASTATE
RTTI_ADPCMDEC_TIMASTATE:
	.byte	13,9
	.ascii	"TIMAState"
	.long	8,2
	.long	RTTI_SYSTEM_SMALLINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4

.data
	.balign 4
.globl	INIT_ADPCMDEC_TMSADPCMSTATE
INIT_ADPCMDEC_TMSADPCMSTATE:
	.byte	13,13
	.ascii	"TMSADPCMState"
	.long	10,0

.data
	.balign 4
.globl	RTTI_ADPCMDEC_TMSADPCMSTATE
RTTI_ADPCMDEC_TMSADPCMSTATE:
	.byte	13,13
	.ascii	"TMSADPCMState"
	.long	10,5
	.long	RTTI_SYSTEM_SMALLINT
	.long	0
	.long	RTTI_SYSTEM_SMALLINT
	.long	2
	.long	RTTI_SYSTEM_SMALLINT
	.long	4
	.long	RTTI_SYSTEM_SMALLINT
	.long	6
	.long	RTTI_SYSTEM_SMALLINT
	.long	8
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

