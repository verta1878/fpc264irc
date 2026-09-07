	.file "system.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
SYSTEM_GET_PC_ADDR$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	$0,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETPROCESSID$$LONGWORD
SYSTEM_GETPROCESSID$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	U_SYSTEM_PROCESSID,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_ERRNO2INOUTRES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj23
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj24
Lj23:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj24:
	movw	(%eax),%ax
	cmpw	$19,%ax
	jb	Lj14
	subw	$19,%ax
	subw	$12,%ax
	jbe	Lj15
	decw	%ax
	subw	$1,%ax
	jbe	Lj16
	subw	$5,%ax
	je	Lj17
	decw	%ax
	je	Lj18
	subw	$71,%ax
	je	Lj20
	subw	$2,%ax
	je	Lj19
	subw	$2,%ax
	je	Lj21
	subw	$176,%ax
	je	Lj22
	jmp	Lj14
Lj15:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj27
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj28
Lj27:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj28:
	movzwl	(%eax),%ebx
	addl	$131,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj29
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj30
Lj29:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj30:
	movw	%bx,(%eax)
	jmp	Lj13
Lj16:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj33
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj34
Lj33:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj34:
	movw	$5,(%eax)
	jmp	Lj13
Lj17:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj37
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj38
Lj37:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj38:
	movw	$100,(%eax)
	jmp	Lj13
Lj18:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj41
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj42
Lj41:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj42:
	movw	$101,(%eax)
	jmp	Lj13
Lj19:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj45
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj46
Lj45:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj46:
	movw	$101,(%eax)
	jmp	Lj13
Lj20:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj49
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj50
Lj49:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj50:
	movw	$5,(%eax)
	jmp	Lj13
Lj21:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj53
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj54
Lj53:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj54:
	movw	$6,(%eax)
	jmp	Lj13
Lj22:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj57
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj58
Lj57:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj58:
	movw	$290,(%eax)
	jmp	Lj13
Lj14:
Lj13:
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_CPUID_SUPPORT$$BOOLEAN:
	subl	$1,%esp
	pushl	%ebx
	pushfl
	pushfl
	popl	%eax
	movl	%eax,%ebx
	xorl	$2097152,%eax
	pushl	%eax
	popfl
	pushfl
	popl	%eax
	popfl
	andl	$2097152,%eax
	andl	$2097152,%ebx
	cmpl	%ebx,%eax
	setnzb	%al
	popl	%ebx
	incl	%esp
	ret

.text
	.balign 4,0x90
SYSTEM_SSE_SUPPORT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	SYSTEM_CPUID_SUPPORT$$BOOLEAN
	testb	%al,%al
	jne	Lj63
	jmp	Lj64
Lj63:
	pushl	%ebx
	movl	$1,%eax
	cpuid
	movl	%edx,-8(%ebp)
	popl	%ebx
	movl	-8(%ebp),%eax
	andl	$33554432,%eax
	testl	%eax,%eax
	jne	Lj67
	jmp	Lj66
Lj67:
	cmpb	$0,U_SYSTEM_OS_SUPPORTS_SSE
	jne	Lj65
	jmp	Lj66
Lj65:
	movb	$1,-1(%ebp)
	jmp	Lj68
Lj66:
	movb	$0,-1(%ebp)
Lj68:
	jmp	Lj69
Lj64:
	movb	$0,-1(%ebp)
Lj69:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_MMX_SUPPORT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	SYSTEM_CPUID_SUPPORT$$BOOLEAN
	testb	%al,%al
	jne	Lj74
	jmp	Lj75
Lj74:
	pushl	%ebx
	movl	$1,%eax
	cpuid
	movl	%edx,-8(%ebp)
	popl	%ebx
	movl	-8(%ebp),%eax
	andl	$8388608,%eax
	testl	%eax,%eax
	setneb	-1(%ebp)
	jmp	Lj78
Lj75:
	movb	$0,-1(%ebp)
Lj78:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SMALLFORWARDMOVE_3:
	jmp	*Lj83(,%ecx,4)
	.balign 16,0x90
Lj83:
	.long	Lj84
	.long	Lj85
	.long	Lj86
	.long	Lj87
	.long	Lj88
	.long	Lj89
	.long	Lj90
	.long	Lj91
	.long	Lj92
	.long	Lj93
	.long	Lj94
	.long	Lj95
	.long	Lj96
	.long	Lj97
	.long	Lj98
	.long	Lj99
	.long	Lj100
	.long	Lj101
	.long	Lj102
	.long	Lj103
	.long	Lj104
	.long	Lj105
	.long	Lj106
	.long	Lj107
	.long	Lj108
	.long	Lj109
	.long	Lj110
	.long	Lj111
	.long	Lj112
	.long	Lj113
	.long	Lj114
	.long	Lj115
	.long	Lj116
	.long	Lj117
	.long	Lj118
	.long	Lj119
	.long	Lj120
Lj120:
	movl	-36(%eax),%ecx
	movl	%ecx,-36(%edx)
Lj116:
	movl	-32(%eax),%ecx
	movl	%ecx,-32(%edx)
Lj112:
	movl	-28(%eax),%ecx
	movl	%ecx,-28(%edx)
Lj108:
	movl	-24(%eax),%ecx
	movl	%ecx,-24(%edx)
Lj104:
	movl	-20(%eax),%ecx
	movl	%ecx,-20(%edx)
Lj100:
	movl	-16(%eax),%ecx
	movl	%ecx,-16(%edx)
Lj96:
	movl	-12(%eax),%ecx
	movl	%ecx,-12(%edx)
Lj92:
	movl	-8(%eax),%ecx
	movl	%ecx,-8(%edx)
Lj88:
	movl	-4(%eax),%ecx
	movl	%ecx,-4(%edx)
	ret
Lj119:
	movl	-35(%eax),%ecx
	movl	%ecx,-35(%edx)
Lj115:
	movl	-31(%eax),%ecx
	movl	%ecx,-31(%edx)
Lj111:
	movl	-27(%eax),%ecx
	movl	%ecx,-27(%edx)
Lj107:
	movl	-23(%eax),%ecx
	movl	%ecx,-23(%edx)
Lj103:
	movl	-19(%eax),%ecx
	movl	%ecx,-19(%edx)
Lj99:
	movl	-15(%eax),%ecx
	movl	%ecx,-15(%edx)
Lj95:
	movl	-11(%eax),%ecx
	movl	%ecx,-11(%edx)
Lj91:
	movl	-7(%eax),%ecx
	movl	%ecx,-7(%edx)
	movl	-4(%eax),%ecx
	movl	%ecx,-4(%edx)
	ret
Lj87:
	movzwl	-3(%eax),%ecx
	movw	%cx,-3(%edx)
	movzbl	-1(%eax),%ecx
	movb	%cl,-1(%edx)
	ret
Lj118:
	movl	-34(%eax),%ecx
	movl	%ecx,-34(%edx)
Lj114:
	movl	-30(%eax),%ecx
	movl	%ecx,-30(%edx)
Lj110:
	movl	-26(%eax),%ecx
	movl	%ecx,-26(%edx)
Lj106:
	movl	-22(%eax),%ecx
	movl	%ecx,-22(%edx)
Lj102:
	movl	-18(%eax),%ecx
	movl	%ecx,-18(%edx)
Lj98:
	movl	-14(%eax),%ecx
	movl	%ecx,-14(%edx)
Lj94:
	movl	-10(%eax),%ecx
	movl	%ecx,-10(%edx)
Lj90:
	movl	-6(%eax),%ecx
	movl	%ecx,-6(%edx)
Lj86:
	movzwl	-2(%eax),%ecx
	movw	%cx,-2(%edx)
	ret
Lj117:
	movl	-33(%eax),%ecx
	movl	%ecx,-33(%edx)
Lj113:
	movl	-29(%eax),%ecx
	movl	%ecx,-29(%edx)
Lj109:
	movl	-25(%eax),%ecx
	movl	%ecx,-25(%edx)
Lj105:
	movl	-21(%eax),%ecx
	movl	%ecx,-21(%edx)
Lj101:
	movl	-17(%eax),%ecx
	movl	%ecx,-17(%edx)
Lj97:
	movl	-13(%eax),%ecx
	movl	%ecx,-13(%edx)
Lj93:
	movl	-9(%eax),%ecx
	movl	%ecx,-9(%edx)
Lj89:
	movl	-5(%eax),%ecx
	movl	%ecx,-5(%edx)
Lj85:
	movzbl	-1(%eax),%ecx
	movb	%cl,-1(%edx)
Lj84:
	ret

.text
	.balign 4,0x90
SYSTEM_SMALLBACKWARDMOVE_3:
	jmp	*Lj123(,%ecx,4)
	.balign 16,0x90
Lj123:
	.long	Lj124
	.long	Lj125
	.long	Lj126
	.long	Lj127
	.long	Lj128
	.long	Lj129
	.long	Lj130
	.long	Lj131
	.long	Lj132
	.long	Lj133
	.long	Lj134
	.long	Lj135
	.long	Lj136
	.long	Lj137
	.long	Lj138
	.long	Lj139
	.long	Lj140
	.long	Lj141
	.long	Lj142
	.long	Lj143
	.long	Lj144
	.long	Lj145
	.long	Lj146
	.long	Lj147
	.long	Lj148
	.long	Lj149
	.long	Lj150
	.long	Lj151
	.long	Lj152
	.long	Lj153
	.long	Lj154
	.long	Lj155
	.long	Lj156
	.long	Lj157
	.long	Lj158
	.long	Lj159
	.long	Lj160
Lj160:
	movl	32(%eax),%ecx
	movl	%ecx,32(%edx)
Lj156:
	movl	28(%eax),%ecx
	movl	%ecx,28(%edx)
Lj152:
	movl	24(%eax),%ecx
	movl	%ecx,24(%edx)
Lj148:
	movl	20(%eax),%ecx
	movl	%ecx,20(%edx)
Lj144:
	movl	16(%eax),%ecx
	movl	%ecx,16(%edx)
Lj140:
	movl	12(%eax),%ecx
	movl	%ecx,12(%edx)
Lj136:
	movl	8(%eax),%ecx
	movl	%ecx,8(%edx)
Lj132:
	movl	4(%eax),%ecx
	movl	%ecx,4(%edx)
Lj128:
	movl	(%eax),%ecx
	movl	%ecx,(%edx)
	ret
Lj159:
	movl	31(%eax),%ecx
	movl	%ecx,31(%edx)
Lj155:
	movl	27(%eax),%ecx
	movl	%ecx,27(%edx)
Lj151:
	movl	23(%eax),%ecx
	movl	%ecx,23(%edx)
Lj147:
	movl	19(%eax),%ecx
	movl	%ecx,19(%edx)
Lj143:
	movl	15(%eax),%ecx
	movl	%ecx,15(%edx)
Lj139:
	movl	11(%eax),%ecx
	movl	%ecx,11(%edx)
Lj135:
	movl	7(%eax),%ecx
	movl	%ecx,7(%edx)
Lj131:
	movl	3(%eax),%ecx
	movl	%ecx,3(%edx)
	movl	(%eax),%ecx
	movl	%ecx,(%edx)
	ret
Lj127:
	movzwl	1(%eax),%ecx
	movw	%cx,1(%edx)
	movzbl	(%eax),%ecx
	movb	%cl,(%edx)
	ret
Lj158:
	movl	30(%eax),%ecx
	movl	%ecx,30(%edx)
Lj154:
	movl	26(%eax),%ecx
	movl	%ecx,26(%edx)
Lj150:
	movl	22(%eax),%ecx
	movl	%ecx,22(%edx)
Lj146:
	movl	18(%eax),%ecx
	movl	%ecx,18(%edx)
Lj142:
	movl	14(%eax),%ecx
	movl	%ecx,14(%edx)
Lj138:
	movl	10(%eax),%ecx
	movl	%ecx,10(%edx)
Lj134:
	movl	6(%eax),%ecx
	movl	%ecx,6(%edx)
Lj130:
	movl	2(%eax),%ecx
	movl	%ecx,2(%edx)
Lj126:
	movzwl	(%eax),%ecx
	movw	%cx,(%edx)
	ret
Lj157:
	movl	29(%eax),%ecx
	movl	%ecx,29(%edx)
Lj153:
	movl	25(%eax),%ecx
	movl	%ecx,25(%edx)
Lj149:
	movl	21(%eax),%ecx
	movl	%ecx,21(%edx)
Lj145:
	movl	17(%eax),%ecx
	movl	%ecx,17(%edx)
Lj141:
	movl	13(%eax),%ecx
	movl	%ecx,13(%edx)
Lj137:
	movl	9(%eax),%ecx
	movl	%ecx,9(%edx)
Lj133:
	movl	5(%eax),%ecx
	movl	%ecx,5(%edx)
Lj129:
	movl	1(%eax),%ecx
	movl	%ecx,1(%edx)
Lj125:
	movzbl	(%eax),%ecx
	movb	%cl,(%edx)
Lj124:
	ret

.text
	.balign 4,0x90
SYSTEM_FORWARDS_VALGRIND:
	pushl	%esi
	pushl	%edi
	movl	%eax,%esi
	movl	%edx,%edi
	rep
	movsb
	popl	%edi
	popl	%esi
	ret

.text
	.balign 4,0x90
SYSTEM_BACKWARDS_VALGRIND:
	pushl	%esi
	pushl	%edi
	leal	-1(%eax,%ecx,1),%esi
	leal	-1(%edx,%ecx,1),%edi
Lj165:
	movb	(%esi),%al
	movb	%al,(%edi)
	decl	%esi
	decl	%edi
	decl	%ecx
	jnz	Lj165
	popl	%edi
	popl	%esi
	ret

.text
	.balign 4,0x90
SYSTEM_FORWARDS_IA32_3:
	pushl	%ebx
	movl	%edx,%ebx
	fildq	(%eax)
	addl	%ecx,%eax
	addl	%edx,%ecx
	addl	$7,%edx
	andl	$-8,%edx
	subl	%edx,%ecx
	addl	%ecx,%edx
	subl	$16,%ecx
	negl	%ecx
Lj168:
	fildq	-16(%eax,%ecx,1)
	fistpq	-16(%edx,%ecx,1)
	fildq	-8(%eax,%ecx,1)
	fistpq	-8(%edx,%ecx,1)
	addl	$16,%ecx
	jle	Lj168
	fistpq	(%ebx)
	negl	%ecx
	addl	$16,%ecx
	popl	%ebx
	jmp	SYSTEM_SMALLFORWARDMOVE_3
	ret

.text
	.balign 4,0x90
SYSTEM_BACKWARDS_IA32_3:
	pushl	%ebx
	fildq	-8(%eax,%ecx,1)
	leal	(%edx,%ecx,1),%ebx
	andl	$7,%ebx
	subl	%ebx,%ecx
	addl	%ecx,%ebx
	subl	$16,%ecx
Lj171:
	fildq	(%eax,%ecx,1)
	fildq	8(%eax,%ecx,1)
	fistpq	8(%edx,%ecx,1)
	fistpq	(%edx,%ecx,1)
	subl	$16,%ecx
	jge	Lj171
	fistpq	-8(%edx,%ebx,1)
	addl	$16,%ecx
	popl	%ebx
	jmp	SYSTEM_SMALLBACKWARDMOVE_3
	ret

.text
	.balign 4,0x90
SYSTEM_FORWARDS_MMX_3:
	cmpl	$1024,%ecx
	jge	Lj174
	cmpl	$72,%ecx
	jl	SYSTEM_FORWARDS_IA32_3
	pushl	%ebx
	movl	%edx,%ebx
	movq	(%eax),%mm0
	addl	%ecx,%eax
	addl	%edx,%ecx
	addl	$7,%edx
	andl	$-8,%edx
	subl	%edx,%ecx
	addl	%ecx,%edx
	subl	$32,%ecx
	negl	%ecx
Lj175:
	movq	-32(%eax,%ecx,1),%mm1
	movq	-24(%eax,%ecx,1),%mm2
	movq	-16(%eax,%ecx,1),%mm3
	movq	-8(%eax,%ecx,1),%mm4
	movq	%mm1,-32(%edx,%ecx,1)
	movq	%mm2,-24(%edx,%ecx,1)
	movq	%mm3,-16(%edx,%ecx,1)
	movq	%mm4,-8(%edx,%ecx,1)
	addl	$32,%ecx
	jle	Lj175
	movq	%mm0,(%ebx)
	emms
	popl	%ebx
	negl	%ecx
	addl	$32,%ecx
	jmp	SYSTEM_SMALLFORWARDMOVE_3
Lj174:
	pushl	%ebx
	movl	%ecx,%ebx
	testl	$15,%edx
	jz	Lj176
	movl	%edx,%ecx
	addl	$15,%ecx
	andl	$-16,%ecx
	subl	%edx,%ecx
	addl	%ecx,%eax
	addl	%ecx,%edx
	subl	%ecx,%ebx
	call	SYSTEM_SMALLFORWARDMOVE_3
Lj176:
	movl	%ebx,%ecx
	andl	$-16,%ecx
	subl	%ecx,%ebx
	pushl	%esi
	pushl	%edi
	movl	%eax,%esi
	movl	%edx,%edi
	movl	%ecx,%eax
	andl	$-64,%eax
	andl	$63,%ecx
	addl	%eax,%esi
	addl	%eax,%edi
	shrl	$3,%eax
	negl	%eax
Lj177:
	movq	(%esi,%eax,8),%mm0
	movq	8(%esi,%eax,8),%mm1
	movq	16(%esi,%eax,8),%mm2
	movq	24(%esi,%eax,8),%mm3
	movq	32(%esi,%eax,8),%mm4
	movq	40(%esi,%eax,8),%mm5
	movq	48(%esi,%eax,8),%mm6
	movq	56(%esi,%eax,8),%mm7
	movq	%mm0,(%edi,%eax,8)
	movq	%mm1,8(%edi,%eax,8)
	movq	%mm2,16(%edi,%eax,8)
	movq	%mm3,24(%edi,%eax,8)
	movq	%mm4,32(%edi,%eax,8)
	movq	%mm5,40(%edi,%eax,8)
	movq	%mm6,48(%edi,%eax,8)
	movq	%mm7,56(%edi,%eax,8)
	addl	$8,%eax
	jnz	Lj177
	emms
	addl	%ebx,%ecx
	shrl	$2,%ecx
	rep
	movsl
	movl	%ebx,%ecx
	andl	$3,%ecx
	rep
	movsb
	popl	%edi
	popl	%esi
	popl	%ebx
	ret

.text
	.balign 4,0x90
SYSTEM_BACKWARDS_MMX_3:
	cmpl	$72,%ecx
	jl	SYSTEM_BACKWARDS_IA32_3
	pushl	%ebx
	movq	-8(%eax,%ecx,1),%mm0
	leal	(%edx,%ecx,1),%ebx
	andl	$7,%ebx
	subl	%ebx,%ecx
	addl	%ecx,%ebx
	subl	$32,%ecx
Lj180:
	movq	(%eax,%ecx,1),%mm1
	movq	8(%eax,%ecx,1),%mm2
	movq	16(%eax,%ecx,1),%mm3
	movq	24(%eax,%ecx,1),%mm4
	movq	%mm4,24(%edx,%ecx,1)
	movq	%mm3,16(%edx,%ecx,1)
	movq	%mm2,8(%edx,%ecx,1)
	movq	%mm1,(%edx,%ecx,1)
	subl	$32,%ecx
	jge	Lj180
	movq	%mm0,-8(%edx,%ebx,1)
	emms
	addl	$32,%ecx
	popl	%ebx
	jmp	SYSTEM_SMALLBACKWARDMOVE_3
	ret

.text
	.balign 4,0x90
SYSTEM_ALIGNEDFWDMOVESSE_3$formal$formal$SMALLINT:
	pushl	%esi
	movl	%eax,%esi
	movl	%ecx,%eax
	andl	$-128,%eax
	addl	%eax,%esi
	addl	%eax,%edx
	shrl	$3,%eax
	negl	%eax
	cmpl	$-32768,%eax
	jl	Lj183
Lj184:
	testl	$15,%esi
	jnz	Lj185
Lj186:
Lj187:
	movaps	(%esi,%eax,8),%xmm0
	movaps	16(%esi,%eax,8),%xmm1
	movaps	32(%esi,%eax,8),%xmm2
	movaps	48(%esi,%eax,8),%xmm3
	movaps	%xmm0,(%edx,%eax,8)
	movaps	%xmm1,16(%edx,%eax,8)
	movaps	%xmm2,32(%edx,%eax,8)
	movaps	%xmm3,48(%edx,%eax,8)
	movaps	64(%esi,%eax,8),%xmm4
	movaps	80(%esi,%eax,8),%xmm5
	movaps	96(%esi,%eax,8),%xmm6
	movaps	112(%esi,%eax,8),%xmm7
	movaps	%xmm4,64(%edx,%eax,8)
	movaps	%xmm5,80(%edx,%eax,8)
	movaps	%xmm6,96(%edx,%eax,8)
	movaps	%xmm7,112(%edx,%eax,8)
	addl	$16,%eax
	js	Lj187
	jmp	Lj188
Lj185:
Lj189:
	movups	(%esi,%eax,8),%xmm0
	movups	16(%esi,%eax,8),%xmm1
	movups	32(%esi,%eax,8),%xmm2
	movups	48(%esi,%eax,8),%xmm3
	movaps	%xmm0,(%edx,%eax,8)
	movaps	%xmm1,16(%edx,%eax,8)
	movaps	%xmm2,32(%edx,%eax,8)
	movaps	%xmm3,48(%edx,%eax,8)
	movups	64(%esi,%eax,8),%xmm4
	movups	80(%esi,%eax,8),%xmm5
	movups	96(%esi,%eax,8),%xmm6
	movups	112(%esi,%eax,8),%xmm7
	movaps	%xmm4,64(%edx,%eax,8)
	movaps	%xmm5,80(%edx,%eax,8)
	movaps	%xmm6,96(%edx,%eax,8)
	movaps	%xmm7,112(%edx,%eax,8)
	addl	$16,%eax
	js	Lj189
	jmp	Lj188
Lj183:
	testl	$15,%esi
	jnz	Lj190
Lj191:
Lj192:
	prefetchnta	512(%esi,%eax,8)
	prefetchnta	576(%esi,%eax,8)
	movaps	(%esi,%eax,8),%xmm0
	movaps	16(%esi,%eax,8),%xmm1
	movaps	32(%esi,%eax,8),%xmm2
	movaps	48(%esi,%eax,8),%xmm3
	movntps	%xmm0,(%edx,%eax,8)
	movntps	%xmm1,16(%edx,%eax,8)
	movntps	%xmm2,32(%edx,%eax,8)
	movntps	%xmm3,48(%edx,%eax,8)
	movaps	64(%esi,%eax,8),%xmm4
	movaps	80(%esi,%eax,8),%xmm5
	movaps	96(%esi,%eax,8),%xmm6
	movaps	112(%esi,%eax,8),%xmm7
	movntps	%xmm4,64(%edx,%eax,8)
	movntps	%xmm5,80(%edx,%eax,8)
	movntps	%xmm6,96(%edx,%eax,8)
	movntps	%xmm7,112(%edx,%eax,8)
	addl	$16,%eax
	js	Lj192
	sfence
	jmp	Lj188
Lj190:
Lj193:
	prefetchnta	512(%esi,%eax,8)
	prefetchnta	576(%esi,%eax,8)
	movups	(%esi,%eax,8),%xmm0
	movups	16(%esi,%eax,8),%xmm1
	movups	32(%esi,%eax,8),%xmm2
	movups	48(%esi,%eax,8),%xmm3
	movntps	%xmm0,(%edx,%eax,8)
	movntps	%xmm1,16(%edx,%eax,8)
	movntps	%xmm2,32(%edx,%eax,8)
	movntps	%xmm3,48(%edx,%eax,8)
	movups	64(%esi,%eax,8),%xmm4
	movups	80(%esi,%eax,8),%xmm5
	movups	96(%esi,%eax,8),%xmm6
	movups	112(%esi,%eax,8),%xmm7
	movntps	%xmm4,64(%edx,%eax,8)
	movntps	%xmm5,80(%edx,%eax,8)
	movntps	%xmm6,96(%edx,%eax,8)
	movntps	%xmm7,112(%edx,%eax,8)
	addl	$16,%eax
	js	Lj193
	sfence
Lj188:
	andl	$127,%ecx
	jz	Lj194
	addl	%ecx,%esi
	addl	%ecx,%edx
	negl	%ecx
Lj195:
	movups	(%esi,%ecx,1),%xmm0
	movaps	%xmm0,(%edx,%ecx,1)
	addl	$16,%ecx
	jnz	Lj195
Lj194:
	popl	%esi
	ret

.text
	.balign 4,0x90
SYSTEM_FORWARDS_SSE_3:
	cmpl	$2048,%ecx
	jge	Lj198
	cmpl	$68,%ecx
	movups	(%eax),%xmm0
	jg	Lj199
	movups	16(%eax),%xmm1
	movups	%xmm0,(%edx)
	movups	%xmm1,16(%edx)
	addl	%ecx,%eax
	addl	%ecx,%edx
	subl	$32,%ecx
	jmp	SYSTEM_SMALLFORWARDMOVE_3
Lj199:
	pushl	%ebx
	movl	%edx,%ebx
	addl	%ecx,%eax
	addl	%edx,%ecx
	addl	$15,%edx
	andl	$-16,%edx
	subl	%edx,%ecx
	addl	%ecx,%edx
	subl	$32,%ecx
	negl	%ecx
Lj200:
	movups	-32(%eax,%ecx,1),%xmm1
	movups	-16(%eax,%ecx,1),%xmm2
	movaps	%xmm1,-32(%edx,%ecx,1)
	movaps	%xmm2,-16(%edx,%ecx,1)
	addl	$32,%ecx
	jle	Lj200
	movups	%xmm0,(%ebx)
	negl	%ecx
	addl	$32,%ecx
	popl	%ebx
	jmp	SYSTEM_SMALLFORWARDMOVE_3
Lj198:
	pushl	%ebx
	movl	%ecx,%ebx
	testl	$15,%edx
	jz	Lj201
	movl	%edx,%ecx
	addl	$15,%ecx
	andl	$-16,%ecx
	subl	%edx,%ecx
	addl	%ecx,%eax
	addl	%ecx,%edx
	subl	%ecx,%ebx
	call	SYSTEM_SMALLFORWARDMOVE_3
	movl	%ebx,%ecx
Lj201:
	andl	$-16,%ecx
	subl	%ecx,%ebx
	pushl	%edx
	pushl	%eax
	pushl	%ecx
	call	SYSTEM_ALIGNEDFWDMOVESSE_3$formal$formal$SMALLINT
	popl	%ecx
	popl	%eax
	popl	%edx
	addl	%ebx,%ecx
	addl	%ecx,%eax
	addl	%ecx,%edx
	movl	%ebx,%ecx
	popl	%ebx
	jmp	SYSTEM_SMALLFORWARDMOVE_3
	ret

.text
	.balign 4,0x90
SYSTEM_BACKWARDS_SSE_3:
	cmpl	$68,%ecx
	jg	Lj204
	subl	$32,%ecx
	movups	(%eax,%ecx,1),%xmm1
	movups	16(%eax,%ecx,1),%xmm2
	movups	%xmm1,(%edx,%ecx,1)
	movups	%xmm2,16(%edx,%ecx,1)
	jmp	SYSTEM_SMALLBACKWARDMOVE_3
Lj204:
	pushl	%ebx
	movups	-16(%eax,%ecx,1),%xmm0
	leal	(%edx,%ecx,1),%ebx
	andl	$15,%ebx
	subl	%ebx,%ecx
	addl	%ecx,%ebx
	subl	$32,%ecx
Lj205:
	movups	(%eax,%ecx,1),%xmm1
	movups	16(%eax,%ecx,1),%xmm2
	movaps	%xmm1,(%edx,%ecx,1)
	movaps	%xmm2,16(%edx,%ecx,1)
	subl	$32,%ecx
	jge	Lj205
	movups	%xmm0,-16(%edx,%ebx,1)
	addl	$32,%ecx
	popl	%ebx
	jmp	SYSTEM_SMALLBACKWARDMOVE_3
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_MOVE$formal$formal$LONGINT
SYSTEM_MOVE$formal$formal$LONGINT:
.globl	FPC_MOVE
FPC_MOVE:
	cmpl	$36,%ecx
	ja	Lj208
	cmpl	%edx,%eax
	leal	(%eax,%ecx,1),%eax
	jle	Lj209
Lj210:
	addl	%ecx,%edx
	jmp	SYSTEM_SMALLFORWARDMOVE_3
Lj209:
	je	Lj211
	subl	%ecx,%eax
	jmp	SYSTEM_SMALLBACKWARDMOVE_3
Lj208:
	jng	Lj211
	cmpl	%edx,%eax
	jg	Lj212
	je	Lj211
	pushl	%eax
	addl	%ecx,%eax
	cmpl	%edx,%eax
	popl	%eax
	jg	Lj213
Lj212:
	jmp	*TC_SYSTEM_FASTMOVEPROC_FORWARD
Lj213:
	jmp	*TC_SYSTEM_FASTMOVEPROC_BACKWARD
Lj211:
	ret

.text
	.balign 4,0x90
SYSTEM_SETUP_FASTMOVE:
	pushl	%ebp
	movl	%esp,%ebp
	cmpb	$0,__fpc_valgrind
	jne	Lj216
	jmp	Lj217
Lj216:
	movl	$SYSTEM_FORWARDS_VALGRIND,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_FORWARD
	movl	$SYSTEM_BACKWARDS_VALGRIND,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_BACKWARD
	jmp	Lj222
Lj217:
	cmpb	$0,TC_SYSTEM_HAS_SSE_SUPPORT
	jne	Lj223
	jmp	Lj224
Lj223:
	movl	$SYSTEM_FORWARDS_SSE_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_FORWARD
	movl	$SYSTEM_BACKWARDS_SSE_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_BACKWARD
	jmp	Lj229
Lj224:
	cmpb	$0,TC_SYSTEM_HAS_MMX_SUPPORT
	jne	Lj230
	jmp	Lj231
Lj230:
	movl	$SYSTEM_FORWARDS_MMX_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_FORWARD
	movl	$SYSTEM_BACKWARDS_MMX_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_BACKWARD
Lj231:
Lj229:
Lj222:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FPC_CPUINIT:
	pushl	%ebp
	movl	%esp,%ebp
	movb	$0,U_SYSTEM_OS_SUPPORTS_SSE
	cmpb	$0,operatingsystem_islibrary
	jne	Lj240
	jmp	Lj241
Lj240:
	call	SYSTEM_GET8087CW$$WORD
	movw	%ax,TC_SYSTEM_DEFAULT8087CW
Lj241:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FPC_GETEIPASEBX$$POINTER
SYSTEM_FPC_GETEIPASEBX$$POINTER:
.globl	fpc_geteipasebx
fpc_geteipasebx:
	movl	(%esp),%ebx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FPC_GETEIPASECX$$POINTER
SYSTEM_FPC_GETEIPASECX$$POINTER:
.globl	fpc_geteipasecx
fpc_geteipasecx:
	movl	(%esp),%ecx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
SYSTEM_FILLCHAR$formal$LONGINT$BYTE:
	cmpl	$22,%edx
	jg	Lj250
	orl	%edx,%edx
	jle	Lj251
Lj252:
	movb	%cl,(%eax)
	incl	%eax
	decl	%edx
	jne	Lj252
Lj251:
	ret
Lj250:
	cld
	pushl	%edi
	movl	%eax,%edi
	movzbl	%cl,%eax
	movl	%edx,%ecx
	imull	$16843009,%eax
	shrl	$2,%ecx
	andl	$3,%edx
	rep
	stosl
	movl	%edx,%ecx
Lj253:
	rep
	stosb
Lj254:
	popl	%edi
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FILLWORD$formal$LONGINT$WORD
SYSTEM_FILLWORD$formal$LONGINT$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%edi,-4(%ebp)
	movl	%eax,%edi
	movzwl	%cx,%eax
	movl	%edx,%ecx
	cmpl	$0,%ecx
	jle	Lj257
	movl	%eax,%edx
	shll	$16,%eax
	orl	%edx,%eax
	movl	%ecx,%edx
	shrl	$1,%ecx
	cld
	rep
	stosl
	movl	%edx,%ecx
	andl	$1,%ecx
	rep
	stosw
Lj257:
	movl	-4(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FILLDWORD$formal$LONGINT$LONGWORD
SYSTEM_FILLDWORD$formal$LONGINT$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%edi,-4(%ebp)
	movl	%eax,%edi
	movl	%ecx,%eax
	movl	%edx,%ecx
	cmpl	$0,%ecx
	jle	Lj260
	cld
	rep
	stosl
Lj260:
	movl	-4(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%edi,-8(%ebp)
	movl	%ebx,-12(%ebp)
	movl	%eax,%edi
	movb	%cl,%bl
	movl	%edx,%ecx
	xorl	%eax,%eax
	testl	%ecx,%ecx
	jz	Lj263
	cld
	movl	%ecx,%edx
	movb	%bl,%al
	repne
	scasb
	jne	Lj263
	incl	%ecx
	subl	%ecx,%edx
	movl	%edx,%eax
	jmp	Lj264
Lj263:
	movl	$-1,%eax
Lj264:
	movl	-8(%ebp),%edi
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%edi,-8(%ebp)
	movl	%ebx,-12(%ebp)
	movl	%eax,%edi
	movw	%cx,%bx
	movl	%edx,%ecx
	xorl	%eax,%eax
	testl	%ecx,%ecx
	jz	Lj267
	cld
	movl	%ecx,%edx
	movw	%bx,%ax
	repne
	scasw
	jne	Lj267
	incl	%ecx
	subl	%ecx,%edx
	movl	%edx,%eax
	jmp	Lj268
Lj267:
	movl	$-1,%eax
Lj268:
	movl	-8(%ebp),%edi
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INDEXDWORD$formal$LONGINT$LONGWORD$$LONGINT
SYSTEM_INDEXDWORD$formal$LONGINT$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%edi,-8(%ebp)
	movl	%ebx,-12(%ebp)
	movl	%eax,%edi
	movl	%ecx,%ebx
	movl	%edx,%ecx
	xorl	%eax,%eax
	testl	%ecx,%ecx
	jz	Lj271
	cld
	movl	%ecx,%edx
	movl	%ebx,%eax
	repne
	scasl
	jne	Lj271
	incl	%ecx
	subl	%ecx,%edx
	movl	%edx,%eax
	jmp	Lj272
Lj271:
	movl	$-1,%eax
Lj272:
	movl	-8(%ebp),%edi
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT:
	cmpl	$57,%ecx
	jg	Lj275
	testl	%ecx,%ecx
	je	Lj276
	pushl	%ebx
Lj277:
	movb	(%eax),%bl
	cmpb	(%edx),%bl
	leal	1(%eax),%eax
	leal	1(%edx),%edx
	jne	Lj278
	decl	%ecx
	jne	Lj277
Lj278:
	movzbl	-1(%edx),%ecx
	movzbl	%bl,%eax
	subl	%ecx,%eax
	popl	%ebx
	ret
Lj276:
	movl	$0,%eax
	ret
Lj275:
	pushl	%esi
	pushl	%edi
	cld
	movl	%eax,%edi
	movl	%edx,%esi
	movl	%ecx,%eax
	movl	%edi,%ecx
	negl	%ecx
	andl	$3,%ecx
	subl	%ecx,%eax
	orl	%ecx,%ecx
	rep
	cmpsb
	jne	Lj279
	movl	%eax,%ecx
	andl	$3,%eax
	shrl	$2,%ecx
	orl	%ecx,%ecx
	rep
	cmpsl
	je	Lj280
	movl	$4,%eax
	subl	%eax,%esi
	subl	%eax,%edi
Lj280:
	movl	%eax,%ecx
	orl	%eax,%eax
	rep
	cmpsb
Lj279:
	movzbl	-1(%esi),%ecx
	movzbl	-1(%edi),%eax
	subl	%ecx,%eax
Lj281:
	popl	%edi
	popl	%esi
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT
SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT:
	cmpl	$32,%ecx
	jg	Lj284
	testl	%ecx,%ecx
	je	Lj285
	pushl	%ebx
Lj286:
	movw	(%eax),%bx
	cmpw	(%edx),%bx
	leal	2(%eax),%eax
	leal	2(%edx),%edx
	jne	Lj287
	decl	%ecx
	jne	Lj286
Lj287:
	movzwl	-2(%edx),%ecx
	movzwl	%bx,%eax
	subl	%ecx,%eax
	popl	%ebx
	ret
Lj285:
	movl	$0,%eax
	ret
Lj284:
	pushl	%esi
	pushl	%edi
	pushl	%ebx
	cld
	movl	%eax,%edi
	movl	%edx,%esi
	movl	%ecx,%eax
	movl	(%edi),%ebx
	cmpl	(%esi),%ebx
	jne	Lj288
	shll	$1,%eax
	movl	%edi,%edx
	negl	%edx
	andl	$3,%edx
	addl	%edx,%esi
	addl	%edx,%edi
	subl	%edx,%eax
	movl	%eax,%ecx
	andl	$3,%eax
	andl	$1,%edx
	shrl	$2,%ecx
	orl	%ecx,%ecx
	rep
	cmpsl
	je	Lj289
	movl	$4,%eax
	subl	%eax,%esi
	subl	%eax,%edi
	incl	%eax
Lj289:
	subl	%edx,%esi
	subl	%edx,%edi
	addl	%edx,%eax
	shrl	$1,%eax
Lj288:
	movl	%eax,%ecx
	orl	%eax,%eax
	rep
	cmpsw
Lj290:
	movzwl	-2(%esi),%ecx
	movzwl	-2(%edi),%eax
	subl	%ecx,%eax
Lj291:
	popl	%ebx
	popl	%edi
	popl	%esi
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_COMPAREDWORD$formal$formal$LONGINT$$LONGINT
SYSTEM_COMPAREDWORD$formal$formal$LONGINT$$LONGINT:
	cmpl	$32,%ecx
	jg	Lj294
	testl	%ecx,%ecx
	je	Lj295
	pushl	%ebx
Lj296:
	movl	(%eax),%ebx
	cmpl	(%edx),%ebx
	leal	4(%eax),%eax
	leal	4(%edx),%edx
	jne	Lj297
	decl	%ecx
	jne	Lj296
Lj297:
	xorl	%eax,%eax
	movl	-4(%edx),%edx
	subl	%edx,%ebx
	setbb	%dl
	setab	%cl
	addb	%cl,%al
	subb	%dl,%al
	movsbl	%al,%eax
	popl	%ebx
	ret
Lj295:
	movl	$0,%eax
	ret
Lj294:
	pushl	%esi
	pushl	%edi
	cld
	movl	%eax,%edi
	movl	%edx,%esi
	xorl	%eax,%eax
	rep
	cmpsl
	movl	-4(%edi),%edi
	subl	-4(%esi),%edi
	setbb	%dl
	setab	%cl
	addb	%cl,%al
	subb	%dl,%al
	movsbl	%al,%eax
Lj298:
	popl	%edi
	popl	%esi
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INDEXCHAR0$formal$LONGINT$CHAR$$LONGINT
SYSTEM_INDEXCHAR0$formal$LONGINT$CHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%esi,-8(%ebp)
	movl	%ebx,-12(%ebp)
	movl	%eax,%esi
	movzbl	%cl,%ebx
	testl	%edx,%edx
	je	Lj301
	xorl	%ecx,%ecx
	xorl	%eax,%eax
	.balign 4,0x90
Lj302:
	movb	(%esi),%al
	cmpb	%al,%bl
	je	Lj301
	incl	%ecx
	incl	%esi
	cmpl	%edx,%ecx
	je	Lj303
	testl	%eax,%eax
	jne	Lj302
Lj303:
	movl	$-1,%ecx
Lj301:
	movl	%ecx,%eax
	movl	-8(%ebp),%esi
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_to_shortstr
fpc_shortstr_to_shortstr:
.globl	FPC_SHORTSTR_TO_SHORTSTR
FPC_SHORTSTR_TO_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%edi,-8(%ebp)
	movl	%esi,-4(%ebp)
	cld
	movl	%eax,%edi
	movl	%ecx,%esi
	movl	%edx,%ecx
	xorl	%eax,%eax
	lodsb
	cmpl	%ecx,%eax
	jbe	Lj306
	movl	%ecx,%eax
Lj306:
	stosb
	cmpl	$7,%eax
	jl	Lj307
	movl	%edi,%ecx
	negl	%ecx
	andl	$3,%ecx
	subl	%ecx,%eax
	rep
	movsb
	movl	%eax,%ecx
	andl	$3,%eax
	shrl	$2,%ecx
	rep
	movsl
Lj307:
	movl	%eax,%ecx
	rep
	movsb
	movl	-8(%ebp),%edi
	movl	-4(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FPC_SHORTSTR_ASSIGN$LONGINT$POINTER$POINTER
SYSTEM_FPC_SHORTSTR_ASSIGN$LONGINT$POINTER$POINTER:
.globl	FPC_SHORTSTR_ASSIGN
FPC_SHORTSTR_ASSIGN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	%eax
	pushl	%ecx
	cld
	movl	-12(%ebp),%edi
	movl	-8(%ebp),%esi
	xorl	%eax,%eax
	movl	-4(%ebp),%ecx
	lodsb
	cmpl	%ecx,%eax
	jbe	Lj310
	movl	%ecx,%eax
Lj310:
	stosb
	cmpl	$7,%eax
	jl	Lj311
	movl	%edi,%ecx
	negl	%ecx
	andl	$3,%ecx
	subl	%ecx,%eax
	rep
	movsb
	movl	%eax,%ecx
	andl	$3,%eax
	shrl	$2,%ecx
	rep
	movsl
Lj311:
	movl	%eax,%ecx
	rep
	movsb
	popl	%ecx
	popl	%eax
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_compare
fpc_shortstr_compare:
.globl	FPC_SHORTSTR_COMPARE
FPC_SHORTSTR_COMPARE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%edi,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%ebx,-16(%ebp)
	cld
	movl	%edx,%esi
	movl	%eax,%edi
	movzbl	(%esi),%eax
	movzbl	(%edi),%ebx
	movl	%eax,%edx
	incl	%esi
	incl	%edi
	cmpl	%ebx,%eax
	jbe	Lj314
	movl	%ebx,%eax
Lj314:
	cmpl	$7,%eax
	jl	Lj315
	movl	%edi,%ecx
	negl	%ecx
	andl	$3,%ecx
	subl	%ecx,%eax
	orl	%ecx,%ecx
	rep
	cmpsb
	jne	Lj316
	movl	%eax,%ecx
	andl	$3,%eax
	shrl	$2,%ecx
	orl	%ecx,%ecx
	rep
	cmpsl
	je	Lj315
	movl	$4,%eax
	subl	%eax,%esi
	subl	%eax,%edi
Lj315:
	movl	%eax,%ecx
	orl	%eax,%eax
	rep
	cmpsb
	je	Lj317
Lj316:
	movzbl	-1(%esi),%edx
	movzbl	-1(%edi),%ebx
Lj317:
	movl	%ebx,%eax
	subl	%edx,%eax
	movl	-12(%ebp),%edi
	movl	-8(%ebp),%esi
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_pchar_to_shortstr
fpc_pchar_to_shortstr:
.globl	FPC_PCHAR_TO_SHORTSTR
FPC_PCHAR_TO_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-16(%ebp)
	movl	%ecx,%esi
	movl	%eax,%edi
	movl	%edi,-4(%ebp)
	movl	$1,%ecx
	testl	%esi,%esi
	movl	%esi,%eax
	jz	Lj320
	leal	3(%esi),%edx
	andl	$-4,%edx
	incl	%edi
	subl	%esi,%edx
	jz	Lj321
Lj322:
	movb	(%esi),%al
	incl	%esi
	testb	%al,%al
	jz	Lj320
	incl	%edi
	incb	%cl
	decb	%dl
	movb	%al,-1(%edi)
	jne	Lj322
	.balign 16,0x90
Lj321:
	movl	(%esi),%ebx
	addl	$4,%edi
	leal	-16843009(%ebx),%eax
	movl	%ebx,%edx
	addl	$4,%esi
	notl	%edx
	andl	%edx,%eax
	addl	$4,%ecx
	andl	$-2139062144,%eax
	movl	%ebx,-4(%edi)
	jnz	Lj323
	cmpl	$252,%ecx
	ja	Lj324
	jmp	Lj321
Lj323:
	subl	$4,%ecx
	shrl	$8,%eax
	jc	Lj320
	incl	%ecx
	shrl	$8,%eax
	jc	Lj320
	incl	%ecx
	shrl	$8,%eax
	jc	Lj320
	incl	%ecx
	jmp	Lj320
Lj324:
	testb	%cl,%cl
	jz	Lj320
	movl	(%esi),%eax
Lj325:
	testb	%al,%al
	jz	Lj320
	movb	%al,(%edi)
	shrl	$8,%eax
	incl	%edi
	incb	%cl
	jnz	Lj325
Lj320:
	movl	-4(%ebp),%edi
	addb	$255,%cl
	movb	%cl,(%edi)
	movl	-12(%ebp),%esi
	movl	-16(%ebp),%edi
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_pchar_length
fpc_pchar_length:
.globl	FPC_PCHAR_LENGTH
FPC_PCHAR_LENGTH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	testl	%eax,%eax
	jz	Lj328
	movl	%edi,-8(%ebp)
	movl	%eax,%edi
	movl	$-1,%ecx
	xorl	%eax,%eax
	cld
	repne
	scasb
	movl	$-2,%eax
	subl	%ecx,%eax
	movl	-8(%ebp),%edi
Lj328:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER:
	orl	%eax,%eax
	jz	Lj331
	movl	4(%eax),%eax
Lj331:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER
SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER:
	orl	%eax,%eax
	jz	Lj334
	movl	(%eax),%eax
Lj334:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SPTR$$POINTER
SYSTEM_SPTR$$POINTER:
	movl	%esp,%eax
	ret

.text
	.balign 4,0x90
SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN:
	lock
	decl	(%eax)
	setzb	%al
	ret

.text
	.balign 4,0x90
SYSTEM_CPUINCLOCKED$LONGINT:
	lock
	incl	(%eax)
	ret

.text
	.balign 4,0x90
SYSTEM_DECLOCKED$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj343
	jmp	Lj344
Lj343:
	movl	-4(%ebp),%eax
	decl	(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	seteb	-5(%ebp)
	jmp	Lj347
Lj344:
	movl	-4(%ebp),%eax
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,-5(%ebp)
Lj347:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INCLOCKED$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj354
	jmp	Lj355
Lj354:
	movl	-4(%ebp),%eax
	incl	(%eax)
	jmp	Lj356
Lj355:
	movl	-4(%ebp),%eax
	call	SYSTEM_CPUINCLOCKED$LONGINT
Lj356:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INTERLOCKEDDECREMENT$LONGINT$$LONGINT
SYSTEM_INTERLOCKEDDECREMENT$LONGINT$$LONGINT:
.globl	FPC_INTERLOCKEDDECREMENT
FPC_INTERLOCKEDDECREMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	$-1,%edx
	xchgl	%edx,%eax
	lock
	xaddl	%eax,(%edx)
	decl	%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INTERLOCKEDINCREMENT$LONGINT$$LONGINT
SYSTEM_INTERLOCKEDINCREMENT$LONGINT$$LONGINT:
.globl	FPC_INTERLOCKEDINCREMENT
FPC_INTERLOCKEDINCREMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	$1,%edx
	xchgl	%edx,%eax
	lock
	xaddl	%eax,(%edx)
	incl	%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INTERLOCKEDEXCHANGE$LONGINT$LONGINT$$LONGINT
SYSTEM_INTERLOCKEDEXCHANGE$LONGINT$LONGINT$$LONGINT:
.globl	FPC_INTERLOCKEDEXCHANGE
FPC_INTERLOCKEDEXCHANGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	xchgl	(%eax),%edx
	movl	%edx,%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INTERLOCKEDEXCHANGEADD$LONGINT$LONGINT$$LONGINT
SYSTEM_INTERLOCKEDEXCHANGEADD$LONGINT$LONGINT$$LONGINT:
.globl	FPC_INTERLOCKEDEXCHANGEADD
FPC_INTERLOCKEDEXCHANGEADD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	xchgl	%eax,%edx
	lock
	xaddl	%eax,(%edx)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INTERLOCKEDCOMPAREEXCHANGE$LONGINT$LONGINT$LONGINT$$LONGINT
SYSTEM_INTERLOCKEDCOMPAREEXCHANGE$LONGINT$LONGINT$LONGINT$$LONGINT:
.globl	FPC_INTERLOCKEDCOMPAREEXCHANGE
FPC_INTERLOCKEDCOMPAREEXCHANGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	xchgl	%eax,%ecx
	lock
	cmpxchgl	%edx,(%ecx)
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INTERLOCKEDCOMPAREEXCHANGE64$INT64$INT64$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	pushl	%ebx
	pushl	%edi
	movl	%eax,%edi
	movl	12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	20(%ebp),%ecx
	movl	16(%ebp),%ebx
	lock
	cmpxchg8b	(%edi)
	popl	%edi
	popl	%ebx
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	SYSTEM_SYSINITFPU
SYSTEM_SYSINITFPU:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movw	TC_SYSTEM_DEFAULT8087CW,%ax
	movw	%ax,-6(%ebp)
	fninit
	fldcw	-6(%ebp)
	fwait
	cmpb	$0,TC_SYSTEM_HAS_SSE_SUPPORT
	jne	Lj375
	jmp	Lj376
Lj375:
	movl	TC_SYSTEM_MXCSR,%eax
	movl	%eax,-4(%ebp)
	ldmxcsr	-4(%ebp)
Lj376:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj381
	movl	U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK,%eax
	call	*%edx
	jmp	Lj382
Lj381:
	movl	$U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK+4,%eax
Lj382:
	movb	$50,(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSRESETFPU
SYSTEM_SYSRESETFPU:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movw	TC_SYSTEM_DEFAULT8087CW,%ax
	movw	%ax,-6(%ebp)
	fninit
	fwait
	fldcw	-6(%ebp)
	cmpb	$0,TC_SYSTEM_HAS_SSE_SUPPORT
	jne	Lj387
	jmp	Lj388
Lj387:
	movl	TC_SYSTEM_MXCSR,%eax
	movl	%eax,-4(%ebp)
	ldmxcsr	-4(%ebp)
Lj388:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj393
	movl	U_SYSTEM_SOFTFLOAT_EXCEPTION_FLAGS,%eax
	call	*%edx
	jmp	Lj394
Lj393:
	movl	$U_SYSTEM_SOFTFLOAT_EXCEPTION_FLAGS+4,%eax
Lj394:
	movb	$0,(%eax)
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FPC_CPUCODEINIT:
	pushl	%ebp
	movl	%esp,%ebp
	movb	$1,U_SYSTEM_OS_SUPPORTS_SSE
	call	SYSTEM_SSE_SUPPORT$$BOOLEAN
	movb	%al,U_SYSTEM_OS_SUPPORTS_SSE
	cmpb	$0,U_SYSTEM_OS_SUPPORTS_SSE
	jne	Lj401
	jmp	Lj402
Lj401:
	movb	$1,U_SYSTEM_SSE_CHECK
	movaps	%xmm7,%xmm6
	movb	$0,U_SYSTEM_SSE_CHECK
Lj402:
	movb	U_SYSTEM_OS_SUPPORTS_SSE,%al
	movb	%al,TC_SYSTEM_HAS_SSE_SUPPORT
	cmpb	$0,TC_SYSTEM_HAS_SSE_SUPPORT
	jne	Lj411
	jmp	Lj410
Lj411:
	cmpb	$0,operatingsystem_islibrary
	jne	Lj409
	jmp	Lj410
Lj409:
	call	SYSTEM_GETSSECSR$$LONGWORD
	movl	%eax,TC_SYSTEM_MXCSR
Lj410:
	call	SYSTEM_MMX_SUPPORT$$BOOLEAN
	movb	%al,TC_SYSTEM_HAS_MMX_SUPPORT
	call	SYSTEM_SYSRESETFPU
	movb	operatingsystem_islibrary,%al
	testb	%al,%al
	je	Lj416
	jmp	Lj417
Lj416:
	call	SYSTEM_SYSINITFPU
Lj417:
	cmpb	$0,__fpc_valgrind
	jne	Lj418
	jmp	Lj419
Lj418:
	movl	$SYSTEM_FORWARDS_VALGRIND,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_FORWARD
	movl	$SYSTEM_BACKWARDS_VALGRIND,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_BACKWARD
	jmp	Lj424
Lj419:
	cmpb	$0,TC_SYSTEM_HAS_SSE_SUPPORT
	jne	Lj425
	jmp	Lj426
Lj425:
	movl	$SYSTEM_FORWARDS_SSE_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_FORWARD
	movl	$SYSTEM_BACKWARDS_SSE_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_BACKWARD
	jmp	Lj431
Lj426:
	cmpb	$0,TC_SYSTEM_HAS_MMX_SUPPORT
	jne	Lj432
	jmp	Lj433
Lj432:
	movl	$SYSTEM_FORWARDS_MMX_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_FORWARD
	movl	$SYSTEM_BACKWARDS_MMX_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_BACKWARD
Lj433:
Lj431:
Lj424:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_decr_ref
fpc_ansistr_decr_ref:
.globl	FPC_ANSISTR_DECR_REF
FPC_ANSISTR_DECR_REF:
	cmpl	$0,(%eax)
	jne	Lj440
	ret
Lj440:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%eax),%edx
	subl	$8,%edx
	cmpl	$0,(%edx)
	jl	Lj441
Lj442:
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj443
	decl	(%edx)
	je	Lj444
	addl	$4,%esp
	ret
Lj443:
	movl	%edx,%eax
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	testb	%al,%al
	je	Lj445
Lj444:
	movl	(%esp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	call	FPC_FREEMEM_X
	movl	(%esp),%eax
	movl	$0,(%eax)
Lj446:
Lj445:
Lj441:
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_unique
fpc_ansistr_unique:
.globl	FPC_ANSISTR_UNIQUE
FPC_ANSISTR_UNIQUE:
	movl	%eax,%edx
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj449
Lj450:
	movl	-8(%eax),%ecx
	cmpl	$1,%ecx
	je	Lj451
	movl	%edx,%eax
	call	SYSTEM_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER
Lj451:
Lj449:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_READBARRIER
SYSTEM_READBARRIER:
	lock
	addl	$0,(%esp)
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_READDEPENDENCYBARRIER
SYSTEM_READDEPENDENCYBARRIER:
	pushl	%ebp
	movl	%esp,%ebp
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_READWRITEBARRIER
SYSTEM_READWRITEBARRIER:
	lock
	addl	$0,(%esp)
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_WRITEBARRIER
SYSTEM_WRITEBARRIER:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BSFQWORD$QWORD$$LONGWORD
SYSTEM_BSFQWORD$QWORD$$LONGWORD:
	bsfl	4(%esp),%eax
	jnz	Lj462_1
Lj463_1:
	bsfl	8(%esp),%eax
	addl	$32,%eax
Lj462_1:
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_BSRQWORD$QWORD$$LONGWORD
SYSTEM_BSRQWORD$QWORD$$LONGWORD:
	bsrl	8(%esp),%eax
	jz	Lj466_1
	addl	$32,%eax
	jmp	Lj467_1
Lj466_1:
	bsrl	4(%esp),%eax
Lj467_1:
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_FILLCHAR$formal$LONGINT$BOOLEAN
SYSTEM_FILLCHAR$formal$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movb	-12(%ebp),%cl
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FILLCHAR$formal$LONGINT$CHAR
SYSTEM_FILLCHAR$formal$LONGINT$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movb	-12(%ebp),%cl
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FILLBYTE$formal$LONGINT$BYTE
SYSTEM_FILLBYTE$formal$LONGINT$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movb	-12(%ebp),%cl
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INDEXCHAR$formal$LONGINT$CHAR$$LONGINT
SYSTEM_INDEXCHAR$formal$LONGINT$CHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movb	-12(%ebp),%cl
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_COMPARECHAR$formal$formal$LONGINT$$LONGINT
SYSTEM_COMPARECHAR$formal$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FILLQWORD$formal$LONGINT$QWORD
SYSTEM_FILLQWORD$formal$LONGINT$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj516
	jmp	Lj517
Lj516:
	jmp	Lj514
Lj517:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	shll	$3,%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj523
	.balign 4,0x90
Lj522:
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,(%edx)
	movl	12(%ebp),%eax
	movl	%eax,4(%edx)
	addl	$8,-12(%ebp)
Lj523:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jb	Lj522
	jmp	Lj524
Lj524:
Lj514:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_INDEXQWORD$formal$LONGINT$QWORD$$LONGINT
SYSTEM_INDEXQWORD$formal$LONGINT$QWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj531
	jmp	Lj534
Lj534:
	movl	-8(%ebp),%eax
	cmpl	$536870911,%eax
	jg	Lj531
	jmp	Lj533
Lj533:
	movl	-8(%ebp),%eax
	shll	$3,%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	cmpl	-16(%ebp),%eax
	jb	Lj531
	jmp	Lj532
Lj531:
	movl	$-9,-20(%ebp)
	jmp	Lj537
Lj532:
	movl	-8(%ebp),%eax
	shll	$3,%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
Lj537:
	jmp	Lj541
	.balign 4,0x90
Lj540:
	movl	-16(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	12(%ebp),%eax
	jne	Lj544
	cmpl	8(%ebp),%edx
	jne	Lj544
	jmp	Lj543
	jmp	Lj544
Lj543:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$7,%edx
	addl	%edx,%eax
	sarl	$3,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj527
Lj544:
	addl	$8,-16(%ebp)
Lj541:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj540
	jmp	Lj542
Lj542:
	movl	$-1,-12(%ebp)
Lj527:
	movl	-12(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_MOVECHAR0$formal$formal$LONGINT
SYSTEM_MOVECHAR0$formal$formal$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj551
	jmp	Lj552
Lj551:
	jmp	Lj549
Lj552:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj561
	jmp	Lj562
Lj561:
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj569
Lj562:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj569:
Lj549:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_COMPARECHAR0$formal$formal$LONGINT$$LONGINT
SYSTEM_COMPARECHAR0$formal$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-28(%ebp)
	jmp	Lj587
	.balign 4,0x90
Lj586:
	movl	-20(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj591
	jmp	Lj592
Lj591:
	movl	$-1,-16(%ebp)
	jmp	Lj576
	jmp	Lj595
Lj592:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj596
	jmp	Lj597
Lj596:
	movl	$1,-16(%ebp)
	jmp	Lj576
Lj597:
Lj595:
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	je	Lj600
	jmp	Lj602
Lj602:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	je	Lj600
	jmp	Lj601
Lj600:
	movl	$0,-16(%ebp)
	jmp	Lj576
Lj601:
	incl	-24(%ebp)
	incl	-20(%ebp)
Lj587:
	movl	-20(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jb	Lj586
	jmp	Lj588
Lj588:
	movl	$0,-16(%ebp)
Lj576:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_help_constructor
fpc_help_constructor:
.globl	FPC_HELP_CONSTRUCTOR
FPC_HELP_CONSTRUCTOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj609
	jmp	Lj610
Lj609:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj607
Lj610:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj617
	jmp	Lj616
Lj617:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	ja	Lj615
	jmp	Lj616
Lj615:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%edx
	leal	-4(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-8(%ebp),%eax
	movl	$-1,(%eax)
Lj616:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj624
	jmp	Lj625
Lj624:
	movl	-20(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-20(%ebp),%eax
	movl	%eax,(%edx)
Lj625:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj607:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_help_destructor
fpc_help_destructor:
.globl	FPC_HELP_DESTRUCTOR
FPC_HELP_DESTRUCTOR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj638
	jmp	Lj641
Lj641:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj638
	jmp	Lj640
Lj640:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj638
	jmp	Lj639
Lj638:
	jmp	Lj636
Lj639:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj642
	jmp	Lj644
Lj644:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	(%eax),%eax
	movl	(%ecx),%edx
	movl	4(%eax),%eax
	addl	%eax,%edx
	testl	%edx,%edx
	jne	Lj642
	jmp	Lj643
Lj642:
	movw	$210,%ax
	call	SYSTEM_RUNERROR$WORD
Lj643:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj636:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_help_fail
fpc_help_fail:
.globl	FPC_HELP_FAIL
FPC_HELP_FAIL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj653
	jmp	Lj655
Lj655:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj653
	jmp	Lj654
Lj653:
	jmp	Lj651
Lj654:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$-1,%eax
	je	Lj656
	jmp	Lj657
Lj656:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj658
	jmp	Lj660
Lj660:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj658
	jmp	Lj659
Lj658:
	movl	$210,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj663
Lj659:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
Lj663:
	jmp	Lj670
Lj657:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	$0,(%eax)
Lj670:
Lj651:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_check_object
fpc_check_object:
.globl	FPC_CHECK_OBJECT
FPC_CHECK_OBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj675
	jmp	Lj678
Lj678:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj675
	jmp	Lj677
Lj677:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%eax),%edx
	movl	4(%ecx),%eax
	addl	%eax,%edx
	testl	%edx,%edx
	jne	Lj675
	jmp	Lj676
Lj675:
	movw	$210,%ax
	call	SYSTEM_RUNERROR$WORD
Lj676:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_check_object_ext
fpc_check_object_ext:
.globl	FPC_CHECK_OBJECT_EXT
FPC_CHECK_OBJECT_EXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj683
	jmp	Lj686
Lj686:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj683
	jmp	Lj685
Lj685:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%eax),%ecx
	movl	4(%edx),%eax
	addl	%eax,%ecx
	testl	%ecx,%ecx
	jne	Lj683
	jmp	Lj684
Lj683:
	movw	$210,%ax
	call	SYSTEM_RUNERROR$WORD
Lj684:
	jmp	Lj690
	.balign 4,0x90
Lj689:
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj692
	jmp	Lj693
Lj692:
	jmp	Lj681
	jmp	Lj694
Lj693:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-4(%ebp)
Lj694:
Lj690:
	cmpl	$0,-4(%ebp)
	jne	Lj689
	jmp	Lj691
Lj691:
	movw	$219,%ax
	call	SYSTEM_RUNERROR$WORD
Lj681:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_concat
fpc_shortstr_concat:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	cmpl	-12(%ebp),%eax
	jg	Lj705
	jmp	Lj706
Lj705:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj707
	jmp	Lj708
Lj707:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj708:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-20(%ebp)
Lj706:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	cmpl	%edx,%eax
	je	Lj713
	jmp	Lj714
Lj713:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	movzbl	%al,%eax
	leal	(%edx,%eax,1),%edx
	movl	-20(%ebp),%ecx
	movl	8(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj721
Lj714:
	movl	-4(%ebp),%eax
	movl	8(%ebp),%edx
	cmpl	%edx,%eax
	je	Lj722
	jmp	Lj723
Lj722:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	movzbl	%al,%eax
	leal	(%edx,%eax,1),%edx
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	leal	1(%eax),%edx
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj736
Lj723:
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	leal	1(%eax),%edx
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	movzbl	%al,%eax
	leal	(%edx,%eax,1),%edx
	movl	-20(%ebp),%ecx
	movl	8(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj736:
Lj721:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	-4(%ebp),%edx
	movb	%al,(%edx)
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_shortstr_concat_multi
fpc_shortstr_concat_multi:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$304,%esp
	movl	%ebx,-304(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	testl	%eax,%eax
	je	Lj753
	jmp	Lj754
Lj753:
	movl	-4(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj751
Lj754:
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%ecx
	cmpl	(%edx,%ecx,4),%eax
	je	Lj759
	jmp	Lj760
Lj759:
	incl	-20(%ebp)
Lj760:
	movb	$0,-33(%ebp)
	movl	8(%ebp),%ebx
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj764
	decl	-24(%ebp)
	.balign 4,0x90
Lj765:
	incl	-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-24(%ebp),%edx
	cmpl	(%ecx,%edx,4),%eax
	je	Lj766
	jmp	Lj767
Lj766:
	movb	$1,-33(%ebp)
	jmp	Lj764
Lj767:
	cmpl	-24(%ebp),%ebx
	jg	Lj765
Lj764:
	cmpb	$0,-33(%ebp)
	jne	Lj770
	jmp	Lj771
Lj770:
	movl	$0,-20(%ebp)
	movb	$0,-289(%ebp)
	leal	-289(%ebp),%eax
	movl	%eax,-300(%ebp)
	jmp	Lj778
Lj771:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj779
	jmp	Lj780
Lj779:
	movl	-4(%ebp),%eax
	movb	$0,(%eax)
Lj780:
	movl	-4(%ebp),%eax
	movl	%eax,-300(%ebp)
Lj778:
	movl	-300(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-300(%ebp),%edx
	movl	-300(%ebp),%eax
	movzbl	(%eax),%eax
	incl	%eax
	movzbl	%al,%eax
	leal	(%edx,%eax,1),%eax
	movl	%eax,-32(%ebp)
	movl	8(%ebp),%ebx
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj790
	decl	-24(%ebp)
	.balign 4,0x90
Lj791:
	incl	-24(%ebp)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-296(%ebp)
	cmpl	$0,-296(%ebp)
	jne	Lj794
	jmp	Lj795
Lj794:
	movl	-296(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-13(%ebp)
	movzbl	-13(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	%edx,%eax
	cmpl	-12(%ebp),%eax
	jg	Lj798
	jmp	Lj799
Lj798:
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%edx
	subl	%edx,%eax
	movb	%al,-13(%ebp)
Lj799:
	movl	-32(%ebp),%edx
	movl	-296(%ebp),%eax
	leal	1(%eax),%eax
	movzbl	-13(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movzbl	-13(%ebp),%eax
	addl	%eax,-32(%ebp)
	movzbl	-13(%ebp),%eax
	addl	%eax,-28(%ebp)
Lj795:
	cmpl	-24(%ebp),%ebx
	jg	Lj791
Lj790:
	movl	-300(%ebp),%eax
	movb	-28(%ebp),%dl
	movb	%dl,(%eax)
	cmpb	$0,-33(%ebp)
	jne	Lj810
	jmp	Lj811
Lj810:
	leal	-289(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj811:
Lj751:
	movl	-304(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_shortstr_append_shortstr
fpc_shortstr_append_shortstr:
.globl	FPC_SHORTSTR_APPEND_SHORTSTR
FPC_SHORTSTR_APPEND_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movzbw	(%eax),%ax
	movw	%ax,-14(%ebp)
	movl	-8(%ebp),%eax
	movzbw	(%eax),%ax
	movw	%ax,-16(%ebp)
	movswl	-14(%ebp),%eax
	movswl	-16(%ebp),%edx
	addl	%edx,%eax
	cmpl	-12(%ebp),%eax
	jg	Lj824
	jmp	Lj825
Lj824:
	movswl	-14(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%edx,%eax
	movw	%ax,-16(%ebp)
Lj825:
	movl	-4(%ebp),%edx
	movswl	-14(%ebp),%eax
	incl	%eax
	movzbl	%al,%eax
	leal	(%edx,%eax,1),%edx
	movswl	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movswl	-14(%ebp),%eax
	movswl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	-4(%ebp),%edx
	movb	%al,(%edx)
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_compare_equal
fpc_shortstr_compare_equal:
.globl	FPC_SHORTSTR_COMPARE_EQUAL
FPC_SHORTSTR_COMPARE_EQUAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj840
	jmp	Lj841
Lj840:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-8(%ebp),%eax
	leal	1(%eax),%edx
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
Lj841:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_STRPAS$PCHAR$$SHORTSTRING
SYSTEM_STRPAS$PCHAR$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	FPC_PCHAR_TO_SHORTSTR
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_chararray_to_shortstr
fpc_chararray_to_shortstr:
.globl	FPC_CHARARRAY_TO_SHORTSTR
FPC_CHARARRAY_TO_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$21,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jle	Lj862
	jmp	Lj863
Lj862:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj866
Lj863:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj867
	jmp	Lj868
Lj867:
	movl	$0,-16(%ebp)
Lj868:
Lj866:
	cmpb	$0,8(%ebp)
	jne	Lj871
	jmp	Lj872
Lj871:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj881
	jmp	Lj882
Lj881:
	movb	-16(%ebp),%al
	movb	%al,-21(%ebp)
	jmp	Lj885
Lj882:
	movb	-20(%ebp),%al
	movb	%al,-21(%ebp)
Lj885:
	jmp	Lj888
Lj872:
	movb	-16(%ebp),%al
	movb	%al,-21(%ebp)
Lj888:
	movzbl	-21(%ebp),%ecx
	movl	-4(%ebp),%eax
	leal	1(%eax),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	movb	-21(%ebp),%dl
	movb	%dl,(%eax)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_shortstr_to_chararray
fpc_shortstr_to_chararray:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jl	Lj903
	jmp	Lj904
Lj903:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj904:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj907
	jmp	Lj908
Lj907:
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj908:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	leal	(%eax,%ecx,1),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_pwidechar_length
fpc_pwidechar_length:
.globl	FPC_PWIDECHAR_LENGTH
FPC_PWIDECHAR_LENGTH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj925
	jmp	Lj926
Lj925:
	jmp	Lj928
	.balign 4,0x90
Lj927:
	incl	-12(%ebp)
Lj928:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movw	(%eax,%edx,2),%ax
	testw	%ax,%ax
	jne	Lj927
	jmp	Lj929
Lj929:
Lj926:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj921
Lj921:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_mul_integer
fpc_mul_integer:
.globl	FPC_MUL_INTEGER
FPC_MUL_INTEGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$22,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movb	$0,-15(%ebp)
	movw	-4(%ebp),%ax
	cmpw	$0,%ax
	jl	Lj936
	jmp	Lj937
Lj936:
	movb	-15(%ebp),%al
	testb	%al,%al
	seteb	-15(%ebp)
	movswl	-4(%ebp),%eax
	negl	%eax
	movw	%ax,-18(%ebp)
	jmp	Lj942
Lj937:
	movw	-4(%ebp),%ax
	movw	%ax,-18(%ebp)
Lj942:
	movw	-8(%ebp),%ax
	cmpw	$0,%ax
	jl	Lj945
	jmp	Lj946
Lj945:
	movb	-15(%ebp),%al
	testb	%al,%al
	seteb	-15(%ebp)
	movswl	-8(%ebp),%eax
	negl	%eax
	movw	%ax,-20(%ebp)
	jmp	Lj951
Lj946:
	movw	-8(%ebp),%ax
	movw	%ax,-20(%ebp)
Lj951:
	movzwl	-18(%ebp),%edx
	movzwl	-20(%ebp),%eax
	mull	%edx
	movw	%ax,-22(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj960
	jmp	Lj957
Lj960:
	movzwl	-18(%ebp),%eax
	testl	%eax,%eax
	jne	Lj959
	jmp	Lj957
Lj959:
	movzwl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj958
	jmp	Lj957
Lj958:
	movw	-18(%ebp),%ax
	cmpw	-22(%ebp),%ax
	ja	Lj956
	jmp	Lj962
Lj962:
	movw	-20(%ebp),%ax
	cmpw	-22(%ebp),%ax
	ja	Lj956
	jmp	Lj961
Lj961:
	movzwl	-22(%ebp),%eax
	shrl	$15,%eax
	testl	%eax,%eax
	jne	Lj963
	jmp	Lj957
Lj963:
	movw	-22(%ebp),%ax
	cmpw	$32768,%ax
	jne	Lj956
	jmp	Lj964
Lj964:
	movb	-15(%ebp),%al
	testb	%al,%al
	je	Lj956
	jmp	Lj957
Lj956:
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj957:
	cmpb	$0,-15(%ebp)
	jne	Lj969
	jmp	Lj970
Lj969:
	movzwl	-22(%ebp),%eax
	negl	%eax
	movw	%ax,-14(%ebp)
	jmp	Lj973
Lj970:
	movw	-22(%ebp),%ax
	movw	%ax,-14(%ebp)
Lj973:
	movw	-14(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_mul_word
fpc_mul_word:
.globl	FPC_MUL_WORD
FPC_MUL_WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movw	$0,-14(%ebp)
	movw	$1,-18(%ebp)
	movb	$0,-20(%ebp)
	movb	$0,-19(%ebp)
	decb	-19(%ebp)
	.balign 4,0x90
Lj986:
	incb	-19(%ebp)
	movw	-8(%ebp),%ax
	movw	-18(%ebp),%dx
	andw	%dx,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj987
	jmp	Lj988
Lj987:
	movw	-14(%ebp),%ax
	movw	%ax,-16(%ebp)
	movzwl	-14(%ebp),%eax
	movzwl	-4(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-14(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj995
	jmp	Lj994
Lj995:
	cmpb	$0,-20(%ebp)
	jne	Lj993
	jmp	Lj996
Lj996:
	movzwl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj998
	jmp	Lj994
Lj998:
	movzwl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj997
	jmp	Lj994
Lj997:
	movw	-16(%ebp),%ax
	cmpw	-14(%ebp),%ax
	ja	Lj993
	jmp	Lj999
Lj999:
	movw	-4(%ebp),%ax
	cmpw	-14(%ebp),%ax
	ja	Lj993
	jmp	Lj994
Lj993:
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj994:
Lj988:
	cmpb	$0,-20(%ebp)
	jne	Lj1004
	jmp	Lj1006
Lj1006:
	movw	-4(%ebp),%ax
	andw	$32768,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj1004
	jmp	Lj1005
Lj1004:
	movb	$1,-20(%ebp)
	jmp	Lj1007
Lj1005:
	movb	$0,-20(%ebp)
Lj1007:
	movzwl	-4(%ebp),%eax
	shll	$1,%eax
	movw	%ax,-4(%ebp)
	movzwl	-18(%ebp),%eax
	shll	$1,%eax
	movw	%ax,-18(%ebp)
	cmpb	$15,-19(%ebp)
	jb	Lj986
	movw	-14(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_mul_longint
fpc_mul_longint:
.globl	FPC_MUL_LONGINT
FPC_MUL_LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movb	$0,-17(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1016
	jmp	Lj1017
Lj1016:
	movb	-17(%ebp),%al
	testb	%al,%al
	seteb	-17(%ebp)
	movl	-4(%ebp),%eax
	negl	%eax
	movl	%eax,-24(%ebp)
	jmp	Lj1022
Lj1017:
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj1022:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1025
	jmp	Lj1026
Lj1025:
	movb	-17(%ebp),%al
	testb	%al,%al
	seteb	-17(%ebp)
	movl	-8(%ebp),%eax
	negl	%eax
	movl	%eax,-28(%ebp)
	jmp	Lj1031
Lj1026:
	movl	-8(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj1031:
	movl	-28(%ebp),%eax
	mull	-24(%ebp)
	movl	%eax,-32(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj1040
	jmp	Lj1037
Lj1040:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1039
	jmp	Lj1037
Lj1039:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1038
	jmp	Lj1037
Lj1038:
	movl	-24(%ebp),%eax
	cmpl	-32(%ebp),%eax
	ja	Lj1036
	jmp	Lj1042
Lj1042:
	movl	-28(%ebp),%eax
	cmpl	-32(%ebp),%eax
	ja	Lj1036
	jmp	Lj1041
Lj1041:
	movl	-32(%ebp),%eax
	shrl	$15,%eax
	testl	%eax,%eax
	jne	Lj1043
	jmp	Lj1037
Lj1043:
	movl	-32(%ebp),%eax
	cmpl	$-2147483648,%eax
	jne	Lj1036
	jmp	Lj1044
Lj1044:
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj1036
	jmp	Lj1037
Lj1036:
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj1037:
	cmpb	$0,-17(%ebp)
	jne	Lj1049
	jmp	Lj1050
Lj1049:
	movl	-32(%ebp),%eax
	negl	%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1053
Lj1050:
	movl	-32(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1053:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_mul_dword
fpc_mul_dword:
.globl	FPC_MUL_DWORD
FPC_MUL_DWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$26,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$1,-24(%ebp)
	movb	$0,-26(%ebp)
	movb	$0,-25(%ebp)
	decb	-25(%ebp)
	.balign 4,0x90
Lj1066:
	incb	-25(%ebp)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	andl	%edx,%eax
	testl	%eax,%eax
	jne	Lj1067
	jmp	Lj1068
Lj1067:
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj1075
	jmp	Lj1074
Lj1075:
	cmpb	$0,-26(%ebp)
	jne	Lj1073
	jmp	Lj1076
Lj1076:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1078
	jmp	Lj1074
Lj1078:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1077
	jmp	Lj1074
Lj1077:
	movl	-20(%ebp),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj1073
	jmp	Lj1079
Lj1079:
	movl	-4(%ebp),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj1073
	jmp	Lj1074
Lj1073:
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj1074:
Lj1068:
	cmpb	$0,-26(%ebp)
	jne	Lj1084
	jmp	Lj1086
Lj1086:
	movl	-4(%ebp),%eax
	andl	$-2147483648,%eax
	testl	%eax,%eax
	jne	Lj1084
	jmp	Lj1085
Lj1084:
	movb	$1,-26(%ebp)
	jmp	Lj1087
Lj1085:
	movb	$0,-26(%ebp)
Lj1087:
	movl	-4(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-4(%ebp)
	movl	-24(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-24(%ebp)
	cmpb	$31,-25(%ebp)
	jb	Lj1066
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ODD$LONGINT$$BOOLEAN
SYSTEM_ODD$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$1,%eax
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ODD$LONGWORD$$BOOLEAN
SYSTEM_ODD$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$1,%eax
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ODD$INT64$$BOOLEAN
SYSTEM_ODD$INT64$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	movl	8(%ebp),%eax
	andl	$1,%eax
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_ODD$QWORD$$BOOLEAN
SYSTEM_ODD$QWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	movl	8(%ebp),%eax
	andl	$1,%eax
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_SQR$LONGINT$$LONGINT
SYSTEM_SQR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	imull	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ABS$INT64$$INT64
SYSTEM_ABS$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj1122
	jg	Lj1123
	cmpl	$0,%eax
	jb	Lj1122
	jmp	Lj1123
Lj1122:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	jmp	Lj1126
Lj1123:
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj1126:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_SQR$INT64$$INT64
SYSTEM_SQR$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_SQR$QWORD$$QWORD
SYSTEM_SQR$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	$0,%eax
	call	fpc_mul_qword
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_DECLOCKED$INT64$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	subl	$1,(%eax)
	sbbl	$0,4(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jne	Lj1152
	cmpl	$0,%edx
	jne	Lj1152
	jmp	Lj1151
Lj1151:
	movb	$1,-5(%ebp)
	jmp	Lj1153
Lj1152:
	movb	$0,-5(%ebp)
Lj1153:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INCLOCKED$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	addl	$1,(%eax)
	adcl	$0,4(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ALIGN$LONGWORD$LONGWORD$$LONGWORD
SYSTEM_ALIGN$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	decl	%edx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%eax
	xorl	%edx,%edx
	divl	-8(%ebp)
	movl	-16(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ALIGN$POINTER$LONGWORD$$POINTER
SYSTEM_ALIGN$POINTER$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	decl	%edx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%eax
	xorl	%edx,%edx
	divl	-8(%ebp)
	movl	-16(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INT_STR$LONGINT$OPENSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$76,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1174
	jmp	Lj1175
Lj1174:
	movl	-36(%ebp),%eax
	movb	$45,(%eax)
	incl	-36(%ebp)
	movl	-4(%ebp),%eax
	negl	%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1180
Lj1175:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1180:
	leal	-69(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	.balign 4,0x90
Lj1187:
	movl	-16(%ebp),%edx
	movl	$-858993459,%eax
	mull	%edx
	shrl	$3,%edx
	movl	%edx,-20(%ebp)
	incl	-32(%ebp)
	movl	$10,%eax
	mull	-20(%ebp)
	movl	-16(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	addl	$48,%eax
	movl	-32(%ebp),%edx
	movb	%al,(%edx)
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1189
	jmp	Lj1187
Lj1189:
	movl	-32(%ebp),%ecx
	movl	-24(%ebp),%eax
	subl	%eax,%ecx
	movl	-36(%ebp),%edx
	movl	-28(%ebp),%eax
	subl	%eax,%edx
	addl	%edx,%ecx
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	movl	%ecx,-76(%ebp)
	movl	-76(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1198
	jmp	Lj1199
Lj1198:
	movl	-76(%ebp),%eax
	addl	%eax,-24(%ebp)
Lj1199:
	jmp	Lj1201
	.balign 4,0x90
Lj1200:
	movl	-36(%ebp),%edx
	movl	-32(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-36(%ebp)
	decl	-32(%ebp)
Lj1201:
	movl	-32(%ebp),%eax
	cmpl	-24(%ebp),%eax
	ja	Lj1200
	jmp	Lj1202
Lj1202:
	movl	-36(%ebp),%eax
	movl	-28(%ebp),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	movb	%al,(%edx)
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INT_STR$LONGWORD$OPENSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	leal	-65(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	.balign 4,0x90
Lj1217:
	incl	-28(%ebp)
	movl	-4(%ebp),%edx
	movl	$-858993459,%eax
	mull	%edx
	shrl	$3,%edx
	movl	%edx,-16(%ebp)
	movl	$10,%eax
	mull	-16(%ebp)
	movl	-4(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	addl	$48,%eax
	movl	-28(%ebp),%edx
	movb	%al,(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1219
	jmp	Lj1217
Lj1219:
	movl	-28(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1228
	jmp	Lj1229
Lj1228:
	movl	-72(%ebp),%eax
	addl	%eax,-20(%ebp)
Lj1229:
	jmp	Lj1231
	.balign 4,0x90
Lj1230:
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-32(%ebp)
	decl	-28(%ebp)
Lj1231:
	movl	-28(%ebp),%eax
	cmpl	-20(%ebp),%eax
	ja	Lj1230
	jmp	Lj1232
Lj1232:
	movl	-32(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movl	-8(%ebp),%edx
	movb	%al,(%edx)
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INT_STR$INT64$OPENSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$80,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1243
	jg	Lj1244
	cmpl	$0,%edx
	jb	Lj1243
	jmp	Lj1244
Lj1243:
	movl	-40(%ebp),%eax
	movb	$45,(%eax)
	incl	-40(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	jmp	Lj1249
Lj1244:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj1249:
	leal	-73(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-36(%ebp)
	.balign 4,0x90
Lj1256:
	pushl	$0
	pushl	$10
	pushl	-12(%ebp)
	pushl	-16(%ebp)
	call	fpc_div_qword
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	incl	-36(%ebp)
	pushl	-20(%ebp)
	pushl	-24(%ebp)
	pushl	$0
	pushl	$10
	movl	$0,%eax
	call	fpc_mul_qword
	movl	-16(%ebp),%ecx
	subl	%eax,%ecx
	movl	%ecx,%eax
	movl	-12(%ebp),%ecx
	sbbl	%edx,%ecx
	movl	%ecx,%edx
	addl	$48,%eax
	adcl	$0,%edx
	movl	-36(%ebp),%edx
	movb	%al,(%edx)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	$0,%edx
	jne	Lj1256
	cmpl	$0,%eax
	jne	Lj1256
	jmp	Lj1258
Lj1258:
	movl	-36(%ebp),%ecx
	movl	-28(%ebp),%eax
	subl	%eax,%ecx
	movl	-40(%ebp),%edx
	movl	-32(%ebp),%eax
	subl	%eax,%edx
	addl	%edx,%ecx
	movl	-8(%ebp),%eax
	subl	%eax,%ecx
	movl	%ecx,-80(%ebp)
	movl	-80(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1277
	jmp	Lj1278
Lj1277:
	movl	-80(%ebp),%eax
	addl	%eax,-28(%ebp)
Lj1278:
	jmp	Lj1280
	.balign 4,0x90
Lj1279:
	movl	-40(%ebp),%edx
	movl	-36(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-40(%ebp)
	decl	-36(%ebp)
Lj1280:
	movl	-36(%ebp),%eax
	cmpl	-28(%ebp),%eax
	ja	Lj1279
	jmp	Lj1281
Lj1281:
	movl	-40(%ebp),%eax
	movl	-32(%ebp),%edx
	subl	%edx,%eax
	movl	-4(%ebp),%edx
	movb	%al,(%edx)
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_INT_STR$QWORD$OPENSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	leal	-97(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	.balign 4,0x90
Lj1296:
	incl	-28(%ebp)
	pushl	$0
	pushl	$10
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	fpc_div_qword
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	pushl	-12(%ebp)
	pushl	-16(%ebp)
	pushl	$0
	pushl	$10
	movl	$0,%eax
	call	fpc_mul_qword
	movl	8(%ebp),%ecx
	subl	%eax,%ecx
	movl	%ecx,%eax
	movl	12(%ebp),%ecx
	sbbl	%edx,%ecx
	movl	%ecx,%edx
	addl	$48,%eax
	adcl	$0,%edx
	movl	-28(%ebp),%edx
	movb	%al,(%edx)
	movl	-16(%ebp),%eax
	movl	%eax,8(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%ebp)
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	jne	Lj1296
	cmpl	$0,%edx
	jne	Lj1296
	jmp	Lj1298
Lj1298:
	movl	-28(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-104(%ebp)
	movl	-104(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1317
	jmp	Lj1318
Lj1317:
	movl	-104(%ebp),%eax
	addl	%eax,-20(%ebp)
Lj1318:
	jmp	Lj1320
	.balign 4,0x90
Lj1319:
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-32(%ebp)
	decl	-28(%ebp)
Lj1320:
	movl	-28(%ebp),%eax
	cmpl	-20(%ebp),%eax
	ja	Lj1319
	jmp	Lj1321
Lj1321:
	movl	-32(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movl	-4(%ebp),%edx
	movb	%al,(%edx)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_SWAPENDIAN$SMALLINT$$SMALLINT
SYSTEM_SWAPENDIAN$SMALLINT$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%eax
	shrl	$8,%eax
	movzwl	-4(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SWAPENDIAN$WORD$$WORD
SYSTEM_SWAPENDIAN$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%eax
	shrl	$8,%eax
	movzwl	-4(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SWAPENDIAN$LONGINT$$LONGINT
SYSTEM_SWAPENDIAN$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$65280,%eax
	shll	$8,%eax
	movl	-4(%ebp),%edx
	shll	$24,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	andl	$16711680,%edx
	shrl	$8,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	shrl	$24,%edx
	orl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD
SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$65280,%eax
	shll	$8,%eax
	movl	-4(%ebp),%edx
	shll	$24,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	andl	$16711680,%edx
	shrl	$8,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	shrl	$24,%edx
	orl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SWAPENDIAN$INT64$$INT64
SYSTEM_SWAPENDIAN$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$65280,%eax
	movl	$0,%edx
	xorl	%edx,%edx
	shll	$8,%eax
	movl	8(%ebp),%ebx
	movl	12(%ebp),%ecx
	xorl	%ecx,%ecx
	shll	$24,%ebx
	orl	%ecx,%edx
	orl	%ebx,%eax
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	andl	$16711680,%ecx
	movl	$0,%ebx
	shldl	$24,%ecx,%ebx
	shll	$24,%ecx
	orl	%ecx,%edx
	orl	%ebx,%eax
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	andl	$-16777216,%ecx
	movl	$0,%ebx
	shldl	$8,%ecx,%ebx
	shll	$8,%ecx
	orl	%ecx,%edx
	orl	%ebx,%eax
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	movl	$0,%ecx
	andl	$255,%ebx
	shrdl	$8,%ebx,%ecx
	shrl	$8,%ebx
	orl	%ecx,%edx
	orl	%ebx,%eax
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	movl	$0,%ecx
	andl	$65280,%ebx
	shrdl	$24,%ebx,%ecx
	shrl	$24,%ebx
	orl	%ecx,%edx
	orl	%ebx,%eax
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	movl	$0,%ecx
	andl	$16711680,%ebx
	xorl	%ecx,%ecx
	shrl	$8,%ebx
	orl	%ebx,%edx
	orl	%ecx,%eax
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	xorl	%ecx,%ecx
	shrl	$24,%ebx
	orl	%ebx,%edx
	orl	%ecx,%eax
	movl	%edx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_SWAPENDIAN$QWORD$$QWORD
SYSTEM_SWAPENDIAN$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$65280,%eax
	movl	$0,%edx
	xorl	%edx,%edx
	shll	$8,%eax
	movl	8(%ebp),%ebx
	movl	12(%ebp),%ecx
	xorl	%ecx,%ecx
	shll	$24,%ebx
	orl	%ecx,%edx
	orl	%ebx,%eax
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	andl	$16711680,%ecx
	movl	$0,%ebx
	shldl	$24,%ecx,%ebx
	shll	$24,%ecx
	orl	%ecx,%edx
	orl	%ebx,%eax
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	andl	$-16777216,%ecx
	movl	$0,%ebx
	shldl	$8,%ecx,%ebx
	shll	$8,%ecx
	orl	%ecx,%edx
	orl	%ebx,%eax
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	movl	$0,%ecx
	andl	$255,%ebx
	shrdl	$8,%ebx,%ecx
	shrl	$8,%ebx
	orl	%ecx,%edx
	orl	%ebx,%eax
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	movl	$0,%ecx
	andl	$65280,%ebx
	shrdl	$24,%ebx,%ecx
	shrl	$24,%ebx
	orl	%ecx,%edx
	orl	%ebx,%eax
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	movl	$0,%ecx
	andl	$16711680,%ebx
	xorl	%ecx,%ecx
	shrl	$8,%ebx
	orl	%ebx,%edx
	orl	%ecx,%eax
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	xorl	%ecx,%ecx
	shrl	$24,%ebx
	orl	%ebx,%edx
	orl	%ecx,%eax
	movl	%edx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_BETON$SMALLINT$$SMALLINT
SYSTEM_BETON$SMALLINT$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%eax
	shrl	$8,%eax
	movzwl	-4(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BETON$WORD$$WORD
SYSTEM_BETON$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%eax
	shrl	$8,%eax
	movzwl	-4(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BETON$LONGINT$$LONGINT
SYSTEM_BETON$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_SWAPENDIAN$LONGINT$$LONGINT
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BETON$LONGWORD$$LONGWORD
SYSTEM_BETON$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BETON$INT64$$INT64
SYSTEM_BETON$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	SYSTEM_SWAPENDIAN$INT64$$INT64
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_BETON$QWORD$$QWORD
SYSTEM_BETON$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	SYSTEM_SWAPENDIAN$QWORD$$QWORD
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_LETON$SMALLINT$$SMALLINT
SYSTEM_LETON$SMALLINT$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LETON$WORD$$WORD
SYSTEM_LETON$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LETON$LONGINT$$LONGINT
SYSTEM_LETON$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LETON$LONGWORD$$LONGWORD
SYSTEM_LETON$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LETON$INT64$$INT64
SYSTEM_LETON$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_LETON$QWORD$$QWORD
SYSTEM_LETON$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_NTOBE$SMALLINT$$SMALLINT
SYSTEM_NTOBE$SMALLINT$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%eax
	shrl	$8,%eax
	movzwl	-4(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_NTOBE$WORD$$WORD
SYSTEM_NTOBE$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%eax
	shrl	$8,%eax
	movzwl	-4(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_NTOBE$LONGINT$$LONGINT
SYSTEM_NTOBE$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_SWAPENDIAN$LONGINT$$LONGINT
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_NTOBE$LONGWORD$$LONGWORD
SYSTEM_NTOBE$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_NTOBE$INT64$$INT64
SYSTEM_NTOBE$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	SYSTEM_SWAPENDIAN$INT64$$INT64
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_NTOBE$QWORD$$QWORD
SYSTEM_NTOBE$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	SYSTEM_SWAPENDIAN$QWORD$$QWORD
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_NTOLE$SMALLINT$$SMALLINT
SYSTEM_NTOLE$SMALLINT$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_NTOLE$WORD$$WORD
SYSTEM_NTOLE$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_NTOLE$LONGINT$$LONGINT
SYSTEM_NTOLE$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_NTOLE$LONGWORD$$LONGWORD
SYSTEM_NTOLE$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_NTOLE$INT64$$INT64
SYSTEM_NTOLE$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_NTOLE$QWORD$$QWORD
SYSTEM_NTOLE$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_RORQWORD$QWORD$$QWORD
SYSTEM_RORQWORD$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	8(%ebp),%ebx
	movl	12(%ebp),%eax
	shrdl	$1,%eax,%ebx
	shrl	$1,%eax
	movl	8(%ebp),%edx
	movl	12(%ebp),%ecx
	xorl	%ecx,%ecx
	shll	$31,%edx
	orl	%ecx,%ebx
	orl	%edx,%eax
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_RORQWORD$QWORD$BYTE$$QWORD
SYSTEM_RORQWORD$QWORD$BYTE$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movb	%al,-4(%ebp)
	movb	-4(%ebp),%cl
	andb	$63,%cl
	movzbl	%cl,%ecx
	movl	$64,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$64,%ecx
	jl	Lj1478
	xorl	%edx,%edx
	xorl	%eax,%eax
	jmp	Lj1480
Lj1478:
	cmpl	$32,%ecx
	jl	Lj1479
	subl	$32,%ecx
	shll	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj1480
Lj1479:
	shldl	%cl,%edx,%eax
	shll	%cl,%edx
Lj1480:
	movb	-4(%ebp),%cl
	andb	$63,%cl
	movzbl	%cl,%ecx
	movl	8(%ebp),%ebx
	movl	12(%ebp),%esi
	cmpl	$64,%ecx
	jl	Lj1481
	xorl	%ebx,%ebx
	xorl	%esi,%esi
	jmp	Lj1483
Lj1481:
	cmpl	$32,%ecx
	jl	Lj1482
	subl	$32,%ecx
	shrl	%cl,%esi
	movl	%esi,%ebx
	xorl	%esi,%esi
	jmp	Lj1483
Lj1482:
	shrdl	%cl,%esi,%ebx
	shrl	%cl,%esi
Lj1483:
	orl	%ebx,%edx
	orl	%esi,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_ROLQWORD$QWORD$$QWORD
SYSTEM_ROLQWORD$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	8(%ebp),%ebx
	movl	12(%ebp),%eax
	shldl	$1,%ebx,%eax
	shll	$1,%ebx
	movl	8(%ebp),%edx
	movl	12(%ebp),%ecx
	xorl	%edx,%edx
	shrl	$31,%ecx
	orl	%ecx,%ebx
	orl	%edx,%eax
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_ROLQWORD$QWORD$BYTE$$QWORD
SYSTEM_ROLQWORD$QWORD$BYTE$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movb	%al,-4(%ebp)
	movb	-4(%ebp),%cl
	andb	$63,%cl
	movzbl	%cl,%ecx
	movl	$64,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$64,%ecx
	jl	Lj1492
	xorl	%eax,%eax
	xorl	%edx,%edx
	jmp	Lj1494
Lj1492:
	cmpl	$32,%ecx
	jl	Lj1493
	subl	$32,%ecx
	shrl	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj1494
Lj1493:
	shrdl	%cl,%edx,%eax
	shrl	%cl,%edx
Lj1494:
	movb	-4(%ebp),%cl
	andb	$63,%cl
	movzbl	%cl,%ecx
	movl	8(%ebp),%esi
	movl	12(%ebp),%ebx
	cmpl	$64,%ecx
	jl	Lj1495
	xorl	%esi,%esi
	xorl	%ebx,%ebx
	jmp	Lj1497
Lj1495:
	cmpl	$32,%ecx
	jl	Lj1496
	subl	$32,%ecx
	shll	%cl,%esi
	movl	%esi,%ebx
	xorl	%esi,%esi
	jmp	Lj1497
Lj1496:
	shldl	%cl,%esi,%ebx
	shll	%cl,%esi
Lj1497:
	orl	%esi,%eax
	orl	%ebx,%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_SARINT64$INT64$BYTE$$INT64
SYSTEM_SARINT64$INT64$BYTE$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movb	%al,-4(%ebp)
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	xorl	%edx,%edx
	shrl	$31,%eax
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movb	-4(%ebp),%cl
	andb	$63,%cl
	movzbl	%cl,%ecx
	testl	%ecx,%ecx
	setneb	%cl
	movzbl	%cl,%ecx
	negl	%ecx
	movl	%ecx,%ebx
	sarl	$31,%ebx
	andl	%ecx,%eax
	andl	%ebx,%edx
	movb	-4(%ebp),%cl
	andb	$63,%cl
	movzbl	%cl,%ecx
	movl	$64,%ebx
	subl	%ecx,%ebx
	movl	%ebx,%ecx
	cmpl	$64,%ecx
	jl	Lj1504
	xorl	%eax,%eax
	xorl	%edx,%edx
	jmp	Lj1506
Lj1504:
	cmpl	$32,%ecx
	jl	Lj1505
	subl	$32,%ecx
	shll	%cl,%eax
	movl	%eax,%edx
	xorl	%eax,%eax
	jmp	Lj1506
Lj1505:
	shldl	%cl,%eax,%edx
	shll	%cl,%eax
Lj1506:
	movb	-4(%ebp),%cl
	andb	$63,%cl
	movzbl	%cl,%ecx
	movl	8(%ebp),%ebx
	movl	12(%ebp),%esi
	cmpl	$64,%ecx
	jl	Lj1507
	xorl	%ebx,%ebx
	xorl	%esi,%esi
	jmp	Lj1509
Lj1507:
	cmpl	$32,%ecx
	jl	Lj1508
	subl	$32,%ecx
	shrl	%cl,%esi
	movl	%esi,%ebx
	xorl	%esi,%esi
	jmp	Lj1509
Lj1508:
	shrdl	%cl,%esi,%ebx
	shrl	%cl,%esi
Lj1509:
	orl	%ebx,%eax
	orl	%esi,%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_varset_load
fpc_varset_load:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1516
	jmp	Lj1517
Lj1516:
	movl	-20(%ebp),%eax
	movl	8(%ebp),%edx
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	8(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	8(%ebp),%eax
	subl	%eax,12(%ebp)
	jmp	Lj1524
Lj1517:
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1525
	jmp	Lj1526
Lj1525:
	movl	8(%ebp),%eax
	subl	%eax,-16(%ebp)
	movl	8(%ebp),%eax
	addl	%eax,-8(%ebp)
Lj1526:
Lj1524:
	movl	-8(%ebp),%eax
	cmpl	12(%ebp),%eax
	jg	Lj1527
	jmp	Lj1528
Lj1527:
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj1528:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-20(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movl	12(%ebp),%edx
	movl	-8(%ebp),%ecx
	subl	%ecx,%edx
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_varset_create_element
fpc_varset_create_element:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-12(%ebp),%ebx
	movl	-4(%ebp),%ecx
	movl	%ecx,%eax
	shrl	$3,%eax
	andl	$7,%ecx
	movzbl	(%ebx,%eax),%edx
	movl	$1,%esi
	shll	%cl,%esi
	orl	%esi,%edx
	movb	%dl,(%ebx,%eax)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_varset_set
fpc_varset_set:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-8(%ebp),%ebx
	movl	-12(%ebp),%ecx
	movl	%ecx,%eax
	shrl	$3,%eax
	andl	$7,%ecx
	movzbl	(%ebx,%eax),%edx
	movl	$1,%esi
	shll	%cl,%esi
	orl	%esi,%edx
	movb	%dl,(%ebx,%eax)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_varset_unset
fpc_varset_unset:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-8(%ebp),%ebx
	movl	-12(%ebp),%ecx
	movl	%ecx,%eax
	shrl	$3,%eax
	andl	$7,%ecx
	movzbl	(%ebx,%eax),%edx
	movl	$1,%esi
	shll	%cl,%esi
	notl	%esi
	andl	%esi,%edx
	movb	%dl,(%ebx,%eax)
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_varset_set_range
fpc_varset_set_range:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	12(%ebp),%esi
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj1582
	decl	-16(%ebp)
	.balign 4,0x90
Lj1583:
	incl	-16(%ebp)
	movl	-8(%ebp),%ebx
	movl	-16(%ebp),%ecx
	movl	%ecx,%eax
	shrl	$3,%eax
	andl	$7,%ecx
	movzbl	(%ebx,%eax),%edx
	movl	$1,%edi
	shll	%cl,%edi
	orl	%edi,%edx
	movb	%dl,(%ebx,%eax)
	cmpl	-16(%ebp),%esi
	jg	Lj1583
Lj1582:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_varset_add_sets
fpc_varset_add_sets:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj1589
	decl	-16(%ebp)
	.balign 4,0x90
Lj1590:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%esi
	movl	-16(%ebp),%ebx
	movb	(%edx,%ecx,1),%cl
	movb	(%esi,%ebx,1),%dl
	orb	%dl,%cl
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%ebx
	movb	%cl,(%edx,%ebx,1)
	cmpl	-16(%ebp),%eax
	jg	Lj1590
Lj1589:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_varset_mul_sets
fpc_varset_mul_sets:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj1596
	decl	-16(%ebp)
	.balign 4,0x90
Lj1597:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%esi
	movl	-16(%ebp),%ebx
	movb	(%edx,%ecx,1),%cl
	movb	(%esi,%ebx,1),%dl
	andb	%dl,%cl
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%ebx
	movb	%cl,(%edx,%ebx,1)
	cmpl	-16(%ebp),%eax
	jg	Lj1597
Lj1596:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_varset_sub_sets
fpc_varset_sub_sets:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj1603
	decl	-16(%ebp)
	.balign 4,0x90
Lj1604:
	incl	-16(%ebp)
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movb	(%ecx,%edx,1),%dl
	notb	%dl
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%ebx
	movb	(%ecx,%ebx,1),%cl
	andb	%cl,%dl
	movl	-12(%ebp),%ebx
	movl	-16(%ebp),%ecx
	movb	%dl,(%ebx,%ecx,1)
	cmpl	-16(%ebp),%eax
	jg	Lj1604
Lj1603:
	movl	-20(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_varset_symdif_sets
fpc_varset_symdif_sets:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj1610
	decl	-16(%ebp)
	.balign 4,0x90
Lj1611:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%esi
	movl	-16(%ebp),%ebx
	movb	(%edx,%ecx,1),%cl
	movb	(%esi,%ebx,1),%dl
	xorb	%dl,%cl
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%ebx
	movb	%cl,(%edx,%ebx,1)
	cmpl	-16(%ebp),%eax
	jg	Lj1611
Lj1610:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_varset_comp_sets
fpc_varset_comp_sets:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj1619
	decl	-20(%ebp)
	.balign 4,0x90
Lj1620:
	incl	-20(%ebp)
	movl	-4(%ebp),%esi
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%ebx
	movb	(%esi,%edx,1),%dl
	cmpb	(%ecx,%ebx,1),%dl
	jne	Lj1621
	jmp	Lj1622
Lj1621:
	jmp	Lj1614
Lj1622:
	cmpl	-20(%ebp),%eax
	jg	Lj1620
Lj1619:
	movb	$1,-13(%ebp)
Lj1614:
	movb	-13(%ebp),%al
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_varset_contains_sets
fpc_varset_contains_sets:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj1630
	decl	-20(%ebp)
	.balign 4,0x90
Lj1631:
	incl	-20(%ebp)
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movb	(%ecx,%edx,1),%dl
	notb	%dl
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%ebx
	movb	(%ecx,%ebx,1),%cl
	andb	%cl,%dl
	movzbl	%dl,%edx
	testl	%edx,%edx
	jne	Lj1632
	jmp	Lj1633
Lj1632:
	jmp	Lj1625
Lj1633:
	cmpl	-20(%ebp),%eax
	jg	Lj1631
Lj1630:
	movb	$1,-13(%ebp)
Lj1625:
	movb	-13(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_HI$BYTE$$BYTE
SYSTEM_HI$BYTE$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movb	%al,-4(%ebp)
	movzbl	-4(%ebp),%eax
	shrl	$4,%eax
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LO$BYTE$$BYTE
SYSTEM_LO$BYTE$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movb	%al,-4(%ebp)
	movb	-4(%ebp),%al
	andb	$15,%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SWAP$WORD$$WORD
SYSTEM_SWAP$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%eax
	shrl	$8,%eax
	movzwl	-4(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SWAP$SMALLINT$$SMALLINT
SYSTEM_SWAP$SMALLINT$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%eax
	shrl	$8,%eax
	movzwl	-4(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SWAP$LONGINT$$LONGINT
SYSTEM_SWAP$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$65535,%eax
	shll	$16,%eax
	movl	-4(%ebp),%edx
	shrl	$16,%edx
	addl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SWAP$LONGWORD$$LONGWORD
SYSTEM_SWAP$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$65535,%eax
	shll	$16,%eax
	movl	-4(%ebp),%edx
	shrl	$16,%edx
	addl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SWAP$QWORD$$QWORD
SYSTEM_SWAP$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	$0,%edx
	xorl	%edx,%edx
	movl	8(%ebp),%ebx
	movl	12(%ebp),%ecx
	xorl	%ebx,%ebx
	addl	%ecx,%edx
	adcl	%ebx,%eax
	movl	%edx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_SWAP$INT64$$INT64
SYSTEM_SWAP$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	$0,%edx
	xorl	%edx,%edx
	movl	8(%ebp),%ebx
	movl	12(%ebp),%ecx
	xorl	%ebx,%ebx
	addl	%ecx,%edx
	adcl	%ebx,%eax
	movl	%edx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_assign$REAL48$$DOUBLE
SYSTEM_assign$REAL48$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$18,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-18(%ebp)
	movw	4(%edx),%ax
	movw	%ax,-14(%ebp)
	leal	-18(%ebp),%eax
	call	SYSTEM_REAL2DOUBLE$REAL48$$DOUBLE
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$REAL48$$EXTENDED
SYSTEM_assign$REAL48$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$22,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-22(%ebp)
	movw	4(%edx),%ax
	movw	%ax,-18(%ebp)
	leal	-22(%ebp),%eax
	call	SYSTEM_REAL2DOUBLE$REAL48$$DOUBLE
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SET8087CW$WORD
SYSTEM_SET8087CW$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	movw	%ax,TC_SYSTEM_DEFAULT8087CW
	fnclex
	fldcw	-4(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GET8087CW$$WORD
SYSTEM_GET8087CW$$WORD:
	subl	$2,%esp
	pushl	$0
	fnstcw	(%esp)
	popl	%eax
	addl	$2,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETSSECSR$LONGWORD
SYSTEM_SETSSECSR$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,TC_SYSTEM_MXCSR
	ldmxcsr	-4(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETSSECSR$$LONGWORD
SYSTEM_GETSSECSR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	stmxcsr	-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_pi_real
fpc_pi_real:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	$207,%ax
	call	SYSTEM_RUNERROR$WORD
	fldz
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_abs_real
fpc_abs_real:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	$207,%ax
	call	SYSTEM_RUNERROR$WORD
	fldz
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	fpc_sqr_real
fpc_sqr_real:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	$207,%ax
	call	SYSTEM_RUNERROR$WORD
	fldz
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	fpc_sqrt_real
fpc_sqrt_real:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	$207,%ax
	call	SYSTEM_RUNERROR$WORD
	fldz
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	fpc_arctan_real
fpc_arctan_real:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	$207,%ax
	call	SYSTEM_RUNERROR$WORD
	fldz
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	fpc_ln_real
fpc_ln_real:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	$207,%ax
	call	SYSTEM_RUNERROR$WORD
	fldz
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	fpc_sin_real
fpc_sin_real:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	$207,%ax
	call	SYSTEM_RUNERROR$WORD
	fldz
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	fpc_cos_real
fpc_cos_real:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	$207,%ax
	call	SYSTEM_RUNERROR$WORD
	fldz
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	fpc_exp_real
fpc_exp_real:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	fldt	8(%ebp)
	fldl2e
	fmulp	%st,%st(1)
	fstcw	-14(%ebp)
	fstcw	-16(%ebp)
	fwait
	andw	$62463,-16(%ebp)
	orw	$1024,-16(%ebp)
	fldcw	-16(%ebp)
	fld	%st(0)
	frndint
	fldcw	-14(%ebp)
	fxch	%st(1)
	fsub	%st(1),%st
	f2xm1
	fld1
	faddp	%st,%st(1)
	fscale
	fstp	%st(1)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	fpc_frac_real
fpc_frac_real:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	subl	$4,%esp
	fnstcw	(%esp)
	fwait
	movw	(%esp),%cx
	orw	$3840,(%esp)
	fldcw	(%esp)
	fldt	8(%ebp)
	frndint
	fldt	8(%ebp)
	fsub	%st(1),%st
	fstp	%st(1)
	movw	%cx,(%esp)
	fldcw	(%esp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	fpc_int_real
fpc_int_real:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	subl	$4,%esp
	fnstcw	(%esp)
	fwait
	movw	(%esp),%cx
	orw	$3840,(%esp)
	fldcw	(%esp)
	fwait
	fldt	8(%ebp)
	frndint
	fwait
	movw	%cx,(%esp)
	fldcw	(%esp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	fpc_trunc_real
fpc_trunc_real:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	subl	$12,%esp
	fldt	8(%ebp)
	fnstcw	(%esp)
	movw	(%esp),%cx
	orw	$3840,(%esp)
	fldcw	(%esp)
	movw	%cx,(%esp)
	fistpq	4(%esp)
	fldcw	(%esp)
	fwait
	movl	4(%esp),%eax
	movl	8(%esp),%edx
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	fpc_round_real
fpc_round_real:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	fldt	8(%ebp)
	fistpq	-16(%ebp)
	fwait
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	leave
	ret	$12

.text
	.balign 4,0x90
SYSTEM_POWER$EXTENDED$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	fldz
	fldt	20(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj1758
	jmp	Lj1759
Lj1758:
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jne	Lj1760
	jmp	Lj1761
Lj1760:
	fldz
	fstpt	-12(%ebp)
	jmp	Lj1764
Lj1761:
	movl	$207,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj1764:
	jmp	Lj1767
Lj1759:
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj1768
	jmp	Lj1769
Lj1768:
	fld1
	fstpt	-12(%ebp)
	jmp	Lj1772
Lj1769:
	fldz
	fldt	20(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1775
	jmp	Lj1774
Lj1775:
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	fpc_frac_real
	fldz
	fcompp
	fnstsw	%ax
	sahf
	jne	Lj1773
	jmp	Lj1774
Lj1773:
	movl	$207,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj1780
Lj1774:
	fldt	20(%ebp)
	fabs
	fldln2
	fxch
	fyl2x
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	subl	$12,%esp
	fstpt	(%esp)
	call	fpc_exp_real
	fstpt	-12(%ebp)
	fldz
	fldt	20(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1787
	jmp	Lj1786
Lj1787:
	fnstcw	-24(%ebp)
	fnstcw	-22(%ebp)
	orw	$3840,-24(%ebp)
	fldt	8(%ebp)
	fldcw	-24(%ebp)
	fistpq	-32(%ebp)
	fldcw	-22(%ebp)
	fwait
	movl	-32(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	andl	$1,%eax
	testb	%al,%al
	jne	Lj1785
	jmp	Lj1786
Lj1785:
	fldt	-12(%ebp)
	fchs
	fstpt	-12(%ebp)
Lj1786:
Lj1780:
Lj1772:
Lj1767:
	fldt	-12(%ebp)
	leave
	ret	$24

.text
	.balign 4,0x90
.globl	SYSTEM_FLOAT_RAISE$SHORTINT
SYSTEM_FLOAT_RAISE$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movb	%al,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1800
	movl	U_SYSTEM_SOFTFLOAT_EXCEPTION_FLAGS,%eax
	call	*%edx
	jmp	Lj1801
Lj1800:
	movl	$U_SYSTEM_SOFTFLOAT_EXCEPTION_FLAGS+4,%eax
Lj1801:
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movsbl	-4(%ebp),%edx
	orl	%edx,%eax
	movl	-8(%ebp),%edx
	movb	%al,(%edx)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1806
	movl	U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK,%eax
	call	*%edx
	jmp	Lj1807
Lj1806:
	movl	$U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK+4,%eax
Lj1807:
	movb	(%eax),%dl
	notb	%dl
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	andb	%al,%dl
	movb	%dl,-9(%ebp)
	movb	-9(%ebp),%al
	andb	$1,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj1808
	jmp	Lj1809
Lj1808:
	movl	$207,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj1812
Lj1809:
	movb	-9(%ebp),%al
	andb	$4,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj1813
	jmp	Lj1814
Lj1813:
	movl	$200,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj1817
Lj1814:
	movb	-9(%ebp),%al
	andb	$8,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj1818
	jmp	Lj1819
Lj1818:
	movl	$205,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj1822
Lj1819:
	movb	-9(%ebp),%al
	andb	$16,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj1823
	jmp	Lj1824
Lj1823:
	movl	$206,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj1827
Lj1824:
	movb	-9(%ebp),%al
	andb	$32,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj1828
	jmp	Lj1829
Lj1828:
	movl	$207,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj1829:
Lj1827:
Lj1822:
Lj1817:
Lj1812:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FREXP$REAL$SMALLINT$$REAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	$0,(%eax)
	fldl	8(%ebp)
	fabs
	fldt	_$SYSTEM$_Ld2
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1836
	jmp	Lj1837
Lj1836:
	jmp	Lj1839
	.balign 4,0x90
Lj1838:
	fldl	_$SYSTEM$_Ld3
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fstpl	8(%ebp)
	movl	-4(%ebp),%eax
	decw	(%eax)
Lj1839:
	fldl	8(%ebp)
	fabs
	fldt	_$SYSTEM$_Ld2
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1838
	jmp	Lj1840
Lj1840:
	jmp	Lj1843
Lj1837:
	jmp	Lj1845
	.balign 4,0x90
Lj1844:
	fldl	_$SYSTEM$_Ld3
	fldl	8(%ebp)
	fdivp	%st,%st(1)
	fstpl	8(%ebp)
	movl	-4(%ebp),%eax
	incw	(%eax)
Lj1845:
	fldl	8(%ebp)
	fabs
	fld1
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1844
	jmp	Lj1846
Lj1846:
Lj1843:
	movl	8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_LDEXP$REAL$SMALLINT$$REAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movw	%ax,-4(%ebp)
	fld1
	fstpl	-20(%ebp)
	movw	-4(%ebp),%ax
	cmpw	$0,%ax
	jg	Lj1855
	jmp	Lj1856
Lj1855:
	jmp	Lj1858
	.balign 4,0x90
Lj1857:
	fldl	_$SYSTEM$_Ld3
	fldl	-20(%ebp)
	fmulp	%st,%st(1)
	fstpl	-20(%ebp)
	decw	-4(%ebp)
Lj1858:
	movw	-4(%ebp),%ax
	cmpw	$0,%ax
	jg	Lj1857
	jmp	Lj1859
Lj1859:
	jmp	Lj1862
Lj1856:
	jmp	Lj1864
	.balign 4,0x90
Lj1863:
	fldl	_$SYSTEM$_Ld3
	fldl	-20(%ebp)
	fdivp	%st,%st(1)
	fstpl	-20(%ebp)
	incw	-4(%ebp)
Lj1864:
	movw	-4(%ebp),%ax
	cmpw	$0,%ax
	jl	Lj1863
	jmp	Lj1865
Lj1865:
Lj1862:
	fldl	-20(%ebp)
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_POLEVL$REAL$TABCOEF$SMALLINT$$REAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$30,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-28(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-24(%ebp)
	movw	-12(%ebp),%cx
	movw	$1,-30(%ebp)
	cmpw	-30(%ebp),%cx
	jl	Lj1875
	decw	-30(%ebp)
	.balign 4,0x90
Lj1876:
	incw	-30(%ebp)
	movl	-4(%ebp),%eax
	fldl	(%eax)
	fldl	-28(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	movzwl	-30(%ebp),%edx
	fldl	(%eax,%edx,8)
	faddp	%st,%st(1)
	fstpl	-28(%ebp)
	cmpw	-30(%ebp),%cx
	jg	Lj1876
Lj1875:
	movl	-28(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	fldl	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_P1EVL$REAL$TABCOEF$SMALLINT$$REAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$30,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	fldl	(%edx)
	fldl	(%eax)
	faddp	%st,%st(1)
	fstpl	-28(%ebp)
	movswl	-12(%ebp),%eax
	decl	%eax
	movw	$1,-30(%ebp)
	cmpw	-30(%ebp),%ax
	jl	Lj1886
	decw	-30(%ebp)
	.balign 4,0x90
Lj1887:
	incw	-30(%ebp)
	movl	-4(%ebp),%edx
	fldl	(%edx)
	fldl	-28(%ebp)
	fmulp	%st,%st(1)
	movl	-8(%ebp),%edx
	movzwl	-30(%ebp),%ecx
	fldl	(%edx,%ecx,8)
	faddp	%st,%st(1)
	fstpl	-28(%ebp)
	cmpw	-30(%ebp),%ax
	jg	Lj1887
Lj1886:
	movl	-28(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	fldl	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_REAL2DOUBLE$REAL48$$DOUBLE
SYSTEM_REAL2DOUBLE$REAL48$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-28(%ebp)
	movw	4(%edx),%ax
	movw	%ax,-24(%ebp)
	movzbl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj1894
	jmp	Lj1895
Lj1894:
	fldz
	fstpl	-12(%ebp)
	jmp	Lj1892
Lj1895:
	movb	$0,-20(%ebp)
	movzbl	-27(%ebp),%eax
	shll	$5,%eax
	movb	%al,-19(%ebp)
	movzbl	-27(%ebp),%eax
	shrl	$3,%eax
	movzbl	-26(%ebp),%edx
	shll	$5,%edx
	orl	%edx,%eax
	movb	%al,-18(%ebp)
	movzbl	-26(%ebp),%eax
	shrl	$3,%eax
	movzbl	-25(%ebp),%edx
	shll	$5,%edx
	orl	%edx,%eax
	movb	%al,-17(%ebp)
	movzbl	-25(%ebp),%eax
	shrl	$3,%eax
	movzbl	-24(%ebp),%edx
	shll	$5,%edx
	orl	%edx,%eax
	movb	%al,-16(%ebp)
	movb	-23(%ebp),%al
	andb	$127,%al
	movzbl	%al,%eax
	shll	$5,%eax
	movzbl	-24(%ebp),%edx
	shrl	$3,%edx
	orl	%edx,%eax
	movb	%al,-15(%ebp)
	movb	-23(%ebp),%al
	andb	$127,%al
	movzbl	%al,%eax
	shrl	$3,%eax
	movb	%al,-14(%ebp)
	movzbw	-28(%ebp),%ax
	movzwl	%ax,%eax
	addl	$894,%eax
	movw	%ax,-22(%ebp)
	movw	-22(%ebp),%ax
	andw	$15,%ax
	movzwl	%ax,%eax
	shll	$4,%eax
	movzbl	-14(%ebp),%edx
	orl	%edx,%eax
	movb	%al,-14(%ebp)
	movzwl	-22(%ebp),%eax
	shrl	$4,%eax
	movb	%al,-13(%ebp)
	movb	-23(%ebp),%al
	andb	$128,%al
	movb	-13(%ebp),%dl
	orb	%dl,%al
	movb	%al,-13(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj1892:
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED
SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1924
	jmp	Lj1925
Lj1924:
	movl	-4(%ebp),%eax
	negl	%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$31,%eax
	imull	$10,%eax
	fldt	8(%ebp)
	fldt	TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_NEGPOW32(,%eax)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	movl	-4(%ebp),%eax
	shrl	$5,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1932
	jmp	Lj1933
Lj1932:
	movl	-4(%ebp),%eax
	andl	$15,%eax
	imull	$10,%eax
	fldt	-16(%ebp)
	fldt	TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_NEGPOW512(,%eax)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	movl	-4(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1938
	jmp	Lj1939
Lj1938:
	movl	-4(%ebp),%eax
	cmpl	$9,%eax
	jle	Lj1940
	jmp	Lj1941
Lj1940:
	movl	-4(%ebp),%eax
	imull	$10,%eax
	fldt	-16(%ebp)
	fldt	TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_NEGPOW4096(,%eax)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	jmp	Lj1944
Lj1941:
	movl	_$SYSTEM$_Ld4,%eax
	movl	%eax,-16(%ebp)
	movl	_$SYSTEM$_Ld4+4,%eax
	movl	%eax,-12(%ebp)
	movw	_$SYSTEM$_Ld4+8,%ax
	movw	%ax,-8(%ebp)
Lj1944:
Lj1939:
Lj1933:
	jmp	Lj1947
Lj1925:
	movl	-4(%ebp),%eax
	andl	$31,%eax
	imull	$10,%eax
	fldt	8(%ebp)
	fldt	TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_POW32(,%eax)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	movl	-4(%ebp),%eax
	shrl	$5,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1952
	jmp	Lj1953
Lj1952:
	movl	-4(%ebp),%eax
	andl	$15,%eax
	imull	$10,%eax
	fldt	-16(%ebp)
	fldt	TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_POW512(,%eax)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	movl	-4(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1958
	jmp	Lj1959
Lj1958:
	movl	-4(%ebp),%eax
	cmpl	$9,%eax
	jle	Lj1960
	jmp	Lj1961
Lj1960:
	movl	-4(%ebp),%eax
	imull	$10,%eax
	fldt	-16(%ebp)
	fldt	TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_POW4096(,%eax)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	jmp	Lj1964
Lj1961:
	movl	_$SYSTEM$_Ld4,%eax
	movl	%eax,-16(%ebp)
	movl	_$SYSTEM$_Ld4+4,%eax
	movl	%eax,-12(%ebp)
	movw	_$SYSTEM$_Ld4+8,%ax
	movw	%ax,-8(%ebp)
Lj1964:
Lj1959:
Lj1953:
Lj1947:
	fldt	-16(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
SYSTEM_ALIGNTOPTR$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_setlength
fpc_shortstr_setlength:
.globl	FPC_SHORTSTR_SETLENGTH
FPC_SHORTSTR_SETLENGTH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$255,%eax
	jg	Lj1973
	jmp	Lj1974
Lj1973:
	movl	$255,-8(%ebp)
Lj1974:
	movl	-4(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_copy
fpc_shortstr_copy:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1981
	jmp	Lj1982
Lj1981:
	movl	$0,-12(%ebp)
Lj1982:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj1985
	jmp	Lj1986
Lj1985:
	decl	-8(%ebp)
	jmp	Lj1987
Lj1986:
	movl	$0,-8(%ebp)
Lj1987:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj1990
	jmp	Lj1991
Lj1990:
	movl	$0,-12(%ebp)
	jmp	Lj1994
Lj1991:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	cmpl	-12(%ebp),%edx
	jl	Lj1995
	jmp	Lj1996
Lj1995:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
Lj1996:
Lj1994:
	movl	8(%ebp),%eax
	movb	-12(%ebp),%dl
	movb	%dl,(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	incl	%eax
	movzbl	%al,%eax
	leal	(%edx,%eax,1),%eax
	movl	-12(%ebp),%ecx
	movl	8(%ebp),%edx
	leal	1(%edx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj2009
	jmp	Lj2010
Lj2009:
	jmp	Lj2007
Lj2010:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj2013
	jmp	Lj2012
Lj2013:
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2011
	jmp	Lj2012
Lj2011:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	cmpl	8(%ebp),%eax
	jl	Lj2014
	jmp	Lj2015
Lj2014:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	incl	%eax
	movl	%eax,8(%ebp)
Lj2015:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	8(%ebp),%edx
	subl	%edx,%eax
	movl	-4(%ebp),%edx
	movb	%al,(%edx)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj2020
	jmp	Lj2021
Lj2020:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-8(%ebp),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	8(%ebp),%edx
	addl	%edx,%eax
	movzbl	%al,%eax
	leal	(%ebx,%eax,1),%eax
	movl	-4(%ebp),%edx
	movzbl	-8(%ebp),%ebx
	leal	(%edx,%ebx,1),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj2021:
Lj2012:
Lj2007:
	movl	-16(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_INSERT$SHORTSTRING$OPENSTRING$LONGINT
SYSTEM_INSERT$SHORTSTRING$OPENSTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj2030
	jmp	Lj2031
Lj2030:
	movl	$1,8(%ebp)
Lj2031:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	8(%ebp),%eax
	jl	Lj2034
	jmp	Lj2035
Lj2034:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	incl	%eax
	movl	%eax,8(%ebp)
	movl	8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj2038
	jmp	Lj2039
Lj2038:
	jmp	Lj2028
Lj2039:
Lj2035:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%edx
	movl	8(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	%edx,-24(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	%eax,%edx
	jge	Lj2044
	jmp	Lj2045
Lj2044:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	incl	%eax
	subl	%eax,%edx
	incl	%edx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jg	Lj2048
	jmp	Lj2049
Lj2048:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	subl	%eax,-20(%ebp)
	movl	$0,-24(%ebp)
	jmp	Lj2052
Lj2049:
	movl	-16(%ebp),%eax
	subl	%eax,-24(%ebp)
Lj2052:
Lj2045:
	movl	-8(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movzbl	%al,%eax
	leal	(%ecx,%eax,1),%edx
	movl	-8(%ebp),%eax
	movzbl	8(%ebp),%ecx
	leal	(%eax,%ecx,1),%eax
	movl	-24(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-8(%ebp),%eax
	movzbl	8(%ebp),%edx
	leal	(%eax,%edx,1),%edx
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	8(%ebp),%eax
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	movl	-8(%ebp),%edx
	movb	%al,(%edx)
Lj2028:
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT
SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj2069
	jmp	Lj2070
Lj2069:
	movl	$1,8(%ebp)
Lj2070:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	8(%ebp),%eax
	jl	Lj2073
	jmp	Lj2074
Lj2073:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	incl	%eax
	movl	%eax,8(%ebp)
	movl	8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj2077
	jmp	Lj2078
Lj2077:
	jmp	Lj2067
Lj2078:
Lj2074:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	8(%ebp),%edx
	subl	%edx,%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	incl	%eax
	movl	-12(%ebp),%edx
	incl	%edx
	cmpl	%edx,%eax
	je	Lj2083
	jmp	Lj2082
Lj2083:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2081
	jmp	Lj2082
Lj2081:
	decl	-16(%ebp)
Lj2082:
	movl	-8(%ebp),%edx
	movl	8(%ebp),%eax
	incl	%eax
	movzbl	%al,%eax
	leal	(%edx,%eax,1),%edx
	movl	-8(%ebp),%eax
	movzbl	8(%ebp),%ecx
	leal	(%eax,%ecx,1),%eax
	movl	-16(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-8(%ebp),%edx
	movzbl	8(%ebp),%eax
	movb	-4(%ebp),%cl
	movb	%cl,(%edx,%eax,1)
	movl	8(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	movb	%al,(%edx)
Lj2067:
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT
SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$0,%eax
	jg	Lj2098
	jmp	Lj2099
Lj2098:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj2107
	.balign 4,0x90
Lj2106:
	incl	-16(%ebp)
	movl	-24(%ebp),%eax
	movl	-4(%ebp),%edx
	movb	(%eax),%al
	cmpb	1(%edx),%al
	je	Lj2111
	jmp	Lj2110
Lj2111:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_COMPARECHAR$formal$formal$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj2109
	jmp	Lj2110
Lj2109:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj2094
Lj2110:
	incl	-24(%ebp)
Lj2107:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj2106
	jmp	Lj2108
Lj2108:
Lj2099:
Lj2094:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj2125
	decl	-16(%ebp)
	.balign 4,0x90
Lj2126:
	incl	-16(%ebp)
	movl	-20(%ebp),%edx
	movb	(%edx),%dl
	cmpb	-4(%ebp),%dl
	je	Lj2127
	jmp	Lj2128
Lj2127:
	movl	-16(%ebp),%edx
	movl	%edx,-12(%ebp)
	jmp	Lj2120
Lj2128:
	incl	-20(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj2126
Lj2125:
	movl	$0,-12(%ebp)
Lj2120:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_char_copy
fpc_char_copy:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj2137
	jmp	Lj2136
Lj2137:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2135
	jmp	Lj2136
Lj2135:
	movl	8(%ebp),%eax
	movb	$1,(%eax)
	movb	-4(%ebp),%dl
	movb	%dl,1(%eax)
	jmp	Lj2140
Lj2136:
	movl	8(%ebp),%eax
	movb	$0,(%eax)
Lj2140:
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_POS$SHORTSTRING$CHAR$$LONGINT
SYSTEM_POS$SHORTSTRING$CHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj2147
	jmp	Lj2146
Lj2147:
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	cmpb	-8(%ebp),%al
	je	Lj2145
	jmp	Lj2146
Lj2145:
	movl	$1,-12(%ebp)
	jmp	Lj2150
Lj2146:
	movl	$0,-12(%ebp)
Lj2150:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UPCASE$CHAR$$CHAR
SYSTEM_UPCASE$CHAR$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movb	%al,-4(%ebp)
	movzbl	-4(%ebp),%eax
	subl	$97,%eax
	cmpl	$26,%eax
	jb	Lj2157
Lj2157:
	jc	Lj2155
	jmp	Lj2156
Lj2155:
	movzbl	-4(%ebp),%eax
	subl	$32,%eax
	movb	%al,-5(%ebp)
	jmp	Lj2160
Lj2156:
	movb	-4(%ebp),%al
	movb	%al,-5(%ebp)
Lj2160:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING
SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ebx
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2168
	decl	-12(%ebp)
	.balign 4,0x90
Lj2169:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movzbl	-12(%ebp),%edx
	movb	(%eax,%edx,1),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	movl	-8(%ebp),%edx
	movzbl	-12(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	cmpl	-12(%ebp),%ebx
	jg	Lj2169
Lj2168:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LOWERCASE$CHAR$$CHAR
SYSTEM_LOWERCASE$CHAR$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movb	%al,-4(%ebp)
	movzbl	-4(%ebp),%eax
	subl	$65,%eax
	cmpl	$26,%eax
	jb	Lj2178
Lj2178:
	jc	Lj2176
	jmp	Lj2177
Lj2176:
	movzbl	-4(%ebp),%eax
	addl	$32,%eax
	movb	%al,-5(%ebp)
	jmp	Lj2181
Lj2177:
	movb	-4(%ebp),%al
	movb	%al,-5(%ebp)
Lj2181:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LOWERCASE$SHORTSTRING$$SHORTSTRING
SYSTEM_LOWERCASE$SHORTSTRING$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ebx
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2189
	decl	-12(%ebp)
	.balign 4,0x90
Lj2190:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movzbl	-12(%ebp),%edx
	movb	(%eax,%edx,1),%al
	call	SYSTEM_LOWERCASE$CHAR$$CHAR
	movl	-8(%ebp),%edx
	movzbl	-12(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	cmpl	-12(%ebp),%ebx
	jg	Lj2190
Lj2189:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_HEXSTR$LONGINT$BYTE$$SHORTSTRING
SYSTEM_HEXSTR$LONGINT$BYTE$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,(%eax)
	movzbl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	$1,-16(%ebp)
	jl	Lj2200
	incl	-16(%ebp)
	.balign 4,0x90
Lj2201:
	decl	-16(%ebp)
	movl	-4(%ebp),%eax
	andl	$15,%eax
	movl	-12(%ebp),%edx
	movzbl	-16(%ebp),%ecx
	movb	TC_SYSTEM_HEXTBL(,%eax,1),%al
	movb	%al,(%edx,%ecx,1)
	movl	-4(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-4(%ebp)
	cmpl	$1,-16(%ebp)
	jg	Lj2201
Lj2200:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_OCTSTR$LONGINT$BYTE$$SHORTSTRING
SYSTEM_OCTSTR$LONGINT$BYTE$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,(%eax)
	movzbl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	$1,-16(%ebp)
	jl	Lj2211
	incl	-16(%ebp)
	.balign 4,0x90
Lj2212:
	decl	-16(%ebp)
	movl	-4(%ebp),%eax
	andl	$7,%eax
	movl	-12(%ebp),%edx
	movzbl	-16(%ebp),%ecx
	movb	TC_SYSTEM_HEXTBL(,%eax,1),%al
	movb	%al,(%edx,%ecx,1)
	movl	-4(%ebp),%eax
	shrl	$3,%eax
	movl	%eax,-4(%ebp)
	cmpl	$1,-16(%ebp)
	jg	Lj2212
Lj2211:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BINSTR$LONGINT$BYTE$$SHORTSTRING
SYSTEM_BINSTR$LONGINT$BYTE$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,(%eax)
	movzbl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	$1,-16(%ebp)
	jl	Lj2222
	incl	-16(%ebp)
	.balign 4,0x90
Lj2223:
	decl	-16(%ebp)
	movl	-4(%ebp),%eax
	andl	$1,%eax
	addl	$48,%eax
	movl	-12(%ebp),%edx
	movzbl	-16(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	movl	-4(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-4(%ebp)
	cmpl	$1,-16(%ebp)
	jg	Lj2223
Lj2222:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_HEXSTR$INT64$BYTE$$SHORTSTRING
SYSTEM_HEXSTR$INT64$BYTE$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,(%eax)
	movzbl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	cmpl	$1,-12(%ebp)
	jl	Lj2233
	incl	-12(%ebp)
	.balign 4,0x90
Lj2234:
	decl	-12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$15,%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movzbl	-12(%ebp),%edx
	movb	TC_SYSTEM_HEXTBL(,%eax,1),%al
	movb	%al,(%ecx,%edx,1)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	shrdl	$4,%edx,%eax
	shrl	$4,%edx
	movl	%eax,8(%ebp)
	movl	%edx,12(%ebp)
	cmpl	$1,-12(%ebp)
	jg	Lj2234
Lj2233:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_OCTSTR$INT64$BYTE$$SHORTSTRING
SYSTEM_OCTSTR$INT64$BYTE$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,(%eax)
	movzbl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	cmpl	$1,-12(%ebp)
	jl	Lj2244
	incl	-12(%ebp)
	.balign 4,0x90
Lj2245:
	decl	-12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$7,%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movzbl	-12(%ebp),%edx
	movb	TC_SYSTEM_HEXTBL(,%eax,1),%al
	movb	%al,(%ecx,%edx,1)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	shrdl	$3,%edx,%eax
	shrl	$3,%edx
	movl	%eax,8(%ebp)
	movl	%edx,12(%ebp)
	cmpl	$1,-12(%ebp)
	jg	Lj2245
Lj2244:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_BINSTR$INT64$BYTE$$SHORTSTRING
SYSTEM_BINSTR$INT64$BYTE$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,(%eax)
	movzbl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	cmpl	$1,-12(%ebp)
	jl	Lj2255
	incl	-12(%ebp)
	.balign 4,0x90
Lj2256:
	decl	-12(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$1,%eax
	movl	$0,%edx
	addl	$48,%eax
	adcl	$0,%edx
	movl	-8(%ebp),%ecx
	movzbl	-12(%ebp),%edx
	movb	%al,(%ecx,%edx,1)
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	shrdl	$1,%eax,%edx
	shrl	$1,%eax
	movl	%edx,8(%ebp)
	movl	%eax,12(%ebp)
	cmpl	$1,-12(%ebp)
	jg	Lj2256
Lj2255:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_HEXSTR$QWORD$BYTE$$SHORTSTRING
SYSTEM_HEXSTR$QWORD$BYTE$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-8(%ebp),%edx
	movb	-4(%ebp),%al
	call	SYSTEM_HEXSTR$INT64$BYTE$$SHORTSTRING
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_OCTSTR$QWORD$BYTE$$SHORTSTRING
SYSTEM_OCTSTR$QWORD$BYTE$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-8(%ebp),%edx
	movb	-4(%ebp),%al
	call	SYSTEM_OCTSTR$INT64$BYTE$$SHORTSTRING
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_BINSTR$QWORD$BYTE$$SHORTSTRING
SYSTEM_BINSTR$QWORD$BYTE$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-8(%ebp),%edx
	movb	-4(%ebp),%al
	call	SYSTEM_BINSTR$INT64$BYTE$$SHORTSTRING
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_HEXSTR$POINTER$$SHORTSTRING
SYSTEM_HEXSTR$POINTER$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movb	$8,(%eax)
	movl	$8,-12(%ebp)
	incl	-12(%ebp)
	.balign 4,0x90
Lj2293:
	decl	-12(%ebp)
	movl	-16(%ebp),%eax
	andl	$15,%eax
	movl	-8(%ebp),%edx
	movzbl	-12(%ebp),%ecx
	movb	TC_SYSTEM_HEXTBL(,%eax,1),%al
	movb	%al,(%edx,%ecx,1)
	movl	-16(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-16(%ebp)
	cmpl	$1,-12(%ebp)
	jg	Lj2293
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SPACE$BYTE$$SHORTSTRING
SYSTEM_SPACE$BYTE$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movb	-4(%ebp),%al
	movb	%al,(%edx)
	movzbl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	movb	$32,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_sint
fpc_shortstr_sint:
.globl	FPC_SHORTSTR_SINT
FPC_SHORTSTR_SINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$524,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_INT_STR$LONGINT$OPENSTRING
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj2316
	jmp	Lj2317
Lj2316:
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-524(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-524(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-268(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj2317:
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_shortstr_uint
fpc_shortstr_uint:
.globl	FPC_SHORTSTR_UINT
FPC_SHORTSTR_UINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$524,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_INT_STR$LONGWORD$OPENSTRING
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj2344
	jmp	Lj2345
Lj2344:
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-524(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-524(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-268(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj2345:
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_shortstr_qword
fpc_shortstr_qword:
.globl	FPC_SHORTSTR_QWORD
FPC_SHORTSTR_QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$524,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_INT_STR$QWORD$OPENSTRING
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj2372
	jmp	Lj2373
Lj2372:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-4(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-524(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-524(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-268(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj2373:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_shortstr_int64
fpc_shortstr_int64:
.globl	FPC_SHORTSTR_INT64
FPC_SHORTSTR_INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$524,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_INT_STR$INT64$OPENSTRING
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj2400
	jmp	Lj2401
Lj2400:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-4(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-524(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-524(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-268(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj2401:
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_STR_REAL$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$880,%esp
	movl	%ebx,-880(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2428
	decl	%eax
	je	Lj2429
	decl	%eax
	jb	Lj2427
	subl	$1,%eax
	jbe	Lj2430
	decl	%eax
	je	Lj2431
	decl	%eax
	je	Lj2432
	decl	%eax
	je	Lj2433
	jmp	Lj2427
Lj2428:
	movl	$16,-344(%ebp)
	movl	$8,-348(%ebp)
	movl	$4,-352(%ebp)
	movl	_$SYSTEM$_Ld5,%eax
	movl	%eax,-24(%ebp)
	movl	_$SYSTEM$_Ld5+4,%eax
	movl	%eax,-20(%ebp)
	movw	_$SYSTEM$_Ld5+8,%ax
	movw	%ax,-16(%ebp)
	jmp	Lj2426
Lj2429:
	movl	$22,-344(%ebp)
	movl	_$SYSTEM$_Ld6,%eax
	movl	%eax,-24(%ebp)
	movl	_$SYSTEM$_Ld6+4,%eax
	movl	%eax,-20(%ebp)
	movw	_$SYSTEM$_Ld6+8,%ax
	movw	%ax,-16(%ebp)
	movl	$9,-348(%ebp)
	movl	$5,-352(%ebp)
	jmp	Lj2426
Lj2430:
	movl	$25,-344(%ebp)
	movl	$10,-348(%ebp)
	movl	$6,-352(%ebp)
	movl	_$SYSTEM$_Ld7,%eax
	movl	%eax,-24(%ebp)
	movl	_$SYSTEM$_Ld7+4,%eax
	movl	%eax,-20(%ebp)
	movw	_$SYSTEM$_Ld7+8,%ax
	movw	%ax,-16(%ebp)
	jmp	Lj2426
Lj2431:
	movl	$23,-344(%ebp)
	movl	$10,-348(%ebp)
	movl	$6,-352(%ebp)
	movl	_$SYSTEM$_Ld6,%eax
	movl	%eax,-24(%ebp)
	movl	_$SYSTEM$_Ld6+4,%eax
	movl	%eax,-20(%ebp)
	movw	_$SYSTEM$_Ld6+8,%ax
	movw	%ax,-16(%ebp)
	jmp	Lj2426
Lj2432:
	movl	$25,-344(%ebp)
	movl	$10,-348(%ebp)
	movl	$0,-352(%ebp)
	movl	_$SYSTEM$_Ld7,%eax
	movl	%eax,-24(%ebp)
	movl	_$SYSTEM$_Ld7+4,%eax
	movl	%eax,-20(%ebp)
	movw	_$SYSTEM$_Ld7+8,%ax
	movw	%ax,-16(%ebp)
	jmp	Lj2426
Lj2433:
	movl	$25,-344(%ebp)
	movl	$10,-348(%ebp)
	movl	$6,-352(%ebp)
	movl	_$SYSTEM$_Ld7,%eax
	movl	%eax,-24(%ebp)
	movl	_$SYSTEM$_Ld7+4,%eax
	movl	%eax,-20(%ebp)
	movw	_$SYSTEM$_Ld7+8,%ax
	movw	%ax,-16(%ebp)
	jmp	Lj2426
Lj2427:
Lj2426:
	movl	-4(%ebp),%eax
	cmpl	$-32767,%eax
	je	Lj2482
	jmp	Lj2483
Lj2482:
	movl	-344(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj2483:
	movw	24(%ebp),%ax
	andw	$32768,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	setneb	-336(%ebp)
	movw	24(%ebp),%ax
	andw	$32767,%ax
	movzwl	%ax,%eax
	cmpl	$32767,%eax
	seteb	-339(%ebp)
	movl	16(%ebp),%eax
	testl	%eax,%eax
	je	Lj2492
	jmp	Lj2491
Lj2492:
	movl	20(%ebp),%eax
	andl	$2147483647,%eax
	testl	%eax,%eax
	je	Lj2490
	jmp	Lj2491
Lj2490:
	movb	$1,-338(%ebp)
	jmp	Lj2493
Lj2491:
	movb	$0,-338(%ebp)
Lj2493:
	cmpb	$0,-339(%ebp)
	jne	Lj2494
	jmp	Lj2495
Lj2494:
	cmpb	$0,-338(%ebp)
	jne	Lj2496
	jmp	Lj2497
Lj2496:
	cmpb	$0,-336(%ebp)
	jne	Lj2498
	jmp	Lj2499
Lj2498:
	leal	-324(%ebp),%eax
	movl	$_$SYSTEM$_Ld8,%ecx
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	jmp	Lj2506
Lj2499:
	leal	-324(%ebp),%eax
	movl	$_$SYSTEM$_Ld9,%ecx
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
Lj2506:
	jmp	Lj2513
Lj2497:
	leal	-324(%ebp),%eax
	movl	$_$SYSTEM$_Ld10,%ecx
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
Lj2513:
	jmp	Lj2520
Lj2495:
	cmpb	$0,-336(%ebp)
	jne	Lj2521
	jmp	Lj2522
Lj2521:
	fldt	16(%ebp)
	fchs
	fstpt	16(%ebp)
Lj2522:
	movl	-344(%ebp),%edx
	movl	-352(%ebp),%eax
	subl	%eax,%edx
	subl	$2,%edx
	movl	%edx,-68(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-68(%ebp),%eax
	jg	Lj2527
	jmp	Lj2528
Lj2527:
	movl	-68(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj2528:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj2531
	jmp	Lj2532
Lj2531:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj2535
	jmp	Lj2534
Lj2535:
	movl	-4(%ebp),%eax
	cmpl	-348(%ebp),%eax
	jl	Lj2533
	jmp	Lj2534
Lj2533:
	movl	-348(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj2534:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2540
	jmp	Lj2539
Lj2540:
	movl	-4(%ebp),%eax
	cmpl	-344(%ebp),%eax
	jl	Lj2538
	jmp	Lj2539
Lj2538:
	movl	-4(%ebp),%edx
	movl	-352(%ebp),%eax
	subl	%eax,%edx
	subl	$2,%edx
	movl	%edx,-68(%ebp)
Lj2539:
Lj2532:
	leal	-324(%ebp),%eax
	movl	$_$SYSTEM$_Ld11,%ecx
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	$2,-52(%ebp)
	movl	$0,-64(%ebp)
	movzwl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	16(%ebp)
	movl	%ebp,%eax
	call	SYSTEM_STR_REAL$crcC5C66959_GETINTPART$EXTENDED
	fld1
	fldt	-24(%ebp)
	fsubrp	%st,%st(1)
	fldt	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj2557
	jmp	Lj2558
Lj2557:
	movzwl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	16(%ebp)
	call	fpc_frac_real
	fstpt	16(%ebp)
Lj2558:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj2565
	jmp	Lj2564
Lj2565:
	movl	-68(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj2563
	jmp	Lj2564
Lj2563:
	movl	-8(%ebp),%eax
	movl	%eax,-68(%ebp)
Lj2564:
	movl	-52(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2570
	jmp	Lj2569
Lj2570:
	fldz
	fldt	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jne	Lj2568
	jmp	Lj2569
Lj2568:
	jmp	Lj2572
	.balign 4,0x90
Lj2571:
	fldt	_$SYSTEM$_Ld12
	fldt	16(%ebp)
	fmulp	%st,%st(1)
	fstpt	16(%ebp)
	decl	-64(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj2576
	jmp	Lj2577
Lj2576:
	decl	-68(%ebp)
Lj2577:
Lj2572:
	fldt	-24(%ebp)
	fldt	_$SYSTEM$_Ld13
	fsubp	%st,%st(1)
	fldt	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj2571
	jmp	Lj2573
Lj2573:
	decl	-64(%ebp)
Lj2569:
	movl	-52(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-68(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj2580
	jmp	Lj2581
Lj2580:
	movl	_$SYSTEM$_Ld2,%eax
	movl	%eax,-36(%ebp)
	movl	_$SYSTEM$_Ld2+4,%eax
	movl	%eax,-32(%ebp)
	movw	_$SYSTEM$_Ld2+8,%ax
	movw	%ax,-28(%ebp)
	fld1
	fstpt	-48(%ebp)
	movl	-68(%ebp),%eax
	movl	$1,-60(%ebp)
	cmpl	-60(%ebp),%eax
	jl	Lj2587
	decl	-60(%ebp)
	.balign 4,0x90
Lj2588:
	incl	-60(%ebp)
	fldt	_$SYSTEM$_Ld12
	fldt	-48(%ebp)
	fmulp	%st,%st(1)
	fstpt	-48(%ebp)
	cmpl	-60(%ebp),%eax
	jg	Lj2588
Lj2587:
	fldt	-48(%ebp)
	fldt	-36(%ebp)
	fdivp	%st,%st(1)
	fstpt	-36(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2593
	jmp	Lj2594
Lj2593:
	fldt	-24(%ebp)
	fldt	16(%ebp)
	fmulp	%st,%st(1)
	fldt	16(%ebp)
	faddp	%st,%st(1)
	fstpt	16(%ebp)
Lj2594:
	fldt	-36(%ebp)
	fldt	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jae	Lj2597
	jmp	Lj2598
Lj2597:
	fldt	-36(%ebp)
	fldt	16(%ebp)
	faddp	%st,%st(1)
	fstpt	16(%ebp)
Lj2598:
	movzwl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	16(%ebp)
	call	fpc_int_real
	fld1
	fcompp
	fnstsw	%ax
	sahf
	je	Lj2601
	jmp	Lj2602
Lj2601:
	movzbl	-52(%ebp),%eax
	pushl	%eax
	leal	-324(%ebp),%edx
	movl	%ebp,%eax
	movl	$255,%ecx
	call	SYSTEM_STR_REAL$crcC5C66959_ROUNDSTR$OPENSTRING$BYTE
	movzwl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	16(%ebp)
	call	fpc_frac_real
	fstpt	16(%ebp)
Lj2602:
	movl	-68(%ebp),%ebx
	movl	$1,-60(%ebp)
	cmpl	-60(%ebp),%ebx
	jl	Lj2618
	decl	-60(%ebp)
	.balign 4,0x90
Lj2619:
	incl	-60(%ebp)
	fld1
	fldt	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj2620
	jmp	Lj2621
Lj2620:
	movzwl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	16(%ebp)
	call	fpc_frac_real
	fldt	_$SYSTEM$_Ld12
	fmulp	%st,%st(1)
	fstpt	16(%ebp)
	jmp	Lj2626
Lj2621:
	fldt	_$SYSTEM$_Ld12
	fldt	16(%ebp)
	fmulp	%st,%st(1)
	fstpt	16(%ebp)
Lj2626:
	incl	-52(%ebp)
	fnstcw	-356(%ebp)
	fnstcw	-354(%ebp)
	orw	$3840,-356(%ebp)
	fldt	16(%ebp)
	fldcw	-356(%ebp)
	fistpq	-364(%ebp)
	fldcw	-354(%ebp)
	fwait
	movl	-364(%ebp),%eax
	movl	-360(%ebp),%edx
	addl	$48,%eax
	adcl	$0,%edx
	movzbl	-52(%ebp),%edx
	movb	%al,-324(%ebp,%edx,1)
	movzbl	-52(%ebp),%eax
	movb	-324(%ebp,%eax,1),%al
	cmpb	$57,%al
	ja	Lj2631
	jmp	Lj2632
Lj2631:
	movzbl	-52(%ebp),%eax
	movzbl	-324(%ebp,%eax,1),%eax
	subl	$10,%eax
	movzbl	-52(%ebp),%edx
	movb	%al,-324(%ebp,%edx,1)
	movl	-52(%ebp),%eax
	decl	%eax
	pushl	%eax
	leal	-324(%ebp),%edx
	movl	%ebp,%eax
	movl	$255,%ecx
	call	SYSTEM_STR_REAL$crcC5C66959_ROUNDSTR$OPENSTRING$BYTE
Lj2632:
	cmpl	-60(%ebp),%ebx
	jg	Lj2619
Lj2618:
	movl	-52(%ebp),%eax
	movl	%eax,-56(%ebp)
Lj2581:
	movl	-56(%ebp),%ecx
	leal	-324(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
	movb	-322(%ebp),%al
	cmpb	$48,%al
	je	Lj2651
	jmp	Lj2652
Lj2651:
	pushl	$1
	leal	-324(%ebp),%eax
	movl	$2,%ecx
	movl	$255,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	jmp	Lj2661
Lj2652:
	incl	-64(%ebp)
Lj2661:
	cmpb	$0,-336(%ebp)
	jne	Lj2662
	jmp	Lj2663
Lj2662:
	movb	$45,-323(%ebp)
Lj2663:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj2666
	jmp	Lj2668
Lj2668:
	movl	-64(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	cmpl	$0,%eax
	jg	Lj2666
	jl	Lj2667
	cmpl	$35,%edx
	ja	Lj2666
	jmp	Lj2667
Lj2666:
	pushl	$3
	leal	-324(%ebp),%edx
	movl	$255,%ecx
	movb	$46,%al
	call	SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT
	pushl	$10
	movl	-64(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	leal	-335(%ebp),%ecx
	movl	$-1,%edx
	call	fpc_shortstr_sint
	movl	-352(%ebp),%eax
	subl	$2,%eax
	movzbl	-335(%ebp),%edx
	cmpl	%edx,%eax
	jg	Lj2685
	jmp	Lj2686
Lj2685:
	leal	-335(%ebp),%eax
	pushl	%eax
	leal	-876(%ebp),%eax
	pushl	%eax
	movl	-352(%ebp),%ecx
	subl	$2,%ecx
	movzbl	-335(%ebp),%eax
	subl	%eax,%ecx
	movl	$1,%edx
	movl	$_$SYSTEM$_Ld14,%eax
	call	fpc_shortstr_copy
	leal	-876(%ebp),%ecx
	leal	-620(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-620(%ebp),%ecx
	leal	-335(%ebp),%eax
	movl	$10,%edx
	call	fpc_shortstr_to_shortstr
Lj2686:
	movl	-64(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj2709
	jmp	Lj2710
Lj2709:
	leal	-335(%ebp),%eax
	pushl	%eax
	leal	-620(%ebp),%eax
	movl	$_$SYSTEM$_Ld15,%ecx
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-620(%ebp),%ecx
	leal	-335(%ebp),%eax
	movl	$10,%edx
	call	fpc_shortstr_to_shortstr
	jmp	Lj2725
Lj2710:
	leal	-335(%ebp),%eax
	pushl	%eax
	leal	-620(%ebp),%eax
	movl	$_$SYSTEM$_Ld16,%ecx
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-620(%ebp),%ecx
	leal	-335(%ebp),%eax
	movl	$10,%edx
	call	fpc_shortstr_to_shortstr
Lj2725:
	pushl	$2
	leal	-324(%ebp),%eax
	movl	%eax,-376(%ebp)
	movl	$_$SYSTEM$_Ld17,%eax
	movl	%eax,-372(%ebp)
	leal	-335(%ebp),%ecx
	leal	-632(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	leal	-632(%ebp),%eax
	movl	%eax,-368(%ebp)
	leal	-376(%ebp),%ecx
	leal	-324(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat_multi
	jmp	Lj2754
Lj2667:
	movb	-336(%ebp),%al
	testb	%al,%al
	je	Lj2755
	jmp	Lj2756
Lj2755:
	pushl	$1
	leal	-324(%ebp),%eax
	movl	$1,%ecx
	movl	$255,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	movb	$2,-337(%ebp)
	jmp	Lj2767
Lj2756:
	movb	$3,-337(%ebp)
Lj2767:
	movl	-64(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj2770
	jmp	Lj2771
Lj2770:
	movzbl	-337(%ebp),%eax
	movl	-64(%ebp),%edx
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	decl	%edx
	movzbl	-324(%ebp),%eax
	cmpl	%eax,%edx
	jg	Lj2772
	jmp	Lj2773
Lj2772:
	leal	-620(%ebp),%eax
	pushl	%eax
	movzbl	-337(%ebp),%eax
	movl	-64(%ebp),%ecx
	addl	%eax,%ecx
	movl	-8(%ebp),%eax
	addl	%eax,%ecx
	movzbl	-324(%ebp),%eax
	subl	%eax,%ecx
	movl	$1,%edx
	movl	$_$SYSTEM$_Ld14,%eax
	call	fpc_shortstr_copy
	leal	-620(%ebp),%eax
	pushl	%eax
	leal	-324(%ebp),%ecx
	leal	-324(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
Lj2773:
	movzbl	-337(%ebp),%edx
	movl	-64(%ebp),%eax
	addl	%edx,%eax
	pushl	%eax
	leal	-324(%ebp),%edx
	movl	$255,%ecx
	movb	$46,%al
	call	SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT
	jmp	Lj2798
Lj2771:
	movl	-64(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	movl	%eax,-64(%ebp)
	movzbl	-337(%ebp),%eax
	decl	%eax
	pushl	%eax
	leal	-620(%ebp),%eax
	pushl	%eax
	movl	-64(%ebp),%ecx
	movl	$1,%edx
	movl	$_$SYSTEM$_Ld14,%eax
	call	fpc_shortstr_copy
	leal	-620(%ebp),%eax
	leal	-324(%ebp),%edx
	movl	$255,%ecx
	call	SYSTEM_INSERT$SHORTSTRING$OPENSTRING$LONGINT
	movzbl	-337(%ebp),%eax
	pushl	%eax
	leal	-324(%ebp),%edx
	movl	$255,%ecx
	movb	$46,%al
	call	SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT
Lj2798:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2825
	jmp	Lj2826
Lj2825:
	leal	-324(%ebp),%edx
	movb	$46,%al
	call	SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
	movl	%eax,%ecx
	movl	-8(%ebp),%eax
	addl	%eax,%ecx
	leal	-324(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
	jmp	Lj2837
Lj2826:
	leal	-324(%ebp),%edx
	movb	$46,%al
	call	SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
	movl	%eax,%ecx
	decl	%ecx
	leal	-324(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
Lj2837:
Lj2754:
Lj2520:
	movzbl	-324(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj2848
	jmp	Lj2849
Lj2848:
	leal	-324(%ebp),%eax
	pushl	%eax
	movzbl	-324(%ebp),%eax
	movl	-4(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-876(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-876(%ebp),%ecx
	leal	-620(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-620(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	call	fpc_shortstr_to_shortstr
	jmp	Lj2868
Lj2849:
	leal	-324(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj2868:
	movl	-880(%ebp),%ebx
	leave
	ret	$20

.text
	.balign 4,0x90
SYSTEM_STR_REAL$crcC5C66959_GETINTPART$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$216,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-192(%ebp)
	movl	$0,-200(%ebp)
	movb	$0,-201(%ebp)
	jmp	Lj2882
	.balign 4,0x90
Lj2881:
	incl	-192(%ebp)
	incl	-200(%ebp)
	movl	-192(%ebp),%eax
	cmpl	$18,%eax
	jg	Lj2884
	jmp	Lj2885
Lj2884:
	movl	$1,-192(%ebp)
	movb	$1,-201(%ebp)
Lj2885:
	movl	-192(%ebp),%eax
	imull	$10,%eax
	movl	8(%ebp),%edx
	movl	%edx,-194(%ebp,%eax)
	movl	12(%ebp),%edx
	movl	%edx,-190(%ebp,%eax)
	movw	16(%ebp),%dx
	movw	%dx,-186(%ebp,%eax)
	fldt	_$SYSTEM$_Ld12
	fldt	8(%ebp)
	fdivp	%st,%st(1)
	fstpt	8(%ebp)
Lj2882:
	movl	-4(%ebp),%eax
	fld1
	fldt	-24(%eax)
	fsubrp	%st,%st(1)
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj2881
	jmp	Lj2883
Lj2883:
	movl	-200(%ebp),%eax
	testl	%eax,%eax
	je	Lj2894
	jmp	Lj2895
Lj2894:
	jmp	Lj2424
Lj2895:
	movl	-192(%ebp),%eax
	incl	%eax
	movl	%eax,-196(%ebp)
	movl	-196(%ebp),%eax
	cmpl	$18,%eax
	jg	Lj2898
	jmp	Lj2899
Lj2898:
	movl	$1,-196(%ebp)
Lj2899:
	movl	-4(%ebp),%eax
	fldz
	fstpt	-36(%eax)
	movl	-200(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	movl	%edx,-64(%eax)
	.balign 4,0x90
Lj2906:
	movl	-4(%ebp),%eax
	movl	-68(%eax),%eax
	cmpl	$0,%eax
	jg	Lj2909
	jmp	Lj2910
Lj2909:
	fnstcw	-206(%ebp)
	fnstcw	-204(%ebp)
	orw	$3840,-206(%ebp)
	movl	-192(%ebp),%eax
	imull	$10,%eax
	movl	-4(%ebp),%edx
	fldt	-36(%edx)
	fldt	-194(%ebp,%eax)
	fsubp	%st,%st(1)
	fldcw	-206(%ebp)
	fistpq	-216(%ebp)
	fldcw	-204(%ebp)
	fwait
	movl	-216(%ebp),%eax
	movl	%eax,-188(%ebp)
	movl	-4(%ebp),%eax
	decl	-68(%eax)
	movl	-4(%ebp),%eax
	incl	-52(%eax)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movzbl	-52(%eax),%edx
	movl	-188(%ebp),%eax
	addl	$48,%eax
	movb	%al,-324(%ecx,%edx,1)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movzbl	-52(%eax),%eax
	movb	-324(%edx,%eax,1),%al
	cmpb	$57,%al
	ja	Lj2915
	jmp	Lj2916
Lj2915:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movzbl	-52(%eax),%eax
	movzbl	-324(%edx,%eax,1),%eax
	subl	$10,%eax
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%edx
	movzbl	-52(%edx),%edx
	movb	%al,-324(%ecx,%edx,1)
	movl	-4(%ebp),%eax
	movl	-52(%eax),%eax
	decl	%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	leal	-324(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_STR_REAL$crcC5C66959_ROUNDSTR$OPENSTRING$BYTE
Lj2916:
Lj2910:
	movl	-192(%ebp),%eax
	imull	$10,%eax
	movzwl	-186(%ebp,%eax),%edx
	pushl	%edx
	pushl	-190(%ebp,%eax)
	pushl	-194(%ebp,%eax)
	call	fpc_int_real
	fldt	_$SYSTEM$_Ld12
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	fstpt	-36(%eax)
	decl	-192(%ebp)
	movl	-192(%ebp),%eax
	testl	%eax,%eax
	je	Lj2931
	jmp	Lj2932
Lj2931:
	movl	$18,-192(%ebp)
Lj2932:
	cmpb	$0,-201(%ebp)
	jne	Lj2937
	jmp	Lj2936
Lj2937:
	movl	-192(%ebp),%eax
	cmpl	-196(%ebp),%eax
	je	Lj2908
	jmp	Lj2936
Lj2936:
	movb	-201(%ebp),%al
	testb	%al,%al
	je	Lj2938
	jmp	Lj2935
Lj2938:
	movl	-192(%ebp),%eax
	cmpl	$18,%eax
	je	Lj2908
	jmp	Lj2935
Lj2935:
	movl	-4(%ebp),%eax
	movl	-68(%eax),%eax
	testl	%eax,%eax
	je	Lj2908
	jmp	Lj2906
Lj2908:
	cmpb	$0,-201(%ebp)
	jne	Lj2939
	jmp	Lj2941
Lj2941:
	movl	-192(%ebp),%eax
	cmpl	$18,%eax
	jl	Lj2939
	jmp	Lj2940
Lj2939:
	movl	-4(%ebp),%eax
	movl	$-1,-68(%eax)
	movl	-192(%ebp),%eax
	imull	$10,%eax
	movl	-4(%ebp),%edx
	fldt	-36(%edx)
	fldt	-194(%ebp,%eax)
	fsubp	%st,%st(1)
	subl	$12,%esp
	fstpt	(%esp)
	call	fpc_int_real
	fldt	_$SYSTEM$_Ld18
	fcompp
	fnstsw	%ax
	sahf
	jbe	Lj2944
	jmp	Lj2945
Lj2944:
	movl	-4(%ebp),%eax
	movzbl	-52(%eax),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	leal	-324(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_STR_REAL$crcC5C66959_ROUNDSTR$OPENSTRING$BYTE
Lj2945:
Lj2940:
Lj2424:
	leave
	ret	$12

.text
	.balign 4,0x90
SYSTEM_STR_REAL$crcC5C66959_ROUNDSTR$OPENSTRING$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$1,-16(%ebp)
	.balign 4,0x90
Lj2958:
	movl	-4(%ebp),%edx
	movzbl	8(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	-4(%ebp),%edx
	movzbl	8(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	movzbl	8(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$57,%al
	ja	Lj2965
	jmp	Lj2966
Lj2965:
	movl	-4(%ebp),%eax
	movzbl	8(%ebp),%edx
	movb	$48,(%eax,%edx,1)
	movl	$1,-16(%ebp)
Lj2966:
	decb	8(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj2960
	jmp	Lj2958
Lj2960:
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_STR_REAL_ISO$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$14,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movzwl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	16(%ebp)
	movl	12(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_STR_REAL$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING
	movl	12(%ebp),%eax
	movzbw	(%eax),%ax
	movw	$1,-14(%ebp)
	cmpw	-14(%ebp),%ax
	jl	Lj2986
	decw	-14(%ebp)
	.balign 4,0x90
Lj2987:
	incw	-14(%ebp)
	movl	12(%ebp),%edx
	movzbl	-14(%ebp),%ecx
	movb	(%edx,%ecx,1),%dl
	cmpb	$69,%dl
	je	Lj2988
	jmp	Lj2989
Lj2988:
	movl	12(%ebp),%ecx
	movzbl	-14(%ebp),%edx
	movb	$101,(%ecx,%edx,1)
Lj2989:
	cmpw	-14(%ebp),%ax
	jg	Lj2987
Lj2986:
	leave
	ret	$20

.text
	.balign 4,0x90
.globl	fpc_shortstr_float
fpc_shortstr_float:
.globl	FPC_SHORTSTR_FLOAT
FPC_SHORTSTR_FLOAT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movzwl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	16(%ebp)
	movl	12(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_STR_REAL$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING
	leave
	ret	$20

.text
	.balign 4,0x90
SYSTEM_FPC_SHORTSTR_ENUM_INTERN$LONGINT$LONGINT$POINTER$POINTER$OPENSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$107,-16(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj3012
	jmp	Lj3013
Lj3012:
	movl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	addl	$2,%edx
	movl	-24(%ebp),%eax
	movzbl	1(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-60(%ebp)
	movl	-60(%ebp),%eax
	incl	%eax
	decl	%eax
	movl	%eax,-64(%ebp)
	movl	-64(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	leal	1(%eax),%eax
	movl	-4(%ebp),%edx
	cmpl	(%eax),%edx
	jl	Lj3027
	jmp	Lj3029
Lj3029:
	movl	-4(%ebp),%edx
	cmpl	4(%eax),%edx
	jg	Lj3027
	jmp	Lj3028
Lj3027:
	jmp	Lj3006
Lj3028:
	movl	(%eax),%edx
	subl	%edx,-4(%ebp)
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%edx,%eax,4),%eax
	movl	%eax,-32(%ebp)
	cmpl	$0,-32(%ebp)
	jne	Lj3033
	jmp	Lj3032
Lj3032:
	jmp	Lj3006
Lj3033:
	movl	-32(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	call	fpc_shortstr_to_shortstr
	jmp	Lj3040
Lj3013:
	movl	-20(%ebp),%eax
	leal	8(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	$0,-56(%ebp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	decl	%eax
	movl	%eax,-52(%ebp)
	.balign 4,0x90
Lj3047:
	movl	-56(%ebp),%eax
	movl	-52(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-48(%ebp)
	movl	-36(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	(%edx,%eax,8),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj3052
	jmp	Lj3053
Lj3052:
	movl	-48(%ebp),%eax
	incl	%eax
	movl	%eax,-56(%ebp)
	jmp	Lj3056
Lj3053:
	movl	-36(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	(%eax,%edx,8),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj3057
	jmp	Lj3058
Lj3057:
	movl	-48(%ebp),%eax
	decl	%eax
	movl	%eax,-52(%ebp)
	jmp	Lj3061
Lj3058:
	jmp	Lj3049
Lj3061:
Lj3056:
	movl	-56(%ebp),%eax
	cmpl	-52(%ebp),%eax
	jg	Lj3062
	jmp	Lj3063
Lj3062:
	jmp	Lj3006
Lj3063:
	jmp	Lj3047
Lj3049:
	movl	-36(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	4(%eax,%edx,8),%ecx
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj3040:
	movl	12(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj3070
	jmp	Lj3071
Lj3070:
	movl	12(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-40(%ebp)
	movl	-40(%ebp),%edx
	movl	$1,-44(%ebp)
	cmpl	-44(%ebp),%edx
	jl	Lj3075
	decl	-44(%ebp)
	.balign 4,0x90
Lj3076:
	incl	-44(%ebp)
	movl	12(%ebp),%ecx
	movl	12(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-44(%ebp),%ebx
	addl	%ebx,%eax
	movzbl	%al,%eax
	movb	$32,(%ecx,%eax,1)
	cmpl	-44(%ebp),%edx
	jg	Lj3076
Lj3075:
	movl	12(%ebp),%eax
	movb	-40(%ebp),%dl
	addb	%dl,(%eax)
Lj3071:
	movl	$0,-16(%ebp)
Lj3006:
	movl	-16(%ebp),%eax
	movl	-68(%ebp),%ebx
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	fpc_shortstr_enum
fpc_shortstr_enum:
.globl	FPC_SHORTSTR_ENUM
FPC_SHORTSTR_ENUM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	16(%ebp)
	movl	12(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_FPC_SHORTSTR_ENUM_INTERN$LONGINT$LONGINT$POINTER$POINTER$OPENSTRING$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3097
	jmp	Lj3098
Lj3097:
	movw	$107,%ax
	call	SYSTEM_RUNERROR$WORD
Lj3098:
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	fpc_shortstr_bool
fpc_shortstr_bool:
.globl	FPC_SHORTSTR_BOOL
FPC_SHORTSTR_BOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$524,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj3103
	jmp	Lj3104
Lj3103:
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$_$SYSTEM$_Ld19,%ecx
	call	fpc_shortstr_to_shortstr
	jmp	Lj3111
Lj3104:
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$_$SYSTEM$_Ld20,%ecx
	call	fpc_shortstr_to_shortstr
Lj3111:
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj3118
	jmp	Lj3119
Lj3118:
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-524(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-524(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-268(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj3119:
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_shortstr_currency
fpc_shortstr_currency:
.globl	FPC_SHORTSTR_CURRENCY
FPC_SHORTSTR_CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$76,%esp
	movl	%ebx,-76(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-31(%ebp),%eax
	movb	$48,%cl
	movl	$19,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	movl	-4(%ebp),%eax
	cmpl	$-32767,%eax
	je	Lj3146
	jmp	Lj3147
Lj3146:
	movl	$25,-4(%ebp)
Lj3147:
	leal	12(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jg	Lj3150
	jl	Lj3151
	cmpl	$0,%edx
	jae	Lj3150
	jmp	Lj3151
Lj3150:
	leal	12(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-72(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	$0,-56(%ebp)
	jmp	Lj3156
Lj3151:
	movl	$1,-56(%ebp)
	leal	12(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	notl	%eax
	negl	%edx
	sbbl	$-1,%eax
	movl	%edx,-72(%ebp)
	movl	%eax,-68(%ebp)
Lj3156:
	movl	$0,-52(%ebp)
	.balign 4,0x90
Lj3163:
	incl	-52(%ebp)
	pushl	$0
	pushl	$10
	pushl	-68(%ebp)
	pushl	-72(%ebp)
	call	fpc_mod_qword
	addl	$48,%eax
	adcl	$0,%edx
	movl	-52(%ebp),%edx
	movb	%al,-32(%ebp,%edx,1)
	pushl	$0
	pushl	$10
	pushl	-68(%ebp)
	pushl	-72(%ebp)
	call	fpc_div_qword
	movl	%eax,-72(%ebp)
	movl	%edx,-68(%ebp)
	movl	-72(%ebp),%eax
	movl	-68(%ebp),%edx
	cmpl	$0,%edx
	jne	Lj3163
	cmpl	$0,%eax
	jne	Lj3163
	jmp	Lj3165
Lj3165:
	movl	-52(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3180
	jmp	Lj3181
Lj3180:
	incl	-48(%ebp)
Lj3181:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3182
	jmp	Lj3183
Lj3182:
	addl	$5,-48(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj3184
	jmp	Lj3185
Lj3184:
	movl	$8,-4(%ebp)
Lj3185:
	movl	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-60(%ebp)
	movl	-48(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj3190
	jmp	Lj3191
Lj3190:
	movl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
Lj3191:
	movl	-60(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3194
	jmp	Lj3195
Lj3194:
	movl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-52(%ebp),%edx
	movl	-60(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-64(%ebp)
	jmp	Lj3200
Lj3195:
	movl	-52(%ebp),%eax
	movl	%eax,-64(%ebp)
Lj3200:
	jmp	Lj3203
Lj3183:
	movl	-56(%ebp),%eax
	addl	%eax,-48(%ebp)
	jmp	Lj3205
	.balign 4,0x90
Lj3204:
	incl	-48(%ebp)
	incl	-52(%ebp)
	movl	-52(%ebp),%eax
	movb	$48,-32(%ebp,%eax,1)
Lj3205:
	movl	-52(%ebp),%eax
	cmpl	$5,%eax
	jl	Lj3204
	jmp	Lj3206
Lj3206:
	movl	-8(%ebp),%edx
	movl	$4,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-60(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3213
	jmp	Lj3214
Lj3213:
	movl	-64(%ebp),%eax
	cmpl	$4,%eax
	jg	Lj3215
	jmp	Lj3216
Lj3215:
	movl	$4,-64(%ebp)
Lj3216:
	incl	-64(%ebp)
Lj3214:
	movl	-60(%ebp),%eax
	subl	%eax,-48(%ebp)
Lj3203:
	movl	-60(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3219
	jmp	Lj3220
Lj3219:
	movl	$1,-36(%ebp)
	movl	$0,-44(%ebp)
	movl	-60(%ebp),%edx
	movl	$0,-40(%ebp)
	cmpl	-40(%ebp),%edx
	jl	Lj3226
	decl	-40(%ebp)
	.balign 4,0x90
Lj3227:
	incl	-40(%ebp)
	movl	-44(%ebp),%eax
	cmpl	$1,%eax
	je	Lj3230
	jmp	Lj3229
Lj3230:
	movl	-36(%ebp),%eax
	movb	-32(%ebp,%eax,1),%al
	cmpb	$57,%al
	je	Lj3228
	jmp	Lj3229
Lj3228:
	movl	-36(%ebp),%eax
	movb	$48,-32(%ebp,%eax,1)
	jmp	Lj3233
Lj3229:
	movl	-36(%ebp),%eax
	movzbl	-32(%ebp,%eax,1),%eax
	movl	-44(%ebp),%ecx
	addl	%ecx,%eax
	movl	-36(%ebp),%ecx
	movb	%al,-32(%ebp,%ecx,1)
	movl	-36(%ebp),%eax
	movb	-32(%ebp,%eax,1),%al
	cmpb	$53,%al
	jae	Lj3236
	jmp	Lj3237
Lj3236:
	movl	$1,-44(%ebp)
	jmp	Lj3240
Lj3237:
	movl	$0,-44(%ebp)
Lj3240:
Lj3233:
	incl	-36(%ebp)
	movl	-36(%ebp),%eax
	cmpl	-52(%ebp),%eax
	jg	Lj3243
	jmp	Lj3244
Lj3243:
	jmp	Lj3226
Lj3244:
	cmpl	-40(%ebp),%edx
	jg	Lj3227
Lj3226:
	movl	-44(%ebp),%eax
	cmpl	$1,%eax
	je	Lj3247
	jmp	Lj3246
Lj3247:
	movl	-36(%ebp),%eax
	decl	%eax
	movb	-32(%ebp,%eax,1),%al
	cmpb	$48,%al
	je	Lj3245
	jmp	Lj3246
Lj3245:
	jmp	Lj3249
	.balign 4,0x90
Lj3248:
	movl	-36(%ebp),%eax
	movb	$48,-32(%ebp,%eax,1)
	incl	-36(%ebp)
Lj3249:
	movl	-36(%ebp),%eax
	movb	-32(%ebp,%eax,1),%al
	cmpb	$57,%al
	je	Lj3248
	jmp	Lj3250
Lj3250:
	movl	-36(%ebp),%eax
	movzbl	-32(%ebp,%eax,1),%eax
	incl	%eax
	movl	-36(%ebp),%edx
	movb	%al,-32(%ebp,%edx,1)
	movl	-36(%ebp),%eax
	cmpl	-48(%ebp),%eax
	jg	Lj3255
	jmp	Lj3256
Lj3255:
	incl	-48(%ebp)
	incl	-52(%ebp)
Lj3256:
Lj3246:
Lj3220:
	movl	-48(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj3257
	jmp	Lj3258
Lj3257:
	movl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
Lj3258:
	movl	-48(%ebp),%eax
	cmpl	8(%ebp),%eax
	jg	Lj3261
	jmp	Lj3262
Lj3261:
	movl	-60(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3263
	jmp	Lj3264
Lj3263:
	movl	-48(%ebp),%eax
	movl	8(%ebp),%edx
	subl	%edx,%eax
	addl	%eax,-60(%ebp)
Lj3264:
	movl	8(%ebp),%eax
	movl	%eax,-48(%ebp)
Lj3262:
	movl	-48(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_shortstr_setlength
	movl	-48(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3275
	jmp	Lj3276
Lj3275:
	leal	12(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jne	Lj3278
	cmpl	$0,%edx
	jne	Lj3278
	jmp	Lj3277
Lj3277:
	movl	$0,-44(%ebp)
	jmp	Lj3281
Lj3278:
	movl	-52(%ebp),%eax
	subl	$5,%eax
	movl	%eax,-44(%ebp)
Lj3281:
	movl	-44(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj3284
	jmp	Lj3285
Lj3284:
	movl	-12(%ebp),%edx
	movl	-40(%ebp),%eax
	subl	$2,%eax
	movzbl	%al,%eax
	movb	$43,(%edx,%eax,1)
	jmp	Lj3288
Lj3285:
	movl	-12(%ebp),%edx
	movl	-40(%ebp),%eax
	subl	$2,%eax
	movzbl	%al,%eax
	movb	$45,(%edx,%eax,1)
	movl	-44(%ebp),%eax
	negl	%eax
	movl	%eax,-44(%ebp)
Lj3288:
	movl	-44(%ebp),%eax
	cltd
	movl	$10,%ecx
	idivl	%ecx
	addl	$48,%edx
	movl	-12(%ebp),%eax
	movzbl	-40(%ebp),%ecx
	movb	%dl,(%eax,%ecx,1)
	decl	-40(%ebp)
	movl	-44(%ebp),%ecx
	movl	$1717986919,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	addl	$48,%edx
	movl	-12(%ebp),%ecx
	movzbl	-40(%ebp),%eax
	movb	%dl,(%ecx,%eax,1)
	subl	$2,-40(%ebp)
	movl	-12(%ebp),%edx
	movzbl	-40(%ebp),%eax
	movb	$69,(%edx,%eax,1)
	decl	-40(%ebp)
Lj3276:
	jmp	Lj3300
	.balign 4,0x90
Lj3299:
	movl	-12(%ebp),%edx
	movzbl	-40(%ebp),%eax
	movb	$48,(%edx,%eax,1)
	decl	-40(%ebp)
	incl	-60(%ebp)
Lj3300:
	movl	-60(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3299
	jmp	Lj3301
Lj3301:
	movl	-52(%ebp),%ecx
	movl	-60(%ebp),%eax
	incl	%eax
	movl	%eax,-36(%ebp)
	cmpl	-36(%ebp),%ecx
	jl	Lj3305
	decl	-36(%ebp)
	.balign 4,0x90
Lj3306:
	incl	-36(%ebp)
	decl	-64(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj3307
	jmp	Lj3308
Lj3307:
	movl	-12(%ebp),%eax
	movzbl	-40(%ebp),%edx
	movb	$46,(%eax,%edx,1)
	decl	-40(%ebp)
Lj3308:
	movl	-12(%ebp),%edx
	movzbl	-40(%ebp),%ebx
	movl	-36(%ebp),%eax
	movb	-32(%ebp,%eax,1),%al
	movb	%al,(%edx,%ebx,1)
	decl	-40(%ebp)
	cmpl	-36(%ebp),%ecx
	jg	Lj3306
Lj3305:
	movl	-56(%ebp),%eax
	cmpl	$1,%eax
	je	Lj3313
	jmp	Lj3314
Lj3313:
	movl	-12(%ebp),%eax
	movzbl	-40(%ebp),%edx
	movb	$45,(%eax,%edx,1)
	decl	-40(%ebp)
Lj3314:
	jmp	Lj3318
	.balign 4,0x90
Lj3317:
	movl	-12(%ebp),%eax
	movzbl	-40(%ebp),%edx
	movb	$32,(%eax,%edx,1)
	decl	-40(%ebp)
Lj3318:
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3317
	jmp	Lj3319
Lj3319:
	movl	-76(%ebp),%ebx
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	fpc_chararray_sint
fpc_chararray_sint:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$528,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-268(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_INT_STR$LONGINT$OPENSTRING
	movzbl	-268(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj3330
	jmp	Lj3331
Lj3330:
	leal	-268(%ebp),%eax
	pushl	%eax
	movzbl	-268(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-528(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-528(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
Lj3331:
	movl	8(%ebp),%eax
	incl	%eax
	movzbl	-268(%ebp),%edx
	cmpl	%edx,%eax
	jg	Lj3344
	jmp	Lj3345
Lj3344:
	movzbl	-268(%ebp),%eax
	movl	%eax,-272(%ebp)
	jmp	Lj3348
Lj3345:
	movl	8(%ebp),%eax
	incl	%eax
	movl	%eax,-272(%ebp)
Lj3348:
	movl	-12(%ebp),%edx
	movl	-272(%ebp),%ecx
	leal	-267(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_chararray_uint
fpc_chararray_uint:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$528,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-268(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_INT_STR$LONGWORD$OPENSTRING
	movzbl	-268(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj3365
	jmp	Lj3366
Lj3365:
	leal	-268(%ebp),%eax
	pushl	%eax
	movzbl	-268(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-528(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-528(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
Lj3366:
	movl	8(%ebp),%eax
	incl	%eax
	movzbl	-268(%ebp),%edx
	cmpl	%edx,%eax
	jg	Lj3379
	jmp	Lj3380
Lj3379:
	movzbl	-268(%ebp),%eax
	movl	%eax,-272(%ebp)
	jmp	Lj3383
Lj3380:
	movl	8(%ebp),%eax
	incl	%eax
	movl	%eax,-272(%ebp)
Lj3383:
	movl	-12(%ebp),%edx
	movl	-272(%ebp),%ecx
	leal	-267(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_chararray_qword
fpc_chararray_qword:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$528,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	SYSTEM_INT_STR$QWORD$OPENSTRING
	movzbl	-268(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj3400
	jmp	Lj3401
Lj3400:
	leal	-268(%ebp),%eax
	pushl	%eax
	movzbl	-268(%ebp),%eax
	movl	-4(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-528(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-528(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
Lj3401:
	movl	-12(%ebp),%eax
	incl	%eax
	movzbl	-268(%ebp),%edx
	cmpl	%edx,%eax
	jg	Lj3414
	jmp	Lj3415
Lj3414:
	movzbl	-268(%ebp),%eax
	movl	%eax,-272(%ebp)
	jmp	Lj3418
Lj3415:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-272(%ebp)
Lj3418:
	movl	-8(%ebp),%edx
	movl	-272(%ebp),%ecx
	leal	-267(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_chararray_int64
fpc_chararray_int64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$528,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	SYSTEM_INT_STR$INT64$OPENSTRING
	movzbl	-268(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj3435
	jmp	Lj3436
Lj3435:
	leal	-268(%ebp),%eax
	pushl	%eax
	movzbl	-268(%ebp),%eax
	movl	-4(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-528(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-528(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
Lj3436:
	movl	-12(%ebp),%eax
	incl	%eax
	movzbl	-268(%ebp),%edx
	cmpl	%edx,%eax
	jg	Lj3449
	jmp	Lj3450
Lj3449:
	movzbl	-268(%ebp),%eax
	movl	%eax,-272(%ebp)
	jmp	Lj3453
Lj3450:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-272(%ebp)
Lj3453:
	movl	-8(%ebp),%edx
	movl	-272(%ebp),%ecx
	leal	-267(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_chararray_float
fpc_chararray_float:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movzwl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	16(%ebp)
	leal	-268(%ebp),%eax
	pushl	%eax
	pushl	$255
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_STR_REAL$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING
	movl	8(%ebp),%eax
	incl	%eax
	movzbl	-268(%ebp),%edx
	cmpl	%edx,%eax
	jg	Lj3476
	jmp	Lj3477
Lj3476:
	movzbl	-268(%ebp),%eax
	movl	%eax,-272(%ebp)
	jmp	Lj3480
Lj3477:
	movl	8(%ebp),%eax
	incl	%eax
	movl	%eax,-272(%ebp)
Lj3480:
	movl	12(%ebp),%edx
	movl	-272(%ebp),%ecx
	leal	-267(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret	$20

.text
	.balign 4,0x90
.globl	fpc_chararray_enum
fpc_chararray_enum:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	16(%ebp)
	leal	-268(%ebp),%eax
	pushl	%eax
	pushl	$255
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_SHORTSTR_ENUM
	movl	8(%ebp),%eax
	incl	%eax
	movzbl	-268(%ebp),%edx
	cmpl	%edx,%eax
	jg	Lj3503
	jmp	Lj3504
Lj3503:
	movzbl	-268(%ebp),%eax
	movl	%eax,-272(%ebp)
	jmp	Lj3507
Lj3504:
	movl	8(%ebp),%eax
	incl	%eax
	movl	%eax,-272(%ebp)
Lj3507:
	movl	12(%ebp),%edx
	movl	-272(%ebp),%ecx
	leal	-267(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	fpc_chararray_bool
fpc_chararray_bool:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-8(%ebp),%edx
	movb	-4(%ebp),%al
	call	FPC_SHORTSTR_BOOL
	movl	8(%ebp),%eax
	incl	%eax
	movzbl	-268(%ebp),%edx
	cmpl	%edx,%eax
	jg	Lj3526
	jmp	Lj3527
Lj3526:
	movzbl	-268(%ebp),%eax
	movl	%eax,-272(%ebp)
	jmp	Lj3530
Lj3527:
	movl	8(%ebp),%eax
	incl	%eax
	movl	%eax,-272(%ebp)
Lj3530:
	movl	-12(%ebp),%edx
	movl	-272(%ebp),%ecx
	leal	-267(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_chararray_currency
fpc_chararray_currency:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_shortstr_currency
	movl	8(%ebp),%eax
	incl	%eax
	movzbl	-268(%ebp),%edx
	cmpl	%edx,%eax
	jg	Lj3551
	jmp	Lj3552
Lj3551:
	movzbl	-268(%ebp),%eax
	movl	%eax,-272(%ebp)
	jmp	Lj3555
Lj3552:
	movl	8(%ebp),%eax
	incl	%eax
	movl	%eax,-272(%ebp)
Lj3555:
	movl	-12(%ebp),%edx
	movl	-272(%ebp),%ecx
	leal	-267(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret	$12

.text
	.balign 4,0x90
SYSTEM_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$1,-20(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
	movl	-12(%ebp),%eax
	movb	$10,(%eax)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	je	Lj3572
	jmp	Lj3573
Lj3572:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj3564
Lj3573:
	jmp	Lj3577
	.balign 4,0x90
Lj3576:
	incl	-20(%ebp)
Lj3577:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-20(%ebp),%eax
	jge	Lj3579
	jmp	Lj3578
Lj3579:
	movl	-4(%ebp),%edx
	movzbl	-20(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	cmpl	$9,%eax
	je	Lj3580
	cmpl	$32,%eax
	je	Lj3580
Lj3580:
	je	Lj3576
	jmp	Lj3578
Lj3578:
	movl	-4(%ebp),%eax
	movzbl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$43,%al
	jb	Lj3582
	subb	$43,%al
	je	Lj3584
	subb	$2,%al
	je	Lj3583
	jmp	Lj3582
Lj3583:
	movl	-8(%ebp),%eax
	movb	$1,(%eax)
	incl	-20(%ebp)
	jmp	Lj3581
Lj3584:
	incl	-20(%ebp)
	jmp	Lj3581
Lj3582:
Lj3581:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-20(%ebp),%eax
	jge	Lj3587
	jmp	Lj3588
Lj3587:
	movl	-4(%ebp),%eax
	movzbl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$36,%al
	jb	Lj3590
	subb	$36,%al
	je	Lj3591
	decb	%al
	je	Lj3592
	decb	%al
	je	Lj3593
	subb	$10,%al
	je	Lj3594
	subb	$40,%al
	je	Lj3591
	subb	$32,%al
	je	Lj3591
	jmp	Lj3590
Lj3591:
	movl	-12(%ebp),%eax
	movb	$16,(%eax)
	incl	-20(%ebp)
	jmp	Lj3589
Lj3592:
	movl	-12(%ebp),%eax
	movb	$2,(%eax)
	incl	-20(%ebp)
	jmp	Lj3589
Lj3593:
	movl	-12(%ebp),%eax
	movb	$8,(%eax)
	incl	-20(%ebp)
	jmp	Lj3589
Lj3594:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj3603
	jmp	Lj3602
Lj3603:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movzbl	%al,%eax
	movzbl	(%edx,%eax,1),%eax
	cmpl	$88,%eax
	je	Lj3604
	cmpl	$120,%eax
	je	Lj3604
Lj3604:
	je	Lj3601
	jmp	Lj3602
Lj3601:
	addl	$2,-20(%ebp)
	movl	-12(%ebp),%eax
	movb	$16,(%eax)
Lj3602:
	jmp	Lj3589
Lj3590:
Lj3589:
Lj3588:
	jmp	Lj3608
	.balign 4,0x90
Lj3607:
	incl	-20(%ebp)
Lj3608:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj3610
	jmp	Lj3609
Lj3610:
	movl	-4(%ebp),%edx
	movzbl	-20(%ebp),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$48,%al
	je	Lj3607
	jmp	Lj3609
Lj3609:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj3564:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_sint_shortstr
fpc_val_sint_shortstr:
.globl	FPC_VAL_SINT_SHORTSTR
FPC_VAL_SINT_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$35,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-33(%ebp),%ecx
	leal	-35(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$LONGINT
	movl	-12(%ebp),%edx
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-12(%ebp),%eax
	cmpl	(%eax),%edx
	jl	Lj3627
	jmp	Lj3628
Lj3627:
	jmp	Lj3613
Lj3628:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj3629
	jmp	Lj3630
Lj3629:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	jg	Lj3633
	jmp	Lj3632
Lj3633:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	decl	%eax
	movzbl	%al,%eax
	movb	(%edx,%eax,1),%al
	cmpb	$48,%al
	je	Lj3631
	jmp	Lj3632
Lj3631:
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
Lj3632:
	jmp	Lj3613
Lj3630:
	movzbl	-33(%ebp),%ecx
	movl	$-1,%eax
	xorl	%edx,%edx
	divl	%ecx
	movl	%eax,-28(%ebp)
	movzbl	-33(%ebp),%eax
	cmpl	$10,%eax
	je	Lj3638
	jmp	Lj3639
Lj3638:
	movzbl	-35(%ebp),%eax
	addl	$2147483647,%eax
	movl	%eax,-32(%ebp)
	jmp	Lj3644
Lj3639:
	movl	$-1,-32(%ebp)
Lj3644:
	jmp	Lj3648
	.balign 4,0x90
Lj3647:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj3655
	subb	$48,%al
	jb	Lj3651
	subb	$9,%al
	jbe	Lj3652
	subb	$8,%al
	jb	Lj3651
	subb	$5,%al
	jbe	Lj3653
	subb	$27,%al
	jb	Lj3651
	subb	$5,%al
	jbe	Lj3654
	jmp	Lj3651
Lj3652:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	movb	%al,-34(%ebp)
	jmp	Lj3650
Lj3653:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$55,%eax
	movb	%al,-34(%ebp)
	jmp	Lj3650
Lj3654:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$87,%eax
	movb	%al,-34(%ebp)
	jmp	Lj3650
Lj3655:
	jmp	Lj3649
	jmp	Lj3650
Lj3651:
	movb	$16,-34(%ebp)
Lj3650:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	movzbl	-33(%ebp),%eax
	mull	-20(%ebp)
	movl	%eax,-20(%ebp)
	movb	-34(%ebp),%al
	cmpb	-33(%ebp),%al
	jae	Lj3668
	jmp	Lj3671
Lj3671:
	movzbl	-34(%ebp),%edx
	movl	-32(%ebp),%eax
	subl	%edx,%eax
	cmpl	-20(%ebp),%eax
	jb	Lj3668
	jmp	Lj3670
Lj3670:
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	ja	Lj3668
	jmp	Lj3669
Lj3668:
	movl	$0,-16(%ebp)
	jmp	Lj3613
Lj3669:
	movzbl	-34(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	incl	(%eax)
Lj3648:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-12(%ebp),%eax
	cmpl	(%eax),%edx
	jge	Lj3647
	jmp	Lj3649
Lj3649:
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpb	$0,-35(%ebp)
	jne	Lj3680
	jmp	Lj3681
Lj3680:
	movl	-16(%ebp),%eax
	negl	%eax
	movl	%eax,-16(%ebp)
Lj3681:
	movb	-35(%ebp),%al
	testb	%al,%al
	je	Lj3686
	jmp	Lj3685
Lj3686:
	movzbl	-33(%ebp),%eax
	cmpl	$10,%eax
	jne	Lj3684
	jmp	Lj3685
Lj3684:
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj3688
	decl	%eax
	je	Lj3689
	decl	%eax
	je	Lj3690
	jmp	Lj3688
Lj3689:
	movsbl	-16(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj3687
Lj3690:
	movswl	-16(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj3687
Lj3688:
Lj3687:
Lj3685:
Lj3613:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_uint_shortstr
fpc_val_uint_shortstr:
.globl	FPC_VAL_UINT_SHORTSTR
FPC_VAL_UINT_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$19,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	leal	-17(%ebp),%ecx
	leal	-19(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$LONGINT
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	cmpb	$0,-19(%ebp)
	jne	Lj3707
	jmp	Lj3709
Lj3709:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jl	Lj3707
	jmp	Lj3708
Lj3707:
	jmp	Lj3695
Lj3708:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj3710
	jmp	Lj3711
Lj3710:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	jg	Lj3714
	jmp	Lj3713
Lj3714:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	decl	%eax
	movzbl	%al,%eax
	movb	(%edx,%eax,1),%al
	cmpb	$48,%al
	je	Lj3712
	jmp	Lj3713
Lj3712:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
Lj3713:
	jmp	Lj3695
Lj3711:
	jmp	Lj3718
	.balign 4,0x90
Lj3717:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj3725
	subb	$48,%al
	jb	Lj3721
	subb	$9,%al
	jbe	Lj3722
	subb	$8,%al
	jb	Lj3721
	subb	$5,%al
	jbe	Lj3723
	subb	$27,%al
	jb	Lj3721
	subb	$5,%al
	jbe	Lj3724
	jmp	Lj3721
Lj3722:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	movb	%al,-18(%ebp)
	jmp	Lj3720
Lj3723:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$55,%eax
	movb	%al,-18(%ebp)
	jmp	Lj3720
Lj3724:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$87,%eax
	movb	%al,-18(%ebp)
	jmp	Lj3720
Lj3725:
	jmp	Lj3719
	jmp	Lj3720
Lj3721:
	movb	$16,-18(%ebp)
Lj3720:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movb	-18(%ebp),%al
	cmpb	-17(%ebp),%al
	jae	Lj3736
	jmp	Lj3738
Lj3738:
	movzbl	-18(%ebp),%eax
	movl	$-1,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movzbl	-17(%ebp),%ecx
	xorl	%edx,%edx
	divl	%ecx
	cmpl	-16(%ebp),%eax
	jb	Lj3736
	jmp	Lj3737
Lj3736:
	movl	$0,-12(%ebp)
	jmp	Lj3695
Lj3737:
	movzbl	-17(%ebp),%eax
	mull	-12(%ebp)
	movzbl	-18(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
Lj3718:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jge	Lj3717
	jmp	Lj3719
Lj3719:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
Lj3695:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_int64_shortstr
fpc_val_int64_shortstr:
.globl	FPC_VAL_INT64_SHORTSTR
FPC_VAL_INT64_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$58,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-28(%ebp)
	leal	-57(%ebp),%ecx
	leal	-58(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$LONGINT
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	cmpl	(%eax),%edx
	jl	Lj3759
	jmp	Lj3760
Lj3759:
	jmp	Lj3745
Lj3760:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj3761
	jmp	Lj3762
Lj3761:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	jg	Lj3765
	jmp	Lj3764
Lj3765:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	decl	%eax
	movzbl	%al,%eax
	movb	(%edx,%eax,1),%al
	cmpb	$48,%al
	je	Lj3763
	jmp	Lj3764
Lj3763:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
Lj3764:
	jmp	Lj3745
Lj3762:
	movzbl	-57(%ebp),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	pushl	$-1
	pushl	$-1
	call	fpc_div_qword
	movl	%eax,-48(%ebp)
	movl	%edx,-44(%ebp)
	movzbl	-57(%ebp),%eax
	cmpl	$10,%eax
	je	Lj3774
	jmp	Lj3775
Lj3774:
	movzbl	-58(%ebp),%edx
	movl	$0,%eax
	addl	$-1,%edx
	adcl	$2147483647,%eax
	movl	%edx,-56(%ebp)
	movl	%eax,-52(%ebp)
	jmp	Lj3780
Lj3775:
	movl	$-1,-56(%ebp)
	movl	$-1,-52(%ebp)
Lj3780:
	jmp	Lj3784
	.balign 4,0x90
Lj3783:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj3791
	subb	$48,%al
	jb	Lj3787
	subb	$9,%al
	jbe	Lj3788
	subb	$8,%al
	jb	Lj3787
	subb	$5,%al
	jbe	Lj3789
	subb	$27,%al
	jb	Lj3787
	subb	$5,%al
	jbe	Lj3790
	jmp	Lj3787
Lj3788:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%edx
	subl	$48,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-24(%ebp)
	movl	%eax,-20(%ebp)
	jmp	Lj3786
Lj3789:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%edx
	subl	$55,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-24(%ebp)
	movl	%eax,-20(%ebp)
	jmp	Lj3786
Lj3790:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%edx
	subl	$87,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-24(%ebp)
	movl	%eax,-20(%ebp)
	jmp	Lj3786
Lj3791:
	jmp	Lj3785
	jmp	Lj3786
Lj3787:
	movl	$16,-24(%ebp)
	movl	$0,-20(%ebp)
Lj3786:
	movl	-32(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-36(%ebp)
	pushl	-28(%ebp)
	pushl	-32(%ebp)
	movzbl	-57(%ebp),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	movl	$0,%eax
	call	fpc_mul_qword
	movl	%eax,-32(%ebp)
	movl	%edx,-28(%ebp)
	movzbl	-57(%ebp),%eax
	movl	$0,%edx
	cmpl	-20(%ebp),%edx
	jb	Lj3810
	ja	Lj3813
	cmpl	-24(%ebp),%eax
	jbe	Lj3810
	jmp	Lj3813
	jmp	Lj3813
Lj3813:
	movl	-56(%ebp),%edx
	movl	-52(%ebp),%eax
	subl	-24(%ebp),%edx
	sbbl	-20(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jb	Lj3810
	ja	Lj3812
	cmpl	-32(%ebp),%edx
	jb	Lj3810
	jmp	Lj3812
	jmp	Lj3812
Lj3812:
	movl	-40(%ebp),%eax
	movl	-36(%ebp),%edx
	cmpl	-44(%ebp),%edx
	ja	Lj3810
	jb	Lj3811
	cmpl	-48(%ebp),%eax
	ja	Lj3810
	jmp	Lj3811
	jmp	Lj3811
Lj3810:
	movl	$0,-16(%ebp)
	movl	$0,-12(%ebp)
	jmp	Lj3745
Lj3811:
	movl	-32(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	-24(%ebp),%eax
	adcl	-20(%ebp),%edx
	movl	%eax,-32(%ebp)
	movl	%edx,-28(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
Lj3784:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	cmpl	(%eax),%edx
	jge	Lj3783
	jmp	Lj3785
Lj3785:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	-32(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-12(%ebp)
	cmpb	$0,-58(%ebp)
	jne	Lj3822
	jmp	Lj3823
Lj3822:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
Lj3823:
Lj3745:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_qword_shortstr
fpc_val_qword_shortstr:
.globl	FPC_VAL_QWORD_SHORTSTR
FPC_VAL_QWORD_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$34,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-12(%ebp)
	leal	-33(%ebp),%ecx
	leal	-34(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$LONGINT
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	cmpb	$0,-34(%ebp)
	jne	Lj3838
	jmp	Lj3840
Lj3840:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jl	Lj3838
	jmp	Lj3839
Lj3838:
	jmp	Lj3826
Lj3839:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj3841
	jmp	Lj3842
Lj3841:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	jg	Lj3845
	jmp	Lj3844
Lj3845:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	decl	%eax
	movzbl	%al,%eax
	movb	(%edx,%eax,1),%al
	cmpb	$48,%al
	je	Lj3843
	jmp	Lj3844
Lj3843:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
Lj3844:
	jmp	Lj3826
Lj3842:
	jmp	Lj3849
	.balign 4,0x90
Lj3848:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj3856
	subb	$48,%al
	jb	Lj3852
	subb	$9,%al
	jbe	Lj3853
	subb	$8,%al
	jb	Lj3852
	subb	$5,%al
	jbe	Lj3854
	subb	$27,%al
	jb	Lj3852
	subb	$5,%al
	jbe	Lj3855
	jmp	Lj3852
Lj3853:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%edx
	subl	$48,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-24(%ebp)
	movl	%eax,-20(%ebp)
	jmp	Lj3851
Lj3854:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%edx
	subl	$55,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-24(%ebp)
	movl	%eax,-20(%ebp)
	jmp	Lj3851
Lj3855:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%edx
	subl	$87,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-24(%ebp)
	movl	%eax,-20(%ebp)
	jmp	Lj3851
Lj3856:
	jmp	Lj3850
	jmp	Lj3851
Lj3852:
	movl	$16,-24(%ebp)
	movl	$0,-20(%ebp)
Lj3851:
	movl	-16(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-28(%ebp)
	movzbl	-33(%ebp),%edx
	movl	$0,%eax
	cmpl	-20(%ebp),%eax
	jb	Lj3867
	ja	Lj3869
	cmpl	-24(%ebp),%edx
	jbe	Lj3867
	jmp	Lj3869
	jmp	Lj3869
Lj3869:
	movzbl	-33(%ebp),%edx
	movl	$0,%eax
	pushl	%eax
	pushl	%edx
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	$-1,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	$-1,%edx
	sbbl	%ecx,%edx
	movl	%edx,%ecx
	pushl	%ecx
	pushl	%eax
	call	fpc_div_qword
	cmpl	-28(%ebp),%edx
	jb	Lj3867
	ja	Lj3868
	cmpl	-32(%ebp),%eax
	jb	Lj3867
	jmp	Lj3868
	jmp	Lj3868
Lj3867:
	movl	$0,-16(%ebp)
	movl	$0,-12(%ebp)
	jmp	Lj3826
Lj3868:
	pushl	-12(%ebp)
	pushl	-16(%ebp)
	movzbl	-33(%ebp),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	movl	$0,%eax
	call	fpc_mul_qword
	addl	-24(%ebp),%eax
	adcl	-20(%ebp),%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
Lj3849:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jge	Lj3848
	jmp	Lj3850
Lj3850:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
Lj3826:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_real_shortstr
fpc_val_real_shortstr:
.globl	FPC_VAL_REAL_SHORTSTR
FPC_VAL_REAL_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$76,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fldz
	fstpt	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	$1,(%eax)
	movl	$0,-60(%ebp)
	movl	$0,-64(%ebp)
	fld1
	fstpt	-44(%ebp)
	movb	$0,-69(%ebp)
	fld1
	fstpt	-56(%ebp)
	jmp	Lj3903
	.balign 4,0x90
Lj3902:
	movl	-8(%ebp),%eax
	incl	(%eax)
Lj3903:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	cmpl	(%eax),%edx
	jge	Lj3905
	jmp	Lj3904
Lj3905:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	cmpl	$9,%eax
	je	Lj3906
	cmpl	$32,%eax
	je	Lj3906
Lj3906:
	je	Lj3902
	jmp	Lj3904
Lj3904:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jge	Lj3907
	jmp	Lj3908
Lj3907:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$43,%al
	jb	Lj3910
	subb	$43,%al
	je	Lj3911
	subb	$2,%al
	je	Lj3912
	jmp	Lj3910
Lj3911:
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj3909
Lj3912:
	movl	_$SYSTEM$_Ld21,%eax
	movl	%eax,-56(%ebp)
	movl	_$SYSTEM$_Ld21+4,%eax
	movl	%eax,-52(%ebp)
	movw	_$SYSTEM$_Ld21+8,%ax
	movw	%ax,-48(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj3909
Lj3910:
Lj3909:
Lj3908:
	jmp	Lj3916
	.balign 4,0x90
Lj3915:
	movzbl	-69(%ebp),%eax
	orl	$1,%eax
	movb	%al,-69(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	movl	%eax,-76(%ebp)
	fildl	-76(%ebp)
	fldt	_$SYSTEM$_Ld12
	fldt	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpt	-20(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
Lj3916:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	cmpl	(%eax),%edx
	jge	Lj3922
	jmp	Lj3917
Lj3922:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj3923
Lj3923:
	jc	Lj3915
	jmp	Lj3917
Lj3917:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	cmpl	(%eax),%edx
	jge	Lj3926
	jmp	Lj3925
Lj3926:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$46,%al
	je	Lj3924
	jmp	Lj3925
Lj3924:
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj3928
	.balign 4,0x90
Lj3927:
	movzbl	-69(%ebp),%eax
	orl	$2,%eax
	movb	%al,-69(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	movl	%eax,-76(%ebp)
	fildl	-76(%ebp)
	fldt	_$SYSTEM$_Ld12
	fldt	-20(%ebp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpt	-20(%ebp)
	incl	-64(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
Lj3928:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	cmpl	(%eax),%edx
	jge	Lj3934
	jmp	Lj3929
Lj3934:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj3935
Lj3935:
	jc	Lj3927
	jmp	Lj3929
Lj3929:
Lj3925:
	movzbl	-69(%ebp),%eax
	testl	%eax,%eax
	je	Lj3936
	jmp	Lj3937
Lj3936:
	fldz
	fstpt	-20(%ebp)
	jmp	Lj3886
Lj3937:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jge	Lj3942
	jmp	Lj3941
Lj3942:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	cmpl	$69,%eax
	je	Lj3943
	cmpl	$101,%eax
	je	Lj3943
Lj3943:
	je	Lj3940
	jmp	Lj3941
Lj3940:
	movl	-8(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jge	Lj3944
	jmp	Lj3945
Lj3944:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$43,%al
	je	Lj3946
	jmp	Lj3947
Lj3946:
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj3948
Lj3947:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$45,%al
	je	Lj3949
	jmp	Lj3950
Lj3949:
	movl	_$SYSTEM$_Ld21,%eax
	movl	%eax,-44(%ebp)
	movl	_$SYSTEM$_Ld21+4,%eax
	movl	%eax,-40(%ebp)
	movw	_$SYSTEM$_Ld21+8,%ax
	movw	%ax,-36(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
Lj3950:
Lj3948:
Lj3945:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jl	Lj3953
	jmp	Lj3955
Lj3955:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj3956
Lj3956:
	jnc	Lj3953
	jmp	Lj3954
Lj3953:
	fldz
	fstpt	-20(%ebp)
	jmp	Lj3886
Lj3954:
	jmp	Lj3960
	.balign 4,0x90
Lj3959:
	movl	-60(%ebp),%eax
	imull	$10,%eax
	movl	%eax,-60(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%edx
	movl	-60(%ebp),%eax
	addl	%eax,%edx
	subl	$48,%edx
	movl	%edx,-60(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
Lj3960:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	cmpl	(%eax),%edx
	jge	Lj3966
	jmp	Lj3961
Lj3966:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj3967
Lj3967:
	jc	Lj3959
	jmp	Lj3961
Lj3961:
Lj3941:
	fldz
	fldt	-44(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj3968
	jmp	Lj3969
Lj3968:
	movl	-64(%ebp),%eax
	subl	%eax,-60(%ebp)
	movl	-60(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3970
	jmp	Lj3971
Lj3970:
	movl	_$SYSTEM$_Ld21,%eax
	movl	%eax,-44(%ebp)
	movl	_$SYSTEM$_Ld21+4,%eax
	movl	%eax,-40(%ebp)
	movw	_$SYSTEM$_Ld21+8,%ax
	movw	%ax,-36(%ebp)
	movl	-60(%ebp),%eax
	negl	%eax
	movl	%eax,-60(%ebp)
Lj3971:
	jmp	Lj3976
Lj3969:
	movl	-64(%ebp),%eax
	addl	%eax,-60(%ebp)
Lj3976:
	fldt	-56(%ebp)
	fldt	-20(%ebp)
	fmulp	%st,%st(1)
	fstpt	-20(%ebp)
	fld1
	fstpt	-32(%ebp)
	movl	-60(%ebp),%eax
	cmpl	$4930,%eax
	jg	Lj3981
	jmp	Lj3982
Lj3981:
	movl	$1,-68(%ebp)
	decl	-68(%ebp)
	.balign 4,0x90
Lj3985:
	incl	-68(%ebp)
	fldt	_$SYSTEM$_Ld12
	fldt	-32(%ebp)
	fmulp	%st,%st(1)
	fstpt	-32(%ebp)
	cmpl	$4930,-68(%ebp)
	jl	Lj3985
	fldz
	fldt	-44(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj3988
	jmp	Lj3989
Lj3988:
	fldt	-32(%ebp)
	fldt	-20(%ebp)
	fmulp	%st,%st(1)
	fstpt	-20(%ebp)
	jmp	Lj3992
Lj3989:
	fldt	-32(%ebp)
	fldt	-20(%ebp)
	fdivp	%st,%st(1)
	fstpt	-20(%ebp)
Lj3992:
	subl	$4930,-60(%ebp)
	fld1
	fstpt	-32(%ebp)
Lj3982:
	movl	-60(%ebp),%eax
	movl	$1,-68(%ebp)
	cmpl	-68(%ebp),%eax
	jl	Lj3998
	decl	-68(%ebp)
	.balign 4,0x90
Lj3999:
	incl	-68(%ebp)
	fldt	_$SYSTEM$_Ld12
	fldt	-32(%ebp)
	fmulp	%st,%st(1)
	fstpt	-32(%ebp)
	cmpl	-68(%ebp),%eax
	jg	Lj3999
Lj3998:
	fldz
	fldt	-44(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj4002
	jmp	Lj4003
Lj4002:
	fldt	-32(%ebp)
	fldt	-20(%ebp)
	fmulp	%st,%st(1)
	fstpt	-20(%ebp)
	jmp	Lj4006
Lj4003:
	fldt	-32(%ebp)
	fldt	-20(%ebp)
	fdivp	%st,%st(1)
	fstpt	-20(%ebp)
Lj4006:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jge	Lj4009
	jmp	Lj4010
Lj4009:
	fldz
	fstpt	-20(%ebp)
	jmp	Lj3886
Lj4010:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
Lj3886:
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_enum_shortstr
fpc_val_enum_shortstr:
.globl	FPC_VAL_ENUM_SHORTSTR
FPC_VAL_ENUM_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$805,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$1,-37(%ebp)
	movl	-12(%ebp),%eax
	movl	$1,(%eax)
	jmp	Lj4024
	.balign 4,0x90
Lj4023:
	incb	-37(%ebp)
Lj4024:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	cmpb	-37(%ebp),%al
	jae	Lj4026
	jmp	Lj4025
Lj4026:
	movl	-8(%ebp),%edx
	movzbl	-37(%ebp),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$32,%al
	je	Lj4023
	jmp	Lj4025
Lj4025:
	leal	-805(%ebp),%eax
	pushl	%eax
	movzbl	-37(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$255,%ecx
	call	fpc_shortstr_copy
	leal	-805(%ebp),%eax
	leal	-549(%ebp),%edx
	call	SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING
	leal	-549(%ebp),%ecx
	leal	-293(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	-4(%ebp),%eax
	leal	4(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	$1,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	.balign 4,0x90
Lj4051:
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,%eax
	shrl	$1,%eax
	movl	%eax,-28(%ebp)
	movl	-36(%ebp),%edx
	movl	-28(%ebp),%eax
	decl	%eax
	movl	4(%edx,%eax,8),%eax
	leal	-549(%ebp),%edx
	call	SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING
	leal	-549(%ebp),%ecx
	leal	-293(%ebp),%edx
	movl	%ebp,%eax
	call	SYSTEM_fpc_val_enum_shortstr$crcCF5712C8_STRING_COMPARE$SHORTSTRING$SHORTSTRING$$LONGINT
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4068
	jmp	Lj4069
Lj4068:
	movl	-28(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj4072
Lj4069:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj4073
	jmp	Lj4074
Lj4073:
	movl	-28(%ebp),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	jmp	Lj4077
Lj4074:
	jmp	Lj4053
Lj4077:
Lj4072:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	ja	Lj4078
	jmp	Lj4079
Lj4078:
	movzbl	-37(%ebp),%eax
	decl	%eax
	movl	-12(%ebp),%edx
	addl	%eax,(%edx)
	jmp	Lj4015
Lj4079:
	jmp	Lj4051
Lj4053:
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	-36(%ebp),%edx
	movl	-28(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,8),%eax
	movl	%eax,-16(%ebp)
Lj4015:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_fpc_val_enum_shortstr$crcCF5712C8_STRING_COMPARE$SHORTSTRING$SHORTSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-18(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	ja	Lj4086
	jmp	Lj4087
Lj4086:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-18(%ebp)
Lj4087:
	movb	$1,-17(%ebp)
	jmp	Lj4093
	.balign 4,0x90
Lj4092:
	movl	-4(%ebp),%eax
	movzbl	-17(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,-19(%ebp)
	movl	-8(%ebp),%edx
	movzbl	-17(%ebp),%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-20(%ebp)
	movb	-19(%ebp),%al
	cmpb	-20(%ebp),%al
	jne	Lj4099
	jmp	Lj4100
Lj4099:
	jmp	Lj4094
Lj4100:
	incb	-17(%ebp)
Lj4093:
	movb	-17(%ebp),%al
	cmpb	-18(%ebp),%al
	jbe	Lj4092
	jmp	Lj4094
Lj4094:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%edx
	movzbl	-17(%ebp),%eax
	cmpl	(%edx),%eax
	jg	Lj4101
	jmp	Lj4102
Lj4101:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movzbl	-17(%ebp),%edx
	movl	%edx,(%eax)
Lj4102:
	movb	-17(%ebp),%al
	cmpb	-18(%ebp),%al
	jbe	Lj4105
	jmp	Lj4106
Lj4105:
	movzbl	-19(%ebp),%eax
	movzbl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj4109
Lj4106:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-16(%ebp)
Lj4109:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_currency_shortstr
fpc_val_currency_shortstr:
.globl	FPC_VAL_CURRENCY_SHORTSTR
FPC_VAL_CURRENCY_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fldz
	fistpq	-16(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-8(%ebp),%eax
	movl	$1,(%eax)
	movl	$1,-40(%ebp)
	movl	$0,-36(%ebp)
	jmp	Lj4127
	.balign 4,0x90
Lj4126:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-44(%ebp),%eax
	jg	Lj4129
	jmp	Lj4130
Lj4129:
	jmp	Lj4112
	jmp	Lj4131
Lj4130:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	cmpl	$9,%eax
	je	Lj4134
	cmpl	$32,%eax
	je	Lj4134
Lj4134:
	je	Lj4132
	jmp	Lj4133
Lj4132:
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj4135
Lj4133:
	jmp	Lj4128
Lj4135:
Lj4131:
Lj4127:
	jmp	Lj4126
Lj4128:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$43,%al
	jb	Lj4137
	subb	$43,%al
	je	Lj4138
	subb	$2,%al
	je	Lj4139
	jmp	Lj4137
Lj4138:
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj4136
Lj4139:
	movl	$-1,-40(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj4136
Lj4137:
Lj4136:
	movb	$0,-45(%ebp)
	movl	$0,-28(%ebp)
	jmp	Lj4147
	.balign 4,0x90
Lj4146:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$46,%al
	jb	Lj4150
	subb	$46,%al
	je	Lj4152
	subb	$2,%al
	jb	Lj4150
	subb	$9,%al
	jbe	Lj4151
	jmp	Lj4150
Lj4151:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	movl	%eax,-32(%ebp)
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	cmpl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_INT64EDGE+4,%eax
	jl	Lj4155
	jg	Lj4157
	cmpl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_INT64EDGE,%edx
	jbe	Lj4155
	jmp	Lj4157
	jmp	Lj4157
Lj4157:
	pushl	$0
	pushl	$10
	movl	-32(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_MAXINT64,%ecx
	subl	%edx,%ecx
	movl	%ecx,%edx
	movl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_MAXINT64+4,%ecx
	sbbl	%eax,%ecx
	movl	%ecx,%eax
	pushl	%eax
	pushl	%edx
	call	fpc_div_int64
	cmpl	-20(%ebp),%edx
	jg	Lj4155
	jl	Lj4156
	cmpl	-24(%ebp),%eax
	jae	Lj4155
	jmp	Lj4156
	jmp	Lj4156
Lj4155:
	pushl	-20(%ebp)
	pushl	-24(%ebp)
	pushl	$0
	pushl	$10
	movl	$0,%eax
	call	fpc_mul_int64
	movl	-32(%ebp),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	addl	%ebx,%eax
	adcl	%ecx,%edx
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	incl	-28(%ebp)
	jmp	Lj4170
Lj4156:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj4171
	jmp	Lj4172
Lj4171:
	jmp	Lj4112
	jmp	Lj4173
Lj4172:
	movb	-45(%ebp),%al
	testb	%al,%al
	je	Lj4177
	jmp	Lj4175
Lj4177:
	movl	-32(%ebp),%eax
	cmpl	$5,%eax
	jge	Lj4176
	jmp	Lj4175
Lj4176:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_MAXINT64+4,%edx
	jl	Lj4174
	jg	Lj4175
	cmpl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_MAXINT64,%eax
	jb	Lj4174
	jmp	Lj4175
	jmp	Lj4175
Lj4174:
	addl	$1,-24(%ebp)
	adcl	$0,-20(%ebp)
Lj4175:
	movb	$1,-45(%ebp)
Lj4173:
Lj4170:
	jmp	Lj4149
Lj4152:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj4180
	jmp	Lj4181
Lj4180:
	movl	$1,-36(%ebp)
	movl	$0,-28(%ebp)
	jmp	Lj4186
Lj4181:
	jmp	Lj4112
Lj4186:
	jmp	Lj4149
Lj4150:
	jmp	Lj4148
Lj4149:
	movl	-8(%ebp),%eax
	incl	(%eax)
Lj4147:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-44(%ebp),%eax
	jle	Lj4146
	jmp	Lj4148
Lj4148:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj4189
	jmp	Lj4188
Lj4189:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj4187
	jmp	Lj4188
Lj4187:
	jmp	Lj4112
Lj4188:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4190
	jmp	Lj4191
Lj4190:
	movl	-28(%ebp),%eax
	movl	%eax,-36(%ebp)
Lj4191:
	movl	-36(%ebp),%edx
	movl	$4,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-44(%ebp),%eax
	jle	Lj4196
	jmp	Lj4197
Lj4196:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	cmpl	$69,%eax
	je	Lj4200
	cmpl	$101,%eax
	je	Lj4200
Lj4200:
	je	Lj4198
	jmp	Lj4199
Lj4198:
	movl	-8(%ebp),%eax
	incl	(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-44(%ebp),%eax
	jg	Lj4201
	jmp	Lj4202
Lj4201:
	jmp	Lj4112
Lj4202:
	movl	$1,-28(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$43,%al
	jb	Lj4206
	subb	$43,%al
	je	Lj4207
	subb	$2,%al
	je	Lj4208
	jmp	Lj4206
Lj4207:
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj4205
Lj4208:
	movl	$-1,-28(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj4205
Lj4206:
Lj4205:
	movl	$0,-32(%ebp)
	jmp	Lj4214
	.balign 4,0x90
Lj4213:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj4218
Lj4218:
	jc	Lj4216
	jmp	Lj4217
Lj4216:
	movl	-32(%ebp),%eax
	cmpl	$4951,%eax
	jg	Lj4219
	jmp	Lj4220
Lj4219:
	jmp	Lj4112
Lj4220:
	movl	-32(%ebp),%ecx
	imull	$10,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	addl	%eax,%ecx
	movl	%ecx,-32(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj4223
Lj4217:
	jmp	Lj4112
Lj4223:
Lj4214:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-44(%ebp),%eax
	jle	Lj4213
	jmp	Lj4215
Lj4215:
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%eax
	imull	%eax,%edx
	movl	-36(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-36(%ebp)
	jmp	Lj4226
Lj4199:
	jmp	Lj4112
Lj4226:
Lj4197:
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4227
	jmp	Lj4228
Lj4227:
	movl	-36(%ebp),%ebx
	movl	$1,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj4230
	decl	-28(%ebp)
	.balign 4,0x90
Lj4231:
	incl	-28(%ebp)
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	cmpl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_INT64EDGE2+4,%eax
	jl	Lj4232
	jg	Lj4233
	cmpl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_INT64EDGE2,%edx
	jbe	Lj4232
	jmp	Lj4233
	jmp	Lj4233
Lj4232:
	pushl	-20(%ebp)
	pushl	-24(%ebp)
	pushl	$0
	pushl	$10
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	jmp	Lj4242
Lj4233:
	jmp	Lj4112
Lj4242:
	cmpl	-28(%ebp),%ebx
	jg	Lj4231
Lj4230:
	jmp	Lj4243
Lj4228:
	movl	-36(%ebp),%ebx
	negl	%ebx
	movl	$1,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj4245
	decl	-28(%ebp)
	.balign 4,0x90
Lj4246:
	incl	-28(%ebp)
	movl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_MAXINT64,%edx
	movl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_MAXINT64+4,%eax
	subl	$5,%edx
	sbbl	$0,%eax
	cmpl	-20(%ebp),%eax
	jg	Lj4247
	jl	Lj4248
	cmpl	-24(%ebp),%edx
	jae	Lj4247
	jmp	Lj4248
	jmp	Lj4248
Lj4247:
	addl	$5,-24(%ebp)
	adcl	$0,-20(%ebp)
Lj4248:
	pushl	$0
	pushl	$10
	pushl	-20(%ebp)
	pushl	-24(%ebp)
	call	fpc_div_int64
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	cmpl	-28(%ebp),%ebx
	jg	Lj4246
Lj4245:
Lj4243:
	pushl	-20(%ebp)
	pushl	-24(%ebp)
	movl	-40(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	leal	-24(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-16(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
Lj4112:
	fildq	-16(%ebp)
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETSTRING$OPENSTRING$PCHAR$LONGINT
SYSTEM_SETSTRING$OPENSTRING$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj4269
	jmp	Lj4270
Lj4269:
	movl	-12(%ebp),%eax
	movl	%eax,8(%ebp)
Lj4270:
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_shortstr_setlength
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4279
	jmp	Lj4280
Lj4279:
	movl	-8(%ebp),%eax
	movl	8(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	1(%edx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj4280:
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$LONGINT
SYSTEM_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jg	Lj4293
	jmp	Lj4294
Lj4293:
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj4297
Lj4294:
	movl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj4297:
	movw	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj4307
	.balign 4,0x90
Lj4306:
	movl	-32(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-13(%ebp)
	movl	-36(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-14(%ebp)
	movb	-13(%ebp),%al
	cmpb	-14(%ebp),%al
	jne	Lj4313
	jmp	Lj4314
Lj4313:
	movzbl	-13(%ebp),%eax
	subl	$97,%eax
	cmpl	$26,%eax
	jb	Lj4317
Lj4317:
	jc	Lj4315
	jmp	Lj4316
Lj4315:
	subb	$32,-13(%ebp)
Lj4316:
	movzbl	-14(%ebp),%eax
	subl	$97,%eax
	cmpl	$26,%eax
	jb	Lj4320
Lj4320:
	jc	Lj4318
	jmp	Lj4319
Lj4318:
	subb	$32,-14(%ebp)
Lj4319:
	movb	-13(%ebp),%al
	cmpb	-14(%ebp),%al
	jne	Lj4321
	jmp	Lj4322
Lj4321:
	jmp	Lj4308
Lj4322:
Lj4314:
	incl	-32(%ebp)
	incl	-36(%ebp)
	incw	-16(%ebp)
Lj4307:
	movswl	-16(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj4306
	jmp	Lj4308
Lj4308:
	movswl	-16(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj4323
	jmp	Lj4324
Lj4323:
	movzbl	-13(%ebp),%edx
	movzbl	-14(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
	jmp	Lj4327
Lj4324:
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
Lj4327:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_div_qword
fpc_div_qword:
.globl	FPC_DIV_QWORD
FPC_DIV_QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-24(%ebp)
	movl	%edi,-28(%ebp)
	movl	20(%ebp),%ecx
	movl	16(%ebp),%ebx
	movl	%ecx,%eax
	orl	%ebx,%eax
	jnz	Lj4332
	movl	%ebp,%edx
	movl	$200,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
	jmp	Lj4333
Lj4332:
	movl	12(%ebp),%edx
	movl	8(%ebp),%eax
	testl	%ecx,%ecx
	jnz	Lj4334
	cmpl	%ebx,%edx
	jae	Lj4335
	divl	%ebx
	movl	%ecx,%edx
	jmp	Lj4333
Lj4335:
	movl	%eax,%ecx
	movl	%edx,%eax
	xorl	%edx,%edx
	divl	%ebx
	xchgl	%ecx,%eax
	divl	%ebx
	movl	%ecx,%edx
	jmp	Lj4333
Lj4334:
	movl	%ecx,%edi
	shrl	$1,%edx
	rcrl	$1,%eax
	rorl	$1,%edi
	rcrl	$1,%ebx
	bsrl	%ecx,%ecx
	shrdl	%cl,%edi,%ebx
	shrdl	%cl,%edx,%eax
	shrl	%cl,%edx
	roll	$1,%edi
	divl	%ebx
	movl	8(%ebp),%ebx
	movl	%eax,%ecx
	imull	%eax,%edi
	mull	16(%ebp)
	addl	%edi,%edx
	subl	%eax,%ebx
	movl	%ecx,%eax
	movl	12(%ebp),%ecx
	sbbl	%edx,%ecx
	sbbl	$0,%eax
	xorl	%edx,%edx
Lj4333:
	movl	-24(%ebp),%ebx
	movl	-28(%ebp),%edi
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	fpc_mod_qword
fpc_mod_qword:
.globl	FPC_MOD_QWORD
FPC_MOD_QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-24(%ebp)
	movl	%edi,-28(%ebp)
	movl	20(%ebp),%ecx
	movl	16(%ebp),%ebx
	movl	%ecx,%eax
	orl	%ebx,%eax
	jnz	Lj4338
	movl	%ebp,%edx
	movl	$200,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
	jmp	Lj4339
Lj4338:
	movl	12(%ebp),%edx
	movl	8(%ebp),%eax
	testl	%ecx,%ecx
	jnz	Lj4340
	cmpl	%ebx,%edx
	jae	Lj4341
	divl	%ebx
	movl	%edx,%eax
	movl	%ecx,%edx
	jmp	Lj4339
Lj4341:
	movl	%eax,%ecx
	movl	%edx,%eax
	xorl	%edx,%edx
	divl	%ebx
	movl	%ecx,%eax
	divl	%ebx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj4339
Lj4340:
	movl	%ecx,%edi
	shrl	$1,%edx
	rcrl	$1,%eax
	rorl	$1,%edi
	rcrl	$1,%ebx
	bsrl	%ecx,%ecx
	shrdl	%cl,%edi,%ebx
	shrdl	%cl,%edx,%eax
	shrl	%cl,%edx
	roll	$1,%edi
	divl	%ebx
	movl	8(%ebp),%ebx
	movl	%eax,%ecx
	imull	%eax,%edi
	mull	16(%ebp)
	addl	%edi,%edx
	subl	%eax,%ebx
	movl	12(%ebp),%ecx
	movl	16(%ebp),%eax
	sbbl	%edx,%ecx
	sbbl	%edx,%edx
	andl	%edx,%eax
	andl	20(%ebp),%edx
	addl	%ebx,%eax
	adcl	%ecx,%edx
Lj4339:
	movl	-24(%ebp),%ebx
	movl	-28(%ebp),%edi
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	fpc_mul_qword
fpc_mul_qword:
.globl	FPC_MUL_QWORD
FPC_MUL_QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movb	$0,-21(%ebp)
	movl	20(%ebp),%edx
	movl	12(%ebp),%ecx
	cmpl	$0,-4(%ebp)
	jnz	Lj4344
	orl	%ecx,%edx
	movl	8(%ebp),%edx
	movl	16(%ebp),%eax
	jnz	Lj4345
	mull	%edx
	jmp	Lj4346
Lj4345:
	imull	20(%ebp),%edx
	imull	%eax,%ecx
	addl	%edx,%ecx
	mull	8(%ebp)
	addl	%ecx,%edx
Lj4346:
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj4347
Lj4344:
	orl	%ecx,%ecx
	jz	Lj4348
	orl	%edx,%edx
	jnz	Lj4349
Lj4348:
	orl	%ecx,%edx
	movl	8(%ebp),%edi
	movl	16(%ebp),%esi
	jnz	Lj4350
	movl	%edi,%eax
	mull	%esi
	movl	%eax,%esi
	movl	%edx,%edi
	jmp	Lj4351
Lj4350:
	movl	20(%ebp),%eax
	mull	%edi
	movl	%eax,%edi
	jc	Lj4349
	movl	%esi,%eax
	mull	%ecx
	movl	%eax,%ecx
	jc	Lj4349
	addl	%edi,%ecx
	jc	Lj4349
	movl	8(%ebp),%eax
	mull	%esi
	movl	%eax,%esi
	movl	%edx,%edi
	addl	%ecx,%edi
	jc	Lj4349
Lj4351:
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	jmp	Lj4347
Lj4349:
	movb	$1,-21(%ebp)
Lj4347:
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	cmpb	$0,-21(%ebp)
	jne	Lj4356
	jmp	Lj4357
Lj4356:
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj4357:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret	$16

.text
	.balign 4,0x90
SYSTEM_COUNT_LEADING_ZEROS$QWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	$0,-8(%ebp)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.balign 4,0x90
Lj4368:
	incl	-12(%ebp)
	movl	$-2147483648,%eax
	movl	-12(%ebp),%ecx
	shrl	%cl,%eax
	movl	12(%ebp),%edx
	andl	%edx,%eax
	testl	%eax,%eax
	jne	Lj4369
	jmp	Lj4370
Lj4369:
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj4362
Lj4370:
	incl	-8(%ebp)
	cmpl	$31,-12(%ebp)
	jl	Lj4368
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.balign 4,0x90
Lj4375:
	incl	-12(%ebp)
	movl	$-2147483648,%eax
	movl	-12(%ebp),%ecx
	shrl	%cl,%eax
	movl	8(%ebp),%edx
	andl	%edx,%eax
	testl	%eax,%eax
	jne	Lj4376
	jmp	Lj4377
Lj4376:
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj4362
Lj4377:
	incl	-8(%ebp)
	cmpl	$31,-12(%ebp)
	jl	Lj4375
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj4362:
	movl	-4(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_div_int64
fpc_div_int64:
.globl	FPC_DIV_INT64
FPC_DIV_INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	16(%ebp),%edx
	movl	20(%ebp),%eax
	cmpl	$0,%eax
	jne	Lj4385
	cmpl	$0,%edx
	jne	Lj4385
	jmp	Lj4384
Lj4384:
	movl	%ebp,%edx
	movl	$200,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj4385:
	movb	$0,-9(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj4392
	jg	Lj4393
	cmpl	$0,%eax
	jb	Lj4392
	jmp	Lj4393
Lj4392:
	movb	-9(%ebp),%al
	testb	%al,%al
	seteb	-9(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj4398
Lj4393:
	movl	8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj4398:
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj4401
	jg	Lj4402
	cmpl	$0,%eax
	jb	Lj4401
	jmp	Lj4402
Lj4401:
	movb	-9(%ebp),%al
	testb	%al,%al
	seteb	-9(%ebp)
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	jmp	Lj4407
Lj4402:
	movl	16(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj4407:
	cmpb	$0,-9(%ebp)
	jne	Lj4410
	jmp	Lj4411
Lj4410:
	pushl	-24(%ebp)
	pushl	-28(%ebp)
	pushl	-16(%ebp)
	pushl	-20(%ebp)
	call	fpc_div_qword
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	jmp	Lj4418
Lj4411:
	pushl	-24(%ebp)
	pushl	-28(%ebp)
	pushl	-16(%ebp)
	pushl	-20(%ebp)
	call	fpc_div_qword
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
Lj4418:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	fpc_mod_int64
fpc_mod_int64:
.globl	FPC_MOD_INT64
FPC_MOD_INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	cmpl	$0,%edx
	jne	Lj4428
	cmpl	$0,%eax
	jne	Lj4428
	jmp	Lj4427
Lj4427:
	movl	%ebp,%edx
	movl	$200,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj4428:
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj4433
	jg	Lj4434
	cmpl	$0,%eax
	jb	Lj4433
	jmp	Lj4434
Lj4433:
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	jmp	Lj4437
Lj4434:
	movl	16(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj4437:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj4440
	jg	Lj4441
	cmpl	$0,%eax
	jb	Lj4440
	jmp	Lj4441
Lj4440:
	movb	$1,-9(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	jmp	Lj4446
Lj4441:
	movb	$0,-9(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj4446:
	pushl	-24(%ebp)
	pushl	-28(%ebp)
	pushl	-32(%ebp)
	pushl	-36(%ebp)
	call	fpc_mod_qword
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj4457
	jmp	Lj4458
Lj4457:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	jmp	Lj4461
Lj4458:
	movl	-20(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj4461:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	fpc_mul_int64
fpc_mul_int64:
.globl	FPC_MUL_INT64
FPC_MUL_INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-13(%ebp)
	movl	16(%ebp),%edx
	movl	20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj4468
	jg	Lj4469
	cmpl	$0,%edx
	jb	Lj4468
	jmp	Lj4469
Lj4468:
	movb	-13(%ebp),%al
	testb	%al,%al
	seteb	-13(%ebp)
	movl	16(%ebp),%edx
	movl	20(%ebp),%eax
	notl	%eax
	negl	%edx
	sbbl	$-1,%eax
	movl	%edx,-24(%ebp)
	movl	%eax,-20(%ebp)
	jmp	Lj4474
Lj4469:
	movl	16(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj4474:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj4477
	jg	Lj4478
	cmpl	$0,%eax
	jb	Lj4477
	jmp	Lj4478
Lj4477:
	movb	-13(%ebp),%al
	testb	%al,%al
	seteb	-13(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-32(%ebp)
	movl	%edx,-28(%ebp)
	jmp	Lj4483
Lj4478:
	movl	8(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj4483:
	pushl	-20(%ebp)
	pushl	-24(%ebp)
	pushl	-28(%ebp)
	pushl	-32(%ebp)
	movl	$0,%eax
	call	fpc_mul_qword
	movl	%eax,-40(%ebp)
	movl	%edx,-36(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj4498
	jmp	Lj4495
Lj4498:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	$0,%edx
	jne	Lj4499
	cmpl	$0,%eax
	jne	Lj4499
	jmp	Lj4500
Lj4499:
	movl	$-1,%eax
	jmp	Lj4501
Lj4500:
	movl	$0,%eax
Lj4501:
	testl	%eax,%eax
	jne	Lj4497
	jmp	Lj4495
Lj4497:
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jne	Lj4502
	cmpl	$0,%edx
	jne	Lj4502
	jmp	Lj4503
Lj4502:
	movl	$-1,%eax
	jmp	Lj4504
Lj4503:
	movl	$0,%eax
Lj4504:
	testl	%eax,%eax
	jne	Lj4496
	jmp	Lj4495
Lj4496:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	-36(%ebp),%edx
	ja	Lj4505
	jb	Lj4508
	cmpl	-40(%ebp),%eax
	ja	Lj4505
	jmp	Lj4508
	jmp	Lj4508
Lj4508:
	movl	-32(%ebp),%eax
	movl	-28(%ebp),%edx
	cmpl	-36(%ebp),%edx
	ja	Lj4505
	jb	Lj4507
	cmpl	-40(%ebp),%eax
	ja	Lj4505
	jmp	Lj4507
	jmp	Lj4507
Lj4507:
	movl	-40(%ebp),%edx
	movl	-36(%ebp),%eax
	xorl	%edx,%edx
	shrl	$31,%eax
	cmpl	$0,%edx
	jne	Lj4509
	cmpl	$0,%eax
	jne	Lj4509
	jmp	Lj4506
Lj4509:
	movl	-40(%ebp),%eax
	movl	-36(%ebp),%edx
	cmpl	$-2147483648,%edx
	jne	Lj4505
	cmpl	$0,%eax
	jne	Lj4505
	jmp	Lj4510
Lj4510:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj4505
	jmp	Lj4506
Lj4505:
	movl	$-1,%eax
	jmp	Lj4511
Lj4506:
	movl	$0,%eax
Lj4511:
	testl	%eax,%eax
	jne	Lj4494
	jmp	Lj4495
Lj4494:
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj4495:
	cmpb	$0,-13(%ebp)
	jne	Lj4516
	jmp	Lj4517
Lj4516:
	movl	-40(%ebp),%eax
	movl	-36(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj4520
Lj4517:
	movl	-40(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj4520:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
SYSTEM_TRANSLATEPLACEHOLDERCP$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	movw	%ax,-6(%ebp)
	movw	-4(%ebp),%ax
	subw	$1,%ax
	jbe	Lj4529
	jmp	Lj4528
Lj4529:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	movw	%ax,-6(%ebp)
	jmp	Lj4527
Lj4528:
Lj4527:
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%ebp),%edx
	leal	(%eax,%edx,1),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	leal	(%eax,%ecx,1),%eax
	movl	8(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_FPC_PCHAR_PCHAR_INTERN_CHARMOVE$PCHAR$LONGINT$PCHAR$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	12(%ebp),%eax
	leal	(%edx,%eax,1),%edx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	leal	(%eax,%ecx,1),%eax
	movl	8(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_FPC_SHORTSTR_ANSISTR_INTERN_CHARMOVE$SHORTSTRING$LONGINT$ANSISTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%ebp),%edx
	leal	(%eax,%edx,1),%edx
	movl	-4(%ebp),%eax
	movzbl	-8(%ebp),%ecx
	leal	(%eax,%ecx,1),%eax
	movl	8(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_NEWANSISTRING$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	addl	$13,%edx
	leal	-12(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4562
	jmp	Lj4563
Lj4562:
	movl	-12(%ebp),%eax
	movl	$1,4(%eax)
	movl	-12(%ebp),%eax
	movl	$0,8(%eax)
	movl	-12(%ebp),%edx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	movw	%ax,(%edx)
	movl	-12(%ebp),%eax
	movw	$1,2(%eax)
	addl	$12,-12(%ebp)
	movl	-12(%ebp),%eax
	movb	$0,(%eax)
Lj4563:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_incr_ref
fpc_ansistr_incr_ref:
.globl	FPC_ANSISTR_INCR_REF
FPC_ANSISTR_INCR_REF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj4578
	jmp	Lj4579
Lj4578:
	jmp	Lj4576
Lj4579:
	movl	-4(%ebp),%eax
	subl	$12,%eax
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jl	Lj4580
	jmp	Lj4581
Lj4580:
	jmp	Lj4576
Lj4581:
	movl	-4(%ebp),%eax
	subl	$12,%eax
	leal	4(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj4584
	jmp	Lj4585
Lj4584:
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj4586
Lj4585:
	movl	-8(%ebp),%eax
	call	SYSTEM_CPUINCLOCKED$LONGINT
Lj4586:
Lj4576:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_assign
fpc_ansistr_assign:
.globl	FPC_ANSISTR_ASSIGN
FPC_ANSISTR_ASSIGN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj4591
	jmp	Lj4592
Lj4591:
	jmp	Lj4589
Lj4592:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4593
	jmp	Lj4594
Lj4593:
	movl	-8(%ebp),%eax
	subl	$12,%eax
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jg	Lj4595
	jmp	Lj4596
Lj4595:
	movl	-8(%ebp),%eax
	subl	$12,%eax
	leal	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj4599
	jmp	Lj4600
Lj4599:
	movl	-12(%ebp),%eax
	incl	(%eax)
	jmp	Lj4601
Lj4600:
	movl	-12(%ebp),%eax
	call	SYSTEM_CPUINCLOCKED$LONGINT
Lj4601:
Lj4596:
Lj4594:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
Lj4589:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_ANSISTR_CONCAT_COMPLEX$ANSISTRING$ANSISTRING$ANSISTRING$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj4610
	leal	-60(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_to_unicodestr
	movl	-60(%ebp),%ebx
	leal	-64(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_to_unicodestr
	movl	-64(%ebp),%edx
	leal	-16(%ebp),%eax
	movl	%ebx,%ecx
	call	fpc_unicodestr_concat
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj4629
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj4629:
	pushl	%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
Lj4610:
	call	FPC_POPADDRSTACK
	leal	-64(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-60(%ebp)
	leal	-16(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj4611
	call	FPC_RERAISE
Lj4611:
	movl	-68(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_ansistr_concat
fpc_ansistr_concat:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-28(%ebp)
	movw	-28(%ebp),%ax
	movw	-28(%ebp),%dx
	subw	$1,%dx
	jbe	Lj4655
	jmp	Lj4654
Lj4655:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	jmp	Lj4653
Lj4654:
Lj4653:
	movw	%ax,-28(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4658
	jmp	Lj4659
Lj4658:
	movw	-28(%ebp),%ax
	movw	%ax,-24(%ebp)
	jmp	Lj4662
Lj4659:
	movl	-8(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-24(%ebp)
Lj4662:
	movw	-24(%ebp),%ax
	movw	-24(%ebp),%dx
	subw	$1,%dx
	jbe	Lj4674
	jmp	Lj4673
Lj4674:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	jmp	Lj4672
Lj4673:
Lj4672:
	movw	%ax,-24(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4677
	jmp	Lj4678
Lj4677:
	movw	-28(%ebp),%ax
	movw	%ax,-26(%ebp)
	jmp	Lj4681
Lj4678:
	movl	-12(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-26(%ebp)
Lj4681:
	movw	-26(%ebp),%ax
	movw	-26(%ebp),%dx
	subw	$1,%dx
	jbe	Lj4693
	jmp	Lj4692
Lj4693:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	jmp	Lj4691
Lj4692:
Lj4691:
	movw	%ax,-26(%ebp)
	movw	-24(%ebp),%ax
	cmpw	-28(%ebp),%ax
	jne	Lj4696
	jmp	Lj4698
Lj4698:
	movw	-26(%ebp),%ax
	cmpw	-28(%ebp),%ax
	jne	Lj4696
	jmp	Lj4697
Lj4696:
	movzwl	-28(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ANSISTR_CONCAT_COMPLEX$ANSISTRING$ANSISTRING$ANSISTRING$WORD
	jmp	Lj4642
Lj4697:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4707
	jmp	Lj4708
Lj4707:
	movl	-12(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-12(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj4642
Lj4708:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4711
	jmp	Lj4712
Lj4711:
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj4642
Lj4712:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4717
	movl	-4(%eax),%eax
Lj4717:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4720
	movl	-4(%eax),%eax
Lj4720:
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj4721
	jmp	Lj4722
Lj4721:
	movl	-8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	seteb	-21(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	cmpb	$0,-21(%ebp)
	jne	Lj4729
	jmp	Lj4730
Lj4729:
	pushl	-16(%ebp)
	pushl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj4737
	movl	$FPC_EMPTYCHAR,%eax
Lj4737:
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
	jmp	Lj4742
Lj4730:
	pushl	-16(%ebp)
	movl	-20(%ebp),%eax
	incl	%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4749
	movl	$FPC_EMPTYCHAR,%eax
Lj4749:
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
Lj4742:
	jmp	Lj4754
Lj4722:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj4755
	jmp	Lj4756
Lj4755:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	pushl	-16(%ebp)
	movl	-20(%ebp),%eax
	incl	%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj4767
	movl	$FPC_EMPTYCHAR,%eax
Lj4767:
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
	pushl	$0
	pushl	-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4778
	movl	$FPC_EMPTYCHAR,%eax
Lj4778:
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
	jmp	Lj4783
Lj4756:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	pushl	$0
	pushl	-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4794
	movl	$FPC_EMPTYCHAR,%eax
Lj4794:
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
	pushl	-16(%ebp)
	movl	-20(%ebp),%eax
	incl	%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4805
	movl	$FPC_EMPTYCHAR,%eax
Lj4805:
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
Lj4783:
Lj4754:
	movw	-28(%ebp),%dx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
Lj4642:
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_concat_multi
fpc_ansistr_concat_multi:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$112,%esp
	movl	%ebx,-112(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-52(%ebp)
	movl	$0,-108(%ebp)
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj4818
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4821
	jmp	Lj4822
Lj4821:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj4818
Lj4822:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-54(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj4832
	.balign 4,0x90
Lj4831:
	incl	-16(%ebp)
Lj4832:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jle	Lj4834
	jmp	Lj4833
Lj4834:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj4831
	jmp	Lj4833
Lj4833:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj4835
	jmp	Lj4836
Lj4835:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj4818
Lj4836:
	movw	-54(%ebp),%dx
	movw	-54(%ebp),%ax
	subw	$1,%ax
	jbe	Lj4846
	jmp	Lj4845
Lj4846:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	jmp	Lj4844
Lj4845:
Lj4844:
	movw	%dx,-54(%ebp)
	movb	$1,-57(%ebp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-102(%ebp)
	movw	-102(%ebp),%ax
	movw	-102(%ebp),%dx
	subw	$1,%dx
	jbe	Lj4862
	jmp	Lj4861
Lj4862:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	jmp	Lj4860
Lj4861:
Lj4860:
	movw	%ax,-56(%ebp)
	movl	-12(%ebp),%ebx
	movl	-16(%ebp),%eax
	incl	%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj4866
	decl	-24(%ebp)
	.balign 4,0x90
Lj4867:
	incl	-24(%ebp)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj4870
	jmp	Lj4869
Lj4870:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-102(%ebp)
	movw	-102(%ebp),%ax
	movw	-102(%ebp),%dx
	subw	$1,%dx
	jbe	Lj4880
	jmp	Lj4879
Lj4880:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	jmp	Lj4878
Lj4879:
Lj4878:
	cmpw	-56(%ebp),%ax
	jne	Lj4868
	jmp	Lj4869
Lj4868:
	movb	$0,-57(%ebp)
	jmp	Lj4866
Lj4869:
	cmpl	-24(%ebp),%ebx
	jg	Lj4867
Lj4866:
	movb	-57(%ebp),%al
	testb	%al,%al
	je	Lj4885
	jmp	Lj4886
Lj4885:
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	movl	-12(%ebp),%ebx
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj4890
	decl	-24(%ebp)
	.balign 4,0x90
Lj4891:
	incl	-24(%ebp)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	jne	Lj4892
	jmp	Lj4893
Lj4892:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	leal	-108(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-108(%ebp),%ecx
	movl	-52(%ebp),%edx
	leal	-52(%ebp),%eax
	call	fpc_unicodestr_concat
Lj4893:
	cmpl	-24(%ebp),%ebx
	jg	Lj4891
Lj4890:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj4908
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj4908:
	pushl	%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-4(%ebp),%edx
	movl	-52(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
	jmp	Lj4818
Lj4886:
	movl	$0,-48(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj4919
	jmp	Lj4920
Lj4919:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%edx,%eax,4),%eax
	cmpl	(%ecx),%eax
	je	Lj4921
	jmp	Lj4922
Lj4921:
	incl	-16(%ebp)
Lj4922:
	movl	-12(%ebp),%ebx
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj4924
	decl	-24(%ebp)
	.balign 4,0x90
Lj4925:
	incl	-24(%ebp)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	(%eax,%edx,4),%eax
	cmpl	(%ecx),%eax
	je	Lj4926
	jmp	Lj4927
Lj4926:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj4924
Lj4927:
	cmpl	-24(%ebp),%ebx
	jg	Lj4925
Lj4924:
Lj4920:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	je	Lj4934
	jmp	Lj4935
Lj4934:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
Lj4935:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj4940
	movl	-4(%eax),%eax
Lj4940:
	movl	%eax,-44(%ebp)
	movl	$0,-40(%ebp)
	movl	-12(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%ecx
	jl	Lj4944
	decl	-24(%ebp)
	.balign 4,0x90
Lj4945:
	incl	-24(%ebp)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj4946
	movl	-4(%eax),%eax
Lj4946:
	addl	%eax,-40(%ebp)
	cmpl	-24(%ebp),%ecx
	jg	Lj4945
Lj4944:
	movl	-40(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-44(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-32(%ebp)
	movl	-12(%ebp),%ebx
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj4954
	decl	-24(%ebp)
	.balign 4,0x90
Lj4955:
	incl	-24(%ebp)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-28(%ebp)
	cmpl	$0,-28(%ebp)
	jne	Lj4958
	jmp	Lj4959
Lj4958:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj4962
	movl	-4(%eax),%eax
Lj4962:
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%ecx
	incl	%ecx
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-36(%ebp),%eax
	addl	%eax,-32(%ebp)
Lj4959:
	cmpl	-24(%ebp),%ebx
	jg	Lj4955
Lj4954:
	movw	-56(%ebp),%dx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
	movw	-54(%ebp),%dx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
Lj4818:
	call	FPC_POPADDRSTACK
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-52(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj4819
	call	FPC_RERAISE
Lj4819:
	movl	-112(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_to_shortstr
fpc_ansistr_to_shortstr:
.globl	FPC_ANSISTR_TO_SHORTSTR
FPC_ANSISTR_TO_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4991
	jmp	Lj4992
Lj4991:
	movl	-4(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj4995
Lj4992:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4998
	movl	-4(%eax),%eax
Lj4998:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj4999
	jmp	Lj5000
Lj4999:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj5000:
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	leal	1(%eax),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	movb	-16(%ebp),%dl
	movb	%dl,(%eax)
Lj4995:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_to_ansistr
fpc_shortstr_to_ansistr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$14,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	movw	%ax,-14(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5021
	jmp	Lj5022
Lj5021:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movw	-14(%ebp),%dx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
Lj5022:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_char_to_ansistr
fpc_char_to_ansistr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$10,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	movw	%ax,-10(%ebp)
	movl	-8(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_setlength
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj5045
	movl	$FPC_EMPTYCHAR,%eax
Lj5045:
	movb	-4(%ebp),%dl
	movb	%dl,(%eax)
	movw	-10(%ebp),%dx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_pchar_to_ansistr
fpc_pchar_to_ansistr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$14,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj5056
	jmp	Lj5054
Lj5056:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj5054
	jmp	Lj5055
Lj5054:
	movl	$0,-12(%ebp)
	jmp	Lj5059
Lj5055:
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$-1,%edx
	call	SYSTEM_INDEXCHAR$formal$LONGINT$CHAR$$LONGINT
	movl	%eax,-12(%ebp)
Lj5059:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5072
	jmp	Lj5073
Lj5072:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	movw	%ax,-14(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movw	-14(%ebp),%dx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
Lj5073:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_chararray_to_ansistr
fpc_chararray_to_ansistr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movb	%cl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj5090
	jmp	Lj5091
Lj5090:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj5092
	jmp	Lj5093
Lj5092:
	movl	$0,-16(%ebp)
	jmp	Lj5096
Lj5093:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_INDEXCHAR$formal$LONGINT$CHAR$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj5105
	jmp	Lj5106
Lj5105:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj5106:
Lj5096:
	jmp	Lj5109
Lj5091:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj5109:
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5116
	jmp	Lj5117
Lj5116:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	movw	%ax,-18(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movw	-18(%ebp),%dx
	movl	8(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
Lj5117:
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_ansistr_to_chararray
fpc_ansistr_to_chararray:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5138
	movl	-4(%eax),%eax
Lj5138:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jl	Lj5139
	jmp	Lj5140
Lj5139:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj5140:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5143
	jmp	Lj5144
Lj5143:
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj5144:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	leal	(%eax,%ecx,1),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_compare
fpc_ansistr_compare:
.globl	FPC_ANSISTR_COMPARE
FPC_ANSISTR_COMPARE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$74,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-32(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5159
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj5162
	jmp	Lj5163
Lj5162:
	movl	$0,-12(%ebp)
	jmp	Lj5159
Lj5163:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5166
	jmp	Lj5167
Lj5166:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5170
	movl	-4(%eax),%eax
Lj5170:
	negl	%eax
	movl	%eax,-12(%ebp)
	jmp	Lj5159
Lj5167:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5171
	jmp	Lj5172
Lj5171:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5175
	movl	-4(%eax),%eax
Lj5175:
	movl	%eax,-12(%ebp)
	jmp	Lj5159
Lj5172:
	movl	-4(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-74(%ebp)
	movw	-74(%ebp),%dx
	movw	-74(%ebp),%ax
	subw	$1,%ax
	jbe	Lj5187
	jmp	Lj5186
Lj5187:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	jmp	Lj5185
Lj5186:
Lj5185:
	movw	%dx,-22(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-74(%ebp)
	movw	-74(%ebp),%ax
	movw	-74(%ebp),%dx
	subw	$1,%dx
	jbe	Lj5201
	jmp	Lj5200
Lj5201:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	jmp	Lj5199
Lj5200:
Lj5199:
	movw	%ax,-24(%ebp)
	movw	-22(%ebp),%ax
	cmpw	-24(%ebp),%ax
	je	Lj5204
	jmp	Lj5205
Lj5204:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5208
	movl	-4(%eax),%eax
Lj5208:
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5211
	movl	-4(%eax),%eax
Lj5211:
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj5212
	jmp	Lj5213
Lj5212:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj5213:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5216
	jmp	Lj5217
Lj5216:
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj5226
	jmp	Lj5227
Lj5226:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj5230
	movl	-4(%edx),%edx
Lj5230:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5231
	movl	-4(%eax),%eax
Lj5231:
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
Lj5227:
	jmp	Lj5232
Lj5217:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5235
	movl	-4(%eax),%eax
Lj5235:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj5236
	movl	-4(%edx),%edx
Lj5236:
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
Lj5232:
	jmp	Lj5237
Lj5205:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-32(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,-32(%ebp)
	leal	-28(%ebp),%eax
	movb	$1,%cl
	movw	$65001,%dx
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
	leal	-32(%ebp),%eax
	movb	$1,%cl
	movw	$65001,%dx
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%eax
	call	fpc_ansistr_compare
	movl	%eax,-12(%ebp)
Lj5237:
Lj5159:
	call	FPC_POPADDRSTACK
	leal	-28(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-28(%ebp)
	leal	-32(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-32(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5160
	call	FPC_RERAISE
Lj5160:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_compare_equal
fpc_ansistr_compare_equal:
.globl	FPC_ANSISTR_COMPARE_EQUAL
FPC_ANSISTR_COMPARE_EQUAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$74,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-32(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5274
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj5277
	jmp	Lj5278
Lj5277:
	movl	$0,-12(%ebp)
	jmp	Lj5274
Lj5278:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5281
	jmp	Lj5282
Lj5281:
	movl	$-1,-12(%ebp)
	jmp	Lj5274
Lj5282:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5285
	jmp	Lj5286
Lj5285:
	movl	$1,-12(%ebp)
	jmp	Lj5274
Lj5286:
	movl	-4(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-74(%ebp)
	movw	-74(%ebp),%ax
	movw	-74(%ebp),%dx
	subw	$1,%dx
	jbe	Lj5300
	jmp	Lj5299
Lj5300:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	jmp	Lj5298
Lj5299:
Lj5298:
	movw	%ax,-22(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-74(%ebp)
	movw	-74(%ebp),%dx
	movw	-74(%ebp),%ax
	subw	$1,%ax
	jbe	Lj5314
	jmp	Lj5313
Lj5314:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	jmp	Lj5312
Lj5313:
Lj5312:
	movw	%dx,-24(%ebp)
	movw	-22(%ebp),%ax
	cmpw	-24(%ebp),%ax
	je	Lj5317
	jmp	Lj5318
Lj5317:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5321
	movl	-4(%eax),%eax
Lj5321:
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5324
	movl	-4(%eax),%eax
Lj5324:
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj5327
	jmp	Lj5328
Lj5327:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5329
	jmp	Lj5330
Lj5329:
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
Lj5330:
Lj5328:
	jmp	Lj5339
Lj5318:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-32(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,-32(%ebp)
	leal	-28(%ebp),%eax
	movb	$1,%cl
	movw	$65001,%dx
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
	leal	-32(%ebp),%eax
	movb	$1,%cl
	movw	$65001,%dx
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj5358
	movl	-4(%eax),%eax
Lj5358:
	movl	%eax,-16(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj5361
	movl	-4(%eax),%eax
Lj5361:
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj5364
	jmp	Lj5365
Lj5364:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5366
	jmp	Lj5367
Lj5366:
	movl	-16(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
Lj5367:
Lj5365:
Lj5339:
Lj5274:
	call	FPC_POPADDRSTACK
	leal	-28(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-28(%ebp)
	leal	-32(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-32(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5275
	call	FPC_RERAISE
Lj5275:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_checkrange
fpc_ansistr_checkrange:
.globl	FPC_ANSISTR_RANGECHECK
FPC_ANSISTR_RANGECHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5390
	jmp	Lj5393
Lj5393:
	movl	-4(%ebp),%eax
	subl	$12,%eax
	movl	8(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj5390
	jmp	Lj5392
Lj5392:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj5390
	jmp	Lj5391
Lj5390:
	call	SYSTEM_GET_PC_ADDR$$POINTER
	movl	%eax,%edx
	movl	%ebp,%ecx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORADDRFRAMEIND$LONGINT$POINTER$POINTER
Lj5391:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_setlength
fpc_ansistr_setlength:
.globl	FPC_ANSISTR_SETLENGTH
FPC_ANSISTR_SETLENGTH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5402
	jmp	Lj5403
Lj5402:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj5404
	jmp	Lj5405
Lj5404:
	movl	-8(%ebp),%eax
	call	SYSTEM_NEWANSISTRING$LONGINT$$POINTER
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movw	%dx,(%eax)
	jmp	Lj5412
Lj5405:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movl	4(%eax),%eax
	cmpl	$1,%eax
	je	Lj5413
	jmp	Lj5414
Lj5413:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	call	SYSTEM_MEMSIZE$POINTER$$LONGWORD
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	addl	$12,%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj5423
	jmp	Lj5425
Lj5425:
	movl	-16(%ebp),%eax
	cmpl	$32,%eax
	jg	Lj5426
	jmp	Lj5424
Lj5426:
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	cmpl	-20(%ebp),%edx
	jge	Lj5423
	jmp	Lj5424
Lj5423:
	movl	-20(%ebp),%edx
	leal	-12(%ebp),%eax
	call	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	movl	-12(%ebp),%edx
	addl	$12,%edx
	movl	-4(%ebp),%eax
	movl	%edx,(%eax)
Lj5424:
	jmp	Lj5433
Lj5414:
	movl	-8(%ebp),%eax
	call	SYSTEM_NEWANSISTRING$LONGINT$$POINTER
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	subl	$12,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movw	(%eax),%ax
	movw	%ax,(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj5442
	movl	-4(%eax),%eax
Lj5442:
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jl	Lj5443
	jmp	Lj5444
Lj5443:
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj5447
Lj5444:
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj5447:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-24(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,(%eax)
Lj5433:
Lj5412:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movb	$0,(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	subl	$12,%edx
	movl	-8(%ebp),%eax
	movl	%eax,8(%edx)
	jmp	Lj5464
Lj5403:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
Lj5464:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	call	SYSTEM_NEWANSISTRING$LONGINT$$POINTER
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%ecx
	incl	%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-12(%ebp),%edx
	subl	$12,%edx
	movl	-16(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%edx
	subl	$12,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movw	(%eax),%ax
	movw	%ax,(%edx)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_copy
fpc_ansistr_copy:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	decl	-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj5495
	jmp	Lj5496
Lj5495:
	movl	$0,-8(%ebp)
Lj5496:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5502
	movl	-4(%eax),%eax
Lj5502:
	cmpl	-12(%ebp),%eax
	jl	Lj5499
	jmp	Lj5501
Lj5501:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5503
	movl	-4(%eax),%eax
Lj5503:
	cmpl	%eax,%edx
	jg	Lj5499
	jmp	Lj5500
Lj5499:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5506
	movl	-4(%eax),%eax
Lj5506:
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
Lj5500:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5507
	jmp	Lj5508
Lj5507:
	movl	-12(%ebp),%eax
	call	SYSTEM_NEWANSISTRING$LONGINT$$POINTER
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5513
	jmp	Lj5514
Lj5513:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movb	$0,(%eax)
	movl	-16(%ebp),%eax
	subl	$12,%eax
	movl	-12(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-16(%ebp),%edx
	subl	$12,%edx
	movl	-4(%ebp),%eax
	subl	$12,%eax
	movw	(%eax),%ax
	movw	%ax,(%edx)
Lj5514:
Lj5508:
	movl	8(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,(%edx)
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_POS$SHORTSTRING$ANSISTRING$$LONGINT
SYSTEM_POS$SHORTSTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$0,%eax
	jg	Lj5535
	jmp	Lj5536
Lj5535:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj5539
	movl	-4(%edx),%edx
Lj5539:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj5545
	.balign 4,0x90
Lj5544:
	incl	-16(%ebp)
	movl	-24(%ebp),%eax
	movl	-4(%ebp),%edx
	movb	(%eax),%al
	cmpb	1(%edx),%al
	je	Lj5549
	jmp	Lj5548
Lj5549:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj5547
	jmp	Lj5548
Lj5547:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj5531
Lj5548:
	incl	-24(%ebp)
Lj5545:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj5544
	jmp	Lj5546
Lj5546:
Lj5536:
Lj5531:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5564
	movl	-4(%eax),%eax
Lj5564:
	cmpl	$0,%eax
	jg	Lj5562
	jmp	Lj5563
Lj5562:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5567
	movl	-4(%eax),%eax
Lj5567:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj5568
	movl	-4(%edx),%edx
Lj5568:
	subl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj5574
	.balign 4,0x90
Lj5573:
	incl	-16(%ebp)
	movl	-24(%ebp),%eax
	movl	-4(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	je	Lj5578
	jmp	Lj5577
Lj5578:
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj5581
	movl	-4(%ecx),%ecx
Lj5581:
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj5576
	jmp	Lj5577
Lj5576:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj5558
Lj5577:
	incl	-24(%ebp)
Lj5574:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj5573
	jmp	Lj5575
Lj5575:
Lj5563:
Lj5558:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
SYSTEM_POS$CHAR$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5595
	movl	-4(%eax),%eax
Lj5595:
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj5593
	decl	-16(%ebp)
	.balign 4,0x90
Lj5594:
	incl	-16(%ebp)
	movl	-20(%ebp),%edx
	movb	(%edx),%dl
	cmpb	-4(%ebp),%dl
	je	Lj5596
	jmp	Lj5597
Lj5596:
	movl	-16(%ebp),%edx
	movl	%edx,-12(%ebp)
	jmp	Lj5588
Lj5597:
	incl	-20(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj5594
Lj5593:
	movl	$0,-12(%ebp)
Lj5588:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_real_ansistr
fpc_val_real_ansistr:
.globl	FPC_VAL_REAL_ANSISTR
FPC_VAL_REAL_ANSISTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$276,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fldz
	fstpt	-20(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5608
	movl	-4(%eax),%eax
Lj5608:
	cmpl	$255,%eax
	jg	Lj5606
	jmp	Lj5607
Lj5606:
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj5611
Lj5607:
	movl	-4(%ebp),%ecx
	leal	-276(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	-8(%ebp),%edx
	leal	-276(%ebp),%eax
	call	fpc_val_real_shortstr
	fstpt	-20(%ebp)
Lj5611:
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_currency_ansistr
fpc_val_currency_ansistr:
.globl	FPC_VAL_CURRENCY_ANSISTR
FPC_VAL_CURRENCY_ANSISTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5628
	movl	-4(%eax),%eax
Lj5628:
	cmpl	$255,%eax
	jg	Lj5626
	jmp	Lj5627
Lj5626:
	fldz
	fistpq	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj5633
Lj5627:
	movl	-4(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	-8(%ebp),%edx
	leal	-272(%ebp),%eax
	call	fpc_val_real_shortstr
	fldt	_$SYSTEM$_Ld22
	fmulp	%st,%st(1)
	fistpq	-16(%ebp)
Lj5633:
	fildq	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_uint_ansistr
fpc_val_uint_ansistr:
.globl	FPC_VAL_UINT_ANSISTR
FPC_VAL_UINT_ANSISTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5652
	movl	-4(%eax),%eax
Lj5652:
	cmpl	$255,%eax
	jg	Lj5650
	jmp	Lj5651
Lj5650:
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj5655
Lj5651:
	movl	-4(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	-8(%ebp),%edx
	leal	-268(%ebp),%eax
	call	fpc_val_uint_shortstr
	movl	%eax,-12(%ebp)
Lj5655:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_sint_ansistr
fpc_val_sint_ansistr:
.globl	FPC_VAL_SINT_ANSISTR
FPC_VAL_SINT_ANSISTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5674
	movl	-4(%eax),%eax
Lj5674:
	cmpl	$255,%eax
	jg	Lj5672
	jmp	Lj5673
Lj5672:
	movl	-12(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj5677
Lj5673:
	movl	-8(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	-12(%ebp),%ecx
	leal	-272(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_VAL_SINT_SHORTSTR
	movl	%eax,-16(%ebp)
Lj5677:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_qword_ansistr
fpc_val_qword_ansistr:
.globl	FPC_VAL_QWORD_ANSISTR
FPC_VAL_QWORD_ANSISTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5698
	movl	-4(%eax),%eax
Lj5698:
	cmpl	$255,%eax
	jg	Lj5696
	jmp	Lj5697
Lj5696:
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj5701
Lj5697:
	movl	-4(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	-8(%ebp),%edx
	leal	-272(%ebp),%eax
	call	fpc_val_qword_shortstr
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
Lj5701:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_int64_ansistr
fpc_val_int64_ansistr:
.globl	FPC_VAL_INT64_ANSISTR
FPC_VAL_INT64_ANSISTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5720
	movl	-4(%eax),%eax
Lj5720:
	cmpl	$255,%eax
	jg	Lj5718
	jmp	Lj5719
Lj5718:
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj5723
Lj5719:
	movl	-4(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	-8(%ebp),%edx
	leal	-272(%ebp),%eax
	call	fpc_val_int64_shortstr
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
Lj5723:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_float
fpc_ansistr_float:
.globl	FPC_ANSISTR_FLOAT
FPC_ANSISTR_FLOAT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-312(%ebp)
	leal	-280(%ebp),%ecx
	leal	-304(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5738
	movzwl	20(%ebp),%eax
	pushl	%eax
	pushl	16(%ebp)
	pushl	12(%ebp)
	leal	-268(%ebp),%eax
	pushl	%eax
	pushl	$255
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_STR_REAL$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	leal	-312(%ebp),%edx
	leal	-268(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-312(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-312(%ebp),%eax
	movl	%eax,(%ebx)
Lj5738:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5739
	call	FPC_RERAISE
Lj5739:
	movl	-316(%ebp),%ebx
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	fpc_ansistr_enum
fpc_ansistr_enum:
.globl	FPC_ANSISTR_ENUM
FPC_ANSISTR_ENUM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-312(%ebp)
	leal	-280(%ebp),%ecx
	leal	-304(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5761
	pushl	12(%ebp)
	leal	-268(%ebp),%eax
	pushl	%eax
	pushl	$255
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_SHORTSTR_ENUM
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	leal	-312(%ebp),%edx
	leal	-268(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-312(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-312(%ebp),%eax
	movl	%eax,(%ebx)
Lj5761:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5762
	call	FPC_RERAISE
Lj5762:
	movl	-316(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_ansistr_bool
fpc_ansistr_bool:
.globl	FPC_ANSISTR_BOOL
FPC_ANSISTR_BOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-312(%ebp)
	leal	-280(%ebp),%ecx
	leal	-304(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5784
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-8(%ebp),%edx
	movb	-4(%ebp),%al
	call	FPC_SHORTSTR_BOOL
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	leal	-312(%ebp),%edx
	leal	-268(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-312(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-312(%ebp),%eax
	movl	%eax,(%ebx)
Lj5784:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5785
	call	FPC_RERAISE
Lj5785:
	movl	-316(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_enum_ansistr
fpc_val_enum_ansistr:
.globl	FPC_VAL_ENUM_ANSISTR
FPC_VAL_ENUM_ANSISTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	leal	-272(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	FPC_VAL_ENUM_SHORTSTR
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_currency
fpc_ansistr_currency:
.globl	FPC_ANSISTR_CURRENCY
FPC_ANSISTR_CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-312(%ebp)
	leal	-280(%ebp),%ecx
	leal	-304(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5819
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_shortstr_currency
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	leal	-312(%ebp),%edx
	leal	-268(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-312(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-312(%ebp),%eax
	movl	%eax,(%ebx)
Lj5819:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5820
	call	FPC_RERAISE
Lj5820:
	movl	-316(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_ansistr_uint
fpc_ansistr_uint:
.globl	FPC_ANSISTR_VALUINT
FPC_ANSISTR_VALUINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-312(%ebp)
	leal	-280(%ebp),%ecx
	leal	-304(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5840
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_shortstr_uint
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	leal	-312(%ebp),%edx
	leal	-268(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-312(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-312(%ebp),%eax
	movl	%eax,(%ebx)
Lj5840:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5841
	call	FPC_RERAISE
Lj5841:
	movl	-316(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_sint
fpc_ansistr_sint:
.globl	FPC_ANSISTR_VALSINT
FPC_ANSISTR_VALSINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-312(%ebp)
	leal	-280(%ebp),%ecx
	leal	-304(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5859
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_shortstr_sint
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	leal	-312(%ebp),%edx
	leal	-268(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-312(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-312(%ebp),%eax
	movl	%eax,(%ebx)
Lj5859:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5860
	call	FPC_RERAISE
Lj5860:
	movl	-316(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_qword
fpc_ansistr_qword:
.globl	FPC_ANSISTR_QWORD
FPC_ANSISTR_QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%ebx,-312(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-308(%ebp)
	leal	-276(%ebp),%ecx
	leal	-300(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5878
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	fpc_shortstr_qword
	leal	-308(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-308(%ebp)
	leal	-308(%ebp),%edx
	leal	-264(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-308(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-308(%ebp),%eax
	movl	%eax,(%ebx)
Lj5878:
	call	FPC_POPADDRSTACK
	leal	-308(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-308(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5879
	call	FPC_RERAISE
Lj5879:
	movl	-312(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_ansistr_int64
fpc_ansistr_int64:
.globl	FPC_ANSISTR_INT64
FPC_ANSISTR_INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%ebx,-312(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-308(%ebp)
	leal	-276(%ebp),%ecx
	leal	-300(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5897
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	fpc_shortstr_int64
	leal	-308(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-308(%ebp)
	leal	-308(%ebp),%edx
	leal	-264(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-308(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-308(%ebp),%eax
	movl	%eax,(%ebx)
Lj5897:
	call	FPC_POPADDRSTACK
	leal	-308(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-308(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5898
	call	FPC_RERAISE
Lj5898:
	movl	-312(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj5918
	movl	-4(%eax),%eax
Lj5918:
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj5919
	jmp	Lj5922
Lj5922:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj5919
	jmp	Lj5921
Lj5921:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj5919
	jmp	Lj5920
Lj5919:
	jmp	Lj5914
Lj5920:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_UNIQUE
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	cmpl	-12(%ebp),%eax
	jl	Lj5925
	jmp	Lj5926
Lj5925:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	incl	%eax
	movl	%eax,-12(%ebp)
Lj5926:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	cmpl	-12(%ebp),%eax
	jge	Lj5929
	jmp	Lj5930
Lj5929:
	decl	-8(%ebp)
	pushl	-8(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	pushl	%edx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj5939
	movl	$FPC_EMPTYCHAR,%eax
Lj5939:
	movl	-4(%ebp),%ecx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
Lj5930:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
Lj5914:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INSERT$ANSISTRING$ANSISTRING$LONGINT
SYSTEM_INSERT$ANSISTRING$ANSISTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5948
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5953
	movl	-4(%eax),%eax
Lj5953:
	testl	%eax,%eax
	je	Lj5951
	jmp	Lj5952
Lj5951:
	jmp	Lj5948
Lj5952:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj5954
	jmp	Lj5955
Lj5954:
	movl	$1,-12(%ebp)
Lj5955:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj5960
	movl	-4(%eax),%eax
Lj5960:
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj5961
	jmp	Lj5962
Lj5961:
	movl	-20(%ebp),%eax
	incl	%eax
	movl	%eax,-12(%ebp)
Lj5962:
	decl	-12(%ebp)
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj5967
	movl	-4(%edx),%edx
Lj5967:
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	leal	-16(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj5972
	movl	-4(%eax),%eax
Lj5972:
	testl	%eax,%eax
	jne	Lj5970
	jmp	Lj5971
Lj5970:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-66(%ebp)
	movw	-66(%ebp),%ax
	movw	-66(%ebp),%dx
	subw	$1,%dx
	jbe	Lj5984
	jmp	Lj5983
Lj5984:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	jmp	Lj5982
Lj5983:
Lj5982:
	movw	%ax,-22(%ebp)
	jmp	Lj5987
Lj5971:
	movl	-4(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-66(%ebp)
	movw	-66(%ebp),%dx
	movw	-66(%ebp),%ax
	subw	$1,%ax
	jbe	Lj5999
	jmp	Lj5998
Lj5999:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	jmp	Lj5997
Lj5998:
Lj5997:
	movw	%dx,-22(%ebp)
Lj5987:
	movw	-22(%ebp),%dx
	leal	-16(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6008
	jmp	Lj6009
Lj6008:
	pushl	$0
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj6016
	movl	$FPC_EMPTYCHAR,%eax
Lj6016:
	leal	-16(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
Lj6009:
	pushl	-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6025
	movl	-4(%eax),%eax
Lj6025:
	pushl	%eax
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj6028
	movl	$FPC_EMPTYCHAR,%eax
Lj6028:
	leal	-16(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	subl	%edx,%eax
	cmpl	$0,%eax
	jg	Lj6033
	jmp	Lj6034
Lj6033:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj6037
	movl	-4(%edx),%edx
Lj6037:
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	pushl	%edx
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	subl	%edx,%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj6042
	movl	$FPC_EMPTYCHAR,%eax
Lj6042:
	leal	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
Lj6034:
	movl	-16(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-16(%ebp),%eax
	movl	%eax,(%ebx)
Lj5948:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5949
	call	FPC_RERAISE
Lj5949:
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj6063
	movl	-4(%edx),%edx
Lj6063:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movb	-4(%ebp),%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETSTRING$ANSISTRING$PCHAR$LONGINT
SYSTEM_SETSTRING$ANSISTRING$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj6074
	jmp	Lj6075
Lj6074:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj6075:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETSTRING$ANSISTRING$PWIDECHAR$LONGINT
SYSTEM_SETSTRING$ANSISTRING$PWIDECHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj6086
	jmp	Lj6085
Lj6086:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6084
	jmp	Lj6085
Lj6084:
	pushl	-12(%ebp)
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER,%ebx
	call	*%ebx
	jmp	Lj6095
Lj6085:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
Lj6095:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UPCASE$ANSISTRING$$ANSISTRING
SYSTEM_UPCASE$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj6104
	movl	-4(%edx),%edx
Lj6104:
	movl	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	je	Lj6110
	movl	-4(%ebx),%ebx
Lj6110:
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj6108
	decl	-12(%ebp)
	.balign 4,0x90
Lj6109:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	%eax,%esi
	movl	-12(%ebp),%edi
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	movb	%al,-1(%esi,%edi,1)
	cmpl	-12(%ebp),%ebx
	jg	Lj6109
Lj6108:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LOWERCASE$ANSISTRING$$ANSISTRING
SYSTEM_LOWERCASE$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj6121
	movl	-4(%edx),%edx
Lj6121:
	movl	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	je	Lj6127
	movl	-4(%ebx),%ebx
Lj6127:
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj6125
	decl	-12(%ebp)
	.balign 4,0x90
Lj6126:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	%eax,%esi
	movl	-12(%ebp),%edi
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	call	SYSTEM_LOWERCASE$CHAR$$CHAR
	movb	%al,-1(%esi,%edi,1)
	cmpl	-12(%ebp),%ebx
	jg	Lj6126
Lj6125:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj6136
	jmp	Lj6137
Lj6136:
	movl	-4(%ebp),%eax
	subl	$12,%eax
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj6140
Lj6137:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	movw	%ax,-6(%ebp)
Lj6140:
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_STRINGELEMENTSIZE$ANSISTRING$$WORD
SYSTEM_STRINGELEMENTSIZE$ANSISTRING$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj6145
	jmp	Lj6146
Lj6145:
	movl	-4(%ebp),%eax
	subl	$12,%eax
	movw	2(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj6149
Lj6146:
	movw	$1,-6(%ebp)
Lj6149:
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_STRINGREFCOUNT$ANSISTRING$$LONGINT
SYSTEM_STRINGREFCOUNT$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj6154
	jmp	Lj6155
Lj6154:
	movl	-4(%ebp),%eax
	subl	$12,%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj6158
Lj6155:
	movl	$0,-8(%ebp)
Lj6158:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INTERNALSETCODEPAGE$ANSISTRING$WORD$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movb	%cl,-12(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj6163
	jmp	Lj6164
Lj6163:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_UNIQUE
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	subl	$12,%edx
	movw	-8(%ebp),%ax
	movw	%ax,(%edx)
	jmp	Lj6169
Lj6164:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_UNIQUE
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movw	-8(%ebp),%dx
	movw	%dx,(%eax)
Lj6169:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$18,%esp
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj6176
	jmp	Lj6177
Lj6176:
	jmp	Lj6174
Lj6177:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movw	(%eax),%ax
	movw	%ax,-14(%ebp)
	movw	-14(%ebp),%ax
	cmpw	-8(%ebp),%ax
	je	Lj6180
	jmp	Lj6181
Lj6180:
	jmp	Lj6174
Lj6181:
	movw	-14(%ebp),%ax
	movw	-14(%ebp),%dx
	subw	$1,%dx
	jbe	Lj6189
	jmp	Lj6188
Lj6189:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	jmp	Lj6187
Lj6188:
Lj6187:
	movw	%ax,-18(%ebp)
	movw	-8(%ebp),%dx
	movw	-8(%ebp),%ax
	subw	$1,%ax
	jbe	Lj6199
	jmp	Lj6198
Lj6199:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	jmp	Lj6197
Lj6198:
Lj6197:
	movw	%dx,-16(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj6204
	jmp	Lj6203
Lj6204:
	movw	-18(%ebp),%ax
	cmpw	-16(%ebp),%ax
	jne	Lj6202
	jmp	Lj6203
Lj6202:
	movb	$1,-12(%ebp)
	jmp	Lj6205
Lj6203:
	movb	$0,-12(%ebp)
Lj6205:
	movb	-12(%ebp),%al
	testb	%al,%al
	je	Lj6208
	jmp	Lj6207
Lj6208:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movl	4(%eax),%eax
	cmpl	$1,%eax
	je	Lj6206
	jmp	Lj6207
Lj6206:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	subl	$12,%edx
	movw	-8(%ebp),%ax
	movw	%ax,(%edx)
	jmp	Lj6211
Lj6207:
	movb	-12(%ebp),%cl
	movw	-8(%ebp),%dx
	movl	-4(%ebp),%eax
	call	SYSTEM_INTERNALSETCODEPAGE$ANSISTRING$WORD$BOOLEAN
Lj6211:
Lj6174:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETMULTIBYTECONVERSIONCODEPAGE$WORD
SYSTEM_SETMULTIBYTECONVERSIONCODEPAGE$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	movw	%ax,U_SYSTEM_DEFAULTSYSTEMCODEPAGE
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETMULTIBYTEFILESYSTEMCODEPAGE$WORD
SYSTEM_SETMULTIBYTEFILESYSTEMCODEPAGE$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	movw	%ax,U_SYSTEM_DEFAULTFILESYSTEMCODEPAGE
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETMULTIBYTERTLFILESYSTEMCODEPAGE$WORD
SYSTEM_SETMULTIBYTERTLFILESYSTEMCODEPAGE$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	movw	%ax,U_SYSTEM_DEFAULTRTLFILESYSTEMCODEPAGE
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_append_char
fpc_ansistr_append_char:
.globl	FPC_ANSISTR_APPEND_CHAR
FPC_ANSISTR_APPEND_CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj6234
	movl	-4(%edx),%edx
Lj6234:
	incl	%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj6239
	movl	-4(%edx),%edx
Lj6239:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	decl	%edx
	movb	-8(%ebp),%al
	movb	%al,(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj6242
	movl	-4(%edx),%edx
Lj6242:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	movb	$0,(%edx)
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_append_shortstring
fpc_ansistr_append_shortstring:
.globl	FPC_ANSISTR_APPEND_SHORTSTRING
FPC_ANSISTR_APPEND_SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	je	Lj6245
	jmp	Lj6246
Lj6245:
	jmp	Lj6243
Lj6246:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj6249
	movl	-4(%eax),%eax
Lj6249:
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj6262
	movl	-4(%edx),%edx
Lj6262:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	movb	$0,(%edx)
Lj6243:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_append_ansistring
fpc_ansistr_append_ansistring:
.globl	FPC_ANSISTR_APPEND_ANSISTRING
FPC_ANSISTR_APPEND_ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$17,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj6265
	jmp	Lj6266
Lj6265:
	jmp	Lj6263
Lj6266:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	seteb	-17(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj6271
	movl	-4(%eax),%eax
Lj6271:
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj6274
	movl	-4(%eax),%eax
Lj6274:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj6279
	jmp	Lj6280
Lj6279:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-16(%ebp),%ecx
	incl	%ecx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj6287
Lj6280:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-16(%ebp),%ecx
	incl	%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj6287:
Lj6263:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DEFAULTUNICODE2ANSIMOVE$PUNICODECHAR$ANSISTRING$WORD$LONGINT
SYSTEM_DEFAULTUNICODE2ANSIMOVE$PUNICODECHAR$ANSISTRING$WORD$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	8(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	8(%ebp),%edx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%edx
	jl	Lj6303
	decl	-16(%ebp)
	.balign 4,0x90
Lj6304:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$256,%eax
	jl	Lj6305
	jmp	Lj6306
Lj6305:
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%ecx)
	jmp	Lj6309
Lj6306:
	movl	-20(%ebp),%eax
	movb	$63,(%eax)
Lj6309:
	addl	$2,-4(%ebp)
	incl	-20(%ebp)
	cmpl	-16(%ebp),%edx
	jg	Lj6304
Lj6303:
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_DEFAULTANSI2UNICODEMOVE$PCHAR$WORD$UNICODESTRING$LONGINT
SYSTEM_DEFAULTANSI2UNICODEMOVE$PCHAR$WORD$UNICODESTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	8(%ebp),%edx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%edx
	jl	Lj6321
	decl	-16(%ebp)
	.balign 4,0x90
Lj6322:
	incl	-16(%ebp)
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	movzbw	(%eax),%ax
	movw	%ax,(%ecx)
	incl	-4(%ebp)
	addl	$2,-20(%ebp)
	cmpl	-16(%ebp),%edx
	jg	Lj6322
Lj6321:
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_DEFAULTCHARLENGTHPCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	fpc_pchar_length
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DEFAULTCODEPOINTLENGTH$PCHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj6333
	jmp	Lj6334
Lj6333:
	movl	$1,-12(%ebp)
	jmp	Lj6337
Lj6334:
	movl	$0,-12(%ebp)
Lj6337:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER
SYSTEM_GETUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edi
	movl	$U_SYSTEM_WIDESTRINGMANAGER,%esi
	cld
	movl	$26,%ecx
	rep
	movsl
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER
SYSTEM_SETUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edi
	movl	$U_SYSTEM_WIDESTRINGMANAGER,%esi
	cld
	movl	$26,%ecx
	rep
	movsl
	movl	-4(%ebp),%esi
	movl	$U_SYSTEM_WIDESTRINGMANAGER,%edi
	cld
	movl	$26,%ecx
	rep
	movsl
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER
SYSTEM_SETUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	movl	$U_SYSTEM_WIDESTRINGMANAGER,%edi
	cld
	movl	$26,%ecx
	rep
	movsl
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETWIDESTRINGMANAGER$TUNICODESTRINGMANAGER
SYSTEM_GETWIDESTRINGMANAGER$TUNICODESTRINGMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edi
	movl	$U_SYSTEM_WIDESTRINGMANAGER,%esi
	cld
	movl	$26,%ecx
	rep
	movsl
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETWIDESTRINGMANAGER$TUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER
SYSTEM_SETWIDESTRINGMANAGER$TUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edi
	movl	$U_SYSTEM_WIDESTRINGMANAGER,%esi
	cld
	movl	$26,%ecx
	rep
	movsl
	movl	-4(%ebp),%esi
	movl	$U_SYSTEM_WIDESTRINGMANAGER,%edi
	cld
	movl	$26,%ecx
	rep
	movsl
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETWIDESTRINGMANAGER$TUNICODESTRINGMANAGER
SYSTEM_SETWIDESTRINGMANAGER$TUNICODESTRINGMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	movl	$U_SYSTEM_WIDESTRINGMANAGER,%edi
	cld
	movl	$26,%ecx
	rep
	movsl
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_UNICODESTRINGERROR:
	pushl	%ebp
	movl	%esp,%ebp
	movl	%ebp,%edx
	movl	$204,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NEWUNICODESTRING$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	shll	$1,%edx
	addl	$10,%edx
	leal	-12(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj6380
	jmp	Lj6381
Lj6380:
	movl	-4(%ebp),%eax
	shll	$1,%eax
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	$1,(%eax)
	movl	-12(%ebp),%eax
	movw	$0,8(%eax)
	addl	$8,-12(%ebp)
	jmp	Lj6388
Lj6381:
	call	SYSTEM_UNICODESTRINGERROR
Lj6388:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DISPOSEUNICODESTRING$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj6393
	jmp	Lj6394
Lj6393:
	jmp	Lj6391
Lj6394:
	movl	-4(%ebp),%eax
	subl	$8,(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj6391:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_decr_ref
fpc_unicodestr_decr_ref:
.globl	FPC_UNICODESTR_DECR_REF
FPC_UNICODESTR_DECR_REF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj6401
	jmp	Lj6402
Lj6401:
	jmp	Lj6399
Lj6402:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$8,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	jl	Lj6405
	jmp	Lj6406
Lj6405:
	jmp	Lj6399
Lj6406:
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj6411
	jmp	Lj6412
Lj6411:
	movl	-12(%ebp),%eax
	decl	(%eax)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	seteb	%bl
	jmp	Lj6415
Lj6412:
	movl	-12(%ebp),%eax
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj6415:
	testb	%bl,%bl
	jne	Lj6407
	jmp	Lj6408
Lj6407:
	movl	-4(%ebp),%eax
	call	SYSTEM_DISPOSEUNICODESTRING$POINTER
Lj6408:
Lj6399:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_incr_ref
fpc_unicodestr_incr_ref:
.globl	FPC_UNICODESTR_INCR_REF
FPC_UNICODESTR_INCR_REF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6424
	jmp	Lj6425
Lj6424:
	jmp	Lj6422
Lj6425:
	movl	-4(%ebp),%eax
	subl	$8,%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	jl	Lj6426
	jmp	Lj6427
Lj6426:
	jmp	Lj6422
Lj6427:
	movl	-4(%ebp),%eax
	subl	$8,%eax
	movl	%eax,-8(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj6430
	jmp	Lj6431
Lj6430:
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj6432
Lj6431:
	movl	-8(%ebp),%eax
	call	SYSTEM_CPUINCLOCKED$LONGINT
Lj6432:
Lj6422:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_to_shortstr
fpc_unicodestr_to_shortstr:
.globl	FPC_UNICODESTR_TO_SHORTSTR
FPC_UNICODESTR_TO_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj6437
	movl	-4(%ebp),%eax
	movb	$0,(%eax)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj6444
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6444:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6445
	jmp	Lj6446
Lj6445:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj6447
	jmp	Lj6448
Lj6447:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj6448:
	pushl	-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj6455
	movl	$FPC_EMPTYCHAR,%eax
Lj6455:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-20(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_to_shortstr
Lj6446:
Lj6437:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6438
	call	FPC_RERAISE
Lj6438:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_to_unicodestr
fpc_shortstr_to_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6478
	jmp	Lj6479
Lj6478:
	pushl	-12(%ebp)
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	movl	-8(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
	movl	-12(%ebp),%eax
	shll	$1,%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	addl	%edx,%eax
	movw	$0,(%eax)
Lj6479:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_to_ansistr
fpc_unicodestr_to_ansistr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6496
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6496:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6497
	jmp	Lj6498
Lj6497:
	pushl	-12(%ebp)
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
Lj6498:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_to_unicodestr
fpc_ansistr_to_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6513
	movl	-4(%eax),%eax
Lj6513:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6514
	jmp	Lj6515
Lj6514:
	pushl	-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj6520
	movl	$FPC_EMPTYCHAR,%eax
Lj6520:
	movl	-8(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
Lj6515:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_to_widestr
fpc_unicodestr_to_widestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj6529
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj6529:
	movl	-8(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj6534
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj6534:
	shll	$1,%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_widestr_to_unicodestr
fpc_widestr_to_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj6543
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj6543:
	movl	-8(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj6548
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj6548:
	shll	$1,%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_punicodechar_to_ansistr
fpc_punicodechar_to_ansistr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6557
	jmp	Lj6558
Lj6557:
	jmp	Lj6553
Lj6558:
	movl	-4(%ebp),%eax
	movw	$0,%cx
	movl	$-1,%edx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6567
	jmp	Lj6568
Lj6567:
	pushl	-12(%ebp)
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
Lj6568:
Lj6553:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_punicodechar_to_unicodestr
fpc_punicodechar_to_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6581
	jmp	Lj6582
Lj6581:
	jmp	Lj6577
Lj6582:
	movl	-4(%ebp),%eax
	movw	$0,%cx
	movl	$-1,%edx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6595
	jmp	Lj6596
Lj6595:
	movl	-12(%ebp),%ecx
	shll	$1,%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-12(%ebp),%eax
	shll	$1,%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	addl	%edx,%eax
	movw	$0,(%eax)
Lj6596:
Lj6577:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_pwidechar_to_unicodestr
fpc_pwidechar_to_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6609
	jmp	Lj6610
Lj6609:
	jmp	Lj6605
Lj6610:
	movl	-4(%ebp),%eax
	movw	$0,%cx
	movl	$-1,%edx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6623
	jmp	Lj6624
Lj6623:
	movl	-12(%ebp),%ecx
	shll	$1,%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-12(%ebp),%eax
	shll	$1,%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	addl	%edx,%eax
	movw	$0,(%eax)
Lj6624:
Lj6605:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_punicodechar_to_shortstr
fpc_punicodechar_to_shortstr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj6635
	movl	-4(%ebp),%eax
	movb	$0,(%eax)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj6640
	jmp	Lj6641
Lj6640:
	jmp	Lj6635
Lj6641:
	movl	-8(%ebp),%eax
	movw	$0,%cx
	movl	$2147483647,%edx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6650
	jmp	Lj6651
Lj6650:
	pushl	-16(%ebp)
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_to_shortstr
Lj6651:
Lj6635:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6636
	call	FPC_RERAISE
Lj6636:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_pwidechar_to_ansistr
fpc_pwidechar_to_ansistr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6676
	jmp	Lj6677
Lj6676:
	jmp	Lj6672
Lj6677:
	movl	-4(%ebp),%eax
	movw	$0,%cx
	movl	$-1,%edx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6686
	jmp	Lj6687
Lj6686:
	pushl	-12(%ebp)
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER,%ebx
	call	*%ebx
Lj6687:
Lj6672:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_pwidechar_to_shortstr
fpc_pwidechar_to_shortstr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj6698
	movl	-4(%ebp),%eax
	movb	$0,(%eax)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj6703
	jmp	Lj6704
Lj6703:
	jmp	Lj6698
Lj6704:
	movl	-8(%ebp),%eax
	movw	$0,%cx
	movl	$2147483647,%edx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6713
	jmp	Lj6714
Lj6713:
	pushl	-16(%ebp)
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER,%ebx
	call	*%ebx
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_to_shortstr
Lj6714:
Lj6698:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6699
	call	FPC_RERAISE
Lj6699:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_assign
fpc_unicodestr_assign:
.globl	FPC_UNICODESTR_ASSIGN
FPC_UNICODESTR_ASSIGN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj6737
	jmp	Lj6738
Lj6737:
	movl	-8(%ebp),%eax
	subl	$8,%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	jg	Lj6739
	jmp	Lj6740
Lj6739:
	movl	-8(%ebp),%eax
	subl	$8,%eax
	movl	%eax,-12(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj6743
	jmp	Lj6744
Lj6743:
	movl	-12(%ebp),%eax
	incl	(%eax)
	jmp	Lj6745
Lj6744:
	movl	-12(%ebp),%eax
	call	SYSTEM_CPUINCLOCKED$LONGINT
Lj6745:
Lj6740:
Lj6738:
	movl	-4(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_concat
fpc_unicodestr_concat:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj6754
	jmp	Lj6755
Lj6754:
	movl	-12(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-12(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj6752
Lj6755:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj6758
	jmp	Lj6759
Lj6758:
	movl	-8(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj6752
Lj6759:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj6764
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6764:
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj6767
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6767:
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj6768
	jmp	Lj6769
Lj6768:
	movl	-8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	seteb	-21(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
	cmpb	$0,-21(%ebp)
	jne	Lj6776
	jmp	Lj6777
Lj6776:
	movl	-20(%ebp),%edx
	shll	$1,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	movl	-16(%ebp),%ecx
	shll	$1,%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj6784
Lj6777:
	movl	-20(%ebp),%edx
	shll	$1,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	movl	-16(%ebp),%ecx
	incl	%ecx
	shll	$1,%ecx
	movl	-12(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj6784:
	jmp	Lj6791
Lj6769:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj6792
	jmp	Lj6793
Lj6792:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-20(%ebp),%edx
	shll	$1,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	movl	-16(%ebp),%ecx
	incl	%ecx
	shll	$1,%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-20(%ebp),%ecx
	shll	$1,%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj6810
Lj6793:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-20(%ebp),%ecx
	shll	$1,%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-20(%ebp),%edx
	shll	$1,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	movl	-16(%ebp),%ecx
	incl	%ecx
	shll	$1,%ecx
	movl	-12(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj6810:
Lj6791:
Lj6752:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_concat_multi
fpc_unicodestr_concat_multi:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$48,%esp
	movl	%ebx,-48(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj6831
	jmp	Lj6832
Lj6831:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj6829
Lj6832:
	movl	$0,-40(%ebp)
	movl	$0,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	(%eax,%edx,4),%eax
	cmpl	(%ecx),%eax
	je	Lj6839
	jmp	Lj6840
Lj6839:
	incl	-36(%ebp)
Lj6840:
	movl	-12(%ebp),%ebx
	movl	-36(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj6842
	decl	-16(%ebp)
	.balign 4,0x90
Lj6843:
	incl	-16(%ebp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%edx,%eax,4),%eax
	cmpl	(%ecx),%eax
	je	Lj6844
	jmp	Lj6845
Lj6844:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	$0,-36(%ebp)
	jmp	Lj6842
Lj6845:
	cmpl	-16(%ebp),%ebx
	jg	Lj6843
Lj6842:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj6852
	jmp	Lj6853
Lj6852:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
Lj6853:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj6858
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6858:
	movl	%eax,-44(%ebp)
	movl	$0,-32(%ebp)
	movl	-12(%ebp),%ecx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ecx
	jl	Lj6862
	decl	-16(%ebp)
	.balign 4,0x90
Lj6863:
	incl	-16(%ebp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj6864
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6864:
	addl	%eax,-32(%ebp)
	cmpl	-16(%ebp),%ecx
	jg	Lj6863
Lj6862:
	movl	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-44(%ebp),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	addl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%ebx
	movl	-36(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj6872
	decl	-16(%ebp)
	.balign 4,0x90
Lj6873:
	incl	-16(%ebp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj6876
	jmp	Lj6877
Lj6876:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj6880
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6880:
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%ecx
	incl	%ecx
	shll	$1,%ecx
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-28(%ebp),%eax
	shll	$1,%eax
	addl	%eax,-24(%ebp)
Lj6877:
	cmpl	-16(%ebp),%ebx
	jg	Lj6873
Lj6872:
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
Lj6829:
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_char_to_uchar
fpc_char_to_uchar:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movb	%al,-4(%ebp)
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj6891
	pushl	$1
	leal	-4(%ebp),%eax
	leal	-12(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
Lj6891:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6892
	call	FPC_RERAISE
Lj6892:
	movw	-6(%ebp),%ax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_char_to_unicodestr
fpc_char_to_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$1,%edx
	call	fpc_unicodestr_setlength
	movl	-8(%ebp),%eax
	call	fpc_unicodestr_unique
	movl	%eax,%ebx
	movb	-4(%ebp),%al
	call	fpc_char_to_uchar
	movw	%ax,(%ebx)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	addl	$2,%eax
	movw	$0,(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_uchar_to_char
fpc_uchar_to_char:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movw	%ax,-4(%ebp)
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj6926
	pushl	$1
	leal	-4(%ebp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-12(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj6939
	movl	-4(%eax),%eax
Lj6939:
	cmpl	$1,%eax
	je	Lj6937
	jmp	Lj6938
Lj6937:
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj6942
Lj6938:
	movb	$63,-5(%ebp)
Lj6942:
Lj6926:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6927
	call	FPC_RERAISE
Lj6927:
	movb	-5(%ebp),%al
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_wchar_to_unicodestr
fpc_wchar_to_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$1,%edx
	call	fpc_unicodestr_setlength
	movl	-8(%ebp),%eax
	call	fpc_unicodestr_unique
	movw	-4(%ebp),%dx
	movw	%dx,(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_char_to_wchar
fpc_char_to_wchar:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movb	%al,-4(%ebp)
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj6963
	pushl	$1
	leal	-4(%ebp),%eax
	leal	-12(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+4,%ebx
	call	*%ebx
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
Lj6963:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6964
	call	FPC_RERAISE
Lj6964:
	movw	-6(%ebp),%ax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_wchar_to_char
fpc_wchar_to_char:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movw	%ax,-4(%ebp)
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj6984
	pushl	$1
	leal	-4(%ebp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-12(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER,%ebx
	call	*%ebx
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj6997
	movl	-4(%eax),%eax
Lj6997:
	cmpl	$1,%eax
	je	Lj6995
	jmp	Lj6996
Lj6995:
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj7000
Lj6996:
	movb	$63,-5(%ebp)
Lj7000:
Lj6984:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6985
	call	FPC_RERAISE
Lj6985:
	movb	-5(%ebp),%al
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_wchar_to_shortstr
fpc_wchar_to_shortstr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movw	%cx,-8(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7011
	pushl	$1
	leal	-8(%ebp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-16(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER,%ebx
	call	*%ebx
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_to_shortstr
Lj7011:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7012
	call	FPC_RERAISE
Lj7012:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_uchar_to_unicodestr
fpc_uchar_to_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$1,%edx
	call	fpc_unicodestr_setlength
	movl	-8(%ebp),%eax
	call	fpc_unicodestr_unique
	movw	-4(%ebp),%dx
	movw	%dx,(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_uchar_to_ansistr
fpc_uchar_to_ansistr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	pushl	$1
	leal	-4(%ebp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-8(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
fpc_uchar_to_shortstr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movw	%cx,-8(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7056
	pushl	$1
	leal	-8(%ebp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-16(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_to_shortstr
Lj7056:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7057
	call	FPC_RERAISE
Lj7057:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_pchar_to_unicodestr
fpc_pchar_to_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj7083
	jmp	Lj7081
Lj7083:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj7081
	jmp	Lj7082
Lj7081:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj7079
Lj7082:
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$-1,%edx
	call	SYSTEM_INDEXCHAR$formal$LONGINT$CHAR$$LONGINT
	movl	%eax,-12(%ebp)
	pushl	-12(%ebp)
	movl	-8(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
Lj7079:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_chararray_to_unicodestr
fpc_chararray_to_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movb	%cl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj7104
	jmp	Lj7105
Lj7104:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj7106
	jmp	Lj7107
Lj7106:
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj7102
Lj7107:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_INDEXCHAR$formal$LONGINT$CHAR$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj7118
	jmp	Lj7119
Lj7118:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7119:
	jmp	Lj7122
Lj7105:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7122:
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	call	fpc_unicodestr_setlength
	pushl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
Lj7102:
	movl	-20(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_unicodechararray_to_shortstr
fpc_unicodechararray_to_shortstr:
.globl	FPC_UNICODECHARARRAY_TO_SHORTSTR
FPC_UNICODECHARARRAY_TO_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-28(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7139
	movl	12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jle	Lj7144
	jmp	Lj7145
Lj7144:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj7148
Lj7145:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj7149
	jmp	Lj7150
Lj7149:
	movl	$0,-16(%ebp)
Lj7150:
Lj7148:
	cmpb	$0,8(%ebp)
	jne	Lj7153
	jmp	Lj7154
Lj7153:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj7163
	jmp	Lj7164
Lj7163:
	movb	-16(%ebp),%al
	movb	%al,-21(%ebp)
	jmp	Lj7167
Lj7164:
	movb	-20(%ebp),%al
	movb	%al,-21(%ebp)
Lj7167:
	jmp	Lj7170
Lj7154:
	movb	-16(%ebp),%al
	movb	%al,-21(%ebp)
Lj7170:
	movzbl	-21(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-28(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
	movl	-28(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_to_shortstr
Lj7139:
	call	FPC_POPADDRSTACK
	leal	-28(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-28(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7140
	call	FPC_RERAISE
Lj7140:
	movl	-72(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_unicodechararray_to_ansistr
fpc_unicodechararray_to_ansistr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movb	%cl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj7195
	jmp	Lj7196
Lj7195:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj7205
	jmp	Lj7206
Lj7205:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7206:
	jmp	Lj7209
Lj7196:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7209:
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_setlength
	pushl	-16(%ebp)
	movl	-4(%ebp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	8(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
	movl	-20(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_unicodechararray_to_unicodestr
fpc_unicodechararray_to_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movb	%cl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj7226
	jmp	Lj7227
Lj7226:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj7236
	jmp	Lj7237
Lj7236:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7237:
	jmp	Lj7240
Lj7227:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7240:
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-16(%ebp),%ecx
	shll	$1,%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_widechararray_to_unicodestr
fpc_widechararray_to_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movb	%cl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj7255
	jmp	Lj7256
Lj7255:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj7265
	jmp	Lj7266
Lj7265:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7266:
	jmp	Lj7269
Lj7256:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7269:
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-16(%ebp),%ecx
	shll	$1,%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_widechararray_to_shortstr
fpc_widechararray_to_shortstr:
.globl	FPC_WIDECHARARRAY_TO_SHORTSTR
FPC_WIDECHARARRAY_TO_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-28(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7284
	movl	12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jle	Lj7289
	jmp	Lj7290
Lj7289:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj7293
Lj7290:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj7294
	jmp	Lj7295
Lj7294:
	movl	$0,-16(%ebp)
Lj7295:
Lj7293:
	cmpb	$0,8(%ebp)
	jne	Lj7298
	jmp	Lj7299
Lj7298:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj7308
	jmp	Lj7309
Lj7308:
	movb	-16(%ebp),%al
	movb	%al,-21(%ebp)
	jmp	Lj7312
Lj7309:
	movb	-20(%ebp),%al
	movb	%al,-21(%ebp)
Lj7312:
	jmp	Lj7315
Lj7299:
	movb	-16(%ebp),%al
	movb	%al,-21(%ebp)
Lj7315:
	movzbl	-21(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-28(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER,%ebx
	call	*%ebx
	movl	-28(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_to_shortstr
Lj7284:
	call	FPC_POPADDRSTACK
	leal	-28(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-28(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7285
	call	FPC_RERAISE
Lj7285:
	movl	-72(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_widechararray_to_ansistr
fpc_widechararray_to_ansistr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movb	%cl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj7340
	jmp	Lj7341
Lj7340:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj7350
	jmp	Lj7351
Lj7350:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7351:
	jmp	Lj7354
Lj7341:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7354:
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_setlength
	pushl	-16(%ebp)
	movl	-4(%ebp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	8(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER,%ebx
	call	*%ebx
	movl	-20(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_widechararray_to_widestr
fpc_widechararray_to_widestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movb	%cl,-8(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj7371
	jmp	Lj7372
Lj7371:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj7381
	jmp	Lj7382
Lj7381:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7382:
	jmp	Lj7385
Lj7372:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7385:
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-16(%ebp),%ecx
	shll	$1,%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_unicodestr_to_chararray
fpc_unicodestr_to_chararray:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7400
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7405
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7405:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj7406
	jmp	Lj7407
Lj7406:
	pushl	-16(%ebp)
	movl	-8(%ebp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-20(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
Lj7407:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj7418
	movl	-4(%eax),%eax
Lj7418:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jl	Lj7419
	jmp	Lj7420
Lj7419:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7420:
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	leal	(%eax,%ecx,1),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
Lj7400:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7401
	call	FPC_RERAISE
Lj7401:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_to_unicodechararray
fpc_unicodestr_to_unicodechararray:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7445
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7445:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jl	Lj7446
	jmp	Lj7447
Lj7446:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7447:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj7450
	jmp	Lj7451
Lj7450:
	movl	-16(%ebp),%ecx
	shll	$1,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj7451:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	shll	$1,%edx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	leal	(%eax,%ecx,2),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_to_unicodechararray
fpc_ansistr_to_unicodechararray:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7466
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7471
	movl	-4(%eax),%eax
Lj7471:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj7472
	jmp	Lj7473
Lj7472:
	pushl	-16(%ebp)
	movl	-8(%ebp),%eax
	leal	-20(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
Lj7473:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj7484
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7484:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jl	Lj7485
	jmp	Lj7486
Lj7485:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7486:
	movl	-16(%ebp),%ecx
	shll	$1,%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	shll	$1,%edx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	leal	(%eax,%ecx,2),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
Lj7466:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7467
	call	FPC_RERAISE
Lj7467:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_to_unicodechararray
fpc_shortstr_to_unicodechararray:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7509
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj7514
	jmp	Lj7515
Lj7514:
	pushl	-16(%ebp)
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	leal	-20(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
Lj7515:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj7526
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7526:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jl	Lj7527
	jmp	Lj7528
Lj7527:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7528:
	movl	-16(%ebp),%ecx
	shll	$1,%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	shll	$1,%edx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	leal	(%eax,%ecx,2),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
Lj7509:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7510
	call	FPC_RERAISE
Lj7510:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_to_widechararray
fpc_ansistr_to_widechararray:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7551
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7556
	movl	-4(%eax),%eax
Lj7556:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj7557
	jmp	Lj7558
Lj7557:
	pushl	-16(%ebp)
	movl	-8(%ebp),%eax
	leal	-20(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+4,%ebx
	call	*%ebx
Lj7558:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj7569
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7569:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jl	Lj7570
	jmp	Lj7571
Lj7570:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7571:
	movl	-16(%ebp),%ecx
	shll	$1,%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	shll	$1,%edx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	leal	(%eax,%ecx,2),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
Lj7551:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7552
	call	FPC_RERAISE
Lj7552:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_to_widechararray
fpc_shortstr_to_widechararray:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7594
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj7599
	jmp	Lj7600
Lj7599:
	pushl	-16(%ebp)
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	leal	-20(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+4,%ebx
	call	*%ebx
Lj7600:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj7611
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7611:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jl	Lj7612
	jmp	Lj7613
Lj7612:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7613:
	movl	-16(%ebp),%ecx
	shll	$1,%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	shll	$1,%edx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	leal	(%eax,%ecx,2),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
Lj7594:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7595
	call	FPC_RERAISE
Lj7595:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_to_widechararray
fpc_unicodestr_to_widechararray:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7638
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7638:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jl	Lj7639
	jmp	Lj7640
Lj7639:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7640:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj7643
	jmp	Lj7644
Lj7643:
	movl	-16(%ebp),%ecx
	shll	$1,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj7644:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	shll	$1,%edx
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ecx
	leal	(%eax,%ecx,2),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_compare
fpc_unicodestr_compare:
.globl	FPC_UNICODESTR_COMPARE
FPC_UNICODESTR_COMPARE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj7659
	jmp	Lj7660
Lj7659:
	movl	$0,-12(%ebp)
	jmp	Lj7657
Lj7660:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7665
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7665:
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7668
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7668:
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj7669
	jmp	Lj7670
Lj7669:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj7670:
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj7681
	jmp	Lj7682
Lj7681:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj7685
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj7685:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7686
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7686:
	subl	%eax,%edx
	movl	%edx,-20(%ebp)
Lj7682:
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj7657:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_compare_equal
fpc_unicodestr_compare_equal:
.globl	FPC_UNICODESTR_COMPARE_EQUAL
FPC_UNICODESTR_COMPARE_EQUAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj7691
	jmp	Lj7692
Lj7691:
	movl	$0,-12(%ebp)
	jmp	Lj7689
Lj7692:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7697
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7697:
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7700
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7700:
	cmpl	-16(%ebp),%eax
	jne	Lj7698
	jmp	Lj7699
Lj7698:
	movl	$-1,-12(%ebp)
	jmp	Lj7689
	jmp	Lj7703
Lj7699:
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
	jmp	Lj7689
Lj7703:
Lj7689:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_checkrange
fpc_unicodestr_checkrange:
.globl	FPC_UNICODESTR_RANGECHECK
FPC_UNICODESTR_RANGECHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7714
	jmp	Lj7717
Lj7717:
	movl	-4(%ebp),%eax
	subl	$8,%eax
	movl	4(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	cmpl	-8(%ebp),%edx
	jl	Lj7714
	jmp	Lj7716
Lj7716:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj7714
	jmp	Lj7715
Lj7714:
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj7715:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_setlength
fpc_unicodestr_setlength:
.globl	FPC_UNICODESTR_SETLENGTH
FPC_UNICODESTR_SETLENGTH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj7724
	jmp	Lj7725
Lj7724:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj7726
	jmp	Lj7727
Lj7726:
	movl	-8(%ebp),%eax
	call	SYSTEM_NEWUNICODESTRING$LONGINT$$POINTER
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj7732
Lj7727:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$8,%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj7733
	jmp	Lj7734
Lj7733:
	movl	-4(%ebp),%eax
	subl	$8,(%eax)
	movl	-8(%ebp),%ebx
	shll	$1,%ebx
	addl	$10,%ebx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_MEMSIZE$POINTER$$LONGWORD
	cmpl	%eax,%ebx
	ja	Lj7735
	jmp	Lj7736
Lj7735:
	movl	-8(%ebp),%edx
	shll	$1,%edx
	addl	$10,%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
Lj7736:
	movl	-4(%ebp),%eax
	addl	$8,(%eax)
	jmp	Lj7743
Lj7734:
	movl	-8(%ebp),%eax
	call	SYSTEM_NEWUNICODESTRING$LONGINT$$POINTER
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj7750
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7750:
	cmpl	$0,%eax
	jg	Lj7748
	jmp	Lj7749
Lj7748:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj7753
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7753:
	incl	%eax
	cmpl	-8(%ebp),%eax
	jg	Lj7751
	jmp	Lj7752
Lj7751:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj7756
Lj7752:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj7759
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7759:
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7756:
	movl	-16(%ebp),%ecx
	shll	$1,%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj7749:
	movl	-4(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,(%edx)
Lj7743:
Lj7732:
	movl	-8(%ebp),%eax
	shll	$1,%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	addl	%edx,%eax
	movw	$0,(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	subl	$8,%edx
	movl	-8(%ebp),%eax
	shll	$1,%eax
	movl	%eax,4(%edx)
	jmp	Lj7774
Lj7725:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj7775
	jmp	Lj7776
Lj7775:
	movl	-4(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
Lj7776:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj7774:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UNICODECHARTOSTRING$PUNICODECHAR$$ANSISTRING
SYSTEM_UNICODECHARTOSTRING$PUNICODECHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7783
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_pwidechar_to_unicodestr
	movl	-52(%ebp),%edx
	testl	%edx,%edx
	je	Lj7792
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj7792:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_UNICODECHARLENTOSTRING$PUNICODECHAR$LONGINT$$ANSISTRING
Lj7783:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7784
	call	FPC_RERAISE
Lj7784:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_STRINGTOUNICODECHAR$ANSISTRING$PUNICODECHAR$LONGINT$$PUNICODECHAR
SYSTEM_STRINGTOUNICODECHAR$ANSISTRING$PUNICODECHAR$LONGINT$$PUNICODECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7799
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7804
	movl	-4(%eax),%eax
Lj7804:
	pushl	%eax
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj7807
	movl	$FPC_EMPTYCHAR,%eax
Lj7807:
	leal	-20(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj7814
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7814:
	cmpl	-12(%ebp),%eax
	jl	Lj7812
	jmp	Lj7813
Lj7812:
	movl	-20(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj7817
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj7817:
	shll	$1,%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj7822
Lj7813:
	movl	-12(%ebp),%ecx
	decl	%ecx
	shll	$1,%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj7822:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movw	$0,(%edx,%eax,2)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj7799:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7800
	call	FPC_RERAISE
Lj7800:
	movl	-16(%ebp),%eax
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_WIDECHARTOSTRING$PWIDECHAR$$ANSISTRING
SYSTEM_WIDECHARTOSTRING$PWIDECHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7841
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_pwidechar_to_unicodestr
	movl	-52(%ebp),%edx
	testl	%edx,%edx
	je	Lj7850
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj7850:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_WIDECHARLENTOSTRING$PWIDECHAR$LONGINT$$ANSISTRING
Lj7841:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7842
	call	FPC_RERAISE
Lj7842:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_STRINGTOWIDECHAR$ANSISTRING$PWIDECHAR$LONGINT$$PWIDECHAR
SYSTEM_STRINGTOWIDECHAR$ANSISTRING$PWIDECHAR$LONGINT$$PWIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7857
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7862
	movl	-4(%eax),%eax
Lj7862:
	pushl	%eax
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj7865
	movl	$FPC_EMPTYCHAR,%eax
Lj7865:
	leal	-20(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+4,%ebx
	call	*%ebx
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj7872
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7872:
	cmpl	-12(%ebp),%eax
	jl	Lj7870
	jmp	Lj7871
Lj7870:
	movl	-20(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj7875
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj7875:
	shll	$1,%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj7880
Lj7871:
	movl	-12(%ebp),%ecx
	decl	%ecx
	shll	$1,%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj7880:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movw	$0,(%edx,%eax,2)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj7857:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7858
	call	FPC_RERAISE
Lj7858:
	movl	-16(%ebp),%eax
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UNICODECHARLENTOSTRING$PUNICODECHAR$LONGINT$$ANSISTRING
SYSTEM_UNICODECHARLENTOSTRING$PUNICODECHAR$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	-8(%ebp)
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UNICODECHARLENTOSTRVAR$PUNICODECHAR$LONGINT$ANSISTRING
SYSTEM_UNICODECHARLENTOSTRVAR$PUNICODECHAR$LONGINT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7909
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_UNICODECHARLENTOSTRING$PUNICODECHAR$LONGINT$$ANSISTRING
	movl	-56(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-56(%ebp),%eax
	movl	%eax,(%ebx)
Lj7909:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7910
	call	FPC_RERAISE
Lj7910:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UNICODECHARTOSTRVAR$PUNICODECHAR$ANSISTRING
SYSTEM_UNICODECHARTOSTRVAR$PUNICODECHAR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7922
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_UNICODECHARTOSTRING$PUNICODECHAR$$ANSISTRING
	movl	-52(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-52(%ebp),%eax
	movl	%eax,(%ebx)
Lj7922:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7923
	call	FPC_RERAISE
Lj7923:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_WIDECHARLENTOSTRING$PWIDECHAR$LONGINT$$ANSISTRING
SYSTEM_WIDECHARLENTOSTRING$PWIDECHAR$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	-8(%ebp)
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_WIDECHARLENTOSTRVAR$PWIDECHAR$LONGINT$ANSISTRING
SYSTEM_WIDECHARLENTOSTRVAR$PWIDECHAR$LONGINT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7943
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_WIDECHARLENTOSTRING$PWIDECHAR$LONGINT$$ANSISTRING
	movl	-56(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-56(%ebp),%eax
	movl	%eax,(%ebx)
Lj7943:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7944
	call	FPC_RERAISE
Lj7944:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_WIDECHARTOSTRVAR$PWIDECHAR$ANSISTRING
SYSTEM_WIDECHARTOSTRVAR$PWIDECHAR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7956
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_WIDECHARTOSTRING$PWIDECHAR$$ANSISTRING
	movl	-52(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-52(%ebp),%eax
	movl	%eax,(%ebx)
Lj7956:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7957
	call	FPC_RERAISE
Lj7957:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_unique
fpc_unicodestr_unique:
.globl	FPC_UNICODESTR_UNIQUE
FPC_UNICODESTR_UNIQUE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj7969
	jmp	Lj7970
Lj7969:
	jmp	Lj7965
Lj7970:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$8,%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	jne	Lj7971
	jmp	Lj7972
Lj7971:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$8,%eax
	movl	4(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%eax
	call	SYSTEM_NEWUNICODESTRING$LONGINT$$POINTER
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%ecx
	incl	%ecx
	shll	$1,%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-12(%ebp),%edx
	subl	$8,%edx
	movl	-16(%ebp),%eax
	shll	$1,%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj7972:
Lj7965:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_copy
fpc_unicodestr_copy:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	decl	-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj7997
	jmp	Lj7998
Lj7997:
	movl	$0,-8(%ebp)
Lj7998:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8004
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8004:
	cmpl	-12(%ebp),%eax
	jl	Lj8001
	jmp	Lj8003
Lj8003:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8005
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8005:
	cmpl	%eax,%edx
	jg	Lj8001
	jmp	Lj8002
Lj8001:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj8008
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj8008:
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
Lj8002:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj8009
	jmp	Lj8010
Lj8009:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj8011
	jmp	Lj8012
Lj8011:
	movl	$0,-8(%ebp)
Lj8012:
	movl	-12(%ebp),%eax
	call	SYSTEM_NEWUNICODESTRING$LONGINT$$POINTER
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8019
	jmp	Lj8020
Lj8019:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8023
	movl	$FPC_EMPTYCHAR,%eax
Lj8023:
	movl	-8(%ebp),%edx
	leal	(%eax,%edx,2),%eax
	movl	-12(%ebp),%ecx
	shll	$1,%ecx
	movl	-16(%ebp),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-16(%ebp),%edx
	subl	$8,%edx
	movl	-12(%ebp),%eax
	shll	$1,%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	shll	$1,%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movw	$0,(%eax)
Lj8020:
Lj8010:
	movl	8(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT
SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8042
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8042:
	cmpl	$0,%eax
	jg	Lj8040
	jmp	Lj8041
Lj8040:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj8045
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8045:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj8046
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj8046:
	subl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj8052
	.balign 4,0x90
Lj8051:
	incl	-16(%ebp)
	movl	-24(%ebp),%eax
	movl	-4(%ebp),%edx
	movw	(%eax),%ax
	cmpw	(%edx),%ax
	je	Lj8056
	jmp	Lj8055
Lj8056:
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj8059
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj8059:
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj8054
	jmp	Lj8055
Lj8054:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj8036
Lj8055:
	addl	$2,-24(%ebp)
Lj8052:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj8051
	jmp	Lj8053
Lj8053:
Lj8041:
Lj8036:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$WIDECHAR$UNICODESTRING$$LONGINT
SYSTEM_POS$WIDECHAR$UNICODESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj8073
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8073:
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj8071
	decl	-16(%ebp)
	.balign 4,0x90
Lj8072:
	incl	-16(%ebp)
	movl	-20(%ebp),%edx
	movw	(%edx),%dx
	cmpw	-4(%ebp),%dx
	je	Lj8074
	jmp	Lj8075
Lj8074:
	movl	-16(%ebp),%edx
	movl	%edx,-12(%ebp)
	jmp	Lj8066
Lj8075:
	addl	$2,-20(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj8072
Lj8071:
	movl	$0,-12(%ebp)
Lj8066:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$ANSISTRING$UNICODESTRING$$LONGINT
SYSTEM_POS$ANSISTRING$UNICODESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8082
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_to_unicodestr
	movl	-56(%ebp),%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT
	movl	%eax,-12(%ebp)
Lj8082:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj8083
	call	FPC_RERAISE
Lj8083:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$SHORTSTRING$UNICODESTRING$$LONGINT
SYSTEM_POS$SHORTSTRING$UNICODESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$308,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	leal	-268(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	movl	$0,-308(%ebp)
	leal	-280(%ebp),%ecx
	leal	-304(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8097
	leal	-308(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-308(%ebp)
	leal	-308(%ebp),%edx
	leal	-268(%ebp),%eax
	call	fpc_shortstr_to_unicodestr
	movl	-308(%ebp),%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT
	movl	%eax,-12(%ebp)
Lj8097:
	call	FPC_POPADDRSTACK
	leal	-308(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-308(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8098
	call	FPC_RERAISE
Lj8098:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$UNICODESTRING$ANSISTRING$$LONGINT
SYSTEM_POS$UNICODESTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8112
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_to_unicodestr
	movl	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT
	movl	%eax,-12(%ebp)
Lj8112:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-4(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj8113
	call	FPC_RERAISE
Lj8113:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$CHAR$UNICODESTRING$$LONGINT
SYSTEM_POS$CHAR$UNICODESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	-4(%ebp),%al
	call	fpc_char_to_uchar
	movw	%ax,-18(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj8136
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8136:
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj8134
	decl	-16(%ebp)
	.balign 4,0x90
Lj8135:
	incl	-16(%ebp)
	movl	-24(%ebp),%edx
	movw	(%edx),%dx
	cmpw	-18(%ebp),%dx
	je	Lj8137
	jmp	Lj8138
Lj8137:
	movl	-16(%ebp),%edx
	movl	%edx,-12(%ebp)
	jmp	Lj8125
Lj8138:
	addl	$2,-24(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj8135
Lj8134:
	movl	$0,-12(%ebp)
Lj8125:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DELETE$UNICODESTRING$LONGINT$LONGINT
SYSTEM_DELETE$UNICODESTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj8147
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8147:
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj8148
	jmp	Lj8151
Lj8151:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj8148
	jmp	Lj8150
Lj8150:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj8148
	jmp	Lj8149
Lj8148:
	jmp	Lj8143
Lj8149:
	movl	-4(%ebp),%eax
	call	FPC_UNICODESTR_UNIQUE
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	cmpl	-12(%ebp),%eax
	jl	Lj8154
	jmp	Lj8155
Lj8154:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	incl	%eax
	movl	%eax,-12(%ebp)
Lj8155:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	cmpl	-12(%ebp),%eax
	jge	Lj8158
	jmp	Lj8159
Lj8158:
	decl	-8(%ebp)
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	incl	%ecx
	shll	$1,%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%ebx
	testl	%ebx,%ebx
	jne	Lj8164
	movl	$FPC_EMPTYCHAR,%ebx
Lj8164:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	leal	(%ebx,%eax,2),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%ebx
	testl	%ebx,%ebx
	jne	Lj8167
	movl	$FPC_EMPTYCHAR,%ebx
Lj8167:
	movl	-8(%ebp),%edx
	leal	(%ebx,%edx,2),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj8159:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
Lj8143:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INSERT$UNICODESTRING$UNICODESTRING$LONGINT
SYSTEM_INSERT$UNICODESTRING$UNICODESTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8174
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8179
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8179:
	testl	%eax,%eax
	je	Lj8177
	jmp	Lj8178
Lj8177:
	jmp	Lj8174
Lj8178:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj8180
	jmp	Lj8181
Lj8180:
	movl	$1,-12(%ebp)
Lj8181:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj8186
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8186:
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj8187
	jmp	Lj8188
Lj8187:
	movl	-20(%ebp),%eax
	incl	%eax
	movl	%eax,-12(%ebp)
Lj8188:
	decl	-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8195
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8195:
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	call	SYSTEM_NEWUNICODESTRING$LONGINT$$POINTER
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj8198
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj8198:
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	leal	-16(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj8201
	jmp	Lj8202
Lj8201:
	movl	-12(%ebp),%ecx
	shll	$1,%ecx
	movl	-16(%ebp),%edx
	testl	%edx,%edx
	jne	Lj8207
	movl	$FPC_EMPTYCHAR,%edx
Lj8207:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj8210
	movl	$FPC_EMPTYCHAR,%eax
Lj8210:
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj8202:
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj8213
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj8213:
	shll	$1,%ecx
	movl	-16(%ebp),%edx
	testl	%edx,%edx
	jne	Lj8216
	movl	$FPC_EMPTYCHAR,%edx
Lj8216:
	movl	-12(%ebp),%eax
	leal	(%edx,%eax,2),%edx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8219
	movl	$FPC_EMPTYCHAR,%eax
Lj8219:
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	cmpl	$0,%edx
	jg	Lj8220
	jmp	Lj8221
Lj8220:
	movl	-16(%ebp),%ecx
	testl	%ecx,%ecx
	jne	Lj8224
	movl	$FPC_EMPTYCHAR,%ecx
Lj8224:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8225
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8225:
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	leal	(%ecx,%eax,2),%edx
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	shll	$1,%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%ebx
	testl	%ebx,%ebx
	jne	Lj8230
	movl	$FPC_EMPTYCHAR,%ebx
Lj8230:
	movl	-12(%ebp),%eax
	leal	(%ebx,%eax,2),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj8221:
	movl	-16(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-16(%ebp),%eax
	movl	%eax,(%ebx)
Lj8174:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8175
	call	FPC_RERAISE
Lj8175:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UPCASE$WIDECHAR$$WIDECHAR
SYSTEM_UPCASE$WIDECHAR$$WIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movw	%ax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8241
	leal	-12(%ebp),%edx
	movw	-4(%ebp),%ax
	call	fpc_uchar_to_unicodestr
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+88,%ecx
	call	*%ecx
	movl	-56(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
Lj8241:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-12(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8242
	call	FPC_RERAISE
Lj8242:
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UPCASE$UNICODESTRING$$UNICODESTRING
SYSTEM_UPCASE$UNICODESTRING$$UNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+88,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT
SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8274
	jmp	Lj8273
Lj8274:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj8272
	jmp	Lj8273
Lj8272:
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_unique
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	shll	$1,%ecx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj8273:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETSTRING$UNICODESTRING$PCHAR$LONGINT
SYSTEM_SETSTRING$UNICODESTRING$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8291
	jmp	Lj8290
Lj8291:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj8289
	jmp	Lj8290
Lj8289:
	pushl	-12(%ebp)
	movl	-4(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
Lj8290:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_real_unicodestr
fpc_val_real_unicodestr:
.globl	FPC_VAL_REAL_UNICODESTR
FPC_VAL_REAL_UNICODESTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$276,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fldz
	fstpt	-20(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8306
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8306:
	cmpl	$255,%eax
	jg	Lj8304
	jmp	Lj8305
Lj8304:
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj8309
Lj8305:
	movl	-4(%ebp),%ecx
	leal	-276(%ebp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	-8(%ebp),%edx
	leal	-276(%ebp),%eax
	call	fpc_val_real_shortstr
	fstpt	-20(%ebp)
Lj8309:
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_enum_unicodestr
fpc_val_enum_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj8326
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8326:
	cmpl	$255,%eax
	jg	Lj8324
	jmp	Lj8325
Lj8324:
	movl	-12(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj8329
Lj8325:
	movl	-8(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	-12(%ebp),%ecx
	leal	-272(%ebp),%edx
	movl	$4,%eax
	call	fpc_val_sint_shortstr
	movl	%eax,-16(%ebp)
Lj8329:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_currency_unicodestr
fpc_val_currency_unicodestr:
.globl	FPC_VAL_CURRENCY_UNICODESTR
FPC_VAL_CURRENCY_UNICODESTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8348
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8348:
	cmpl	$255,%eax
	jg	Lj8346
	jmp	Lj8347
Lj8346:
	fldz
	fistpq	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj8353
Lj8347:
	movl	-4(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	-8(%ebp),%edx
	leal	-272(%ebp),%eax
	call	fpc_val_real_shortstr
	fldt	_$SYSTEM$_Ld22
	fmulp	%st,%st(1)
	fistpq	-16(%ebp)
Lj8353:
	fildq	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_uint_unicodestr
fpc_val_uint_unicodestr:
.globl	FPC_VAL_UINT_UNICODESTR
FPC_VAL_UINT_UNICODESTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8372
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8372:
	cmpl	$255,%eax
	jg	Lj8370
	jmp	Lj8371
Lj8370:
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj8375
Lj8371:
	movl	-4(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	-8(%ebp),%edx
	leal	-268(%ebp),%eax
	call	fpc_val_uint_shortstr
	movl	%eax,-12(%ebp)
Lj8375:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_sint_unicodestr
fpc_val_sint_unicodestr:
.globl	FPC_VAL_SINT_UNICODESTR
FPC_VAL_SINT_UNICODESTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj8394
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8394:
	cmpl	$255,%eax
	jg	Lj8392
	jmp	Lj8393
Lj8392:
	movl	-12(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj8397
Lj8393:
	movl	-8(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	-12(%ebp),%ecx
	leal	-272(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_VAL_SINT_SHORTSTR
	movl	%eax,-16(%ebp)
Lj8397:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_qword_unicodestr
fpc_val_qword_unicodestr:
.globl	FPC_VAL_QWORD_UNICODESTR
FPC_VAL_QWORD_UNICODESTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8418
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8418:
	cmpl	$255,%eax
	jg	Lj8416
	jmp	Lj8417
Lj8416:
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj8421
Lj8417:
	movl	-4(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	-8(%ebp),%edx
	leal	-272(%ebp),%eax
	call	fpc_val_qword_shortstr
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
Lj8421:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_int64_unicodestr
fpc_val_int64_unicodestr:
.globl	FPC_VAL_INT64_UNICODESTR
FPC_VAL_INT64_UNICODESTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8440
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8440:
	cmpl	$255,%eax
	jg	Lj8438
	jmp	Lj8439
Lj8438:
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj8443
Lj8439:
	movl	-4(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	-8(%ebp),%edx
	leal	-272(%ebp),%eax
	call	fpc_val_int64_shortstr
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
Lj8443:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_float
fpc_unicodestr_float:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-312(%ebp)
	leal	-280(%ebp),%ecx
	leal	-304(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8458
	movzwl	20(%ebp),%eax
	pushl	%eax
	pushl	16(%ebp)
	pushl	12(%ebp)
	leal	-268(%ebp),%eax
	pushl	%eax
	pushl	$255
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_STR_REAL$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING
	leal	-312(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-312(%ebp)
	leal	-312(%ebp),%edx
	leal	-268(%ebp),%eax
	call	fpc_shortstr_to_unicodestr
	movl	-312(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-312(%ebp),%eax
	movl	%eax,(%ebx)
Lj8458:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8459
	call	FPC_RERAISE
Lj8459:
	movl	-316(%ebp),%ebx
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	fpc_unicodestr_enum
fpc_unicodestr_enum:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-312(%ebp)
	leal	-280(%ebp),%ecx
	leal	-304(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8481
	pushl	12(%ebp)
	leal	-268(%ebp),%eax
	pushl	%eax
	pushl	$255
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_SHORTSTR_ENUM
	leal	-312(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-312(%ebp)
	leal	-312(%ebp),%edx
	leal	-268(%ebp),%eax
	call	fpc_shortstr_to_unicodestr
	movl	-312(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-312(%ebp),%eax
	movl	%eax,(%ebx)
Lj8481:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8482
	call	FPC_RERAISE
Lj8482:
	movl	-316(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_unicodestr_bool
fpc_unicodestr_bool:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-312(%ebp)
	leal	-280(%ebp),%ecx
	leal	-304(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8504
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-8(%ebp),%edx
	movb	-4(%ebp),%al
	call	FPC_SHORTSTR_BOOL
	leal	-312(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-312(%ebp)
	leal	-312(%ebp),%edx
	leal	-268(%ebp),%eax
	call	fpc_shortstr_to_unicodestr
	movl	-312(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-312(%ebp),%eax
	movl	%eax,(%ebx)
Lj8504:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8505
	call	FPC_RERAISE
Lj8505:
	movl	-316(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_currency
fpc_unicodestr_currency:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-312(%ebp)
	leal	-280(%ebp),%ecx
	leal	-304(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8523
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_shortstr_currency
	leal	-312(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-312(%ebp)
	leal	-312(%ebp),%edx
	leal	-268(%ebp),%eax
	call	fpc_shortstr_to_unicodestr
	movl	-312(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-312(%ebp),%eax
	movl	%eax,(%ebx)
Lj8523:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8524
	call	FPC_RERAISE
Lj8524:
	movl	-316(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_unicodestr_sint
fpc_unicodestr_sint:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-312(%ebp)
	leal	-280(%ebp),%ecx
	leal	-304(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8544
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_shortstr_sint
	leal	-312(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-312(%ebp)
	leal	-312(%ebp),%edx
	leal	-268(%ebp),%eax
	call	fpc_shortstr_to_unicodestr
	movl	-312(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-312(%ebp),%eax
	movl	%eax,(%ebx)
Lj8544:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8545
	call	FPC_RERAISE
Lj8545:
	movl	-316(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_uint
fpc_unicodestr_uint:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-312(%ebp)
	leal	-280(%ebp),%ecx
	leal	-304(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8563
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_shortstr_uint
	leal	-312(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-312(%ebp)
	leal	-312(%ebp),%edx
	leal	-268(%ebp),%eax
	call	fpc_shortstr_to_unicodestr
	movl	-312(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-312(%ebp),%eax
	movl	%eax,(%ebx)
Lj8563:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8564
	call	FPC_RERAISE
Lj8564:
	movl	-316(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_int64
fpc_unicodestr_int64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%ebx,-312(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-308(%ebp)
	leal	-276(%ebp),%ecx
	leal	-300(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8582
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	fpc_shortstr_int64
	leal	-308(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-308(%ebp)
	leal	-308(%ebp),%edx
	leal	-264(%ebp),%eax
	call	fpc_shortstr_to_unicodestr
	movl	-308(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-308(%ebp),%eax
	movl	%eax,(%ebx)
Lj8582:
	call	FPC_POPADDRSTACK
	leal	-308(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-308(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8583
	call	FPC_RERAISE
Lj8583:
	movl	-312(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_unicodestr_qword
fpc_unicodestr_qword:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%ebx,-312(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-308(%ebp)
	leal	-276(%ebp),%ecx
	leal	-300(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8601
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	fpc_shortstr_qword
	leal	-308(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-308(%ebp)
	leal	-308(%ebp),%edx
	leal	-264(%ebp),%eax
	call	fpc_shortstr_to_unicodestr
	movl	-308(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-308(%ebp),%eax
	movl	%eax,(%ebx)
Lj8601:
	call	FPC_POPADDRSTACK
	leal	-308(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-308(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8602
	call	FPC_RERAISE
Lj8602:
	movl	-312(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_UTF16TOUTF32$UNICODESTRING$LONGINT$LONGINT$$UCS4CHAR
SYSTEM_UTF16TOUTF32$UNICODESTRING$LONGINT$LONGINT$$UCS4CHAR:
.globl	FPC_UTF16TOUTF32
FPC_UTF16TOUTF32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$18,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movw	-2(%edx,%eax,2),%ax
	movw	%ax,-18(%ebp)
	movw	-18(%ebp),%ax
	cmpw	$55295,%ax
	jbe	Lj8622
	jmp	Lj8624
Lj8624:
	movw	-18(%ebp),%ax
	cmpw	$57344,%ax
	jae	Lj8622
	jmp	Lj8623
Lj8622:
	movzwl	-18(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	$1,(%eax)
	jmp	Lj8629
Lj8623:
	movw	-18(%ebp),%ax
	cmpw	$56319,%ax
	jbe	Lj8634
	jmp	Lj8631
Lj8634:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8635
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8635:
	cmpl	-8(%ebp),%eax
	jg	Lj8633
	jmp	Lj8631
Lj8633:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	incl	%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$56320,%ax
	jae	Lj8632
	jmp	Lj8631
Lj8632:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	incl	%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$57343,%ax
	jbe	Lj8630
	jmp	Lj8631
Lj8630:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	incl	%eax
	movzwl	-2(%edx,%eax,2),%edx
	subl	$56320,%edx
	movzwl	-18(%ebp),%eax
	subl	$55296,%eax
	shll	$10,%eax
	addl	%eax,%edx
	addl	$65536,%edx
	movl	%edx,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	$2,(%eax)
	jmp	Lj8640
Lj8631:
	movzwl	-18(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	$1,(%eax)
Lj8640:
Lj8629:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UNICODETOUTF8$PCHAR$PUNICODECHAR$LONGINT$$LONGINT
SYSTEM_UNICODETOUTF8$PCHAR$PUNICODECHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	cmpl	$0,-8(%ebp)
	jne	Lj8647
	jmp	Lj8648
Lj8647:
	movl	-8(%ebp),%eax
	movw	$0,%cx
	movl	$-1,%edx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_UNICODETOUTF8$PCHAR$LONGWORD$PUNICODECHAR$LONGWORD$$LONGWORD
	movl	%eax,-16(%ebp)
	jmp	Lj8665
Lj8648:
	movl	$0,-16(%ebp)
Lj8665:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UNICODETOUTF8$PCHAR$LONGWORD$PUNICODECHAR$LONGWORD$$LONGWORD
SYSTEM_UNICODETOUTF8$PCHAR$LONGWORD$PUNICODECHAR$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$92,%esp
	movl	%ebx,-92(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-88(%ebp)
	movl	$0,-84(%ebp)
	movl	$0,-80(%ebp)
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8670
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj8675
	jmp	Lj8676
Lj8675:
	jmp	Lj8670
Lj8676:
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj8681
	jmp	Lj8682
Lj8681:
	jmp	Lj8684
	.balign 4,0x90
Lj8683:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movw	(%eax,%edx,2),%ax
	movw	%ax,-26(%ebp)
	movw	-26(%ebp),%ax
	subw	$127,%ax
	jbe	Lj8690
	decw	%ax
	subw	$1919,%ax
	jbe	Lj8691
	decw	%ax
	subw	$53247,%ax
	jbe	Lj8692
	decw	%ax
	subw	$1023,%ax
	jbe	Lj8693
	subw	$1025,%ax
	jb	Lj8689
	subw	$8191,%ax
	jbe	Lj8692
	jmp	Lj8689
Lj8690:
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	-26(%ebp),%cl
	movb	%cl,(%eax,%edx,1)
	incl	-24(%ebp)
	jmp	Lj8688
Lj8691:
	movl	-24(%ebp),%eax
	incl	%eax
	cmpl	-8(%ebp),%eax
	jae	Lj8696
	jmp	Lj8697
Lj8696:
	jmp	Lj8685
Lj8697:
	movzwl	-26(%ebp),%eax
	shrl	$6,%eax
	orl	$192,%eax
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%eax
	incl	%eax
	movw	-26(%ebp),%dx
	andw	$63,%dx
	orw	$128,%dx
	movb	%dl,(%ecx,%eax,1)
	addl	$2,-24(%ebp)
	jmp	Lj8688
Lj8692:
	movl	-24(%ebp),%eax
	addl	$2,%eax
	cmpl	-8(%ebp),%eax
	jae	Lj8702
	jmp	Lj8703
Lj8702:
	jmp	Lj8685
Lj8703:
	movzwl	-26(%ebp),%eax
	shrl	$12,%eax
	orl	$224,%eax
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	movzwl	-26(%ebp),%eax
	shrl	$6,%eax
	andl	$63,%eax
	orl	$128,%eax
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%edx
	incl	%edx
	movb	%al,(%ecx,%edx,1)
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%eax
	addl	$2,%eax
	movw	-26(%ebp),%dx
	andw	$63,%dx
	orw	$128,%dx
	movb	%dl,(%ecx,%eax,1)
	addl	$3,-24(%ebp)
	jmp	Lj8688
Lj8693:
	movl	-24(%ebp),%eax
	addl	$3,%eax
	cmpl	-8(%ebp),%eax
	jae	Lj8710
	jmp	Lj8711
Lj8710:
	jmp	Lj8685
Lj8711:
	movl	8(%ebp),%ebx
	movl	$0,%edx
	subl	$1,%ebx
	sbbl	$0,%edx
	movl	-20(%ebp),%ecx
	movl	$0,%eax
	cmpl	%eax,%edx
	jg	Lj8715
	jl	Lj8713
	cmpl	%ecx,%ebx
	ja	Lj8715
	jmp	Lj8713
Lj8715:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movw	(%edx,%eax,2),%ax
	cmpw	$56320,%ax
	jae	Lj8714
	jmp	Lj8713
Lj8714:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movw	(%edx,%eax,2),%ax
	cmpw	$57343,%ax
	jbe	Lj8712
	jmp	Lj8713
Lj8712:
	leal	-80(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-80(%ebp)
	leal	-84(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-84(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movw	(%edx,%eax,2),%ax
	leal	-84(%ebp),%edx
	call	fpc_uchar_to_unicodestr
	movl	-84(%ebp),%ebx
	leal	-88(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-88(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movw	(%eax,%edx,2),%ax
	leal	-88(%ebp),%edx
	call	fpc_uchar_to_unicodestr
	movl	-88(%ebp),%edx
	leal	-80(%ebp),%eax
	movl	%ebx,%ecx
	call	fpc_unicodestr_concat
	movl	-80(%ebp),%eax
	leal	-36(%ebp),%ecx
	movl	$1,%edx
	call	SYSTEM_UTF16TOUTF32$UNICODESTRING$LONGINT$LONGINT$$UCS4CHAR
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	shrl	$18,%eax
	orl	$240,%eax
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	movl	-32(%ebp),%eax
	shrl	$12,%eax
	andl	$63,%eax
	orl	$128,%eax
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%edx
	incl	%edx
	movb	%al,(%ecx,%edx,1)
	movl	-32(%ebp),%eax
	shrl	$6,%eax
	andl	$63,%eax
	orl	$128,%eax
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%edx
	addl	$2,%edx
	movb	%al,(%ecx,%edx,1)
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%eax
	addl	$3,%eax
	movl	-32(%ebp),%edx
	andl	$63,%edx
	orl	$128,%edx
	movb	%dl,(%ecx,%eax,1)
	addl	$4,-24(%ebp)
	incl	-20(%ebp)
Lj8713:
	jmp	Lj8688
Lj8689:
Lj8688:
	incl	-20(%ebp)
Lj8684:
	movl	-20(%ebp),%eax
	cmpl	8(%ebp),%eax
	jb	Lj8746
	jmp	Lj8685
Lj8746:
	movl	-24(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jb	Lj8683
	jmp	Lj8685
Lj8685:
	movl	-8(%ebp),%eax
	decl	%eax
	cmpl	-24(%ebp),%eax
	jb	Lj8747
	jmp	Lj8748
Lj8747:
	movl	-8(%ebp),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
Lj8748:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movb	$0,(%edx,%eax,1)
	jmp	Lj8753
Lj8682:
	jmp	Lj8755
	.balign 4,0x90
Lj8754:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movw	(%edx,%eax,2),%ax
	subw	$127,%ax
	jbe	Lj8759
	decw	%ax
	subw	$1919,%ax
	jbe	Lj8760
	decw	%ax
	subw	$53247,%ax
	jbe	Lj8761
	decw	%ax
	subw	$1023,%ax
	jbe	Lj8762
	subw	$1025,%ax
	jb	Lj8758
	subw	$8191,%ax
	jbe	Lj8761
	jmp	Lj8758
Lj8759:
	incl	-24(%ebp)
	jmp	Lj8757
Lj8760:
	addl	$2,-24(%ebp)
	jmp	Lj8757
Lj8761:
	addl	$3,-24(%ebp)
	jmp	Lj8757
Lj8762:
	movl	8(%ebp),%eax
	movl	$0,%edx
	subl	$1,%eax
	sbbl	$0,%edx
	movl	-20(%ebp),%ecx
	movl	$0,%ebx
	cmpl	%ebx,%edx
	jg	Lj8766
	jl	Lj8764
	cmpl	%ecx,%eax
	ja	Lj8766
	jmp	Lj8764
Lj8766:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movw	(%edx,%eax,2),%ax
	cmpw	$56320,%ax
	jae	Lj8765
	jmp	Lj8764
Lj8765:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movw	(%edx,%eax,2),%ax
	cmpw	$57343,%ax
	jbe	Lj8763
	jmp	Lj8764
Lj8763:
	addl	$4,-24(%ebp)
	incl	-20(%ebp)
Lj8764:
	jmp	Lj8757
Lj8758:
Lj8757:
	incl	-20(%ebp)
Lj8755:
	movl	-20(%ebp),%eax
	cmpl	8(%ebp),%eax
	jb	Lj8754
	jmp	Lj8756
Lj8756:
Lj8753:
	movl	-24(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj8670:
	call	FPC_POPADDRSTACK
	leal	-88(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-88(%ebp)
	leal	-84(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-84(%ebp)
	leal	-80(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-80(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8671
	call	FPC_RERAISE
Lj8671:
	movl	-16(%ebp),%eax
	movl	-92(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_UTF8TOUNICODE$PUNICODECHAR$PCHAR$LONGINT$$LONGINT
SYSTEM_UTF8TOUNICODE$PUNICODECHAR$PCHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	cmpl	$0,-8(%ebp)
	jne	Lj8771
	jmp	Lj8772
Lj8771:
	movl	-8(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_UTF8TOUNICODE$PUNICODECHAR$LONGWORD$PCHAR$LONGWORD$$LONGWORD
	movl	%eax,-16(%ebp)
	jmp	Lj8785
Lj8772:
	movl	$0,-16(%ebp)
Lj8785:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UTF8TOUNICODE$PUNICODECHAR$LONGWORD$PCHAR$LONGWORD$$LONGWORD
SYSTEM_UTF8TOUNICODE$PUNICODECHAR$LONGWORD$PCHAR$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj8791
	jmp	Lj8790
Lj8790:
	movl	$0,-16(%ebp)
	jmp	Lj8788
Lj8791:
	movl	$-1,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-32(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj8802
	jmp	Lj8803
Lj8802:
	jmp	Lj8805
	.balign 4,0x90
Lj8804:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-21(%ebp)
	movb	-21(%ebp),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	je	Lj8809
	jmp	Lj8810
Lj8809:
	movzbl	-21(%ebp),%eax
	cmpl	$10,%eax
	je	Lj8811
	jmp	Lj8812
Lj8811:
	movl	-32(%ebp),%eax
	cmpl	$13,%eax
	jne	Lj8815
	jmp	Lj8814
Lj8815:
	jmp	Lj8814
	movl	-28(%ebp),%eax
	incl	%eax
	cmpl	-8(%ebp),%eax
	jb	Lj8816
	jmp	Lj8817
Lj8816:
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movw	$13,(%eax,%edx,2)
	incl	-28(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movw	$10,(%eax,%edx,2)
	incl	-28(%ebp)
	movl	$10,-32(%ebp)
	jmp	Lj8824
Lj8817:
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movw	$13,(%eax,%edx,2)
	incl	-28(%ebp)
Lj8824:
	jmp	Lj8827
Lj8814:
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%ecx
	movzbw	-21(%ebp),%dx
	movw	%dx,(%eax,%ecx,2)
	incl	-28(%ebp)
	movzbl	-21(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj8827:
	jmp	Lj8832
Lj8812:
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movzbw	-21(%ebp),%cx
	movw	%cx,(%eax,%edx,2)
	incl	-28(%ebp)
	movzbl	-21(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj8832:
	incl	-20(%ebp)
	jmp	Lj8837
Lj8810:
	movb	-21(%ebp),%al
	movb	%al,-33(%ebp)
	movl	$0,-40(%ebp)
	jmp	Lj8843
	.balign 4,0x90
Lj8842:
	movzbl	-33(%ebp),%eax
	shll	$1,%eax
	andl	$254,%eax
	movb	%al,-33(%ebp)
	incl	-40(%ebp)
Lj8843:
	movb	-33(%ebp),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj8842
	jmp	Lj8844
Lj8844:
	movl	-20(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	%eax,%edx
	decl	%edx
	cmpl	8(%ebp),%edx
	ja	Lj8847
	jmp	Lj8848
Lj8847:
	movl	$1,-40(%ebp)
Lj8848:
	movl	-40(%ebp),%eax
	decl	%eax
	movl	$1,-44(%ebp)
	cmpl	-44(%ebp),%eax
	jb	Lj8852
	decl	-44(%ebp)
	.balign 4,0x90
Lj8853:
	incl	-44(%ebp)
	movl	-12(%ebp),%ebx
	movl	-20(%ebp),%edx
	movl	-44(%ebp),%ecx
	addl	%ecx,%edx
	movb	(%ebx,%edx,1),%dl
	andb	$128,%dl
	cmpb	$128,%dl
	jne	Lj8854
	jmp	Lj8856
Lj8856:
	movl	-12(%ebp),%ebx
	movl	-20(%ebp),%edx
	movl	-44(%ebp),%ecx
	addl	%ecx,%edx
	movb	(%ebx,%edx,1),%dl
	andb	$64,%dl
	movzbl	%dl,%edx
	testl	%edx,%edx
	jne	Lj8854
	jmp	Lj8855
Lj8854:
	movl	-44(%ebp),%edx
	movl	%edx,-40(%ebp)
	jmp	Lj8852
Lj8855:
	cmpl	-44(%ebp),%eax
	ja	Lj8853
Lj8852:
	movl	$65535,-48(%ebp)
	movl	-40(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj8862
	decl	%eax
	je	Lj8863
	decl	%eax
	je	Lj8864
	decl	%eax
	je	Lj8865
	decl	%eax
	je	Lj8866
	decl	%eax
	jb	Lj8862
	subl	$2,%eax
	jbe	Lj8867
	jmp	Lj8862
Lj8863:
	movl	$63,-48(%ebp)
	jmp	Lj8861
Lj8864:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	andb	$31,%al
	movzbl	%al,%eax
	shll	$6,%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	(%edx,%eax,1),%al
	andb	$63,%al
	movzbl	%al,%eax
	movl	-48(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%eax
	cmpl	$127,%eax
	jbe	Lj8874
	jmp	Lj8875
Lj8874:
	movl	$63,-48(%ebp)
Lj8875:
	jmp	Lj8861
Lj8865:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	(%edx,%eax,1),%al
	andb	$15,%al
	movzbl	%al,%eax
	shll	$12,%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	(%edx,%eax,1),%al
	andb	$63,%al
	movzbl	%al,%eax
	shll	$6,%eax
	movl	-48(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$2,%eax
	movb	(%edx,%eax,1),%al
	andb	$63,%al
	movzbl	%al,%eax
	movl	-48(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%eax
	cmpl	$2047,%eax
	jbe	Lj8884
	jmp	Lj8887
Lj8887:
	movl	-48(%ebp),%eax
	cmpl	$65534,%eax
	jae	Lj8884
	jmp	Lj8886
Lj8886:
	movl	-48(%ebp),%eax
	cmpl	$55296,%eax
	jae	Lj8888
	jmp	Lj8885
Lj8888:
	movl	-48(%ebp),%eax
	cmpl	$57343,%eax
	jbe	Lj8884
	jmp	Lj8885
Lj8884:
	movl	$63,-48(%ebp)
Lj8885:
	jmp	Lj8861
Lj8866:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	(%edx,%eax,1),%al
	andb	$7,%al
	movzbl	%al,%eax
	shll	$18,%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	(%edx,%eax,1),%al
	andb	$63,%al
	movzbl	%al,%eax
	shll	$12,%eax
	movl	-48(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$2,%eax
	movb	(%edx,%eax,1),%al
	andb	$63,%al
	movzbl	%al,%eax
	shll	$6,%eax
	movl	-48(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$3,%eax
	movb	(%edx,%eax,1),%al
	andb	$63,%al
	movzbl	%al,%eax
	movl	-48(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%eax
	cmpl	$65536,%eax
	jb	Lj8899
	jmp	Lj8901
Lj8901:
	movl	-48(%ebp),%eax
	cmpl	$1114111,%eax
	ja	Lj8899
	jmp	Lj8900
Lj8899:
	movl	$63,-48(%ebp)
	jmp	Lj8904
Lj8900:
	subl	$65536,-48(%ebp)
	movl	-8(%ebp),%edx
	movl	$0,%ebx
	subl	$1,%edx
	sbbl	$0,%ebx
	movl	-28(%ebp),%ecx
	movl	$0,%eax
	cmpl	%eax,%ebx
	jg	Lj8905
	jl	Lj8906
	cmpl	%ecx,%edx
	ja	Lj8905
	jmp	Lj8906
Lj8905:
	movl	-48(%ebp),%eax
	shrl	$10,%eax
	addl	$55296,%eax
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%ecx
	movw	%ax,(%edx,%ecx,2)
	incl	-28(%ebp)
	movl	-48(%ebp),%eax
	andl	$1023,%eax
	addl	$56320,%eax
	movl	%eax,-48(%ebp)
	jmp	Lj8911
Lj8906:
	movl	-20(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	$0,-40(%ebp)
Lj8911:
Lj8904:
	jmp	Lj8861
Lj8867:
	movl	$63,-48(%ebp)
	jmp	Lj8861
Lj8862:
Lj8861:
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj8918
	jmp	Lj8919
Lj8918:
	movl	-48(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%ecx
	movw	-48(%ebp),%ax
	movw	%ax,(%edx,%ecx,2)
	incl	-28(%ebp)
Lj8919:
	movl	-20(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
Lj8837:
Lj8805:
	movl	-28(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jb	Lj8926
	jmp	Lj8806
Lj8926:
	movl	-20(%ebp),%eax
	cmpl	8(%ebp),%eax
	jb	Lj8804
	jmp	Lj8806
Lj8806:
	movl	-28(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	jmp	Lj8929
Lj8803:
	jmp	Lj8931
	.balign 4,0x90
Lj8930:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,-21(%ebp)
	movb	-21(%ebp),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	je	Lj8935
	jmp	Lj8936
Lj8935:
	movzbl	-21(%ebp),%eax
	cmpl	$10,%eax
	je	Lj8937
	jmp	Lj8938
Lj8937:
	movl	-32(%ebp),%eax
	cmpl	$13,%eax
	jne	Lj8941
	jmp	Lj8940
Lj8941:
	jmp	Lj8940
	addl	$2,-28(%ebp)
	movl	$10,-32(%ebp)
	jmp	Lj8944
Lj8940:
	incl	-28(%ebp)
	movzbl	-21(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj8944:
	jmp	Lj8947
Lj8938:
	incl	-28(%ebp)
	movzbl	-21(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj8947:
	incl	-20(%ebp)
	jmp	Lj8950
Lj8936:
	movb	-21(%ebp),%al
	movb	%al,-33(%ebp)
	movl	$0,-40(%ebp)
	jmp	Lj8956
	.balign 4,0x90
Lj8955:
	movzbl	-33(%ebp),%eax
	shll	$1,%eax
	andl	$254,%eax
	movb	%al,-33(%ebp)
	incl	-40(%ebp)
Lj8956:
	movb	-33(%ebp),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj8955
	jmp	Lj8957
Lj8957:
	movl	-20(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	cmpl	8(%ebp),%eax
	ja	Lj8960
	jmp	Lj8961
Lj8960:
	movl	$1,-40(%ebp)
Lj8961:
	movl	-40(%ebp),%eax
	decl	%eax
	movl	$1,-44(%ebp)
	cmpl	-44(%ebp),%eax
	jb	Lj8965
	decl	-44(%ebp)
	.balign 4,0x90
Lj8966:
	incl	-44(%ebp)
	movl	-12(%ebp),%ebx
	movl	-20(%ebp),%edx
	movl	-44(%ebp),%ecx
	addl	%ecx,%edx
	movb	(%ebx,%edx,1),%dl
	andb	$128,%dl
	cmpb	$128,%dl
	jne	Lj8967
	jmp	Lj8969
Lj8969:
	movl	-12(%ebp),%ebx
	movl	-20(%ebp),%edx
	movl	-44(%ebp),%ecx
	addl	%ecx,%edx
	movb	(%ebx,%edx,1),%dl
	andb	$64,%dl
	movzbl	%dl,%edx
	testl	%edx,%edx
	jne	Lj8967
	jmp	Lj8968
Lj8967:
	movl	-44(%ebp),%edx
	movl	%edx,-40(%ebp)
	jmp	Lj8965
Lj8968:
	cmpl	-44(%ebp),%eax
	ja	Lj8966
Lj8965:
	movl	$65535,-48(%ebp)
	movl	-40(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj8975
	decl	%eax
	je	Lj8976
	decl	%eax
	je	Lj8977
	decl	%eax
	je	Lj8978
	decl	%eax
	je	Lj8979
	decl	%eax
	jb	Lj8975
	subl	$2,%eax
	jbe	Lj8980
	jmp	Lj8975
Lj8976:
	movl	$63,-48(%ebp)
	jmp	Lj8974
Lj8977:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	andb	$31,%al
	movzbl	%al,%eax
	shll	$6,%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	(%edx,%eax,1),%al
	andb	$63,%al
	movzbl	%al,%eax
	movl	-48(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%eax
	cmpl	$127,%eax
	jbe	Lj8987
	jmp	Lj8988
Lj8987:
	movl	$63,-48(%ebp)
Lj8988:
	jmp	Lj8974
Lj8978:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	andb	$15,%al
	movzbl	%al,%eax
	shll	$12,%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	(%edx,%eax,1),%al
	andb	$63,%al
	movzbl	%al,%eax
	shll	$6,%eax
	movl	-48(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$2,%eax
	movb	(%edx,%eax,1),%al
	andb	$63,%al
	movzbl	%al,%eax
	movl	-48(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%eax
	cmpl	$2047,%eax
	jbe	Lj8997
	jmp	Lj9000
Lj9000:
	movl	-48(%ebp),%eax
	cmpl	$65534,%eax
	jae	Lj8997
	jmp	Lj8999
Lj8999:
	movl	-48(%ebp),%eax
	cmpl	$55296,%eax
	jae	Lj9001
	jmp	Lj8998
Lj9001:
	movl	-48(%ebp),%eax
	cmpl	$57343,%eax
	jbe	Lj8997
	jmp	Lj8998
Lj8997:
	movl	$63,-48(%ebp)
Lj8998:
	jmp	Lj8974
Lj8979:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	andb	$7,%al
	movzbl	%al,%eax
	shll	$18,%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	(%edx,%eax,1),%al
	andb	$63,%al
	movzbl	%al,%eax
	shll	$12,%eax
	movl	-48(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$2,%eax
	movb	(%edx,%eax,1),%al
	andb	$63,%al
	movzbl	%al,%eax
	shll	$6,%eax
	movl	-48(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	$3,%eax
	movb	(%edx,%eax,1),%al
	andb	$63,%al
	movzbl	%al,%eax
	movl	-48(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%eax
	cmpl	$65536,%eax
	jb	Lj9012
	jmp	Lj9014
Lj9014:
	movl	-48(%ebp),%eax
	cmpl	$1114111,%eax
	ja	Lj9012
	jmp	Lj9013
Lj9012:
	movl	$63,-48(%ebp)
	jmp	Lj9017
Lj9013:
	incl	-28(%ebp)
Lj9017:
	jmp	Lj8974
Lj8980:
	movl	$63,-48(%ebp)
	jmp	Lj8974
Lj8975:
Lj8974:
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj9020
	jmp	Lj9021
Lj9020:
	movl	-48(%ebp),%eax
	movl	%eax,-32(%ebp)
	incl	-28(%ebp)
Lj9021:
	movl	-20(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
Lj8950:
Lj8931:
	movl	-20(%ebp),%eax
	cmpl	8(%ebp),%eax
	jb	Lj8930
	jmp	Lj8932
Lj8932:
	movl	-28(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj8929:
Lj8788:
	movl	-16(%ebp),%eax
	movl	-52(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_UTF8ENCODE$ANSISTRING$$UTF8STRING
SYSTEM_UTF8ENCODE$ANSISTRING$$UTF8STRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj9030
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_to_unicodestr
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_UTF8ENCODE$UNICODESTRING$$UTF8STRING
Lj9030:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9031
	call	FPC_RERAISE
Lj9031:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UTF8ENCODE$UNICODESTRING$$UTF8STRING
SYSTEM_UTF8ENCODE$UNICODESTRING$$UTF8STRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj9043
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9048
	jmp	Lj9049
Lj9048:
	jmp	Lj9043
Lj9049:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj9052
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9052:
	imull	$3,%edx
	leal	-16(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9059
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9059:
	pushl	%eax
	movl	-16(%ebp),%edx
	testl	%edx,%edx
	je	Lj9062
	movl	-4(%edx),%edx
Lj9062:
	incl	%edx
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	jne	Lj9065
	movl	$FPC_EMPTYCHAR,%ecx
Lj9065:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj9068
	movl	$FPC_EMPTYCHAR,%eax
Lj9068:
	call	SYSTEM_UNICODETOUTF8$PCHAR$LONGWORD$PUNICODECHAR$LONGWORD$$LONGWORD
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj9069
	jmp	Lj9070
Lj9069:
	movl	-12(%ebp),%edx
	decl	%edx
	leal	-16(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-16(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-16(%ebp),%eax
	movl	%eax,(%ebx)
Lj9070:
Lj9043:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9044
	call	FPC_RERAISE
Lj9044:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UTF8DECODE$UTF8STRING$$UNICODESTRING
SYSTEM_UTF8DECODE$UTF8STRING$$UNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj9085
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9090
	jmp	Lj9091
Lj9090:
	jmp	Lj9085
Lj9091:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj9094
	movl	-4(%edx),%edx
Lj9094:
	leal	-16(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9101
	movl	-4(%eax),%eax
Lj9101:
	pushl	%eax
	movl	-16(%ebp),%edx
	testl	%edx,%edx
	je	Lj9104
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9104:
	incl	%edx
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	jne	Lj9107
	movl	$FPC_EMPTYCHAR,%ecx
Lj9107:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj9110
	movl	$FPC_EMPTYCHAR,%eax
Lj9110:
	call	SYSTEM_UTF8TOUNICODE$PUNICODECHAR$LONGWORD$PCHAR$LONGWORD$$LONGWORD
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj9111
	jmp	Lj9112
Lj9111:
	movl	-12(%ebp),%edx
	decl	%edx
	leal	-16(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-16(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-16(%ebp),%eax
	movl	%eax,(%ebx)
Lj9112:
Lj9085:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9086
	call	FPC_RERAISE
Lj9086:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ANSITOUTF8$ANSISTRING$$UTF8STRING
SYSTEM_ANSITOUTF8$ANSISTRING$$UTF8STRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj9127
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_to_unicodestr
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_UTF8ENCODE$UNICODESTRING$$UTF8STRING
	movl	-8(%ebp),%eax
Lj9127:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9128
	call	FPC_RERAISE
Lj9128:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UTF8TOANSI$UTF8STRING$$ANSISTRING
SYSTEM_UTF8TOANSI$UTF8STRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj9140
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_UTF8DECODE$UTF8STRING$$UNICODESTRING
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
Lj9140:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9141
	call	FPC_RERAISE
Lj9141:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UNICODESTRINGTOUCS4STRING$UNICODESTRING$$UCS4STRING
SYSTEM_UNICODESTRINGTOUCS4STRING$UNICODESTRING$$UCS4STRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj9153
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9158
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9158:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	incl	%eax
	movl	%eax,-68(%ebp)
	leal	-68(%ebp),%eax
	pushl	%eax
	movl	$INIT_SYSTEM_UCS4STRING,%edx
	leal	-8(%ebp),%eax
	movl	$1,%ecx
	call	fpc_dynarray_setlength
	movl	$1,-12(%ebp)
	movl	$0,-20(%ebp)
	jmp	Lj9174
	.balign 4,0x90
Lj9173:
	leal	-24(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_UTF16TOUTF32$UNICODESTRING$LONGINT$LONGINT$$UCS4CHAR
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
	incl	-20(%ebp)
	movl	-24(%ebp),%eax
	addl	%eax,-12(%ebp)
Lj9174:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj9173
	jmp	Lj9175
Lj9175:
	movl	-20(%ebp),%eax
	incl	%eax
	movl	%eax,-68(%ebp)
	leal	-68(%ebp),%eax
	pushl	%eax
	movl	$INIT_SYSTEM_UCS4STRING,%edx
	leal	-8(%ebp),%eax
	movl	$1,%ecx
	call	fpc_dynarray_setlength
Lj9153:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj9154
	movl	$INIT_SYSTEM_UCS4STRING,%edx
	leal	-8(%ebp),%eax
	call	fpc_finalize
	call	FPC_RERAISE
Lj9154:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_CONCATUTF32TOUNICODESTR$UCS4CHAR$UNICODESTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$65535,%eax
	setab	%al
	movzbl	%al,%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	testl	%edx,%edx
	je	Lj9206
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9206:
	cmpl	%edx,%eax
	jg	Lj9202
	jmp	Lj9203
Lj9202:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9209
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9209:
	cmpl	$2560,%eax
	jl	Lj9207
	jmp	Lj9208
Lj9207:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj9212
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9212:
	addl	$10,%edx
	movl	-8(%ebp),%eax
	call	fpc_unicodestr_setlength
	jmp	Lj9215
Lj9208:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj9218
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9218:
	shrl	$8,%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9219
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9219:
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	call	fpc_unicodestr_setlength
Lj9215:
Lj9203:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	leal	-2(%edx,%eax,2),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$65535,%eax
	jb	Lj9224
	jmp	Lj9225
Lj9224:
	movl	-16(%ebp),%edx
	movw	-4(%ebp),%ax
	movw	%ax,(%edx)
	movl	-12(%ebp),%eax
	incl	(%eax)
	jmp	Lj9228
Lj9225:
	movl	-4(%ebp),%eax
	cmpl	$1114111,%eax
	jbe	Lj9229
	jmp	Lj9230
Lj9229:
	movl	-4(%ebp),%eax
	subl	$65536,%eax
	shrl	$10,%eax
	addl	$55296,%eax
	movl	-16(%ebp),%edx
	movw	%ax,(%edx)
	movl	-4(%ebp),%eax
	subl	$65536,%eax
	andl	$1023,%eax
	addl	$56320,%eax
	movl	-16(%ebp),%edx
	addl	$2,%edx
	movw	%ax,(%edx)
	movl	-12(%ebp),%eax
	addl	$2,(%eax)
	jmp	Lj9235
Lj9230:
	movl	-16(%ebp),%eax
	movw	$63,(%eax)
	movl	-12(%ebp),%eax
	incl	(%eax)
Lj9235:
Lj9228:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UCS4STRINGTOUNICODESTRING$UCS4STRING$$UNICODESTRING
SYSTEM_UCS4STRINGTOUNICODESTRING$UCS4STRING$$UNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	call	fpc_dynarray_length
	movl	%eax,%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	$1,-12(%ebp)
	movl	8(%ebp),%eax
	call	fpc_dynarray_high
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj9249
	decl	-8(%ebp)
	.balign 4,0x90
Lj9250:
	incl	-8(%ebp)
	movl	8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	SYSTEM_CONCATUTF32TOUNICODESTR$UCS4CHAR$UNICODESTRING$LONGINT
	cmpl	-8(%ebp),%ebx
	jg	Lj9250
Lj9249:
	movl	-12(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-16(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_WIDESTRINGTOUCS4STRING$WIDESTRING$$UCS4STRING
SYSTEM_WIDESTRINGTOUCS4STRING$WIDESTRING$$UCS4STRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj9265
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9270
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9270:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	incl	%eax
	movl	%eax,-68(%ebp)
	leal	-68(%ebp),%eax
	pushl	%eax
	movl	$INIT_SYSTEM_UCS4STRING,%edx
	leal	-8(%ebp),%eax
	movl	$1,%ecx
	call	fpc_dynarray_setlength
	movl	$1,-12(%ebp)
	movl	$0,-20(%ebp)
	jmp	Lj9286
	.balign 4,0x90
Lj9285:
	leal	-24(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_UTF16TOUTF32$UNICODESTRING$LONGINT$LONGINT$$UCS4CHAR
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
	incl	-20(%ebp)
	movl	-24(%ebp),%eax
	addl	%eax,-12(%ebp)
Lj9286:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj9285
	jmp	Lj9287
Lj9287:
	movl	-20(%ebp),%eax
	incl	%eax
	movl	%eax,-68(%ebp)
	leal	-68(%ebp),%eax
	pushl	%eax
	movl	$INIT_SYSTEM_UCS4STRING,%edx
	leal	-8(%ebp),%eax
	movl	$1,%ecx
	call	fpc_dynarray_setlength
Lj9265:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj9266
	movl	$INIT_SYSTEM_UCS4STRING,%edx
	leal	-8(%ebp),%eax
	call	fpc_finalize
	call	FPC_RERAISE
Lj9266:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_CONCATUTF32TOWIDESTR$UCS4CHAR$WIDESTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$65535,%eax
	setab	%al
	movzbl	%al,%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	testl	%edx,%edx
	je	Lj9318
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9318:
	cmpl	%edx,%eax
	jg	Lj9314
	jmp	Lj9315
Lj9314:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9321
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9321:
	cmpl	$2560,%eax
	jl	Lj9319
	jmp	Lj9320
Lj9319:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj9324
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9324:
	addl	$10,%edx
	movl	-8(%ebp),%eax
	call	fpc_unicodestr_setlength
	jmp	Lj9327
Lj9320:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj9330
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9330:
	shrl	$8,%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9331
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9331:
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	call	fpc_unicodestr_setlength
Lj9327:
Lj9315:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	leal	-2(%edx,%eax,2),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$65535,%eax
	jb	Lj9336
	jmp	Lj9337
Lj9336:
	movl	-16(%ebp),%edx
	movw	-4(%ebp),%ax
	movw	%ax,(%edx)
	movl	-12(%ebp),%eax
	incl	(%eax)
	jmp	Lj9340
Lj9337:
	movl	-4(%ebp),%eax
	cmpl	$1114111,%eax
	jbe	Lj9341
	jmp	Lj9342
Lj9341:
	movl	-4(%ebp),%eax
	subl	$65536,%eax
	shrl	$10,%eax
	addl	$55296,%eax
	movl	-16(%ebp),%edx
	movw	%ax,(%edx)
	movl	-4(%ebp),%eax
	subl	$65536,%eax
	andl	$1023,%eax
	addl	$56320,%eax
	movl	-16(%ebp),%edx
	addl	$2,%edx
	movw	%ax,(%edx)
	movl	-12(%ebp),%eax
	addl	$2,(%eax)
	jmp	Lj9347
Lj9342:
	movl	-16(%ebp),%eax
	movw	$63,(%eax)
	movl	-12(%ebp),%eax
	incl	(%eax)
Lj9347:
Lj9340:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UCS4STRINGTOWIDESTRING$UCS4STRING$$WIDESTRING
SYSTEM_UCS4STRINGTOWIDESTRING$UCS4STRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	call	fpc_dynarray_length
	movl	%eax,%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	$1,-12(%ebp)
	movl	8(%ebp),%eax
	call	fpc_dynarray_high
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj9361
	decl	-8(%ebp)
	.balign 4,0x90
Lj9362:
	incl	-8(%ebp)
	movl	8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	SYSTEM_CONCATUTF32TOWIDESTR$UCS4CHAR$WIDESTRING$LONGINT
	cmpl	-8(%ebp),%ebx
	jg	Lj9362
Lj9361:
	movl	-12(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-16(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_UNIMPLEMENTEDUNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	cmpb	$0,operatingsystem_isconsole
	jne	Lj9377
	jmp	Lj9378
Lj9377:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj9381
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj9382
Lj9381:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj9382:
	movl	$_$SYSTEM$_Ld23,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj9389
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj9390
Lj9389:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj9390:
	call	fpc_writeln_end
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj9393
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj9394
Lj9393:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj9394:
	movl	$_$SYSTEM$_Ld24,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj9401
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj9402
Lj9401:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj9402:
	call	fpc_writeln_end
Lj9378:
	movl	%ebp,%edx
	movl	$233,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_GENERICUNICODECASE$UNICODESTRING$$UNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	call	SYSTEM_UNIMPLEMENTEDUNICODESTRING
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_COMPAREUNICODESTRING$UNICODESTRING$UNICODESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	call	SYSTEM_UNIMPLEMENTEDUNICODESTRING
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_COMPARETEXTUNICODESTRING$UNICODESTRING$UNICODESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	call	SYSTEM_UNIMPLEMENTEDUNICODESTRING
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INITUNICODESTRINGMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	movl	$SYSTEM_DEFAULTUNICODE2ANSIMOVE$PUNICODECHAR$ANSISTRING$WORD$LONGINT,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+80
	movl	$SYSTEM_DEFAULTANSI2UNICODEMOVE$PCHAR$WORD$UNICODESTRING$LONGINT,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+84
	movl	$SYSTEM_GENERICUNICODECASE$UNICODESTRING$$UNICODESTRING,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+88
	movl	$SYSTEM_GENERICUNICODECASE$UNICODESTRING$$UNICODESTRING,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+92
	movl	$SYSTEM_COMPAREUNICODESTRING$UNICODESTRING$UNICODESTRING$$LONGINT,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+96
	movl	$SYSTEM_COMPARETEXTUNICODESTRING$UNICODESTRING$UNICODESTRING$$LONGINT,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+100
	movl	$SYSTEM_DEFAULTUNICODE2ANSIMOVE$PUNICODECHAR$ANSISTRING$WORD$LONGINT,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER
	movl	$SYSTEM_DEFAULTANSI2UNICODEMOVE$PCHAR$WORD$UNICODESTRING$LONGINT,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+4
	movl	$SYSTEM_GENERICUNICODECASE$UNICODESTRING$$UNICODESTRING,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+8
	movl	$SYSTEM_GENERICUNICODECASE$UNICODESTRING$$UNICODESTRING,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+12
	movl	$SYSTEM_COMPAREUNICODESTRING$UNICODESTRING$UNICODESTRING$$LONGINT,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+16
	movl	$SYSTEM_COMPARETEXTUNICODESTRING$UNICODESTRING$UNICODESTRING$$LONGINT,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+20
	movl	$SYSTEM_DEFAULTCHARLENGTHPCHAR$PCHAR$$LONGINT,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+24
	movl	$SYSTEM_DEFAULTCODEPOINTLENGTH$PCHAR$LONGINT$$LONGINT,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+28
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_dynarray_rangecheck
fpc_dynarray_rangecheck:
.globl	FPC_DYNARRAY_RANGECHECK
FPC_DYNARRAY_RANGECHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj9448
	jmp	Lj9445
Lj9448:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj9445
	jmp	Lj9447
Lj9447:
	movl	-4(%ebp),%eax
	subl	$8,%eax
	movl	4(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj9445
	jmp	Lj9446
Lj9445:
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9446:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_dynarray_length
fpc_dynarray_length:
.globl	FPC_DYNARRAY_LENGTH
FPC_DYNARRAY_LENGTH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj9455
	jmp	Lj9456
Lj9455:
	movl	-4(%ebp),%eax
	subl	$8,%eax
	movl	4(%eax),%eax
	incl	%eax
	movl	%eax,-8(%ebp)
	jmp	Lj9459
Lj9456:
	movl	$0,-8(%ebp)
Lj9459:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_dynarray_high
fpc_dynarray_high:
.globl	FPC_DYNARRAY_HIGH
FPC_DYNARRAY_HIGH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj9464
	jmp	Lj9465
Lj9464:
	movl	-4(%ebp),%eax
	subl	$8,%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj9468
Lj9465:
	movl	$-1,-8(%ebp)
Lj9468:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FPC_DYNARRAY_CLEAR_INTERNAL$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9473
	jmp	Lj9474
Lj9473:
	jmp	Lj9471
Lj9474:
	movl	-8(%ebp),%eax
	movzbl	1(%eax),%eax
	addl	$2,%eax
	addl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	addl	$4,%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	incl	%ecx
	movl	-4(%ebp),%eax
	addl	$8,%eax
	movl	-12(%ebp),%edx
	call	FPC_FINALIZE_ARRAY
	movl	-4(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj9471:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_dynarray_clear
fpc_dynarray_clear:
.globl	FPC_DYNARRAY_CLEAR
FPC_DYNARRAY_CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9491
	jmp	Lj9492
Lj9491:
	jmp	Lj9489
Lj9492:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$8,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj9499
	jmp	Lj9500
Lj9499:
	movl	-16(%ebp),%eax
	decl	(%eax)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	seteb	%bl
	jmp	Lj9503
Lj9500:
	movl	-16(%ebp),%eax
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj9503:
	testb	%bl,%bl
	jne	Lj9495
	jmp	Lj9496
Lj9495:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$8,%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_FPC_DYNARRAY_CLEAR_INTERNAL$POINTER$POINTER
Lj9496:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj9489:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_dynarray_decr_ref
fpc_dynarray_decr_ref:
.globl	FPC_DYNARRAY_DECR_REF
FPC_DYNARRAY_DECR_REF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9516
	jmp	Lj9517
Lj9516:
	jmp	Lj9514
Lj9517:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$8,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9520
	jmp	Lj9521
Lj9520:
	movl	%ebp,%edx
	movl	$204,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9521:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj9530
	jmp	Lj9531
Lj9530:
	movl	-16(%ebp),%eax
	decl	(%eax)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	seteb	%bl
	jmp	Lj9534
Lj9531:
	movl	-16(%ebp),%eax
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj9534:
	testb	%bl,%bl
	jne	Lj9526
	jmp	Lj9527
Lj9526:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_FPC_DYNARRAY_CLEAR_INTERNAL$POINTER$POINTER
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj9527:
Lj9514:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_dynarray_incr_ref
fpc_dynarray_incr_ref:
.globl	FPC_DYNARRAY_INCR_REF
FPC_DYNARRAY_INCR_REF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9547
	jmp	Lj9548
Lj9547:
	jmp	Lj9545
Lj9548:
	movl	-4(%ebp),%eax
	subl	$8,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9551
	jmp	Lj9552
Lj9551:
	movl	%ebp,%edx
	movl	$204,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9552:
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj9559
	jmp	Lj9560
Lj9559:
	movl	-12(%ebp),%eax
	incl	(%eax)
	jmp	Lj9561
Lj9560:
	movl	-12(%ebp),%eax
	call	SYSTEM_CPUINCLOCKED$LONGINT
Lj9561:
Lj9545:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_dynarray_setlength
fpc_dynarray_setlength:
.globl	FPC_DYNARR_SETLENGTH
FPC_DYNARR_SETLENGTH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	movzbl	1(%eax),%eax
	addl	$2,%eax
	addl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-36(%ebp),%eax
	addl	$4,%eax
	movl	(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	movl	-44(%ebp),%edx
	imull	%edx,%eax
	addl	$8,%eax
	movl	%eax,-24(%ebp)
	movb	$0,-37(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj9581
	jmp	Lj9580
Lj9580:
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	cmpl	$0,%eax
	jl	Lj9582
	jmp	Lj9583
Lj9582:
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9583:
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj9588
	jmp	Lj9589
Lj9588:
	jmp	Lj9564
Lj9589:
	movl	-24(%ebp),%edx
	leal	-32(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-32(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movb	$1,-37(%ebp)
	jmp	Lj9602
Lj9581:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$8,%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	cmpl	$0,%eax
	jle	Lj9607
	jmp	Lj9608
Lj9607:
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	cmpl	$0,%eax
	jl	Lj9609
	jmp	Lj9610
Lj9609:
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9610:
	movl	-28(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj9619
	jmp	Lj9620
Lj9619:
	movl	-52(%ebp),%eax
	decl	(%eax)
	movl	-52(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	seteb	%bl
	jmp	Lj9623
Lj9620:
	movl	-52(%ebp),%eax
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj9623:
	testb	%bl,%bl
	jne	Lj9615
	jmp	Lj9616
Lj9615:
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	call	SYSTEM_FPC_DYNARRAY_CLEAR_INTERNAL$POINTER$POINTER
Lj9616:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj9564
Lj9608:
	movl	-28(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	jne	Lj9634
	jmp	Lj9635
Lj9634:
	movb	$1,-37(%ebp)
	movl	-24(%ebp),%edx
	leal	-32(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-32(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	-28(%ebp),%ecx
	movl	(%edx,%eax,4),%eax
	cmpl	4(%ecx),%eax
	jg	Lj9648
	jmp	Lj9649
Lj9648:
	movl	-28(%ebp),%eax
	movl	4(%eax),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj9652
Lj9649:
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-20(%ebp)
Lj9652:
	movl	-44(%ebp),%ecx
	movl	-20(%ebp),%eax
	imull	%eax,%ecx
	movl	-32(%ebp),%edx
	addl	$8,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-20(%ebp),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj9662
	decl	-16(%ebp)
	.balign 4,0x90
Lj9663:
	incl	-16(%ebp)
	movl	-44(%ebp),%eax
	movl	-16(%ebp),%edx
	imull	%edx,%eax
	movl	-32(%ebp),%edx
	addl	$8,%edx
	addl	%edx,%eax
	movl	-48(%ebp),%edx
	call	FPC_ADDREF
	cmpl	-16(%ebp),%ebx
	jg	Lj9663
Lj9662:
	movl	-28(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj9672
	jmp	Lj9673
Lj9672:
	movl	-52(%ebp),%eax
	decl	(%eax)
	movl	-52(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	seteb	%bl
	jmp	Lj9676
Lj9673:
	movl	-52(%ebp),%eax
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj9676:
	testb	%bl,%bl
	jne	Lj9668
	jmp	Lj9669
Lj9668:
	movl	-36(%ebp),%edx
	movl	-28(%ebp),%eax
	call	SYSTEM_FPC_DYNARRAY_CLEAR_INTERNAL$POINTER$POINTER
Lj9669:
	jmp	Lj9685
Lj9635:
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	-28(%ebp),%edx
	movl	4(%edx),%edx
	incl	%edx
	cmpl	(%ecx,%eax,4),%edx
	jne	Lj9686
	jmp	Lj9687
Lj9686:
	movl	-24(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj9688
	jmp	Lj9690
Lj9690:
	movl	-44(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj9691
	jmp	Lj9689
Lj9691:
	movl	-24(%ebp),%eax
	cmpl	-44(%ebp),%eax
	jl	Lj9688
	jmp	Lj9689
Lj9688:
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9689:
	movl	-28(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj9696
	jmp	Lj9697
Lj9696:
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	-28(%ebp),%edx
	movl	4(%edx),%edx
	incl	%edx
	cmpl	(%ecx,%eax,4),%edx
	jg	Lj9698
	jmp	Lj9699
Lj9698:
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	movl	-44(%ebp),%edx
	imull	%edx,%eax
	movl	-28(%ebp),%edx
	addl	$8,%edx
	addl	%edx,%eax
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%edx
	decl	%edx
	movl	-28(%ebp),%ebx
	movl	(%ecx,%edx,4),%ecx
	movl	4(%ebx),%edx
	subl	%ecx,%edx
	movl	%edx,%ecx
	incl	%ecx
	movl	-48(%ebp),%edx
	call	FPC_FINALIZE_ARRAY
	movl	-24(%ebp),%edx
	leal	-28(%ebp),%eax
	call	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	jmp	Lj9710
Lj9699:
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	-28(%ebp),%edx
	movl	4(%edx),%edx
	incl	%edx
	cmpl	(%ecx,%eax,4),%edx
	jl	Lj9711
	jmp	Lj9712
Lj9711:
	movl	-24(%ebp),%edx
	leal	-28(%ebp),%eax
	call	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	-28(%ebp),%ecx
	movl	(%edx,%eax,4),%edx
	movl	4(%ecx),%eax
	subl	%eax,%edx
	decl	%edx
	movl	-44(%ebp),%eax
	imull	%eax,%edx
	movl	-28(%ebp),%eax
	movl	4(%eax),%eax
	incl	%eax
	movl	-44(%ebp),%ecx
	imull	%ecx,%eax
	movl	-28(%ebp),%ecx
	addl	$8,%ecx
	addl	%ecx,%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
Lj9712:
Lj9710:
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
	movb	$1,-37(%ebp)
Lj9697:
Lj9687:
Lj9685:
Lj9602:
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj9727
	jmp	Lj9728
Lj9727:
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj9730
	decl	-16(%ebp)
	.balign 4,0x90
Lj9731:
	incl	-16(%ebp)
	pushl	8(%ebp)
	movl	-16(%ebp),%eax
	movl	-44(%ebp),%edx
	imull	%edx,%eax
	movl	-32(%ebp),%edx
	addl	$8,%edx
	addl	%edx,%eax
	movl	-12(%ebp),%ecx
	decl	%ecx
	movl	-48(%ebp),%edx
	call	FPC_DYNARR_SETLENGTH
	cmpl	-16(%ebp),%ebx
	jg	Lj9731
Lj9730:
Lj9728:
	cmpb	$0,-37(%ebp)
	jne	Lj9740
	jmp	Lj9741
Lj9740:
	movl	-32(%ebp),%eax
	addl	$8,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	movl	-32(%ebp),%eax
	movl	$1,(%eax)
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%edx
	decl	%edx
	movl	-32(%ebp),%eax
	movl	%edx,4(%eax)
Lj9741:
Lj9564:
	movl	-56(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_dynarray_copy
fpc_dynarray_copy:
.globl	FPC_DYNARR_COPY
FPC_DYNARR_COPY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	movl	%eax,-40(%ebp)
	movl	$0,-52(%ebp)
	movl	-52(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9756
	jmp	Lj9757
Lj9756:
	jmp	Lj9748
Lj9757:
	movl	-4(%ebp),%eax
	subl	$8,%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movzbl	1(%eax),%eax
	addl	$2,%eax
	addl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-8(%ebp),%eax
	addl	$4,%eax
	movl	(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj9770
	jmp	Lj9769
Lj9770:
	movl	-40(%ebp),%eax
	cmpl	$-3,%eax
	je	Lj9768
	jmp	Lj9769
Lj9768:
	movl	$0,-12(%ebp)
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-40(%ebp)
Lj9769:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj9775
	jmp	Lj9778
Lj9778:
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj9775
	jmp	Lj9777
Lj9777:
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj9775
	jmp	Lj9776
Lj9775:
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9776:
	movl	-40(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	%edx,-28(%ebp)
	movl	-24(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	cmpl	-28(%ebp),%edx
	jl	Lj9785
	jmp	Lj9786
Lj9785:
	movl	-24(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	%edx,-28(%ebp)
Lj9786:
	movl	-44(%ebp),%eax
	movl	-28(%ebp),%edx
	imull	%edx,%eax
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%edx
	addl	$8,%edx
	leal	-20(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-20(%ebp),%eax
	addl	$8,%eax
	movl	%eax,-52(%ebp)
	movl	-44(%ebp),%eax
	movl	-12(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	-52(%ebp),%edx
	movl	-36(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-20(%ebp),%eax
	movl	$1,(%eax)
	movl	-28(%ebp),%eax
	decl	%eax
	movl	-20(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-48(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$9,%eax
	cmpl	$6,%eax
	jb	Lj9809
	cmpl	$7,%eax
	stc
	je	Lj9809
	cmpl	$12,%eax
	stc
	je	Lj9809
	cmpl	$15,%eax
	stc
	je	Lj9809
	clc
Lj9809:
	jc	Lj9807
	jmp	Lj9808
Lj9807:
	movl	-28(%ebp),%ebx
	decl	%ebx
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%ebx
	jl	Lj9811
	decl	-32(%ebp)
	.balign 4,0x90
Lj9812:
	incl	-32(%ebp)
	movl	-44(%ebp),%eax
	movl	-32(%ebp),%edx
	imull	%edx,%eax
	movl	-52(%ebp),%edx
	addl	%edx,%eax
	movl	-48(%ebp),%edx
	call	FPC_ADDREF
	cmpl	-32(%ebp),%ebx
	jg	Lj9812
Lj9811:
Lj9808:
	movl	-52(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj9748:
	movl	-16(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_DYNARRAYSETLENGTH$POINTER$POINTER$LONGINT$PSIZEINT
SYSTEM_DYNARRAYSETLENGTH$POINTER$POINTER$LONGINT$PSIZEINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$11,%eax
	jle	Lj9821
	jmp	Lj9822
Lj9821:
	leal	-56(%ebp),%eax
	movl	%eax,-64(%ebp)
	jmp	Lj9825
Lj9822:
	movl	-12(%ebp),%edx
	shll	$2,%edx
	leal	-64(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
Lj9825:
	movl	-12(%ebp),%eax
	decl	%eax
	movl	$0,-60(%ebp)
	cmpl	-60(%ebp),%eax
	jl	Lj9831
	decl	-60(%ebp)
	.balign 4,0x90
Lj9832:
	incl	-60(%ebp)
	movl	8(%ebp),%ebx
	movl	-12(%ebp),%edx
	decl	%edx
	movl	-60(%ebp),%ecx
	subl	%ecx,%edx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%ecx
	movl	(%ebx,%edx,4),%edx
	movl	%edx,(%esi,%ecx,4)
	cmpl	-60(%ebp),%eax
	jg	Lj9832
Lj9831:
	pushl	-64(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_DYNARR_SETLENGTH
	leal	-56(%ebp),%eax
	cmpl	-64(%ebp),%eax
	jne	Lj9843
	jmp	Lj9844
Lj9843:
	movl	-64(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj9844:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_DODISPCALLBYIDERROR$POINTER$IDISPATCH$PDISPDESC$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	%ebp,%edx
	movzbl	TC_SYSTEM_RUNTIMEERROREXITCODES+17,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_dispatch_by_id
fpc_dispatch_by_id:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	8(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_DISPCALLBYIDPROC,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_do_is
fpc_do_is:
.globl	FPC_DO_IS
FPC_DO_IS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jne	Lj9868
	jmp	Lj9866
Lj9868:
	cmpl	$0,-4(%ebp)
	jne	Lj9867
	jmp	Lj9866
Lj9867:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	jne	Lj9865
	jmp	Lj9866
Lj9865:
	movb	$1,-9(%ebp)
	jmp	Lj9873
Lj9866:
	movb	$0,-9(%ebp)
Lj9873:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_do_as
fpc_do_as:
.globl	FPC_DO_AS
FPC_DO_AS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jne	Lj9878
	jmp	Lj9877
Lj9878:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	je	Lj9876
	jmp	Lj9877
Lj9876:
	movl	%ebp,%edx
	movl	$219,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9877:
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_intf_decr_ref
fpc_intf_decr_ref:
.globl	FPC_INTF_DECR_REF
FPC_INTF_DECR_REF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj9891
	jmp	Lj9892
Lj9891:
	movl	-4(%ebp),%eax
	pushl	(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	call	*8(%eax)
	popl	%ebx
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj9892:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_intf_incr_ref
fpc_intf_incr_ref:
.globl	FPC_INTF_INCR_REF
FPC_INTF_INCR_REF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj9899
	jmp	Lj9900
Lj9899:
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*4(%eax)
	popl	%ebx
Lj9900:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_intf_assign
fpc_intf_assign:
.globl	FPC_INTF_ASSIGN
FPC_INTF_ASSIGN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jne	Lj9905
	jmp	Lj9906
Lj9905:
	pushl	-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	*4(%eax)
	popl	%ebx
Lj9906:
	movl	-4(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj9909
	jmp	Lj9910
Lj9909:
	movl	-4(%ebp),%eax
	pushl	(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	call	*8(%eax)
	popl	%ebx
Lj9910:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_intf_is
fpc_intf_is:
.globl	FPC_INTF_IS
FPC_INTF_IS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj9921
	jmp	Lj9920
Lj9921:
	leal	-16(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj9919
	jmp	Lj9920
Lj9919:
	movb	$1,-9(%ebp)
	jmp	Lj9928
Lj9920:
	movb	$0,-9(%ebp)
Lj9928:
	cmpl	$0,-16(%ebp)
	jne	Lj9929
	jmp	Lj9930
Lj9929:
	pushl	-16(%ebp)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	call	*8(%eax)
	popl	%ebx
Lj9930:
	movb	-9(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_intf_is_class
fpc_intf_is_class:
.globl	FPC_INTF_IS_CLASS
FPC_INTF_IS_CLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj9938
	jmp	Lj9936
Lj9938:
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	$TC_SYSTEM_IOBJECTINSTANCE
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj9937
	jmp	Lj9936
Lj9937:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	jne	Lj9935
	jmp	Lj9936
Lj9935:
	movb	$1,-9(%ebp)
	jmp	Lj9949
Lj9936:
	movb	$0,-9(%ebp)
Lj9949:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_class_is_intf
fpc_class_is_intf:
.globl	FPC_CLASS_IS_INTF
FPC_CLASS_IS_INTF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj9958
	jmp	Lj9957
Lj9958:
	movl	$_$SYSTEM$_Ld25,%edx
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj9960
	jmp	Lj9959
Lj9960:
	leal	-16(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	-20(%ebp)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj9956
	jmp	Lj9959
Lj9959:
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj9956
	jmp	Lj9957
Lj9956:
	movb	$1,-9(%ebp)
	jmp	Lj9979
Lj9957:
	movb	$0,-9(%ebp)
Lj9979:
	cmpl	$0,-16(%ebp)
	jne	Lj9980
	jmp	Lj9981
Lj9980:
	pushl	-16(%ebp)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	call	*8(%eax)
	popl	%ebx
Lj9981:
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_class_is_corbaintf
fpc_class_is_corbaintf:
.globl	FPC_CLASS_IS_CORBAINTF
FPC_CLASS_IS_CORBAINTF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj9988
	jmp	Lj9987
Lj9988:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY
	testl	%eax,%eax
	jne	Lj9986
	jmp	Lj9987
Lj9986:
	movb	$1,-9(%ebp)
	jmp	Lj9993
Lj9987:
	movb	$0,-9(%ebp)
Lj9993:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_intf_cast
fpc_intf_cast:
.globl	FPC_INTF_CAST
FPC_INTF_CAST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj10000
	jmp	Lj9999
Lj10000:
	leal	-16(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj9998
	jmp	Lj9999
Lj9998:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj10009
Lj9999:
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_INTF_DECR_REF
	movl	$0,(%ebx)
Lj10009:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_intf_cast_class
fpc_intf_cast_class:
.globl	FPC_INTF_CAST_CLASS
FPC_INTF_CAST_CLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj10017
	jmp	Lj10015
Lj10017:
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	$TC_SYSTEM_IOBJECTINSTANCE
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj10016
	jmp	Lj10015
Lj10016:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	jne	Lj10014
	jmp	Lj10015
Lj10014:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj10030
Lj10015:
	movl	$0,-12(%ebp)
Lj10030:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_class_cast_intf
fpc_class_cast_intf:
.globl	FPC_CLASS_CAST_INTF
FPC_CLASS_CAST_INTF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj10041
	jmp	Lj10040
Lj10041:
	movl	$_$SYSTEM$_Ld26,%edx
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj10043
	jmp	Lj10042
Lj10043:
	leal	-16(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	-20(%ebp)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj10039
	jmp	Lj10042
Lj10042:
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj10039
	jmp	Lj10040
Lj10039:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj10064
Lj10040:
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_INTF_DECR_REF
	movl	$0,(%ebx)
Lj10064:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_class_cast_corbaintf
fpc_class_cast_corbaintf:
.globl	FPC_CLASS_CAST_CORBAINTF
FPC_CLASS_CAST_CORBAINTF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj10071
	jmp	Lj10070
Lj10071:
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj10069
	jmp	Lj10070
Lj10069:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj10080
Lj10070:
	movl	$0,-12(%ebp)
Lj10080:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_intf_as
fpc_intf_as:
.globl	FPC_INTF_AS
FPC_INTF_AS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj10085
	jmp	Lj10086
Lj10085:
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	jne	Lj10089
	jmp	Lj10090
Lj10089:
	movl	$219,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj10090:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj10101
Lj10086:
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_INTF_DECR_REF
	movl	$0,(%ebx)
Lj10101:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_intf_as_class
fpc_intf_as_class:
.globl	FPC_INTF_AS_CLASS
FPC_INTF_AS_CLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj10106
	jmp	Lj10107
Lj10106:
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	$TC_SYSTEM_IOBJECTINSTANCE
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj10110
	jmp	Lj10108
Lj10110:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	jne	Lj10109
	jmp	Lj10108
Lj10108:
	movl	$219,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj10109:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj10125
Lj10107:
	movl	$0,-12(%ebp)
Lj10125:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_class_as_intf
fpc_class_as_intf:
.globl	FPC_CLASS_AS_INTF
FPC_CLASS_AS_INTF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj10130
	jmp	Lj10131
Lj10130:
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$_$SYSTEM$_Ld27,%edx
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj10139
	jmp	Lj10138
Lj10139:
	leal	-16(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	-20(%ebp)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj10137
	jmp	Lj10138
Lj10138:
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj10137
	jmp	Lj10136
Lj10136:
	movl	$219,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj10137:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj10162
Lj10131:
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_INTF_DECR_REF
	movl	$0,(%ebx)
Lj10162:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_class_as_corbaintf
fpc_class_as_corbaintf:
.globl	FPC_CLASS_AS_CORBAINTF
FPC_CLASS_AS_CORBAINTF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj10167
	jmp	Lj10168
Lj10167:
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN
	testb	%al,%al
	je	Lj10171
	jmp	Lj10172
Lj10171:
	movl	$219,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj10172:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj10183
Lj10168:
	movl	$0,-12(%ebp)
Lj10183:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__CREATE$$TOBJECT
SYSTEM_TOBJECT_$__CREATE$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj10188
	jmp	Lj10189
Lj10188:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj10189:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj10194
	jmp	Lj10195
Lj10194:
	jmp	Lj10186
Lj10195:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj10198
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10204
	jmp	Lj10203
Lj10204:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10202
	jmp	Lj10203
Lj10202:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj10203:
Lj10198:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj10200
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj10208
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10209
	jmp	Lj10210
Lj10209:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj10210:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj10208:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj10207
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj10207:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj10200
Lj10200:
Lj10186:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__DESTROY
SYSTEM_TOBJECT_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj10217
	jmp	Lj10218
Lj10217:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj10218:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10223
	jmp	Lj10222
Lj10223:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10221
	jmp	Lj10222
Lj10221:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj10222:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__FREE
SYSTEM_TOBJECT_$__FREE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10228
	jmp	Lj10229
Lj10228:
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj10229:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__INSTANCESIZE$$LONGINT
SYSTEM_TOBJECT_$__INSTANCESIZE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INITINTERFACEPOINTERS$TCLASS$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj10243
	.balign 4,0x90
Lj10242:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj10247
	jmp	Lj10248
Lj10247:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	leal	4(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj10254
	.balign 4,0x90
Lj10253:
	movl	-24(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj10256
	jmp	Lj10257
Lj10256:
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	8(%eax),%eax
	leal	(%edx,%eax,1),%edx
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,(%edx)
Lj10257:
	addl	$20,-24(%ebp)
	decl	-16(%ebp)
Lj10254:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj10253
	jmp	Lj10255
Lj10255:
Lj10248:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
Lj10243:
	cmpl	$0,-12(%ebp)
	jne	Lj10262
	jmp	Lj10244
Lj10262:
	movl	$FPC_EMPTYINTF,%eax
	movl	-12(%ebp),%edx
	cmpl	40(%edx),%eax
	jne	Lj10242
	jmp	Lj10244
Lj10244:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__INITINSTANCE$POINTER$$TOBJECT
SYSTEM_TOBJECT_$__INITINSTANCE$POINTER$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,(%edx)
	movl	$FPC_EMPTYINTF,%eax
	movl	-8(%ebp),%edx
	cmpl	40(%edx),%eax
	jne	Lj10275
	jmp	Lj10276
Lj10275:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_INITINTERFACEPOINTERS$TCLASS$POINTER
Lj10276:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__CLASSPARENT$$TCLASS
SYSTEM_TOBJECT_$__CLASSPARENT$$TCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	leal	-12(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10295
	jmp	Lj10296
Lj10295:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	movl	$FPC_EMPTYINTF,%eax
	movl	-4(%ebp),%edx
	cmpl	40(%edx),%eax
	jne	Lj10308
	jmp	Lj10309
Lj10308:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_INITINTERFACEPOINTERS$TCLASS$POINTER
Lj10309:
	movl	-12(%ebp),%eax
Lj10296:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__FREEINSTANCE
SYSTEM_TOBJECT_$__FREEINSTANCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__CLEANUPINSTANCE
	movl	-4(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__CLASSTYPE$$TCLASS
SYSTEM_TOBJECT_$__CLASSTYPE$$TCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__METHODADDRESS$SHORTSTRING$$POINTER
SYSTEM_TOBJECT_$__METHODADDRESS$SHORTSTRING$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj10333
	.balign 4,0x90
Lj10332:
	movl	-24(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj10337
	jmp	Lj10338
Lj10337:
	movl	-16(%ebp),%eax
	movl	(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jb	Lj10340
	decl	-20(%ebp)
	.balign 4,0x90
Lj10341:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	-4(%ebp),%edx
	call	SYSTEM_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$LONGINT
	testl	%eax,%eax
	je	Lj10342
	jmp	Lj10343
Lj10342:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	8(%edx,%eax,8),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj10328
Lj10343:
	cmpl	-20(%ebp),%ebx
	ja	Lj10341
Lj10340:
Lj10338:
	movl	-24(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
Lj10333:
	cmpl	$0,-24(%ebp)
	jne	Lj10332
	jmp	Lj10334
Lj10334:
	movl	$0,-12(%ebp)
Lj10328:
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__METHODNAME$POINTER$$SHORTSTRING
SYSTEM_TOBJECT_$__METHODNAME$POINTER$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj10359
	.balign 4,0x90
Lj10358:
	movl	-24(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj10363
	jmp	Lj10364
Lj10363:
	movl	-16(%ebp),%eax
	movl	(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jb	Lj10366
	decl	-20(%ebp)
	.balign 4,0x90
Lj10367:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	8(%eax,%edx,8),%eax
	cmpl	-4(%ebp),%eax
	je	Lj10368
	jmp	Lj10369
Lj10368:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	4(%edx,%eax,8),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	jmp	Lj10354
Lj10369:
	cmpl	-20(%ebp),%ebx
	ja	Lj10367
Lj10366:
Lj10364:
	movl	-24(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
Lj10359:
	cmpl	$0,-24(%ebp)
	jne	Lj10358
	jmp	Lj10360
Lj10360:
	movl	-12(%ebp),%eax
	movb	$0,(%eax)
Lj10354:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__FIELDADDRESS$SHORTSTRING$$POINTER
SYSTEM_TOBJECT_$__FIELDADDRESS$SHORTSTRING$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$0,%eax
	jg	Lj10382
	jmp	Lj10383
Lj10382:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj10391
	.balign 4,0x90
Lj10390:
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10395
	jmp	Lj10396
Lj10395:
	movl	-20(%ebp),%eax
	leal	6(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movzwl	(%eax),%ebx
	decl	%ebx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj10400
	decl	-28(%ebp)
	.balign 4,0x90
Lj10401:
	incl	-28(%ebp)
	movl	-24(%ebp),%eax
	leal	6(%eax),%eax
	movl	-4(%ebp),%edx
	call	SYSTEM_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$LONGINT
	testl	%eax,%eax
	je	Lj10402
	jmp	Lj10403
Lj10402:
	movl	-24(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	jmp	Lj10380
Lj10403:
	movl	-24(%ebp),%eax
	leal	6(%eax),%edx
	incl	%edx
	movl	-24(%ebp),%eax
	movzbl	6(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
	cmpl	-28(%ebp),%ebx
	jg	Lj10401
Lj10400:
Lj10396:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
Lj10391:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10390
	jmp	Lj10392
Lj10392:
Lj10383:
	movl	$0,-12(%ebp)
Lj10380:
	movl	-12(%ebp),%eax
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$-2147418113,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__CLASSINFO$$POINTER
SYSTEM_TOBJECT_$__CLASSINFO$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING
SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__CLASSNAMEIS$SHORTSTRING$$BOOLEAN
SYSTEM_TOBJECT_$__CLASSNAMEIS$SHORTSTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	call	SYSTEM_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$LONGINT
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj10442
	jmp	Lj10443
Lj10442:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj10447
	.balign 4,0x90
Lj10446:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
Lj10447:
	cmpl	$0,-16(%ebp)
	jne	Lj10451
	jmp	Lj10448
Lj10451:
	movl	-16(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj10446
	jmp	Lj10448
Lj10448:
	movl	-16(%ebp),%eax
	cmpl	-4(%ebp),%eax
	seteb	-9(%ebp)
	jmp	Lj10454
Lj10443:
	movb	$0,-9(%ebp)
Lj10454:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__STRINGMESSAGETABLE$$PSTRINGMESSAGETABLE
SYSTEM_TOBJECT_$__STRINGMESSAGETABLE$$PSTRINGMESSAGETABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__DISPATCH$formal
SYSTEM_TOBJECT_$__DISPATCH$formal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$48,%esp
	movl	%ebx,-48(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-44(%ebp),%eax
	movl	%eax,-32(%ebp)
	jmp	Lj10472
	.balign 4,0x90
Lj10471:
	movl	-32(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-28(%ebp)
	cmpl	$0,-28(%ebp)
	jne	Lj10476
	jmp	Lj10477
Lj10476:
	movl	-28(%ebp),%eax
	leal	4(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-28(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj10482
Lj10477:
	movl	$0,-16(%ebp)
Lj10482:
	movl	-16(%ebp),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj10486
	decl	-20(%ebp)
	.balign 4,0x90
Lj10487:
	incl	-20(%ebp)
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,8),%eax
	cmpl	-12(%ebp),%eax
	je	Lj10488
	jmp	Lj10489
Lj10488:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	%eax,-40(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-4(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	-40(%ebp),%ecx
	call	*%ecx
	jmp	Lj10461
Lj10489:
	cmpl	-20(%ebp),%ebx
	jg	Lj10487
Lj10486:
	movl	-32(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-32(%ebp)
Lj10472:
	cmpl	$0,-32(%ebp)
	jne	Lj10471
	jmp	Lj10473
Lj10473:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*64(%ecx)
Lj10461:
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
SYSTEM_TOBJECT_$__DISPATCHSTR$formal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$300,%esp
	movl	%ebx,-300(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-296(%ebp)
	movl	-296(%ebp),%eax
	movl	%eax,-284(%ebp)
	jmp	Lj10519
	.balign 4,0x90
Lj10518:
	movl	-284(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,-280(%ebp)
	movl	-280(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10525
	jmp	Lj10524
Lj10525:
	movl	-280(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj10523
	jmp	Lj10524
Lj10523:
	movl	-280(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-268(%ebp)
	movl	-280(%ebp),%eax
	leal	4(%eax),%eax
	movl	%eax,-276(%ebp)
	jmp	Lj10530
Lj10524:
	movl	$0,-268(%ebp)
Lj10530:
	movl	-268(%ebp),%ebx
	decl	%ebx
	movl	$0,-272(%ebp)
	cmpl	-272(%ebp),%ebx
	jl	Lj10534
	decl	-272(%ebp)
	.balign 4,0x90
Lj10535:
	incl	-272(%ebp)
	movl	-276(%ebp),%edx
	movl	-272(%ebp),%eax
	movl	(%edx,%eax,8),%edx
	leal	-264(%ebp),%eax
	call	fpc_shortstr_compare_equal
	testl	%eax,%eax
	je	Lj10536
	jmp	Lj10537
Lj10536:
	movl	-276(%ebp),%eax
	movl	-272(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	%eax,-292(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-288(%ebp)
	movl	-4(%ebp),%edx
	movl	-288(%ebp),%eax
	movl	-292(%ebp),%ecx
	call	*%ecx
	jmp	Lj10504
Lj10537:
	cmpl	-272(%ebp),%ebx
	jg	Lj10535
Lj10534:
	movl	-284(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-284(%ebp)
Lj10519:
	cmpl	$0,-284(%ebp)
	jne	Lj10518
	jmp	Lj10520
Lj10520:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*76(%ecx)
Lj10504:
	movl	-300(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__CLEANUPINSTANCE
SYSTEM_TOBJECT_$__CLEANUPINSTANCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj10569
	.balign 4,0x90
Lj10568:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj10573
	jmp	Lj10574
Lj10573:
	incl	-12(%ebp)
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	incl	%eax
	addl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%esi
	movl	$1,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj10584
	decl	-20(%ebp)
	.balign 4,0x90
Lj10585:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,8),%ebx
	movl	(%ebx),%edx
	movl	-4(%ebp),%eax
	movl	4(%ebx),%ecx
	addl	%ecx,%eax
	call	FPC_FINALIZE
	cmpl	-20(%ebp),%esi
	jg	Lj10585
Lj10584:
Lj10574:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
Lj10569:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10568
	jmp	Lj10570
Lj10570:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
SYSTEM_TOBJECT_$__AFTERCONSTRUCTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
SYSTEM_TOBJECT_$__BEFOREDESTRUCTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%eax),%eax
	cmpl	(%edx),%eax
	je	Lj10604
	jmp	Lj10601
Lj10604:
	movl	-4(%ebp),%eax
	leal	4(%eax),%ecx
	movl	-8(%ebp),%eax
	leal	4(%eax),%edx
	movl	(%ecx),%eax
	cmpl	(%edx),%eax
	je	Lj10603
	jmp	Lj10601
Lj10603:
	movl	-4(%ebp),%eax
	leal	8(%eax),%edx
	movl	-8(%ebp),%eax
	leal	8(%eax),%ecx
	movl	(%edx),%eax
	cmpl	(%ecx),%eax
	je	Lj10602
	jmp	Lj10601
Lj10602:
	movl	-4(%ebp),%eax
	leal	12(%eax),%edx
	movl	-8(%ebp),%eax
	leal	12(%eax),%ecx
	movl	(%edx),%eax
	cmpl	(%ecx),%eax
	je	Lj10600
	jmp	Lj10601
Lj10600:
	movb	$1,-9(%ebp)
	jmp	Lj10605
Lj10601:
	movb	$0,-9(%ebp)
Lj10605:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-8(%ebp)
	jne	Lj10614
	jmp	Lj10613
Lj10614:
	cmpl	$0,-4(%ebp)
	jne	Lj10612
	jmp	Lj10613
Lj10612:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj10617
	decl	%eax
	je	Lj10619
	decl	%eax
	je	Lj10621
	decl	%eax
	je	Lj10618
	decl	%eax
	je	Lj10620
	decl	%eax
	je	Lj10622
	decl	%eax
	je	Lj10618
	jmp	Lj10616
Lj10617:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	%edx,(%eax)
	jmp	Lj10615
Lj10618:
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	addl	%eax,%ecx
	movl	-12(%ebp),%edx
	movl	(%ecx),%eax
	movl	%eax,(%edx)
	jmp	Lj10615
Lj10619:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%eax),%edx
	movl	8(%ecx),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%ecx
	call	*%ecx
	jmp	Lj10615
Lj10620:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%eax),%ecx
	movl	8(%edx),%eax
	addl	%eax,%ecx
	movl	(%ecx),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	call	*%edx
	movl	-12(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj10615
Lj10621:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%ecx
	call	*%ecx
	jmp	Lj10615
Lj10622:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	call	*%edx
	movl	-12(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj10615
Lj10616:
Lj10615:
Lj10613:
	movl	-12(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj10651
	jmp	Lj10652
Lj10651:
	movb	$1,-13(%ebp)
	jmp	Lj10653
Lj10652:
	movb	$0,-13(%ebp)
Lj10653:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN
SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	$TC_SYSTEM_IOBJECTINSTANCE,%eax
	call	SYSTEM_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
	testb	%al,%al
	jne	Lj10656
	jmp	Lj10657
Lj10656:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,(%edx)
	movb	$1,-13(%ebp)
	jmp	Lj10654
Lj10657:
	movl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	.balign 4,0x90
Lj10668:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	call	SYSTEM_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj10685
	jmp	Lj10687
Lj10687:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$4,%eax
	jb	Lj10688
Lj10688:
	jc	Lj10685
	jmp	Lj10686
Lj10685:
	jmp	Lj10670
Lj10686:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj10668
Lj10670:
	cmpb	$0,-13(%ebp)
	jne	Lj10693
	jmp	Lj10692
Lj10693:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	je	Lj10694
	cmpl	$3,%eax
	je	Lj10694
Lj10694:
	je	Lj10691
	jmp	Lj10692
Lj10691:
	movl	-8(%ebp),%eax
	pushl	(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	call	*4(%eax)
	popl	%ebx
Lj10692:
Lj10654:
	movb	-13(%ebp),%al
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
SYSTEM_TOBJECT_$__GETINTERFACEWEAK$TGUID$formal$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	$TC_SYSTEM_IOBJECTINSTANCE,%eax
	call	SYSTEM_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
	testb	%al,%al
	jne	Lj10699
	jmp	Lj10700
Lj10699:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,(%edx)
	movb	$1,-13(%ebp)
	jmp	Lj10697
Lj10700:
	movl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	.balign 4,0x90
Lj10711:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	call	SYSTEM_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj10728
	jmp	Lj10730
Lj10730:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$4,%eax
	jb	Lj10731
Lj10731:
	jc	Lj10728
	jmp	Lj10729
Lj10728:
	jmp	Lj10713
Lj10729:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj10711
Lj10713:
	cmpb	$0,-13(%ebp)
	jne	Lj10736
	jmp	Lj10735
Lj10736:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	je	Lj10737
	cmpl	$3,%eax
	je	Lj10737
Lj10737:
	jne	Lj10734
	jmp	Lj10735
Lj10734:
	movl	-8(%ebp),%eax
	pushl	(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	call	*8(%eax)
	popl	%ebx
Lj10735:
Lj10697:
	movb	-13(%ebp),%al
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__GETINTERFACEBYSTR$SHORTSTRING$formal$$BOOLEAN
SYSTEM_TOBJECT_$__GETINTERFACEBYSTR$SHORTSTRING$formal$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	.balign 4,0x90
Lj10744:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	call	SYSTEM_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj10761
	jmp	Lj10763
Lj10763:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$4,%eax
	jb	Lj10764
Lj10764:
	jc	Lj10761
	jmp	Lj10762
Lj10761:
	jmp	Lj10746
Lj10762:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj10744
Lj10746:
	cmpb	$0,-13(%ebp)
	jne	Lj10770
	jmp	Lj10768
Lj10770:
	movl	-20(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj10769
	jmp	Lj10768
Lj10769:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	je	Lj10771
	cmpl	$3,%eax
	je	Lj10771
Lj10771:
	je	Lj10767
	jmp	Lj10768
Lj10767:
	movl	-8(%ebp),%eax
	pushl	(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	call	*4(%eax)
	popl	%ebx
Lj10768:
	movb	-13(%ebp),%al
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN
SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEBYSTR$SHORTSTRING$formal$$BOOLEAN
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
SYSTEM_TOBJECT_$__GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj10789
	.balign 4,0x90
Lj10788:
	movl	-24(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj10793
	jmp	Lj10794
Lj10793:
	movl	-20(%ebp),%eax
	movl	(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj10796
	decl	-16(%ebp)
	.balign 4,0x90
Lj10797:
	incl	-16(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	imull	$20,%eax
	leal	4(%edx,%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj10802
	jmp	Lj10801
Lj10802:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	call	SYSTEM_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
	testb	%al,%al
	jne	Lj10800
	jmp	Lj10801
Lj10800:
	jmp	Lj10784
Lj10801:
	cmpl	-16(%ebp),%ebx
	jg	Lj10797
Lj10796:
Lj10794:
	movl	-24(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
Lj10789:
	cmpl	$0,-24(%ebp)
	jne	Lj10809
	jmp	Lj10790
Lj10809:
	movl	$FPC_EMPTYINTF,%eax
	movl	-24(%ebp),%edx
	cmpl	40(%edx),%eax
	jne	Lj10788
	jmp	Lj10790
Lj10790:
	movl	$0,-12(%ebp)
Lj10784:
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY
SYSTEM_TOBJECT_$__GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj10817
	.balign 4,0x90
Lj10816:
	movl	-24(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj10821
	jmp	Lj10822
Lj10821:
	movl	-20(%ebp),%eax
	movl	(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj10824
	decl	-16(%ebp)
	.balign 4,0x90
Lj10825:
	incl	-16(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	imull	$20,%eax
	leal	4(%edx,%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj10830
	jmp	Lj10829
Lj10830:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	call	fpc_shortstr_compare_equal
	testl	%eax,%eax
	je	Lj10828
	jmp	Lj10829
Lj10828:
	jmp	Lj10812
Lj10829:
	cmpl	-16(%ebp),%ebx
	jg	Lj10825
Lj10824:
Lj10822:
	movl	-24(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
Lj10817:
	cmpl	$0,-24(%ebp)
	jne	Lj10837
	jmp	Lj10818
Lj10837:
	movl	$FPC_EMPTYINTF,%eax
	movl	-24(%ebp),%edx
	cmpl	40(%edx),%eax
	jne	Lj10816
	jmp	Lj10818
Lj10818:
	movl	$0,-12(%ebp)
Lj10812:
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__GETINTERFACETABLE$$PINTERFACETABLE
SYSTEM_TOBJECT_$__GETINTERFACETABLE$$PINTERFACETABLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__UNITNAME$$ANSISTRING
SYSTEM_TOBJECT_$__UNITNAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__CLASSINFO$$POINTER
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj10850
	jmp	Lj10851
Lj10850:
	movl	-12(%ebp),%eax
	incl	%eax
	movzbl	(%eax),%eax
	addl	$2,%eax
	addl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leal	10(%eax),%eax
	movl	-8(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	jmp	Lj10856
Lj10851:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
Lj10856:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING
	leal	-264(%ebp),%eax
	movl	-8(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TINTERFACEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT
SYSTEM_TINTERFACEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	16(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	8(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj10879
	jmp	Lj10880
Lj10879:
	movl	$0,-4(%ebp)
	jmp	Lj10889
Lj10880:
	movl	$-2147467262,-4(%ebp)
Lj10889:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TINTERFACEDOBJECT_$___ADDREF$$LONGINT
SYSTEM_TINTERFACEDOBJECT_$___ADDREF$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	8(%ebp),%eax
	leal	4(%eax),%eax
	call	SYSTEM_INTERLOCKEDINCREMENT$LONGINT$$LONGINT
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TINTERFACEDOBJECT_$___RELEASE$$LONGINT
SYSTEM_TINTERFACEDOBJECT_$___RELEASE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	8(%ebp),%eax
	leal	4(%eax),%eax
	call	SYSTEM_INTERLOCKEDDECREMENT$LONGINT$$LONGINT
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj10904
	jmp	Lj10905
Lj10904:
	movl	8(%ebp),%eax
	movl	$1,%edx
	movl	8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj10905:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TINTERFACEDOBJECT_$__AFTERCONSTRUCTION
SYSTEM_TINTERFACEDOBJECT_$__AFTERCONSTRUCTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	4(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj10914
	jmp	Lj10915
Lj10914:
	movl	-8(%ebp),%eax
	decl	(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	seteb	%bl
	jmp	Lj10918
Lj10915:
	movl	-8(%ebp),%eax
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj10918:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TINTERFACEDOBJECT_$__BEFOREDESTRUCTION
SYSTEM_TINTERFACEDOBJECT_$__BEFOREDESTRUCTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj10925
	jmp	Lj10926
Lj10925:
	movl	$204,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj10926:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TINTERFACEDOBJECT_$__NEWINSTANCE$$TOBJECT
SYSTEM_TINTERFACEDOBJECT_$__NEWINSTANCE$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10935
	jmp	Lj10936
Lj10935:
	movl	-8(%ebp),%eax
	movl	$1,4(%eax)
Lj10936:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TAGGREGATEDOBJECT_$__CREATE$IUNKNOWN$$TAGGREGATEDOBJECT
SYSTEM_TAGGREGATEDOBJECT_$__CREATE$IUNKNOWN$$TAGGREGATEDOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$92,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj10941
	jmp	Lj10942
Lj10941:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj10942:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj10947
	jmp	Lj10948
Lj10947:
	jmp	Lj10939
Lj10948:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj10951
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj10955
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
Lj10955:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj10956
	call	FPC_RERAISE
Lj10956:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10966
	jmp	Lj10965
Lj10966:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10964
	jmp	Lj10965
Lj10964:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj10965:
Lj10951:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj10953
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj10970
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10971
	jmp	Lj10972
Lj10971:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj10972:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj10970:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj10969
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj10969:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj10953
Lj10953:
Lj10939:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TAGGREGATEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT
SYSTEM_TAGGREGATEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	16(%ebp),%eax
	pushl	%eax
	movl	12(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	4(%eax)
	movl	8(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TAGGREGATEDOBJECT_$___ADDREF$$LONGINT
SYSTEM_TAGGREGATEDOBJECT_$___ADDREF$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	8(%ebp),%eax
	pushl	4(%eax)
	movl	8(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	call	*4(%eax)
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TAGGREGATEDOBJECT_$___RELEASE$$LONGINT
SYSTEM_TAGGREGATEDOBJECT_$___RELEASE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	8(%ebp),%eax
	pushl	4(%eax)
	movl	8(%ebp),%eax
	movl	4(%eax),%eax
	movl	(%eax),%eax
	call	*8(%eax)
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TAGGREGATEDOBJECT_$__GETCONTROLLER$$IUNKNOWN
SYSTEM_TAGGREGATEDOBJECT_$__GETCONTROLLER$$IUNKNOWN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	movl	4(%esi),%eax
	call	FPC_INTF_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_INTF_DECR_REF
	movl	4(%esi),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TCONTAINEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT
SYSTEM_TCONTAINEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	16(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	8(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj11005
	jmp	Lj11006
Lj11005:
	movl	$0,-4(%ebp)
	jmp	Lj11015
Lj11006:
	movl	$-2147467262,-4(%ebp)
Lj11015:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RAISELIST$$PEXCEPTOBJECT
SYSTEM_RAISELIST$$PEXCEPTOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11022
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11023
Lj11022:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11023:
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ACQUIREEXCEPTIONOBJECT$$POINTER
SYSTEM_ACQUIREEXCEPTIONOBJECT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11028
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11029
Lj11028:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11029:
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj11030
	jmp	Lj11031
Lj11030:
	movl	-8(%ebp),%eax
	incl	12(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj11034
Lj11031:
	movw	$231,%ax
	call	SYSTEM_RUNERROR$WORD
Lj11034:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RELEASEEXCEPTIONOBJECT
SYSTEM_RELEASEEXCEPTIONOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11041
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11042
Lj11041:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11042:
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj11043
	jmp	Lj11044
Lj11043:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$0,%eax
	jg	Lj11045
	jmp	Lj11046
Lj11045:
	movl	-4(%ebp),%eax
	decl	12(%eax)
Lj11046:
	jmp	Lj11047
Lj11044:
	movw	$231,%ax
	call	SYSTEM_RUNERROR$WORD
Lj11047:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_pushexceptaddr
fpc_pushexceptaddr:
.globl	FPC_PUSHEXCEPTADDR
FPC_PUSHEXCEPTADDR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11054
	movl	U_SYSTEM_EXCEPTADDRSTACK,%eax
	call	*%edx
	jmp	Lj11055
Lj11054:
	movl	$U_SYSTEM_EXCEPTADDRSTACK+4,%eax
Lj11055:
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,4(%edx)
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,(%eax)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_pushexceptobj
fpc_pushexceptobj:
.globl	FPC_PUSHEXCEPTOBJECT
FPC_PUSHEXCEPTOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11070
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11071
Lj11070:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11071:
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj11072
	jmp	Lj11073
Lj11072:
	movl	$24,%eax
	call	fpc_getmem
	movl	-20(%ebp),%edx
	movl	%eax,(%edx)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	$0,8(%eax)
	jmp	Lj11082
Lj11073:
	movl	$24,%eax
	call	fpc_getmem
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,8(%edx)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,(%edx)
Lj11082:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%edx
	movl	%edx,4(%eax)
	movl	$0,12(%eax)
	movl	-12(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	%ebp,-36(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-28(%ebp)
	jmp	Lj11112
	.balign 4,0x90
Lj11111:
	movl	-40(%ebp),%eax
	call	SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
	movl	%eax,-48(%ebp)
	movl	-40(%ebp),%eax
	call	SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER
	movl	%eax,-44(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj11122
	jmp	Lj11124
Lj11124:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj11122
	jmp	Lj11123
Lj11122:
	jmp	Lj11113
Lj11123:
	movl	-28(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jge	Lj11125
	jmp	Lj11126
Lj11125:
	addl	$16,-24(%ebp)
	movl	-24(%ebp),%edx
	shll	$2,%edx
	leal	-32(%ebp),%eax
	call	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
Lj11126:
	movl	-32(%ebp),%ecx
	movl	-28(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,(%ecx,%eax,4)
	incl	-28(%ebp)
	movl	-40(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-44(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj11112:
	movl	-28(%ebp),%eax
	cmpl	TC_SYSTEM_RAISEMAXFRAMECOUNT,%eax
	jl	Lj11138
	jmp	Lj11113
Lj11138:
	movl	-40(%ebp),%eax
	cmpl	-36(%ebp),%eax
	ja	Lj11137
	jmp	Lj11113
Lj11137:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11139
	movl	U_SYSTEM_STACKBOTTOM,%eax
	call	*%edx
	movl	%eax,%ebx
	jmp	Lj11140
Lj11139:
	movl	$U_SYSTEM_STACKBOTTOM+4,%ebx
Lj11140:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11141
	movl	U_SYSTEM_STACKLENGTH,%eax
	call	*%edx
	jmp	Lj11142
Lj11141:
	movl	$U_SYSTEM_STACKLENGTH+4,%eax
Lj11142:
	movl	(%ebx),%edx
	movl	(%eax),%eax
	addl	%eax,%edx
	cmpl	-40(%ebp),%edx
	ja	Lj11111
	jmp	Lj11113
Lj11113:
	movl	-20(%ebp),%eax
	movl	(%eax),%edx
	movl	-28(%ebp),%eax
	movl	%eax,16(%edx)
	movl	-20(%ebp),%eax
	movl	(%eax),%edx
	movl	-32(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DOUNHANDLEDEXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11151
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11152
Lj11151:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11152:
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	TC_SYSTEM_EXCEPTPROC,%eax
	testl	%eax,%eax
	jne	Lj11155
	jmp	Lj11154
Lj11155:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj11153
	jmp	Lj11154
Lj11153:
	movl	-4(%ebp),%ebx
	pushl	20(%ebx)
	movl	16(%ebx),%ecx
	movl	4(%ebx),%edx
	movl	(%ebx),%eax
	movl	TC_SYSTEM_EXCEPTPROC,%esi
	call	*%esi
	movl	$217,%eax
	call	SYSTEM_HALT$LONGINT
Lj11154:
	movl	TC_SYSTEM_ERRORADDR,%eax
	testl	%eax,%eax
	je	Lj11168
	jmp	Lj11169
Lj11168:
	movw	$217,%ax
	call	SYSTEM_RUNERROR$WORD
	jmp	Lj11172
Lj11169:
	movw	TC_SYSTEM_ERRORCODE,%ax
	cmpw	$255,%ax
	ja	Lj11173
	jmp	Lj11174
Lj11173:
	movl	$255,%eax
	call	SYSTEM_HALT$LONGINT
	jmp	Lj11177
Lj11174:
	movzwl	TC_SYSTEM_ERRORCODE,%eax
	call	SYSTEM_HALT$LONGINT
Lj11177:
Lj11172:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_raiseexception
fpc_raiseexception:
.globl	FPC_RAISEEXCEPTION
FPC_RAISEEXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_PUSHEXCEPTOBJECT
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11192
	movl	U_SYSTEM_EXCEPTADDRSTACK,%eax
	call	*%edx
	jmp	Lj11193
Lj11192:
	movl	$U_SYSTEM_EXCEPTADDRSTACK+4,%eax
Lj11193:
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj11194
	jmp	Lj11195
Lj11194:
	call	SYSTEM_DOUNHANDLEDEXCEPTION
Lj11195:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11198
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11199
Lj11198:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11199:
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	TC_SYSTEM_RAISEPROC,%eax
	testl	%eax,%eax
	jne	Lj11202
	jmp	Lj11201
Lj11202:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj11200
	jmp	Lj11201
Lj11200:
	movl	-20(%ebp),%ebx
	pushl	20(%ebx)
	movl	16(%ebx),%ecx
	movl	4(%ebx),%edx
	movl	(%ebx),%eax
	movl	TC_SYSTEM_RAISEPROC,%esi
	call	*%esi
Lj11201:
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	movl	$1,%edx
	call	FPC_LONGJMP
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_popaddrstack
fpc_popaddrstack:
.globl	FPC_POPADDRSTACK
FPC_POPADDRSTACK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11221
	movl	U_SYSTEM_EXCEPTADDRSTACK,%eax
	call	*%edx
	jmp	Lj11222
Lj11221:
	movl	$U_SYSTEM_EXCEPTADDRSTACK+4,%eax
Lj11222:
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj11223
	jmp	Lj11224
Lj11223:
	movl	$255,%eax
	call	SYSTEM_HALT$LONGINT
	jmp	Lj11227
Lj11224:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%eax),%eax
	movl	%eax,(%edx)
Lj11227:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_popobjectstack
fpc_popobjectstack:
.globl	FPC_POPOBJECTSTACK
FPC_POPOBJECTSTACK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11234
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11235
Lj11234:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11235:
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj11236
	jmp	Lj11237
Lj11236:
	movl	$1,%eax
	call	SYSTEM_HALT$LONGINT
	jmp	Lj11240
Lj11237:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj11241
	jmp	Lj11242
Lj11241:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj11245
Lj11242:
	movl	$0,-4(%ebp)
Lj11245:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11252
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11253
Lj11252:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11253:
	movl	-12(%ebp),%edx
	movl	8(%edx),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	cmpl	$0,20(%eax)
	jne	Lj11254
	jmp	Lj11255
Lj11254:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj11255:
	movl	-8(%ebp),%eax
	call	fpc_freemem
	movl	$0,TC_SYSTEM_ERRORADDR
Lj11240:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_popsecondobjectstack
fpc_popsecondobjectstack:
.globl	FPC_POPSECONDOBJECTSTACK
FPC_POPSECONDOBJECTSTACK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11266
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11267
Lj11266:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11267:
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj11270
	jmp	Lj11268
Lj11270:
	movl	-12(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj11269
	jmp	Lj11268
Lj11268:
	movl	$1,%eax
	call	SYSTEM_HALT$LONGINT
	jmp	Lj11273
Lj11269:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj11274
	jmp	Lj11275
Lj11274:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj11278
Lj11275:
	movl	$0,-4(%ebp)
Lj11278:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	cmpl	$0,20(%eax)
	jne	Lj11285
	jmp	Lj11286
Lj11285:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj11286:
	movl	-8(%ebp),%eax
	call	fpc_freemem
Lj11273:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_reraise
fpc_reraise:
.globl	FPC_RERAISE
FPC_RERAISE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11295
	movl	U_SYSTEM_EXCEPTADDRSTACK,%eax
	call	*%edx
	jmp	Lj11296
Lj11295:
	movl	$U_SYSTEM_EXCEPTADDRSTACK+4,%eax
Lj11296:
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj11297
	jmp	Lj11298
Lj11297:
	call	SYSTEM_DOUNHANDLEDEXCEPTION
Lj11298:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11301
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11302
Lj11301:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11302:
	movl	(%eax),%eax
	movl	$0,12(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$1,%edx
	call	FPC_LONGJMP
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_catches
fpc_catches:
.globl	FPC_CATCHES
FPC_CATCHES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11311
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11312
Lj11311:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11312:
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj11313
	jmp	Lj11314
Lj11313:
	movl	$255,%eax
	call	SYSTEM_HALT$LONGINT
Lj11314:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	TC_SYSTEM_CATCHALLEXCEPTIONS,%eax
	je	Lj11320
	jmp	Lj11321
Lj11321:
	movl	-16(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	fpc_do_is
	testb	%al,%al
	jne	Lj11320
	jmp	Lj11319
Lj11319:
	movl	$0,-8(%ebp)
	jmp	Lj11328
Lj11320:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
Lj11328:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_destroyexception
fpc_destroyexception:
.globl	FPC_DESTROYEXCEPTION
FPC_DESTROYEXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__FREE
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_getexceptionaddr
fpc_getexceptionaddr:
.globl	FPC_GETEXCEPTIONADDR
FPC_GETEXCEPTIONADDR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11339
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11340
Lj11339:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11340:
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj11341
	jmp	Lj11342
Lj11341:
	movl	$0,-4(%ebp)
	jmp	Lj11345
Lj11342:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-4(%ebp)
Lj11345:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSINITEXCEPTIONS
SYSTEM_SYSINITEXCEPTIONS:
	pushl	%ebp
	movl	%esp,%ebp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11352
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11353
Lj11352:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11353:
	movl	$0,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11356
	movl	U_SYSTEM_EXCEPTADDRSTACK,%eax
	call	*%edx
	jmp	Lj11357
Lj11356:
	movl	$U_SYSTEM_EXCEPTADDRSTACK+4,%eax
Lj11357:
	movl	$0,(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_VARIANT_INIT$TVARDATA
SYSTEM_VARIANT_INIT$TVARDATA:
.globl	FPC_VARIANT_INIT
FPC_VARIANT_INIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$16,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_VARIANT_CLEAR$TVARDATA
SYSTEM_VARIANT_CLEAR$TVARDATA:
.globl	FPC_VARIANT_CLEAR
FPC_VARIANT_CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,TC_SYSTEM_VARCLEARPROC
	jne	Lj11368
	jmp	Lj11369
Lj11368:
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_VARCLEARPROC,%edx
	call	*%edx
Lj11369:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_VARIANT_ADDREF$TVARDATA
SYSTEM_VARIANT_ADDREF$TVARDATA:
.globl	FPC_VARIANT_ADDREF
FPC_VARIANT_ADDREF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,TC_SYSTEM_VARADDREFPROC
	jne	Lj11374
	jmp	Lj11375
Lj11374:
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_VARADDREFPROC,%edx
	call	*%edx
Lj11375:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_variant_copy
fpc_variant_copy:
.globl	FPC_VARIANT_COPY
FPC_VARIANT_COPY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,TC_SYSTEM_VARCOPYPROC
	jne	Lj11380
	jmp	Lj11381
Lj11380:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_VARCOPYPROC,%ecx
	call	*%ecx
Lj11381:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_variant_copy_overwrite
fpc_variant_copy_overwrite:
.globl	FPC_VARIANT_COPY_OVERWRITE
FPC_VARIANT_COPY_OVERWRITE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movw	$0,(%eax)
	cmpl	$0,TC_SYSTEM_VARCOPYPROC
	jne	Lj11390
	jmp	Lj11391
Lj11390:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	TC_SYSTEM_VARCOPYPROC,%ecx
	call	*%ecx
Lj11391:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_variant
fpc_write_text_variant:
.globl	FPC_WRITE_TEXT_VARIANT
FPC_WRITE_TEXT_VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11400
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj11401
Lj11400:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj11401:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj11398
	jmp	Lj11399
Lj11398:
	jmp	Lj11396
Lj11399:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj11403
	subl	$55217,%eax
	je	Lj11405
	decl	%eax
	je	Lj11404
	jmp	Lj11403
Lj11404:
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj11406
	jmp	Lj11407
Lj11406:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+180,%ecx
	call	*%ecx
	jmp	Lj11412
Lj11407:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+176,%ebx
	call	*%ebx
Lj11412:
	jmp	Lj11402
Lj11405:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11421
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj11422
Lj11421:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj11422:
	movw	$105,(%eax)
	jmp	Lj11402
Lj11403:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11425
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj11426
Lj11425:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj11426:
	movw	$103,(%eax)
Lj11402:
Lj11396:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_vararray_get
fpc_vararray_get:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$76,%esp
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-68(%ebp),%eax
	call	FPC_INITIALIZE
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj11429
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-68(%ebp),%eax
	call	FPC_FINALIZE
	pushl	-12(%ebp)
	pushl	8(%ebp)
	movl	-8(%ebp),%esi
	subl	$16,%esp
	movl	%esp,%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-68(%ebp),%eax
	pushl	%eax
	movl	U_SYSTEM_VARIANTMANAGER+168,%eax
	call	*%eax
	addl	$24,%esp
	leal	-68(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_variant_copy
Lj11429:
	call	FPC_POPADDRSTACK
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-68(%ebp),%eax
	call	FPC_FINALIZE
	popl	%eax
	testl	%eax,%eax
	je	Lj11430
	call	FPC_RERAISE
Lj11430:
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_vararray_put
fpc_vararray_put:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	-12(%ebp)
	pushl	8(%ebp)
	movl	-8(%ebp),%esi
	subl	$16,%esp
	movl	%esp,%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	pushl	%eax
	movl	U_SYSTEM_VARIANTMANAGER+172,%eax
	call	*%eax
	addl	$28,%esp
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_variant_to_dynarray
fpc_variant_to_dynarray:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	-12(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+48,%ebx
	call	*%ebx
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_dynarray_to_variant
fpc_dynarray_to_variant:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+100,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_variant_to_interface
fpc_variant_to_interface:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+40,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_interface_to_variant
fpc_interface_to_variant:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+92,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_variant_to_idispatch
fpc_variant_to_idispatch:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+44,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_idispatch_to_variant
fpc_idispatch_to_variant:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+96,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_dispinvoke_variant
fpc_dispinvoke_variant:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	8(%ebp)
	pushl	-12(%ebp)
	movl	-8(%ebp),%esi
	subl	$16,%esp
	movl	%esp,%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	pushl	-4(%ebp)
	movl	U_SYSTEM_VARIANTMANAGER+160,%eax
	call	*%eax
	addl	$28,%esp
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_assign$BYTE$$VARIANT
SYSTEM_assign$BYTE$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movzbl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+56,%ebx
	call	*%ebx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$SHORTINT$$VARIANT
SYSTEM_assign$SHORTINT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movsbl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$-1,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+56,%ebx
	call	*%ebx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$WORD$$VARIANT
SYSTEM_assign$WORD$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movzwl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+56,%ebx
	call	*%ebx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$SMALLINT$$VARIANT
SYSTEM_assign$SMALLINT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movswl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$-2,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+56,%ebx
	call	*%ebx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$LONGWORD$$VARIANT
SYSTEM_assign$LONGWORD$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$4,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+56,%ebx
	call	*%ebx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$LONGINT$$VARIANT
SYSTEM_assign$LONGINT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$-4,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+56,%ebx
	call	*%ebx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$QWORD$$VARIANT
SYSTEM_assign$QWORD$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+64,%edx
	call	*%edx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_assign$INT64$$VARIANT
SYSTEM_assign$INT64$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+60,%edx
	call	*%edx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_assign$BOOLEAN$$VARIANT
SYSTEM_assign$BOOLEAN$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	-4(%ebp),%dl
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+52,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$WORDBOOL$$VARIANT
SYSTEM_assign$WORDBOOL$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	-4(%ebp),%ax
	orw	%ax,%ax
	setneb	%dl
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+52,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$LONGBOOL$$VARIANT
SYSTEM_assign$LONGBOOL$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	orl	%eax,%eax
	setneb	%dl
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+52,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$CHAR$$VARIANT
SYSTEM_assign$CHAR$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movzbl	-4(%ebp),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-264(%ebp)
	leal	-264(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+80,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$WIDECHAR$$VARIANT
SYSTEM_assign$WIDECHAR$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movzwl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+56,%ebx
	call	*%ebx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$SHORTSTRING$$VARIANT
SYSTEM_assign$SHORTSTRING$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+80,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$ANSISTRING$$VARIANT
SYSTEM_assign$ANSISTRING$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+84,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$WIDESTRING$$VARIANT
SYSTEM_assign$WIDESTRING$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+88,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$UTF8STRING$$VARIANT
SYSTEM_assign$UTF8STRING$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj11622
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_UTF8DECODE$UTF8STRING$$UNICODESTRING
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+88,%ecx
	call	*%ecx
Lj11622:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj11623
	call	FPC_RERAISE
Lj11623:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$UCS4STRING$$VARIANT
SYSTEM_assign$UCS4STRING$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$48,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj11635
	leal	-48(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-48(%ebp)
	pushl	8(%ebp)
	leal	-48(%ebp),%eax
	call	SYSTEM_UCS4STRINGTOWIDESTRING$UCS4STRING$$WIDESTRING
	movl	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+88,%ecx
	call	*%ecx
Lj11635:
	call	FPC_POPADDRSTACK
	leal	-48(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-48(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj11636
	call	FPC_RERAISE
Lj11636:
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_assign$SINGLE$$VARIANT
SYSTEM_assign$SINGLE$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	flds	8(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+68,%edx
	call	*%edx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_assign$DOUBLE$$VARIANT
SYSTEM_assign$DOUBLE$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	fldl	8(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+68,%edx
	call	*%edx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_assign$EXTENDED$$VARIANT
SYSTEM_assign$EXTENDED$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+68,%edx
	call	*%edx
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSTEM_assign$COMP$$VARIANT
SYSTEM_assign$COMP$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	fildq	8(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+68,%edx
	call	*%edx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_assign$REAL$$VARIANT
SYSTEM_assign$REAL$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	fldl	8(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+68,%edx
	call	*%edx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_assign$CURRENCY$$VARIANT
SYSTEM_assign$CURRENCY$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+76,%edx
	call	*%edx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_assign$TDATETIME$$VARIANT
SYSTEM_assign$TDATETIME$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+72,%edx
	call	*%edx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_assign$TERROR$$VARIANT
SYSTEM_assign$TERROR$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$-4,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+56,%ebx
	call	*%ebx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$BYTE
SYSTEM_assign$VARIANT$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$SHORTINT
SYSTEM_assign$VARIANT$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$WORD
SYSTEM_assign$VARIANT$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$SMALLINT
SYSTEM_assign$VARIANT$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$LONGWORD
SYSTEM_assign$VARIANT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$LONGINT
SYSTEM_assign$VARIANT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$QWORD
SYSTEM_assign$VARIANT$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+8,%edx
	call	*%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$INT64
SYSTEM_assign$VARIANT$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+4,%edx
	call	*%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$BOOLEAN
SYSTEM_assign$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+12,%edx
	call	*%edx
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$WORDBOOL
SYSTEM_assign$VARIANT$$WORDBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+12,%edx
	call	*%edx
	orb	%al,%al
	setneb	%al
	movzbw	%al,%ax
	negw	%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$LONGBOOL
SYSTEM_assign$VARIANT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+12,%edx
	call	*%edx
	orb	%al,%al
	setneb	%al
	movzbl	%al,%eax
	negl	%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$CHAR
SYSTEM_assign$VARIANT$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$261,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-261(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+28,%ecx
	call	*%ecx
	movzbl	-261(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj11772
	jmp	Lj11773
Lj11772:
	movb	-260(%ebp),%al
	movb	%al,-5(%ebp)
Lj11773:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$WIDECHAR
SYSTEM_assign$VARIANT$$WIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$SHORTSTRING
SYSTEM_assign$VARIANT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+28,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$ANSISTRING
SYSTEM_assign$VARIANT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+32,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$WIDESTRING
SYSTEM_assign$VARIANT$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+36,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$UTF8STRING
SYSTEM_assign$VARIANT$$UTF8STRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj11802
	movl	-4(%ebp),%edx
	leal	-12(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+36,%ecx
	call	*%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_UTF8ENCODE$UNICODESTRING$$UTF8STRING
Lj11802:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj11803
	call	FPC_RERAISE
Lj11803:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$SINGLE
SYSTEM_assign$VARIANT$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fstps	-8(%ebp)
	flds	-8(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$DOUBLE
SYSTEM_assign$VARIANT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$EXTENDED
SYSTEM_assign$VARIANT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$COMP
SYSTEM_assign$VARIANT$$COMP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fistpq	-12(%ebp)
	fildq	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$REAL
SYSTEM_assign$VARIANT$$REAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$CURRENCY
SYSTEM_assign$VARIANT$$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+24,%edx
	call	*%edx
	fistpq	-12(%ebp)
	fildq	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$TDATETIME
SYSTEM_assign$VARIANT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+20,%edx
	call	*%edx
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$OLEVARIANT
SYSTEM_assign$VARIANT$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+112,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$TERROR
SYSTEM_assign$VARIANT$$TERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_or$VARIANT$VARIANT$$VARIANT
SYSTEM_or$VARIANT$VARIANT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_variant_copy
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$9,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_and$VARIANT$VARIANT$$VARIANT
SYSTEM_and$VARIANT$VARIANT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_variant_copy
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$8,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_xor$VARIANT$VARIANT$$VARIANT
SYSTEM_xor$VARIANT$VARIANT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_variant_copy
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$10,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_not$VARIANT$$VARIANT
SYSTEM_not$VARIANT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_variant_copy
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+132,%edx
	call	*%edx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_shl$VARIANT$VARIANT$$VARIANT
SYSTEM_shl$VARIANT$VARIANT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_variant_copy
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$6,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_shr$VARIANT$VARIANT$$VARIANT
SYSTEM_shr$VARIANT$VARIANT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_variant_copy
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$7,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_plus$VARIANT$VARIANT$$VARIANT
SYSTEM_plus$VARIANT$VARIANT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_variant_copy
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_minus$VARIANT$VARIANT$$VARIANT
SYSTEM_minus$VARIANT$VARIANT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_variant_copy
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$1,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_star$VARIANT$VARIANT$$VARIANT
SYSTEM_star$VARIANT$VARIANT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_variant_copy
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_slash$VARIANT$VARIANT$$VARIANT
SYSTEM_slash$VARIANT$VARIANT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_variant_copy
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$3,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_starstar$VARIANT$VARIANT$$VARIANT
SYSTEM_starstar$VARIANT$VARIANT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_variant_copy
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$20,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_div$VARIANT$VARIANT$$VARIANT
SYSTEM_div$VARIANT$VARIANT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_variant_copy
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$4,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_mod$VARIANT$VARIANT$$VARIANT
SYSTEM_mod$VARIANT$VARIANT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_variant_copy
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$5,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_minus$VARIANT$$VARIANT
SYSTEM_minus$VARIANT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_variant_copy
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+128,%edx
	call	*%edx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_equal$VARIANT$VARIANT$$BOOLEAN
SYSTEM_equal$VARIANT$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$14,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+124,%ebx
	call	*%ebx
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_lower$VARIANT$VARIANT$$BOOLEAN
SYSTEM_lower$VARIANT$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$16,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+124,%ebx
	call	*%ebx
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_greater$VARIANT$VARIANT$$BOOLEAN
SYSTEM_greater$VARIANT$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$18,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+124,%ebx
	call	*%ebx
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_greater_or_equal$VARIANT$VARIANT$$BOOLEAN
SYSTEM_greater_or_equal$VARIANT$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$19,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+124,%ebx
	call	*%ebx
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_lower_or_equal$VARIANT$VARIANT$$BOOLEAN
SYSTEM_lower_or_equal$VARIANT$VARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$17,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+124,%ebx
	call	*%ebx
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_VARARRAYREDIM$VARIANT$LONGINT
SYSTEM_VARARRAYREDIM$VARIANT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+164,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_VARARRAYPUT$VARIANT$VARIANT$array_of_LONGINT
SYSTEM_VARARRAYPUT$VARIANT$VARIANT$array_of_LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	incl	%eax
	cmpl	$0,%eax
	jg	Lj12091
	jmp	Lj12092
Lj12091:
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	incl	%eax
	pushl	%eax
	movl	-8(%ebp),%esi
	subl	$16,%esp
	movl	%esp,%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	pushl	%eax
	movl	U_SYSTEM_VARIANTMANAGER+172,%eax
	call	*%eax
	addl	$28,%esp
	jmp	Lj12101
Lj12092:
	pushl	$0
	pushl	$0
	movl	-8(%ebp),%esi
	subl	$16,%esp
	movl	%esp,%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	pushl	%eax
	movl	U_SYSTEM_VARIANTMANAGER+172,%eax
	call	*%eax
	addl	$28,%esp
Lj12101:
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_VARARRAYGET$VARIANT$array_of_LONGINT$$VARIANT
SYSTEM_VARARRAYGET$VARIANT$array_of_LONGINT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	$0,%eax
	jg	Lj12112
	jmp	Lj12113
Lj12112:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	incl	%eax
	pushl	%eax
	movl	-4(%ebp),%esi
	subl	$16,%esp
	movl	%esp,%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	8(%ebp),%eax
	pushl	%eax
	movl	U_SYSTEM_VARIANTMANAGER+168,%eax
	call	*%eax
	addl	$24,%esp
	jmp	Lj12122
Lj12113:
	pushl	$0
	pushl	$0
	movl	-4(%ebp),%esi
	subl	$16,%esp
	movl	%esp,%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	8(%ebp),%eax
	pushl	%eax
	movl	U_SYSTEM_VARIANTMANAGER+168,%eax
	call	*%eax
	addl	$24,%esp
Lj12122:
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_VARCAST$VARIANT$VARIANT$LONGINT
SYSTEM_VARCAST$VARIANT$VARIANT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+152,%ebx
	call	*%ebx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$BYTE
SYSTEM_assign$OLEVARIANT$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$SHORTINT
SYSTEM_assign$OLEVARIANT$$SHORTINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$WORD
SYSTEM_assign$OLEVARIANT$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$SMALLINT
SYSTEM_assign$OLEVARIANT$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$LONGWORD
SYSTEM_assign$OLEVARIANT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$LONGINT
SYSTEM_assign$OLEVARIANT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$QWORD
SYSTEM_assign$OLEVARIANT$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+4,%edx
	call	*%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$INT64
SYSTEM_assign$OLEVARIANT$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+8,%edx
	call	*%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$BOOLEAN
SYSTEM_assign$OLEVARIANT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+12,%edx
	call	*%edx
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$WORDBOOL
SYSTEM_assign$OLEVARIANT$$WORDBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+12,%edx
	call	*%edx
	orb	%al,%al
	setneb	%al
	movzbw	%al,%ax
	negw	%ax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$LONGBOOL
SYSTEM_assign$OLEVARIANT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+12,%edx
	call	*%edx
	orb	%al,%al
	setneb	%al
	movzbl	%al,%eax
	negl	%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$CHAR
SYSTEM_assign$OLEVARIANT$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$261,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-261(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+28,%ecx
	call	*%ecx
	movzbl	-261(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj12215
	jmp	Lj12216
Lj12215:
	movb	-260(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj12219
Lj12216:
	movb	$0,-5(%ebp)
Lj12219:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$WIDECHAR
SYSTEM_assign$OLEVARIANT$$WIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12224
	movl	-4(%ebp),%edx
	leal	-12(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+36,%ecx
	call	*%ecx
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj12233
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj12233:
	cmpl	$0,%eax
	jg	Lj12231
	jmp	Lj12232
Lj12231:
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj12236
Lj12232:
	movw	$0,-6(%ebp)
Lj12236:
Lj12224:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj12225
	call	FPC_RERAISE
Lj12225:
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$SHORTSTRING
SYSTEM_assign$OLEVARIANT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+28,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$ANSISTRING
SYSTEM_assign$OLEVARIANT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+32,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$WIDESTRING
SYSTEM_assign$OLEVARIANT$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+36,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$SINGLE
SYSTEM_assign$OLEVARIANT$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fstps	-8(%ebp)
	flds	-8(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$DOUBLE
SYSTEM_assign$OLEVARIANT$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$EXTENDED
SYSTEM_assign$OLEVARIANT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$COMP
SYSTEM_assign$OLEVARIANT$$COMP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fistpq	-12(%ebp)
	fildq	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$REAL
SYSTEM_assign$OLEVARIANT$$REAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$CURRENCY
SYSTEM_assign$OLEVARIANT$$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+24,%edx
	call	*%edx
	fistpq	-12(%ebp)
	fildq	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$TDATETIME
SYSTEM_assign$OLEVARIANT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+20,%edx
	call	*%edx
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$TERROR
SYSTEM_assign$OLEVARIANT$$TERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$BYTE$$OLEVARIANT
SYSTEM_assign$BYTE$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movzbl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$1,%cl
	movl	U_SYSTEM_VARIANTMANAGER+116,%ebx
	call	*%ebx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$SHORTINT$$OLEVARIANT
SYSTEM_assign$SHORTINT$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movsbl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$-1,%cl
	movl	U_SYSTEM_VARIANTMANAGER+116,%ebx
	call	*%ebx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$WORD$$OLEVARIANT
SYSTEM_assign$WORD$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movzwl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$2,%cl
	movl	U_SYSTEM_VARIANTMANAGER+116,%ebx
	call	*%ebx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$SMALLINT$$OLEVARIANT
SYSTEM_assign$SMALLINT$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movswl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$-2,%cl
	movl	U_SYSTEM_VARIANTMANAGER+116,%ebx
	call	*%ebx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$LONGWORD$$OLEVARIANT
SYSTEM_assign$LONGWORD$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$4,%cl
	movl	U_SYSTEM_VARIANTMANAGER+116,%ebx
	call	*%ebx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$LONGINT$$OLEVARIANT
SYSTEM_assign$LONGINT$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$-4,%cl
	movl	U_SYSTEM_VARIANTMANAGER+116,%ebx
	call	*%ebx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$QWORD$$OLEVARIANT
SYSTEM_assign$QWORD$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$8,%cl
	movl	U_SYSTEM_VARIANTMANAGER+116,%ebx
	call	*%ebx
	movl	-8(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_assign$INT64$$OLEVARIANT
SYSTEM_assign$INT64$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$-8,%cl
	movl	U_SYSTEM_VARIANTMANAGER+116,%ebx
	call	*%ebx
	movl	-8(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_assign$BOOLEAN$$OLEVARIANT
SYSTEM_assign$BOOLEAN$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	-4(%ebp),%dl
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+52,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$WORDBOOL$$OLEVARIANT
SYSTEM_assign$WORDBOOL$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	-4(%ebp),%ax
	orw	%ax,%ax
	setneb	%dl
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+52,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$LONGBOOL$$OLEVARIANT
SYSTEM_assign$LONGBOOL$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	orl	%eax,%eax
	setneb	%dl
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+52,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$CHAR$$OLEVARIANT
SYSTEM_assign$CHAR$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movzbl	-4(%ebp),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-264(%ebp)
	leal	-264(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+104,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$WIDECHAR$$OLEVARIANT
SYSTEM_assign$WIDECHAR$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12405
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movw	-4(%ebp),%ax
	call	fpc_uchar_to_unicodestr
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+88,%ecx
	call	*%ecx
Lj12405:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj12406
	call	FPC_RERAISE
Lj12406:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$SHORTSTRING$$OLEVARIANT
SYSTEM_assign$SHORTSTRING$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+104,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$ANSISTRING$$OLEVARIANT
SYSTEM_assign$ANSISTRING$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+108,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$WIDESTRING$$OLEVARIANT
SYSTEM_assign$WIDESTRING$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+88,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$SINGLE$$OLEVARIANT
SYSTEM_assign$SINGLE$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	flds	8(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+68,%edx
	call	*%edx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_assign$DOUBLE$$OLEVARIANT
SYSTEM_assign$DOUBLE$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	fldl	8(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+68,%edx
	call	*%edx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_assign$EXTENDED$$OLEVARIANT
SYSTEM_assign$EXTENDED$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+68,%edx
	call	*%edx
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSTEM_assign$COMP$$OLEVARIANT
SYSTEM_assign$COMP$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	fildq	8(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+68,%edx
	call	*%edx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_assign$REAL$$OLEVARIANT
SYSTEM_assign$REAL$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	fldl	8(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+68,%edx
	call	*%edx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_assign$CURRENCY$$OLEVARIANT
SYSTEM_assign$CURRENCY$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+76,%edx
	call	*%edx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_assign$TDATETIME$$OLEVARIANT
SYSTEM_assign$TDATETIME$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+72,%edx
	call	*%edx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_assign$TERROR$$OLEVARIANT
SYSTEM_assign$TERROR$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$-4,%cl
	movl	U_SYSTEM_VARIANTMANAGER+116,%ebx
	call	*%ebx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UNASSIGNED$$VARIANT
SYSTEM_UNASSIGNED$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_VARCLEARPROC,%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movw	$0,(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_NULL$$VARIANT
SYSTEM_NULL$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_VARCLEARPROC,%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movw	$1,(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETVARIANTMANAGER$TVARIANTMANAGER
SYSTEM_GETVARIANTMANAGER$TVARIANTMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edi
	movl	$U_SYSTEM_VARIANTMANAGER,%esi
	cld
	movl	$46,%ecx
	rep
	movsl
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETVARIANTMANAGER$TVARIANTMANAGER
SYSTEM_SETVARIANTMANAGER$TVARIANTMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	movl	$U_SYSTEM_VARIANTMANAGER,%edi
	cld
	movl	$46,%ecx
	rep
	movsl
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INITVARIANTMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$CHAR$VARIANT$$LONGINT
SYSTEM_POS$CHAR$VARIANT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	leal	-268(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+28,%ecx
	call	*%ecx
	leal	-268(%ebp),%edx
	movb	-4(%ebp),%al
	call	SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$SHORTSTRING$VARIANT$$LONGINT
SYSTEM_POS$SHORTSTRING$VARIANT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$524,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	leal	-268(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	movl	-8(%ebp),%edx
	leal	-524(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+28,%ecx
	call	*%ecx
	leal	-524(%ebp),%edx
	leal	-268(%ebp),%eax
	call	SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$ANSISTRING$VARIANT$$LONGINT
SYSTEM_POS$ANSISTRING$VARIANT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12532
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%edx
	leal	-56(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+32,%ecx
	call	*%ecx
	movl	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
	movl	%eax,-12(%ebp)
Lj12532:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj12533
	call	FPC_RERAISE
Lj12533:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$WIDESTRING$VARIANT$$LONGINT
SYSTEM_POS$WIDESTRING$VARIANT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12547
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%edx
	leal	-56(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+36,%ecx
	call	*%ecx
	movl	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT
	movl	%eax,-12(%ebp)
Lj12547:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-4(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj12548
	call	FPC_RERAISE
Lj12548:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$VARIANT$CHAR$$LONGINT
SYSTEM_POS$VARIANT$CHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$320,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	leal	-28(%ebp),%edx
	call	FPC_VARIANT_COPY_OVERWRITE
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12562
	leal	-28(%ebp),%edx
	leal	-320(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+28,%ecx
	call	*%ecx
	leal	-320(%ebp),%eax
	movb	-8(%ebp),%dl
	call	SYSTEM_POS$SHORTSTRING$CHAR$$LONGINT
	movl	%eax,-12(%ebp)
Lj12562:
	call	FPC_POPADDRSTACK
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-28(%ebp),%eax
	call	FPC_DECREF
	popl	%eax
	testl	%eax,%eax
	je	Lj12563
	call	FPC_RERAISE
Lj12563:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$VARIANT$SHORTSTRING$$LONGINT
SYSTEM_POS$VARIANT$SHORTSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$320,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	leal	-28(%ebp),%edx
	call	FPC_VARIANT_COPY_OVERWRITE
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12577
	leal	-28(%ebp),%edx
	leal	-320(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+28,%ecx
	call	*%ecx
	leal	-320(%ebp),%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT
	movl	%eax,-12(%ebp)
Lj12577:
	call	FPC_POPADDRSTACK
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-28(%ebp),%eax
	call	FPC_DECREF
	popl	%eax
	testl	%eax,%eax
	je	Lj12578
	call	FPC_RERAISE
Lj12578:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$VARIANT$ANSISTRING$$LONGINT
SYSTEM_POS$VARIANT$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	leal	-28(%ebp),%edx
	call	FPC_VARIANT_COPY_OVERWRITE
	movl	$0,-68(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12592
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	leal	-28(%ebp),%edx
	leal	-68(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+32,%ecx
	call	*%ecx
	movl	-68(%ebp),%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
	movl	%eax,-12(%ebp)
Lj12592:
	call	FPC_POPADDRSTACK
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-28(%ebp),%eax
	call	FPC_DECREF
	popl	%eax
	testl	%eax,%eax
	je	Lj12593
	call	FPC_RERAISE
Lj12593:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$VARIANT$WIDESTRING$$LONGINT
SYSTEM_POS$VARIANT$WIDESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	leal	-28(%ebp),%edx
	call	FPC_VARIANT_COPY_OVERWRITE
	movl	$0,-68(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12607
	leal	-68(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-68(%ebp)
	leal	-28(%ebp),%edx
	leal	-68(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+36,%ecx
	call	*%ecx
	movl	-68(%ebp),%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT
	movl	%eax,-12(%ebp)
Lj12607:
	call	FPC_POPADDRSTACK
	leal	-68(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-68(%ebp)
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-28(%ebp),%eax
	call	FPC_DECREF
	popl	%eax
	testl	%eax,%eax
	je	Lj12608
	call	FPC_RERAISE
Lj12608:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$VARIANT$VARIANT$$LONGINT
SYSTEM_POS$VARIANT$VARIANT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$76,%esp
	movl	%ebx,-76(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	leal	-28(%ebp),%edx
	call	FPC_VARIANT_COPY_OVERWRITE
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12622
	leal	-68(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-68(%ebp)
	movl	-8(%ebp),%edx
	leal	-68(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+36,%ecx
	call	*%ecx
	movl	-68(%ebp),%ebx
	leal	-72(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-28(%ebp),%edx
	leal	-72(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+36,%ecx
	call	*%ecx
	movl	-72(%ebp),%eax
	movl	%ebx,%edx
	call	SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT
	movl	%eax,-12(%ebp)
Lj12622:
	call	FPC_POPADDRSTACK
	leal	-72(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-68(%ebp)
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-28(%ebp),%eax
	call	FPC_DECREF
	popl	%eax
	testl	%eax,%eax
	je	Lj12623
	call	FPC_RERAISE
Lj12623:
	movl	-12(%ebp),%eax
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_RTTIARRAYSIZE$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	addl	$2,%edx
	movl	-4(%ebp),%eax
	movzbl	1(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%eax),%edx
	movl	4(%ecx),%eax
	imull	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_RTTIRECORDSIZE$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	addl	$2,%edx
	movl	-4(%ebp),%eax
	movzbl	1(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_RTTISIZE$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$9,%al
	jb	Lj12662
	subb	$9,%al
	subb	$1,%al
	jbe	Lj12663
	decb	%al
	je	Lj12664
	decb	%al
	je	Lj12665
	decb	%al
	je	Lj12666
	decb	%al
	je	Lj12663
	subb	$2,%al
	je	Lj12666
	subb	$5,%al
	je	Lj12663
	subb	$3,%al
	je	Lj12663
	jmp	Lj12662
Lj12663:
	movl	$4,-8(%ebp)
	jmp	Lj12661
Lj12664:
	movl	$16,-8(%ebp)
	jmp	Lj12661
Lj12665:
	movl	-4(%ebp),%eax
	call	SYSTEM_RTTIARRAYSIZE$POINTER$$LONGINT
	movl	%eax,-8(%ebp)
	jmp	Lj12661
Lj12666:
	movl	-4(%ebp),%eax
	call	SYSTEM_RTTIRECORDSIZE$POINTER$$LONGINT
	movl	%eax,-8(%ebp)
	jmp	Lj12661
Lj12662:
	movl	$-1,-8(%ebp)
Lj12661:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_RECORDRTTI$POINTER$POINTER$TRTTIPROC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	addl	$2,%edx
	movl	-8(%ebp),%eax
	movzbl	1(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	addl	$8,-8(%ebp)
	movl	-16(%ebp),%ebx
	movl	$1,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj12692
	decl	-20(%ebp)
	.balign 4,0x90
Lj12693:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	movl	-12(%ebp),%ecx
	call	*%ecx
	addl	$8,-8(%ebp)
	cmpl	-20(%ebp),%ebx
	jg	Lj12693
Lj12692:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_ARRAYRTTI$POINTER$POINTER$TRTTIPROC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	addl	$2,%edx
	movl	-8(%ebp),%eax
	movzbl	1(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj12707
	decl	-16(%ebp)
	.balign 4,0x90
Lj12708:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	movl	8(%edx),%edx
	movl	-12(%ebp),%ecx
	call	*%ecx
	cmpl	-16(%ebp),%ebx
	jg	Lj12708
Lj12707:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_initialize
fpc_initialize:
.globl	FPC_INITIALIZE
FPC_INITIALIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	cmpb	$9,%al
	jb	Lj12716
	subb	$9,%al
	subb	$1,%al
	jbe	Lj12717
	decb	%al
	je	Lj12720
	decb	%al
	je	Lj12718
	decb	%al
	je	Lj12719
	decb	%al
	je	Lj12717
	subb	$2,%al
	je	Lj12719
	subb	$5,%al
	je	Lj12717
	subb	$3,%al
	je	Lj12717
	jmp	Lj12716
Lj12717:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj12715
Lj12718:
	movl	$FPC_INITIALIZE,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12715
Lj12719:
	movl	$FPC_INITIALIZE,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_RECORDRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12715
Lj12720:
	movl	-4(%ebp),%eax
	call	SYSTEM_VARIANT_INIT$TVARDATA
	jmp	Lj12715
Lj12716:
Lj12715:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_finalize
fpc_finalize:
.globl	FPC_FINALIZE
FPC_FINALIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	cmpb	$9,%al
	jb	Lj12740
	subb	$9,%al
	je	Lj12741
	subb	$2,%al
	je	Lj12747
	decb	%al
	je	Lj12743
	decb	%al
	je	Lj12744
	decb	%al
	je	Lj12745
	subb	$2,%al
	je	Lj12744
	subb	$5,%al
	je	Lj12746
	subb	$3,%al
	je	Lj12742
	jmp	Lj12740
Lj12741:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj12739
Lj12742:
	movl	-4(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj12739
Lj12743:
	movl	$FPC_FINALIZE,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12739
Lj12744:
	movl	$FPC_FINALIZE,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_RECORDRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12739
Lj12745:
	movl	-4(%ebp),%eax
	call	FPC_INTF_DECR_REF
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj12739
Lj12746:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	call	FPC_DYNARRAY_DECR_REF
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj12739
Lj12747:
	movl	-4(%ebp),%eax
	call	SYSTEM_VARIANT_CLEAR$TVARDATA
	jmp	Lj12739
Lj12740:
Lj12739:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_addref
fpc_addref:
.globl	FPC_ADDREF
FPC_ADDREF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	cmpb	$9,%al
	jb	Lj12783
	subb	$9,%al
	je	Lj12784
	subb	$2,%al
	je	Lj12790
	decb	%al
	je	Lj12786
	decb	%al
	je	Lj12787
	decb	%al
	je	Lj12789
	subb	$2,%al
	je	Lj12787
	subb	$5,%al
	je	Lj12788
	subb	$3,%al
	je	Lj12785
	jmp	Lj12783
Lj12784:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	FPC_ANSISTR_INCR_REF
	jmp	Lj12782
Lj12785:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	FPC_UNICODESTR_INCR_REF
	jmp	Lj12782
Lj12786:
	movl	$FPC_ADDREF,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12782
Lj12787:
	movl	$FPC_ADDREF,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_RECORDRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12782
Lj12788:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	FPC_DYNARRAY_INCR_REF
	jmp	Lj12782
Lj12789:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	FPC_INTF_INCR_REF
	jmp	Lj12782
Lj12790:
	movl	-4(%ebp),%eax
	call	SYSTEM_VARIANT_ADDREF$TVARDATA
	jmp	Lj12782
Lj12783:
Lj12782:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_decref
fpc_decref:
.globl	FPC_DECREF
FPC_DECREF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	cmpb	$9,%al
	jb	Lj12816
	subb	$9,%al
	je	Lj12817
	subb	$2,%al
	je	Lj12823
	decb	%al
	je	Lj12819
	decb	%al
	je	Lj12820
	decb	%al
	je	Lj12822
	subb	$2,%al
	je	Lj12820
	subb	$5,%al
	je	Lj12821
	subb	$3,%al
	je	Lj12818
	jmp	Lj12816
Lj12817:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	jmp	Lj12815
Lj12818:
	movl	-4(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	jmp	Lj12815
Lj12819:
	movl	$FPC_DECREF,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12815
Lj12820:
	movl	$FPC_DECREF,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_RECORDRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12815
Lj12821:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	call	FPC_DYNARRAY_DECR_REF
	jmp	Lj12815
Lj12822:
	movl	-4(%ebp),%eax
	call	FPC_INTF_DECR_REF
	jmp	Lj12815
Lj12823:
	movl	-4(%ebp),%eax
	call	SYSTEM_VARIANT_CLEAR$TVARDATA
	jmp	Lj12815
Lj12816:
Lj12815:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_copy
fpc_copy:
.globl	FPC_COPY
FPC_COPY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$4,-16(%ebp)
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	cmpb	$9,%al
	jb	Lj12853
	subb	$9,%al
	je	Lj12854
	subb	$2,%al
	je	Lj12860
	decb	%al
	je	Lj12856
	decb	%al
	je	Lj12857
	decb	%al
	je	Lj12859
	subb	$2,%al
	je	Lj12857
	subb	$5,%al
	je	Lj12858
	subb	$3,%al
	je	Lj12855
	jmp	Lj12853
Lj12854:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	jmp	Lj12852
Lj12855:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	FPC_UNICODESTR_ASSIGN
	jmp	Lj12852
Lj12856:
	movl	-12(%ebp),%edx
	addl	$2,%edx
	movl	-12(%ebp),%eax
	movzbl	1(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-52(%ebp)
	movl	-52(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%ebx
	decl	%ebx
	movl	$0,-44(%ebp)
	cmpl	-44(%ebp),%ebx
	jl	Lj12878
	decl	-44(%ebp)
	.balign 4,0x90
Lj12879:
	incl	-44(%ebp)
	movl	-20(%ebp),%eax
	movl	(%eax),%edx
	movl	-44(%ebp),%eax
	imull	%eax,%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	-44(%ebp),%ecx
	imull	%ecx,%eax
	movl	-4(%ebp),%ecx
	addl	%ecx,%eax
	movl	-20(%ebp),%ecx
	movl	8(%ecx),%ecx
	call	FPC_COPY
	cmpl	-44(%ebp),%ebx
	jg	Lj12879
Lj12878:
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax),%ecx
	movl	4(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-16(%ebp)
	jmp	Lj12852
Lj12857:
	movl	-12(%ebp),%edx
	addl	$2,%edx
	movl	-12(%ebp),%eax
	movzbl	1(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-52(%ebp)
	movl	-52(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-36(%ebp)
	addl	$8,-24(%ebp)
	movl	$0,-32(%ebp)
	movl	-36(%ebp),%ebx
	movl	$1,-44(%ebp)
	cmpl	-44(%ebp),%ebx
	jl	Lj12901
	decl	-44(%ebp)
	.balign 4,0x90
Lj12902:
	incl	-44(%ebp)
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-40(%ebp)
	addl	$8,-24(%ebp)
	movl	-40(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jg	Lj12907
	jmp	Lj12908
Lj12907:
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%ecx
	addl	%ecx,%eax
	movl	-40(%ebp),%ecx
	movl	-32(%ebp),%esi
	subl	%esi,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj12908:
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-40(%ebp),%ecx
	addl	%ecx,%eax
	movl	-48(%ebp),%ecx
	call	FPC_COPY
	movl	%eax,-28(%ebp)
	movl	-40(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-32(%ebp)
	cmpl	-44(%ebp),%ebx
	jg	Lj12902
Lj12901:
	movl	-16(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jg	Lj12925
	jmp	Lj12926
Lj12925:
	movl	-8(%ebp),%edx
	movl	-32(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%ecx
	addl	%ecx,%eax
	movl	-16(%ebp),%ecx
	movl	-32(%ebp),%ebx
	subl	%ebx,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj12926:
	jmp	Lj12852
Lj12858:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	FPC_DYNARRAY_INCR_REF
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	call	FPC_DYNARRAY_DECR_REF
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	jmp	Lj12852
Lj12859:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	FPC_INTF_INCR_REF
	movl	-8(%ebp),%eax
	call	FPC_INTF_DECR_REF
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	jmp	Lj12852
Lj12860:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	TC_SYSTEM_VARCOPYPROC,%ecx
	call	*%ecx
	movl	$16,-16(%ebp)
	jmp	Lj12852
Lj12853:
Lj12852:
	movl	-16(%ebp),%eax
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_copy_proc
fpc_copy_proc:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_COPY
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_initialize_array
fpc_initialize_array:
.globl	FPC_INITIALIZE_ARRAY
FPC_INITIALIZE_ARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_RTTISIZE$POINTER$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj12967
	jmp	Lj12968
Lj12967:
	movl	-12(%ebp),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj12970
	decl	-16(%ebp)
	.balign 4,0x90
Lj12971:
	incl	-16(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	call	FPC_INITIALIZE
	cmpl	-16(%ebp),%ebx
	jg	Lj12971
Lj12970:
Lj12968:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_finalize_array
fpc_finalize_array:
.globl	FPC_FINALIZE_ARRAY
FPC_FINALIZE_ARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_RTTISIZE$POINTER$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj12982
	jmp	Lj12983
Lj12982:
	movl	-12(%ebp),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj12985
	decl	-16(%ebp)
	.balign 4,0x90
Lj12986:
	incl	-16(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	call	FPC_FINALIZE
	cmpl	-16(%ebp),%ebx
	jg	Lj12986
Lj12985:
Lj12983:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_addref_array
fpc_addref_array:
.globl	FPC_ADDREF_ARRAY
FPC_ADDREF_ARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_RTTISIZE$POINTER$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj12997
	jmp	Lj12998
Lj12997:
	movl	-12(%ebp),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj13000
	decl	-16(%ebp)
	.balign 4,0x90
Lj13001:
	incl	-16(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	call	FPC_ADDREF
	cmpl	-16(%ebp),%ebx
	jg	Lj13001
Lj13000:
Lj12998:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_decref_array
fpc_decref_array:
.globl	FPC_DECREF_ARRAY
FPC_DECREF_ARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_RTTISIZE$POINTER$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj13012
	jmp	Lj13013
Lj13012:
	movl	-12(%ebp),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj13015
	decl	-16(%ebp)
	.balign 4,0x90
Lj13016:
	incl	-16(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	call	FPC_DECREF
	cmpl	-16(%ebp),%ebx
	jg	Lj13016
Lj13015:
Lj13013:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SGENRAND_MT19937$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,U_SYSTEM_MT
	movl	$1,-8(%ebp)
	decl	-8(%ebp)
	.balign 4,0x90
Lj13027:
	incl	-8(%ebp)
	movl	-8(%ebp),%eax
	decl	%eax
	movl	U_SYSTEM_MT(,%eax,4),%eax
	shrl	$30,%eax
	movl	-8(%ebp),%edx
	decl	%edx
	movl	U_SYSTEM_MT(,%edx,4),%edx
	xorl	%edx,%eax
	imull	$1812433253,%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	movl	%eax,U_SYSTEM_MT(,%edx,4)
	cmpl	$623,-8(%ebp)
	jl	Lj13027
	movl	$624,TC_SYSTEM_MTI
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_GENRAND_MT19937$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	U_SYSTEM_RANDSEED,%eax
	cmpl	TC_SYSTEM_OLDRANDSEED,%eax
	jne	Lj13034
	jmp	Lj13035
Lj13034:
	movl	$625,TC_SYSTEM_MTI
Lj13035:
	movl	TC_SYSTEM_MTI,%eax
	cmpl	$624,%eax
	jge	Lj13038
	jmp	Lj13039
Lj13038:
	movl	TC_SYSTEM_MTI,%eax
	cmpl	$625,%eax
	je	Lj13040
	jmp	Lj13041
Lj13040:
	movl	U_SYSTEM_RANDSEED,%eax
	call	SYSTEM_SGENRAND_MT19937$LONGINT
	movl	U_SYSTEM_RANDSEED,%eax
	notl	%eax
	movl	%eax,U_SYSTEM_RANDSEED
	movl	U_SYSTEM_RANDSEED,%eax
	movl	%eax,TC_SYSTEM_OLDRANDSEED
Lj13041:
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.balign 4,0x90
Lj13050:
	incl	-12(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	movl	U_SYSTEM_MT(,%eax,4),%edx
	andl	$2147483647,%edx
	movl	-12(%ebp),%eax
	movl	U_SYSTEM_MT(,%eax,4),%eax
	andl	$-2147483648,%eax
	orl	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-12(%ebp),%eax
	addl	$397,%eax
	movl	-8(%ebp),%edx
	shrl	$1,%edx
	movl	U_SYSTEM_MT(,%eax,4),%ecx
	xorl	%edx,%ecx
	movl	-8(%ebp),%eax
	andl	$1,%eax
	movl	TC_SYSTEM_GENRAND_MT19937$$LONGINT_MAG01(,%eax,4),%eax
	xorl	%eax,%ecx
	movl	-12(%ebp),%eax
	movl	%ecx,U_SYSTEM_MT(,%eax,4)
	cmpl	$226,-12(%ebp)
	jl	Lj13050
	movl	$227,-12(%ebp)
	decl	-12(%ebp)
	.balign 4,0x90
Lj13057:
	incl	-12(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	movl	U_SYSTEM_MT(,%eax,4),%edx
	andl	$2147483647,%edx
	movl	-12(%ebp),%eax
	movl	U_SYSTEM_MT(,%eax,4),%eax
	andl	$-2147483648,%eax
	orl	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-12(%ebp),%eax
	addl	$-227,%eax
	movl	-8(%ebp),%edx
	shrl	$1,%edx
	movl	U_SYSTEM_MT(,%eax,4),%ecx
	xorl	%edx,%ecx
	movl	-8(%ebp),%eax
	andl	$1,%eax
	movl	TC_SYSTEM_GENRAND_MT19937$$LONGINT_MAG01(,%eax,4),%eax
	xorl	%eax,%ecx
	movl	-12(%ebp),%eax
	movl	%ecx,U_SYSTEM_MT(,%eax,4)
	cmpl	$622,-12(%ebp)
	jl	Lj13057
	movl	U_SYSTEM_MT+2492,%eax
	andl	$-2147483648,%eax
	movl	U_SYSTEM_MT,%edx
	andl	$2147483647,%edx
	orl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	shrl	$1,%eax
	movl	U_SYSTEM_MT+1584,%edx
	xorl	%edx,%eax
	movl	-8(%ebp),%edx
	andl	$1,%edx
	movl	TC_SYSTEM_GENRAND_MT19937$$LONGINT_MAG01(,%edx,4),%edx
	xorl	%edx,%eax
	movl	%eax,U_SYSTEM_MT+2492
	movl	$0,TC_SYSTEM_MTI
Lj13039:
	movl	TC_SYSTEM_MTI,%eax
	movl	U_SYSTEM_MT(,%eax,4),%eax
	movl	%eax,-8(%ebp)
	incl	TC_SYSTEM_MTI
	movl	-8(%ebp),%eax
	shrl	$11,%eax
	movl	-8(%ebp),%edx
	xorl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$7,%eax
	andl	$-1658038656,%eax
	movl	-8(%ebp),%edx
	xorl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$15,%eax
	andl	$-272236544,%eax
	movl	-8(%ebp),%edx
	xorl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	shrl	$18,%eax
	movl	-8(%ebp),%edx
	xorl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RANDOM$LONGINT$$LONGINT
SYSTEM_RANDOM$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj13082
	jmp	Lj13083
Lj13082:
	incl	-4(%ebp)
Lj13083:
	call	SYSTEM_GENRAND_MT19937$$LONGINT
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	movl	-4(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	$0,%eax
	call	fpc_mul_int64
	xorl	%eax,%eax
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RANDOM$INT64$$INT64
SYSTEM_RANDOM$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	call	SYSTEM_GENRAND_MT19937$$LONGINT
	movl	%eax,%ebx
	movl	$0,%esi
	call	SYSTEM_GENRAND_MT19937$$LONGINT
	movl	$0,%edx
	xorl	%edx,%edx
	orl	%edx,%ebx
	orl	%eax,%esi
	andl	$2147483647,%esi
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	cmpl	$0,%eax
	jne	Lj13096
	cmpl	$0,%edx
	jne	Lj13096
	jmp	Lj13097
Lj13096:
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	-4(%ebp)
	pushl	-8(%ebp)
	call	fpc_mod_int64
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	jmp	Lj13104
Lj13097:
	movl	$0,-8(%ebp)
	movl	$0,-4(%ebp)
Lj13104:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_RANDOM$$EXTENDED
SYSTEM_RANDOM$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	SYSTEM_GENRAND_MT19937$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-20(%ebp)
	fildq	-24(%ebp)
	fldt	_$SYSTEM$_Ld28
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
	fldt	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_PTR$LONGINT$LONGINT$$FARPOINTER
SYSTEM_PTR$LONGINT$LONGINT$$FARPOINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	shll	$4,%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_CSEG$$WORD
SYSTEM_CSEG$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2,%esp
	movw	$0,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DSEG$$WORD
SYSTEM_DSEG$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2,%esp
	movw	$0,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SSEG$$WORD
SYSTEM_SSEG$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2,%esp
	movw	$0,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_rangeerror
fpc_rangeerror:
.globl	FPC_RANGEERROR
FPC_RANGEERROR:
	pushl	%ebp
	movl	%esp,%ebp
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_divbyzero
fpc_divbyzero:
.globl	FPC_DIVBYZERO
FPC_DIVBYZERO:
	pushl	%ebp
	movl	%esp,%ebp
	movl	%ebp,%edx
	movl	$200,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_overflow
fpc_overflow:
.globl	FPC_OVERFLOW
FPC_OVERFLOW:
	pushl	%ebp
	movl	%esp,%ebp
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FPC_THREADERROR
SYSTEM_FPC_THREADERROR:
.globl	FPC_THREADERROR
FPC_THREADERROR:
	pushl	%ebp
	movl	%esp,%ebp
	movl	%ebp,%edx
	movl	$6,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_iocheck
fpc_iocheck:
.globl	FPC_IOCHECK
FPC_IOCHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13155
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj13156
Lj13155:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj13156:
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj13157
	jmp	Lj13158
Lj13157:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-8(%ebp),%eax
	movw	$0,(%eax)
	movl	%ebp,%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj13158:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_IORESULT$$WORD
SYSTEM_IORESULT$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13171
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj13172
Lj13171:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj13172:
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-2(%ebp)
	movl	-8(%ebp),%eax
	movw	$0,(%eax)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETTHREADID$$LONGWORD
SYSTEM_GETTHREADID$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13181
	movl	U_SYSTEM_THREADID,%eax
	call	*%edx
	jmp	Lj13182
Lj13181:
	movl	$U_SYSTEM_THREADID+4,%eax
Lj13182:
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_safecallcheck
fpc_safecallcheck:
.globl	FPC_SAFECALLCHECK
FPC_SAFECALLCHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj13185
	jmp	Lj13186
Lj13185:
	cmpl	$0,TC_SYSTEM_SAFECALLERRORPROC
	jne	Lj13187
	jmp	Lj13188
Lj13187:
	movl	%ebp,%edx
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_SAFECALLERRORPROC,%ecx
	call	*%ecx
Lj13188:
	movl	%ebp,%edx
	movl	$229,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj13186:
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FPC_STACKCHECK$LONGWORD
SYSTEM_FPC_STACKCHECK$LONGWORD:
.globl	FPC_STACKCHECK
FPC_STACKCHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	cmpb	$0,TC_SYSTEM_STACKERROR
	jne	Lj13201
	jmp	Lj13202
Lj13201:
	jmp	Lj13199
Lj13202:
	call	SYSTEM_SPTR$$POINTER
	subl	$16384,%eax
	movl	%eax,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13207
	movl	U_SYSTEM_STACKBOTTOM,%eax
	call	*%edx
	jmp	Lj13208
Lj13207:
	movl	$U_SYSTEM_STACKBOTTOM+4,%eax
Lj13208:
	movl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	jae	Lj13205
	jmp	Lj13206
Lj13205:
	movb	$1,TC_SYSTEM_STACKERROR
	movl	$202,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj13206:
Lj13199:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_initializeunits
fpc_initializeunits:
.globl	FPC_INITIALIZEUNITS
FPC_INITIALIZEUNITS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	call	SYSTEM_FPC_CPUINIT
	movl	INITFINAL,%ebx
	movl	$1,-4(%ebp)
	cmpl	-4(%ebp),%ebx
	jl	Lj13216
	decl	-4(%ebp)
	.balign 4,0x90
Lj13217:
	incl	-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,INITFINAL(,%eax,8)
	jne	Lj13218
	jmp	Lj13219
Lj13218:
	movl	-4(%ebp),%eax
	movl	INITFINAL(,%eax,8),%eax
	call	*%eax
Lj13219:
	movl	-4(%ebp),%eax
	movl	%eax,INITFINAL+4
	cmpl	-4(%ebp),%ebx
	jg	Lj13217
Lj13216:
	cmpl	$0,TC_SYSTEM_INITPROC
	jne	Lj13222
	jmp	Lj13223
Lj13222:
	movl	TC_SYSTEM_INITPROC,%eax
	call	*%eax
Lj13223:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FPC_LIBINITIALIZEUNITS
SYSTEM_FPC_LIBINITIALIZEUNITS:
.globl	FPC_LIBINITIALIZEUNITS
FPC_LIBINITIALIZEUNITS:
	pushl	%ebp
	movl	%esp,%ebp
	movb	$1,operatingsystem_islibrary
	movb	$1,TC_SYSTEM_MODULEISLIB
	call	FPC_INITIALIZEUNITS
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FINALIZEUNITS
SYSTEM_FINALIZEUNITS:
.globl	FPC_FINALIZEUNITS
FPC_FINALIZEUNITS:
	pushl	%ebp
	movl	%esp,%ebp
	jmp	Lj13233
	.balign 4,0x90
Lj13232:
	decl	INITFINAL+4
	movl	INITFINAL+4,%eax
	incl	%eax
	cmpl	$0,INITFINAL+4(,%eax,8)
	jne	Lj13235
	jmp	Lj13236
Lj13235:
	movl	INITFINAL+4,%eax
	incl	%eax
	movl	INITFINAL+4(,%eax,8),%eax
	call	*%eax
Lj13236:
Lj13233:
	movl	INITFINAL+4,%eax
	cmpl	$0,%eax
	jg	Lj13232
	jmp	Lj13234
Lj13234:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSFLUSHSTDIO
SYSTEM_SYSFLUSHSTDIO:
	pushl	%ebp
	movl	%esp,%ebp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13241
	movl	U_SYSTEM_OUTPUT,%eax
	call	*%edx
	jmp	Lj13242
Lj13241:
	movl	$U_SYSTEM_OUTPUT+4,%eax
Lj13242:
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj13239
	jmp	Lj13240
Lj13239:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13245
	movl	U_SYSTEM_OUTPUT,%eax
	call	*%edx
	jmp	Lj13246
Lj13245:
	movl	$U_SYSTEM_OUTPUT+4,%eax
Lj13246:
	call	SYSTEM_FLUSH$TEXT
Lj13240:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13249
	movl	U_SYSTEM_ERROUTPUT,%eax
	call	*%edx
	jmp	Lj13250
Lj13249:
	movl	$U_SYSTEM_ERROUTPUT+4,%eax
Lj13250:
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj13247
	jmp	Lj13248
Lj13247:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13253
	movl	U_SYSTEM_ERROUTPUT,%eax
	call	*%edx
	jmp	Lj13254
Lj13253:
	movl	$U_SYSTEM_ERROUTPUT+4,%eax
Lj13254:
	call	SYSTEM_FLUSH$TEXT
Lj13248:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13257
	movl	U_SYSTEM_STDOUT,%eax
	call	*%edx
	jmp	Lj13258
Lj13257:
	movl	$U_SYSTEM_STDOUT+4,%eax
Lj13258:
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj13255
	jmp	Lj13256
Lj13255:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13261
	movl	U_SYSTEM_STDOUT,%eax
	call	*%edx
	jmp	Lj13262
Lj13261:
	movl	$U_SYSTEM_STDOUT+4,%eax
Lj13262:
	call	SYSTEM_FLUSH$TEXT
Lj13256:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13265
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj13266
Lj13265:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj13266:
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj13263
	jmp	Lj13264
Lj13263:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13269
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj13270
Lj13269:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj13270:
	call	SYSTEM_FLUSH$TEXT
Lj13264:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INTERNALEXIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%ebx,-272(%ebp)
	jmp	Lj13274
	.balign 4,0x90
Lj13273:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13278
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj13279
Lj13278:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj13279:
	movw	$0,(%eax)
	movl	TC_SYSTEM_EXITPROC,%eax
	movl	%eax,-4(%ebp)
	movl	$0,TC_SYSTEM_EXITPROC
	movl	-4(%ebp),%eax
	call	*%eax
Lj13274:
	movl	TC_SYSTEM_EXITPROC,%eax
	testl	%eax,%eax
	jne	Lj13273
	jmp	Lj13275
Lj13275:
	call	SYSTEM_FINALIZEUNITS
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13286
	movl	U_SYSTEM_STDOUT,%eax
	call	*%edx
	jmp	Lj13287
Lj13286:
	movl	$U_SYSTEM_STDOUT+4,%eax
Lj13287:
	movl	%eax,-8(%ebp)
	movl	TC_SYSTEM_ERRORADDR,%eax
	testl	%eax,%eax
	jne	Lj13288
	jmp	Lj13289
Lj13288:
	movl	-8(%ebp),%ebx
	movl	%ebx,%edx
	movl	$_$SYSTEM$_Ld29,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movzwl	TC_SYSTEM_ERRORCODE,%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	fpc_write_text_uint
	movl	%ebx,%edx
	movl	$_$SYSTEM$_Ld30,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	leal	-268(%ebp),%edx
	movl	TC_SYSTEM_ERRORADDR,%eax
	call	SYSTEM_HEXSTR$POINTER$$SHORTSTRING
	leal	-268(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	%ebx,%eax
	call	fpc_writeln_end
	movl	-8(%ebp),%ebx
	leal	-268(%ebp),%edx
	movl	TC_SYSTEM_ERRORADDR,%eax
	movl	TC_SYSTEM_BACKTRACESTRFUNC,%ecx
	call	*%ecx
	leal	-268(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	%ebx,%eax
	call	fpc_writeln_end
	movl	-8(%ebp),%eax
	movl	TC_SYSTEM_ERRORBASE,%edx
	call	SYSTEM_DUMP_STACK$TEXT$POINTER
	movl	-8(%ebp),%ebx
	movl	%ebx,%edx
	movl	$_$SYSTEM$_Ld1,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	%ebx,%eax
	call	fpc_writeln_end
Lj13289:
	call	SYSTEM_SYSFLUSHSTDIO
	cmpl	$0,_argv
	jne	Lj13350
	jmp	Lj13351
Lj13350:
	movl	_argc,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj13353
	decl	-12(%ebp)
	.balign 4,0x90
Lj13354:
	incl	-12(%ebp)
	movl	_argv,%edx
	movl	-12(%ebp),%eax
	cmpl	$0,(%edx,%eax,4)
	jne	Lj13355
	jmp	Lj13356
Lj13355:
	movl	_argv,%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	call	SYSTEM_SYSFREEMEM$POINTER$$LONGWORD
	movl	_argv,%eax
	movl	-12(%ebp),%edx
	movl	$0,(%eax,%edx,4)
Lj13356:
	cmpl	-12(%ebp),%ebx
	jg	Lj13354
Lj13353:
	movl	_argv,%eax
	call	SYSTEM_SYSFREEMEM$POINTER$$LONGWORD
	movl	$0,_argv
Lj13351:
	call	SYSTEM_FINALIZEHEAP
	movl	-272(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DO_EXIT
SYSTEM_DO_EXIT:
.globl	FPC_DO_EXIT
FPC_DO_EXIT:
	pushl	%ebp
	movl	%esp,%ebp
	call	SYSTEM_INTERNALEXIT
	call	SYSTEM_SYSTEM_EXIT
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LIB_EXIT
SYSTEM_LIB_EXIT:
.globl	FPC_LIB_EXIT
FPC_LIB_EXIT:
	pushl	%ebp
	movl	%esp,%ebp
	call	SYSTEM_INTERNALEXIT
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_HALT$LONGINT
SYSTEM_HALT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,operatingsystem_result
	call	SYSTEM_DO_EXIT
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSBACKTRACESTR$POINTER$$SHORTSTRING
SYSTEM_SYSBACKTRACESTR$POINTER$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_HEXSTR$POINTER$$SHORTSTRING
	leal	-264(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	movl	$_$SYSTEM$_Ld31,%ecx
	movl	$255,%edx
	call	fpc_shortstr_concat
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER
SYSTEM_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER:
.globl	FPC_BREAK_ERROR
FPC_BREAK_ERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	TC_SYSTEM_ERRORPROC,%eax
	testl	%eax,%eax
	jne	Lj13389
	jmp	Lj13390
Lj13389:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_ERRORPROC,%ebx
	call	*%ebx
Lj13390:
	movw	-4(%ebp),%ax
	movw	%ax,TC_SYSTEM_ERRORCODE
	movl	-8(%ebp),%eax
	movl	%eax,TC_SYSTEM_ERRORADDR
	movl	-12(%ebp),%eax
	movl	%eax,TC_SYSTEM_ERRORBASE
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13405
	movl	U_SYSTEM_EXCEPTADDRSTACK,%eax
	call	*%edx
	jmp	Lj13406
Lj13405:
	movl	$U_SYSTEM_EXCEPTADDRSTACK+4,%eax
Lj13406:
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj13403
	jmp	Lj13404
Lj13403:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	$0,%eax
	call	FPC_RAISEEXCEPTION
Lj13404:
	movw	TC_SYSTEM_ERRORCODE,%ax
	cmpw	$255,%ax
	ja	Lj13407
	jmp	Lj13408
Lj13407:
	movl	$255,%eax
	call	SYSTEM_HALT$LONGINT
	jmp	Lj13411
Lj13408:
	movzwl	TC_SYSTEM_ERRORCODE,%eax
	call	SYSTEM_HALT$LONGINT
Lj13411:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER
	movl	%eax,%ebx
	movl	-8(%ebp),%eax
	call	SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%ebx,%ecx
	call	SYSTEM_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_HANDLEERRORADDRFRAMEIND$LONGINT$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	call	SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER
	movl	%eax,%ebx
	movl	-12(%ebp),%eax
	call	SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%ebx,%ecx
	call	SYSTEM_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_HANDLEERROR$LONGINT
SYSTEM_HANDLEERROR$LONGINT:
.globl	FPC_HANDLEERROR
FPC_HANDLEERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	%ebp,%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RUNERROR$WORD
SYSTEM_RUNERROR$WORD:
.globl	FPC_RUNERROR
FPC_RUNERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	movw	%ax,TC_SYSTEM_ERRORCODE
	movl	%ebp,%eax
	call	SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
	movl	%eax,TC_SYSTEM_ERRORADDR
	movl	%ebp,%eax
	call	SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER
	movl	%eax,TC_SYSTEM_ERRORBASE
	movw	TC_SYSTEM_ERRORCODE,%ax
	cmpw	$255,%ax
	ja	Lj13456
	jmp	Lj13457
Lj13456:
	movl	$255,%eax
	call	SYSTEM_HALT$LONGINT
	jmp	Lj13460
Lj13457:
	movzwl	TC_SYSTEM_ERRORCODE,%eax
	call	SYSTEM_HALT$LONGINT
Lj13460:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RUNERROR
SYSTEM_RUNERROR:
	pushl	%ebp
	movl	%esp,%ebp
	movw	$0,%ax
	call	SYSTEM_RUNERROR$WORD
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_HALT
SYSTEM_HALT:
	pushl	%ebp
	movl	%esp,%ebp
	movl	$0,%eax
	call	SYSTEM_HALT$LONGINT
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ERROR$TRUNTIMEERROR
SYSTEM_ERROR$TRUNTIMEERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbw	TC_SYSTEM_RUNTIMEERROREXITCODES(,%eax,1),%ax
	call	SYSTEM_RUNERROR$WORD
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DUMP_STACK$TEXT$POINTER
SYSTEM_DUMP_STACK$TEXT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$324,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj13479
	movl	-8(%ebp),%eax
	decl	%eax
	movl	%eax,-16(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_ISDEVICE$LONGINT$$BOOLEAN
	movb	%al,-17(%ebp)
	jmp	Lj13492
	.balign 4,0x90
Lj13491:
	movl	-8(%ebp),%eax
	call	SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER
	movl	%eax,-24(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj13502
	jmp	Lj13503
Lj13502:
	jmp	Lj13493
Lj13503:
	leal	-324(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	TC_SYSTEM_BACKTRACESTRFUNC,%ecx
	call	*%ecx
	leal	-324(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	-4(%ebp),%eax
	call	fpc_writeln_end
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj13516
	jmp	Lj13517
Lj13516:
	jmp	Lj13493
Lj13517:
	incl	-12(%ebp)
	movzwl	TC_SYSTEM_MAX_FRAME_DUMP,%eax
	cmpl	-12(%ebp),%eax
	jl	Lj13521
	jmp	Lj13520
Lj13521:
	cmpb	$0,-17(%ebp)
	jne	Lj13518
	jmp	Lj13520
Lj13520:
	movl	-12(%ebp),%eax
	cmpl	$256,%eax
	jg	Lj13518
	jmp	Lj13519
Lj13518:
	jmp	Lj13493
Lj13519:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj13492:
	movl	-8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj13491
	jmp	Lj13493
Lj13493:
Lj13479:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj13481
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj13481
Lj13481:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DUMPEXCEPTIONBACKTRACE$TEXT
SYSTEM_DUMPEXCEPTIONBACKTRACE$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$276,%esp
	movl	%ebx,-276(%ebp)
	movl	%eax,-4(%ebp)
	call	SYSTEM_RAISELIST$$PEXCEPTOBJECT
	testl	%eax,%eax
	je	Lj13528
	jmp	Lj13529
Lj13528:
	jmp	Lj13526
Lj13529:
	call	SYSTEM_RAISELIST$$PEXCEPTOBJECT
	movl	4(%eax),%eax
	leal	-272(%ebp),%edx
	movl	TC_SYSTEM_BACKTRACESTRFUNC,%ecx
	call	*%ecx
	leal	-272(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	-4(%ebp),%eax
	call	fpc_writeln_end
	call	SYSTEM_RAISELIST$$PEXCEPTOBJECT
	movl	16(%eax),%eax
	movl	%eax,-12(%ebp)
	call	SYSTEM_RAISELIST$$PEXCEPTOBJECT
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj13547
	decl	-8(%ebp)
	.balign 4,0x90
Lj13548:
	incl	-8(%ebp)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	leal	-272(%ebp),%edx
	movl	TC_SYSTEM_BACKTRACESTRFUNC,%ecx
	call	*%ecx
	leal	-272(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	-4(%ebp),%eax
	call	fpc_writeln_end
	cmpl	-8(%ebp),%ebx
	jg	Lj13548
Lj13547:
Lj13526:
	movl	-276(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DOEXITPROC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	TC_SYSTEM_EXITPROCLIST,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,TC_SYSTEM_EXITPROCLIST
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,TC_SYSTEM_EXITPROC
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	call	fpc_freemem
	movl	-8(%ebp),%eax
	call	*%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ADDEXITPROC$TPROCEDURE
SYSTEM_ADDEXITPROC$TPROCEDURE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$12,%eax
	call	fpc_getmem
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	TC_SYSTEM_EXITPROCLIST,%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	movl	TC_SYSTEM_EXITPROC,%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-8(%ebp),%eax
	movl	%eax,TC_SYSTEM_EXITPROCLIST
	movl	$SYSTEM_DOEXITPROC,%eax
	movl	%eax,TC_SYSTEM_EXITPROC
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ARRAYSTRINGTOPPCHAR$array_of_ANSISTRING$LONGINT$$PPCHAR
SYSTEM_ARRAYSTRINGTOPPCHAR$array_of_ANSISTRING$LONGINT$$PPCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj13593
	jmp	Lj13594
Lj13593:
	movl	$0,-16(%ebp)
	jmp	Lj13591
Lj13594:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	addl	$2,%edx
	shll	$2,%edx
	leal	-20(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj13601
	jmp	Lj13602
Lj13601:
	movl	$0,-16(%ebp)
	jmp	Lj13591
Lj13602:
	movl	-12(%ebp),%ecx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ecx
	jl	Lj13606
	decl	-24(%ebp)
	.balign 4,0x90
Lj13607:
	incl	-24(%ebp)
	movl	-20(%ebp),%ebx
	movl	-24(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%esi
	movl	(%edx,%esi,4),%edx
	testl	%edx,%edx
	jne	Lj13610
	movl	$FPC_EMPTYCHAR,%edx
Lj13610:
	movl	%edx,(%ebx,%eax,4)
	cmpl	-24(%ebp),%ecx
	jg	Lj13607
Lj13606:
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%eax
	incl	%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movl	$0,(%ecx,%eax,4)
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj13591:
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_STRINGTOPPCHAR$ANSISTRING$SMALLINT$$PPCHAR
SYSTEM_STRINGTOPPCHAR$ANSISTRING$SMALLINT$$PPCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj13621
	movl	$FPC_EMPTYCHAR,%eax
Lj13621:
	movw	-8(%ebp),%dx
	call	SYSTEM_STRINGTOPPCHAR$PCHAR$SMALLINT$$PPCHAR
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_STRINGTOPPCHAR$PCHAR$SMALLINT$$PPCHAR
SYSTEM_STRINGTOPPCHAR$PCHAR$SMALLINT$$PPCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$1,-20(%ebp)
	jmp	Lj13631
	.balign 4,0x90
Lj13630:
	jmp	Lj13634
	.balign 4,0x90
Lj13633:
	incl	-24(%ebp)
Lj13634:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj13636
	cmpl	$23,%eax
	stc
	je	Lj13636
	clc
Lj13636:
	jc	Lj13633
	jmp	Lj13635
Lj13635:
	incl	-20(%ebp)
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	$34,%al
	je	Lj13637
	jmp	Lj13638
Lj13637:
	incl	-24(%ebp)
	jmp	Lj13640
	.balign 4,0x90
Lj13639:
	incl	-24(%ebp)
Lj13640:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$0,%eax
	je	Lj13642
	cmpl	$34,%eax
	je	Lj13642
Lj13642:
	je	Lj13641
	jmp	Lj13639
Lj13641:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	$34,%al
	je	Lj13643
	jmp	Lj13644
Lj13643:
	incl	-24(%ebp)
Lj13644:
	jmp	Lj13645
Lj13638:
	jmp	Lj13647
	.balign 4,0x90
Lj13646:
	incl	-24(%ebp)
Lj13647:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$0,%eax
	stc
	je	Lj13649
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj13649
	cmpl	$23,%eax
	stc
	je	Lj13649
	clc
Lj13649:
	jc	Lj13648
	jmp	Lj13646
Lj13648:
Lj13645:
Lj13631:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj13630
	jmp	Lj13632
Lj13632:
	movswl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	shll	$2,%edx
	leal	-28(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-28(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj13656
	jmp	Lj13657
Lj13656:
	jmp	Lj13624
Lj13657:
	movswl	-8(%ebp),%eax
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj13659
	decl	-16(%ebp)
	.balign 4,0x90
Lj13660:
	incl	-16(%ebp)
	addl	$4,-28(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj13660
Lj13659:
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj13664
	.balign 4,0x90
Lj13663:
	jmp	Lj13667
	.balign 4,0x90
Lj13666:
	movl	-24(%ebp),%eax
	movb	$0,(%eax)
	incl	-24(%ebp)
Lj13667:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj13671
	cmpl	$23,%eax
	stc
	je	Lj13671
	clc
Lj13671:
	jc	Lj13666
	jmp	Lj13668
Lj13668:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	$34,%al
	je	Lj13672
	jmp	Lj13673
Lj13672:
	incl	-24(%ebp)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,(%eax)
	addl	$4,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj13679
	.balign 4,0x90
Lj13678:
	incl	-24(%ebp)
Lj13679:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$0,%eax
	je	Lj13681
	cmpl	$34,%eax
	je	Lj13681
Lj13681:
	je	Lj13680
	jmp	Lj13678
Lj13680:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	$34,%al
	je	Lj13682
	jmp	Lj13683
Lj13682:
	movl	-24(%ebp),%eax
	movb	$0,(%eax)
	incl	-24(%ebp)
Lj13683:
	jmp	Lj13686
Lj13673:
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,(%eax)
	addl	$4,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj13692
	.balign 4,0x90
Lj13691:
	incl	-24(%ebp)
Lj13692:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$0,%eax
	stc
	je	Lj13694
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj13694
	cmpl	$23,%eax
	stc
	je	Lj13694
	clc
Lj13694:
	jc	Lj13693
	jmp	Lj13691
Lj13693:
Lj13686:
Lj13664:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj13663
	jmp	Lj13665
Lj13665:
Lj13624:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_abstracterrorintern
fpc_abstracterrorintern:
.globl	FPC_ABSTRACTERROR
FPC_ABSTRACTERROR:
	pushl	%ebp
	movl	%esp,%ebp
	movl	TC_SYSTEM_ABSTRACTERRORPROC,%eax
	testl	%eax,%eax
	jne	Lj13697
	jmp	Lj13698
Lj13697:
	movl	TC_SYSTEM_ABSTRACTERRORPROC,%eax
	call	*%eax
Lj13698:
	movl	%ebp,%edx
	movl	$211,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_assert
fpc_assert:
.globl	FPC_ASSERT
FPC_ASSERT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	TC_SYSTEM_ASSERTERRORPROC,%eax
	testl	%eax,%eax
	jne	Lj13705
	jmp	Lj13706
Lj13705:
	pushl	8(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_ASSERTERRORPROC,%ebx
	call	*%ebx
	jmp	Lj13715
Lj13706:
	movl	%ebp,%edx
	movl	$227,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj13715:
	movl	-16(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_SYSASSERT$SHORTSTRING$SHORTSTRING$LONGINT$POINTER
SYSTEM_SYSASSERT$SHORTSTRING$SHORTSTRING$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	je	Lj13722
	jmp	Lj13723
Lj13722:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13726
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13727
Lj13726:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13727:
	movl	$_$SYSTEM$_Ld32,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13734
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj13735
Lj13734:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj13735:
	call	fpc_write_end
	jmp	Lj13736
Lj13723:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13739
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13740
Lj13739:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13740:
	movl	-4(%ebp),%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13747
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj13748
Lj13747:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj13748:
	call	fpc_write_end
Lj13736:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13751
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13752
Lj13751:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13752:
	movl	$_$SYSTEM$_Ld33,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13759
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13760
Lj13759:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13760:
	movl	-8(%ebp),%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13767
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13768
Lj13767:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13768:
	movl	$_$SYSTEM$_Ld34,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13775
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13776
Lj13775:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13776:
	movl	-12(%ebp),%ecx
	movl	$0,%eax
	call	fpc_write_text_sint
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13783
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13784
Lj13783:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13784:
	movl	$_$SYSTEM$_Ld35,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13791
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj13792
Lj13791:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj13792:
	call	fpc_writeln_end
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13795
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13796
Lj13795:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13796:
	movl	$_$SYSTEM$_Ld1,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13803
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj13804
Lj13803:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj13804:
	call	fpc_writeln_end
	movl	$227,%eax
	call	SYSTEM_HALT$LONGINT
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_setjmp
fpc_setjmp:
.globl	FPC_SETJMP
FPC_SETJMP:
	movl	%ebx,(%eax)
	movl	%esi,4(%eax)
	movl	%edi,8(%eax)
	movl	%ebp,12(%eax)
	leal	4(%esp),%edi
	movl	%edi,16(%eax)
	movl	(%esp),%edi
	movl	%edi,20(%eax)
	movl	8(%eax),%edi
	xorl	%eax,%eax
	ret

.text
	.balign 4,0x90
.globl	fpc_longjmp
fpc_longjmp:
.globl	FPC_LONGJMP
FPC_LONGJMP:
	xchgl	%edx,%eax
	movl	(%edx),%ebx
	movl	4(%edx),%esi
	movl	8(%edx),%edi
	movl	12(%edx),%ebp
	movl	16(%edx),%esp
	jmp	*20(%edx)
	ret

.text
	.balign 4,0x90
SYSTEM_SBRK$LONGINT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,%edx
	movw	$32512,%ax
	call	___SYSCALL
	incl	%eax
	jz	Lj13813
	decl	%eax
Lj13813:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSOSALLOC$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_SBRK$LONGINT$$POINTER
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSOSFREE$POINTER$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETMEMORYMANAGER$TMEMORYMANAGER
SYSTEM_GETMEMORYMANAGER$TMEMORYMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edi
	movl	$TC_SYSTEM_MEMORYMANAGER,%esi
	cld
	movl	$12,%ecx
	rep
	movsl
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETMEMORYMANAGER$TMEMORYMANAGER
SYSTEM_SETMEMORYMANAGER$TMEMORYMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	movl	$TC_SYSTEM_MEMORYMANAGER,%edi
	cld
	movl	$12,%ecx
	rep
	movsl
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ISMEMORYMANAGERSET$$BOOLEAN
SYSTEM_ISMEMORYMANAGERSET$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	movl	$SYSTEM_SYSGETMEM$LONGWORD$$POINTER,%eax
	cmpl	TC_SYSTEM_MEMORYMANAGER+4,%eax
	jne	Lj13832
	jmp	Lj13834
Lj13834:
	movl	$SYSTEM_SYSFREEMEM$POINTER$$LONGWORD,%eax
	cmpl	TC_SYSTEM_MEMORYMANAGER+8,%eax
	jne	Lj13832
	jmp	Lj13833
Lj13832:
	movb	$1,-1(%ebp)
	jmp	Lj13835
Lj13833:
	movb	$0,-1(%ebp)
Lj13835:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETMEM$POINTER$LONGWORD
SYSTEM_GETMEM$POINTER$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+4,%edx
	call	*%edx
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETMEMORY$POINTER$LONGWORD
SYSTEM_GETMEMORY$POINTER$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FREEMEM$POINTER$LONGWORD
SYSTEM_FREEMEM$POINTER$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+12,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FREEMEMORY$POINTER$LONGWORD
SYSTEM_FREEMEMORY$POINTER$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$LONGWORD
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETHEAPSTATUS$$THEAPSTATUS
SYSTEM_GETHEAPSTATUS$$THEAPSTATUS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+40,%edx
	call	*%edx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETFPCHEAPSTATUS$$TFPCHEAPSTATUS
SYSTEM_GETFPCHEAPSTATUS$$TFPCHEAPSTATUS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+44,%edx
	call	*%edx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_MEMSIZE$POINTER$$LONGWORD
SYSTEM_MEMSIZE$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+24,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FREEMEM$POINTER$$LONGWORD
SYSTEM_FREEMEM$POINTER$$LONGWORD:
.globl	FPC_FREEMEM_X
FPC_FREEMEM_X:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+8,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FREEMEMORY$POINTER$$LONGWORD
SYSTEM_FREEMEMORY$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	8(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETMEM$LONGWORD$$POINTER
SYSTEM_GETMEM$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+4,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETMEMORY$LONGWORD$$POINTER
SYSTEM_GETMEMORY$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	8(%ebp),%eax
	call	SYSTEM_GETMEM$LONGWORD$$POINTER
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ALLOCMEM$LONGWORD$$POINTER
SYSTEM_ALLOCMEM$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+16,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+20,%ecx
	call	*%ecx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_REALLOCMEMORY$POINTER$LONGWORD$$POINTER
SYSTEM_REALLOCMEMORY$POINTER$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	12(%ebp),%edx
	leal	8(%ebp),%eax
	call	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_getmem
fpc_getmem:
.globl	FPC_GETMEM
FPC_GETMEM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+4,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_freemem
fpc_freemem:
.globl	FPC_FREEMEM
FPC_FREEMEM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+8,%edx
	call	*%edx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSGETFPCHEAPSTATUS$$TFPCHEAPSTATUS
SYSTEM_SYSGETFPCHEAPSTATUS$$TFPCHEAPSTATUS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13934
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj13935
Lj13934:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj13935:
	leal	164(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax),%ecx
	movl	12(%edx),%eax
	subl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	%ecx,16(%eax)
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	cld
	movl	$5,%ecx
	rep
	movsl
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSGETHEAPSTATUS$$THEAPSTATUS
SYSTEM_SYSGETHEAPSTATUS$$THEAPSTATUS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13944
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj13945
Lj13944:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj13945:
	leal	164(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	8(%eax),%ecx
	movl	12(%edx),%eax
	subl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	%ecx,16(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	movl	%eax,16(%edx)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	movl	-4(%ebp),%eax
	movl	$0,24(%eax)
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	movl	-4(%ebp),%eax
	movl	$0,32(%eax)
	movl	-4(%ebp),%eax
	movl	$0,36(%eax)
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_APPEND_TO_LIST_VAR$PMEMCHUNK_VAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	152(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,12(%edx)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj13976
	jmp	Lj13977
Lj13976:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,16(%eax)
Lj13977:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_REMOVE_FROM_LIST_FIXED$PMEMCHUNK_FIXED$PPMEMCHUNK_FIXED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj13984
	jmp	Lj13985
Lj13984:
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
Lj13985:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj13988
	jmp	Lj13989
Lj13988:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	jmp	Lj13992
Lj13989:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,(%edx)
Lj13992:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_REMOVE_FROM_LIST_VAR$PMEMCHUNK_VAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj13997
	jmp	Lj13998
Lj13997:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,16(%edx)
Lj13998:
	movl	-4(%ebp),%eax
	cmpl	$0,16(%eax)
	jne	Lj14001
	jmp	Lj14002
Lj14001:
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	jmp	Lj14005
Lj14002:
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,152(%edx)
Lj14005:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_REMOVE_FREED_FIXED_CHUNKS$POSCHUNK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jl	Lj14010
	jmp	Lj14011
Lj14010:
	jmp	Lj14008
Lj14011:
	movl	-4(%ebp),%eax
	addl	$28,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	andl	$4080,%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	andl	$-16,%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%edx
	movl	-20(%ebp),%eax
	shrl	$4,%eax
	leal	(%edx,%eax,4),%eax
	movl	%eax,-16(%ebp)
	.balign 4,0x90
Lj14020:
	movl	-8(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj14024
	jmp	Lj14025
Lj14024:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
Lj14025:
	movl	-8(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj14028
	jmp	Lj14029
Lj14028:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	jmp	Lj14032
Lj14029:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,(%edx)
Lj14032:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	ja	Lj14022
	jmp	Lj14020
Lj14022:
Lj14008:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FREE_OSCHUNK$PFREELISTS$POSCHUNK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_REMOVE_FREED_FIXED_CHUNKS$POSCHUNK
	movl	-8(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj14041
	jmp	Lj14042
Lj14041:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	jmp	Lj14045
Lj14042:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,148(%edx)
Lj14045:
	movl	-8(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj14048
	jmp	Lj14049
Lj14048:
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
Lj14049:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jge	Lj14052
	jmp	Lj14053
Lj14052:
	movl	-4(%ebp),%eax
	decl	140(%eax)
Lj14053:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	andl	$-16,%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	subl	%edx,172(%eax)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_SYSOSFREE$POINTER$LONGWORD
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_APPEND_TO_OSLIST$POSCHUNK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj14064
	jmp	Lj14065
Lj14064:
	movl	-8(%ebp),%eax
	incl	136(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	andl	$-2,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj14060
Lj14065:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	incl	136(%eax)
Lj14060:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_APPEND_TO_OSLIST_VAR$PMEMCHUNK_VAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	subl	$36,%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj14077
	jmp	Lj14078
Lj14077:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,16(%edx)
Lj14078:
	movl	-4(%ebp),%eax
	cmpl	$0,16(%eax)
	jne	Lj14081
	jmp	Lj14082
Lj14081:
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	jmp	Lj14085
Lj14082:
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,152(%edx)
Lj14085:
	movl	-8(%ebp),%eax
	call	SYSTEM_APPEND_TO_OSLIST$POSCHUNK
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_MODIFY_OSCHUNK_FREELISTS$POSCHUNK$PFREELISTS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj14094
	jmp	Lj14095
Lj14094:
	jmp	Lj14090
Lj14095:
	movl	-4(%ebp),%eax
	addl	$36,%eax
	movl	%eax,-12(%ebp)
	.balign 4,0x90
Lj14098:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	andl	$4,%eax
	testl	%eax,%eax
	jne	Lj14103
	jmp	Lj14104
Lj14103:
	jmp	Lj14100
Lj14104:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	andl	$-16,%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj14098
Lj14100:
Lj14090:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_MODIFY_FREELISTS$PFREELISTS$PFREELISTS$$POSCHUNK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	148(%eax),%eax
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj14111
	jmp	Lj14112
Lj14111:
	.balign 4,0x90
Lj14113:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	SYSTEM_MODIFY_OSCHUNK_FREELISTS$POSCHUNK$PFREELISTS
	movl	-16(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj14121
	jmp	Lj14120
Lj14120:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj14107
Lj14121:
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj14113
Lj14112:
	movl	$0,-12(%ebp)
Lj14107:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SPLIT_BLOCK$PMEMCHUNK_VAR$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	andl	$-16,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$20,%eax
	jae	Lj14136
	jmp	Lj14137
Lj14136:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-20(%ebp),%eax
	andl	$4,%eax
	testl	%eax,%eax
	je	Lj14140
	jmp	Lj14141
Lj14140:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	-28(%ebp),%eax
	movl	%eax,(%edx)
Lj14141:
	movl	-20(%ebp),%edx
	andl	$4,%edx
	movl	-28(%ebp),%eax
	orl	%eax,%edx
	movl	-16(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,(%edx)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	movl	-20(%ebp),%edx
	andl	$11,%edx
	movl	-8(%ebp),%eax
	orl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	leal	152(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-16(%ebp),%eax
	movl	$0,16(%eax)
	movl	-16(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,12(%edx)
	movl	-32(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj14159
	jmp	Lj14160
Lj14159:
	movl	-32(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movl	%edx,16(%eax)
Lj14160:
	movl	-32(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj14167
Lj14137:
	movl	-24(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj14167:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_CONCAT_TWO_BLOCKS$PMEMCHUNK_VAR$PMEMCHUNK_VAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj14172
	jmp	Lj14173
Lj14172:
	movl	$204,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj14173:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	andl	$-16,%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,8(%eax)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	andl	$4,%eax
	testl	%eax,%eax
	jne	Lj14178
	jmp	Lj14179
Lj14178:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	orl	$4,%eax
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	jmp	Lj14182
Lj14179:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	andl	$-16,%edx
	movl	-12(%ebp),%eax
	movl	%edx,(%eax)
Lj14182:
	movl	-8(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj14188
	jmp	Lj14189
Lj14188:
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,16(%edx)
Lj14189:
	movl	-8(%ebp),%eax
	cmpl	$0,16(%eax)
	jne	Lj14192
	jmp	Lj14193
Lj14192:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	jmp	Lj14196
Lj14193:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,152(%edx)
Lj14196:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_TRY_CONCAT_FREE_CHUNK_FORWARD$PMEMCHUNK_VAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	andl	$4,%eax
	testl	%eax,%eax
	je	Lj14203
	jmp	Lj14204
Lj14203:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	andl	$-16,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	andl	$2,%eax
	testl	%eax,%eax
	je	Lj14207
	jmp	Lj14208
Lj14207:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_CONCAT_TWO_BLOCKS$PMEMCHUNK_VAR$PMEMCHUNK_VAR
	movb	$1,-5(%ebp)
Lj14208:
Lj14204:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_TRY_CONCAT_FREE_CHUNK$PMEMCHUNK_VAR$$PMEMCHUNK_VAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_TRY_CONCAT_FREE_CHUNK_FORWARD$PMEMCHUNK_VAR$$BOOLEAN
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	andl	$8,%eax
	testl	%eax,%eax
	je	Lj14219
	jmp	Lj14220
Lj14219:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	andl	$2,%eax
	testl	%eax,%eax
	je	Lj14223
	jmp	Lj14224
Lj14223:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_CONCAT_TWO_BLOCKS$PMEMCHUNK_VAR$PMEMCHUNK_VAR
	movl	-12(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj14224:
Lj14220:
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FIND_FREE_OSCHUNK$PFREELISTS$LONGWORD$LONGWORD$LONGWORD$$POSCHUNK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-20(%ebp)
	jmp	Lj14240
	.balign 4,0x90
Lj14239:
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj14242
	jmp	Lj14243
Lj14242:
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	andl	$-2,%eax
	movl	-24(%ebp),%edx
	movl	%eax,(%edx)
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj14248
	jmp	Lj14249
Lj14248:
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj14252
Lj14249:
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,4(%edx)
Lj14252:
	jmp	Lj14240
Lj14243:
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	andl	$-16,%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jae	Lj14259
	jmp	Lj14258
Lj14259:
	movl	-28(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jbe	Lj14257
	jmp	Lj14258
Lj14257:
	movl	8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,(%eax)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj14262
	jmp	Lj14263
Lj14262:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,(%edx)
	jmp	Lj14266
Lj14263:
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
Lj14266:
	movl	-4(%ebp),%eax
	decl	136(%eax)
	movl	-24(%ebp),%eax
	call	SYSTEM_REMOVE_FREED_FIXED_CHUNKS$POSCHUNK
	jmp	Lj14241
Lj14258:
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
Lj14240:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14239
	jmp	Lj14241
Lj14241:
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_ALLOC_OSCHUNK$PFREELISTS$LONGWORD$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	addl	$36,%eax
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14281
	jmp	Lj14282
Lj14281:
	movl	$1048576,-40(%ebp)
	jmp	Lj14285
Lj14282:
	movl	$-1,-40(%ebp)
Lj14285:
	movl	$0,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	136(%eax),%eax
	cmpl	TC_SYSTEM_MAXKEPTOSCHUNKS,%eax
	jae	Lj14290
	jmp	Lj14291
Lj14290:
	leal	-12(%ebp),%eax
	pushl	%eax
	movl	-40(%ebp),%ecx
	movl	-36(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_FIND_FREE_OSCHUNK$PFREELISTS$LONGWORD$LONGWORD$LONGWORD$$POSCHUNK
	movl	%eax,-32(%ebp)
Lj14291:
	cmpl	$0,-32(%ebp)
	jne	Lj14303
	jmp	Lj14304
Lj14304:
	cmpl	$0,U_SYSTEM_ORPHANED_FREELISTS+156
	jne	Lj14302
	jmp	Lj14306
Lj14306:
	cmpl	$0,U_SYSTEM_ORPHANED_FREELISTS+160
	jne	Lj14302
	jmp	Lj14305
Lj14305:
	movl	U_SYSTEM_ORPHANED_FREELISTS+136,%eax
	cmpl	$0,%eax
	ja	Lj14302
	jmp	Lj14303
Lj14302:
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	movl	$U_SYSTEM_ORPHANED_FREELISTS,%eax
	call	SYSTEM_FINISH_WAITFIXEDLIST$PFREELISTS
	movl	$U_SYSTEM_ORPHANED_FREELISTS,%eax
	call	SYSTEM_FINISH_WAITVARLIST$PFREELISTS
	movl	U_SYSTEM_ORPHANED_FREELISTS+136,%eax
	cmpl	$0,%eax
	ja	Lj14313
	jmp	Lj14314
Lj14313:
	leal	-12(%ebp),%eax
	pushl	%eax
	movl	$U_SYSTEM_ORPHANED_FREELISTS,%eax
	movl	-40(%ebp),%ecx
	movl	-36(%ebp),%edx
	call	SYSTEM_FIND_FREE_OSCHUNK$PFREELISTS$LONGWORD$LONGWORD$LONGWORD$$POSCHUNK
	movl	%eax,-32(%ebp)
	cmpl	$0,-32(%ebp)
	jne	Lj14325
	jmp	Lj14326
Lj14325:
	movl	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-32(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj14329
	jmp	Lj14330
Lj14329:
	movl	-32(%ebp),%eax
	movl	8(%eax),%edx
	movl	-32(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	jmp	Lj14333
Lj14330:
	movl	-32(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,U_SYSTEM_ORPHANED_FREELISTS+148
Lj14333:
	movl	-32(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj14336
	jmp	Lj14337
Lj14336:
	movl	-32(%ebp),%eax
	movl	12(%eax),%edx
	movl	-32(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
Lj14337:
	movl	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	148(%eax),%eax
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	cmpl	$0,148(%eax)
	jne	Lj14342
	jmp	Lj14343
Lj14342:
	movl	-4(%ebp),%eax
	movl	148(%eax),%eax
	movl	-32(%ebp),%edx
	movl	%edx,8(%eax)
Lj14343:
	movl	-32(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,148(%edx)
Lj14326:
Lj14314:
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
Lj14303:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj14352
	jmp	Lj14353
Lj14352:
	movl	-12(%ebp),%eax
	addl	$36,%eax
	addl	$65535,%eax
	andl	$-65536,%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14356
	jmp	Lj14357
Lj14356:
	movl	-4(%ebp),%eax
	movl	144(%eax),%eax
	call	SYSTEM_SYSOSALLOC$LONGWORD$$POINTER
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14362
	jmp	Lj14363
Lj14362:
	movl	-4(%ebp),%eax
	movl	144(%eax),%eax
	movl	%eax,-12(%ebp)
Lj14363:
	jmp	Lj14366
Lj14357:
	movl	-12(%ebp),%eax
	cmpl	TC_SYSTEM_GROWHEAPSIZE1,%eax
	jbe	Lj14367
	jmp	Lj14368
Lj14367:
	movl	TC_SYSTEM_GROWHEAPSIZE1,%eax
	call	SYSTEM_SYSOSALLOC$LONGWORD$$POINTER
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14373
	jmp	Lj14374
Lj14373:
	movl	TC_SYSTEM_GROWHEAPSIZE1,%eax
	movl	%eax,-12(%ebp)
Lj14374:
	jmp	Lj14377
Lj14368:
	movl	-12(%ebp),%eax
	cmpl	TC_SYSTEM_GROWHEAPSIZE2,%eax
	jbe	Lj14378
	jmp	Lj14379
Lj14378:
	movl	TC_SYSTEM_GROWHEAPSIZE2,%eax
	call	SYSTEM_SYSOSALLOC$LONGWORD$$POINTER
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14384
	jmp	Lj14385
Lj14384:
	movl	TC_SYSTEM_GROWHEAPSIZE2,%eax
	movl	%eax,-12(%ebp)
Lj14385:
	jmp	Lj14388
Lj14379:
	movl	-12(%ebp),%eax
	call	SYSTEM_SYSOSALLOC$LONGWORD$$POINTER
	movl	%eax,-32(%ebp)
Lj14388:
Lj14377:
Lj14366:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj14393
	jmp	Lj14394
Lj14393:
	movl	-12(%ebp),%eax
	call	SYSTEM_SYSOSALLOC$LONGWORD$$POINTER
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj14399
	jmp	Lj14400
Lj14399:
	cmpb	$0,U_SYSTEM_RETURNNILIFGROWHEAPFAILS
	jne	Lj14401
	jmp	Lj14402
Lj14401:
	movl	$0,-16(%ebp)
	jmp	Lj14277
	jmp	Lj14405
Lj14402:
	movl	$203,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj14405:
Lj14400:
Lj14394:
	movl	-32(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-32(%ebp),%eax
	movl	$0,8(%eax)
	movl	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	148(%eax),%eax
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	cmpl	$0,148(%eax)
	jne	Lj14414
	jmp	Lj14415
Lj14414:
	movl	-4(%ebp),%eax
	movl	148(%eax),%eax
	movl	-32(%ebp),%edx
	movl	%edx,8(%eax)
Lj14415:
	movl	-4(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,148(%edx)
	movl	-4(%ebp),%eax
	leal	164(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	-52(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,8(%eax)
	movl	-52(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	(%edx),%eax
	ja	Lj14422
	jmp	Lj14423
Lj14422:
	movl	-52(%ebp),%edx
	movl	-52(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%edx)
Lj14423:
Lj14353:
	movl	-32(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14428
	jmp	Lj14429
Lj14428:
	movl	-32(%ebp),%eax
	movl	$0,16(%eax)
	movl	-8(%ebp),%eax
	shll	$4,%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%eax
	movl	-48(%ebp),%edx
	subl	%edx,%eax
	cmpl	-40(%ebp),%eax
	ja	Lj14434
	jmp	Lj14435
Lj14434:
	movl	$204,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj14435:
	movl	$28,-44(%ebp)
	movl	-32(%ebp),%edx
	movl	-44(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	$0,8(%eax)
	.balign 4,0x90
Lj14446:
	movl	-48(%ebp),%edx
	orl	$1,%edx
	movl	-44(%ebp),%eax
	shll	$12,%eax
	orl	%eax,%edx
	movl	-20(%ebp),%eax
	movl	%edx,(%eax)
	movl	-48(%ebp),%eax
	addl	%eax,-44(%ebp)
	movl	-12(%ebp),%edx
	movl	-48(%ebp),%eax
	subl	%eax,%edx
	cmpl	-44(%ebp),%edx
	jb	Lj14451
	jmp	Lj14452
Lj14451:
	jmp	Lj14448
Lj14452:
	movl	-20(%ebp),%eax
	movl	-48(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,8(%eax)
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj14446
Lj14448:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14465
	jmp	Lj14466
Lj14465:
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,8(%edx)
Lj14466:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	%edx,(%eax,%ecx,4)
	movl	-4(%ebp),%eax
	incl	140(%eax)
	movl	-4(%ebp),%eax
	movl	140(%eax),%eax
	cmpl	$264,%eax
	ja	Lj14471
	jmp	Lj14472
Lj14471:
	movl	-4(%ebp),%eax
	movl	144(%eax),%eax
	cmpl	$262144,%eax
	jb	Lj14473
	jmp	Lj14474
Lj14473:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	144(%eax),%eax
	addl	%eax,144(%edx)
Lj14474:
	movl	-4(%ebp),%eax
	movl	$0,140(%eax)
Lj14472:
	jmp	Lj14477
Lj14429:
	movl	-32(%ebp),%eax
	movl	$-1,16(%eax)
	movl	-32(%ebp),%eax
	addl	$36,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%eax
	subl	$36,%eax
	andl	$-16,%eax
	orl	$12,%eax
	movl	-28(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-28(%ebp),%eax
	movl	$0,(%eax)
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-28(%ebp),%eax
	movl	4(%eax),%eax
	leal	152(%eax),%eax
	movl	%eax,-56(%ebp)
	movl	-28(%ebp),%eax
	movl	$0,16(%eax)
	movl	-28(%ebp),%edx
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,12(%edx)
	movl	-56(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj14497
	jmp	Lj14498
Lj14497:
	movl	-56(%ebp),%eax
	movl	(%eax),%edx
	movl	-28(%ebp),%eax
	movl	%eax,16(%edx)
Lj14498:
	movl	-56(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,(%eax)
Lj14477:
Lj14277:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSGETMEM_FIXED$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-24(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj14509
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj14510
Lj14509:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj14510:
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj14513
	jmp	Lj14514
Lj14513:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	shrl	$12,%eax
	movl	-12(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj14517
	jmp	Lj14518
Lj14517:
	movl	-20(%ebp),%eax
	movl	(%eax),%edx
	orl	$1,%edx
	movl	-20(%ebp),%eax
	movl	%edx,(%eax)
	movl	-28(%ebp),%eax
	decl	136(%eax)
Lj14518:
	jmp	Lj14521
Lj14514:
	movl	-28(%ebp),%eax
	call	SYSTEM_TRY_FINISH_WAITFIXEDLIST$PFREELISTS$$BOOLEAN
	testb	%al,%al
	jne	Lj14522
	jmp	Lj14523
Lj14522:
	movl	-4(%ebp),%eax
	call	SYSTEM_SYSGETMEM_FIXED$LONGWORD$$POINTER
	movl	%eax,-8(%ebp)
	jmp	Lj14503
	jmp	Lj14530
Lj14523:
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-28(%ebp),%eax
	call	SYSTEM_ALLOC_OSCHUNK$PFREELISTS$LONGWORD$LONGWORD$$POINTER
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj14540
	jmp	Lj14539
Lj14539:
	movl	$0,-8(%ebp)
	jmp	Lj14503
Lj14540:
	movl	-12(%ebp),%eax
	subl	$28,%eax
	movl	%eax,-20(%ebp)
Lj14530:
Lj14521:
	movl	-12(%ebp),%eax
	addl	$4,%eax
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-28(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	%eax,(%edx,%ecx,4)
	cmpl	$0,-16(%ebp)
	jne	Lj14551
	jmp	Lj14552
Lj14551:
	movl	-16(%ebp),%eax
	movl	$0,8(%eax)
Lj14552:
	movl	-28(%ebp),%eax
	leal	164(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,12(%eax)
	movl	12(%eax),%edx
	cmpl	4(%eax),%edx
	ja	Lj14557
	jmp	Lj14558
Lj14557:
	movl	12(%eax),%edx
	movl	%edx,4(%eax)
Lj14558:
	movl	-20(%ebp),%eax
	incl	16(%eax)
Lj14503:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSGETMEM_VAR$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$-65536,%eax
	ja	Lj14565
	jmp	Lj14566
Lj14565:
	cmpb	$0,U_SYSTEM_RETURNNILIFGROWHEAPFAILS
	jne	Lj14567
	jmp	Lj14568
Lj14567:
	jmp	Lj14561
	jmp	Lj14569
Lj14568:
	movl	$204,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj14569:
Lj14566:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj14574
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj14575
Lj14574:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj14575:
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	call	SYSTEM_TRY_FINISH_WAITVARLIST$PFREELISTS
	movl	$0,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	152(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	$-1,-24(%ebp)
	jmp	Lj14585
	.balign 4,0x90
Lj14584:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jae	Lj14587
	jmp	Lj14588
Lj14587:
	cmpl	$0,-16(%ebp)
	jne	Lj14591
	jmp	Lj14589
Lj14591:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	8(%edx),%eax
	jb	Lj14589
	jmp	Lj14590
Lj14589:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj14594
	jmp	Lj14595
Lj14594:
	jmp	Lj14586
Lj14595:
	movl	$10,-24(%ebp)
Lj14590:
Lj14588:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-12(%ebp)
	decl	-24(%ebp)
Lj14585:
	cmpl	$0,-12(%ebp)
	jne	Lj14600
	jmp	Lj14586
Lj14600:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj14584
	jmp	Lj14586
Lj14586:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj14604
	jmp	Lj14603
Lj14603:
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	$0,%edx
	call	SYSTEM_ALLOC_OSCHUNK$PFREELISTS$LONGWORD$LONGWORD$$POINTER
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj14614
	jmp	Lj14613
Lj14613:
	jmp	Lj14561
Lj14614:
Lj14604:
	movl	-12(%ebp),%eax
	addl	$12,%eax
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj14618
	jmp	Lj14619
Lj14618:
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,16(%edx)
Lj14619:
	movl	-12(%ebp),%eax
	cmpl	$0,16(%eax)
	jne	Lj14622
	jmp	Lj14623
Lj14622:
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	jmp	Lj14626
Lj14623:
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,152(%edx)
Lj14626:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_SPLIT_BLOCK$PMEMCHUNK_VAR$LONGWORD$$LONGWORD
	movl	%eax,-4(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	orl	$2,%eax
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-20(%ebp),%eax
	leal	164(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,12(%eax)
	movl	12(%eax),%edx
	cmpl	4(%eax),%edx
	ja	Lj14639
	jmp	Lj14640
Lj14639:
	movl	12(%eax),%edx
	movl	%edx,4(%eax)
Lj14640:
Lj14561:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSGETMEM$LONGWORD$$POINTER
SYSTEM_SYSGETMEM$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj14645
	jmp	Lj14646
Lj14645:
	movl	$1,-4(%ebp)
Lj14646:
	movl	-4(%ebp),%eax
	cmpl	$524,%eax
	jbe	Lj14649
	jmp	Lj14650
Lj14649:
	movl	-4(%ebp),%eax
	addl	$19,%eax
	andl	$4080,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_SYSGETMEM_FIXED$LONGWORD$$POINTER
	movl	%eax,-8(%ebp)
	jmp	Lj14657
Lj14650:
	movl	-4(%ebp),%eax
	cmpl	$-28,%eax
	jb	Lj14658
	jmp	Lj14659
Lj14658:
	movl	-4(%ebp),%eax
	addl	$27,%eax
	andl	$-16,%eax
	movl	%eax,-4(%ebp)
Lj14659:
	movl	-4(%ebp),%eax
	call	SYSTEM_SYSGETMEM_VAR$LONGWORD$$POINTER
	movl	%eax,-8(%ebp)
Lj14657:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_WAITFREE_FIXED$PMEMCHUNK_FIXED$POSCHUNK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	-4(%ebp),%edx
	movl	156(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%eax
	movl	20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	%eax,156(%edx)
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_WAITFREE_VAR$PMEMCHUNK_VAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	160(%eax),%eax
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	%eax,160(%edx)
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSFREEMEM_FIXED$PFREELISTS$PMEMCHUNK_FIXED$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	shrl	$12,%eax
	movl	-8(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	andl	$4080,%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-32(%ebp),%eax
	je	Lj14694
	jmp	Lj14695
Lj14694:
	movl	-24(%ebp),%eax
	decl	16(%eax)
	movl	-20(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,8(%eax)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,4(%eax)
	cmpl	$0,-28(%ebp)
	jne	Lj14704
	jmp	Lj14705
Lj14704:
	movl	-28(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,8(%eax)
Lj14705:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	%eax,(%edx,%ecx,4)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,176(%eax)
	movl	-24(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jle	Lj14710
	jmp	Lj14711
Lj14710:
	movl	-24(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jl	Lj14712
	jmp	Lj14713
Lj14712:
	movl	$204,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj14713:
	movl	-24(%ebp),%eax
	call	SYSTEM_APPEND_TO_OSLIST$POSCHUNK
Lj14711:
	jmp	Lj14718
Lj14695:
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_WAITFREE_FIXED$PMEMCHUNK_FIXED$POSCHUNK
Lj14718:
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSFREEMEM_VAR$PFREELISTS$PMEMCHUNK_VAR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	andl	$-16,%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj14729
	jmp	Lj14730
Lj14729:
	movl	-8(%ebp),%eax
	call	SYSTEM_WAITFREE_VAR$PMEMCHUNK_VAR
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj14725
Lj14730:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	andl	$-3,%eax
	movl	-8(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	leal	152(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,12(%edx)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj14744
	jmp	Lj14745
Lj14744:
	movl	-20(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	%eax,16(%edx)
Lj14745:
	movl	-20(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	call	SYSTEM_TRY_CONCAT_FREE_CHUNK$PMEMCHUNK_VAR$$PMEMCHUNK_VAR
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	andl	$12,%eax
	cmpl	$12,%eax
	je	Lj14754
	jmp	Lj14755
Lj14754:
	movl	-8(%ebp),%eax
	call	SYSTEM_APPEND_TO_OSLIST_VAR$PMEMCHUNK_VAR
Lj14755:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,176(%eax)
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj14725:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSFREEMEM$POINTER$$LONGWORD
SYSTEM_SYSFREEMEM$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	subl	$4,%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj14764
	jmp	Lj14765
Lj14764:
	movl	$0,-8(%ebp)
	jmp	Lj14760
Lj14765:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj14770
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj14771
Lj14770:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj14771:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj14772
	jmp	Lj14773
Lj14772:
	movl	-4(%ebp),%edx
	subl	$12,%edx
	movl	-16(%ebp),%eax
	call	SYSTEM_SYSFREEMEM_VAR$PFREELISTS$PMEMCHUNK_VAR$$LONGWORD
	movl	%eax,-8(%ebp)
	jmp	Lj14780
Lj14773:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	call	SYSTEM_SYSFREEMEM_FIXED$PFREELISTS$PMEMCHUNK_FIXED$$LONGWORD
	movl	%eax,-8(%ebp)
Lj14780:
Lj14760:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FINISH_WAITFIXEDLIST$PFREELISTS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	jmp	Lj14790
	.balign 4,0x90
Lj14789:
	movl	-4(%ebp),%eax
	movl	156(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,156(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_SYSFREEMEM_FIXED$PFREELISTS$PMEMCHUNK_FIXED$$LONGWORD
Lj14790:
	movl	-4(%ebp),%eax
	movl	156(%eax),%eax
	testl	%eax,%eax
	jne	Lj14789
	jmp	Lj14791
Lj14791:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_TRY_FINISH_WAITFIXEDLIST$PFREELISTS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	156(%eax),%eax
	testl	%eax,%eax
	je	Lj14802
	jmp	Lj14803
Lj14802:
	movb	$0,-5(%ebp)
	jmp	Lj14800
Lj14803:
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	movl	-4(%ebp),%eax
	call	SYSTEM_FINISH_WAITFIXEDLIST$PFREELISTS
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
	movb	$1,-5(%ebp)
Lj14800:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FINISH_WAITVARLIST$PFREELISTS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	jmp	Lj14817
	.balign 4,0x90
Lj14816:
	movl	-4(%ebp),%eax
	movl	160(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,160(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_SYSFREEMEM_VAR$PFREELISTS$PMEMCHUNK_VAR$$LONGWORD
Lj14817:
	movl	-4(%ebp),%eax
	movl	160(%eax),%eax
	testl	%eax,%eax
	jne	Lj14816
	jmp	Lj14818
Lj14818:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_TRY_FINISH_WAITVARLIST$PFREELISTS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	160(%eax),%eax
	testl	%eax,%eax
	je	Lj14829
	jmp	Lj14830
Lj14829:
	jmp	Lj14827
Lj14830:
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	movl	-4(%ebp),%eax
	call	SYSTEM_FINISH_WAITVARLIST$PFREELISTS
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
Lj14827:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSFREEMEMSIZE$POINTER$LONGWORD$$LONGWORD
SYSTEM_SYSFREEMEMSIZE$POINTER$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj14839
	jmp	Lj14840
Lj14839:
	movl	$0,-12(%ebp)
	jmp	Lj14837
Lj14840:
	movl	-4(%ebp),%eax
	call	SYSTEM_SYSFREEMEM$POINTER$$LONGWORD
	movl	%eax,-12(%ebp)
Lj14837:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSMEMSIZE$POINTER$$LONGWORD
SYSTEM_SYSMEMSIZE$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	subl	$4,%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj14851
	jmp	Lj14852
Lj14851:
	movl	-8(%ebp),%eax
	andl	$-16,%eax
	movl	%eax,-8(%ebp)
	subl	$12,-8(%ebp)
	jmp	Lj14855
Lj14852:
	movl	-8(%ebp),%eax
	andl	$4080,%eax
	movl	%eax,-8(%ebp)
	subl	$4,-8(%ebp)
Lj14855:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSALLOCMEM$LONGWORD$$POINTER
SYSTEM_SYSALLOCMEM$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+4,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14864
	jmp	Lj14865
Lj14864:
	movl	-8(%ebp),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+24,%edx
	call	*%edx
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
Lj14865:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSTRYRESIZEMEM$POINTER$LONGWORD$$BOOLEAN
SYSTEM_SYSTRYRESIZEMEM$POINTER$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-9(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$4,%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj14880
	jmp	Lj14881
Lj14880:
	movl	-16(%ebp),%eax
	andl	$4080,%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$524,%eax
	jbe	Lj14886
	jmp	Lj14885
Lj14886:
	movl	-8(%ebp),%eax
	addl	$19,%eax
	andl	$-16,%eax
	cmpl	-24(%ebp),%eax
	jbe	Lj14884
	jmp	Lj14885
Lj14884:
	movb	$1,-9(%ebp)
	jmp	Lj14874
Lj14885:
	jmp	Lj14874
Lj14881:
	movl	-8(%ebp),%eax
	cmpl	$264,%eax
	jb	Lj14889
	jmp	Lj14890
Lj14889:
	movb	$0,-9(%ebp)
	jmp	Lj14874
Lj14890:
	movl	-16(%ebp),%eax
	andl	$-16,%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	addl	$12,%eax
	addl	$15,%eax
	andl	$-16,%eax
	movl	%eax,-8(%ebp)
	movl	-24(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jae	Lj14899
	jmp	Lj14898
Lj14899:
	movl	-24(%ebp),%eax
	subl	$16,%eax
	cmpl	-8(%ebp),%eax
	jb	Lj14897
	jmp	Lj14898
Lj14897:
	movb	$1,-9(%ebp)
	jmp	Lj14874
Lj14898:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj14904
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj14905
Lj14904:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj14905:
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-32(%ebp),%eax
	jne	Lj14908
	jmp	Lj14909
Lj14908:
	jmp	Lj14874
Lj14909:
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-28(%ebp),%eax
	call	SYSTEM_TRY_CONCAT_FREE_CHUNK_FORWARD$PMEMCHUNK_VAR$$BOOLEAN
	testb	%al,%al
	jne	Lj14912
	jmp	Lj14913
Lj14912:
	movl	-28(%ebp),%eax
	movl	8(%eax),%eax
	andl	$-16,%eax
	movl	%eax,-24(%ebp)
Lj14913:
	movl	-8(%ebp),%eax
	cmpl	-24(%ebp),%eax
	ja	Lj14918
	jmp	Lj14919
Lj14918:
	movl	-32(%ebp),%eax
	leal	164(%eax),%eax
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%ecx
	subl	%ecx,%edx
	addl	%edx,12(%eax)
	movl	12(%eax),%edx
	cmpl	4(%eax),%edx
	ja	Lj14922
	jmp	Lj14923
Lj14922:
	movl	12(%eax),%edx
	movl	%edx,4(%eax)
Lj14923:
	jmp	Lj14874
	jmp	Lj14926
Lj14919:
	movl	-24(%ebp),%eax
	cmpl	-8(%ebp),%eax
	ja	Lj14927
	jmp	Lj14928
Lj14927:
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	call	SYSTEM_SPLIT_BLOCK$PMEMCHUNK_VAR$LONGWORD$$LONGWORD
	movl	%eax,-24(%ebp)
Lj14928:
Lj14926:
	movl	-32(%ebp),%eax
	leal	164(%eax),%eax
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%ecx
	subl	%ecx,%edx
	addl	%edx,12(%eax)
	movl	12(%eax),%edx
	cmpl	4(%eax),%edx
	ja	Lj14937
	jmp	Lj14938
Lj14937:
	movl	12(%eax),%edx
	movl	%edx,4(%eax)
Lj14938:
	movb	$1,-9(%ebp)
Lj14874:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSREALLOCMEM$POINTER$LONGWORD$$POINTER
SYSTEM_SYSREALLOCMEM$POINTER$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj14945
	jmp	Lj14946
Lj14945:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj14947
	jmp	Lj14948
Lj14947:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+8,%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj14948:
	jmp	Lj14953
Lj14946:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj14954
	jmp	Lj14955
Lj14954:
	movl	-8(%ebp),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+4,%edx
	call	*%edx
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj14960
Lj14955:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_SYSTRYRESIZEMEM$POINTER$LONGWORD$$BOOLEAN
	testb	%al,%al
	je	Lj14961
	jmp	Lj14962
Lj14961:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+24,%edx
	call	*%edx
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$528,%eax
	jb	Lj14971
	jmp	Lj14972
Lj14971:
	movl	-20(%ebp),%eax
	shll	$1,%eax
	addl	$16,%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj14975
	jmp	Lj14976
Lj14975:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj14976:
	jmp	Lj14979
Lj14972:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj14979:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj14984
	jmp	Lj14985
Lj14984:
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj14985:
	movl	-16(%ebp),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+4,%edx
	call	*%edx
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14992
	jmp	Lj14993
Lj14992:
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-24(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj14993:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+8,%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,(%eax)
Lj14962:
Lj14960:
Lj14953:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INITHEAPTHREAD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movw	U_SYSTEM_HEAP_LOCK_USE,%ax
	cmpw	$0,%ax
	jg	Lj15008
	jmp	Lj15009
Lj15008:
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	incw	U_SYSTEM_HEAP_LOCK_USE
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
Lj15009:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15016
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj15017
Lj15016:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj15017:
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$184,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_GROWHEAPSIZESMALL,%edx
	movl	%edx,144(%eax)
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INITHEAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movw	$0,U_SYSTEM_HEAP_LOCK_USE
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15032
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj15033
Lj15032:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj15033:
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$184,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_GROWHEAPSIZESMALL,%edx
	movl	%edx,144(%eax)
	movl	$U_SYSTEM_ORPHANED_FREELISTS,%eax
	movb	$0,%cl
	movl	$184,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_RELOCATEHEAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movw	U_SYSTEM_HEAP_LOCK_USE,%ax
	cmpw	$0,%ax
	jg	Lj15050
	jmp	Lj15051
Lj15050:
	jmp	Lj15048
Lj15051:
	movw	$1,U_SYSTEM_HEAP_LOCK_USE
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_INITCRITICALSECTION$TRTLCRITICALSECTION
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15058
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj15059
Lj15058:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj15059:
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MODIFY_FREELISTS$PFREELISTS$PFREELISTS$$POSCHUNK
	movl	TC_SYSTEM_MEMORYMANAGER+36,%eax
	testl	%eax,%eax
	jne	Lj15064
	jmp	Lj15065
Lj15064:
	movl	TC_SYSTEM_MEMORYMANAGER+36,%eax
	call	*%eax
Lj15065:
Lj15048:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FINALIZEHEAP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15070
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj15071
Lj15070:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj15071:
	movl	%eax,-12(%ebp)
	movw	U_SYSTEM_HEAP_LOCK_USE,%ax
	cmpw	$0,%ax
	jg	Lj15072
	jmp	Lj15073
Lj15072:
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	movl	-12(%ebp),%eax
	call	SYSTEM_FINISH_WAITFIXEDLIST$PFREELISTS
	movl	-12(%ebp),%eax
	call	SYSTEM_FINISH_WAITVARLIST$PFREELISTS
Lj15073:
	movw	U_SYSTEM_HEAP_LOCK_USE,%ax
	cmpw	$0,%ax
	jg	Lj15080
	jmp	Lj15081
Lj15080:
	movl	$U_SYSTEM_ORPHANED_FREELISTS,%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_MODIFY_FREELISTS$PFREELISTS$PFREELISTS$$POSCHUNK
	movl	%eax,-4(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj15088
	jmp	Lj15089
Lj15088:
	movl	-4(%ebp),%edx
	movl	U_SYSTEM_ORPHANED_FREELISTS+148,%eax
	movl	%eax,12(%edx)
	cmpl	$0,U_SYSTEM_ORPHANED_FREELISTS+148
	jne	Lj15092
	jmp	Lj15093
Lj15092:
	movl	U_SYSTEM_ORPHANED_FREELISTS+148,%edx
	movl	-4(%ebp),%eax
	movl	%eax,8(%edx)
Lj15093:
	movl	-12(%ebp),%eax
	movl	148(%eax),%eax
	movl	%eax,U_SYSTEM_ORPHANED_FREELISTS+148
Lj15089:
	decw	U_SYSTEM_HEAP_LOCK_USE
	movw	U_SYSTEM_HEAP_LOCK_USE,%ax
	testw	%ax,%ax
	seteb	-13(%ebp)
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
	cmpb	$0,-13(%ebp)
	jne	Lj15102
	jmp	Lj15103
Lj15102:
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_DONECRITICALSECTION$TRTLCRITICALSECTION
Lj15103:
Lj15081:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INITTHREAD$LONGWORD
SYSTEM_INITTHREAD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	call	SYSTEM_SYSRESETFPU
	call	SYSTEM_SYSINITFPU
	call	SYSTEM_INITHEAPTHREAD
	movl	TC_SYSTEM_MEMORYMANAGER+28,%eax
	testl	%eax,%eax
	jne	Lj15108
	jmp	Lj15109
Lj15108:
	movl	TC_SYSTEM_MEMORYMANAGER+28,%eax
	call	*%eax
Lj15109:
	cmpl	$0,U_SYSTEM_WIDESTRINGMANAGER+72
	jne	Lj15110
	jmp	Lj15111
Lj15110:
	movl	U_SYSTEM_WIDESTRINGMANAGER+72,%eax
	call	*%eax
Lj15111:
	call	SYSTEM_SYSINITEXCEPTIONS
	call	SYSTEM_SYSINITSTDIO
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15114
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj15115
Lj15114:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj15115:
	movw	$0,(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKINITIALSTKLEN$LONGWORD$$LONGWORD
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15120
	movl	U_SYSTEM_STACKLENGTH,%eax
	call	*%edx
	jmp	Lj15121
Lj15120:
	movl	$U_SYSTEM_STACKLENGTH+4,%eax
Lj15121:
	movl	%ebx,(%eax)
	call	SYSTEM_SPTR$$POINTER
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15124
	movl	U_SYSTEM_STACKLENGTH,%eax
	call	*%edx
	jmp	Lj15125
Lj15124:
	movl	$U_SYSTEM_STACKLENGTH+4,%eax
Lj15125:
	movl	(%eax),%eax
	subl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15126
	movl	U_SYSTEM_STACKBOTTOM,%eax
	call	*%edx
	jmp	Lj15127
Lj15126:
	movl	$U_SYSTEM_STACKBOTTOM+4,%eax
Lj15127:
	movl	%ebx,(%eax)
	movl	U_SYSTEM_CURRENTTM+48,%eax
	call	*%eax
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15130
	movl	U_SYSTEM_THREADID,%eax
	call	*%edx
	jmp	Lj15131
Lj15130:
	movl	$U_SYSTEM_THREADID+4,%eax
Lj15131:
	movl	%ebx,(%eax)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DONETHREAD
SYSTEM_DONETHREAD:
	pushl	%ebp
	movl	%esp,%ebp
	cmpl	$0,U_SYSTEM_WIDESTRINGMANAGER+76
	jne	Lj15134
	jmp	Lj15135
Lj15134:
	movl	U_SYSTEM_WIDESTRINGMANAGER+76,%eax
	call	*%eax
Lj15135:
	call	SYSTEM_FINALIZEHEAP
	movl	TC_SYSTEM_MEMORYMANAGER+32,%eax
	testl	%eax,%eax
	jne	Lj15136
	jmp	Lj15137
Lj15136:
	movl	TC_SYSTEM_MEMORYMANAGER+32,%eax
	call	*%eax
Lj15137:
	call	SYSTEM_SYSFLUSHSTDIO
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15140
	movl	U_SYSTEM_THREADID,%eax
	call	*%edx
	jmp	Lj15141
Lj15140:
	movl	$U_SYSTEM_THREADID+4,%eax
Lj15141:
	movl	$0,(%eax)
	cmpl	$0,U_SYSTEM_CURRENTTM+84
	jne	Lj15142
	jmp	Lj15143
Lj15142:
	movl	U_SYSTEM_CURRENTTM+84,%eax
	call	*%eax
Lj15143:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BEGINTHREAD$TTHREADFUNC$$LONGWORD
SYSTEM_BEGINTHREAD$TTHREADFUNC$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	pushl	$0
	pushl	$0
	leal	-12(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%ecx
	movl	$4194304,%edx
	movl	$0,%eax
	call	SYSTEM_BEGINTHREAD$crc81B914C6
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BEGINTHREAD$TTHREADFUNC$POINTER$$LONGWORD
SYSTEM_BEGINTHREAD$TTHREADFUNC$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	pushl	-8(%ebp)
	pushl	$0
	leal	-16(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%ecx
	movl	$4194304,%edx
	movl	$0,%eax
	call	SYSTEM_BEGINTHREAD$crc81B914C6
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BEGINTHREAD$TTHREADFUNC$POINTER$LONGWORD$$LONGWORD
SYSTEM_BEGINTHREAD$TTHREADFUNC$POINTER$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	-8(%ebp)
	pushl	$0
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%ecx
	movl	$4194304,%edx
	movl	$0,%eax
	call	SYSTEM_BEGINTHREAD$crc81B914C6
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BEGINTHREAD$TTHREADFUNC$POINTER$LONGWORD$LONGWORD$$LONGWORD
SYSTEM_BEGINTHREAD$TTHREADFUNC$POINTER$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	-8(%ebp)
	pushl	$0
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	$0,%eax
	call	SYSTEM_BEGINTHREAD$crc81B914C6
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_ENDTHREAD
SYSTEM_ENDTHREAD:
	pushl	%ebp
	movl	%esp,%ebp
	movl	$0,%eax
	call	SYSTEM_ENDTHREAD$LONGWORD
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BEGINTHREAD$crc81B914C6
SYSTEM_BEGINTHREAD$crc81B914C6:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+8,%ebx
	call	*%ebx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSTEM_FLUSHTHREAD
SYSTEM_FLUSHTHREAD:
	pushl	%ebp
	movl	%esp,%ebp
	call	SYSTEM_SYSFLUSHSTDIO
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ENDTHREAD$LONGWORD
SYSTEM_ENDTHREAD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+12,%edx
	call	*%edx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SUSPENDTHREAD$LONGWORD$$LONGWORD
SYSTEM_SUSPENDTHREAD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+16,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RESUMETHREAD$LONGWORD$$LONGWORD
SYSTEM_RESUMETHREAD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+20,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_CLOSETHREAD$LONGWORD$$LONGWORD
SYSTEM_CLOSETHREAD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+28,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_THREADSWITCH
SYSTEM_THREADSWITCH:
	pushl	%ebp
	movl	%esp,%ebp
	movl	U_SYSTEM_CURRENTTM+32,%eax
	call	*%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_KILLTHREAD$LONGWORD$$LONGWORD
SYSTEM_KILLTHREAD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+24,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_WAITFORTHREADTERMINATE$LONGWORD$LONGINT$$LONGWORD
SYSTEM_WAITFORTHREADTERMINATE$LONGWORD$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+36,%ecx
	call	*%ecx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_THREADSETPRIORITY$LONGWORD$LONGINT$$BOOLEAN
SYSTEM_THREADSETPRIORITY$LONGWORD$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+40,%ecx
	call	*%ecx
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_THREADGETPRIORITY$LONGWORD$$LONGINT
SYSTEM_THREADGETPRIORITY$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+44,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETCURRENTTHREADID$$LONGWORD
SYSTEM_GETCURRENTTHREADID$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	U_SYSTEM_CURRENTTM+48,%eax
	call	*%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INITCRITICALSECTION$TRTLCRITICALSECTION
SYSTEM_INITCRITICALSECTION$TRTLCRITICALSECTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+52,%edx
	call	*%edx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DONECRITICALSECTION$TRTLCRITICALSECTION
SYSTEM_DONECRITICALSECTION$TRTLCRITICALSECTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+56,%edx
	call	*%edx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+60,%edx
	call	*%edx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TRYENTERCRITICALSECTION$TRTLCRITICALSECTION$$LONGINT
SYSTEM_TRYENTERCRITICALSECTION$TRTLCRITICALSECTION$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+64,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+68,%edx
	call	*%edx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
SYSTEM_GETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edi
	movl	$U_SYSTEM_CURRENTTM,%esi
	cld
	movl	$38,%ecx
	rep
	movsl
	movb	$1,-5(%ebp)
	movb	-5(%ebp),%al
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETTHREADMANAGER$TTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
SYSTEM_SETTHREADMANAGER$TTHREADMANAGER$TTHREADMANAGER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_GETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
	movl	-4(%ebp),%eax
	call	SYSTEM_SETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
SYSTEM_SETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movb	$1,-5(%ebp)
	cmpl	$0,U_SYSTEM_CURRENTTM+4
	jne	Lj15326
	jmp	Lj15327
Lj15326:
	movl	U_SYSTEM_CURRENTTM+4,%eax
	call	*%eax
	movb	%al,-5(%ebp)
Lj15327:
	cmpb	$0,-5(%ebp)
	jne	Lj15330
	jmp	Lj15331
Lj15330:
	movl	-4(%ebp),%esi
	movl	$U_SYSTEM_CURRENTTM,%edi
	cld
	movl	$38,%ecx
	rep
	movsl
	cmpl	$0,U_SYSTEM_CURRENTTM
	jne	Lj15334
	jmp	Lj15335
Lj15334:
	movl	U_SYSTEM_CURRENTTM,%eax
	call	*%eax
	movb	%al,-5(%ebp)
Lj15335:
Lj15331:
	movb	-5(%ebp),%al
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER
SYSTEM_BASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	%cl,-12(%ebp)
	pushl	8(%ebp)
	movb	-12(%ebp),%cl
	movb	-8(%ebp),%al
	movl	-4(%ebp),%ebx
	movl	U_SYSTEM_CURRENTTM+88,%esi
	movb	%al,%dl
	movl	%ebx,%eax
	call	*%esi
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_BASICEVENTDESTROY$POINTER
SYSTEM_BASICEVENTDESTROY$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+92,%edx
	call	*%edx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BASICEVENTRESETEVENT$POINTER
SYSTEM_BASICEVENTRESETEVENT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+96,%edx
	call	*%edx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BASICEVENTSETEVENT$POINTER
SYSTEM_BASICEVENTSETEVENT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+100,%edx
	call	*%edx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT
SYSTEM_BASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+104,%ecx
	call	*%ecx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RTLEVENTCREATE$$PRTLEVENT
SYSTEM_RTLEVENTCREATE$$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	U_SYSTEM_CURRENTTM+108,%eax
	call	*%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RTLEVENTDESTROY$PRTLEVENT
SYSTEM_RTLEVENTDESTROY$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+112,%edx
	call	*%edx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RTLEVENTSETEVENT$PRTLEVENT
SYSTEM_RTLEVENTSETEVENT$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+116,%edx
	call	*%edx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RTLEVENTRESETEVENT$PRTLEVENT
SYSTEM_RTLEVENTRESETEVENT$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+120,%edx
	call	*%edx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RTLEVENTWAITFOR$PRTLEVENT
SYSTEM_RTLEVENTWAITFOR$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+124,%edx
	call	*%edx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RTLEVENTWAITFOR$PRTLEVENT$LONGINT
SYSTEM_RTLEVENTWAITFOR$PRTLEVENT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+132,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RTLEVENTSYNC$TRTLMETHOD$TPROCEDURE
SYSTEM_RTLEVENTSYNC$TRTLMETHOD$TPROCEDURE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	leal	-16(%ebp),%eax
	movl	U_SYSTEM_CURRENTTM+128,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOTHREADERROR:
	pushl	%ebp
	movl	%esp,%ebp
	cmpb	$0,operatingsystem_isconsole
	jne	Lj15404
	jmp	Lj15405
Lj15404:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15408
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj15409
Lj15408:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj15409:
	movl	$_$SYSTEM$_Ld36,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15416
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj15417
Lj15416:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj15417:
	call	fpc_writeln_end
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15420
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj15421
Lj15420:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj15421:
	movl	$_$SYSTEM$_Ld37,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15428
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj15429
Lj15428:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj15429:
	call	fpc_writeln_end
Lj15405:
	movw	$232,%ax
	call	SYSTEM_RUNERROR$WORD
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOBEGINTHREAD$crc81B914C6:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	call	SYSTEM_NOTHREADERROR
	movl	$-1,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$12

.text
	.balign 4,0x90
SYSTEM_NOENDTHREAD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	call	SYSTEM_NOTHREADERROR
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOTHREADHANDLER$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	SYSTEM_NOTHREADERROR
	movl	$-1,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOTHREADSWITCH:
	pushl	%ebp
	movl	%esp,%ebp
	call	SYSTEM_NOTHREADERROR
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOCLOSETHREAD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	call	SYSTEM_NOTHREADERROR
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOWAITFORTHREADTERMINATE$LONGWORD$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	call	SYSTEM_NOTHREADERROR
	movl	$-1,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOTHREADSETPRIORITY$LONGWORD$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	call	SYSTEM_NOTHREADERROR
	movb	$0,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOTHREADGETPRIORITY$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	SYSTEM_NOTHREADERROR
	movl	$-1,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOGETCURRENTTHREADID$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj15462
	jmp	Lj15463
Lj15462:
	call	SYSTEM_NOTHREADERROR
	jmp	Lj15464
Lj15463:
	movb	$1,TC_SYSTEM_THREADINGALREADYUSED
Lj15464:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15469
	movl	U_SYSTEM_THREADID,%eax
	call	*%edx
	jmp	Lj15470
Lj15469:
	movl	$U_SYSTEM_THREADID+4,%eax
Lj15470:
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOCRITICALSECTION$formal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj15473
	jmp	Lj15474
Lj15473:
	call	SYSTEM_NOTHREADERROR
	jmp	Lj15475
Lj15474:
	movb	$1,TC_SYSTEM_THREADINGALREADYUSED
Lj15475:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOTRYENTERCRITICALSECTION$formal$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj15480
	jmp	Lj15481
Lj15480:
	call	SYSTEM_NOTHREADERROR
	jmp	Lj15482
Lj15481:
	movb	$1,TC_SYSTEM_THREADINGALREADYUSED
Lj15482:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOINITTHREADVAR$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	call	SYSTEM_NOTHREADERROR
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NORELOCATETHREADVAR$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	SYSTEM_NOTHREADERROR
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOALLOCATETHREADVARS:
	pushl	%ebp
	movl	%esp,%ebp
	call	SYSTEM_NOTHREADERROR
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NORELEASETHREADVARS:
	pushl	%ebp
	movl	%esp,%ebp
	call	SYSTEM_NOTHREADERROR
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOBASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	%cl,-12(%ebp)
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj15497
	jmp	Lj15498
Lj15497:
	call	SYSTEM_NOTHREADERROR
	jmp	Lj15499
Lj15498:
	movb	$1,TC_SYSTEM_THREADINGALREADYUSED
Lj15499:
	movl	$0,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_NOBASICEVENTDESTROY$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj15506
	jmp	Lj15507
Lj15506:
	call	SYSTEM_NOTHREADERROR
	jmp	Lj15508
Lj15507:
	movb	$1,TC_SYSTEM_THREADINGALREADYUSED
Lj15508:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOBASICEVENTRESETEVENT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj15513
	jmp	Lj15514
Lj15513:
	call	SYSTEM_NOTHREADERROR
	jmp	Lj15515
Lj15514:
	movb	$1,TC_SYSTEM_THREADINGALREADYUSED
Lj15515:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOBASICEVENTSETEVENT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj15520
	jmp	Lj15521
Lj15520:
	call	SYSTEM_NOTHREADERROR
	jmp	Lj15522
Lj15521:
	movb	$1,TC_SYSTEM_THREADINGALREADYUSED
Lj15522:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOBASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj15527
	jmp	Lj15528
Lj15527:
	call	SYSTEM_NOTHREADERROR
	jmp	Lj15529
Lj15528:
	movb	$1,TC_SYSTEM_THREADINGALREADYUSED
Lj15529:
	movl	$-1,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NORTLEVENTCREATE$$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj15536
	jmp	Lj15537
Lj15536:
	call	SYSTEM_NOTHREADERROR
	jmp	Lj15538
Lj15537:
	movb	$1,TC_SYSTEM_THREADINGALREADYUSED
Lj15538:
	movl	$0,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NORTLEVENTDESTROY$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj15545
	jmp	Lj15546
Lj15545:
	call	SYSTEM_NOTHREADERROR
	jmp	Lj15547
Lj15546:
	movb	$1,TC_SYSTEM_THREADINGALREADYUSED
Lj15547:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NORTLEVENTSETEVENT$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj15552
	jmp	Lj15553
Lj15552:
	call	SYSTEM_NOTHREADERROR
	jmp	Lj15554
Lj15553:
	movb	$1,TC_SYSTEM_THREADINGALREADYUSED
Lj15554:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NORTLEVENTRESETEVENT$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj15559
	jmp	Lj15560
Lj15559:
	call	SYSTEM_NOTHREADERROR
	jmp	Lj15561
Lj15560:
	movb	$1,TC_SYSTEM_THREADINGALREADYUSED
Lj15561:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NORTLEVENTWAITFOR$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj15566
	jmp	Lj15567
Lj15566:
	call	SYSTEM_NOTHREADERROR
	jmp	Lj15568
Lj15567:
	movb	$1,TC_SYSTEM_THREADINGALREADYUSED
Lj15568:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NORTLEVENTWAITFORTIMEOUT$PRTLEVENT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj15573
	jmp	Lj15574
Lj15573:
	call	SYSTEM_NOTHREADERROR
	jmp	Lj15575
Lj15574:
	movb	$1,TC_SYSTEM_THREADINGALREADYUSED
Lj15575:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NORTLEVENTSYNC$TRTLMETHOD$TPROCEDURE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj15580
	jmp	Lj15581
Lj15580:
	call	SYSTEM_NOTHREADERROR
	jmp	Lj15582
Lj15581:
	movb	$1,TC_SYSTEM_THREADINGALREADYUSED
Lj15582:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOSEMAPHOREINIT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj15587
	jmp	Lj15588
Lj15587:
	call	SYSTEM_NOTHREADERROR
	jmp	Lj15589
Lj15588:
	movb	$1,TC_SYSTEM_THREADINGALREADYUSED
Lj15589:
	movl	$0,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOSEMAPHOREWAIT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	call	SYSTEM_NOTHREADERROR
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOSEMAPHOREPOST$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj15598
	jmp	Lj15599
Lj15598:
	call	SYSTEM_NOTHREADERROR
	jmp	Lj15600
Lj15599:
	movb	$1,TC_SYSTEM_THREADINGALREADYUSED
Lj15600:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NOSEMAPHOREDESTROY$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj15605
	jmp	Lj15606
Lj15605:
	call	SYSTEM_NOTHREADERROR
	jmp	Lj15607
Lj15606:
	movb	$1,TC_SYSTEM_THREADINGALREADYUSED
Lj15607:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SETNOTHREADMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	movl	$0,U_SYSTEM_NOTHREADMANAGER
	movl	$0,U_SYSTEM_NOTHREADMANAGER+4
	movl	$SYSTEM_NOBEGINTHREAD$crc81B914C6,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+8
	movl	$SYSTEM_NOENDTHREAD$LONGWORD,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+12
	movl	$SYSTEM_NOTHREADHANDLER$LONGWORD$$LONGWORD,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+16
	movl	$SYSTEM_NOTHREADHANDLER$LONGWORD$$LONGWORD,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+20
	movl	$SYSTEM_NOTHREADHANDLER$LONGWORD$$LONGWORD,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+24
	movl	$SYSTEM_NOCLOSETHREAD$LONGWORD$$LONGWORD,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+28
	movl	$SYSTEM_NOTHREADSWITCH,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+32
	movl	$SYSTEM_NOWAITFORTHREADTERMINATE$LONGWORD$LONGINT$$LONGWORD,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+36
	movl	$SYSTEM_NOTHREADSETPRIORITY$LONGWORD$LONGINT$$BOOLEAN,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+40
	movl	$SYSTEM_NOTHREADGETPRIORITY$LONGWORD$$LONGINT,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+44
	movl	$SYSTEM_NOGETCURRENTTHREADID$$LONGWORD,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+48
	movl	$SYSTEM_NOCRITICALSECTION$formal,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+52
	movl	$SYSTEM_NOCRITICALSECTION$formal,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+56
	movl	$SYSTEM_NOCRITICALSECTION$formal,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+60
	movl	$SYSTEM_NOTRYENTERCRITICALSECTION$formal$$LONGINT,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+64
	movl	$SYSTEM_NOCRITICALSECTION$formal,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+68
	movl	$SYSTEM_NOINITTHREADVAR$LONGWORD$LONGWORD,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+72
	movl	$SYSTEM_NORELOCATETHREADVAR$LONGWORD$$POINTER,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+76
	movl	$SYSTEM_NOALLOCATETHREADVARS,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+80
	movl	$SYSTEM_NORELEASETHREADVARS,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+84
	movl	$SYSTEM_NOBASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+88
	movl	$SYSTEM_NOBASICEVENTDESTROY$POINTER,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+92
	movl	$SYSTEM_NOBASICEVENTRESETEVENT$POINTER,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+96
	movl	$SYSTEM_NOBASICEVENTSETEVENT$POINTER,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+100
	movl	$SYSTEM_NOBASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+104
	movl	$SYSTEM_NORTLEVENTCREATE$$PRTLEVENT,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+108
	movl	$SYSTEM_NORTLEVENTDESTROY$PRTLEVENT,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+112
	movl	$SYSTEM_NORTLEVENTSETEVENT$PRTLEVENT,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+116
	movl	$SYSTEM_NORTLEVENTRESETEVENT$PRTLEVENT,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+120
	movl	$SYSTEM_NORTLEVENTWAITFOR$PRTLEVENT,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+124
	movl	$SYSTEM_NORTLEVENTSYNC$TRTLMETHOD$TPROCEDURE,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+128
	movl	$SYSTEM_NORTLEVENTWAITFORTIMEOUT$PRTLEVENT$LONGINT,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+132
	movl	$SYSTEM_NOSEMAPHOREINIT$$POINTER,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+136
	movl	$SYSTEM_NOSEMAPHOREDESTROY$POINTER,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+140
	movl	$SYSTEM_NOSEMAPHOREWAIT$POINTER,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+148
	movl	$SYSTEM_NOSEMAPHOREPOST$POINTER,%eax
	movl	%eax,U_SYSTEM_NOTHREADMANAGER+144
	movl	$U_SYSTEM_NOTHREADMANAGER,%eax
	call	SYSTEM_SETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INITSYSTEMTHREADS:
	pushl	%ebp
	movl	%esp,%ebp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15694
	movl	U_SYSTEM_THREADID,%eax
	call	*%edx
	jmp	Lj15695
Lj15694:
	movl	$U_SYSTEM_THREADID+4,%eax
Lj15695:
	movl	$1,(%eax)
	call	SYSTEM_SETNOTHREADMANAGER
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INIT_UNIT_THREADVARS$PLTVINITENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	jmp	Lj15699
	.balign 4,0x90
Lj15698:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	U_SYSTEM_CURRENTTM+72,%ecx
	call	*%ecx
	addl	$8,-4(%ebp)
Lj15699:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj15698
	jmp	Lj15700
Lj15700:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INIT_ALL_UNIT_THREADVARS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movw	FPC_THREADVARTABLES,%bx
	movw	$1,-2(%ebp)
	cmpw	-2(%ebp),%bx
	jl	Lj15708
	decw	-2(%ebp)
	.balign 4,0x90
Lj15709:
	incw	-2(%ebp)
	movzwl	-2(%ebp),%eax
	movl	FPC_THREADVARTABLES(,%eax,4),%eax
	call	SYSTEM_INIT_UNIT_THREADVARS$PLTVINITENTRY
	cmpw	-2(%ebp),%bx
	jg	Lj15709
Lj15708:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_COPY_UNIT_THREADVARS$PLTVINITENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	jmp	Lj15715
	.balign 4,0x90
Lj15714:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	movl	U_SYSTEM_CURRENTTM+76,%edx
	call	*%edx
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	addl	$4,%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	addl	$8,-4(%ebp)
Lj15715:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj15714
	jmp	Lj15716
Lj15716:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_COPY_ALL_UNIT_THREADVARS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movw	FPC_THREADVARTABLES,%bx
	movw	$1,-2(%ebp)
	cmpw	-2(%ebp),%bx
	jl	Lj15732
	decw	-2(%ebp)
	.balign 4,0x90
Lj15733:
	incw	-2(%ebp)
	movzwl	-2(%ebp),%eax
	movl	FPC_THREADVARTABLES(,%eax,4),%eax
	call	SYSTEM_COPY_UNIT_THREADVARS$PLTVINITENTRY
	cmpw	-2(%ebp),%bx
	jg	Lj15733
Lj15732:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INITTHREADVARS$POINTER
SYSTEM_INITTHREADVARS$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	call	SYSTEM_INIT_ALL_UNIT_THREADVARS
	movl	U_SYSTEM_CURRENTTM+80,%eax
	call	*%eax
	call	SYSTEM_COPY_ALL_UNIT_THREADVARS
	movl	-4(%ebp),%eax
	movl	%eax,FPC_THREADVAR_RELOCATE
	call	SYSTEM_RELOCATEHEAP
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DODIRSEPARATORS$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%eax
	jl	Lj15743
	decl	-8(%ebp)
	.balign 4,0x90
Lj15744:
	incl	-8(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movzbl	(%ecx,%edx,1),%edx
	btl	%edx,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj15747
	jmp	Lj15748
Lj15747:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movb	$92,(%edx,%ecx,1)
Lj15748:
	cmpl	-8(%ebp),%eax
	jg	Lj15744
Lj15743:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DODIRSEPARATORS$OPENSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj15754
	decl	-12(%ebp)
	.balign 4,0x90
Lj15755:
	incl	-12(%ebp)
	movl	-4(%ebp),%ecx
	movzbl	-12(%ebp),%edx
	movzbl	(%ecx,%edx,1),%edx
	btl	%edx,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj15756
	jmp	Lj15757
Lj15756:
	movl	-4(%ebp),%edx
	movzbl	-12(%ebp),%ecx
	movb	$92,(%edx,%ecx,1)
Lj15757:
	cmpl	-12(%ebp),%eax
	jg	Lj15755
Lj15754:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_CLOSE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$4,%eax
	jg	Lj15763
	jmp	Lj15765
Lj15765:
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj15766
	jmp	Lj15764
Lj15766:
	movl	-4(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj15763
	jmp	Lj15764
Lj15763:
	pushl	%ebx
	movb	$62,%ah
	movl	-4(%ebp),%ebx
	call	___SYSCALL
	jnc	Lj15762
	movw	%ax,U_SYSTEM_INOUTRES
Lj15762:
	popl	%ebx
Lj15764:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_ERASE$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	movl	-4(%ebp),%edx
	movb	$65,%ah
	call	___SYSCALL
	jnc	Lj15769
	movw	%ax,U_SYSTEM_INOUTRES
Lj15769:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_RENAME$PCHAR$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	movl	-8(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%edi
	movb	$86,%ah
	call	___SYSCALL
	jnc	Lj15774
	movw	%ax,U_SYSTEM_INOUTRES
Lj15774:
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_READ$LONGINT$POINTER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	pushl	%ebx
	movl	%eax,%ebx
	movb	$63,%ah
	call	___SYSCALL
	jnc	Lj15781
	movw	%ax,U_SYSTEM_INOUTRES
	xorl	%eax,%eax
Lj15781:
	popl	%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_WRITE$LONGINT$POINTER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	pushl	%ebx
	movl	%eax,%ebx
	xorl	%eax,%eax
	cmpl	$0,%ecx
	jz	Lj15784
	movb	$64,%ah
	call	___SYSCALL
	jnc	Lj15784
	movw	%ax,U_SYSTEM_INOUTRES
Lj15784:
	popl	%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_FILEPOS$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	pushl	%ebx
	movl	%eax,%ebx
	movw	$16897,%ax
	xorl	%edx,%edx
	call	___SYSCALL
	jnc	Lj15787
	movw	%ax,U_SYSTEM_INOUTRES
	xorl	%eax,%eax
Lj15787:
	popl	%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_SEEK$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	pushl	%ebx
	movl	%eax,%ebx
	movw	$16896,%ax
	call	___SYSCALL
	jnc	Lj15790
	movw	%ax,U_SYSTEM_INOUTRES
Lj15790:
	popl	%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_SEEKEND$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	pushl	%ebx
	movl	%eax,%ebx
	movw	$16898,%ax
	xorl	%edx,%edx
	call	___SYSCALL
	jnc	Lj15793
	movw	%ax,U_SYSTEM_INOUTRES
	xorl	%eax,%eax
Lj15793:
	popl	%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_FILESIZE$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_DO_FILEPOS$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_DO_SEEKEND$LONGINT$$LONGINT
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_DO_SEEK$LONGINT$LONGINT
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_TRUNCATE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	pushl	%ebx
	movl	%eax,%ebx
	pushl	%eax
	movl	$32549,%eax
	call	___SYSCALL
	incl	%eax
	movl	%ecx,%eax
	popl	%ebx
	jnz	Lj15810
	movl	$16898,%eax
	movl	$0,%edx
	call	___SYSCALL
	jnc	Lj15811
Lj15810:
	movw	%ax,U_SYSTEM_INOUTRES
Lj15811:
	popl	%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INCREASE_FILE_HANDLE_COUNT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj15815
	jmp	Lj15816
Lj15815:
	movl	$10,-8(%ebp)
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-8(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_382
	addl	$8,%esp
	testl	%eax,%eax
	jne	Lj15819
	jmp	Lj15820
Lj15819:
	movb	$0,-1(%ebp)
	jmp	Lj15827
Lj15820:
	movl	-12(%ebp),%eax
	cmpl	TC_SYSTEM_FILEHANDLECOUNT,%eax
	ja	Lj15828
	jmp	Lj15829
Lj15828:
	movl	-12(%ebp),%eax
	movl	%eax,TC_SYSTEM_FILEHANDLECOUNT
	movb	$1,-1(%ebp)
	jmp	Lj15834
Lj15829:
	movb	$0,-1(%ebp)
Lj15834:
Lj15827:
	jmp	Lj15837
Lj15816:
	addl	$10,TC_SYSTEM_FILEHANDLECOUNT
	movw	$0,-4(%ebp)
	pushl	%ebx
	movl	$26368,%eax
	movl	TC_SYSTEM_FILEHANDLECOUNT,%ebx
	call	___SYSCALL
	jnc	Lj15814
	movw	%ax,-4(%ebp)
Lj15814:
	popl	%ebx
	movzwl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj15840
	jmp	Lj15841
Lj15840:
	movb	$0,-1(%ebp)
	subl	$10,TC_SYSTEM_FILEHANDLECOUNT
	jmp	Lj15844
Lj15841:
	movb	$1,-1(%ebp)
Lj15844:
Lj15837:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_OPEN$formal$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	movl	-12(%ebp),%eax
	andl	$65536,%eax
	testl	%eax,%eax
	je	Lj15853
	jmp	Lj15854
Lj15853:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	jl	Lj15856
	subl	$55216,%eax
	je	Lj15858
	decl	%eax
	jl	Lj15856
	subl	$2,%eax
	jle	Lj15857
	jmp	Lj15856
Lj15857:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_CLOSE$LONGINT
	jmp	Lj15855
Lj15858:
	jmp	Lj15855
Lj15856:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15863
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj15864
Lj15863:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj15864:
	movw	$102,(%eax)
	jmp	Lj15847
Lj15855:
Lj15854:
	movl	-4(%ebp),%eax
	movl	$-1,(%eax)
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	andl	$3,%eax
	testl	%eax,%eax
	jl	Lj15870
	testl	%eax,%eax
	je	Lj15871
	decl	%eax
	je	Lj15872
	decl	%eax
	je	Lj15873
	jmp	Lj15870
Lj15871:
	movl	-4(%ebp),%eax
	movl	$55217,4(%eax)
	jmp	Lj15869
Lj15872:
	movl	-4(%ebp),%eax
	movl	$55218,4(%eax)
	jmp	Lj15869
Lj15873:
	movl	-4(%ebp),%eax
	movl	$55219,4(%eax)
	jmp	Lj15869
Lj15870:
Lj15869:
	movl	-12(%ebp),%eax
	andl	$4096,%eax
	testl	%eax,%eax
	jne	Lj15880
	jmp	Lj15881
Lj15880:
	movl	$327680,-16(%ebp)
Lj15881:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj15884
	jmp	Lj15885
Lj15884:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj15887
	subl	$55217,%eax
	je	Lj15888
	decl	%eax
	jl	Lj15887
	subl	$1,%eax
	jle	Lj15889
	decl	%eax
	je	Lj15890
	jmp	Lj15887
Lj15888:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj15886
Lj15889:
	movl	-4(%ebp),%eax
	movl	$1,(%eax)
	jmp	Lj15886
Lj15890:
	movl	-4(%ebp),%eax
	movl	$1,(%eax)
	movl	-4(%ebp),%eax
	movl	$55218,4(%eax)
	jmp	Lj15886
Lj15887:
Lj15886:
	jmp	Lj15847
Lj15885:
	movl	-12(%ebp),%edx
	andl	$255,%edx
	movl	-16(%ebp),%eax
	orl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-12(%ebp),%eax
	andl	$112,%eax
	testl	%eax,%eax
	je	Lj15901
	jmp	Lj15902
Lj15901:
	movl	-16(%ebp),%eax
	orl	$64,%eax
	movl	%eax,-16(%ebp)
Lj15902:
	pushl	%ebx
	movl	$32555,%eax
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	___SYSCALL
	cmpl	$-1,%eax
	jnz	Lj15849
	movw	%cx,U_SYSTEM_INOUTRES
	movl	$-1,%eax
Lj15849:
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	popl	%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15908
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj15909
Lj15908:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj15909:
	movzwl	(%eax),%eax
	cmpl	$4,%eax
	je	Lj15907
	jmp	Lj15906
Lj15907:
	call	SYSTEM_INCREASE_FILE_HANDLE_COUNT$$BOOLEAN
	testb	%al,%al
	jne	Lj15905
	jmp	Lj15906
Lj15905:
	pushl	%ebx
	movl	$32555,%eax
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	___SYSCALL
	cmpl	$-1,%eax
	jnz	Lj15850
	movw	%cx,U_SYSTEM_INOUTRES
	movl	$-1,%eax
Lj15850:
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	popl	%ebx
Lj15906:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj15910
	jmp	Lj15911
Lj15910:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	TC_SYSTEM_FILEHANDLECOUNT,%ecx
	movl	$0,%ebx
	cmpl	%ebx,%eax
	jg	Lj15912
	jl	Lj15913
	cmpl	%ecx,%edx
	ja	Lj15912
	jmp	Lj15913
Lj15912:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,TC_SYSTEM_FILEHANDLECOUNT
Lj15913:
	movl	-12(%ebp),%eax
	andl	$256,%eax
	testl	%eax,%eax
	jne	Lj15916
	jmp	Lj15917
Lj15916:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_SEEKEND$LONGINT$$LONGINT
	movl	-4(%ebp),%eax
	movl	$55218,4(%eax)
Lj15917:
Lj15911:
Lj15847:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_ISDEVICE$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	pushl	%ebx
	movl	%eax,%ebx
	movl	$17408,%eax
	call	___SYSCALL
	movl	$1,%eax
	jc	Lj15924
	testl	$128,%edx
	jnz	Lj15924
	decl	%eax
Lj15924:
	popl	%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FILECLOSEFUNC$TEXTREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_CLOSE$LONGINT
	movl	-4(%ebp),%eax
	movl	$-1,(%eax)
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FILEREADFUNC$TEXTREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_READ$LONGINT$POINTER$LONGINT$$LONGINT
	movl	-4(%ebp),%edx
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FILEWRITEFUNC$TEXTREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj15945
	jmp	Lj15946
Lj15945:
	jmp	Lj15943
Lj15946:
	movl	-4(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_WRITE$LONGINT$POINTER$LONGINT$$LONGINT
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	cmpl	16(%eax),%edx
	jne	Lj15955
	jmp	Lj15956
Lj15955:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15959
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj15960
Lj15959:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj15960:
	movw	$101,(%eax)
Lj15956:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
Lj15943:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FILEOPENFUNC$TEXTREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj15966
	subl	$55217,%eax
	je	Lj15967
	decl	%eax
	je	Lj15968
	subl	$2,%eax
	je	Lj15969
	jmp	Lj15966
Lj15967:
	movl	$65536,-8(%ebp)
	jmp	Lj15965
Lj15968:
	movl	$69633,-8(%ebp)
	jmp	Lj15965
Lj15969:
	movl	$65793,-8(%ebp)
	jmp	Lj15965
Lj15966:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15978
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj15979
Lj15978:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj15979:
	movw	$102,(%eax)
	jmp	Lj15963
Lj15965:
	movl	-4(%ebp),%eax
	leal	76(%eax),%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_DO_OPEN$formal$PCHAR$LONGINT
	movl	$SYSTEM_FILECLOSEFUNC$TEXTREC,%eax
	movl	-4(%ebp),%edx
	movl	%eax,40(%edx)
	movl	-4(%ebp),%eax
	movl	$0,36(%eax)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	je	Lj15990
	jmp	Lj15991
Lj15990:
	movl	$SYSTEM_FILEREADFUNC$TEXTREC,%eax
	movl	-4(%ebp),%edx
	movl	%eax,32(%edx)
	jmp	Lj15994
Lj15991:
	movl	$SYSTEM_FILEWRITEFUNC$TEXTREC,%edx
	movl	-4(%ebp),%eax
	movl	%edx,32(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16000
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16001
Lj16000:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16001:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj15999
	jmp	Lj15998
Lj15999:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_ISDEVICE$LONGINT$$BOOLEAN
	testb	%al,%al
	jne	Lj15997
	jmp	Lj15998
Lj15997:
	movl	$SYSTEM_FILEWRITEFUNC$TEXTREC,%eax
	movl	-4(%ebp),%edx
	movl	%eax,36(%edx)
Lj15998:
Lj15994:
Lj15963:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ASSIGN$TEXT$SHORTSTRING
SYSTEM_ASSIGN$TEXT$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$592,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-4(%ebp),%eax
	movl	$-1,(%eax)
	movl	-4(%ebp),%eax
	movl	$55216,4(%eax)
	movl	-4(%ebp),%eax
	movl	$256,8(%eax)
	movl	-4(%ebp),%eax
	leal	336(%eax),%edx
	movl	-4(%ebp),%eax
	movl	%edx,24(%eax)
	movl	$SYSTEM_FILEOPENFUNC$TEXTREC,%eax
	movl	-4(%ebp),%edx
	movl	%eax,28(%edx)
	movl	TC_SYSTEM_DEFAULTTEXTLINEBREAKSTYLE,%eax
	testl	%eax,%eax
	je	Lj16026
	decl	%eax
	je	Lj16027
	decl	%eax
	je	Lj16028
	jmp	Lj16025
Lj16026:
	movl	-4(%ebp),%eax
	movw	$2561,332(%eax)
	jmp	Lj16024
Lj16027:
	movl	-4(%ebp),%eax
	leal	332(%eax),%eax
	movl	$_$SYSTEM$_Ld38,%ecx
	movl	$3,%edx
	call	fpc_shortstr_to_shortstr
	jmp	Lj16024
Lj16028:
	movl	-4(%ebp),%eax
	movw	$3329,332(%eax)
	jmp	Lj16024
Lj16025:
Lj16024:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-4(%ebp),%eax
	leal	76(%eax),%edx
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ASSIGN$TEXT$PCHAR
SYSTEM_ASSIGN$TEXT$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	FPC_PCHAR_TO_SHORTSTR
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ASSIGN$TEXT$SHORTSTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ASSIGN$TEXT$CHAR
SYSTEM_ASSIGN$TEXT$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movzbl	-8(%ebp),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-264(%ebp)
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ASSIGN$TEXT$SHORTSTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_CLOSE$TEXT
SYSTEM_CLOSE$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16067
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16068
Lj16067:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16068:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16065
	jmp	Lj16066
Lj16065:
	jmp	Lj16063
Lj16066:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj16070
	subl	$55217,%eax
	subl	$1,%eax
	jle	Lj16071
	subl	$2,%eax
	je	Lj16071
	jmp	Lj16070
Lj16071:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj16072
	jmp	Lj16073
Lj16072:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
Lj16073:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16079
	jmp	Lj16077
Lj16079:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	jne	Lj16078
	jmp	Lj16077
Lj16078:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$2,%eax
	jne	Lj16076
	jmp	Lj16077
Lj16076:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	40(%edx),%edx
	call	*%edx
Lj16077:
	movl	-4(%ebp),%eax
	movl	$55216,4(%eax)
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	jmp	Lj16069
Lj16070:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16090
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16091
Lj16090:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16091:
	movw	$103,(%eax)
Lj16069:
Lj16063:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_OPENTEXT$TEXT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	jl	Lj16095
	subl	$55216,%eax
	je	Lj16097
	decl	%eax
	jl	Lj16095
	subl	$2,%eax
	jle	Lj16096
	jmp	Lj16095
Lj16096:
	movl	-4(%ebp),%eax
	call	SYSTEM_CLOSE$TEXT
	jmp	Lj16094
Lj16097:
	jmp	Lj16094
Lj16095:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16102
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16103
Lj16102:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16103:
	movw	$102,(%eax)
	jmp	Lj16092
Lj16094:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	28(%edx),%edx
	call	*%edx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16114
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16115
Lj16114:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16115:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16112
	jmp	Lj16113
Lj16112:
	movl	-4(%ebp),%eax
	movl	$55216,4(%eax)
Lj16113:
Lj16092:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_REWRITE$TEXT
SYSTEM_REWRITE$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16122
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16123
Lj16122:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16123:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16120
	jmp	Lj16121
Lj16120:
	jmp	Lj16118
Lj16121:
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	$55218,%edx
	call	SYSTEM_OPENTEXT$TEXT$LONGINT$LONGINT
Lj16118:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RESET$TEXT
SYSTEM_RESET$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16134
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16135
Lj16134:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16135:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16132
	jmp	Lj16133
Lj16132:
	jmp	Lj16130
Lj16133:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	$55217,%edx
	call	SYSTEM_OPENTEXT$TEXT$LONGINT$LONGINT
Lj16130:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_APPEND$TEXT
SYSTEM_APPEND$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16146
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16147
Lj16146:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16147:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16144
	jmp	Lj16145
Lj16144:
	jmp	Lj16142
Lj16145:
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	$55220,%edx
	call	SYSTEM_OPENTEXT$TEXT$LONGINT$LONGINT
Lj16142:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FLUSH$TEXT
SYSTEM_FLUSH$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16158
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16159
Lj16158:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16159:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16156
	jmp	Lj16157
Lj16156:
	jmp	Lj16154
Lj16157:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jne	Lj16160
	jmp	Lj16161
Lj16160:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	je	Lj16162
	jmp	Lj16163
Lj16162:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16166
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16167
Lj16166:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16167:
	movw	$105,(%eax)
	jmp	Lj16168
Lj16163:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16171
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16172
Lj16171:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16172:
	movw	$103,(%eax)
Lj16168:
	jmp	Lj16154
Lj16161:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
Lj16154:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ERASE$TEXT
SYSTEM_ERASE$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16179
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16180
Lj16179:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16180:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16177
	jmp	Lj16178
Lj16177:
	jmp	Lj16175
Lj16178:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	je	Lj16181
	jmp	Lj16182
Lj16181:
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	call	SYSTEM_DO_ERASE$PCHAR
Lj16182:
Lj16175:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RENAME$TEXT$PCHAR
SYSTEM_RENAME$TEXT$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16189
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16190
Lj16189:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16190:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16187
	jmp	Lj16188
Lj16187:
	jmp	Lj16185
Lj16188:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	je	Lj16191
	jmp	Lj16192
Lj16191:
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_DO_RENAME$PCHAR$PCHAR
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16199
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16200
Lj16199:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16200:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj16197
	jmp	Lj16198
Lj16197:
	movl	-8(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	movl	%eax,%ecx
	incl	%ecx
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	leal	76(%edx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj16198:
Lj16192:
Lj16185:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RENAME$TEXT$SHORTSTRING
SYSTEM_RENAME$TEXT$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16213
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16214
Lj16213:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16214:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16211
	jmp	Lj16212
Lj16211:
	jmp	Lj16209
Lj16212:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%ecx
	leal	-264(%ebp),%edx
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	$0,-264(%ebp,%eax,1)
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_RENAME$TEXT$PCHAR
Lj16209:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RENAME$TEXT$CHAR
SYSTEM_RENAME$TEXT$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$10,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16231
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16232
Lj16231:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16232:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16229
	jmp	Lj16230
Lj16229:
	jmp	Lj16227
Lj16230:
	movb	-8(%ebp),%al
	movb	%al,-10(%ebp)
	movb	$0,-9(%ebp)
	leal	-10(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_RENAME$TEXT$PCHAR
Lj16227:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_EOF$TEXT$$BOOLEAN
SYSTEM_EOF$TEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16245
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16246
Lj16245:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16246:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16243
	jmp	Lj16244
Lj16243:
	movb	$1,-5(%ebp)
	jmp	Lj16241
Lj16244:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jne	Lj16249
	jmp	Lj16250
Lj16249:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj16251
	jmp	Lj16252
Lj16251:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16255
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16256
Lj16255:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16256:
	movw	$104,(%eax)
	jmp	Lj16257
Lj16252:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16260
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16261
Lj16260:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16261:
	movw	$103,(%eax)
Lj16257:
	movb	$1,-5(%ebp)
	jmp	Lj16241
Lj16250:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj16264
	jmp	Lj16265
Lj16264:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj16268
	jmp	Lj16269
Lj16268:
	movb	$1,-5(%ebp)
	jmp	Lj16241
Lj16269:
Lj16265:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj16274
	jmp	Lj16273
Lj16274:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj16272
	jmp	Lj16273
Lj16272:
	movb	$1,-5(%ebp)
	jmp	Lj16275
Lj16273:
	movb	$0,-5(%ebp)
Lj16275:
Lj16241:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_EOF$$BOOLEAN
SYSTEM_EOF$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16282
	movl	U_SYSTEM_INPUT,%eax
	call	*%edx
	jmp	Lj16283
Lj16282:
	movl	$U_SYSTEM_INPUT+4,%eax
Lj16283:
	call	SYSTEM_EOF$TEXT$$BOOLEAN
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SEEKEOF$TEXT$$BOOLEAN
SYSTEM_SEEKEOF$TEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$29,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16288
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16289
Lj16288:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16289:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16286
	jmp	Lj16287
Lj16286:
	movb	$1,-5(%ebp)
	jmp	Lj16284
Lj16287:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jne	Lj16292
	jmp	Lj16293
Lj16292:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj16294
	jmp	Lj16295
Lj16294:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16298
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16299
Lj16298:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16299:
	movw	$104,(%eax)
	jmp	Lj16300
Lj16295:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16303
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16304
Lj16303:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16304:
	movw	$103,(%eax)
Lj16300:
	movb	$1,-5(%ebp)
	jmp	Lj16284
Lj16293:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-28(%ebp)
	movl	$-1,-16(%ebp)
	movl	$-1,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_ISDEVICE$LONGINT$$BOOLEAN
	movb	%al,-29(%ebp)
	.balign 4,0x90
Lj16319:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj16322
	jmp	Lj16323
Lj16322:
	incl	-28(%ebp)
	movb	-29(%ebp),%al
	testb	%al,%al
	je	Lj16326
	jmp	Lj16325
Lj16326:
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	je	Lj16324
	jmp	Lj16325
Lj16324:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_FILEPOS$LONGINT$$LONGINT
	movl	-4(%ebp),%edx
	movl	20(%edx),%edx
	subl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16333
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16334
Lj16333:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16334:
	movw	$0,(%eax)
Lj16325:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj16337
	jmp	Lj16338
Lj16337:
	decl	-28(%ebp)
	movb	$1,-5(%ebp)
	jmp	Lj16321
Lj16338:
Lj16323:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$9,%al
	jb	Lj16342
	subb	$9,%al
	subb	$1,%al
	jbe	Lj16344
	subb	$3,%al
	je	Lj16344
	subb	$13,%al
	je	Lj16343
	subb	$6,%al
	je	Lj16344
	jmp	Lj16342
Lj16343:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj16345
	jmp	Lj16346
Lj16345:
	movb	$1,-5(%ebp)
	jmp	Lj16321
Lj16346:
	jmp	Lj16341
Lj16344:
	jmp	Lj16341
Lj16342:
	movb	$0,-5(%ebp)
	jmp	Lj16321
Lj16341:
	movl	-4(%ebp),%eax
	incl	16(%eax)
	jmp	Lj16319
Lj16321:
	movb	-29(%ebp),%al
	testb	%al,%al
	je	Lj16351
	jmp	Lj16352
Lj16351:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj16353
	jmp	Lj16354
Lj16353:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,20(%edx)
	jmp	Lj16359
Lj16354:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_SEEK$LONGINT$LONGINT
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16366
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16367
Lj16366:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16367:
	movw	$0,(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,16(%edx)
Lj16359:
Lj16352:
Lj16284:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SEEKEOF$$BOOLEAN
SYSTEM_SEEKEOF$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16378
	movl	U_SYSTEM_INPUT,%eax
	call	*%edx
	jmp	Lj16379
Lj16378:
	movl	$U_SYSTEM_INPUT+4,%eax
Lj16379:
	call	SYSTEM_SEEKEOF$TEXT$$BOOLEAN
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_EOLN$TEXT$$BOOLEAN
SYSTEM_EOLN$TEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16384
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16385
Lj16384:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16385:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16382
	jmp	Lj16383
Lj16382:
	movb	$1,-5(%ebp)
	jmp	Lj16380
Lj16383:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jne	Lj16388
	jmp	Lj16389
Lj16388:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj16390
	jmp	Lj16391
Lj16390:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16394
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16395
Lj16394:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16395:
	movw	$104,(%eax)
	jmp	Lj16396
Lj16391:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16399
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16400
Lj16399:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16400:
	movw	$103,(%eax)
Lj16396:
	movb	$1,-5(%ebp)
	jmp	Lj16380
Lj16389:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj16403
	jmp	Lj16404
Lj16403:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj16407
	jmp	Lj16408
Lj16407:
	movb	$1,-5(%ebp)
	jmp	Lj16380
Lj16408:
Lj16404:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj16413
	jmp	Lj16412
Lj16413:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj16411
	jmp	Lj16412
Lj16411:
	movb	$1,-5(%ebp)
	jmp	Lj16380
Lj16412:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	cmpl	$10,%eax
	je	Lj16418
	cmpl	$13,%eax
	je	Lj16418
Lj16418:
	seteb	-5(%ebp)
Lj16380:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_EOLN$$BOOLEAN
SYSTEM_EOLN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16425
	movl	U_SYSTEM_INPUT,%eax
	call	*%edx
	jmp	Lj16426
Lj16425:
	movl	$U_SYSTEM_INPUT+4,%eax
Lj16426:
	call	SYSTEM_EOLN$TEXT$$BOOLEAN
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SEEKEOLN$TEXT$$BOOLEAN
SYSTEM_SEEKEOLN$TEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16431
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16432
Lj16431:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16432:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16429
	jmp	Lj16430
Lj16429:
	movb	$1,-5(%ebp)
	jmp	Lj16427
Lj16430:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jne	Lj16435
	jmp	Lj16436
Lj16435:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj16437
	jmp	Lj16438
Lj16437:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16441
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16442
Lj16441:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16442:
	movw	$104,(%eax)
	jmp	Lj16443
Lj16438:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16446
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16447
Lj16446:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16447:
	movw	$103,(%eax)
Lj16443:
	movb	$1,-5(%ebp)
	jmp	Lj16427
Lj16436:
	.balign 4,0x90
Lj16450:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj16453
	jmp	Lj16454
Lj16453:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj16457
	jmp	Lj16458
Lj16457:
	movb	$1,-5(%ebp)
	jmp	Lj16427
Lj16458:
Lj16454:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$9,%al
	jb	Lj16462
	subb	$9,%al
	je	Lj16465
	decb	%al
	je	Lj16464
	subb	$3,%al
	je	Lj16464
	subb	$13,%al
	je	Lj16463
	subb	$6,%al
	je	Lj16465
	jmp	Lj16462
Lj16463:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj16466
	jmp	Lj16467
Lj16466:
	movb	$1,-5(%ebp)
	jmp	Lj16427
Lj16467:
	jmp	Lj16461
Lj16464:
	movb	$1,-5(%ebp)
	jmp	Lj16427
	jmp	Lj16461
Lj16465:
	jmp	Lj16461
Lj16462:
	movb	$0,-5(%ebp)
	jmp	Lj16427
Lj16461:
	movl	-4(%ebp),%eax
	incl	16(%eax)
	jmp	Lj16450
Lj16427:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SEEKEOLN$$BOOLEAN
SYSTEM_SEEKEOLN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16480
	movl	U_SYSTEM_INPUT,%eax
	call	*%edx
	jmp	Lj16481
Lj16480:
	movl	$U_SYSTEM_INPUT+4,%eax
Lj16481:
	call	SYSTEM_SEEKEOLN$TEXT$$BOOLEAN
	movb	%al,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETTEXTBUF$TEXT$formal$LONGINT
SYSTEM_SETTEXTBUF$TEXT$formal$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETTEXTLINEENDING$TEXT$SHORTSTRING
SYSTEM_SETTEXTLINEENDING$TEXT$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	leal	-264(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	leal	-264(%ebp),%ecx
	movl	-4(%ebp),%eax
	leal	332(%eax),%eax
	movl	$3,%edx
	call	fpc_shortstr_to_shortstr
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_get_input
fpc_get_input:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16504
	movl	U_SYSTEM_INPUT,%eax
	call	*%edx
	jmp	Lj16505
Lj16504:
	movl	$U_SYSTEM_INPUT+4,%eax
Lj16505:
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_get_output
fpc_get_output:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16510
	movl	U_SYSTEM_OUTPUT,%eax
	call	*%edx
	jmp	Lj16511
Lj16510:
	movl	$U_SYSTEM_OUTPUT+4,%eax
Lj16511:
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$0,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%ecx
	movl	16(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-20(%ebp)
	jmp	Lj16521
	.balign 4,0x90
Lj16520:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	leal	(%edx,%eax,1),%edx
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%eax
	leal	(%ecx,%eax,1),%eax
	movl	-20(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-20(%ebp),%eax
	subl	%eax,-12(%ebp)
	movl	-20(%ebp),%eax
	addl	%eax,-24(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,16(%edx)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%ecx
	movl	16(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-20(%ebp)
Lj16521:
	movl	-12(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj16520
	jmp	Lj16522
Lj16522:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	leal	(%edx,%eax,1),%edx
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ecx
	leal	(%eax,%ecx,1),%eax
	movl	-12(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,16(%eax)
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%ecx
	movl	16(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-12(%ebp)
	jmp	Lj16544
	.balign 4,0x90
Lj16543:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	leal	(%edx,%eax,1),%eax
	movl	-12(%ebp),%edx
	movb	$32,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	movl	-12(%ebp),%eax
	subl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,16(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	8(%eax),%ecx
	movl	16(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,-12(%ebp)
Lj16544:
	movl	-8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj16543
	jmp	Lj16545
Lj16545:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	leal	(%edx,%eax,1),%eax
	movl	-8(%ebp),%edx
	movb	$32,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,16(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_end
fpc_write_end:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	jne	Lj16564
	jmp	Lj16565
Lj16564:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	36(%edx),%edx
	call	*%edx
Lj16565:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_writeln_end
fpc_writeln_end:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16572
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16573
Lj16572:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16573:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16570
	jmp	Lj16571
Lj16570:
	jmp	Lj16568
Lj16571:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj16575
	subl	$55217,%eax
	je	Lj16577
	decl	%eax
	je	Lj16576
	jmp	Lj16575
Lj16576:
	movl	-4(%ebp),%eax
	movzbl	332(%eax),%ecx
	movl	-4(%ebp),%eax
	leal	333(%eax),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	jne	Lj16584
	jmp	Lj16585
Lj16584:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	36(%edx),%edx
	call	*%edx
Lj16585:
	jmp	Lj16574
Lj16577:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16590
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16591
Lj16590:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16591:
	movw	$105,(%eax)
	jmp	Lj16574
Lj16575:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16594
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16595
Lj16594:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16595:
	movw	$103,(%eax)
Lj16574:
Lj16568:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_shortstr
fpc_write_text_shortstr:
.globl	FPC_WRITE_TEXT_SHORTSTR
FPC_WRITE_TEXT_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16600
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16601
Lj16600:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16601:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16598
	jmp	Lj16599
Lj16598:
	jmp	Lj16596
Lj16599:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj16603
	subl	$55217,%eax
	je	Lj16605
	decl	%eax
	je	Lj16604
	jmp	Lj16603
Lj16604:
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj16606
	jmp	Lj16607
Lj16606:
	movl	-12(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-4(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj16607:
	movl	-12(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-12(%ebp),%eax
	leal	1(%eax),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj16602
Lj16605:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16620
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16621
Lj16620:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16621:
	movw	$105,(%eax)
	jmp	Lj16602
Lj16603:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16624
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16625
Lj16624:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16625:
	movw	$103,(%eax)
Lj16602:
Lj16596:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_shortstr_iso
fpc_write_text_shortstr_iso:
.globl	FPC_WRITE_TEXT_SHORTSTR_ISO
FPC_WRITE_TEXT_SHORTSTR_ISO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16630
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16631
Lj16630:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16631:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16628
	jmp	Lj16629
Lj16628:
	jmp	Lj16626
Lj16629:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj16633
	subl	$55217,%eax
	je	Lj16635
	decl	%eax
	je	Lj16634
	jmp	Lj16633
Lj16634:
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj16636
	jmp	Lj16637
Lj16636:
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-4(%ebp)
Lj16637:
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj16640
	jmp	Lj16641
Lj16640:
	movl	-12(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-4(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
	movl	-12(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-12(%ebp),%eax
	leal	1(%eax),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj16652
Lj16641:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	leal	1(%eax),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
Lj16652:
	jmp	Lj16632
Lj16635:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16661
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16662
Lj16661:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16662:
	movw	$105,(%eax)
	jmp	Lj16632
Lj16633:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16665
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16666
Lj16665:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16666:
	movw	$103,(%eax)
Lj16632:
Lj16626:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_pchar_as_array
fpc_write_text_pchar_as_array:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16671
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16672
Lj16671:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16672:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16669
	jmp	Lj16670
Lj16669:
	jmp	Lj16667
Lj16670:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj16674
	subl	$55217,%eax
	je	Lj16676
	decl	%eax
	je	Lj16675
	jmp	Lj16674
Lj16675:
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpb	$0,8(%ebp)
	jne	Lj16679
	jmp	Lj16680
Lj16679:
	movl	12(%ebp),%edx
	incl	%edx
	movl	-20(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj16689
	jmp	Lj16690
Lj16689:
	movl	12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj16690:
	jmp	Lj16693
Lj16680:
	movl	12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj16693:
	movl	-4(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj16696
	jmp	Lj16697
Lj16696:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj16697:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj16673
Lj16676:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16710
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16711
Lj16710:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16711:
	movw	$105,(%eax)
	jmp	Lj16673
Lj16674:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16714
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16715
Lj16714:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16715:
	movw	$103,(%eax)
Lj16673:
Lj16667:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_write_text_pchar_as_array_iso
fpc_write_text_pchar_as_array_iso:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16720
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16721
Lj16720:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16721:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16718
	jmp	Lj16719
Lj16718:
	jmp	Lj16716
Lj16719:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj16723
	subl	$55217,%eax
	je	Lj16725
	decl	%eax
	je	Lj16724
	jmp	Lj16723
Lj16724:
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpb	$0,8(%ebp)
	jne	Lj16728
	jmp	Lj16729
Lj16728:
	movl	12(%ebp),%edx
	incl	%edx
	movl	-20(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj16738
	jmp	Lj16739
Lj16738:
	movl	12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj16739:
	jmp	Lj16742
Lj16729:
	movl	12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj16742:
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj16745
	jmp	Lj16746
Lj16745:
	movl	-16(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj16746:
	movl	-4(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj16749
	jmp	Lj16750
Lj16749:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj16761
Lj16750:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
Lj16761:
	jmp	Lj16722
Lj16725:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16770
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16771
Lj16770:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16771:
	movw	$105,(%eax)
	jmp	Lj16722
Lj16723:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16774
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16775
Lj16774:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16775:
	movw	$103,(%eax)
Lj16722:
Lj16716:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_write_text_pchar_as_pointer
fpc_write_text_pchar_as_pointer:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj16778
	jmp	Lj16780
Lj16780:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16781
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16782
Lj16781:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16782:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16778
	jmp	Lj16779
Lj16778:
	jmp	Lj16776
Lj16779:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj16784
	subl	$55217,%eax
	je	Lj16786
	decl	%eax
	je	Lj16785
	jmp	Lj16784
Lj16785:
	movl	-12(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj16791
	jmp	Lj16792
Lj16791:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj16792:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj16783
Lj16786:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16805
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16806
Lj16805:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16806:
	movw	$105,(%eax)
	jmp	Lj16783
Lj16784:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16809
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16810
Lj16809:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16810:
	movw	$103,(%eax)
Lj16783:
Lj16776:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_ansistr
fpc_write_text_ansistr:
.globl	FPC_WRITE_TEXT_ANSISTR
FPC_WRITE_TEXT_ANSISTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16815
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16816
Lj16815:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16816:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16813
	jmp	Lj16814
Lj16813:
	jmp	Lj16811
Lj16814:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj16818
	subl	$55217,%eax
	je	Lj16820
	decl	%eax
	je	Lj16819
	jmp	Lj16818
Lj16819:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj16823
	movl	-4(%eax),%eax
Lj16823:
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj16824
	jmp	Lj16825
Lj16824:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj16825:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj16830
	jmp	Lj16831
Lj16830:
	movl	-12(%ebp),%edx
	testl	%edx,%edx
	jne	Lj16834
	movl	$FPC_EMPTYCHAR,%edx
Lj16834:
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
Lj16831:
	jmp	Lj16817
Lj16820:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16841
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16842
Lj16841:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16842:
	movw	$105,(%eax)
	jmp	Lj16817
Lj16818:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16845
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16846
Lj16845:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16846:
	movw	$103,(%eax)
Lj16817:
Lj16811:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_unicodestr
fpc_write_text_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj16849
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj16852
	jmp	Lj16854
Lj16854:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16855
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16856
Lj16855:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16856:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16852
	jmp	Lj16853
Lj16852:
	jmp	Lj16849
Lj16853:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj16858
	subl	$55217,%eax
	je	Lj16860
	decl	%eax
	je	Lj16859
	jmp	Lj16858
Lj16859:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj16863
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj16863:
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj16864
	jmp	Lj16865
Lj16864:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj16865:
	leal	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_unicodestr_to_ansistr
	movl	-20(%ebp),%edx
	testl	%edx,%edx
	jne	Lj16876
	movl	$FPC_EMPTYCHAR,%edx
Lj16876:
	movl	-20(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj16879
	movl	-4(%ecx),%ecx
Lj16879:
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj16857
Lj16860:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16884
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16885
Lj16884:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16885:
	movw	$105,(%eax)
	jmp	Lj16857
Lj16858:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16888
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16889
Lj16888:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16889:
	movw	$103,(%eax)
Lj16857:
Lj16849:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj16850
	call	FPC_RERAISE
Lj16850:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_sint
fpc_write_text_sint:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16900
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16901
Lj16900:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16901:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16898
	jmp	Lj16899
Lj16898:
	jmp	Lj16896
Lj16899:
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	call	fpc_shortstr_sint
	leal	-268(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR
Lj16896:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_uint
fpc_write_text_uint:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16920
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16921
Lj16920:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16921:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16918
	jmp	Lj16919
Lj16918:
	jmp	Lj16916
Lj16919:
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	call	fpc_shortstr_uint
	leal	-268(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR
Lj16916:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_sint_iso
fpc_write_text_sint_iso:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16940
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16941
Lj16940:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16941:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16938
	jmp	Lj16939
Lj16938:
	jmp	Lj16936
Lj16939:
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	call	fpc_shortstr_sint
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj16950
	jmp	Lj16951
Lj16950:
	movl	$11,-4(%ebp)
	jmp	Lj16954
Lj16951:
	movzbl	-268(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj16955
	jmp	Lj16956
Lj16955:
	movzbl	-268(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj16956:
Lj16954:
	leal	-268(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR_ISO
Lj16936:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_uint_iso
fpc_write_text_uint_iso:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16969
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16970
Lj16969:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16970:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16967
	jmp	Lj16968
Lj16967:
	jmp	Lj16965
Lj16968:
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	call	fpc_shortstr_uint
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj16979
	jmp	Lj16980
Lj16979:
	movl	$11,-4(%ebp)
	jmp	Lj16983
Lj16980:
	movzbl	-268(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj16984
	jmp	Lj16985
Lj16984:
	movzbl	-268(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj16985:
Lj16983:
	leal	-268(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR_ISO
Lj16965:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_qword
fpc_write_text_qword:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16998
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16999
Lj16998:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16999:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16996
	jmp	Lj16997
Lj16996:
	jmp	Lj16994
Lj16997:
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-264(%ebp),%edx
	movl	$255,%ecx
	movl	$-1,%eax
	call	fpc_shortstr_qword
	leal	-264(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR
Lj16994:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_write_text_int64
fpc_write_text_int64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17018
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17019
Lj17018:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17019:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17016
	jmp	Lj17017
Lj17016:
	jmp	Lj17014
Lj17017:
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-264(%ebp),%edx
	movl	$255,%ecx
	movl	$-1,%eax
	call	fpc_shortstr_int64
	leal	-264(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR
Lj17014:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_write_text_qword_iso
fpc_write_text_qword_iso:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17038
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17039
Lj17038:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17039:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17036
	jmp	Lj17037
Lj17036:
	jmp	Lj17034
Lj17037:
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-264(%ebp),%edx
	movl	$255,%ecx
	movl	$-1,%eax
	call	fpc_shortstr_qword
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj17048
	jmp	Lj17049
Lj17048:
	movl	$20,-4(%ebp)
	jmp	Lj17052
Lj17049:
	movzbl	-264(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj17053
	jmp	Lj17054
Lj17053:
	movzbl	-264(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj17054:
Lj17052:
	leal	-264(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR_ISO
Lj17034:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_write_text_int64_iso
fpc_write_text_int64_iso:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17067
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17068
Lj17067:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17068:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17065
	jmp	Lj17066
Lj17065:
	jmp	Lj17063
Lj17066:
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-264(%ebp),%edx
	movl	$255,%ecx
	movl	$-1,%eax
	call	fpc_shortstr_int64
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj17077
	jmp	Lj17078
Lj17077:
	movl	$20,-4(%ebp)
	jmp	Lj17081
Lj17078:
	movzbl	-264(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj17082
	jmp	Lj17083
Lj17082:
	movzbl	-264(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj17083:
Lj17081:
	leal	-264(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR_ISO
Lj17063:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_write_text_float
fpc_write_text_float:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17096
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17097
Lj17096:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17097:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17094
	jmp	Lj17095
Lj17094:
	jmp	Lj17092
Lj17095:
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-268(%ebp),%eax
	pushl	%eax
	pushl	$255
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_STR_REAL$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING
	leal	-268(%ebp),%ecx
	movl	20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR
Lj17092:
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	fpc_write_text_float_iso
fpc_write_text_float_iso:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17120
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17121
Lj17120:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17121:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17118
	jmp	Lj17119
Lj17118:
	jmp	Lj17116
Lj17119:
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-268(%ebp),%eax
	pushl	%eax
	pushl	$255
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_STR_REAL_ISO$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING
	leal	-268(%ebp),%ecx
	movl	20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR
Lj17116:
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	fpc_write_text_enum
fpc_write_text_enum:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%ebx,-272(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	12(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jne	Lj17142
	jmp	Lj17143
Lj17142:
	movl	12(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	je	Lj17144
	jmp	Lj17145
Lj17144:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17148
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17149
Lj17148:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17149:
	movw	$105,(%eax)
	jmp	Lj17150
Lj17145:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17153
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17154
Lj17153:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17154:
	movw	$103,(%eax)
Lj17150:
	jmp	Lj17140
Lj17143:
	pushl	-8(%ebp)
	leal	-268(%ebp),%eax
	pushl	%eax
	pushl	$255
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	call	SYSTEM_FPC_SHORTSTR_ENUM_INTERN$LONGINT$LONGINT$POINTER$POINTER$OPENSTRING$$LONGINT
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17169
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17170
Lj17169:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17170:
	movw	%bx,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17173
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17174
Lj17173:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17174:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17171
	jmp	Lj17172
Lj17171:
	jmp	Lj17140
Lj17172:
	movzbl	-268(%ebp),%ecx
	leal	-267(%ebp),%edx
	movl	12(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
Lj17140:
	movl	-272(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_write_text_currency
fpc_write_text_currency:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17185
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17186
Lj17185:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17186:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17183
	jmp	Lj17184
Lj17183:
	jmp	Lj17181
Lj17184:
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_shortstr_currency
	leal	-268(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR
Lj17181:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_write_text_boolean
fpc_write_text_boolean:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17207
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17208
Lj17207:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17208:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17205
	jmp	Lj17206
Lj17205:
	jmp	Lj17203
Lj17206:
	cmpb	$0,-12(%ebp)
	jne	Lj17209
	jmp	Lj17210
Lj17209:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$_$SYSTEM$_Ld19,%ecx
	call	FPC_WRITE_TEXT_SHORTSTR
	jmp	Lj17217
Lj17210:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$_$SYSTEM$_Ld20,%ecx
	call	FPC_WRITE_TEXT_SHORTSTR
Lj17217:
Lj17203:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_boolean_iso
fpc_write_text_boolean_iso:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17228
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17229
Lj17228:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17229:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17226
	jmp	Lj17227
Lj17226:
	jmp	Lj17224
Lj17227:
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj17230
	jmp	Lj17231
Lj17230:
	movl	$5,-4(%ebp)
Lj17231:
	cmpb	$0,-12(%ebp)
	jne	Lj17234
	jmp	Lj17235
Lj17234:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$_$SYSTEM$_Ld39,%ecx
	call	FPC_WRITE_TEXT_SHORTSTR_ISO
	jmp	Lj17242
Lj17235:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$_$SYSTEM$_Ld40,%ecx
	call	FPC_WRITE_TEXT_SHORTSTR_ISO
Lj17242:
Lj17224:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_char
fpc_write_text_char:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17253
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17254
Lj17253:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17254:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17251
	jmp	Lj17252
Lj17251:
	jmp	Lj17249
Lj17252:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jne	Lj17255
	jmp	Lj17256
Lj17255:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	je	Lj17257
	jmp	Lj17258
Lj17257:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17261
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17262
Lj17261:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17262:
	movw	$103,(%eax)
	jmp	Lj17263
Lj17258:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17266
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17267
Lj17266:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17267:
	movw	$105,(%eax)
Lj17263:
	jmp	Lj17249
Lj17256:
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj17268
	jmp	Lj17269
Lj17268:
	movl	-4(%ebp),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj17269:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	8(%edx),%eax
	jge	Lj17274
	jmp	Lj17275
Lj17274:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
Lj17275:
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movb	-12(%ebp),%cl
	movb	%cl,(%edx,%eax,1)
	movl	-8(%ebp),%eax
	incl	16(%eax)
Lj17249:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_char_iso
fpc_write_text_char_iso:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17284
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17285
Lj17284:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17285:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17282
	jmp	Lj17283
Lj17282:
	jmp	Lj17280
Lj17283:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jne	Lj17286
	jmp	Lj17287
Lj17286:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	je	Lj17288
	jmp	Lj17289
Lj17288:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17292
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17293
Lj17292:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17293:
	movw	$103,(%eax)
	jmp	Lj17294
Lj17289:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17297
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17298
Lj17297:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17298:
	movw	$105,(%eax)
Lj17294:
	jmp	Lj17280
Lj17287:
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj17299
	jmp	Lj17300
Lj17299:
	movl	$1,-4(%ebp)
Lj17300:
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj17303
	jmp	Lj17304
Lj17303:
	movl	-4(%ebp),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
	jmp	Lj17309
Lj17304:
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj17310
	jmp	Lj17311
Lj17310:
	jmp	Lj17280
Lj17311:
Lj17309:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	8(%edx),%eax
	jge	Lj17312
	jmp	Lj17313
Lj17312:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
Lj17313:
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movb	-12(%ebp),%cl
	movb	%cl,(%edx,%eax,1)
	movl	-8(%ebp),%eax
	incl	16(%eax)
Lj17280:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_widechar
fpc_write_text_widechar:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj17320
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17325
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17326
Lj17325:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17326:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17323
	jmp	Lj17324
Lj17323:
	jmp	Lj17320
Lj17324:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jne	Lj17327
	jmp	Lj17328
Lj17327:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	je	Lj17329
	jmp	Lj17330
Lj17329:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17333
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17334
Lj17333:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17334:
	movw	$103,(%eax)
	jmp	Lj17335
Lj17330:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17338
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17339
Lj17338:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17339:
	movw	$105,(%eax)
Lj17335:
	jmp	Lj17320
Lj17328:
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj17340
	jmp	Lj17341
Lj17340:
	movl	-4(%ebp),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj17341:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	8(%edx),%eax
	jge	Lj17346
	jmp	Lj17347
Lj17346:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
Lj17347:
	leal	-16(%ebp),%edx
	movw	-12(%ebp),%ax
	call	fpc_uchar_to_ansistr
	movl	-16(%ebp),%edx
	testl	%edx,%edx
	jne	Lj17356
	movl	$FPC_EMPTYCHAR,%edx
Lj17356:
	movl	-16(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj17359
	movl	-4(%ecx),%ecx
Lj17359:
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
Lj17320:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj17321
	call	FPC_RERAISE
Lj17321:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jl	Lj17372
	jmp	Lj17373
Lj17372:
	movb	TC_SYSTEM_CTRLZMARKSEOF,%al
	testb	%al,%al
	je	Lj17374
	jmp	Lj17376
Lj17376:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	jne	Lj17374
	jmp	Lj17375
Lj17374:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj17377
	jmp	Lj17378
Lj17377:
	movl	-8(%ebp),%eax
	incb	(%eax)
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	24(%eax),%ebx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%ebx,%eax,1),%al
	movb	%al,(%edx,%ecx,1)
Lj17378:
	movl	-4(%ebp),%eax
	incl	16(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17381
	jmp	Lj17382
Lj17381:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
Lj17382:
	movb	$1,-13(%ebp)
Lj17375:
Lj17373:
	movb	-13(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_IGNORESPACES$TEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$261,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-261(%ebp)
	movb	$0,-5(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17393
	jmp	Lj17394
Lj17393:
	jmp	Lj17387
Lj17394:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj17397
	jmp	Lj17396
Lj17397:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj17395
	jmp	Lj17396
Lj17395:
	jmp	Lj17387
Lj17396:
	jmp	Lj17399
	.balign 4,0x90
Lj17398:
	leal	-261(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
	testb	%al,%al
	je	Lj17401
	jmp	Lj17402
Lj17401:
	jmp	Lj17387
Lj17402:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17409
	jmp	Lj17410
Lj17409:
	jmp	Lj17400
Lj17410:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj17413
	jmp	Lj17412
Lj17413:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj17411
	jmp	Lj17412
Lj17411:
	jmp	Lj17400
Lj17412:
Lj17399:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$32,%al
	jbe	Lj17398
	jmp	Lj17400
Lj17400:
	movb	$1,-5(%ebp)
Lj17387:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_READNUMERIC$TEXT$OPENSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	.balign 4,0x90
Lj17418:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
	testb	%al,%al
	je	Lj17421
	jmp	Lj17422
Lj17421:
	jmp	Lj17416
Lj17422:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj17420
	jmp	Lj17429
Lj17429:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$32,%al
	jbe	Lj17420
	jmp	Lj17418
Lj17420:
Lj17416:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_CHECKREAD$TEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17436
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17437
Lj17436:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17437:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17434
	jmp	Lj17435
Lj17434:
	jmp	Lj17430
Lj17435:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jne	Lj17438
	jmp	Lj17439
Lj17438:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jl	Lj17441
	subl	$55218,%eax
	je	Lj17442
	subl	$2,%eax
	je	Lj17442
	jmp	Lj17441
Lj17442:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17445
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17446
Lj17445:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17446:
	movw	$104,(%eax)
	jmp	Lj17440
Lj17441:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17449
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17450
Lj17449:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17450:
	movw	$103,(%eax)
Lj17440:
	jmp	Lj17430
Lj17439:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17451
	jmp	Lj17452
Lj17451:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
Lj17452:
	movb	$1,-5(%ebp)
Lj17430:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_read_end
fpc_read_end:
.globl	FPC_READ_END
FPC_READ_END:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	jne	Lj17459
	jmp	Lj17460
Lj17459:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	36(%edx),%edx
	call	*%edx
Lj17460:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_readln_end
fpc_readln_end:
.globl	FPC_READLN_END
FPC_READLN_END:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj17465
	jmp	Lj17466
Lj17465:
	jmp	Lj17463
Lj17466:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17469
	jmp	Lj17470
Lj17469:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	jne	Lj17471
	jmp	Lj17472
Lj17471:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	36(%edx),%edx
	call	*%edx
Lj17472:
	jmp	Lj17463
Lj17470:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj17477
	jmp	Lj17476
Lj17477:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj17475
	jmp	Lj17476
Lj17475:
	jmp	Lj17463
Lj17476:
	.balign 4,0x90
Lj17478:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-5(%ebp)
	movl	-4(%ebp),%eax
	incl	16(%eax)
	movb	-5(%ebp),%al
	cmpb	$10,%al
	je	Lj17483
	jmp	Lj17484
Lj17483:
	jmp	Lj17463
Lj17484:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17485
	jmp	Lj17486
Lj17485:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17489
	jmp	Lj17490
Lj17489:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	jne	Lj17491
	jmp	Lj17492
Lj17491:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	36(%edx),%edx
	call	*%edx
Lj17492:
	jmp	Lj17463
Lj17490:
Lj17486:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj17497
	jmp	Lj17496
Lj17497:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj17495
	jmp	Lj17496
Lj17495:
	jmp	Lj17463
Lj17496:
	movb	-5(%ebp),%al
	cmpb	$13,%al
	je	Lj17498
	jmp	Lj17499
Lj17498:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$10,%al
	je	Lj17500
	jmp	Lj17501
Lj17500:
	movl	-4(%ebp),%eax
	incl	16(%eax)
Lj17501:
	jmp	Lj17463
Lj17499:
	jmp	Lj17478
Lj17463:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_readln_end_iso
fpc_readln_end_iso:
.globl	FPC_READLN_END_ISO
FPC_READLN_END_ISO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj17504
	jmp	Lj17505
Lj17504:
	jmp	Lj17502
Lj17505:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17508
	jmp	Lj17509
Lj17508:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	jne	Lj17510
	jmp	Lj17511
Lj17510:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	36(%edx),%edx
	call	*%edx
Lj17511:
	jmp	Lj17502
Lj17509:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj17514
	jmp	Lj17515
Lj17514:
	movl	-4(%ebp),%eax
	incl	16(%eax)
	jmp	Lj17502
Lj17515:
	.balign 4,0x90
Lj17516:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-5(%ebp)
	movl	-4(%ebp),%eax
	incl	16(%eax)
	movb	-5(%ebp),%al
	cmpb	$10,%al
	je	Lj17521
	jmp	Lj17522
Lj17521:
	jmp	Lj17502
Lj17522:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17523
	jmp	Lj17524
Lj17523:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17527
	jmp	Lj17528
Lj17527:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	jne	Lj17529
	jmp	Lj17530
Lj17529:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	36(%edx),%edx
	call	*%edx
Lj17530:
	jmp	Lj17502
Lj17528:
Lj17524:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj17533
	jmp	Lj17534
Lj17533:
	movl	-4(%ebp),%eax
	incl	16(%eax)
	jmp	Lj17502
Lj17534:
	movb	-5(%ebp),%al
	cmpb	$13,%al
	je	Lj17535
	jmp	Lj17536
Lj17535:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$10,%al
	je	Lj17537
	jmp	Lj17538
Lj17537:
	movl	-4(%ebp),%eax
	incl	16(%eax)
Lj17538:
	jmp	Lj17502
Lj17536:
	jmp	Lj17516
Lj17502:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$37,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj17543
	jmp	Lj17544
Lj17543:
	jmp	Lj17539
Lj17544:
	movl	$0,-20(%ebp)
	movb	$0,-37(%ebp)
	.balign 4,0x90
Lj17551:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17554
	jmp	Lj17555
Lj17554:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17558
	jmp	Lj17559
Lj17558:
	jmp	Lj17553
Lj17559:
Lj17555:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	leal	(%edx,%eax,1),%eax
	movl	%eax,-28(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	20(%eax),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	subl	%eax,%edx
	cmpl	-12(%ebp),%edx
	jg	Lj17562
	jmp	Lj17563
Lj17562:
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	leal	(%ecx,%eax,1),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj17566
Lj17563:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	leal	(%edx,%eax,1),%eax
	movl	%eax,-36(%ebp)
Lj17566:
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
	jmp	Lj17572
	.balign 4,0x90
Lj17571:
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	cmpb	$32,%al
	jb	Lj17574
	jmp	Lj17575
Lj17574:
	movl	-28(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$10,%eax
	je	Lj17579
	cmpl	$13,%eax
	je	Lj17579
Lj17579:
	je	Lj17576
	jmp	Lj17578
Lj17578:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj17580
	jmp	Lj17577
Lj17580:
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	cmpb	$26,%al
	je	Lj17576
	jmp	Lj17577
Lj17576:
	movb	$1,-37(%ebp)
	jmp	Lj17573
Lj17577:
Lj17575:
	incl	-28(%ebp)
Lj17572:
	movl	-28(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jb	Lj17571
	jmp	Lj17573
Lj17573:
	movl	-28(%ebp),%edx
	movl	-32(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	addl	%edx,16(%eax)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,1),%edx
	movl	-32(%ebp),%eax
	movl	-24(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-24(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-12(%ebp),%eax
	je	Lj17553
	jmp	Lj17591
Lj17591:
	cmpb	$0,-37(%ebp)
	jne	Lj17553
	jmp	Lj17551
Lj17553:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj17539:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_shortstr
fpc_read_text_shortstr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	leal	1(%eax),%edx
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT
	movl	-8(%ebp),%edx
	movb	%al,(%edx)
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_pchar_as_pointer
fpc_read_text_pchar_as_pointer:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2147483647,%ecx
	call	SYSTEM_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT
	movl	-8(%ebp),%edx
	addl	%eax,%edx
	movb	$0,(%edx)
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_pchar_as_array
fpc_read_text_pchar_as_array:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%ecx
	incl	%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT
	movl	%eax,-16(%ebp)
	cmpb	$0,8(%ebp)
	jne	Lj17626
	jmp	Lj17625
Lj17626:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj17624
	jmp	Lj17625
Lj17624:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj17625:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jle	Lj17629
	jmp	Lj17630
Lj17629:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	$0,(%eax,%edx,1)
Lj17630:
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_read_text_ansistr
fpc_read_text_ansistr:
.globl	FPC_READ_TEXT_ANSISTR
FPC_READ_TEXT_ANSISTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-12(%ebp)
	.balign 4,0x90
Lj17637:
	movl	-12(%ebp),%edx
	addl	$255,%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	addl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$255,%eax
	jl	Lj17639
	jmp	Lj17637
Lj17639:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_unicodestr
fpc_read_text_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-12(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj17658
	leal	-12(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_READ_TEXT_ANSISTR
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_to_unicodestr
	movl	-56(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-56(%ebp),%eax
	movl	%eax,(%ebx)
Lj17658:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-12(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj17659
	call	FPC_RERAISE
Lj17659:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_char
fpc_read_text_char:
.globl	FPC_READ_TEXT_CHAR
FPC_READ_TEXT_CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj17681
	jmp	Lj17682
Lj17681:
	jmp	Lj17677
Lj17682:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17685
	jmp	Lj17686
Lj17685:
	movl	-8(%ebp),%eax
	movb	$26,(%eax)
	jmp	Lj17677
Lj17686:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%ecx
	movb	(%edx,%eax,1),%al
	movb	%al,(%ecx)
	movl	-4(%ebp),%eax
	incl	16(%eax)
Lj17677:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_widechar
fpc_read_text_widechar:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj17693
	leal	-22(%ebp),%eax
	movb	$0,%cl
	movl	$6,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.balign 4,0x90
Lj17704:
	incl	-16(%ebp)
	movl	-16(%ebp),%eax
	leal	-22(%ebp,%eax,1),%edx
	movl	-4(%ebp),%eax
	call	FPC_READ_TEXT_CHAR
	leal	-22(%ebp),%eax
	movl	-16(%ebp),%edx
	incl	%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+28,%ecx
	call	*%ecx
	cmpl	$-1,%eax
	je	Lj17711
	testl	%eax,%eax
	je	Lj17712
	jmp	Lj17710
Lj17711:
	jmp	Lj17709
Lj17712:
	movl	-8(%ebp),%eax
	movw	$0,(%eax)
	jmp	Lj17693
	jmp	Lj17709
Lj17710:
	movl	-16(%ebp),%eax
	incl	%eax
	pushl	%eax
	leal	-22(%ebp),%eax
	leal	-12(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+4,%ebx
	call	*%ebx
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj17729
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj17729:
	cmpl	$1,%eax
	je	Lj17727
	jmp	Lj17728
Lj17727:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,(%edx)
	jmp	Lj17693
	jmp	Lj17732
Lj17728:
	jmp	Lj17703
Lj17732:
Lj17709:
	cmpl	$5,-16(%ebp)
	jl	Lj17704
Lj17703:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17735
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17736
Lj17735:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17736:
	movw	$106,(%eax)
Lj17693:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj17694
	call	FPC_RERAISE
Lj17694:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_char_iso
fpc_read_text_char_iso:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movb	$32,(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj17747
	jmp	Lj17748
Lj17747:
	jmp	Lj17743
Lj17748:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17751
	jmp	Lj17752
Lj17751:
	movl	-8(%ebp),%eax
	movb	$32,(%eax)
	jmp	Lj17743
Lj17752:
	movl	-4(%ebp),%eax
	movl	24(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%edx
	movb	(%ecx,%eax,1),%al
	movb	%al,(%edx)
	movl	-4(%ebp),%eax
	incl	16(%eax)
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	cmpb	$13,%al
	je	Lj17757
	jmp	Lj17758
Lj17757:
	movl	-8(%ebp),%eax
	movb	$32,(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj17761
	jmp	Lj17763
Lj17763:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17761
	jmp	Lj17762
Lj17761:
	jmp	Lj17743
Lj17762:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$10,%al
	je	Lj17766
	jmp	Lj17767
Lj17766:
	movl	-4(%ebp),%eax
	incl	16(%eax)
Lj17767:
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj17768
	jmp	Lj17770
Lj17770:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17768
	jmp	Lj17769
Lj17768:
	jmp	Lj17743
Lj17769:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj17773
	jmp	Lj17774
Lj17773:
	movl	-4(%ebp),%eax
	incl	16(%eax)
Lj17774:
	jmp	Lj17775
Lj17758:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	cmpb	$10,%al
	je	Lj17776
	jmp	Lj17777
Lj17776:
	movl	-8(%ebp),%eax
	movb	$32,(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj17780
	jmp	Lj17782
Lj17782:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17780
	jmp	Lj17781
Lj17780:
	jmp	Lj17743
Lj17781:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj17785
	jmp	Lj17786
Lj17785:
	movl	-4(%ebp),%eax
	incl	16(%eax)
Lj17786:
	jmp	Lj17787
Lj17777:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	cmpb	$26,%al
	je	Lj17788
	jmp	Lj17789
Lj17788:
	movl	-8(%ebp),%eax
	movb	$32,(%eax)
Lj17789:
Lj17787:
Lj17775:
Lj17743:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_sint
fpc_read_text_sint:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj17796
	jmp	Lj17797
Lj17796:
	jmp	Lj17792
Lj17797:
	movb	$0,-264(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	jne	Lj17802
	jmp	Lj17803
Lj17802:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17806
	jmp	Lj17807
Lj17806:
	jmp	Lj17792
Lj17807:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj17810
	jmp	Lj17809
Lj17810:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj17808
	jmp	Lj17809
Lj17808:
	jmp	Lj17792
Lj17809:
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj17803:
	movzbl	-264(%ebp),%eax
	testl	%eax,%eax
	je	Lj17817
	jmp	Lj17818
Lj17817:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj17821
Lj17818:
	leal	-268(%ebp),%ecx
	leal	-264(%ebp),%edx
	movl	$4,%eax
	call	fpc_val_sint_shortstr
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-268(%ebp),%eax
	testl	%eax,%eax
	jne	Lj17830
	jmp	Lj17831
Lj17830:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17834
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17835
Lj17834:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17835:
	movw	$106,(%eax)
Lj17831:
Lj17821:
Lj17792:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_uint
fpc_read_text_uint:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj17840
	jmp	Lj17841
Lj17840:
	jmp	Lj17836
Lj17841:
	movb	$0,-264(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	jne	Lj17846
	jmp	Lj17847
Lj17846:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17850
	jmp	Lj17851
Lj17850:
	jmp	Lj17836
Lj17851:
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj17847:
	movzbl	-264(%ebp),%eax
	testl	%eax,%eax
	je	Lj17858
	jmp	Lj17859
Lj17858:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj17862
Lj17859:
	leal	-268(%ebp),%edx
	leal	-264(%ebp),%eax
	call	fpc_val_uint_shortstr
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-268(%ebp),%eax
	testl	%eax,%eax
	jne	Lj17869
	jmp	Lj17870
Lj17869:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17873
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17874
Lj17873:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17874:
	movw	$106,(%eax)
Lj17870:
Lj17862:
Lj17836:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_float
fpc_read_text_float:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	fldz
	fstpt	(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj17879
	jmp	Lj17880
Lj17879:
	jmp	Lj17875
Lj17880:
	movb	$0,-264(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	jne	Lj17885
	jmp	Lj17886
Lj17885:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17889
	jmp	Lj17890
Lj17889:
	jmp	Lj17875
Lj17890:
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj17886:
	leal	-272(%ebp),%edx
	leal	-264(%ebp),%eax
	call	fpc_val_real_shortstr
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movw	-272(%ebp),%ax
	movw	%ax,-266(%ebp)
	movzwl	-266(%ebp),%eax
	testl	%eax,%eax
	jne	Lj17905
	jmp	Lj17906
Lj17905:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17909
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17910
Lj17909:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17910:
	movw	$106,(%eax)
Lj17906:
Lj17875:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_enum
fpc_read_text_enum:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj17913
	jmp	Lj17914
Lj17913:
	jmp	Lj17911
Lj17914:
	movb	$0,-268(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	jne	Lj17919
	jmp	Lj17920
Lj17919:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17923
	jmp	Lj17924
Lj17923:
	jmp	Lj17911
Lj17924:
	leal	-268(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj17920:
	leal	-272(%ebp),%ecx
	leal	-268(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_VAL_ENUM_SHORTSTR
	movl	-12(%ebp),%edx
	movl	%eax,(%edx)
	movl	-272(%ebp),%eax
	testl	%eax,%eax
	jne	Lj17939
	jmp	Lj17940
Lj17939:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17943
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17944
Lj17943:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17944:
	movw	$106,(%eax)
Lj17940:
Lj17911:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_currency
fpc_read_text_currency:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	fldz
	fistpq	(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj17949
	jmp	Lj17950
Lj17949:
	jmp	Lj17945
Lj17950:
	movb	$0,-264(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	jne	Lj17955
	jmp	Lj17956
Lj17955:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17959
	jmp	Lj17960
Lj17959:
	jmp	Lj17945
Lj17960:
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj17956:
	leal	-272(%ebp),%edx
	leal	-264(%ebp),%eax
	call	fpc_val_real_shortstr
	fldt	_$SYSTEM$_Ld22
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fistpq	(%eax)
	movw	-272(%ebp),%ax
	movw	%ax,-266(%ebp)
	movzwl	-266(%ebp),%eax
	testl	%eax,%eax
	jne	Lj17975
	jmp	Lj17976
Lj17975:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17979
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17980
Lj17979:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17980:
	movw	$106,(%eax)
Lj17976:
Lj17945:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_qword
fpc_read_text_qword:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj17985
	jmp	Lj17986
Lj17985:
	jmp	Lj17981
Lj17986:
	movb	$0,-264(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	jne	Lj17991
	jmp	Lj17992
Lj17991:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17995
	jmp	Lj17996
Lj17995:
	jmp	Lj17981
Lj17996:
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj17992:
	leal	-268(%ebp),%edx
	leal	-264(%ebp),%eax
	call	fpc_val_qword_shortstr
	movl	-8(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	movl	-268(%ebp),%eax
	testl	%eax,%eax
	jne	Lj18009
	jmp	Lj18010
Lj18009:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18013
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18014
Lj18013:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18014:
	movw	$106,(%eax)
Lj18010:
Lj17981:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_int64
fpc_read_text_int64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,4(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18019
	jmp	Lj18020
Lj18019:
	jmp	Lj18015
Lj18020:
	movb	$0,-264(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	jne	Lj18025
	jmp	Lj18026
Lj18025:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj18029
	jmp	Lj18030
Lj18029:
	jmp	Lj18015
Lj18030:
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj18026:
	leal	-268(%ebp),%edx
	leal	-264(%ebp),%eax
	call	fpc_val_int64_shortstr
	movl	-8(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	movl	-268(%ebp),%eax
	testl	%eax,%eax
	jne	Lj18043
	jmp	Lj18044
Lj18043:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18047
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18048
Lj18047:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18048:
	movw	$106,(%eax)
Lj18044:
Lj18015:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_WRITESTRSHORT$TEXTREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj18051
	jmp	Lj18052
Lj18051:
	jmp	Lj18049
Lj18052:
	movl	-4(%ebp),%eax
	leal	44(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	16(%eax),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	movzbl	60(%eax),%eax
	cmpl	%eax,%edx
	jg	Lj18059
	jmp	Lj18060
Lj18059:
	movl	-4(%ebp),%eax
	movzbl	60(%eax),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
Lj18060:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-12(%ebp),%eax
	addl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	movzbl	%al,%eax
	leal	(%edx,%eax,1),%edx
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-12(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
Lj18049:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_WRITESTRANSI$TEXTREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj18079
	jmp	Lj18080
Lj18079:
	jmp	Lj18077
Lj18080:
	movl	-4(%ebp),%eax
	leal	44(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj18085
	movl	-4(%eax),%eax
Lj18085:
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	16(%eax),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-12(%ebp),%edx
	incl	%edx
	leal	-1(%eax,%edx,1),%edx
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	16(%ecx),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
Lj18077:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_WRITESTRUNICODE$TEXTREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj18102
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj18105
	jmp	Lj18106
Lj18105:
	jmp	Lj18102
Lj18106:
	movl	-4(%ebp),%eax
	leal	44(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	leal	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	leal	-8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	16(%ecx),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_to_unicodestr
	movl	-56(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	fpc_unicodestr_concat
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
Lj18102:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-8(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-8(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj18103
	call	FPC_RERAISE
Lj18103:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SETUPWRITESTRCOMMON$TEXTREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$_$SYSTEM$_Ld1,%edx
	call	SYSTEM_ASSIGN$TEXT$SHORTSTRING
	movl	-4(%ebp),%eax
	movl	$55218,4(%eax)
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	movl	-4(%ebp),%eax
	movl	$0,40(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_setupwritestr_shortstr
fpc_setupwritestr_shortstr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18155
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18156
Lj18155:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18156:
	call	SYSTEM_SETUPWRITESTRCOMMON$TEXTREC
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18159
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18160
Lj18159:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18160:
	leal	44(%eax),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18163
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18164
Lj18163:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18164:
	movb	-8(%ebp),%dl
	movb	%dl,60(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	fpc_shortstr_setlength
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18173
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18174
Lj18173:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18174:
	movl	$SYSTEM_WRITESTRSHORT$TEXTREC,%edx
	movl	%edx,32(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18177
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18178
Lj18177:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18178:
	movl	$SYSTEM_WRITESTRSHORT$TEXTREC,%edx
	movl	%edx,36(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18181
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18182
Lj18181:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18182:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_setupwritestr_ansistr
fpc_setupwritestr_ansistr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18187
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18188
Lj18187:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18188:
	call	SYSTEM_SETUPWRITESTRCOMMON$TEXTREC
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18191
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18192
Lj18191:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18192:
	leal	44(%eax),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18195
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18196
Lj18195:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18196:
	movl	$SYSTEM_WRITESTRANSI$TEXTREC,%edx
	movl	%edx,32(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18199
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18200
Lj18199:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18200:
	movl	$SYSTEM_WRITESTRANSI$TEXTREC,%edx
	movl	%edx,36(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18203
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18204
Lj18203:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18204:
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_setupwritestr_unicodestr
fpc_setupwritestr_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18209
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18210
Lj18209:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18210:
	call	SYSTEM_SETUPWRITESTRCOMMON$TEXTREC
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18213
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18214
Lj18213:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18214:
	leal	44(%eax),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18217
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18218
Lj18217:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18218:
	movl	$SYSTEM_WRITESTRUNICODE$TEXTREC,%edx
	movl	%edx,32(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18221
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18222
Lj18221:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18222:
	movl	$SYSTEM_WRITESTRUNICODE$TEXTREC,%edx
	movl	%edx,36(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18225
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18226
Lj18225:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18226:
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_READANSISTRFINAL$TEXTREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	44(%eax),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_READSTRCOMMON$TEXTREC$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	leal	60(%eax),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj18235
	jmp	Lj18236
Lj18235:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
Lj18236:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj18239
	jmp	Lj18240
Lj18239:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	leal	60(%eax),%eax
	movl	(%eax),%eax
	leal	(%edx,%eax,1),%eax
	movl	-4(%ebp),%edx
	movl	24(%edx),%edx
	movl	-16(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	leal	60(%eax),%eax
	movl	-16(%ebp),%edx
	addl	%edx,(%eax)
Lj18240:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_READSTRANSI$TEXTREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	44(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj18259
	movl	-4(%ecx),%ecx
Lj18259:
	movl	-4(%ebp),%eax
	call	SYSTEM_READSTRCOMMON$TEXTREC$PCHAR$LONGINT
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SETUPREADSTRCOMMON$TEXTREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$_$SYSTEM$_Ld1,%edx
	call	SYSTEM_ASSIGN$TEXT$SHORTSTRING
	movl	-4(%ebp),%eax
	movl	$55217,4(%eax)
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	movl	-4(%ebp),%eax
	movl	$0,40(%eax)
	movl	-4(%ebp),%eax
	leal	60(%eax),%eax
	movl	$0,(%eax)
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_setupreadstr_ansistr
fpc_setupreadstr_ansistr:
.globl	FPC_SETUPREADSTR_ANSISTR
FPC_SETUPREADSTR_ANSISTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18280
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18281
Lj18280:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18281:
	call	SYSTEM_SETUPREADSTRCOMMON$TEXTREC
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18284
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18285
Lj18284:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18285:
	leal	44(%eax),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18288
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18289
Lj18288:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18289:
	movl	$SYSTEM_READSTRANSI$TEXTREC,%edx
	movl	%edx,32(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18292
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18293
Lj18292:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18293:
	movl	$SYSTEM_READANSISTRFINAL$TEXTREC,%edx
	movl	%edx,36(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18296
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18297
Lj18296:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18297:
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_setupreadstr_shortstr
fpc_setupreadstr_shortstr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj18300
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-52(%ebp),%eax
	call	FPC_SETUPREADSTR_ANSISTR
	movl	%eax,-8(%ebp)
Lj18300:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj18301
	call	FPC_RERAISE
Lj18301:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_setupreadstr_unicodestr
fpc_setupreadstr_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj18313
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_to_ansistr
	movl	-52(%ebp),%eax
	call	FPC_SETUPREADSTR_ANSISTR
	movl	%eax,-8(%ebp)
Lj18313:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj18314
	call	FPC_RERAISE
Lj18314:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_OPENSTDIO$TEXT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	$_$SYSTEM$_Ld1,%edx
	call	SYSTEM_ASSIGN$TEXT$SHORTSTRING
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,(%edx)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,4(%edx)
	movl	$SYSTEM_FILECLOSEFUNC$TEXTREC,%eax
	movl	-4(%ebp),%edx
	movl	%eax,40(%edx)
	movl	-8(%ebp),%eax
	cmpl	$55217,%eax
	jl	Lj18337
	subl	$55217,%eax
	je	Lj18338
	decl	%eax
	je	Lj18339
	jmp	Lj18337
Lj18338:
	movl	$SYSTEM_FILEREADFUNC$TEXTREC,%eax
	movl	-4(%ebp),%edx
	movl	%eax,32(%edx)
	jmp	Lj18336
Lj18339:
	movl	$SYSTEM_FILEWRITEFUNC$TEXTREC,%eax
	movl	-4(%ebp),%edx
	movl	%eax,32(%edx)
	movl	-12(%ebp),%eax
	call	SYSTEM_DO_ISDEVICE$LONGINT$$BOOLEAN
	testb	%al,%al
	jne	Lj18344
	jmp	Lj18345
Lj18344:
	movl	$SYSTEM_FILEWRITEFUNC$TEXTREC,%eax
	movl	-4(%ebp),%edx
	movl	%eax,36(%edx)
Lj18345:
	jmp	Lj18336
Lj18337:
	movl	$102,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj18336:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ASSIGN$file$SHORTSTRING
SYSTEM_ASSIGN$file$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$332,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-4(%ebp),%eax
	movl	$-1,(%eax)
	movl	-4(%ebp),%eax
	movl	$55216,4(%eax)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-4(%ebp),%eax
	leal	76(%eax),%edx
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ASSIGN$file$PCHAR
SYSTEM_ASSIGN$file$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	FPC_PCHAR_TO_SHORTSTR
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ASSIGN$file$SHORTSTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ASSIGN$file$CHAR
SYSTEM_ASSIGN$file$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movzbl	-8(%ebp),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-264(%ebp)
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ASSIGN$file$SHORTSTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_REWRITE$file$LONGINT
SYSTEM_REWRITE$file$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18392
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18393
Lj18392:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18393:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18390
	jmp	Lj18391
Lj18390:
	jmp	Lj18388
Lj18391:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	jl	Lj18395
	subl	$55216,%eax
	je	Lj18397
	decl	%eax
	je	Lj18396
	decl	%eax
	jl	Lj18395
	subl	$1,%eax
	jle	Lj18396
	jmp	Lj18395
Lj18396:
	movl	-4(%ebp),%eax
	call	SYSTEM_CLOSE$file
	jmp	Lj18394
Lj18397:
	jmp	Lj18394
Lj18395:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18402
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18403
Lj18402:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18403:
	movw	$102,(%eax)
	jmp	Lj18388
Lj18394:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj18404
	jmp	Lj18405
Lj18404:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18408
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18409
Lj18408:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18409:
	movw	$2,(%eax)
	jmp	Lj18410
Lj18405:
	movl	-4(%ebp),%eax
	leal	76(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$4098,%ecx
	call	SYSTEM_DO_OPEN$formal$PCHAR$LONGINT
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,8(%eax)
Lj18410:
Lj18388:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RESET$file$LONGINT
SYSTEM_RESET$file$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18423
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18424
Lj18423:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18424:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18421
	jmp	Lj18422
Lj18421:
	jmp	Lj18419
Lj18422:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	jl	Lj18426
	subl	$55216,%eax
	je	Lj18428
	decl	%eax
	je	Lj18427
	decl	%eax
	jl	Lj18426
	subl	$1,%eax
	jle	Lj18427
	jmp	Lj18426
Lj18427:
	movl	-4(%ebp),%eax
	call	SYSTEM_CLOSE$file
	jmp	Lj18425
Lj18428:
	jmp	Lj18425
Lj18426:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18433
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18434
Lj18433:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18434:
	movw	$102,(%eax)
	jmp	Lj18419
Lj18425:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj18435
	jmp	Lj18436
Lj18435:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18439
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18440
Lj18439:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18440:
	movw	$2,(%eax)
	jmp	Lj18441
Lj18436:
	movl	-4(%ebp),%eax
	leal	76(%eax),%edx
	movzbl	TC_SYSTEM_FILEMODE,%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_DO_OPEN$formal$PCHAR$LONGINT
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,8(%eax)
Lj18441:
Lj18419:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_REWRITE$file
SYSTEM_REWRITE$file:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18454
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18455
Lj18454:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18455:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18452
	jmp	Lj18453
Lj18452:
	jmp	Lj18450
Lj18453:
	movl	-4(%ebp),%eax
	movl	$128,%edx
	call	SYSTEM_REWRITE$file$LONGINT
Lj18450:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RESET$file
SYSTEM_RESET$file:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18464
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18465
Lj18464:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18465:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18462
	jmp	Lj18463
Lj18462:
	jmp	Lj18460
Lj18463:
	movl	-4(%ebp),%eax
	movl	$128,%edx
	call	SYSTEM_RESET$file$LONGINT
Lj18460:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKWRITE$file$formal$INT64$INT64
SYSTEM_BLOCKWRITE$file$formal$INT64$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,4(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18476
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18477
Lj18476:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18477:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18474
	jmp	Lj18475
Lj18474:
	jmp	Lj18470
Lj18475:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj18479
	subl	$55217,%eax
	je	Lj18481
	decl	%eax
	jl	Lj18479
	subl	$1,%eax
	jle	Lj18480
	jmp	Lj18479
Lj18480:
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_WRITE$LONGINT$POINTER$LONGINT$$LONGINT
	movl	-4(%ebp),%ecx
	cltd
	idivl	8(%ecx)
	movl	%eax,%edx
	sarl	$31,%edx
	movl	-12(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	jmp	Lj18478
Lj18481:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18498
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18499
Lj18498:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18499:
	movw	$105,(%eax)
	jmp	Lj18478
Lj18479:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18502
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18503
Lj18502:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18503:
	movw	$103,(%eax)
Lj18478:
Lj18470:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKWRITE$file$formal$LONGINT$LONGINT
SYSTEM_BLOCKWRITE$file$formal$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_BLOCKWRITE$file$formal$INT64$INT64
	movl	8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,(%edx)
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKWRITE$file$formal$WORD$WORD
SYSTEM_BLOCKWRITE$file$formal$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	-12(%ebp),%edx
	movl	$0,%eax
	pushl	%eax
	pushl	%edx
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_BLOCKWRITE$file$formal$INT64$INT64
	movl	8(%ebp),%eax
	movw	-20(%ebp),%dx
	movw	%dx,(%eax)
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKWRITE$file$formal$LONGWORD$LONGWORD
SYSTEM_BLOCKWRITE$file$formal$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	$0,%eax
	pushl	%eax
	pushl	%edx
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_BLOCKWRITE$file$formal$INT64$INT64
	movl	8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKWRITE$file$formal$WORD$SMALLINT
SYSTEM_BLOCKWRITE$file$formal$WORD$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	-12(%ebp),%edx
	movl	$0,%eax
	pushl	%eax
	pushl	%edx
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_BLOCKWRITE$file$formal$INT64$INT64
	movl	8(%ebp),%eax
	movw	-20(%ebp),%dx
	movw	%dx,(%eax)
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKWRITE$file$formal$LONGINT
SYSTEM_BLOCKWRITE$file$formal$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_BLOCKWRITE$file$formal$INT64$INT64
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18566
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18567
Lj18566:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18567:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj18565
	jmp	Lj18563
Lj18565:
	movl	-12(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	cmpl	-16(%ebp),%eax
	jg	Lj18564
	jl	Lj18563
	cmpl	-20(%ebp),%edx
	ja	Lj18564
	jmp	Lj18563
	jmp	Lj18563
Lj18564:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj18562
	jmp	Lj18563
Lj18562:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18570
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18571
Lj18570:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18571:
	movw	$101,(%eax)
Lj18563:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKREAD$file$formal$INT64$INT64
SYSTEM_BLOCKREAD$file$formal$INT64$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,4(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18578
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18579
Lj18578:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18579:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18576
	jmp	Lj18577
Lj18576:
	jmp	Lj18572
Lj18577:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj18581
	subl	$55217,%eax
	je	Lj18582
	decl	%eax
	je	Lj18583
	decl	%eax
	je	Lj18582
	jmp	Lj18581
Lj18582:
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_READ$LONGINT$POINTER$LONGINT$$LONGINT
	movl	-4(%ebp),%ecx
	cltd
	idivl	8(%ecx)
	movl	%eax,%edx
	sarl	$31,%edx
	movl	-12(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	jmp	Lj18580
Lj18583:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18600
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18601
Lj18600:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18601:
	movw	$104,(%eax)
	jmp	Lj18580
Lj18581:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18604
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18605
Lj18604:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18605:
	movw	$103,(%eax)
Lj18580:
Lj18572:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKREAD$file$formal$LONGINT$LONGINT
SYSTEM_BLOCKREAD$file$formal$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_BLOCKREAD$file$formal$INT64$INT64
	movl	8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,(%edx)
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKREAD$file$formal$WORD$WORD
SYSTEM_BLOCKREAD$file$formal$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	-12(%ebp),%edx
	movl	$0,%eax
	pushl	%eax
	pushl	%edx
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_BLOCKREAD$file$formal$INT64$INT64
	movl	8(%ebp),%eax
	movw	-20(%ebp),%dx
	movw	%dx,(%eax)
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKREAD$file$formal$LONGWORD$LONGWORD
SYSTEM_BLOCKREAD$file$formal$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	$0,%eax
	pushl	%eax
	pushl	%edx
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_BLOCKREAD$file$formal$INT64$INT64
	movl	8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKREAD$file$formal$WORD$SMALLINT
SYSTEM_BLOCKREAD$file$formal$WORD$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	-12(%ebp),%edx
	movl	$0,%eax
	pushl	%eax
	pushl	%edx
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_BLOCKREAD$file$formal$INT64$INT64
	movl	8(%ebp),%eax
	movw	-20(%ebp),%dx
	movw	%dx,(%eax)
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKREAD$file$formal$INT64
SYSTEM_BLOCKREAD$file$formal$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_BLOCKREAD$file$formal$INT64$INT64
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18668
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18669
Lj18668:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18669:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj18667
	jmp	Lj18665
Lj18667:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	12(%ebp),%edx
	jl	Lj18666
	jg	Lj18665
	cmpl	8(%ebp),%eax
	jb	Lj18666
	jmp	Lj18665
	jmp	Lj18665
Lj18666:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jg	Lj18664
	jl	Lj18665
	cmpl	$0,%eax
	ja	Lj18664
	jmp	Lj18665
Lj18664:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18672
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18673
Lj18672:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18673:
	movw	$100,(%eax)
Lj18665:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_FILEPOS$file$$INT64
SYSTEM_FILEPOS$file$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18680
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18681
Lj18680:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18681:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18678
	jmp	Lj18679
Lj18678:
	jmp	Lj18674
Lj18679:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj18683
	subl	$55217,%eax
	je	Lj18684
	decl	%eax
	jl	Lj18683
	subl	$1,%eax
	jle	Lj18684
	jmp	Lj18683
Lj18684:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_FILEPOS$LONGINT$$LONGINT
	movl	-4(%ebp),%ecx
	cltd
	idivl	8(%ecx)
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj18682
Lj18683:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18691
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18692
Lj18691:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18692:
	movw	$103,(%eax)
Lj18682:
Lj18674:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FILESIZE$file$$INT64
SYSTEM_FILESIZE$file$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18699
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18700
Lj18699:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18700:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18697
	jmp	Lj18698
Lj18697:
	jmp	Lj18693
Lj18698:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj18702
	subl	$55217,%eax
	je	Lj18703
	decl	%eax
	jl	Lj18702
	subl	$1,%eax
	jle	Lj18703
	jmp	Lj18702
Lj18703:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$0,%eax
	jg	Lj18704
	jmp	Lj18705
Lj18704:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_FILESIZE$LONGINT$$LONGINT
	movl	-4(%ebp),%ecx
	cltd
	idivl	8(%ecx)
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
Lj18705:
	jmp	Lj18701
Lj18702:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18712
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18713
Lj18712:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18713:
	movw	$103,(%eax)
Lj18701:
Lj18693:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_EOF$file$$BOOLEAN
SYSTEM_EOF$file$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18720
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18721
Lj18720:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18721:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18718
	jmp	Lj18719
Lj18718:
	jmp	Lj18714
Lj18719:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj18723
	subl	$55217,%eax
	je	Lj18724
	decl	%eax
	jl	Lj18723
	subl	$1,%eax
	jle	Lj18724
	jmp	Lj18723
Lj18724:
	movl	-4(%ebp),%eax
	call	SYSTEM_FILESIZE$file$$INT64
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	-4(%ebp),%eax
	call	SYSTEM_FILEPOS$file$$INT64
	cmpl	%edx,%esi
	jl	Lj18725
	jg	Lj18726
	cmpl	%eax,%ebx
	jbe	Lj18725
	jmp	Lj18726
Lj18725:
	movb	$1,-5(%ebp)
	jmp	Lj18731
Lj18726:
	movb	$0,-5(%ebp)
Lj18731:
	jmp	Lj18722
Lj18723:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18734
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18735
Lj18734:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18735:
	movw	$103,(%eax)
Lj18722:
Lj18714:
	movb	-5(%ebp),%al
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SEEK$file$INT64
SYSTEM_SEEK$file$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18740
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18741
Lj18740:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18741:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18738
	jmp	Lj18739
Lj18738:
	jmp	Lj18736
Lj18739:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj18743
	subl	$55217,%eax
	je	Lj18744
	decl	%eax
	jl	Lj18743
	subl	$1,%eax
	jle	Lj18744
	jmp	Lj18743
Lj18744:
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_SEEK$LONGINT$LONGINT
	jmp	Lj18742
Lj18743:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18757
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18758
Lj18757:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18758:
	movw	$103,(%eax)
Lj18742:
Lj18736:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_TRUNCATE$file
SYSTEM_TRUNCATE$file:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18763
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18764
Lj18763:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18764:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18761
	jmp	Lj18762
Lj18761:
	jmp	Lj18759
Lj18762:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jl	Lj18766
	subl	$55218,%eax
	subl	$1,%eax
	jle	Lj18767
	jmp	Lj18766
Lj18767:
	movl	-4(%ebp),%eax
	call	SYSTEM_FILEPOS$file$$INT64
	pushl	%edx
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_TRUNCATE$LONGINT$LONGINT
	jmp	Lj18765
Lj18766:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18782
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18783
Lj18782:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18783:
	movw	$103,(%eax)
Lj18765:
Lj18759:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_CLOSE$file
SYSTEM_CLOSE$file:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18788
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18789
Lj18788:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18789:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18786
	jmp	Lj18787
Lj18786:
	jmp	Lj18784
Lj18787:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj18791
	subl	$55217,%eax
	je	Lj18792
	decl	%eax
	jl	Lj18791
	subl	$1,%eax
	jle	Lj18792
	jmp	Lj18791
Lj18792:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_CLOSE$LONGINT
	movl	-4(%ebp),%eax
	movl	$55216,4(%eax)
	jmp	Lj18790
Lj18791:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18799
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18800
Lj18799:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18800:
	movw	$103,(%eax)
Lj18790:
Lj18784:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ERASE$file
SYSTEM_ERASE$file:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18805
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18806
Lj18805:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18806:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18803
	jmp	Lj18804
Lj18803:
	jmp	Lj18801
Lj18804:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	je	Lj18807
	jmp	Lj18808
Lj18807:
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	call	SYSTEM_DO_ERASE$PCHAR
Lj18808:
Lj18801:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RENAME$file$PCHAR
SYSTEM_RENAME$file$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18815
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18816
Lj18815:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18816:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18813
	jmp	Lj18814
Lj18813:
	jmp	Lj18811
Lj18814:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	je	Lj18817
	jmp	Lj18818
Lj18817:
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_DO_RENAME$PCHAR$PCHAR
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18825
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18826
Lj18825:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18826:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj18823
	jmp	Lj18824
Lj18823:
	movl	-8(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	movl	%eax,%ecx
	incl	%ecx
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	leal	76(%edx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj18824:
Lj18818:
Lj18811:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RENAME$file$SHORTSTRING
SYSTEM_RENAME$file$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18839
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18840
Lj18839:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18840:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18837
	jmp	Lj18838
Lj18837:
	jmp	Lj18835
Lj18838:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%ecx
	leal	-264(%ebp),%edx
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	$0,-264(%ebp,%eax,1)
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_RENAME$file$PCHAR
Lj18835:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RENAME$file$CHAR
SYSTEM_RENAME$file$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$10,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18857
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18858
Lj18857:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18858:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18855
	jmp	Lj18856
Lj18855:
	jmp	Lj18853
Lj18856:
	movb	-8(%ebp),%al
	movb	%al,-10(%ebp)
	movb	$0,-9(%ebp)
	leal	-10(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_RENAME$file$PCHAR
Lj18853:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ASSIGN$TYPEDFILE$SHORTSTRING
SYSTEM_ASSIGN$TYPEDFILE$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$332,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-4(%ebp),%eax
	movl	$-1,(%eax)
	movl	-4(%ebp),%eax
	movl	$55216,4(%eax)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-4(%ebp),%eax
	leal	76(%eax),%edx
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ASSIGN$TYPEDFILE$PCHAR
SYSTEM_ASSIGN$TYPEDFILE$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	FPC_PCHAR_TO_SHORTSTR
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ASSIGN$TYPEDFILE$SHORTSTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ASSIGN$TYPEDFILE$CHAR
SYSTEM_ASSIGN$TYPEDFILE$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movzbl	-8(%ebp),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-264(%ebp)
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ASSIGN$TYPEDFILE$SHORTSTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_reset_typed
fpc_reset_typed:
.globl	FPC_RESET_TYPED
FPC_RESET_TYPED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18907
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18908
Lj18907:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18908:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18905
	jmp	Lj18906
Lj18905:
	jmp	Lj18903
Lj18906:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_RESET$file$LONGINT
Lj18903:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_rewrite_typed
fpc_rewrite_typed:
.globl	FPC_REWRITE_TYPED
FPC_REWRITE_TYPED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18917
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18918
Lj18917:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18918:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18915
	jmp	Lj18916
Lj18915:
	jmp	Lj18913
Lj18916:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_REWRITE$file$LONGINT
Lj18913:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DOASSIGN$TYPEDFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$528,%esp
	movl	%eax,-4(%ebp)
	pushl	$2
	movl	$_$SYSTEM$_Ld41,%eax
	movl	%eax,-272(%ebp)
	movl	$1000000000,%eax
	call	SYSTEM_RANDOM$LONGINT$$LONGINT
	leal	-528(%ebp),%ecx
	movb	$8,%dl
	call	SYSTEM_HEXSTR$LONGINT$BYTE$$SHORTSTRING
	leal	-528(%ebp),%eax
	movl	%eax,-268(%ebp)
	movl	$_$SYSTEM$_Ld42,%eax
	movl	%eax,-264(%ebp)
	leal	-272(%ebp),%ecx
	leal	-260(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat_multi
	leal	-260(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ASSIGN$TYPEDFILE$SHORTSTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_reset_typed_iso
fpc_reset_typed_iso:
.globl	FPC_RESET_TYPED_ISO
FPC_RESET_TYPED_ISO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18949
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18950
Lj18949:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18950:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18947
	jmp	Lj18948
Lj18947:
	jmp	Lj18945
Lj18948:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj18951
	jmp	Lj18952
Lj18951:
	movl	-4(%ebp),%eax
	call	SYSTEM_DOASSIGN$TYPEDFILE
Lj18952:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_RESET$file$LONGINT
Lj18945:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_rewrite_typed_iso
fpc_rewrite_typed_iso:
.globl	FPC_REWRITE_TYPED_ISO
FPC_REWRITE_TYPED_ISO:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18963
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18964
Lj18963:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18964:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18961
	jmp	Lj18962
Lj18961:
	jmp	Lj18959
Lj18962:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj18965
	jmp	Lj18966
Lj18965:
	movl	-4(%ebp),%eax
	call	SYSTEM_DOASSIGN$TYPEDFILE
Lj18966:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_REWRITE$file$LONGINT
Lj18959:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_typed_write
fpc_typed_write:
.globl	FPC_TYPED_WRITE
FPC_TYPED_WRITE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18977
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18978
Lj18977:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18978:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18975
	jmp	Lj18976
Lj18975:
	jmp	Lj18973
Lj18976:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj18980
	subl	$55217,%eax
	je	Lj18982
	decl	%eax
	jl	Lj18980
	subl	$1,%eax
	jle	Lj18981
	jmp	Lj18980
Lj18981:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_WRITE$LONGINT$POINTER$LONGINT$$LONGINT
	jmp	Lj18979
Lj18982:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18991
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18992
Lj18991:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18992:
	movw	$105,(%eax)
	jmp	Lj18979
Lj18980:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18995
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18996
Lj18995:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18996:
	movw	$103,(%eax)
Lj18979:
Lj18973:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_typed_read
fpc_typed_read:
.globl	FPC_TYPED_READ
FPC_TYPED_READ:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19001
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19002
Lj19001:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19002:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18999
	jmp	Lj19000
Lj18999:
	jmp	Lj18997
Lj19000:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj19004
	subl	$55217,%eax
	je	Lj19005
	decl	%eax
	je	Lj19006
	decl	%eax
	je	Lj19005
	jmp	Lj19004
Lj19005:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_READ$LONGINT$POINTER$LONGINT$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj19015
	jmp	Lj19016
Lj19015:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19019
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19020
Lj19019:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19020:
	movw	$100,(%eax)
Lj19016:
	jmp	Lj19003
Lj19006:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19023
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19024
Lj19023:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19024:
	movw	$104,(%eax)
	jmp	Lj19003
Lj19004:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19027
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19028
Lj19027:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19028:
	movw	$103,(%eax)
Lj19003:
Lj18997:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DOSDIR$BYTE$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	movl	-8(%ebp),%edx
	movb	-4(%ebp),%ah
	call	___SYSCALL
	jnc	Lj19031
	movw	%ax,U_SYSTEM_INOUTRES
Lj19031:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_MKDIR$PCHAR$LONGWORD
SYSTEM_MKDIR$PCHAR$LONGWORD:
.globl	FPC_SYS_MKDIR
FPC_SYS_MKDIR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj19039
	jmp	Lj19036
Lj19039:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj19036
	jmp	Lj19038
Lj19038:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19040
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19041
Lj19040:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19041:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19036
	jmp	Lj19037
Lj19036:
	jmp	Lj19034
Lj19037:
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj19042
	jmp	Lj19043
Lj19042:
	movl	-4(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	pushl	$0
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_270
	addl	$8,%esp
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj19052
	jmp	Lj19053
Lj19052:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19056
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19057
Lj19056:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19057:
	movw	-12(%ebp),%dx
	movw	%dx,(%eax)
	call	SYSTEM_ERRNO2INOUTRES
Lj19053:
	jmp	Lj19058
Lj19043:
	movl	-4(%ebp),%edx
	movb	$57,%al
	call	SYSTEM_DOSDIR$BYTE$PCHAR
Lj19058:
Lj19034:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RMDIR$PCHAR$LONGWORD
SYSTEM_RMDIR$PCHAR$LONGWORD:
.globl	FPC_SYS_RMDIR
FPC_SYS_RMDIR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj19068
	jmp	Lj19066
Lj19068:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj19067
	jmp	Lj19066
Lj19067:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19069
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19070
Lj19069:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19070:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj19065
	jmp	Lj19066
Lj19065:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj19073
	jmp	Lj19072
Lj19073:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$46,%al
	je	Lj19071
	jmp	Lj19072
Lj19071:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19076
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19077
Lj19076:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19077:
	movw	$16,(%eax)
	jmp	Lj19078
Lj19072:
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj19079
	jmp	Lj19080
Lj19079:
	movl	-4(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_226
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj19087
	jmp	Lj19088
Lj19087:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19091
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19092
Lj19091:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19092:
	movw	-12(%ebp),%dx
	movw	%dx,(%eax)
	call	SYSTEM_ERRNO2INOUTRES
Lj19088:
	jmp	Lj19093
Lj19080:
	movl	-4(%ebp),%edx
	movb	$58,%al
	call	SYSTEM_DOSDIR$BYTE$PCHAR
Lj19093:
Lj19078:
Lj19066:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_CHDIR$PCHAR$LONGWORD
SYSTEM_CHDIR$PCHAR$LONGWORD:
.globl	FPC_SYS_CHDIR
FPC_SYS_CHDIR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj19104
	jmp	Lj19101
Lj19104:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj19101
	jmp	Lj19103
Lj19103:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19105
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19106
Lj19105:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19106:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19101
	jmp	Lj19102
Lj19101:
	jmp	Lj19098
Lj19102:
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj19107
	jmp	Lj19108
Lj19107:
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	jae	Lj19111
	jmp	Lj19110
Lj19111:
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$58,%al
	je	Lj19109
	jmp	Lj19110
Lj19109:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	andl	$-33,%eax
	subl	$64,%eax
	pushl	%eax
	call	_$dll$doscalls$_index_220
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj19116
	jmp	Lj19117
Lj19116:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19120
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19121
Lj19120:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19121:
	movw	-12(%ebp),%dx
	movw	%dx,(%eax)
	call	SYSTEM_ERRNO2INOUTRES
	jmp	Lj19122
Lj19117:
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	ja	Lj19123
	jmp	Lj19124
Lj19123:
	movl	-4(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	decl	%eax
	movb	(%edx,%eax,1),%al
	cmpb	$92,%al
	je	Lj19129
	jmp	Lj19128
Lj19129:
	movl	-8(%ebp),%eax
	cmpl	$3,%eax
	jne	Lj19127
	jmp	Lj19128
Lj19127:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	decl	%eax
	movb	$0,(%edx,%eax,1)
Lj19128:
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_255
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj19136
	jmp	Lj19137
Lj19136:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19140
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19141
Lj19140:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19141:
	movw	-12(%ebp),%dx
	movw	%dx,(%eax)
	call	SYSTEM_ERRNO2INOUTRES
Lj19137:
Lj19124:
Lj19122:
	jmp	Lj19142
Lj19110:
	movl	-4(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj19147
	jmp	Lj19146
Lj19147:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	decl	%eax
	movb	(%edx,%eax,1),%al
	cmpb	$92,%al
	je	Lj19145
	jmp	Lj19146
Lj19145:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	decl	%eax
	movb	$0,(%edx,%eax,1)
Lj19146:
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_255
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj19154
	jmp	Lj19155
Lj19154:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19158
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19159
Lj19158:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19159:
	movw	-12(%ebp),%dx
	movw	%dx,(%eax)
	call	SYSTEM_ERRNO2INOUTRES
Lj19155:
Lj19142:
	jmp	Lj19160
Lj19108:
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	jae	Lj19163
	jmp	Lj19162
Lj19163:
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$58,%al
	je	Lj19161
	jmp	Lj19162
Lj19161:
	movl	-4(%ebp),%esi
	movb	1(%esi),%al
	andb	$-33,%al
	subb	$65,%al
	movl	%eax,%edx
	movb	$14,%ah
	call	___SYSCALL
	movb	$25,%ah
	call	___SYSCALL
	cmpb	%dl,%al
	jz	Lj19100
	movw	$15,U_SYSTEM_INOUTRES
Lj19100:
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	ja	Lj19166
	jmp	Lj19165
Lj19166:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19167
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19168
Lj19167:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19168:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19164
	jmp	Lj19165
Lj19164:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	decl	%eax
	movzbl	(%edx,%eax,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj19171
	jmp	Lj19170
Lj19171:
	movl	-8(%ebp),%eax
	cmpl	$3,%eax
	jne	Lj19169
	jmp	Lj19170
Lj19169:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	decl	%eax
	movb	$0,(%edx,%eax,1)
Lj19170:
	movl	-4(%ebp),%edx
	movb	$59,%al
	call	SYSTEM_DOSDIR$BYTE$PCHAR
Lj19165:
	jmp	Lj19178
Lj19162:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj19181
	jmp	Lj19180
Lj19181:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	decl	%eax
	movzbl	(%edx,%eax,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj19179
	jmp	Lj19180
Lj19179:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	decl	%eax
	movb	$0,(%edx,%eax,1)
Lj19180:
	movl	-4(%ebp),%edx
	movb	$59,%al
	call	SYSTEM_DOSDIR$BYTE$PCHAR
Lj19178:
Lj19160:
Lj19098:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETDIR$BYTE$OPENSTRING
SYSTEM_GETDIR$BYTE$OPENSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%esi,-280(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,4(%eax)
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	movl	%eax,-16(%ebp)
	movb	-4(%ebp),%dl
	movl	-16(%ebp),%esi
	movb	$71,%ah
	call	___SYSCALL
	jnc	Lj19190
	movw	%ax,U_SYSTEM_INOUTRES
Lj19190:
	movl	-8(%ebp),%eax
	movb	$3,(%eax)
	movl	-8(%ebp),%eax
	movb	$58,2(%eax)
	movl	-8(%ebp),%eax
	movb	$92,3(%eax)
	movb	$4,-17(%ebp)
	jmp	Lj19204
	.balign 4,0x90
Lj19203:
	movl	-8(%ebp),%edx
	movzbl	-17(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj19206
	jmp	Lj19207
Lj19206:
	movl	-8(%ebp),%eax
	movzbl	-17(%ebp),%edx
	movb	$92,(%eax,%edx,1)
Lj19207:
	movl	-8(%ebp),%eax
	movb	-17(%ebp),%dl
	movb	%dl,(%eax)
	incb	-17(%ebp)
Lj19204:
	movl	-8(%ebp),%eax
	movzbl	-17(%ebp),%edx
	movb	(%eax,%edx,1),%al
	testb	%al,%al
	jne	Lj19203
	jmp	Lj19205
Lj19205:
	movzbl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj19212
	jmp	Lj19213
Lj19212:
	movzbl	-4(%ebp),%eax
	addl	$64,%eax
	movl	-8(%ebp),%edx
	movb	%al,1(%edx)
	jmp	Lj19216
Lj19213:
	movb	$25,%ah
	call	___SYSCALL
	addb	$65,%al
	movb	%al,-17(%ebp)
	movl	-8(%ebp),%eax
	movb	-17(%ebp),%dl
	movb	%dl,1(%eax)
Lj19216:
	movb	TC_SYSTEM_FILENAMECASESENSITIVE,%al
	testb	%al,%al
	je	Lj19219
	jmp	Lj19220
Lj19219:
	leal	-273(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING
	leal	-273(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj19220:
	movl	-280(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETDIR$BYTE$ANSISTRING
SYSTEM_GETDIR$BYTE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%ebx,-312(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-308(%ebp)
	leal	-276(%ebp),%ecx
	leal	-300(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj19233
	leal	-264(%ebp),%edx
	movb	-4(%ebp),%al
	movl	$255,%ecx
	call	SYSTEM_GETDIR$BYTE$OPENSTRING
	leal	-308(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-308(%ebp)
	leal	-308(%ebp),%edx
	leal	-264(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-308(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-308(%ebp),%eax
	movl	%eax,(%ebx)
Lj19233:
	call	FPC_POPADDRSTACK
	leal	-308(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-308(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj19234
	call	FPC_RERAISE
Lj19234:
	movl	-312(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_MKDIR$SHORTSTRING
SYSTEM_MKDIR$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$260,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	je	Lj19250
	jmp	Lj19252
Lj19252:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19253
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19254
Lj19253:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19254:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19250
	jmp	Lj19251
Lj19250:
	jmp	Lj19248
Lj19251:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ecx
	leal	-260(%ebp),%edx
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movb	$0,-260(%ebp,%eax,1)
	leal	-260(%ebp),%eax
	movl	-4(%ebp),%edx
	movzbl	(%edx),%edx
	call	SYSTEM_MKDIR$PCHAR$LONGWORD
Lj19248:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RMDIR$SHORTSTRING
SYSTEM_RMDIR$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$260,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	je	Lj19269
	jmp	Lj19271
Lj19271:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19272
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19273
Lj19272:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19273:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19269
	jmp	Lj19270
Lj19269:
	jmp	Lj19267
Lj19270:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ecx
	leal	-260(%ebp),%edx
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movb	$0,-260(%ebp,%eax,1)
	leal	-260(%ebp),%eax
	movl	-4(%ebp),%edx
	movzbl	(%edx),%edx
	call	SYSTEM_RMDIR$PCHAR$LONGWORD
Lj19267:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_CHDIR$SHORTSTRING
SYSTEM_CHDIR$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$260,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	je	Lj19288
	jmp	Lj19290
Lj19290:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19291
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19292
Lj19291:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19292:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19288
	jmp	Lj19289
Lj19288:
	jmp	Lj19286
Lj19289:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ecx
	leal	-260(%ebp),%edx
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movb	$0,-260(%ebp,%eax,1)
	leal	-260(%ebp),%eax
	movl	-4(%ebp),%edx
	movzbl	(%edx),%edx
	call	SYSTEM_CHDIR$PCHAR$LONGWORD
Lj19286:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_IS_INTRESOURCE$PCHAR$$BOOLEAN
SYSTEM_IS_INTRESOURCE$PCHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	shrl	$16,%eax
	testl	%eax,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_MAKELANGID$WORD$WORD$$WORD
SYSTEM_MAKELANGID$WORD$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$10,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	-4(%ebp),%ax
	andw	$1023,%ax
	movzwl	%ax,%eax
	movzwl	-8(%ebp),%edx
	shll	$10,%edx
	orl	%edx,%eax
	movw	%ax,-10(%ebp)
	movw	-10(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FINDRESOURCE$LONGWORD$ANSISTRING$ANSISTRING$$LONGWORD
SYSTEM_FINDRESOURCE$LONGWORD$ANSISTRING$ANSISTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj19315
	movl	-12(%ebp),%ecx
	testl	%ecx,%ecx
	jne	Lj19322
	movl	$FPC_EMPTYCHAR,%ecx
Lj19322:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj19325
	movl	$FPC_EMPTYCHAR,%edx
Lj19325:
	movl	-4(%ebp),%eax
	call	SYSTEM_FINDRESOURCE$LONGWORD$PCHAR$PCHAR$$LONGWORD
	movl	%eax,-16(%ebp)
Lj19315:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-12(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj19316
	call	FPC_RERAISE
Lj19316:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FINDRESOURCEEX$LONGWORD$ANSISTRING$ANSISTRING$WORD$$LONGWORD
SYSTEM_FINDRESOURCEEX$LONGWORD$ANSISTRING$ANSISTRING$WORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj19330
	movzwl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	testl	%ecx,%ecx
	jne	Lj19339
	movl	$FPC_EMPTYCHAR,%ecx
Lj19339:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj19342
	movl	$FPC_EMPTYCHAR,%edx
Lj19342:
	movl	-4(%ebp),%eax
	call	SYSTEM_FINDRESOURCEEX$LONGWORD$PCHAR$PCHAR$WORD$$LONGWORD
	movl	%eax,-16(%ebp)
Lj19330:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-12(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj19331
	call	FPC_RERAISE
Lj19331:
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_DEFAULTHINSTANCE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	$0,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DEFAULTENUMRESOURCETYPES$LONGWORD$ENUMRESTYPEPROC$LONGINT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DEFAULTENUMRESOURCENAMES$LONGWORD$PCHAR$ENUMRESNAMEPROC$LONGINT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_DEFAULTENUMRESOURCELANGUAGES$LONGWORD$PCHAR$PCHAR$ENUMRESLANGPROC$LONGINT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_DEFAULTFINDRESOURCE$LONGWORD$PCHAR$PCHAR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DEFAULTFINDRESOURCEEX$LONGWORD$PCHAR$PCHAR$WORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_DEFAULTLOADRESOURCE$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DEFAULTSIZEOFRESOURCE$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DEFAULTLOCKRESOURCE$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DEFAULTUNLOCKRESOURCE$LONGWORD$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DEFAULTFREERESOURCE$LONGWORD$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETRESOURCEMANAGER$TRESOURCEMANAGER
SYSTEM_GETRESOURCEMANAGER$TRESOURCEMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edi
	movl	$TC_SYSTEM_RESOURCEMANAGER,%esi
	cld
	movl	$11,%ecx
	rep
	movsl
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETRESOURCEMANAGER$TRESOURCEMANAGER
SYSTEM_SETRESOURCEMANAGER$TRESOURCEMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	movl	$TC_SYSTEM_RESOURCEMANAGER,%edi
	cld
	movl	$11,%ecx
	rep
	movsl
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_HINSTANCE$$LONGWORD
SYSTEM_HINSTANCE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	TC_SYSTEM_RESOURCEMANAGER,%eax
	call	*%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ENUMRESOURCETYPES$LONGWORD$ENUMRESTYPEPROC$LONGINT$$LONGBOOL
SYSTEM_ENUMRESOURCETYPES$LONGWORD$ENUMRESTYPEPROC$LONGINT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_RESOURCEMANAGER+4,%ebx
	call	*%ebx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ENUMRESOURCENAMES$LONGWORD$PCHAR$ENUMRESNAMEPROC$LONGINT$$LONGBOOL
SYSTEM_ENUMRESOURCENAMES$LONGWORD$PCHAR$ENUMRESNAMEPROC$LONGINT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	8(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_RESOURCEMANAGER+8,%ebx
	call	*%ebx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_ENUMRESOURCELANGUAGES$LONGWORD$PCHAR$PCHAR$ENUMRESLANGPROC$LONGINT$$LONGBOOL
SYSTEM_ENUMRESOURCELANGUAGES$LONGWORD$PCHAR$PCHAR$ENUMRESLANGPROC$LONGINT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_RESOURCEMANAGER+12,%ebx
	call	*%ebx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_FINDRESOURCE$LONGWORD$PCHAR$PCHAR$$LONGWORD
SYSTEM_FINDRESOURCE$LONGWORD$PCHAR$PCHAR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_RESOURCEMANAGER+16,%ebx
	call	*%ebx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FINDRESOURCEEX$LONGWORD$PCHAR$PCHAR$WORD$$LONGWORD
SYSTEM_FINDRESOURCEEX$LONGWORD$PCHAR$PCHAR$WORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movzwl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_RESOURCEMANAGER+20,%ebx
	call	*%ebx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_LOADRESOURCE$LONGWORD$LONGWORD$$LONGWORD
SYSTEM_LOADRESOURCE$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_RESOURCEMANAGER+24,%ecx
	call	*%ecx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SIZEOFRESOURCE$LONGWORD$LONGWORD$$LONGWORD
SYSTEM_SIZEOFRESOURCE$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_RESOURCEMANAGER+28,%ecx
	call	*%ecx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LOCKRESOURCE$LONGWORD$$POINTER
SYSTEM_LOCKRESOURCE$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_RESOURCEMANAGER+32,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UNLOCKRESOURCE$LONGWORD$$LONGBOOL
SYSTEM_UNLOCKRESOURCE$LONGWORD$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_RESOURCEMANAGER+36,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FREERESOURCE$LONGWORD$$LONGBOOL
SYSTEM_FREERESOURCE$LONGWORD$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_RESOURCEMANAGER+40,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSSETCTRLBREAKHANDLER$TCTRLBREAKHANDLER$$TCTRLBREAKHANDLER
SYSTEM_SYSSETCTRLBREAKHANDLER$TCTRLBREAKHANDLER$$TCTRLBREAKHANDLER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	TC_SYSTEM_CTRLBREAKHANDLER,%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,TC_SYSTEM_CTRLBREAKHANDLER
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSTEM_EXIT:
	movb	$76,%ah
	movb	operatingsystem_result,%al
	call	___SYSCALL
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_PARAMCOUNT$$LONGINT
SYSTEM_PARAMCOUNT$$LONGINT:
	subl	$4,%esp
	movl	_argc,%eax
	decl	%eax
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_ARGS$$POINTER:
	subl	$4,%esp
	movl	_argv,%eax
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_PARAMSTR$LONGINT$$SHORTSTRING
SYSTEM_PARAMSTR$LONGINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj19507
	jmp	Lj19508
Lj19507:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj19509
	jmp	Lj19510
Lj19509:
	leal	-12(%ebp),%eax
	movl	$260,%edx
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-12(%ebp),%edx
	movl	$_$SYSTEM$_Ld43+1,%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%edx
	movl	$260,%ecx
	movl	$32563,%eax
	call	___SYSCALL
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	FPC_PCHAR_TO_SHORTSTR
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%eax
	movl	$260,%edx
	call	SYSTEM_FREEMEM$POINTER$LONGWORD
	jmp	Lj19527
Lj19510:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj19530
	jmp	Lj19529
Lj19530:
	call	SYSTEM_PARAMCOUNT$$LONGINT
	cmpl	-4(%ebp),%eax
	jge	Lj19528
	jmp	Lj19529
Lj19528:
	call	SYSTEM_ARGS$$POINTER
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	leal	(%eax,%edx,4),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	FPC_PCHAR_TO_SHORTSTR
	movl	-8(%ebp),%eax
	jmp	Lj19541
Lj19529:
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
Lj19541:
Lj19527:
	jmp	Lj19544
Lj19508:
	call	SYSTEM_ARGS$$POINTER
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	leal	(%edx,%eax,4),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	FPC_PCHAR_TO_SHORTSTR
	movl	-8(%ebp),%eax
Lj19544:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RANDOMIZE
SYSTEM_RANDOMIZE:
	movb	$44,%ah
	call	___SYSCALL
	movw	%cx,U_SYSTEM_RANDSEED
	movw	%dx,U_SYSTEM_RANDSEED+2
	ret

.text
	.balign 4,0x90
SYSTEM_ERRORWRITE$TEXTREC$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jg	Lj19559
	jmp	Lj19560
Lj19559:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	U_SYSTEM_ERRORLEN,%edx
	addl	%edx,%eax
	cmpl	$1024,%eax
	jg	Lj19561
	jmp	Lj19562
Lj19561:
	movl	U_SYSTEM_ERRORLEN,%edx
	movl	$1024,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-16(%ebp)
	jmp	Lj19565
Lj19562:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-16(%ebp)
Lj19565:
	movl	U_SYSTEM_ERRORLEN,%eax
	leal	U_SYSTEM_ERRORBUF(,%eax,1),%edx
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	-16(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-16(%ebp),%eax
	addl	%eax,U_SYSTEM_ERRORLEN
	movl	U_SYSTEM_ERRORLEN,%eax
	movb	$0,U_SYSTEM_ERRORBUF(,%eax,1)
Lj19560:
	movl	U_SYSTEM_ERRORLEN,%eax
	cmpl	$3,%eax
	jg	Lj19576
	jmp	Lj19577
Lj19576:
	movl	U_SYSTEM_ERRORLEN,%eax
	leal	U_SYSTEM_ERRORBUF(,%eax,1),%eax
	movl	%eax,-12(%ebp)
	movl	$1,-16(%ebp)
	decl	-16(%ebp)
	.balign 4,0x90
Lj19582:
	incl	-16(%ebp)
	decl	-12(%ebp)
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$10,%eax
	je	Lj19585
	cmpl	$13,%eax
	je	Lj19585
Lj19585:
	jne	Lj19583
	jmp	Lj19584
Lj19583:
	jmp	Lj19581
Lj19584:
	cmpl	$4,-16(%ebp)
	jl	Lj19582
Lj19581:
Lj19577:
	movl	U_SYSTEM_ERRORLEN,%eax
	cmpl	$1024,%eax
	je	Lj19586
	jmp	Lj19587
Lj19586:
	movl	$4,-16(%ebp)
Lj19587:
	movl	-16(%ebp),%eax
	cmpl	$4,%eax
	je	Lj19590
	jmp	Lj19591
Lj19590:
	pushl	$16448
	pushl	$0
	movl	$_$SYSTEM$_Ld44,%eax
	pushl	%eax
	movl	$U_SYSTEM_ERRORBUF,%eax
	pushl	%eax
	pushl	$0
	pushl	$0
	movl	TC_SYSTEM_WINMESSAGEBOX,%eax
	call	*%eax
	addl	$24,%esp
	movl	$0,U_SYSTEM_ERRORLEN
Lj19591:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movw	$0,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_ERRORCLOSE$TEXTREC$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movl	U_SYSTEM_ERRORLEN,%eax
	cmpl	$0,%eax
	jg	Lj19612
	jmp	Lj19613
Lj19612:
	pushl	$16448
	pushl	$0
	movl	$_$SYSTEM$_Ld44,%eax
	pushl	%eax
	movl	$U_SYSTEM_ERRORBUF,%eax
	pushl	%eax
	pushl	$0
	pushl	$0
	movl	TC_SYSTEM_WINMESSAGEBOX,%eax
	call	*%eax
	addl	$24,%esp
	movl	$0,U_SYSTEM_ERRORLEN
Lj19613:
	movl	$0,U_SYSTEM_ERRORLEN
	movw	$0,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_ERROROPEN$TEXTREC$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$6,%esp
	movl	%eax,-4(%ebp)
	movl	$SYSTEM_ERRORWRITE$TEXTREC$$SMALLINT,%edx
	movl	-4(%ebp),%eax
	movl	%edx,32(%eax)
	movl	$SYSTEM_ERRORWRITE$TEXTREC$$SMALLINT,%eax
	movl	-4(%ebp),%edx
	movl	%eax,36(%edx)
	movl	$SYSTEM_ERRORCLOSE$TEXTREC$$SMALLINT,%eax
	movl	-4(%ebp),%edx
	movl	%eax,40(%edx)
	movw	$0,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_ASSIGNERROR$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$_$SYSTEM$_Ld1,%edx
	call	SYSTEM_ASSIGN$TEXT$SHORTSTRING
	movl	$SYSTEM_ERROROPEN$TEXTREC$$SMALLINT,%edx
	movl	-4(%ebp),%eax
	movl	%edx,28(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_REWRITE$TEXT
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DOSENVINIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	cld
	movl	_envc,%ecx
	movl	_environ,%esi
	xorl	%eax,%eax
	xorl	%edx,%edx
Lj19654:
	xchgl	%edx,%eax
	pushl	%ecx
	movl	$-1,%ecx
	movl	(%esi),%edi
	repne
	scasb
	negl	%ecx
	decl	%ecx
	xchgl	%edx,%eax
	addl	%ecx,%eax
	popl	%ecx
	decl	%ecx
	jecxz	Lj19655
	incl	%esi
	incl	%esi
	incl	%esi
	incl	%esi
	jmp	Lj19654
Lj19655:
	incl	%eax
	movl	%eax,TC_SYSTEM_ENVSIZE
	movl	TC_SYSTEM_ENVSIZE,%eax
	call	SYSTEM_GETMEM$LONGWORD$$POINTER
	movl	%eax,U_SYSTEM_ENVIRONMENT
	cld
	movl	_envc,%ecx
	movl	_environ,%edx
	movl	U_SYSTEM_ENVIRONMENT,%edi
Lj19656:
	movl	(%edx),%esi
Lj19657:
	lodsb
	stosb
	orb	%al,%al
	jnz	Lj19657
	decl	%ecx
	jecxz	Lj19658
	incl	%edx
	incl	%edx
	incl	%edx
	incl	%edx
	jmp	Lj19656
Lj19658:
	stosb
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSINITSTDIO
SYSTEM_SYSINITSTDIO:
	pushl	%ebp
	movl	%esp,%ebp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19667
	movl	U_SYSTEM_INPUT,%eax
	call	*%edx
	jmp	Lj19668
Lj19667:
	movl	$U_SYSTEM_INPUT+4,%eax
Lj19668:
	movl	$0,%ecx
	movl	$55217,%edx
	call	SYSTEM_OPENSTDIO$TEXT$LONGINT$LONGINT
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19675
	movl	U_SYSTEM_OUTPUT,%eax
	call	*%edx
	jmp	Lj19676
Lj19675:
	movl	$U_SYSTEM_OUTPUT+4,%eax
Lj19676:
	movl	$1,%ecx
	movl	$55218,%edx
	call	SYSTEM_OPENSTDIO$TEXT$LONGINT$LONGINT
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19683
	movl	U_SYSTEM_ERROUTPUT,%eax
	call	*%edx
	jmp	Lj19684
Lj19683:
	movl	$U_SYSTEM_ERROUTPUT+4,%eax
Lj19684:
	movl	$2,%ecx
	movl	$55218,%edx
	call	SYSTEM_OPENSTDIO$TEXT$LONGINT$LONGINT
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19691
	movl	U_SYSTEM_STDOUT,%eax
	call	*%edx
	jmp	Lj19692
Lj19691:
	movl	$U_SYSTEM_STDOUT+4,%eax
Lj19692:
	movl	$1,%ecx
	movl	$55218,%edx
	call	SYSTEM_OPENSTDIO$TEXT$LONGINT$LONGINT
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19699
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj19700
Lj19699:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj19700:
	movl	$2,%ecx
	movl	$55218,%edx
	call	SYSTEM_OPENSTDIO$TEXT$LONGINT$LONGINT
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETDEFAULTOS2FILETYPE$SHORTSTRING
SYSTEM_SETDEFAULTOS2FILETYPE$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$260,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-260(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19709
	movl	U_SYSTEM_DEFAULTFILETYPE,%eax
	call	*%edx
	jmp	Lj19710
Lj19709:
	movl	$U_SYSTEM_DEFAULTFILETYPE+4,%eax
Lj19710:
	leal	-260(%ebp),%ecx
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETDEFAULTOS2CREATOR$SHORTSTRING
SYSTEM_SETDEFAULTOS2CREATOR$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$260,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-260(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19719
	movl	U_SYSTEM_DEFAULTCREATOR,%eax
	call	*%edx
	jmp	Lj19720
Lj19719:
	movl	$U_SYSTEM_DEFAULTCREATOR+4,%eax
Lj19720:
	leal	-260(%ebp),%ecx
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_GETFILEHANDLECOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	$0,-8(%ebp)
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-8(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_382
	addl	$8,%esp
	testl	%eax,%eax
	jne	Lj19729
	jmp	Lj19730
Lj19729:
	movl	$50,-4(%ebp)
	jmp	Lj19737
Lj19730:
	movl	-12(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj19737:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_CHECKINITIALSTKLEN$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	INIT$_SYSTEM
INIT$_SYSTEM:
.globl	_SYSTEM_init
_SYSTEM_init:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	pushl	%ebx
	movl	$0,U_SYSTEM_OS_MODE
	movl	$32522,%eax
	call	___SYSCALL
	testw	$512,%bx
	setneb	U_SYSTEM_OS_MODE
	testw	$4096,%bx
	jz	Lj19744
	movl	$2,U_SYSTEM_OS_MODE
Lj19744:
	movl	$32513,%eax
	movl	__heap_brk,%edx
	addl	__heap_base,%edx
	call	___SYSCALL
	cmpl	$-1,%eax
	jnz	Lj19745
	leal	TC_SYSTEM_FATALHEAP,%edx
	movl	$2304,%eax
	call	___SYSCALL
	popl	%ebx
	pushl	$204
	call	SYSTEM_HANDLEERROR$LONGINT
Lj19745:
	movl	$32527,%eax
	movl	$12,%ecx
	movl	$8,%edx
	call	___SYSCALL
	popl	%ebx
	movl	$0,U_SYSTEM_FIRST_MEG
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$0,%eax
	je	Lj19751
	cmpl	$2,%eax
	je	Lj19751
Lj19751:
	je	Lj19749
	jmp	Lj19750
Lj19749:
	pushl	%ebx
	movl	$32531,%eax
	xorl	%ebx,%ebx
	movl	$4095,%ecx
	xorl	%edx,%edx
	call	___SYSCALL
	jc	Lj19746
	movl	%eax,U_SYSTEM_FIRST_MEG
Lj19746:
	popl	%ebx
	jmp	Lj19752
Lj19750:
	call	SYSTEM_GETFILEHANDLECOUNT$$LONGINT
	movl	%eax,TC_SYSTEM_FILEHANDLECOUNT
Lj19752:
	movl	U_SYSTEM_OS_MODE,%eax
	testl	%eax,%eax
	je	Lj19757
	decl	%eax
	je	Lj19758
	decl	%eax
	je	Lj19759
	jmp	Lj19756
Lj19757:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19762
	movl	U_SYSTEM_STACKBOTTOM,%eax
	call	*%edx
	jmp	Lj19763
Lj19762:
	movl	$U_SYSTEM_STACKBOTTOM+4,%eax
Lj19763:
	movl	__heap_brk,%edx
	movl	%edx,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19766
	movl	U_SYSTEM_STACKBOTTOM,%eax
	call	*%edx
	jmp	Lj19767
Lj19766:
	movl	$U_SYSTEM_STACKBOTTOM+4,%eax
Lj19767:
	movl	(%eax),%ebx
	movl	__stklen,%eax
	addl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19768
	movl	U_SYSTEM_STACKTOP,%eax
	call	*%edx
	jmp	Lj19769
Lj19768:
	movl	$U_SYSTEM_STACKTOP+4,%eax
Lj19769:
	movl	%ebx,(%eax)
	movl	$1,U_SYSTEM_APPLICATIONTYPE
	movb	$1,operatingsystem_isconsole
	movw	$32517,%ax
	call	___SYSCALL
	movl	%eax,U_SYSTEM_PROCESSID
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19776
	movl	U_SYSTEM_THREADID,%eax
	call	*%edx
	jmp	Lj19777
Lj19776:
	movl	$U_SYSTEM_THREADID+4,%eax
Lj19777:
	movl	$1,(%eax)
	jmp	Lj19755
Lj19758:
	movl	$U_SYSTEM_PIB,%eax
	pushl	%eax
	movl	$U_SYSTEM_TIB,%eax
	pushl	%eax
	call	_$dll$doscalls$_index_312
	addl	$8,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19784
	movl	U_SYSTEM_STACKBOTTOM,%eax
	call	*%edx
	jmp	Lj19785
Lj19784:
	movl	$U_SYSTEM_STACKBOTTOM+4,%eax
Lj19785:
	movl	U_SYSTEM_TIB,%edx
	movl	4(%edx),%edx
	movl	%edx,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19788
	movl	U_SYSTEM_STACKTOP,%eax
	call	*%edx
	jmp	Lj19789
Lj19788:
	movl	$U_SYSTEM_STACKTOP+4,%eax
Lj19789:
	movl	U_SYSTEM_TIB,%edx
	movl	8(%edx),%edx
	movl	%edx,(%eax)
	movl	U_SYSTEM_PIB,%eax
	movl	16(%eax),%eax
	movl	%eax,U_SYSTEM_ENVIRONMENT
	movl	U_SYSTEM_PIB,%eax
	movl	24(%eax),%eax
	movl	%eax,U_SYSTEM_APPLICATIONTYPE
	movl	U_SYSTEM_PIB,%eax
	movl	(%eax),%eax
	movl	%eax,U_SYSTEM_PROCESSID
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19798
	movl	U_SYSTEM_THREADID,%eax
	call	*%edx
	jmp	Lj19799
Lj19798:
	movl	$U_SYSTEM_THREADID+4,%eax
Lj19799:
	movl	U_SYSTEM_TIB,%edx
	movl	12(%edx),%edx
	movl	(%edx),%edx
	movl	%edx,(%eax)
	movl	U_SYSTEM_APPLICATIONTYPE,%eax
	cmpl	$3,%eax
	setneb	operatingsystem_isconsole
	jmp	Lj19755
Lj19759:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19804
	movl	U_SYSTEM_STACKBOTTOM,%eax
	call	*%edx
	jmp	Lj19805
Lj19804:
	movl	$U_SYSTEM_STACKBOTTOM+4,%eax
Lj19805:
	movl	$0,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19808
	movl	U_SYSTEM_STACKBOTTOM,%eax
	call	*%edx
	jmp	Lj19809
Lj19808:
	movl	$U_SYSTEM_STACKBOTTOM+4,%eax
Lj19809:
	movl	(%eax),%ebx
	movl	__stklen,%eax
	addl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19810
	movl	U_SYSTEM_STACKTOP,%eax
	call	*%edx
	jmp	Lj19811
Lj19810:
	movl	$U_SYSTEM_STACKTOP+4,%eax
Lj19811:
	movl	%ebx,(%eax)
	movl	$1,U_SYSTEM_APPLICATIONTYPE
	movb	$1,operatingsystem_isconsole
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19818
	movl	U_SYSTEM_THREADID,%eax
	call	*%edx
	jmp	Lj19819
Lj19818:
	movl	$U_SYSTEM_THREADID+4,%eax
Lj19819:
	movl	$1,(%eax)
	jmp	Lj19755
Lj19756:
Lj19755:
	movl	$0,TC_SYSTEM_EXITPROC
	movl	__stklen,%eax
	call	SYSTEM_CHECKINITIALSTKLEN$LONGWORD$$LONGWORD
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19826
	movl	U_SYSTEM_STACKLENGTH,%eax
	call	*%edx
	jmp	Lj19827
Lj19826:
	movl	$U_SYSTEM_STACKLENGTH+4,%eax
Lj19827:
	movl	%ebx,(%eax)
	call	SYSTEM_INITHEAP
	call	SYSTEM_SYSINITEXCEPTIONS
	call	SYSTEM_SYSINITSTDIO
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19830
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19831
Lj19830:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19831:
	movw	$0,(%eax)
	call	SYSTEM_INITSYSTEMTHREADS
	call	SYSTEM_INITVARIANTMANAGER
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$0,%eax
	je	Lj19834
	cmpl	$2,%eax
	je	Lj19834
Lj19834:
	je	Lj19832
	jmp	Lj19833
Lj19832:
	call	SYSTEM_DOSENVINIT
Lj19833:
	movl	-4(%ebp),%ebx
	leave
	ret

.text
.globl	WRPR_SYSTEM_TINTERFACEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM_TINTERFACEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT
WRPR_SYSTEM_TINTERFACEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM_TINTERFACEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT:
	subl	$8,4(%esp)
	jmp	SYSTEM_TINTERFACEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT

.text
.globl	WRPR_SYSTEM_TINTERFACEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM_TINTERFACEDOBJECT_$___ADDREF$$LONGINT
WRPR_SYSTEM_TINTERFACEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM_TINTERFACEDOBJECT_$___ADDREF$$LONGINT:
	subl	$8,4(%esp)
	jmp	SYSTEM_TINTERFACEDOBJECT_$___ADDREF$$LONGINT

.text
.globl	WRPR_SYSTEM_TINTERFACEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM_TINTERFACEDOBJECT_$___RELEASE$$LONGINT
WRPR_SYSTEM_TINTERFACEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM_TINTERFACEDOBJECT_$___RELEASE$$LONGINT:
	subl	$8,4(%esp)
	jmp	SYSTEM_TINTERFACEDOBJECT_$___RELEASE$$LONGINT

.text
.globl	WRPR_SYSTEM_TCONTAINEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM_TCONTAINEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT
WRPR_SYSTEM_TCONTAINEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM_TCONTAINEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT:
	subl	$8,4(%esp)
	movl	4(%esp),%eax
	movl	(%eax),%eax
	jmp	*100(%eax)

.text
.globl	WRPR_SYSTEM_TCONTAINEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM_TAGGREGATEDOBJECT_$___ADDREF$$LONGINT
WRPR_SYSTEM_TCONTAINEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM_TAGGREGATEDOBJECT_$___ADDREF$$LONGINT:
	subl	$8,4(%esp)
	jmp	SYSTEM_TAGGREGATEDOBJECT_$___ADDREF$$LONGINT

.text
.globl	WRPR_SYSTEM_TCONTAINEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM_TAGGREGATEDOBJECT_$___RELEASE$$LONGINT
WRPR_SYSTEM_TCONTAINEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM_TAGGREGATEDOBJECT_$___RELEASE$$LONGINT:
	subl	$8,4(%esp)
	jmp	SYSTEM_TAGGREGATEDOBJECT_$___RELEASE$$LONGINT
# End asmlist al_procedures
# Begin asmlist al_globals

.bss
	.balign 4
	.globl operatingsystem_result
operatingsystem_result:
	.zero 4

.bss
	.balign 4
	.globl U_SYSTEM_RANDSEED
U_SYSTEM_RANDSEED:
	.zero 4

.bss
	.balign 4
	.globl FPC_THREADVAR_RELOCATE
FPC_THREADVAR_RELOCATE:
	.zero 4

.bss
	.balign 2
	.globl U_SYSTEM_DEFAULTSYSTEMCODEPAGE
U_SYSTEM_DEFAULTSYSTEMCODEPAGE:
	.zero 2

.bss
	.balign 2
	.globl U_SYSTEM_DEFAULTUNICODECODEPAGE
U_SYSTEM_DEFAULTUNICODECODEPAGE:
	.zero 2

.bss
	.balign 2
	.globl U_SYSTEM_DEFAULTFILESYSTEMCODEPAGE
U_SYSTEM_DEFAULTFILESYSTEMCODEPAGE:
	.zero 2

.bss
	.balign 2
	.globl U_SYSTEM_DEFAULTRTLFILESYSTEMCODEPAGE
U_SYSTEM_DEFAULTRTLFILESYSTEMCODEPAGE:
	.zero 2

.bss
	.balign 2
	.globl U_SYSTEM_UTF8COMPARELOCALE
U_SYSTEM_UTF8COMPARELOCALE:
	.zero 2

.bss
	.balign 4
	.globl U_SYSTEM_THREADID
U_SYSTEM_THREADID:
	.zero 8

.bss
	.balign 4
	.globl U_SYSTEM_ERROUTPUT
U_SYSTEM_ERROUTPUT:
	.zero 596

.bss
	.balign 4
	.globl U_SYSTEM_OUTPUT
U_SYSTEM_OUTPUT:
	.zero 596

.bss
	.balign 4
	.globl U_SYSTEM_INPUT
U_SYSTEM_INPUT:
	.zero 596

.bss
	.balign 4
	.globl U_SYSTEM_STDOUT
U_SYSTEM_STDOUT:
	.zero 596

.bss
	.balign 4
	.globl U_SYSTEM_STDERR
U_SYSTEM_STDERR:
	.zero 596

.bss
	.balign 4
	.globl U_SYSTEM_INOUTRES
U_SYSTEM_INOUTRES:
	.zero 6

.bss
	.balign 4
	.globl U_SYSTEM_STACKTOP
U_SYSTEM_STACKTOP:
	.zero 8

.bss
	.balign 4
	.globl U_SYSTEM_STACKBOTTOM
U_SYSTEM_STACKBOTTOM:
	.zero 8

.bss
	.balign 4
	.globl U_SYSTEM_STACKLENGTH
U_SYSTEM_STACKLENGTH:
	.zero 8

.bss
	.balign 4
	.globl U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK
U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK:
	.zero 5

.bss
	.balign 4
	.globl U_SYSTEM_SOFTFLOAT_EXCEPTION_FLAGS
U_SYSTEM_SOFTFLOAT_EXCEPTION_FLAGS:
	.zero 5

.bss
	.balign 4
	.globl U_SYSTEM_SOFTFLOAT_ROUNDING_MODE
U_SYSTEM_SOFTFLOAT_ROUNDING_MODE:
	.zero 5

.bss
	.balign 4
	.globl U_SYSTEM_WIDESTRINGMANAGER
U_SYSTEM_WIDESTRINGMANAGER:
	.zero 104

.bss
	.balign 4
	.globl U_SYSTEM_DISPCALLBYIDPROC
U_SYSTEM_DISPCALLBYIDPROC:
	.zero 4

.bss
	.globl U_SYSTEM_RETURNNILIFGROWHEAPFAILS
U_SYSTEM_RETURNNILIFGROWHEAPFAILS:
	.zero 1

.bss
	.balign 4
	.globl U_SYSTEM_OS_MODE
U_SYSTEM_OS_MODE:
	.zero 4

.bss
	.balign 4
	.globl U_SYSTEM_FIRST_MEG
U_SYSTEM_FIRST_MEG:
	.zero 4

.bss
	.balign 4
	.globl U_SYSTEM_ENVIRONMENT
U_SYSTEM_ENVIRONMENT:
	.zero 4

.bss
	.balign 4
	.globl U_SYSTEM_APPLICATIONTYPE
U_SYSTEM_APPLICATIONTYPE:
	.zero 4

.bss
	.balign 2
	.globl FPC_EMPTYCHAR
FPC_EMPTYCHAR:
	.zero 2

.bss
	.balign 4
U_SYSTEM_PROCESSID:
	.zero 4

.bss
U_SYSTEM_OS_SUPPORTS_SSE:
	.zero 1

.bss
U_SYSTEM_SSE_CHECK:
	.zero 1

.bss
	.balign 4
	.globl FPC_EMPTYINTF
FPC_EMPTYINTF:
	.zero 4

.bss
	.balign 4
U_SYSTEM_EXCEPTADDRSTACK:
	.zero 8

.bss
	.balign 4
U_SYSTEM_EXCEPTOBJECTSTACK:
	.zero 8

.bss
	.balign 4
U_SYSTEM_VARIANTMANAGER:
	.zero 184

.bss
	.balign 4
U_SYSTEM_MT:
	.zero 2496

.bss
	.balign 4
U_SYSTEM_ORPHANED_FREELISTS:
	.zero 184

.bss
	.balign 4
U_SYSTEM_HEAP_LOCK:
	.zero 24

.bss
	.balign 2
U_SYSTEM_HEAP_LOCK_USE:
	.zero 2

.bss
	.balign 4
U_SYSTEM_FREELISTS:
	.zero 188

.bss
	.balign 4
U_SYSTEM_CURRENTTM:
	.zero 152

.bss
	.balign 4
U_SYSTEM_NOTHREADMANAGER:
	.zero 152

.bss
	.balign 4
U_SYSTEM_READWRITESTRTEXT:
	.zero 596

.bss
U_SYSTEM_ERRORBUF:
	.zero 1025

.bss
	.balign 4
U_SYSTEM_ERRORLEN:
	.zero 4

.bss
	.balign 4
U_SYSTEM_PMWINHANDLE:
	.zero 4

.bss
	.balign 4
U_SYSTEM_DEFAULTCREATOR:
	.zero 260

.bss
	.balign 4
U_SYSTEM_DEFAULTFILETYPE:
	.zero 260

.bss
	.balign 4
U_SYSTEM_TIB:
	.zero 4

.bss
	.balign 4
U_SYSTEM_PIB:
	.zero 4

.data
	.balign 4
.globl	_$SYSTEM$_Ld45
_$SYSTEM$_Ld45:
	.byte	7
	.ascii	"TObject"

.data
	.balign 4
.globl	VMT_SYSTEM_TOBJECT
VMT_SYSTEM_TOBJECT:
	.long	4,-4,0
	.long	_$SYSTEM$_Ld45
	.long	0,0
	.long	_$SYSTEM$_Ld46
	.long	RTTI_SYSTEM_TOBJECT
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	SYSTEM_TOBJECT_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	0

.data
	.balign 4
.globl	IID_SYSTEM_IUNKNOWN
IID_SYSTEM_IUNKNOWN:
	.long	0
	.short	0,0
	.byte	192,0,0,0,0,0,0,70

.data
.globl	IIDSTR_SYSTEM_IUNKNOWN
IIDSTR_SYSTEM_IUNKNOWN:
	.byte	38
	.ascii	"{00000000-0000-0000-C000-000000000046}"

.data
	.balign 4
.globl	IID_SYSTEM_IINVOKABLE
IID_SYSTEM_IINVOKABLE:
	.long	0
	.short	0,0
	.byte	0,0,0,0,0,0,0,0

.data
.globl	IIDSTR_SYSTEM_IINVOKABLE
IIDSTR_SYSTEM_IINVOKABLE:
	.byte	0

.data
	.balign 4
.globl	IID_SYSTEM_IENUMERATOR
IID_SYSTEM_IENUMERATOR:
	.long	0
	.short	0,0
	.byte	0,0,0,0,0,0,0,0

.data
.globl	IIDSTR_SYSTEM_IENUMERATOR
IIDSTR_SYSTEM_IENUMERATOR:
	.byte	0

.data
	.balign 4
.globl	IID_SYSTEM_IENUMERABLE
IID_SYSTEM_IENUMERABLE:
	.long	0
	.short	0,0
	.byte	0,0,0,0,0,0,0,0

.data
.globl	IIDSTR_SYSTEM_IENUMERABLE
IIDSTR_SYSTEM_IENUMERABLE:
	.byte	0

.data
	.balign 4
.globl	IID_SYSTEM_IDISPATCH
IID_SYSTEM_IDISPATCH:
	.long	132096
	.short	0,0
	.byte	192,0,0,0,0,0,0,70

.data
.globl	IIDSTR_SYSTEM_IDISPATCH
IIDSTR_SYSTEM_IDISPATCH:
	.byte	38
	.ascii	"{00020400-0000-0000-C000-000000000046}"

.data
	.balign 4
	.balign 4
.globl	_$SYSTEM$_Ld49
_$SYSTEM$_Ld49:
	.long	1
	.long	_$SYSTEM$_Ld50
	.long	VTBL_SYSTEM_TINTERFACEDOBJECT_$_IUNKNOWN
	.long	8
	.long	_$SYSTEM$_Ld51
	.long	0

.data
	.balign 4
.globl	VTBL_SYSTEM_TINTERFACEDOBJECT_$_IUNKNOWN
VTBL_SYSTEM_TINTERFACEDOBJECT_$_IUNKNOWN:
	.long	WRPR_SYSTEM_TINTERFACEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM_TINTERFACEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT
	.long	WRPR_SYSTEM_TINTERFACEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM_TINTERFACEDOBJECT_$___ADDREF$$LONGINT
	.long	WRPR_SYSTEM_TINTERFACEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM_TINTERFACEDOBJECT_$___RELEASE$$LONGINT
	.balign 4
.globl	_$SYSTEM$_Ld50
_$SYSTEM$_Ld50:
	.long	0
	.short	0,0
	.byte	192,0,0,0,0,0,0,70
	.balign 4
.globl	_$SYSTEM$_Ld51
_$SYSTEM$_Ld51:
	.byte	38
	.ascii	"{00000000-0000-0000-C000-000000000046}"
.globl	_$SYSTEM$_Ld48
_$SYSTEM$_Ld48:
	.byte	17
	.ascii	"TInterfacedObject"

.data
	.balign 4
.globl	VMT_SYSTEM_TINTERFACEDOBJECT
VMT_SYSTEM_TINTERFACEDOBJECT:
	.long	12,-12
	.long	VMT_SYSTEM_TOBJECT
	.long	_$SYSTEM$_Ld48
	.long	0,0
	.long	_$SYSTEM$_Ld52
	.long	RTTI_SYSTEM_TINTERFACEDOBJECT
	.long	0,0
	.long	_$SYSTEM$_Ld49
	.long	0
	.long	SYSTEM_TOBJECT_$__DESTROY
	.long	SYSTEM_TINTERFACEDOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TINTERFACEDOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TINTERFACEDOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	0

.data
	.balign 4
.globl	_$SYSTEM$_Ld54
_$SYSTEM$_Ld54:
	.byte	17
	.ascii	"TAggregatedObject"

.data
	.balign 4
.globl	VMT_SYSTEM_TAGGREGATEDOBJECT
VMT_SYSTEM_TAGGREGATEDOBJECT:
	.long	8,-8
	.long	VMT_SYSTEM_TOBJECT
	.long	_$SYSTEM$_Ld54
	.long	0,0
	.long	_$SYSTEM$_Ld55
	.long	RTTI_SYSTEM_TAGGREGATEDOBJECT
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	SYSTEM_TOBJECT_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	0

.data
	.balign 4
	.balign 4
.globl	_$SYSTEM$_Ld58
_$SYSTEM$_Ld58:
	.long	1
	.long	_$SYSTEM$_Ld59
	.long	VTBL_SYSTEM_TCONTAINEDOBJECT_$_IUNKNOWN
	.long	8
	.long	_$SYSTEM$_Ld60
	.long	0

.data
	.balign 4
.globl	VTBL_SYSTEM_TCONTAINEDOBJECT_$_IUNKNOWN
VTBL_SYSTEM_TCONTAINEDOBJECT_$_IUNKNOWN:
	.long	WRPR_SYSTEM_TCONTAINEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM_TCONTAINEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT
	.long	WRPR_SYSTEM_TCONTAINEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM_TAGGREGATEDOBJECT_$___ADDREF$$LONGINT
	.long	WRPR_SYSTEM_TCONTAINEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM_TAGGREGATEDOBJECT_$___RELEASE$$LONGINT
	.balign 4
.globl	_$SYSTEM$_Ld59
_$SYSTEM$_Ld59:
	.long	0
	.short	0,0
	.byte	192,0,0,0,0,0,0,70
	.balign 4
.globl	_$SYSTEM$_Ld60
_$SYSTEM$_Ld60:
	.byte	38
	.ascii	"{00000000-0000-0000-C000-000000000046}"
.globl	_$SYSTEM$_Ld57
_$SYSTEM$_Ld57:
	.byte	16
	.ascii	"TContainedObject"

.data
	.balign 4
.globl	VMT_SYSTEM_TCONTAINEDOBJECT
VMT_SYSTEM_TCONTAINEDOBJECT:
	.long	12,-12
	.long	VMT_SYSTEM_TAGGREGATEDOBJECT
	.long	_$SYSTEM$_Ld57
	.long	0,0
	.long	_$SYSTEM$_Ld61
	.long	RTTI_SYSTEM_TCONTAINEDOBJECT
	.long	0,0
	.long	_$SYSTEM$_Ld58
	.long	0
	.long	SYSTEM_TOBJECT_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	SYSTEM_TCONTAINEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT
	.long	0

.data
	.balign 4
.globl	THREADVARLIST_SYSTEM
THREADVARLIST_SYSTEM:
	.long	U_SYSTEM_THREADID
	.long	4
	.long	U_SYSTEM_ERROUTPUT
	.long	592
	.long	U_SYSTEM_OUTPUT
	.long	592
	.long	U_SYSTEM_INPUT
	.long	592
	.long	U_SYSTEM_STDOUT
	.long	592
	.long	U_SYSTEM_STDERR
	.long	592
	.long	U_SYSTEM_INOUTRES
	.long	2
	.long	U_SYSTEM_STACKTOP
	.long	4
	.long	U_SYSTEM_STACKBOTTOM
	.long	4
	.long	U_SYSTEM_STACKLENGTH
	.long	4
	.long	U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK
	.long	1
	.long	U_SYSTEM_SOFTFLOAT_EXCEPTION_FLAGS
	.long	1
	.long	U_SYSTEM_SOFTFLOAT_ROUNDING_MODE
	.long	1
	.long	U_SYSTEM_EXCEPTADDRSTACK
	.long	4
	.long	U_SYSTEM_EXCEPTOBJECTSTACK
	.long	4
	.long	U_SYSTEM_FREELISTS
	.long	184
	.long	U_SYSTEM_READWRITESTRTEXT
	.long	592
	.long	U_SYSTEM_DEFAULTCREATOR
	.long	256
	.long	U_SYSTEM_DEFAULTFILETYPE
	.long	256,0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
.globl	TC_SYSTEM_TEST8086
TC_SYSTEM_TEST8086:
	.byte	2

.data
.globl	TC_SYSTEM_TEST8087
TC_SYSTEM_TEST8087:
	.byte	3

.data
.globl	TC_SYSTEM_HAS_SSE_SUPPORT
TC_SYSTEM_HAS_SSE_SUPPORT:
	.byte	0

.data
.globl	TC_SYSTEM_HAS_MMX_SUPPORT
TC_SYSTEM_HAS_MMX_SUPPORT:
	.byte	0

.data
	.balign 2
.globl	TC_SYSTEM_MAX_FRAME_DUMP
TC_SYSTEM_MAX_FRAME_DUMP:
	.short	8

.data
	.balign 4
.globl	TC_SYSTEM_EXITPROC
TC_SYSTEM_EXITPROC:
	.long	0

.data
	.balign 4
.globl	TC_SYSTEM_ERRORADDR
TC_SYSTEM_ERRORADDR:
	.long	0

.data
	.balign 2
.globl	TC_SYSTEM_ERRORCODE
TC_SYSTEM_ERRORCODE:
	.short	0

.data
.globl	TC_SYSTEM_FILEMODE
TC_SYSTEM_FILEMODE:
	.byte	2

.data
	.balign 4
.globl	TC_SYSTEM_ISMULTITHREAD
TC_SYSTEM_ISMULTITHREAD:
	.long	0

.data
.globl	TC_SYSTEM_THREADINGALREADYUSED
TC_SYSTEM_THREADINGALREADYUSED:
	.byte	0

.data
.globl	TC_SYSTEM_STACKERROR
TC_SYSTEM_STACKERROR:
	.byte	0

.data
	.balign 4
.globl	TC_SYSTEM_INITPROC
TC_SYSTEM_INITPROC:
	.long	0

.data
.globl	TC_SYSTEM_MODULEISLIB
TC_SYSTEM_MODULEISLIB:
	.byte	0

.data
.globl	TC_SYSTEM_MODULEISPACKAGE
TC_SYSTEM_MODULEISPACKAGE:
	.byte	0

.data
.globl	TC_SYSTEM_MODULEISCPP
TC_SYSTEM_MODULEISCPP:
	.byte	0

.data
.globl	operatingsystem_islibrary
operatingsystem_islibrary:
	.byte	0

.data
.globl	operatingsystem_isconsole
operatingsystem_isconsole:
	.byte	0

.data
	.balign 4
.globl	TC_SYSTEM_CMDLINE
TC_SYSTEM_CMDLINE:
	.long	0

.data
	.balign 2
.globl	TC_SYSTEM_DEFAULT8087CW
TC_SYSTEM_DEFAULT8087CW:
	.short	4914

.data
.globl	TC_SYSTEM_RUNTIMEERROREXITCODES
TC_SYSTEM_RUNTIMEERROREXITCODES:
	.byte	0,203,204,200,201,215,207,200,205,206,219,216,218,217,202,220,221,222,223,224,225,227,212,228,229
	.byte	233,234

.data
	.balign 4
.globl	TC_SYSTEM_BACKTRACESTRFUNC
TC_SYSTEM_BACKTRACESTRFUNC:
	.long	SYSTEM_SYSBACKTRACESTR$POINTER$$SHORTSTRING

.data
	.balign 4
.globl	TC_SYSTEM_ERRORPROC
TC_SYSTEM_ERRORPROC:
	.long	0

.data
	.balign 4
.globl	TC_SYSTEM_ABSTRACTERRORPROC
TC_SYSTEM_ABSTRACTERRORPROC:
	.long	0

.data
	.balign 4
.globl	TC_SYSTEM_ASSERTERRORPROC
TC_SYSTEM_ASSERTERRORPROC:
	.long	SYSTEM_SYSASSERT$SHORTSTRING$SHORTSTRING$LONGINT$POINTER

.data
	.balign 4
.globl	TC_SYSTEM_SAFECALLERRORPROC
TC_SYSTEM_SAFECALLERRORPROC:
	.long	0

.data
	.balign 4
.globl	TC_SYSTEM_EXCEPTPROC
TC_SYSTEM_EXCEPTPROC:
	.long	0

.data
	.balign 4
.globl	TC_SYSTEM_RAISEPROC
TC_SYSTEM_RAISEPROC:
	.long	0

.data
	.balign 4
.globl	TC_SYSTEM_RAISEMAXFRAMECOUNT
TC_SYSTEM_RAISEMAXFRAMECOUNT:
	.long	16

.data
	.balign 4
.globl	TC_SYSTEM_IOBJECTINSTANCE
TC_SYSTEM_IOBJECTINSTANCE:
	.long	-652436748
	.short	15507,16911
	.byte	163,3,191,91,168,43,253,35

.data
	.balign 4
.globl	TC_SYSTEM_VARCLEARPROC
TC_SYSTEM_VARCLEARPROC:
	.long	0

.data
	.balign 4
.globl	TC_SYSTEM_VARADDREFPROC
TC_SYSTEM_VARADDREFPROC:
	.long	0

.data
	.balign 4
.globl	TC_SYSTEM_VARCOPYPROC
TC_SYSTEM_VARCOPYPROC:
	.long	0

.data
	.balign 4
.globl	TC_SYSTEM_VARTOLSTRPROC
TC_SYSTEM_VARTOLSTRPROC:
	.long	0

.data
	.balign 4
.globl	TC_SYSTEM_VARTOWSTRPROC
TC_SYSTEM_VARTOWSTRPROC:
	.long	0

.data
	.balign 4
.globl	TC_SYSTEM_MAXKEPTOSCHUNKS
TC_SYSTEM_MAXKEPTOSCHUNKS:
	.long	4

.data
	.balign 4
.globl	TC_SYSTEM_GROWHEAPSIZESMALL
TC_SYSTEM_GROWHEAPSIZESMALL:
	.long	32768

.data
	.balign 4
.globl	TC_SYSTEM_GROWHEAPSIZE1
TC_SYSTEM_GROWHEAPSIZE1:
	.long	262144

.data
	.balign 4
.globl	TC_SYSTEM_GROWHEAPSIZE2
TC_SYSTEM_GROWHEAPSIZE2:
	.long	1048576

.data
	.balign 4
.globl	TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
TC_SYSTEM_ALLOWDIRECTORYSEPARATORS:
	.byte	0,0,0,0,0,128,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.balign 4
.globl	TC_SYSTEM_ALLOWDRIVESEPARATORS
TC_SYSTEM_ALLOWDRIVESEPARATORS:
	.byte	0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
.globl	TC_SYSTEM_LFNSUPPORT
TC_SYSTEM_LFNSUPPORT:
	.byte	1

.data
.globl	TC_SYSTEM_FILENAMECASESENSITIVE
TC_SYSTEM_FILENAMECASESENSITIVE:
	.byte	0

.data
.globl	TC_SYSTEM_FILENAMECASEPRESERVING
TC_SYSTEM_FILENAMECASEPRESERVING:
	.byte	1

.data
.globl	TC_SYSTEM_CTRLZMARKSEOF
TC_SYSTEM_CTRLZMARKSEOF:
	.byte	1

.data
.globl	TC_SYSTEM_FSAPI64
TC_SYSTEM_FSAPI64:
	.byte	0

.data
	.balign 4
.globl	TC_SYSTEM_DEFAULTTEXTLINEBREAKSTYLE
TC_SYSTEM_DEFAULTTEXTLINEBREAKSTYLE:
	.long	1

.data
	.balign 4
TC_SYSTEM_OLDRANDSEED:
	.long	0

.data
	.balign 4
TC_SYSTEM_ERRORBASE:
	.long	0

.data
	.balign 4
TC_SYSTEM_FASTMOVEPROC_FORWARD:
	.long	SYSTEM_FORWARDS_IA32_3

.data
	.balign 4
TC_SYSTEM_FASTMOVEPROC_BACKWARD:
	.long	SYSTEM_BACKWARDS_IA32_3

.data
	.balign 4
TC_SYSTEM_MXCSR:
	.long	6400

.data
	.balign 4
.globl	_$SYSTEM$_Ld1
_$SYSTEM$_Ld1:
	.ascii	"\000\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld2
_$SYSTEM$_Ld2:
	.byte	0,0,0,0,0,0,0,128,254,63

.data
	.balign 4
.globl	_$SYSTEM$_Ld3
_$SYSTEM$_Ld3:
	.byte	0,0,0,0,0,0,0,64

.data
	.balign 4
TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_POW32:
	.byte	0,0,0,0,0,0,0,128,255,63
	.byte	0,0,0,0,0,0,0,160,2,64
	.byte	0,0,0,0,0,0,0,200,5,64
	.byte	0,0,0,0,0,0,0,250,8,64
	.byte	0,0,0,0,0,0,64,156,12,64
	.byte	0,0,0,0,0,0,80,195,15,64
	.byte	0,0,0,0,0,0,36,244,18,64
	.byte	0,0,0,0,0,128,150,152,22,64
	.byte	0,0,0,0,0,32,188,190,25,64
	.byte	0,0,0,0,0,40,107,238,28,64
	.byte	0,0,0,0,0,249,2,149,32,64
	.byte	0,0,0,0,64,183,67,186,35,64
	.byte	0,0,0,0,16,165,212,232,38,64
	.byte	0,0,0,0,42,231,132,145,42,64
	.byte	0,0,0,128,244,32,230,181,45,64
	.byte	0,0,0,160,49,169,95,227,48,64
	.byte	0,0,0,4,191,201,27,142,52,64
	.byte	0,0,0,197,46,188,162,177,55,64
	.byte	0,0,64,118,58,107,11,222,58,64
	.byte	0,0,232,137,4,35,199,138,62,64
	.byte	0,0,98,172,197,235,120,173,65,64
	.byte	0,128,122,23,183,38,215,216,68,64
	.byte	0,144,172,110,50,120,134,135,72,64
	.byte	0,180,87,10,63,22,104,169,75,64
	.byte	0,161,237,204,206,27,194,211,78,64
	.byte	160,132,20,64,97,81,89,132,82,64
	.byte	200,165,25,144,185,165,111,165,85,64
	.byte	58,15,32,244,39,143,203,206,88,64
	.byte	132,9,148,248,120,57,63,129,92,64
	.byte	229,11,185,54,215,7,143,161,95,64
	.byte	222,78,103,4,205,201,242,201,98,64
	.byte	150,34,129,69,64,124,111,252,101,64

.data
	.balign 4
TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_POW512:
	.byte	0,0,0,0,0,0,0,128,255,63
	.byte	158,181,112,43,168,173,197,157,105,64
	.byte	214,166,207,255,73,31,120,194,211,64
	.byte	164,20,155,197,22,171,179,239,61,65
	.byte	225,140,233,128,201,71,186,147,168,65
	.byte	172,23,230,127,43,161,22,182,18,66
	.byte	111,85,39,57,141,247,112,224,124,66
	.byte	50,201,60,227,255,150,82,138,231,66
	.byte	145,222,249,157,251,235,126,170,81,67
	.byte	142,47,106,92,25,252,38,210,187,67
	.byte	119,227,204,242,41,47,132,129,38,68
	.byte	211,10,144,219,0,39,164,159,144,68
	.byte	21,170,248,174,16,227,197,196,250,68
	.byte	88,156,176,233,7,156,138,242,100,69
	.byte	210,243,247,235,225,74,122,149,207,69
	.byte	98,162,149,7,220,216,62,184,57,70

.data
	.balign 4
TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_POW4096:
	.byte	0,0,0,0,0,0,0,128,255,63
	.byte	198,145,14,166,174,160,25,227,163,70
	.byte	21,12,117,129,134,117,118,201,72,77
	.byte	225,167,147,57,59,53,184,178,237,83
	.byte	229,93,61,197,93,59,139,158,146,90
	.byte	165,240,161,32,192,84,165,140,55,97
	.byte	130,90,139,216,37,93,137,249,219,103
	.byte	247,243,39,191,162,200,93,221,128,110
	.byte	154,151,32,138,2,82,96,196,37,117
	.byte	236,89,213,110,98,17,53,174,202,123

.data
	.balign 4
TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_NEGPOW32:
	.byte	0,0,0,0,0,0,0,128,255,63
	.byte	205,204,204,204,204,204,204,204,251,63
	.byte	10,215,163,112,61,10,215,163,248,63
	.byte	59,223,79,141,151,110,18,131,245,63
	.byte	44,101,25,226,88,23,183,209,241,63
	.byte	35,132,71,27,71,172,197,167,238,63
	.byte	182,105,108,175,5,189,55,134,235,63
	.byte	188,66,122,229,213,148,191,214,231,63
	.byte	253,206,97,132,17,119,204,171,228,63
	.byte	151,165,180,54,65,95,112,137,225,63
	.byte	191,213,237,189,206,254,230,219,221,63
	.byte	255,170,36,203,11,255,235,175,218,63
	.byte	204,136,80,111,9,204,188,140,215,63
	.byte	19,14,180,75,66,19,46,225,211,63
	.byte	15,216,92,9,53,220,36,180,208,63
	.byte	217,172,176,58,247,124,29,144,205,63
	.byte	91,225,77,196,190,148,149,230,201,63
	.byte	73,180,164,54,50,170,119,184,198,63
	.byte	7,93,29,146,142,238,146,147,195,63
	.byte	165,97,149,182,125,74,30,236,191,63
	.byte	235,26,17,146,100,8,229,188,188,63
	.byte	239,123,218,116,80,160,29,151,185,63
	.byte	177,44,247,186,128,0,201,241,181,63
	.byte	39,138,146,149,0,154,109,193,178,63
	.byte	83,59,117,68,205,20,190,154,175,63
	.byte	81,197,238,211,174,135,150,247,171,63
	.byte	219,157,88,118,37,6,18,198,168,63
	.byte	72,126,224,145,183,209,116,158,165,63
	.byte	14,202,0,131,242,181,135,253,161,63
	.byte	62,59,154,53,245,247,210,202,158,63
	.byte	50,252,20,94,247,95,66,162,155,63
	.byte	245,252,67,75,44,179,206,129,152,63

.data
	.balign 4
TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_NEGPOW512:
	.byte	0,0,0,0,0,0,0,0,0,0
	.byte	186,148,57,69,173,30,177,207,148,63
	.byte	165,233,57,165,39,234,127,168,42,63
	.byte	154,83,117,253,247,2,180,136,192,62
	.byte	159,228,188,100,124,70,208,221,85,62
	.byte	146,160,115,219,147,224,244,179,235,61
	.byte	4,204,35,84,119,131,255,145,129,61
	.byte	185,78,49,74,236,60,229,236,22,61
	.byte	54,25,122,99,37,67,49,192,172,60
	.byte	118,197,106,131,98,206,236,155,66,60
	.byte	206,56,130,71,151,184,0,253,215,59
	.byte	124,79,243,70,19,161,66,205,109,59
	.byte	89,8,27,177,232,227,134,166,3,59
	.byte	166,104,252,63,129,73,26,135,153,58
	.byte	71,66,7,182,153,117,55,219,46,58
	.byte	55,119,0,121,180,131,217,177,196,57

.data
	.balign 4
TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_NEGPOW4096:
	.byte	0,0,0,0,0,0,0,0,0,0
	.byte	29,210,35,219,50,238,73,144,90,57
	.byte	191,192,87,218,165,130,166,162,181,50
	.byte	182,17,167,82,159,68,89,183,16,44
	.byte	228,45,54,52,79,83,174,206,107,37
	.byte	7,164,192,222,194,125,251,232,198,30
	.byte	141,90,87,145,60,191,80,131,34,24
	.byte	102,98,253,131,143,175,6,148,125,17
	.byte	223,159,206,210,200,4,221,166,216,10
	.byte	167,204,152,232,243,5,25,188,51,4

.data
	.balign 4
.globl	_$SYSTEM$_Ld4
_$SYSTEM$_Ld4:
	.byte	0,0,0,0,0,0,0,128,255,127

.data
TC_SYSTEM_HEXTBL:
	.byte	48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70

.data
	.balign 4
.globl	_$SYSTEM$_Ld5
_$SYSTEM$_Ld5:
	.byte	90,83,203,248,255,255,255,255,231,63

.data
	.balign 4
.globl	_$SYSTEM$_Ld6
_$SYSTEM$_Ld6:
	.byte	91,72,77,12,0,0,0,128,203,63

.data
	.balign 4
.globl	_$SYSTEM$_Ld7
_$SYSTEM$_Ld7:
	.byte	206,161,89,7,0,0,0,128,192,63

.data
	.balign 4
.globl	_$SYSTEM$_Ld8
_$SYSTEM$_Ld8:
	.ascii	"\004-Inf\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld9
_$SYSTEM$_Ld9:
	.ascii	"\004+Inf\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld10
_$SYSTEM$_Ld10:
	.ascii	"\003Nan\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld11
_$SYSTEM$_Ld11:
	.ascii	"\002 0\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld12
_$SYSTEM$_Ld12:
	.byte	0,0,0,0,0,0,0,160,2,64

.data
	.balign 4
.globl	_$SYSTEM$_Ld13
_$SYSTEM$_Ld13:
	.byte	205,204,204,204,204,204,204,204,251,63

.data
	.balign 4
.globl	_$SYSTEM$_Ld14
_$SYSTEM$_Ld14:
	.ascii	"(0000000000000000000000000000000000000000\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld15
_$SYSTEM$_Ld15:
	.ascii	"\001-\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld16
_$SYSTEM$_Ld16:
	.ascii	"\001+\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld17
_$SYSTEM$_Ld17:
	.ascii	"\001E\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld18
_$SYSTEM$_Ld18:
	.byte	0,0,0,0,0,0,0,160,1,64

.data
	.balign 4
.globl	_$SYSTEM$_Ld19
_$SYSTEM$_Ld19:
	.ascii	"\004TRUE\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld20
_$SYSTEM$_Ld20:
	.ascii	"\005FALSE\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld21
_$SYSTEM$_Ld21:
	.byte	0,0,0,0,0,0,0,128,255,191

.data
	.balign 4
TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_MAXINT64:
	.long	-1,2147483647

.data
	.balign 4
TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_INT64EDGE:
	.long	-858993461,214748364

.data
	.balign 4
TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_INT64EDGE2:
	.long	-858993460,214748364

.data
	.balign 4
.globl	_$SYSTEM$_Ld22
_$SYSTEM$_Ld22:
	.byte	0,0,0,0,0,0,64,156,12,64

.data
	.balign 4
.globl	_$SYSTEM$_Ld23
_$SYSTEM$_Ld23:
	.ascii	"6This binary has no unicodestrings support compiled"
	.ascii	" in.\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld24
_$SYSTEM$_Ld24:
	.ascii	"SRecompile the application with a unicodestrings-ma"
	.ascii	"nager in the program uses clause.\000"
	.balign 4
.globl	_$SYSTEM$_Ld25
_$SYSTEM$_Ld25:
	.long	0
	.short	0,0
	.byte	192,0,0,0,0,0,0,70
	.balign 4
.globl	_$SYSTEM$_Ld26
_$SYSTEM$_Ld26:
	.long	0
	.short	0,0
	.byte	192,0,0,0,0,0,0,70
	.balign 4
.globl	_$SYSTEM$_Ld27
_$SYSTEM$_Ld27:
	.long	0
	.short	0,0
	.byte	192,0,0,0,0,0,0,70

.data
	.balign 4
TC_SYSTEM_CATCHALLEXCEPTIONS:
	.long	-1

.data
	.balign 4
TC_SYSTEM_MTI:
	.long	625

.data
	.balign 4
TC_SYSTEM_GENRAND_MT19937$$LONGINT_MAG01:
	.long	0,-1727483681

.data
	.balign 4
.globl	_$SYSTEM$_Ld28
_$SYSTEM$_Ld28:
	.byte	0,0,0,0,0,0,0,128,223,63

.data
	.balign 4
.globl	_$SYSTEM$_Ld29
_$SYSTEM$_Ld29:
	.ascii	"\016Runtime error \000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld30
_$SYSTEM$_Ld30:
	.ascii	"\005 at $\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld31
_$SYSTEM$_Ld31:
	.ascii	"\003  $\000"

.data
	.balign 4
TC_SYSTEM_EXITPROCLIST:
	.long	0

.data
	.balign 4
.globl	_$SYSTEM$_Ld32
_$SYSTEM$_Ld32:
	.ascii	"\020Assertion failed\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld33
_$SYSTEM$_Ld33:
	.ascii	"\002 (\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld34
_$SYSTEM$_Ld34:
	.ascii	"\007, line \000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld35
_$SYSTEM$_Ld35:
	.ascii	"\002).\000"

.data
	.balign 4
TC_SYSTEM_MEMORYMANAGER:
	.byte	0,0,0,0
	.long	SYSTEM_SYSGETMEM$LONGWORD$$POINTER
	.long	SYSTEM_SYSFREEMEM$POINTER$$LONGWORD
	.long	SYSTEM_SYSFREEMEMSIZE$POINTER$LONGWORD$$LONGWORD
	.long	SYSTEM_SYSALLOCMEM$LONGWORD$$POINTER
	.long	SYSTEM_SYSREALLOCMEM$POINTER$LONGWORD$$POINTER
	.long	SYSTEM_SYSMEMSIZE$POINTER$$LONGWORD
	.long	0,0,0
	.long	SYSTEM_SYSGETHEAPSTATUS$$THEAPSTATUS
	.long	SYSTEM_SYSGETFPCHEAPSTATUS$$TFPCHEAPSTATUS

.data
	.balign 4
.globl	_$SYSTEM$_Ld36
_$SYSTEM$_Ld36:
	.ascii	".This binary has no thread support compiled in.\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld37
_$SYSTEM$_Ld37:
	.ascii	"jRecompile the application with a thread-driver in "
	.ascii	"the program uses clause before other units using th"
	.ascii	"read.\000"

.data
	.balign 4
TC_SYSTEM_FILEHANDLECOUNT:
	.long	20

.data
	.balign 4
.globl	_$SYSTEM$_Ld38
_$SYSTEM$_Ld38:
	.ascii	"\002\015\012\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld39
_$SYSTEM$_Ld39:
	.ascii	"\004true\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld40
_$SYSTEM$_Ld40:
	.ascii	"\005false\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld41
_$SYSTEM$_Ld41:
	.ascii	"\004fpc_\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld42
_$SYSTEM$_Ld42:
	.ascii	"\004.tmp\000"

.data
	.balign 4
TC_SYSTEM_RESOURCEMANAGER:
	.long	SYSTEM_DEFAULTHINSTANCE$$LONGWORD
	.long	SYSTEM_DEFAULTENUMRESOURCETYPES$LONGWORD$ENUMRESTYPEPROC$LONGINT$$LONGBOOL
	.long	SYSTEM_DEFAULTENUMRESOURCENAMES$LONGWORD$PCHAR$ENUMRESNAMEPROC$LONGINT$$LONGBOOL
	.long	SYSTEM_DEFAULTENUMRESOURCELANGUAGES$LONGWORD$PCHAR$PCHAR$ENUMRESLANGPROC$LONGINT$$LONGBOOL
	.long	SYSTEM_DEFAULTFINDRESOURCE$LONGWORD$PCHAR$PCHAR$$LONGWORD
	.long	SYSTEM_DEFAULTFINDRESOURCEEX$LONGWORD$PCHAR$PCHAR$WORD$$LONGWORD
	.long	SYSTEM_DEFAULTLOADRESOURCE$LONGWORD$LONGWORD$$LONGWORD
	.long	SYSTEM_DEFAULTSIZEOFRESOURCE$LONGWORD$LONGWORD$$LONGWORD
	.long	SYSTEM_DEFAULTLOCKRESOURCE$LONGWORD$$POINTER
	.long	SYSTEM_DEFAULTUNLOCKRESOURCE$LONGWORD$$LONGBOOL
	.long	SYSTEM_DEFAULTFREERESOURCE$LONGWORD$$LONGBOOL

.data
	.balign 4
TC_SYSTEM_CTRLBREAKHANDLER:
	.long	0

.data
	.balign 4
.globl	_$SYSTEM$_Ld43
_$SYSTEM$_Ld43:
	.ascii	"\001\000\000"

.data
	.balign 4
TC_SYSTEM_WININITIALIZE:
	.long	0

.data
	.balign 4
TC_SYSTEM_WINCREATEMSGQUEUE:
	.long	0

.data
	.balign 4
TC_SYSTEM_WINMESSAGEBOX:
	.long	0

.data
	.balign 4
TC_SYSTEM_ENVSIZE:
	.long	0

.data
	.balign 4
.globl	_$SYSTEM$_Ld44
_$SYSTEM$_Ld44:
	.ascii	"Error\000"

.data
TC_SYSTEM_FATALHEAP:
	.byte	70,65,84,65,76,58,32,67,97,110,110,111,116,32,105,110,105,116,105,97,108,105,122,101,32,104,101,97
	.byte	112,33,33,13,10,36
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
.globl	INIT_SYSTEM_undefined
INIT_SYSTEM_undefined:
	.byte	0
	.ascii	"\012$undefined"

.data
	.balign 4
.globl	RTTI_SYSTEM_undefined
RTTI_SYSTEM_undefined:
	.byte	0
	.ascii	"\012$undefined"

.data
	.balign 4
.globl	INIT_SYSTEM_formal
INIT_SYSTEM_formal:
	.byte	0
	.ascii	"\007$formal"

.data
	.balign 4
.globl	RTTI_SYSTEM_formal
RTTI_SYSTEM_formal:
	.byte	0
	.ascii	"\007$formal"

.data
	.balign 4
.globl	INIT_SYSTEM_typedformal
INIT_SYSTEM_typedformal:
	.byte	0
	.ascii	"\014$typedformal"

.data
	.balign 4
.globl	RTTI_SYSTEM_typedformal
RTTI_SYSTEM_typedformal:
	.byte	0
	.ascii	"\014$typedformal"

.data
	.balign 4
.globl	INIT_SYSTEM_void
INIT_SYSTEM_void:
	.byte	1,5
	.ascii	"$void"
	.byte	1
	.long	0,0

.data
	.balign 4
.globl	RTTI_SYSTEM_void
RTTI_SYSTEM_void:
	.byte	1,5
	.ascii	"$void"
	.byte	1
	.long	0,0

.data
	.balign 4
.globl	INIT_SYSTEM_BYTE
INIT_SYSTEM_BYTE:
	.byte	1,4
	.ascii	"Byte"
	.byte	1
	.long	0,255

.data
	.balign 4
.globl	RTTI_SYSTEM_BYTE
RTTI_SYSTEM_BYTE:
	.byte	1,4
	.ascii	"Byte"
	.byte	1
	.long	0,255

.data
	.balign 4
.globl	INIT_SYSTEM_SHORTINT
INIT_SYSTEM_SHORTINT:
	.byte	1,8
	.ascii	"ShortInt"
	.byte	0
	.long	-128,127

.data
	.balign 4
.globl	RTTI_SYSTEM_SHORTINT
RTTI_SYSTEM_SHORTINT:
	.byte	1,8
	.ascii	"ShortInt"
	.byte	0
	.long	-128,127

.data
	.balign 4
.globl	INIT_SYSTEM_WORD
INIT_SYSTEM_WORD:
	.byte	1,4
	.ascii	"Word"
	.byte	3
	.long	0,65535

.data
	.balign 4
.globl	RTTI_SYSTEM_WORD
RTTI_SYSTEM_WORD:
	.byte	1,4
	.ascii	"Word"
	.byte	3
	.long	0,65535

.data
	.balign 4
.globl	INIT_SYSTEM_SMALLINT
INIT_SYSTEM_SMALLINT:
	.byte	1,8
	.ascii	"SmallInt"
	.byte	2
	.long	-32768,32767

.data
	.balign 4
.globl	RTTI_SYSTEM_SMALLINT
RTTI_SYSTEM_SMALLINT:
	.byte	1,8
	.ascii	"SmallInt"
	.byte	2
	.long	-32768,32767

.data
	.balign 4
.globl	INIT_SYSTEM_LONGWORD
INIT_SYSTEM_LONGWORD:
	.byte	1,8
	.ascii	"LongWord"
	.byte	5
	.long	0,-1

.data
	.balign 4
.globl	RTTI_SYSTEM_LONGWORD
RTTI_SYSTEM_LONGWORD:
	.byte	1,8
	.ascii	"LongWord"
	.byte	5
	.long	0,-1

.data
	.balign 4
.globl	INIT_SYSTEM_LONGINT
INIT_SYSTEM_LONGINT:
	.byte	1,7
	.ascii	"LongInt"
	.byte	4
	.long	-2147483648,2147483647

.data
	.balign 4
.globl	RTTI_SYSTEM_LONGINT
RTTI_SYSTEM_LONGINT:
	.byte	1,7
	.ascii	"LongInt"
	.byte	4
	.long	-2147483648,2147483647

.data
	.balign 4
.globl	INIT_SYSTEM_QWORD
INIT_SYSTEM_QWORD:
	.byte	20,5
	.ascii	"QWord"
	.long	0,0
	.long	-1,-1

.data
	.balign 4
.globl	RTTI_SYSTEM_QWORD
RTTI_SYSTEM_QWORD:
	.byte	20,5
	.ascii	"QWord"
	.long	0,0
	.long	-1,-1

.data
	.balign 4
.globl	INIT_SYSTEM_INT64
INIT_SYSTEM_INT64:
	.byte	19,5
	.ascii	"Int64"
	.long	0,-2147483648
	.long	-1,2147483647

.data
	.balign 4
.globl	RTTI_SYSTEM_INT64
RTTI_SYSTEM_INT64:
	.byte	19,5
	.ascii	"Int64"
	.long	0,-2147483648
	.long	-1,2147483647

.data
	.balign 4
.globl	INIT_SYSTEM_BOOLEAN
INIT_SYSTEM_BOOLEAN:
	.byte	18,7
	.ascii	"Boolean"
	.byte	1
	.long	0,1

.data
	.balign 4
.globl	RTTI_SYSTEM_BOOLEAN
RTTI_SYSTEM_BOOLEAN:
	.byte	18,7
	.ascii	"Boolean"
	.byte	1
	.long	0,1

.data
	.balign 4
.globl	INIT_SYSTEM_BOOLEAN16
INIT_SYSTEM_BOOLEAN16:
	.byte	1,9
	.ascii	"Boolean16"
	.byte	3
	.long	0,1

.data
	.balign 4
.globl	RTTI_SYSTEM_BOOLEAN16
RTTI_SYSTEM_BOOLEAN16:
	.byte	1,9
	.ascii	"Boolean16"
	.byte	3
	.long	0,1

.data
	.balign 4
.globl	INIT_SYSTEM_BOOLEAN32
INIT_SYSTEM_BOOLEAN32:
	.byte	1,9
	.ascii	"Boolean32"
	.byte	5
	.long	0,1

.data
	.balign 4
.globl	RTTI_SYSTEM_BOOLEAN32
RTTI_SYSTEM_BOOLEAN32:
	.byte	1,9
	.ascii	"Boolean32"
	.byte	5
	.long	0,1

.data
	.balign 4
.globl	INIT_SYSTEM_BOOLEAN64
INIT_SYSTEM_BOOLEAN64:
	.byte	1,9
	.ascii	"Boolean64"
	.byte	1
	.long	0,1

.data
	.balign 4
.globl	RTTI_SYSTEM_BOOLEAN64
RTTI_SYSTEM_BOOLEAN64:
	.byte	1,9
	.ascii	"Boolean64"
	.byte	1
	.long	0,1

.data
	.balign 4
.globl	INIT_SYSTEM_BYTEBOOL
INIT_SYSTEM_BYTEBOOL:
	.byte	1,8
	.ascii	"ByteBool"
	.byte	0
	.long	0,-1

.data
	.balign 4
.globl	RTTI_SYSTEM_BYTEBOOL
RTTI_SYSTEM_BYTEBOOL:
	.byte	1,8
	.ascii	"ByteBool"
	.byte	0
	.long	0,-1

.data
	.balign 4
.globl	INIT_SYSTEM_WORDBOOL
INIT_SYSTEM_WORDBOOL:
	.byte	1,8
	.ascii	"WordBool"
	.byte	2
	.long	0,-1

.data
	.balign 4
.globl	RTTI_SYSTEM_WORDBOOL
RTTI_SYSTEM_WORDBOOL:
	.byte	1,8
	.ascii	"WordBool"
	.byte	2
	.long	0,-1

.data
	.balign 4
.globl	INIT_SYSTEM_LONGBOOL
INIT_SYSTEM_LONGBOOL:
	.byte	1,8
	.ascii	"LongBool"
	.byte	4
	.long	0,-1

.data
	.balign 4
.globl	RTTI_SYSTEM_LONGBOOL
RTTI_SYSTEM_LONGBOOL:
	.byte	1,8
	.ascii	"LongBool"
	.byte	4
	.long	0,-1

.data
	.balign 4
.globl	INIT_SYSTEM_QWORDBOOL
INIT_SYSTEM_QWORDBOOL:
	.byte	1,9
	.ascii	"QWordBool"
	.byte	0
	.long	0,-1

.data
	.balign 4
.globl	RTTI_SYSTEM_QWORDBOOL
RTTI_SYSTEM_QWORDBOOL:
	.byte	1,9
	.ascii	"QWordBool"
	.byte	0
	.long	0,-1

.data
	.balign 4
.globl	INIT_SYSTEM_CHAR
INIT_SYSTEM_CHAR:
	.byte	2,4
	.ascii	"Char"
	.byte	1
	.long	0,255

.data
	.balign 4
.globl	RTTI_SYSTEM_CHAR
RTTI_SYSTEM_CHAR:
	.byte	2,4
	.ascii	"Char"
	.byte	1
	.long	0,255

.data
	.balign 4
.globl	INIT_SYSTEM_WIDECHAR
INIT_SYSTEM_WIDECHAR:
	.byte	17,8
	.ascii	"WideChar"
	.byte	3
	.long	0,65535

.data
	.balign 4
.globl	RTTI_SYSTEM_WIDECHAR
RTTI_SYSTEM_WIDECHAR:
	.byte	17,8
	.ascii	"WideChar"
	.byte	3
	.long	0,65535

.data
	.balign 4
.globl	INIT_SYSTEM_SHORTSTRING
INIT_SYSTEM_SHORTSTRING:
	.byte	7,11
	.ascii	"ShortString"
	.byte	255

.data
	.balign 4
.globl	RTTI_SYSTEM_SHORTSTRING
RTTI_SYSTEM_SHORTSTRING:
	.byte	7,11
	.ascii	"ShortString"
	.byte	255

.data
	.balign 4
.globl	INIT_SYSTEM_longstring
INIT_SYSTEM_longstring:
	.byte	8,11
	.ascii	"$longstring"

.data
	.balign 4
.globl	RTTI_SYSTEM_longstring
RTTI_SYSTEM_longstring:
	.byte	8,11
	.ascii	"$longstring"

.data
	.balign 4
.globl	INIT_SYSTEM_ANSISTRING
INIT_SYSTEM_ANSISTRING:
	.byte	9,10
	.ascii	"AnsiString"

.data
	.balign 4
.globl	RTTI_SYSTEM_ANSISTRING
RTTI_SYSTEM_ANSISTRING:
	.byte	9,10
	.ascii	"AnsiString"

.data
	.balign 4
.globl	INIT_SYSTEM_WIDESTRING
INIT_SYSTEM_WIDESTRING:
	.byte	24,10
	.ascii	"WideString"

.data
	.balign 4
.globl	RTTI_SYSTEM_WIDESTRING
RTTI_SYSTEM_WIDESTRING:
	.byte	24,10
	.ascii	"WideString"

.data
	.balign 4
.globl	INIT_SYSTEM_UNICODESTRING
INIT_SYSTEM_UNICODESTRING:
	.byte	24,13
	.ascii	"UnicodeString"

.data
	.balign 4
.globl	RTTI_SYSTEM_UNICODESTRING
RTTI_SYSTEM_UNICODESTRING:
	.byte	24,13
	.ascii	"UnicodeString"

.data
	.balign 4
.globl	INIT_SYSTEM_OPENSTRING
INIT_SYSTEM_OPENSTRING:
	.byte	7,10
	.ascii	"OpenString"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSTEM_OPENSTRING
RTTI_SYSTEM_OPENSTRING:
	.byte	7,10
	.ascii	"OpenString"
	.byte	0

.data
	.balign 4
.globl	INIT_SYSTEM_openchararray
INIT_SYSTEM_openchararray:
	.byte	12
	.ascii	"\004Char"
	.long	1,0
	.long	INIT_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_SYSTEM_openchararray
RTTI_SYSTEM_openchararray:
	.byte	12
	.ascii	"\004Char"
	.long	1,0
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	INIT_SYSTEM_SINGLE
INIT_SYSTEM_SINGLE:
	.byte	4,6
	.ascii	"Single"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSTEM_SINGLE
RTTI_SYSTEM_SINGLE:
	.byte	4,6
	.ascii	"Single"
	.byte	0

.data
	.balign 4
.globl	INIT_SYSTEM_DOUBLE
INIT_SYSTEM_DOUBLE:
	.byte	4,6
	.ascii	"Double"
	.byte	1

.data
	.balign 4
.globl	RTTI_SYSTEM_DOUBLE
RTTI_SYSTEM_DOUBLE:
	.byte	4,6
	.ascii	"Double"
	.byte	1

.data
	.balign 4
.globl	INIT_SYSTEM_EXTENDED
INIT_SYSTEM_EXTENDED:
	.byte	4,8
	.ascii	"Extended"
	.byte	2

.data
	.balign 4
.globl	RTTI_SYSTEM_EXTENDED
RTTI_SYSTEM_EXTENDED:
	.byte	4,8
	.ascii	"Extended"
	.byte	2

.data
	.balign 4
.globl	INIT_SYSTEM_CEXTENDED
INIT_SYSTEM_CEXTENDED:
	.byte	4,9
	.ascii	"CExtended"
	.byte	2

.data
	.balign 4
.globl	RTTI_SYSTEM_CEXTENDED
RTTI_SYSTEM_CEXTENDED:
	.byte	4,9
	.ascii	"CExtended"
	.byte	2

.data
	.balign 4
.globl	INIT_SYSTEM_CURRENCY
INIT_SYSTEM_CURRENCY:
	.byte	4,8
	.ascii	"Currency"
	.byte	4

.data
	.balign 4
.globl	RTTI_SYSTEM_CURRENCY
RTTI_SYSTEM_CURRENCY:
	.byte	4,8
	.ascii	"Currency"
	.byte	4

.data
	.balign 4
.globl	INIT_SYSTEM_POINTER
INIT_SYSTEM_POINTER:
	.byte	0
	.ascii	"\007Pointer"

.data
	.balign 4
.globl	RTTI_SYSTEM_POINTER
RTTI_SYSTEM_POINTER:
	.byte	0
	.ascii	"\007Pointer"

.data
	.balign 4
.globl	INIT_SYSTEM_char_pointer
INIT_SYSTEM_char_pointer:
	.byte	0
	.ascii	"\015$char_pointer"

.data
	.balign 4
.globl	RTTI_SYSTEM_char_pointer
RTTI_SYSTEM_char_pointer:
	.byte	0
	.ascii	"\015$char_pointer"

.data
	.balign 4
.globl	INIT_SYSTEM_widechar_pointer
INIT_SYSTEM_widechar_pointer:
	.byte	0
	.ascii	"\021$widechar_pointer"

.data
	.balign 4
.globl	RTTI_SYSTEM_widechar_pointer
RTTI_SYSTEM_widechar_pointer:
	.byte	0
	.ascii	"\021$widechar_pointer"

.data
	.balign 4
.globl	INIT_SYSTEM_FARPOINTER
INIT_SYSTEM_FARPOINTER:
	.byte	0
	.ascii	"\012FarPointer"

.data
	.balign 4
.globl	RTTI_SYSTEM_FARPOINTER
RTTI_SYSTEM_FARPOINTER:
	.byte	0
	.ascii	"\012FarPointer"

.data
	.balign 4
.globl	INIT_SYSTEM_file
INIT_SYSTEM_file:
	.byte	0
	.ascii	"\005$file"

.data
	.balign 4
.globl	RTTI_SYSTEM_file
RTTI_SYSTEM_file:
	.byte	0
	.ascii	"\005$file"

.data
	.balign 4
.globl	INIT_SYSTEM_VARIANT
INIT_SYSTEM_VARIANT:
	.byte	11,7
	.ascii	"Variant"

.data
	.balign 4
.globl	RTTI_SYSTEM_VARIANT
RTTI_SYSTEM_VARIANT:
	.byte	11,7
	.ascii	"Variant"

.data
	.balign 4
.globl	INIT_SYSTEM_OLEVARIANT
INIT_SYSTEM_OLEVARIANT:
	.byte	11,10
	.ascii	"OleVariant"

.data
	.balign 4
.globl	RTTI_SYSTEM_OLEVARIANT
RTTI_SYSTEM_OLEVARIANT:
	.byte	11,10
	.ascii	"OleVariant"

.data
	.balign 4
.globl	INIT_SYSTEM_COMP
INIT_SYSTEM_COMP:
	.byte	4,4
	.ascii	"Comp"
	.byte	3

.data
	.balign 4
.globl	RTTI_SYSTEM_COMP
RTTI_SYSTEM_COMP:
	.byte	4,4
	.ascii	"Comp"
	.byte	3

.data
	.balign 4
.globl	INIT_SYSTEM_TEXT
INIT_SYSTEM_TEXT:
	.byte	0
	.ascii	"\004Text"

.data
	.balign 4
.globl	RTTI_SYSTEM_TEXT
RTTI_SYSTEM_TEXT:
	.byte	0
	.ascii	"\004Text"

.data
	.balign 4
.globl	INIT_SYSTEM_TYPEDFILE
INIT_SYSTEM_TYPEDFILE:
	.byte	0
	.ascii	"\011TypedFile"

.data
	.balign 4
.globl	RTTI_SYSTEM_TYPEDFILE
RTTI_SYSTEM_TYPEDFILE:
	.byte	0
	.ascii	"\011TypedFile"

.data
	.balign 4
.globl	INIT_SYSTEM___vtbl_ptr_type
INIT_SYSTEM___vtbl_ptr_type:
	.byte	13,16
	.ascii	"$__vtbl_ptr_type"
	.long	20,0

.data
	.balign 4
.globl	RTTI_SYSTEM_pvmt
RTTI_SYSTEM_pvmt:
	.byte	0
	.ascii	"\005$pvmt"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF46
RTTI_SYSTEM_DEF46:
	.byte	0
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF47
RTTI_SYSTEM_DEF47:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	RTTI_SYSTEM_POINTER
	.long	-1

.data
	.balign 4
.globl	RTTI_SYSTEM___vtbl_ptr_type
RTTI_SYSTEM___vtbl_ptr_type:
	.byte	13,16
	.ascii	"$__vtbl_ptr_type"
	.long	20,5
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4
	.long	RTTI_SYSTEM_pvmt
	.long	8
	.long	RTTI_SYSTEM_DEF46
	.long	12
	.long	RTTI_SYSTEM_DEF47
	.long	16

.data
	.balign 4
.globl	INIT_SYSTEM_pvmt
INIT_SYSTEM_pvmt:
	.byte	0
	.ascii	"\005$pvmt"

.data
	.balign 4
.globl	INIT_SYSTEM_vtblarray
INIT_SYSTEM_vtblarray:
	.byte	12
	.ascii	"\012$vtblarray"
	.long	4,2
	.long	INIT_SYSTEM_pvmt
	.long	-1

.data
	.balign 4
.globl	RTTI_SYSTEM_vtblarray
RTTI_SYSTEM_vtblarray:
	.byte	12
	.ascii	"\012$vtblarray"
	.long	4,2
	.long	RTTI_SYSTEM_pvmt
	.long	-1

.data
	.balign 4
.globl	INIT_SYSTEM_methodpointer
INIT_SYSTEM_methodpointer:
	.byte	13,14
	.ascii	"$methodpointer"
	.long	8,0

.data
	.balign 4
.globl	RTTI_SYSTEM_methodpointer
RTTI_SYSTEM_methodpointer:
	.byte	13,14
	.ascii	"$methodpointer"
	.long	8,2
	.long	RTTI_SYSTEM_POINTER
	.long	0
	.long	RTTI_SYSTEM_POINTER
	.long	4

.data
	.balign 4
.globl	INIT_SYSTEM_REAL
INIT_SYSTEM_REAL:
	.byte	4,4
	.ascii	"Real"
	.byte	1

.data
	.balign 4
.globl	RTTI_SYSTEM_REAL
RTTI_SYSTEM_REAL:
	.byte	4,4
	.ascii	"Real"
	.byte	1

.data
	.balign 4
.globl	INIT_SYSTEM_PCHAR
INIT_SYSTEM_PCHAR:
	.byte	0
	.ascii	"\005PChar"

.data
	.balign 4
.globl	RTTI_SYSTEM_PCHAR
RTTI_SYSTEM_PCHAR:
	.byte	0
	.ascii	"\005PChar"

.data
	.balign 4
.globl	INIT_SYSTEM_PPCHAR
INIT_SYSTEM_PPCHAR:
	.byte	0
	.ascii	"\006PPChar"

.data
	.balign 4
.globl	RTTI_SYSTEM_PPCHAR
RTTI_SYSTEM_PPCHAR:
	.byte	0
	.ascii	"\006PPChar"

.data
	.balign 4
.globl	INIT_SYSTEM_PPPCHAR
INIT_SYSTEM_PPPCHAR:
	.byte	0
	.ascii	"\007PPPChar"

.data
	.balign 4
.globl	RTTI_SYSTEM_PPPCHAR
RTTI_SYSTEM_PPPCHAR:
	.byte	0
	.ascii	"\007PPPChar"

.data
	.balign 4
.globl	INIT_SYSTEM_UCS4CHAR
INIT_SYSTEM_UCS4CHAR:
	.byte	1,8
	.ascii	"UCS4Char"
	.byte	4
	.long	0,1114111

.data
	.balign 4
.globl	RTTI_SYSTEM_UCS4CHAR
RTTI_SYSTEM_UCS4CHAR:
	.byte	1,8
	.ascii	"UCS4Char"
	.byte	4
	.long	0,1114111

.data
	.balign 4
.globl	INIT_SYSTEM_PUCS4CHAR
INIT_SYSTEM_PUCS4CHAR:
	.byte	0
	.ascii	"\011PUCS4Char"

.data
	.balign 4
.globl	RTTI_SYSTEM_PUCS4CHAR
RTTI_SYSTEM_PUCS4CHAR:
	.byte	0
	.ascii	"\011PUCS4Char"

.data
	.balign 4
.globl	INIT_SYSTEM_TUCS4CHARARRAY
INIT_SYSTEM_TUCS4CHARARRAY:
	.byte	12
	.ascii	"\016TUCS4CharArray"
	.long	4,251658240
	.long	INIT_SYSTEM_UCS4CHAR
	.long	3

.data
	.balign 4
.globl	RTTI_SYSTEM_TUCS4CHARARRAY
RTTI_SYSTEM_TUCS4CHARARRAY:
	.byte	12
	.ascii	"\016TUCS4CharArray"
	.long	4,251658240
	.long	RTTI_SYSTEM_UCS4CHAR
	.long	3

.data
	.balign 4
.globl	INIT_SYSTEM_PUCS4CHARARRAY
INIT_SYSTEM_PUCS4CHARARRAY:
	.byte	0
	.ascii	"\016PUCS4CharArray"

.data
	.balign 4
.globl	RTTI_SYSTEM_PUCS4CHARARRAY
RTTI_SYSTEM_PUCS4CHARARRAY:
	.byte	0
	.ascii	"\016PUCS4CharArray"

.data
	.balign 4
.globl	INIT_SYSTEM_UCS4STRING
INIT_SYSTEM_UCS4STRING:
	.byte	21
	.ascii	"\012UCS4String"
	.long	4
	.long	INIT_SYSTEM_UCS4CHAR
	.long	3,0
	.byte	6
	.ascii	"System"

.data
	.balign 4
.globl	RTTI_SYSTEM_UCS4STRING
RTTI_SYSTEM_UCS4STRING:
	.byte	21
	.ascii	"\012UCS4String"
	.long	4
	.long	RTTI_SYSTEM_UCS4CHAR
	.long	3,0
	.byte	6
	.ascii	"System"

.data
	.balign 4
.globl	INIT_SYSTEM_UTF8STRING
INIT_SYSTEM_UTF8STRING:
	.byte	9,10
	.ascii	"UTF8String"

.data
	.balign 4
.globl	RTTI_SYSTEM_UTF8STRING
RTTI_SYSTEM_UTF8STRING:
	.byte	9,10
	.ascii	"UTF8String"

.data
	.balign 4
.globl	INIT_SYSTEM_PUTF8STRING
INIT_SYSTEM_PUTF8STRING:
	.byte	0
	.ascii	"\013PUTF8String"

.data
	.balign 4
.globl	RTTI_SYSTEM_PUTF8STRING
RTTI_SYSTEM_PUTF8STRING:
	.byte	0
	.ascii	"\013PUTF8String"

.data
	.balign 4
.globl	INIT_SYSTEM_HRESULT
INIT_SYSTEM_HRESULT:
	.byte	1,7
	.ascii	"HRESULT"
	.byte	4
	.long	-2147483648,2147483647

.data
	.balign 4
.globl	RTTI_SYSTEM_HRESULT
RTTI_SYSTEM_HRESULT:
	.byte	1,7
	.ascii	"HRESULT"
	.byte	4
	.long	-2147483648,2147483647

.data
	.balign 4
.globl	INIT_SYSTEM_TDATETIME
INIT_SYSTEM_TDATETIME:
	.byte	4,9
	.ascii	"TDateTime"
	.byte	1

.data
	.balign 4
.globl	RTTI_SYSTEM_TDATETIME
RTTI_SYSTEM_TDATETIME:
	.byte	4,9
	.ascii	"TDateTime"
	.byte	1

.data
	.balign 4
.globl	INIT_SYSTEM_TDATE
INIT_SYSTEM_TDATE:
	.byte	4,5
	.ascii	"TDate"
	.byte	1

.data
	.balign 4
.globl	RTTI_SYSTEM_TDATE
RTTI_SYSTEM_TDATE:
	.byte	4,5
	.ascii	"TDate"
	.byte	1

.data
	.balign 4
.globl	INIT_SYSTEM_TTIME
INIT_SYSTEM_TTIME:
	.byte	4,5
	.ascii	"TTime"
	.byte	1

.data
	.balign 4
.globl	RTTI_SYSTEM_TTIME
RTTI_SYSTEM_TTIME:
	.byte	4,5
	.ascii	"TTime"
	.byte	1

.data
	.balign 4
.globl	INIT_SYSTEM_TERROR
INIT_SYSTEM_TERROR:
	.byte	1,6
	.ascii	"TError"
	.byte	4
	.long	-2147483648,2147483647

.data
	.balign 4
.globl	RTTI_SYSTEM_TERROR
RTTI_SYSTEM_TERROR:
	.byte	1,6
	.ascii	"TError"
	.byte	4
	.long	-2147483648,2147483647

.data
	.balign 4
.globl	INIT_SYSTEM_PSINGLE
INIT_SYSTEM_PSINGLE:
	.byte	0
	.ascii	"\007PSingle"

.data
	.balign 4
.globl	RTTI_SYSTEM_PSINGLE
RTTI_SYSTEM_PSINGLE:
	.byte	0
	.ascii	"\007PSingle"

.data
	.balign 4
.globl	INIT_SYSTEM_PDOUBLE
INIT_SYSTEM_PDOUBLE:
	.byte	0
	.ascii	"\007PDouble"

.data
	.balign 4
.globl	RTTI_SYSTEM_PDOUBLE
RTTI_SYSTEM_PDOUBLE:
	.byte	0
	.ascii	"\007PDouble"

.data
	.balign 4
.globl	INIT_SYSTEM_PEXTENDED
INIT_SYSTEM_PEXTENDED:
	.byte	0
	.ascii	"\011PExtended"

.data
	.balign 4
.globl	RTTI_SYSTEM_PEXTENDED
RTTI_SYSTEM_PEXTENDED:
	.byte	0
	.ascii	"\011PExtended"

.data
	.balign 4
.globl	INIT_SYSTEM_PPDOUBLE
INIT_SYSTEM_PPDOUBLE:
	.byte	0
	.ascii	"\010PPDouble"

.data
	.balign 4
.globl	RTTI_SYSTEM_PPDOUBLE
RTTI_SYSTEM_PPDOUBLE:
	.byte	0
	.ascii	"\010PPDouble"

.data
	.balign 4
.globl	INIT_SYSTEM_PCURRENCY
INIT_SYSTEM_PCURRENCY:
	.byte	0
	.ascii	"\011PCurrency"

.data
	.balign 4
.globl	RTTI_SYSTEM_PCURRENCY
RTTI_SYSTEM_PCURRENCY:
	.byte	0
	.ascii	"\011PCurrency"

.data
	.balign 4
.globl	INIT_SYSTEM_PCOMP
INIT_SYSTEM_PCOMP:
	.byte	0
	.ascii	"\005PComp"

.data
	.balign 4
.globl	RTTI_SYSTEM_PCOMP
RTTI_SYSTEM_PCOMP:
	.byte	0
	.ascii	"\005PComp"

.data
	.balign 4
.globl	INIT_SYSTEM_PSMALLINT
INIT_SYSTEM_PSMALLINT:
	.byte	0
	.ascii	"\011PSmallInt"

.data
	.balign 4
.globl	RTTI_SYSTEM_PSMALLINT
RTTI_SYSTEM_PSMALLINT:
	.byte	0
	.ascii	"\011PSmallInt"

.data
	.balign 4
.globl	INIT_SYSTEM_PSHORTINT
INIT_SYSTEM_PSHORTINT:
	.byte	0
	.ascii	"\011PShortInt"

.data
	.balign 4
.globl	RTTI_SYSTEM_PSHORTINT
RTTI_SYSTEM_PSHORTINT:
	.byte	0
	.ascii	"\011PShortInt"

.data
	.balign 4
.globl	INIT_SYSTEM_PINTEGER
INIT_SYSTEM_PINTEGER:
	.byte	0
	.ascii	"\010PInteger"

.data
	.balign 4
.globl	RTTI_SYSTEM_PINTEGER
RTTI_SYSTEM_PINTEGER:
	.byte	0
	.ascii	"\010PInteger"

.data
	.balign 4
.globl	INIT_SYSTEM_PBYTE
INIT_SYSTEM_PBYTE:
	.byte	0
	.ascii	"\005PByte"

.data
	.balign 4
.globl	RTTI_SYSTEM_PBYTE
RTTI_SYSTEM_PBYTE:
	.byte	0
	.ascii	"\005PByte"

.data
	.balign 4
.globl	INIT_SYSTEM_PWORD
INIT_SYSTEM_PWORD:
	.byte	0
	.ascii	"\005PWord"

.data
	.balign 4
.globl	RTTI_SYSTEM_PWORD
RTTI_SYSTEM_PWORD:
	.byte	0
	.ascii	"\005PWord"

.data
	.balign 4
.globl	INIT_SYSTEM_PDWORD
INIT_SYSTEM_PDWORD:
	.byte	0
	.ascii	"\006PDWord"

.data
	.balign 4
.globl	RTTI_SYSTEM_PDWORD
RTTI_SYSTEM_PDWORD:
	.byte	0
	.ascii	"\006PDWord"

.data
	.balign 4
.globl	INIT_SYSTEM_PLONGWORD
INIT_SYSTEM_PLONGWORD:
	.byte	0
	.ascii	"\011PLongWord"

.data
	.balign 4
.globl	RTTI_SYSTEM_PLONGWORD
RTTI_SYSTEM_PLONGWORD:
	.byte	0
	.ascii	"\011PLongWord"

.data
	.balign 4
.globl	INIT_SYSTEM_PLONGINT
INIT_SYSTEM_PLONGINT:
	.byte	0
	.ascii	"\010PLongint"

.data
	.balign 4
.globl	RTTI_SYSTEM_PLONGINT
RTTI_SYSTEM_PLONGINT:
	.byte	0
	.ascii	"\010PLongint"

.data
	.balign 4
.globl	INIT_SYSTEM_PCARDINAL
INIT_SYSTEM_PCARDINAL:
	.byte	0
	.ascii	"\011PCardinal"

.data
	.balign 4
.globl	RTTI_SYSTEM_PCARDINAL
RTTI_SYSTEM_PCARDINAL:
	.byte	0
	.ascii	"\011PCardinal"

.data
	.balign 4
.globl	INIT_SYSTEM_PQWORD
INIT_SYSTEM_PQWORD:
	.byte	0
	.ascii	"\006PQWord"

.data
	.balign 4
.globl	RTTI_SYSTEM_PQWORD
RTTI_SYSTEM_PQWORD:
	.byte	0
	.ascii	"\006PQWord"

.data
	.balign 4
.globl	INIT_SYSTEM_PINT64
INIT_SYSTEM_PINT64:
	.byte	0
	.ascii	"\006PInt64"

.data
	.balign 4
.globl	RTTI_SYSTEM_PINT64
RTTI_SYSTEM_PINT64:
	.byte	0
	.ascii	"\006PInt64"

.data
	.balign 4
.globl	INIT_SYSTEM_PPTRINT
INIT_SYSTEM_PPTRINT:
	.byte	0
	.ascii	"\007PPtrInt"

.data
	.balign 4
.globl	RTTI_SYSTEM_PPTRINT
RTTI_SYSTEM_PPTRINT:
	.byte	0
	.ascii	"\007PPtrInt"

.data
	.balign 4
.globl	INIT_SYSTEM_PPTRUINT
INIT_SYSTEM_PPTRUINT:
	.byte	0
	.ascii	"\010PPtrUInt"

.data
	.balign 4
.globl	RTTI_SYSTEM_PPTRUINT
RTTI_SYSTEM_PPTRUINT:
	.byte	0
	.ascii	"\010PPtrUInt"

.data
	.balign 4
.globl	INIT_SYSTEM_PSIZEINT
INIT_SYSTEM_PSIZEINT:
	.byte	0
	.ascii	"\010PSizeInt"

.data
	.balign 4
.globl	RTTI_SYSTEM_PSIZEINT
RTTI_SYSTEM_PSIZEINT:
	.byte	0
	.ascii	"\010PSizeInt"

.data
	.balign 4
.globl	INIT_SYSTEM_PPBYTE
INIT_SYSTEM_PPBYTE:
	.byte	0
	.ascii	"\006PPByte"

.data
	.balign 4
.globl	RTTI_SYSTEM_PPBYTE
RTTI_SYSTEM_PPBYTE:
	.byte	0
	.ascii	"\006PPByte"

.data
	.balign 4
.globl	INIT_SYSTEM_PPLONGINT
INIT_SYSTEM_PPLONGINT:
	.byte	0
	.ascii	"\011PPLongint"

.data
	.balign 4
.globl	RTTI_SYSTEM_PPLONGINT
RTTI_SYSTEM_PPLONGINT:
	.byte	0
	.ascii	"\011PPLongint"

.data
	.balign 4
.globl	INIT_SYSTEM_PPOINTER
INIT_SYSTEM_PPOINTER:
	.byte	0
	.ascii	"\010PPointer"

.data
	.balign 4
.globl	RTTI_SYSTEM_PPOINTER
RTTI_SYSTEM_PPOINTER:
	.byte	0
	.ascii	"\010PPointer"

.data
	.balign 4
.globl	INIT_SYSTEM_PPPOINTER
INIT_SYSTEM_PPPOINTER:
	.byte	0
	.ascii	"\011PPPointer"

.data
	.balign 4
.globl	RTTI_SYSTEM_PPPOINTER
RTTI_SYSTEM_PPPOINTER:
	.byte	0
	.ascii	"\011PPPointer"

.data
	.balign 4
.globl	INIT_SYSTEM_PBOOLEAN
INIT_SYSTEM_PBOOLEAN:
	.byte	0
	.ascii	"\010PBoolean"

.data
	.balign 4
.globl	RTTI_SYSTEM_PBOOLEAN
RTTI_SYSTEM_PBOOLEAN:
	.byte	0
	.ascii	"\010PBoolean"

.data
	.balign 4
.globl	INIT_SYSTEM_PWORDBOOL
INIT_SYSTEM_PWORDBOOL:
	.byte	0
	.ascii	"\011PWordBool"

.data
	.balign 4
.globl	RTTI_SYSTEM_PWORDBOOL
RTTI_SYSTEM_PWORDBOOL:
	.byte	0
	.ascii	"\011PWordBool"

.data
	.balign 4
.globl	INIT_SYSTEM_PLONGBOOL
INIT_SYSTEM_PLONGBOOL:
	.byte	0
	.ascii	"\011PLongBool"

.data
	.balign 4
.globl	RTTI_SYSTEM_PLONGBOOL
RTTI_SYSTEM_PLONGBOOL:
	.byte	0
	.ascii	"\011PLongBool"

.data
	.balign 4
.globl	INIT_SYSTEM_PSHORTSTRING
INIT_SYSTEM_PSHORTSTRING:
	.byte	0
	.ascii	"\014PShortString"

.data
	.balign 4
.globl	RTTI_SYSTEM_PSHORTSTRING
RTTI_SYSTEM_PSHORTSTRING:
	.byte	0
	.ascii	"\014PShortString"

.data
	.balign 4
.globl	INIT_SYSTEM_PANSISTRING
INIT_SYSTEM_PANSISTRING:
	.byte	0
	.ascii	"\013PAnsiString"

.data
	.balign 4
.globl	RTTI_SYSTEM_PANSISTRING
RTTI_SYSTEM_PANSISTRING:
	.byte	0
	.ascii	"\013PAnsiString"

.data
	.balign 4
.globl	INIT_SYSTEM_PDATE
INIT_SYSTEM_PDATE:
	.byte	0
	.ascii	"\005PDate"

.data
	.balign 4
.globl	RTTI_SYSTEM_PDATE
RTTI_SYSTEM_PDATE:
	.byte	0
	.ascii	"\005PDate"

.data
	.balign 4
.globl	INIT_SYSTEM_PDATETIME
INIT_SYSTEM_PDATETIME:
	.byte	0
	.ascii	"\011PDateTime"

.data
	.balign 4
.globl	RTTI_SYSTEM_PDATETIME
RTTI_SYSTEM_PDATETIME:
	.byte	0
	.ascii	"\011PDateTime"

.data
	.balign 4
.globl	INIT_SYSTEM_PERROR
INIT_SYSTEM_PERROR:
	.byte	0
	.ascii	"\006PError"

.data
	.balign 4
.globl	RTTI_SYSTEM_PERROR
RTTI_SYSTEM_PERROR:
	.byte	0
	.ascii	"\006PError"

.data
	.balign 4
.globl	INIT_SYSTEM_PVARIANT
INIT_SYSTEM_PVARIANT:
	.byte	0
	.ascii	"\010PVariant"

.data
	.balign 4
.globl	RTTI_SYSTEM_PVARIANT
RTTI_SYSTEM_PVARIANT:
	.byte	0
	.ascii	"\010PVariant"

.data
	.balign 4
.globl	INIT_SYSTEM_POLEVARIANT
INIT_SYSTEM_POLEVARIANT:
	.byte	0
	.ascii	"\013POleVariant"

.data
	.balign 4
.globl	RTTI_SYSTEM_POLEVARIANT
RTTI_SYSTEM_POLEVARIANT:
	.byte	0
	.ascii	"\013POleVariant"

.data
	.balign 4
.globl	INIT_SYSTEM_PWIDECHAR
INIT_SYSTEM_PWIDECHAR:
	.byte	0
	.ascii	"\011PWideChar"

.data
	.balign 4
.globl	RTTI_SYSTEM_PWIDECHAR
RTTI_SYSTEM_PWIDECHAR:
	.byte	0
	.ascii	"\011PWideChar"

.data
	.balign 4
.globl	INIT_SYSTEM_PPWIDECHAR
INIT_SYSTEM_PPWIDECHAR:
	.byte	0
	.ascii	"\012PPWideChar"

.data
	.balign 4
.globl	RTTI_SYSTEM_PPWIDECHAR
RTTI_SYSTEM_PPWIDECHAR:
	.byte	0
	.ascii	"\012PPWideChar"

.data
	.balign 4
.globl	INIT_SYSTEM_PPPWIDECHAR
INIT_SYSTEM_PPPWIDECHAR:
	.byte	0
	.ascii	"\013PPPWideChar"

.data
	.balign 4
.globl	RTTI_SYSTEM_PPPWIDECHAR
RTTI_SYSTEM_PPPWIDECHAR:
	.byte	0
	.ascii	"\013PPPWideChar"

.data
	.balign 4
.globl	INIT_SYSTEM_PWIDESTRING
INIT_SYSTEM_PWIDESTRING:
	.byte	0
	.ascii	"\013PWideString"

.data
	.balign 4
.globl	RTTI_SYSTEM_PWIDESTRING
RTTI_SYSTEM_PWIDESTRING:
	.byte	0
	.ascii	"\013PWideString"

.data
	.balign 4
.globl	INIT_SYSTEM_PUNICODECHAR
INIT_SYSTEM_PUNICODECHAR:
	.byte	0
	.ascii	"\014PUnicodeChar"

.data
	.balign 4
.globl	RTTI_SYSTEM_PUNICODECHAR
RTTI_SYSTEM_PUNICODECHAR:
	.byte	0
	.ascii	"\014PUnicodeChar"

.data
	.balign 4
.globl	INIT_SYSTEM_PUNICODESTRING
INIT_SYSTEM_PUNICODESTRING:
	.byte	0
	.ascii	"\016PUnicodeString"

.data
	.balign 4
.globl	RTTI_SYSTEM_PUNICODESTRING
RTTI_SYSTEM_PUNICODESTRING:
	.byte	0
	.ascii	"\016PUnicodeString"

.data
	.balign 4
.globl	INIT_SYSTEM_PTEXT
INIT_SYSTEM_PTEXT:
	.byte	0
	.ascii	"\005PText"

.data
	.balign 4
.globl	RTTI_SYSTEM_PTEXT
RTTI_SYSTEM_PTEXT:
	.byte	0
	.ascii	"\005PText"

.data
	.balign 4
.globl	INIT_SYSTEM_TTEXTLINEBREAKSTYLE
INIT_SYSTEM_TTEXTLINEBREAKSTYLE:
	.byte	3,19
	.ascii	"TTextLineBreakStyle"
	.byte	5
	.long	0,2,0
	.byte	6
	.ascii	"tlbsLF"
	.byte	8
	.ascii	"tlbsCRLF"
	.byte	6
	.ascii	"tlbsCR"
	.byte	6
	.ascii	"System"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSTEM_TTEXTLINEBREAKSTYLE
RTTI_SYSTEM_TTEXTLINEBREAKSTYLE:
	.byte	3,19
	.ascii	"TTextLineBreakStyle"
	.byte	5
	.long	0,2,0
	.byte	6
	.ascii	"tlbsLF"
	.byte	8
	.ascii	"tlbsCRLF"
	.byte	6
	.ascii	"tlbsCR"
	.byte	6
	.ascii	"System"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSTEM_TTEXTLINEBREAKSTYLE_s2o
RTTI_SYSTEM_TTEXTLINEBREAKSTYLE_s2o:
	.long	3,2
	.long	RTTI_SYSTEM_TTEXTLINEBREAKSTYLE+50
	.long	1
	.long	RTTI_SYSTEM_TTEXTLINEBREAKSTYLE+41
	.long	0
	.long	RTTI_SYSTEM_TTEXTLINEBREAKSTYLE+34

.data
	.balign 4
.globl	RTTI_SYSTEM_TTEXTLINEBREAKSTYLE_o2s
RTTI_SYSTEM_TTEXTLINEBREAKSTYLE_o2s:
	.long	0
	.long	RTTI_SYSTEM_TTEXTLINEBREAKSTYLE+34
	.long	RTTI_SYSTEM_TTEXTLINEBREAKSTYLE+41
	.long	RTTI_SYSTEM_TTEXTLINEBREAKSTYLE+50

.data
	.balign 4
.globl	INIT_SYSTEM_TPROCEDURE
INIT_SYSTEM_TPROCEDURE:
	.byte	23,10
	.ascii	"TProcedure"

.data
	.balign 4
.globl	RTTI_SYSTEM_TPROCEDURE
RTTI_SYSTEM_TPROCEDURE:
	.byte	23,10
	.ascii	"TProcedure"

.data
	.balign 4
.globl	INIT_SYSTEM_PRTLCRITICALSECTION
INIT_SYSTEM_PRTLCRITICALSECTION:
	.byte	0
	.ascii	"\023PRTLCriticalSection"

.data
	.balign 4
.globl	RTTI_SYSTEM_PRTLCRITICALSECTION
RTTI_SYSTEM_PRTLCRITICALSECTION:
	.byte	0
	.ascii	"\023PRTLCriticalSection"

.data
	.balign 4
.globl	INIT_SYSTEM_TRTLCRITICALSECTION
INIT_SYSTEM_TRTLCRITICALSECTION:
	.byte	13,19
	.ascii	"TRTLCriticalSection"
	.long	24,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TRTLCRITICALSECTION
RTTI_SYSTEM_TRTLCRITICALSECTION:
	.byte	13,19
	.ascii	"TRTLCriticalSection"
	.long	24,6
	.long	RTTI_SYSTEM_POINTER
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4
	.long	RTTI_SYSTEM_LONGINT
	.long	8
	.long	RTTI_SYSTEM_LONGWORD
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_LONGWORD
	.long	20

.data
	.balign 4
.globl	INIT_SYSTEM_TENTRYINFORMATION
INIT_SYSTEM_TENTRYINFORMATION:
	.byte	13,17
	.ascii	"TEntryInformation"
	.long	20,0

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF113
RTTI_SYSTEM_DEF113:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF114
RTTI_SYSTEM_DEF114:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_TENTRYINFORMATION
RTTI_SYSTEM_TENTRYINFORMATION:
	.byte	13,17
	.ascii	"TEntryInformation"
	.long	20,5
	.long	RTTI_SYSTEM_POINTER
	.long	0
	.long	RTTI_SYSTEM_POINTER
	.long	4
	.long	RTTI_SYSTEM_DEF113
	.long	8
	.long	RTTI_SYSTEM_DEF114
	.long	12
	.long	RTTI_SYSTEM_BOOLEAN
	.long	16

.data
	.balign 4
.globl	INIT_SYSTEM_INTEGERARRAY
INIT_SYSTEM_INTEGERARRAY:
	.byte	12
	.ascii	"\014IntegerArray"
	.long	2,251658240
	.long	INIT_SYSTEM_SMALLINT
	.long	2

.data
	.balign 4
.globl	RTTI_SYSTEM_INTEGERARRAY
RTTI_SYSTEM_INTEGERARRAY:
	.byte	12
	.ascii	"\014IntegerArray"
	.long	2,251658240
	.long	RTTI_SYSTEM_SMALLINT
	.long	2

.data
	.balign 4
.globl	INIT_SYSTEM_PINTEGERARRAY
INIT_SYSTEM_PINTEGERARRAY:
	.byte	0
	.ascii	"\015PIntegerArray"

.data
	.balign 4
.globl	RTTI_SYSTEM_PINTEGERARRAY
RTTI_SYSTEM_PINTEGERARRAY:
	.byte	0
	.ascii	"\015PIntegerArray"

.data
	.balign 4
.globl	INIT_SYSTEM_POINTERARRAY
INIT_SYSTEM_POINTERARRAY:
	.byte	12
	.ascii	"\014PointerArray"
	.long	4,536870911
	.long	INIT_SYSTEM_POINTER
	.long	-1

.data
	.balign 4
.globl	RTTI_SYSTEM_POINTERARRAY
RTTI_SYSTEM_POINTERARRAY:
	.byte	12
	.ascii	"\014PointerArray"
	.long	4,536870911
	.long	RTTI_SYSTEM_POINTER
	.long	-1

.data
	.balign 4
.globl	INIT_SYSTEM_PPOINTERARRAY
INIT_SYSTEM_PPOINTERARRAY:
	.byte	0
	.ascii	"\015PPointerArray"

.data
	.balign 4
.globl	RTTI_SYSTEM_PPOINTERARRAY
RTTI_SYSTEM_PPOINTERARRAY:
	.byte	0
	.ascii	"\015PPointerArray"

.data
	.balign 4
.globl	INIT_SYSTEM_TBOUNDARRAY
INIT_SYSTEM_TBOUNDARRAY:
	.byte	21
	.ascii	"\013TBoundArray"
	.long	4
	.long	INIT_SYSTEM_LONGINT
	.long	3,0
	.byte	6
	.ascii	"System"

.data
	.balign 4
.globl	RTTI_SYSTEM_TBOUNDARRAY
RTTI_SYSTEM_TBOUNDARRAY:
	.byte	21
	.ascii	"\013TBoundArray"
	.long	4
	.long	RTTI_SYSTEM_LONGINT
	.long	3,0
	.byte	6
	.ascii	"System"

.data
	.balign 4
.globl	INIT_SYSTEM_TPCHARARRAY
INIT_SYSTEM_TPCHARARRAY:
	.byte	12
	.ascii	"\013TPCharArray"
	.long	4,536870911
	.long	INIT_SYSTEM_PCHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_SYSTEM_TPCHARARRAY
RTTI_SYSTEM_TPCHARARRAY:
	.byte	12
	.ascii	"\013TPCharArray"
	.long	4,536870911
	.long	RTTI_SYSTEM_PCHAR
	.long	-1

.data
	.balign 4
.globl	INIT_SYSTEM_PPCHARARRAY
INIT_SYSTEM_PPCHARARRAY:
	.byte	0
	.ascii	"\013PPCharArray"

.data
	.balign 4
.globl	RTTI_SYSTEM_PPCHARARRAY
RTTI_SYSTEM_PPCHARARRAY:
	.byte	0
	.ascii	"\013PPCharArray"

.data
	.balign 4
.globl	INIT_SYSTEM_TCTRLBREAKHANDLER
INIT_SYSTEM_TCTRLBREAKHANDLER:
	.byte	23,17
	.ascii	"TCtrlBreakHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TCTRLBREAKHANDLER
RTTI_SYSTEM_TCTRLBREAKHANDLER:
	.byte	23,17
	.ascii	"TCtrlBreakHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_REAL48
INIT_SYSTEM_REAL48:
	.byte	12
	.ascii	"\006real48"
	.long	1,6
	.long	INIT_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_SYSTEM_REAL48
RTTI_SYSTEM_REAL48:
	.byte	12
	.ascii	"\006real48"
	.long	1,6
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	INIT_SYSTEM_TUNICODESTRINGMANAGER
INIT_SYSTEM_TUNICODESTRINGMANAGER:
	.byte	13,21
	.ascii	"TUnicodeStringManager"
	.long	104,0

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF348
RTTI_SYSTEM_DEF348:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF349
RTTI_SYSTEM_DEF349:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF350
RTTI_SYSTEM_DEF350:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF351
RTTI_SYSTEM_DEF351:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF352
RTTI_SYSTEM_DEF352:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF353
RTTI_SYSTEM_DEF353:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF354
RTTI_SYSTEM_DEF354:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF355
RTTI_SYSTEM_DEF355:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF356
RTTI_SYSTEM_DEF356:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF357
RTTI_SYSTEM_DEF357:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF358
RTTI_SYSTEM_DEF358:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF359
RTTI_SYSTEM_DEF359:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF360
RTTI_SYSTEM_DEF360:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF361
RTTI_SYSTEM_DEF361:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF362
RTTI_SYSTEM_DEF362:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF363
RTTI_SYSTEM_DEF363:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF364
RTTI_SYSTEM_DEF364:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF365
RTTI_SYSTEM_DEF365:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF366
RTTI_SYSTEM_DEF366:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF367
RTTI_SYSTEM_DEF367:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF368
RTTI_SYSTEM_DEF368:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF369
RTTI_SYSTEM_DEF369:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF370
RTTI_SYSTEM_DEF370:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF371
RTTI_SYSTEM_DEF371:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF372
RTTI_SYSTEM_DEF372:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF373
RTTI_SYSTEM_DEF373:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_TUNICODESTRINGMANAGER
RTTI_SYSTEM_TUNICODESTRINGMANAGER:
	.byte	13,21
	.ascii	"TUnicodeStringManager"
	.long	104,26
	.long	RTTI_SYSTEM_DEF348
	.long	0
	.long	RTTI_SYSTEM_DEF349
	.long	4
	.long	RTTI_SYSTEM_DEF350
	.long	8
	.long	RTTI_SYSTEM_DEF351
	.long	12
	.long	RTTI_SYSTEM_DEF352
	.long	16
	.long	RTTI_SYSTEM_DEF353
	.long	20
	.long	RTTI_SYSTEM_DEF354
	.long	24
	.long	RTTI_SYSTEM_DEF355
	.long	28
	.long	RTTI_SYSTEM_DEF356
	.long	32
	.long	RTTI_SYSTEM_DEF357
	.long	36
	.long	RTTI_SYSTEM_DEF358
	.long	40
	.long	RTTI_SYSTEM_DEF359
	.long	44
	.long	RTTI_SYSTEM_DEF360
	.long	48
	.long	RTTI_SYSTEM_DEF361
	.long	52
	.long	RTTI_SYSTEM_DEF362
	.long	56
	.long	RTTI_SYSTEM_DEF363
	.long	60
	.long	RTTI_SYSTEM_DEF364
	.long	64
	.long	RTTI_SYSTEM_DEF365
	.long	68
	.long	RTTI_SYSTEM_DEF366
	.long	72
	.long	RTTI_SYSTEM_DEF367
	.long	76
	.long	RTTI_SYSTEM_DEF368
	.long	80
	.long	RTTI_SYSTEM_DEF369
	.long	84
	.long	RTTI_SYSTEM_DEF370
	.long	88
	.long	RTTI_SYSTEM_DEF371
	.long	92
	.long	RTTI_SYSTEM_DEF372
	.long	96
	.long	RTTI_SYSTEM_DEF373
	.long	100

.data
	.balign 4
.globl	INIT_SYSTEM_TRUNTIMEERROR
INIT_SYSTEM_TRUNTIMEERROR:
	.byte	3,13
	.ascii	"TRuntimeError"
	.byte	5
	.long	0,26,0
	.byte	6
	.ascii	"reNone"
	.byte	13
	.ascii	"reOutOfMemory"
	.byte	12
	.ascii	"reInvalidPtr"
	.byte	11
	.ascii	"reDivByZero"
	.byte	12
	.ascii	"reRangeError"
	.byte	13
	.ascii	"reIntOverflow"
	.byte	11
	.ascii	"reInvalidOp"
	.byte	12
	.ascii	"reZeroDivide"
	.byte	10
	.ascii	"reOverflow"
	.byte	11
	.ascii	"reUnderflow"
	.byte	13
	.ascii	"reInvalidCast"
	.byte	17
	.ascii	"reAccessViolation"
	.byte	17
	.ascii	"rePrivInstruction"
	.byte	14
	.ascii	"reControlBreak"
	.byte	15
	.ascii	"reStackOverflow"
	.byte	13
	.ascii	"reVarTypeCast"
	.byte	14
	.ascii	"reVarInvalidOp"
	.byte	13
	.ascii	"reVarDispatch"
	.byte	16
	.ascii	"reVarArrayCreate"
	.byte	13
	.ascii	"reVarNotArray"
	.byte	16
	.ascii	"reVarArrayBounds"
	.byte	17
	.ascii	"reAssertionFailed"
	.byte	19
	.ascii	"reExternalException"
	.byte	15
	.ascii	"reIntfCastError"
	.byte	15
	.ascii	"reSafeCallError"
	.byte	6
	.ascii	"reQuit"
	.byte	19
	.ascii	"reCodesetConversion"
	.byte	6
	.ascii	"System"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSTEM_TRUNTIMEERROR
RTTI_SYSTEM_TRUNTIMEERROR:
	.byte	3,13
	.ascii	"TRuntimeError"
	.byte	5
	.long	0,26,0
	.byte	6
	.ascii	"reNone"
	.byte	13
	.ascii	"reOutOfMemory"
	.byte	12
	.ascii	"reInvalidPtr"
	.byte	11
	.ascii	"reDivByZero"
	.byte	12
	.ascii	"reRangeError"
	.byte	13
	.ascii	"reIntOverflow"
	.byte	11
	.ascii	"reInvalidOp"
	.byte	12
	.ascii	"reZeroDivide"
	.byte	10
	.ascii	"reOverflow"
	.byte	11
	.ascii	"reUnderflow"
	.byte	13
	.ascii	"reInvalidCast"
	.byte	17
	.ascii	"reAccessViolation"
	.byte	17
	.ascii	"rePrivInstruction"
	.byte	14
	.ascii	"reControlBreak"
	.byte	15
	.ascii	"reStackOverflow"
	.byte	13
	.ascii	"reVarTypeCast"
	.byte	14
	.ascii	"reVarInvalidOp"
	.byte	13
	.ascii	"reVarDispatch"
	.byte	16
	.ascii	"reVarArrayCreate"
	.byte	13
	.ascii	"reVarNotArray"
	.byte	16
	.ascii	"reVarArrayBounds"
	.byte	17
	.ascii	"reAssertionFailed"
	.byte	19
	.ascii	"reExternalException"
	.byte	15
	.ascii	"reIntfCastError"
	.byte	15
	.ascii	"reSafeCallError"
	.byte	6
	.ascii	"reQuit"
	.byte	19
	.ascii	"reCodesetConversion"
	.byte	6
	.ascii	"System"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSTEM_TRUNTIMEERROR_s2o
RTTI_SYSTEM_TRUNTIMEERROR_s2o:
	.long	27,11
	.long	RTTI_SYSTEM_TRUNTIMEERROR+163
	.long	21
	.long	RTTI_SYSTEM_TRUNTIMEERROR+321
	.long	26
	.long	RTTI_SYSTEM_TRUNTIMEERROR+398
	.long	13
	.long	RTTI_SYSTEM_TRUNTIMEERROR+199
	.long	3
	.long	RTTI_SYSTEM_TRUNTIMEERROR+62
	.long	22
	.long	RTTI_SYSTEM_TRUNTIMEERROR+339
	.long	23
	.long	RTTI_SYSTEM_TRUNTIMEERROR+359
	.long	5
	.long	RTTI_SYSTEM_TRUNTIMEERROR+87
	.long	10
	.long	RTTI_SYSTEM_TRUNTIMEERROR+149
	.long	6
	.long	RTTI_SYSTEM_TRUNTIMEERROR+101
	.long	2
	.long	RTTI_SYSTEM_TRUNTIMEERROR+49
	.long	0
	.long	RTTI_SYSTEM_TRUNTIMEERROR+28
	.long	1
	.long	RTTI_SYSTEM_TRUNTIMEERROR+35
	.long	8
	.long	RTTI_SYSTEM_TRUNTIMEERROR+126
	.long	12
	.long	RTTI_SYSTEM_TRUNTIMEERROR+181
	.long	25
	.long	RTTI_SYSTEM_TRUNTIMEERROR+391
	.long	4
	.long	RTTI_SYSTEM_TRUNTIMEERROR+74
	.long	24
	.long	RTTI_SYSTEM_TRUNTIMEERROR+375
	.long	14
	.long	RTTI_SYSTEM_TRUNTIMEERROR+214
	.long	9
	.long	RTTI_SYSTEM_TRUNTIMEERROR+137
	.long	20
	.long	RTTI_SYSTEM_TRUNTIMEERROR+304
	.long	18
	.long	RTTI_SYSTEM_TRUNTIMEERROR+273
	.long	17
	.long	RTTI_SYSTEM_TRUNTIMEERROR+259
	.long	16
	.long	RTTI_SYSTEM_TRUNTIMEERROR+244
	.long	19
	.long	RTTI_SYSTEM_TRUNTIMEERROR+290
	.long	15
	.long	RTTI_SYSTEM_TRUNTIMEERROR+230
	.long	7
	.long	RTTI_SYSTEM_TRUNTIMEERROR+113

.data
	.balign 4
.globl	RTTI_SYSTEM_TRUNTIMEERROR_o2s
RTTI_SYSTEM_TRUNTIMEERROR_o2s:
	.long	0
	.long	RTTI_SYSTEM_TRUNTIMEERROR+28
	.long	RTTI_SYSTEM_TRUNTIMEERROR+35
	.long	RTTI_SYSTEM_TRUNTIMEERROR+49
	.long	RTTI_SYSTEM_TRUNTIMEERROR+62
	.long	RTTI_SYSTEM_TRUNTIMEERROR+74
	.long	RTTI_SYSTEM_TRUNTIMEERROR+87
	.long	RTTI_SYSTEM_TRUNTIMEERROR+101
	.long	RTTI_SYSTEM_TRUNTIMEERROR+113
	.long	RTTI_SYSTEM_TRUNTIMEERROR+126
	.long	RTTI_SYSTEM_TRUNTIMEERROR+137
	.long	RTTI_SYSTEM_TRUNTIMEERROR+149
	.long	RTTI_SYSTEM_TRUNTIMEERROR+163
	.long	RTTI_SYSTEM_TRUNTIMEERROR+181
	.long	RTTI_SYSTEM_TRUNTIMEERROR+199
	.long	RTTI_SYSTEM_TRUNTIMEERROR+214
	.long	RTTI_SYSTEM_TRUNTIMEERROR+230
	.long	RTTI_SYSTEM_TRUNTIMEERROR+244
	.long	RTTI_SYSTEM_TRUNTIMEERROR+259
	.long	RTTI_SYSTEM_TRUNTIMEERROR+273
	.long	RTTI_SYSTEM_TRUNTIMEERROR+290
	.long	RTTI_SYSTEM_TRUNTIMEERROR+304
	.long	RTTI_SYSTEM_TRUNTIMEERROR+321
	.long	RTTI_SYSTEM_TRUNTIMEERROR+339
	.long	RTTI_SYSTEM_TRUNTIMEERROR+359
	.long	RTTI_SYSTEM_TRUNTIMEERROR+375
	.long	RTTI_SYSTEM_TRUNTIMEERROR+391
	.long	RTTI_SYSTEM_TRUNTIMEERROR+398

.data
	.balign 4
.globl	INIT_SYSTEM_DEF509
INIT_SYSTEM_DEF509:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSTEM_TBACKTRACESTRFUNC
INIT_SYSTEM_TBACKTRACESTRFUNC:
	.byte	23,17
	.ascii	"TBackTraceStrFunc"

.data
	.balign 4
.globl	RTTI_SYSTEM_TBACKTRACESTRFUNC
RTTI_SYSTEM_TBACKTRACESTRFUNC:
	.byte	23,17
	.ascii	"TBackTraceStrFunc"

.data
	.balign 4
.globl	INIT_SYSTEM_TERRORPROC
INIT_SYSTEM_TERRORPROC:
	.byte	23,10
	.ascii	"TErrorProc"

.data
	.balign 4
.globl	RTTI_SYSTEM_TERRORPROC
RTTI_SYSTEM_TERRORPROC:
	.byte	23,10
	.ascii	"TErrorProc"

.data
	.balign 4
.globl	INIT_SYSTEM_TABSTRACTERRORPROC
INIT_SYSTEM_TABSTRACTERRORPROC:
	.byte	23,18
	.ascii	"TAbstractErrorProc"

.data
	.balign 4
.globl	RTTI_SYSTEM_TABSTRACTERRORPROC
RTTI_SYSTEM_TABSTRACTERRORPROC:
	.byte	23,18
	.ascii	"TAbstractErrorProc"

.data
	.balign 4
.globl	INIT_SYSTEM_TASSERTERRORPROC
INIT_SYSTEM_TASSERTERRORPROC:
	.byte	23,16
	.ascii	"TAssertErrorProc"

.data
	.balign 4
.globl	RTTI_SYSTEM_TASSERTERRORPROC
RTTI_SYSTEM_TASSERTERRORPROC:
	.byte	23,16
	.ascii	"TAssertErrorProc"

.data
	.balign 4
.globl	INIT_SYSTEM_TSAFECALLERRORPROC
INIT_SYSTEM_TSAFECALLERRORPROC:
	.byte	23,18
	.ascii	"TSafeCallErrorProc"

.data
	.balign 4
.globl	RTTI_SYSTEM_TSAFECALLERRORPROC
RTTI_SYSTEM_TSAFECALLERRORPROC:
	.byte	23,18
	.ascii	"TSafeCallErrorProc"

.data
	.balign 4
.globl	INIT_SYSTEM_JMP_BUF
INIT_SYSTEM_JMP_BUF:
	.byte	13,7
	.ascii	"jmp_buf"
	.long	24,0

.data
	.balign 4
.globl	RTTI_SYSTEM_JMP_BUF
RTTI_SYSTEM_JMP_BUF:
	.byte	13,7
	.ascii	"jmp_buf"
	.long	24,6
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4
	.long	RTTI_SYSTEM_LONGINT
	.long	8
	.long	RTTI_SYSTEM_POINTER
	.long	12
	.long	RTTI_SYSTEM_POINTER
	.long	16
	.long	RTTI_SYSTEM_POINTER
	.long	20

.data
	.balign 4
.globl	INIT_SYSTEM_PJMP_BUF
INIT_SYSTEM_PJMP_BUF:
	.byte	0
	.ascii	"\010PJmp_buf"

.data
	.balign 4
.globl	RTTI_SYSTEM_PJMP_BUF
RTTI_SYSTEM_PJMP_BUF:
	.byte	0
	.ascii	"\010PJmp_buf"

.data
	.balign 4
.globl	_$SYSTEM$_Ld46
_$SYSTEM$_Ld46:
	.short	0
	.long	_$SYSTEM$_Ld47
	.balign 4
.globl	_$SYSTEM$_Ld47
_$SYSTEM$_Ld47:
	.short	0

.data
	.balign 4
.globl	INIT_SYSTEM_TOBJECT
INIT_SYSTEM_TOBJECT:
	.byte	15,7
	.ascii	"TObject"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TOBJECT
RTTI_SYSTEM_TOBJECT:
	.byte	15,7
	.ascii	"TObject"
	.long	VMT_SYSTEM_TOBJECT
	.long	0
	.short	0
	.byte	6
	.ascii	"System"
	.short	0

.data
	.balign 4
.globl	INIT_SYSTEM_IUNKNOWN
INIT_SYSTEM_IUNKNOWN:
	.byte	14,8
	.ascii	"IUnknown"
	.long	4

.data
	.balign 4
.globl	RTTI_SYSTEM_IUNKNOWN
RTTI_SYSTEM_IUNKNOWN:
	.byte	14,8
	.ascii	"IUnknown"
	.long	0
	.byte	9
	.long	0
	.short	0,0
	.byte	192,0,0,0,0,0,0,70,6
	.ascii	"System"
	.byte	38
	.ascii	"{00000000-0000-0000-C000-000000000046}"

.data
	.balign 4
.globl	INIT_SYSTEM_TCLASS
INIT_SYSTEM_TCLASS:
	.byte	0
	.ascii	"\006TClass"

.data
	.balign 4
.globl	RTTI_SYSTEM_TCLASS
RTTI_SYSTEM_TCLASS:
	.byte	0
	.ascii	"\006TClass"

.data
	.balign 4
.globl	INIT_SYSTEM_PCLASS
INIT_SYSTEM_PCLASS:
	.byte	0
	.ascii	"\006PClass"

.data
	.balign 4
.globl	RTTI_SYSTEM_PCLASS
RTTI_SYSTEM_PCLASS:
	.byte	0
	.ascii	"\006PClass"

.data
	.balign 4
.globl	INIT_SYSTEM_TMSGSTRTABLE
INIT_SYSTEM_TMSGSTRTABLE:
	.byte	13,12
	.ascii	"TMsgStrTable"
	.long	8,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TMSGSTRTABLE
RTTI_SYSTEM_TMSGSTRTABLE:
	.byte	13,12
	.ascii	"TMsgStrTable"
	.long	8,2
	.long	RTTI_SYSTEM_PSHORTSTRING
	.long	0
	.long	RTTI_SYSTEM_POINTER
	.long	4

.data
	.balign 4
.globl	INIT_SYSTEM_PMSGSTRTABLE
INIT_SYSTEM_PMSGSTRTABLE:
	.byte	0
	.ascii	"\014PMsgStrTable"

.data
	.balign 4
.globl	RTTI_SYSTEM_PMSGSTRTABLE
RTTI_SYSTEM_PMSGSTRTABLE:
	.byte	0
	.ascii	"\014PMsgStrTable"

.data
	.balign 4
.globl	INIT_SYSTEM_TSTRINGMESSAGETABLE
INIT_SYSTEM_TSTRINGMESSAGETABLE:
	.byte	13,19
	.ascii	"TStringMessageTable"
	.long	12,0

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF537
RTTI_SYSTEM_DEF537:
	.byte	12
	.ascii	"\000"
	.long	8,1
	.long	RTTI_SYSTEM_TMSGSTRTABLE
	.long	-1

.data
	.balign 4
.globl	RTTI_SYSTEM_TSTRINGMESSAGETABLE
RTTI_SYSTEM_TSTRINGMESSAGETABLE:
	.byte	13,19
	.ascii	"TStringMessageTable"
	.long	12,2
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_DEF537
	.long	4

.data
	.balign 4
.globl	INIT_SYSTEM_PSTRINGMESSAGETABLE
INIT_SYSTEM_PSTRINGMESSAGETABLE:
	.byte	0
	.ascii	"\023pstringmessagetable"

.data
	.balign 4
.globl	RTTI_SYSTEM_PSTRINGMESSAGETABLE
RTTI_SYSTEM_PSTRINGMESSAGETABLE:
	.byte	0
	.ascii	"\023pstringmessagetable"

.data
	.balign 4
.globl	INIT_SYSTEM_PINTERFACETABLE
INIT_SYSTEM_PINTERFACETABLE:
	.byte	0
	.ascii	"\017pinterfacetable"

.data
	.balign 4
.globl	RTTI_SYSTEM_PINTERFACETABLE
RTTI_SYSTEM_PINTERFACETABLE:
	.byte	0
	.ascii	"\017pinterfacetable"

.data
	.balign 4
.globl	INIT_SYSTEM_PVMT
INIT_SYSTEM_PVMT:
	.byte	0
	.ascii	"\004PVmt"

.data
	.balign 4
.globl	RTTI_SYSTEM_PVMT
RTTI_SYSTEM_PVMT:
	.byte	0
	.ascii	"\004PVmt"

.data
	.balign 4
.globl	INIT_SYSTEM_TVMT
INIT_SYSTEM_TVMT:
	.byte	13,4
	.ascii	"TVmt"
	.long	100,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TVMT
RTTI_SYSTEM_TVMT:
	.byte	13,4
	.ascii	"TVmt"
	.long	100,25
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4
	.long	RTTI_SYSTEM_PVMT
	.long	8
	.long	RTTI_SYSTEM_PSHORTSTRING
	.long	12
	.long	RTTI_SYSTEM_POINTER
	.long	16
	.long	RTTI_SYSTEM_POINTER
	.long	20
	.long	RTTI_SYSTEM_POINTER
	.long	24
	.long	RTTI_SYSTEM_POINTER
	.long	28
	.long	RTTI_SYSTEM_POINTER
	.long	32
	.long	RTTI_SYSTEM_POINTER
	.long	36
	.long	RTTI_SYSTEM_PINTERFACETABLE
	.long	40
	.long	RTTI_SYSTEM_PSTRINGMESSAGETABLE
	.long	44
	.long	RTTI_SYSTEM_POINTER
	.long	48
	.long	RTTI_SYSTEM_POINTER
	.long	52
	.long	RTTI_SYSTEM_POINTER
	.long	56
	.long	RTTI_SYSTEM_POINTER
	.long	60
	.long	RTTI_SYSTEM_POINTER
	.long	64
	.long	RTTI_SYSTEM_POINTER
	.long	68
	.long	RTTI_SYSTEM_POINTER
	.long	72
	.long	RTTI_SYSTEM_POINTER
	.long	76
	.long	RTTI_SYSTEM_POINTER
	.long	80
	.long	RTTI_SYSTEM_POINTER
	.long	84
	.long	RTTI_SYSTEM_POINTER
	.long	88
	.long	RTTI_SYSTEM_POINTER
	.long	92
	.long	RTTI_SYSTEM_POINTER
	.long	96

.data
	.balign 4
.globl	INIT_SYSTEM_PGUID
INIT_SYSTEM_PGUID:
	.byte	0
	.ascii	"\005PGuid"

.data
	.balign 4
.globl	RTTI_SYSTEM_PGUID
RTTI_SYSTEM_PGUID:
	.byte	0
	.ascii	"\005PGuid"

.data
	.balign 4
.globl	INIT_SYSTEM_TGUID
INIT_SYSTEM_TGUID:
	.byte	13,5
	.ascii	"TGuid"
	.long	16,0

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF545
RTTI_SYSTEM_DEF545:
	.byte	12
	.ascii	"\000"
	.long	1,8
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF546
RTTI_SYSTEM_DEF546:
	.byte	12
	.ascii	"\000"
	.long	1,8
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF547
RTTI_SYSTEM_DEF547:
	.byte	12
	.ascii	"\000"
	.long	1,6
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_SYSTEM_TGUID
RTTI_SYSTEM_TGUID:
	.byte	13,5
	.ascii	"TGuid"
	.long	16,14
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_DEF545
	.long	8
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_DEF546
	.long	8
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_BYTE
	.long	8
	.long	RTTI_SYSTEM_BYTE
	.long	9
	.long	RTTI_SYSTEM_DEF547
	.long	10

.data
	.balign 4
.globl	INIT_SYSTEM_TINTERFACEENTRYTYPE
INIT_SYSTEM_TINTERFACEENTRYTYPE:
	.byte	3,19
	.ascii	"tinterfaceentrytype"
	.byte	5
	.long	0,6,0
	.byte	10
	.ascii	"etStandard"
	.byte	21
	.ascii	"etVirtualMethodResult"
	.byte	20
	.ascii	"etStaticMethodResult"
	.byte	12
	.ascii	"etFieldValue"
	.byte	20
	.ascii	"etVirtualMethodClass"
	.byte	19
	.ascii	"etStaticMethodClass"
	.byte	17
	.ascii	"etFieldValueClass"
	.byte	6
	.ascii	"System"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSTEM_TINTERFACEENTRYTYPE
RTTI_SYSTEM_TINTERFACEENTRYTYPE:
	.byte	3,19
	.ascii	"tinterfaceentrytype"
	.byte	5
	.long	0,6,0
	.byte	10
	.ascii	"etStandard"
	.byte	21
	.ascii	"etVirtualMethodResult"
	.byte	20
	.ascii	"etStaticMethodResult"
	.byte	12
	.ascii	"etFieldValue"
	.byte	20
	.ascii	"etVirtualMethodClass"
	.byte	19
	.ascii	"etStaticMethodClass"
	.byte	17
	.ascii	"etFieldValueClass"
	.byte	6
	.ascii	"System"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSTEM_TINTERFACEENTRYTYPE_s2o
RTTI_SYSTEM_TINTERFACEENTRYTYPE_s2o:
	.long	7,3
	.long	RTTI_SYSTEM_TINTERFACEENTRYTYPE+88
	.long	6
	.long	RTTI_SYSTEM_TINTERFACEENTRYTYPE+142
	.long	0
	.long	RTTI_SYSTEM_TINTERFACEENTRYTYPE+34
	.long	5
	.long	RTTI_SYSTEM_TINTERFACEENTRYTYPE+122
	.long	2
	.long	RTTI_SYSTEM_TINTERFACEENTRYTYPE+67
	.long	4
	.long	RTTI_SYSTEM_TINTERFACEENTRYTYPE+101
	.long	1
	.long	RTTI_SYSTEM_TINTERFACEENTRYTYPE+45

.data
	.balign 4
.globl	RTTI_SYSTEM_TINTERFACEENTRYTYPE_o2s
RTTI_SYSTEM_TINTERFACEENTRYTYPE_o2s:
	.long	0
	.long	RTTI_SYSTEM_TINTERFACEENTRYTYPE+34
	.long	RTTI_SYSTEM_TINTERFACEENTRYTYPE+45
	.long	RTTI_SYSTEM_TINTERFACEENTRYTYPE+67
	.long	RTTI_SYSTEM_TINTERFACEENTRYTYPE+88
	.long	RTTI_SYSTEM_TINTERFACEENTRYTYPE+101
	.long	RTTI_SYSTEM_TINTERFACEENTRYTYPE+122
	.long	RTTI_SYSTEM_TINTERFACEENTRYTYPE+142

.data
	.balign 4
.globl	INIT_SYSTEM_PINTERFACEENTRY
INIT_SYSTEM_PINTERFACEENTRY:
	.byte	0
	.ascii	"\017pinterfaceentry"

.data
	.balign 4
.globl	RTTI_SYSTEM_PINTERFACEENTRY
RTTI_SYSTEM_PINTERFACEENTRY:
	.byte	0
	.ascii	"\017pinterfaceentry"

.data
	.balign 4
.globl	INIT_SYSTEM_TINTERFACEENTRY
INIT_SYSTEM_TINTERFACEENTRY:
	.byte	13,15
	.ascii	"tinterfaceentry"
	.long	20,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TINTERFACEENTRY
RTTI_SYSTEM_TINTERFACEENTRY:
	.byte	13,15
	.ascii	"tinterfaceentry"
	.long	20,6
	.long	RTTI_SYSTEM_PGUID
	.long	0
	.long	RTTI_SYSTEM_POINTER
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_PSHORTSTRING
	.long	12
	.long	RTTI_SYSTEM_TINTERFACEENTRYTYPE
	.long	16
	.long	RTTI_SYSTEM_POINTER
	.long	16

.data
	.balign 4
.globl	INIT_SYSTEM_TINTERFACETABLE
INIT_SYSTEM_TINTERFACETABLE:
	.byte	13,15
	.ascii	"tinterfacetable"
	.long	24,0

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF553
RTTI_SYSTEM_DEF553:
	.byte	12
	.ascii	"\000"
	.long	20,1
	.long	RTTI_SYSTEM_TINTERFACEENTRY
	.long	-1

.data
	.balign 4
.globl	RTTI_SYSTEM_TINTERFACETABLE
RTTI_SYSTEM_TINTERFACETABLE:
	.byte	13,15
	.ascii	"tinterfacetable"
	.long	24,2
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_DEF553
	.long	4

.data
	.balign 4
.globl	INIT_SYSTEM_TMETHOD
INIT_SYSTEM_TMETHOD:
	.byte	13,7
	.ascii	"TMethod"
	.long	8,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TMETHOD
RTTI_SYSTEM_TMETHOD:
	.byte	13,7
	.ascii	"TMethod"
	.long	8,2
	.long	RTTI_SYSTEM_POINTER
	.long	0
	.long	RTTI_SYSTEM_POINTER
	.long	4

.data
	.balign 4
.globl	INIT_SYSTEM_IINVOKABLE
INIT_SYSTEM_IINVOKABLE:
	.byte	14,10
	.ascii	"IInvokable"
	.long	4

.data
	.balign 4
.globl	RTTI_SYSTEM_IINVOKABLE
RTTI_SYSTEM_IINVOKABLE:
	.byte	14,10
	.ascii	"IInvokable"
	.long	RTTI_SYSTEM_IUNKNOWN
	.byte	9
	.long	0
	.short	0,0
	.byte	0,0,0,0,0,0,0,0,6
	.ascii	"System"
	.byte	0

.data
	.balign 4
.globl	INIT_SYSTEM_IENUMERATOR
INIT_SYSTEM_IENUMERATOR:
	.byte	14,11
	.ascii	"IEnumerator"
	.long	4

.data
	.balign 4
.globl	RTTI_SYSTEM_IENUMERATOR
RTTI_SYSTEM_IENUMERATOR:
	.byte	14,11
	.ascii	"IEnumerator"
	.long	RTTI_SYSTEM_IUNKNOWN
	.byte	9
	.long	0
	.short	0,0
	.byte	0,0,0,0,0,0,0,0,6
	.ascii	"System"
	.byte	0

.data
	.balign 4
.globl	INIT_SYSTEM_IENUMERABLE
INIT_SYSTEM_IENUMERABLE:
	.byte	14,11
	.ascii	"IEnumerable"
	.long	4

.data
	.balign 4
.globl	RTTI_SYSTEM_IENUMERABLE
RTTI_SYSTEM_IENUMERABLE:
	.byte	14,11
	.ascii	"IEnumerable"
	.long	RTTI_SYSTEM_IUNKNOWN
	.byte	9
	.long	0
	.short	0,0
	.byte	0,0,0,0,0,0,0,0,6
	.ascii	"System"
	.byte	0

.data
	.balign 4
.globl	INIT_SYSTEM_IDISPATCH
INIT_SYSTEM_IDISPATCH:
	.byte	14,9
	.ascii	"IDispatch"
	.long	4

.data
	.balign 4
.globl	RTTI_SYSTEM_IDISPATCH
RTTI_SYSTEM_IDISPATCH:
	.byte	14,9
	.ascii	"IDispatch"
	.long	RTTI_SYSTEM_IUNKNOWN
	.byte	9
	.long	132096
	.short	0,0
	.byte	192,0,0,0,0,0,0,70,6
	.ascii	"System"
	.byte	38
	.ascii	"{00020400-0000-0000-C000-000000000046}"

.data
	.balign 4
.globl	_$SYSTEM$_Ld52
_$SYSTEM$_Ld52:
	.short	0
	.long	_$SYSTEM$_Ld53
	.balign 4
.globl	_$SYSTEM$_Ld53
_$SYSTEM$_Ld53:
	.short	0

.data
	.balign 4
.globl	INIT_SYSTEM_TINTERFACEDOBJECT
INIT_SYSTEM_TINTERFACEDOBJECT:
	.byte	15,17
	.ascii	"TInterfacedObject"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TINTERFACEDOBJECT
RTTI_SYSTEM_TINTERFACEDOBJECT:
	.byte	15,17
	.ascii	"TInterfacedObject"
	.long	VMT_SYSTEM_TINTERFACEDOBJECT
	.long	RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	6
	.ascii	"System"
	.short	0

.data
	.balign 4
.globl	INIT_SYSTEM_TINTERFACEDCLASS
INIT_SYSTEM_TINTERFACEDCLASS:
	.byte	0
	.ascii	"\020TInterfacedClass"

.data
	.balign 4
.globl	RTTI_SYSTEM_TINTERFACEDCLASS
RTTI_SYSTEM_TINTERFACEDCLASS:
	.byte	0
	.ascii	"\020TInterfacedClass"

.data
	.balign 4
.globl	_$SYSTEM$_Ld55
_$SYSTEM$_Ld55:
	.short	0
	.long	_$SYSTEM$_Ld56
	.balign 4
.globl	_$SYSTEM$_Ld56
_$SYSTEM$_Ld56:
	.short	0

.data
	.balign 4
.globl	INIT_SYSTEM_TAGGREGATEDOBJECT
INIT_SYSTEM_TAGGREGATEDOBJECT:
	.byte	15,17
	.ascii	"TAggregatedObject"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TAGGREGATEDOBJECT
RTTI_SYSTEM_TAGGREGATEDOBJECT:
	.byte	15,17
	.ascii	"TAggregatedObject"
	.long	VMT_SYSTEM_TAGGREGATEDOBJECT
	.long	RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	6
	.ascii	"System"
	.short	0

.data
	.balign 4
.globl	_$SYSTEM$_Ld61
_$SYSTEM$_Ld61:
	.short	0
	.long	_$SYSTEM$_Ld62
	.balign 4
.globl	_$SYSTEM$_Ld62
_$SYSTEM$_Ld62:
	.short	0

.data
	.balign 4
.globl	INIT_SYSTEM_TCONTAINEDOBJECT
INIT_SYSTEM_TCONTAINEDOBJECT:
	.byte	15,16
	.ascii	"TContainedObject"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TCONTAINEDOBJECT
RTTI_SYSTEM_TCONTAINEDOBJECT:
	.byte	15,16
	.ascii	"TContainedObject"
	.long	VMT_SYSTEM_TCONTAINEDOBJECT
	.long	RTTI_SYSTEM_TAGGREGATEDOBJECT
	.short	0
	.byte	6
	.ascii	"System"
	.short	0

.data
	.balign 4
.globl	INIT_SYSTEM_PUNKNOWN
INIT_SYSTEM_PUNKNOWN:
	.byte	0
	.ascii	"\010PUnknown"

.data
	.balign 4
.globl	RTTI_SYSTEM_PUNKNOWN
RTTI_SYSTEM_PUNKNOWN:
	.byte	0
	.ascii	"\010PUnknown"

.data
	.balign 4
.globl	INIT_SYSTEM_PPUNKNOWN
INIT_SYSTEM_PPUNKNOWN:
	.byte	0
	.ascii	"\011PPUnknown"

.data
	.balign 4
.globl	RTTI_SYSTEM_PPUNKNOWN
RTTI_SYSTEM_PPUNKNOWN:
	.byte	0
	.ascii	"\011PPUnknown"

.data
	.balign 4
.globl	INIT_SYSTEM_PDISPATCH
INIT_SYSTEM_PDISPATCH:
	.byte	0
	.ascii	"\011PDispatch"

.data
	.balign 4
.globl	RTTI_SYSTEM_PDISPATCH
RTTI_SYSTEM_PDISPATCH:
	.byte	0
	.ascii	"\011PDispatch"

.data
	.balign 4
.globl	INIT_SYSTEM_PPDISPATCH
INIT_SYSTEM_PPDISPATCH:
	.byte	0
	.ascii	"\012PPDispatch"

.data
	.balign 4
.globl	RTTI_SYSTEM_PPDISPATCH
RTTI_SYSTEM_PPDISPATCH:
	.byte	0
	.ascii	"\012PPDispatch"

.data
	.balign 4
.globl	INIT_SYSTEM_TEXCEPTPROC
INIT_SYSTEM_TEXCEPTPROC:
	.byte	23,11
	.ascii	"TExceptProc"

.data
	.balign 4
.globl	RTTI_SYSTEM_TEXCEPTPROC
RTTI_SYSTEM_TEXCEPTPROC:
	.byte	23,11
	.ascii	"TExceptProc"

.data
	.balign 4
.globl	INIT_SYSTEM_PEXCEPTOBJECT
INIT_SYSTEM_PEXCEPTOBJECT:
	.byte	0
	.ascii	"\015PExceptObject"

.data
	.balign 4
.globl	RTTI_SYSTEM_PEXCEPTOBJECT
RTTI_SYSTEM_PEXCEPTOBJECT:
	.byte	0
	.ascii	"\015PExceptObject"

.data
	.balign 4
.globl	INIT_SYSTEM_TEXCEPTOBJECT
INIT_SYSTEM_TEXCEPTOBJECT:
	.byte	13,13
	.ascii	"TExceptObject"
	.long	24,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TEXCEPTOBJECT
RTTI_SYSTEM_TEXCEPTOBJECT:
	.byte	13,13
	.ascii	"TExceptObject"
	.long	24,6
	.long	RTTI_SYSTEM_TOBJECT
	.long	0
	.long	RTTI_SYSTEM_POINTER
	.long	4
	.long	RTTI_SYSTEM_PEXCEPTOBJECT
	.long	8
	.long	RTTI_SYSTEM_LONGINT
	.long	12
	.long	RTTI_SYSTEM_LONGINT
	.long	16
	.long	RTTI_SYSTEM_PPOINTER
	.long	20

.data
	.balign 4
.globl	INIT_SYSTEM_PVARREC
INIT_SYSTEM_PVARREC:
	.byte	0
	.ascii	"\007PVarRec"

.data
	.balign 4
.globl	RTTI_SYSTEM_PVARREC
RTTI_SYSTEM_PVARREC:
	.byte	0
	.ascii	"\007PVarRec"

.data
	.balign 4
.globl	INIT_SYSTEM_TVARREC
INIT_SYSTEM_TVARREC:
	.byte	13,7
	.ascii	"TVarRec"
	.long	8,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TVARREC
RTTI_SYSTEM_TVARREC:
	.byte	13,7
	.ascii	"TVarRec"
	.long	8,20
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4
	.long	RTTI_SYSTEM_BOOLEAN
	.long	4
	.long	RTTI_SYSTEM_CHAR
	.long	4
	.long	RTTI_SYSTEM_WIDECHAR
	.long	4
	.long	RTTI_SYSTEM_PEXTENDED
	.long	4
	.long	RTTI_SYSTEM_PSHORTSTRING
	.long	4
	.long	RTTI_SYSTEM_POINTER
	.long	4
	.long	RTTI_SYSTEM_PCHAR
	.long	4
	.long	RTTI_SYSTEM_TOBJECT
	.long	4
	.long	RTTI_SYSTEM_TCLASS
	.long	4
	.long	RTTI_SYSTEM_PWIDECHAR
	.long	4
	.long	RTTI_SYSTEM_POINTER
	.long	4
	.long	RTTI_SYSTEM_PCURRENCY
	.long	4
	.long	RTTI_SYSTEM_PVARIANT
	.long	4
	.long	RTTI_SYSTEM_POINTER
	.long	4
	.long	RTTI_SYSTEM_POINTER
	.long	4
	.long	RTTI_SYSTEM_PINT64
	.long	4
	.long	RTTI_SYSTEM_POINTER
	.long	4
	.long	RTTI_SYSTEM_PQWORD
	.long	4

.data
	.balign 4
.globl	INIT_SYSTEM_PVARARRAYBOUNDARRAY
INIT_SYSTEM_PVARARRAYBOUNDARRAY:
	.byte	0
	.ascii	"\023pvararrayboundarray"

.data
	.balign 4
.globl	RTTI_SYSTEM_PVARARRAYBOUNDARRAY
RTTI_SYSTEM_PVARARRAYBOUNDARRAY:
	.byte	0
	.ascii	"\023pvararrayboundarray"

.data
	.balign 4
.globl	INIT_SYSTEM_PVARARRAYCOORARRAY
INIT_SYSTEM_PVARARRAYCOORARRAY:
	.byte	0
	.ascii	"\022pvararraycoorarray"

.data
	.balign 4
.globl	RTTI_SYSTEM_PVARARRAYCOORARRAY
RTTI_SYSTEM_PVARARRAYCOORARRAY:
	.byte	0
	.ascii	"\022pvararraycoorarray"

.data
	.balign 4
.globl	INIT_SYSTEM_PVARARRAYBOUND
INIT_SYSTEM_PVARARRAYBOUND:
	.byte	0
	.ascii	"\016pvararraybound"

.data
	.balign 4
.globl	RTTI_SYSTEM_PVARARRAYBOUND
RTTI_SYSTEM_PVARARRAYBOUND:
	.byte	0
	.ascii	"\016pvararraybound"

.data
	.balign 4
.globl	INIT_SYSTEM_PVARARRAY
INIT_SYSTEM_PVARARRAY:
	.byte	0
	.ascii	"\011pvararray"

.data
	.balign 4
.globl	RTTI_SYSTEM_PVARARRAY
RTTI_SYSTEM_PVARARRAY:
	.byte	0
	.ascii	"\011pvararray"

.data
	.balign 4
.globl	INIT_SYSTEM_TVARARRAYBOUND
INIT_SYSTEM_TVARARRAYBOUND:
	.byte	13,14
	.ascii	"tvararraybound"
	.long	8,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TVARARRAYBOUND
RTTI_SYSTEM_TVARARRAYBOUND:
	.byte	13,14
	.ascii	"tvararraybound"
	.long	8,2
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4

.data
	.balign 4
.globl	INIT_SYSTEM_TVARARRAYBOUNDARRAY
INIT_SYSTEM_TVARARRAYBOUNDARRAY:
	.byte	12
	.ascii	"\023tvararrayboundarray"
	.long	8,1
	.long	INIT_SYSTEM_TVARARRAYBOUND
	.long	-1

.data
	.balign 4
.globl	RTTI_SYSTEM_TVARARRAYBOUNDARRAY
RTTI_SYSTEM_TVARARRAYBOUNDARRAY:
	.byte	12
	.ascii	"\023tvararrayboundarray"
	.long	8,1
	.long	RTTI_SYSTEM_TVARARRAYBOUND
	.long	-1

.data
	.balign 4
.globl	INIT_SYSTEM_TVARARRAYCOORARRAY
INIT_SYSTEM_TVARARRAYCOORARRAY:
	.byte	12
	.ascii	"\022tvararraycoorarray"
	.long	4,1
	.long	INIT_SYSTEM_LONGINT
	.long	3

.data
	.balign 4
.globl	RTTI_SYSTEM_TVARARRAYCOORARRAY
RTTI_SYSTEM_TVARARRAYCOORARRAY:
	.byte	12
	.ascii	"\022tvararraycoorarray"
	.long	4,1
	.long	RTTI_SYSTEM_LONGINT
	.long	3

.data
	.balign 4
.globl	INIT_SYSTEM_TVARARRAY
INIT_SYSTEM_TVARARRAY:
	.byte	13,9
	.ascii	"tvararray"
	.long	24,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TVARARRAY
RTTI_SYSTEM_TVARARRAY:
	.byte	13,9
	.ascii	"tvararray"
	.long	24,6
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_LONGINT
	.long	4
	.long	RTTI_SYSTEM_LONGINT
	.long	8
	.long	RTTI_SYSTEM_POINTER
	.long	12
	.long	RTTI_SYSTEM_TVARARRAYBOUNDARRAY
	.long	16

.data
	.balign 4
.globl	INIT_SYSTEM_TVAROP
INIT_SYSTEM_TVAROP:
	.byte	3,6
	.ascii	"tvarop"
	.byte	5
	.long	0,20,0
	.byte	5
	.ascii	"opadd"
	.byte	10
	.ascii	"opsubtract"
	.byte	10
	.ascii	"opmultiply"
	.byte	8
	.ascii	"opdivide"
	.byte	11
	.ascii	"opintdivide"
	.byte	9
	.ascii	"opmodulus"
	.byte	11
	.ascii	"opshiftleft"
	.byte	12
	.ascii	"opshiftright"
	.byte	5
	.ascii	"opand"
	.byte	4
	.ascii	"opor"
	.byte	5
	.ascii	"opxor"
	.byte	9
	.ascii	"opcompare"
	.byte	8
	.ascii	"opnegate"
	.byte	5
	.ascii	"opnot"
	.byte	7
	.ascii	"opcmpeq"
	.byte	7
	.ascii	"opcmpne"
	.byte	7
	.ascii	"opcmplt"
	.byte	7
	.ascii	"opcmple"
	.byte	7
	.ascii	"opcmpgt"
	.byte	7
	.ascii	"opcmpge"
	.byte	7
	.ascii	"oppower"
	.byte	6
	.ascii	"System"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSTEM_TVAROP
RTTI_SYSTEM_TVAROP:
	.byte	3,6
	.ascii	"tvarop"
	.byte	5
	.long	0,20,0
	.byte	5
	.ascii	"opadd"
	.byte	10
	.ascii	"opsubtract"
	.byte	10
	.ascii	"opmultiply"
	.byte	8
	.ascii	"opdivide"
	.byte	11
	.ascii	"opintdivide"
	.byte	9
	.ascii	"opmodulus"
	.byte	11
	.ascii	"opshiftleft"
	.byte	12
	.ascii	"opshiftright"
	.byte	5
	.ascii	"opand"
	.byte	4
	.ascii	"opor"
	.byte	5
	.ascii	"opxor"
	.byte	9
	.ascii	"opcompare"
	.byte	8
	.ascii	"opnegate"
	.byte	5
	.ascii	"opnot"
	.byte	7
	.ascii	"opcmpeq"
	.byte	7
	.ascii	"opcmpne"
	.byte	7
	.ascii	"opcmplt"
	.byte	7
	.ascii	"opcmple"
	.byte	7
	.ascii	"opcmpgt"
	.byte	7
	.ascii	"opcmpge"
	.byte	7
	.ascii	"oppower"
	.byte	6
	.ascii	"System"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSTEM_TVAROP_s2o
RTTI_SYSTEM_TVAROP_s2o:
	.long	21,0
	.long	RTTI_SYSTEM_TVAROP+21
	.long	8
	.long	RTTI_SYSTEM_TVAROP+105
	.long	14
	.long	RTTI_SYSTEM_TVAROP+147
	.long	19
	.long	RTTI_SYSTEM_TVAROP+187
	.long	18
	.long	RTTI_SYSTEM_TVAROP+179
	.long	17
	.long	RTTI_SYSTEM_TVAROP+171
	.long	16
	.long	RTTI_SYSTEM_TVAROP+163
	.long	15
	.long	RTTI_SYSTEM_TVAROP+155
	.long	11
	.long	RTTI_SYSTEM_TVAROP+122
	.long	3
	.long	RTTI_SYSTEM_TVAROP+49
	.long	4
	.long	RTTI_SYSTEM_TVAROP+58
	.long	5
	.long	RTTI_SYSTEM_TVAROP+70
	.long	2
	.long	RTTI_SYSTEM_TVAROP+38
	.long	12
	.long	RTTI_SYSTEM_TVAROP+132
	.long	13
	.long	RTTI_SYSTEM_TVAROP+141
	.long	9
	.long	RTTI_SYSTEM_TVAROP+111
	.long	20
	.long	RTTI_SYSTEM_TVAROP+195
	.long	6
	.long	RTTI_SYSTEM_TVAROP+80
	.long	7
	.long	RTTI_SYSTEM_TVAROP+92
	.long	1
	.long	RTTI_SYSTEM_TVAROP+27
	.long	10
	.long	RTTI_SYSTEM_TVAROP+116

.data
	.balign 4
.globl	RTTI_SYSTEM_TVAROP_o2s
RTTI_SYSTEM_TVAROP_o2s:
	.long	0
	.long	RTTI_SYSTEM_TVAROP+21
	.long	RTTI_SYSTEM_TVAROP+27
	.long	RTTI_SYSTEM_TVAROP+38
	.long	RTTI_SYSTEM_TVAROP+49
	.long	RTTI_SYSTEM_TVAROP+58
	.long	RTTI_SYSTEM_TVAROP+70
	.long	RTTI_SYSTEM_TVAROP+80
	.long	RTTI_SYSTEM_TVAROP+92
	.long	RTTI_SYSTEM_TVAROP+105
	.long	RTTI_SYSTEM_TVAROP+111
	.long	RTTI_SYSTEM_TVAROP+116
	.long	RTTI_SYSTEM_TVAROP+122
	.long	RTTI_SYSTEM_TVAROP+132
	.long	RTTI_SYSTEM_TVAROP+141
	.long	RTTI_SYSTEM_TVAROP+147
	.long	RTTI_SYSTEM_TVAROP+155
	.long	RTTI_SYSTEM_TVAROP+163
	.long	RTTI_SYSTEM_TVAROP+171
	.long	RTTI_SYSTEM_TVAROP+179
	.long	RTTI_SYSTEM_TVAROP+187
	.long	RTTI_SYSTEM_TVAROP+195

.data
	.balign 4
.globl	INIT_SYSTEM_TVARDATA
INIT_SYSTEM_TVARDATA:
	.byte	13,8
	.ascii	"tvardata"
	.long	16,0

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF674
RTTI_SYSTEM_DEF674:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	RTTI_SYSTEM_LONGINT
	.long	3

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF675
RTTI_SYSTEM_DEF675:
	.byte	12
	.ascii	"\000"
	.long	2,7
	.long	RTTI_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF676
RTTI_SYSTEM_DEF676:
	.byte	12
	.ascii	"\000"
	.long	1,14
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_SYSTEM_TVARDATA
RTTI_SYSTEM_TVARDATA:
	.byte	13,8
	.ascii	"tvardata"
	.long	16,31
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_SMALLINT
	.long	8
	.long	RTTI_SYSTEM_LONGINT
	.long	8
	.long	RTTI_SYSTEM_SINGLE
	.long	8
	.long	RTTI_SYSTEM_DOUBLE
	.long	8
	.long	RTTI_SYSTEM_TDATETIME
	.long	8
	.long	RTTI_SYSTEM_CURRENCY
	.long	8
	.long	RTTI_SYSTEM_PWIDECHAR
	.long	8
	.long	RTTI_SYSTEM_POINTER
	.long	8
	.long	RTTI_SYSTEM_HRESULT
	.long	8
	.long	RTTI_SYSTEM_WORDBOOL
	.long	8
	.long	RTTI_SYSTEM_POINTER
	.long	8
	.long	RTTI_SYSTEM_SHORTINT
	.long	8
	.long	RTTI_SYSTEM_BYTE
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	8
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_INT64
	.long	8
	.long	RTTI_SYSTEM_QWORD
	.long	8
	.long	RTTI_SYSTEM_QWORD
	.long	8
	.long	RTTI_SYSTEM_POINTER
	.long	8
	.long	RTTI_SYSTEM_POINTER
	.long	8
	.long	RTTI_SYSTEM_PVARARRAY
	.long	8
	.long	RTTI_SYSTEM_POINTER
	.long	8
	.long	RTTI_SYSTEM_POINTER
	.long	8
	.long	RTTI_SYSTEM_POINTER
	.long	12
	.long	RTTI_SYSTEM_DEF674
	.long	4
	.long	RTTI_SYSTEM_DEF675
	.long	2
	.long	RTTI_SYSTEM_DEF676
	.long	2

.data
	.balign 4
.globl	INIT_SYSTEM_PVARDATA
INIT_SYSTEM_PVARDATA:
	.byte	0
	.ascii	"\010pvardata"

.data
	.balign 4
.globl	RTTI_SYSTEM_PVARDATA
RTTI_SYSTEM_PVARDATA:
	.byte	0
	.ascii	"\010pvardata"

.data
	.balign 4
.globl	INIT_SYSTEM_PCALLDESC
INIT_SYSTEM_PCALLDESC:
	.byte	0
	.ascii	"\011pcalldesc"

.data
	.balign 4
.globl	RTTI_SYSTEM_PCALLDESC
RTTI_SYSTEM_PCALLDESC:
	.byte	0
	.ascii	"\011pcalldesc"

.data
	.balign 4
.globl	INIT_SYSTEM_TCALLDESC
INIT_SYSTEM_TCALLDESC:
	.byte	13,9
	.ascii	"tcalldesc"
	.long	259,0

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF680
RTTI_SYSTEM_DEF680:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_SYSTEM_TCALLDESC
RTTI_SYSTEM_TCALLDESC:
	.byte	13,9
	.ascii	"tcalldesc"
	.long	259,4
	.long	RTTI_SYSTEM_BYTE
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	1
	.long	RTTI_SYSTEM_BYTE
	.long	2
	.long	RTTI_SYSTEM_DEF680
	.long	3

.data
	.balign 4
.globl	INIT_SYSTEM_PDISPDESC
INIT_SYSTEM_PDISPDESC:
	.byte	0
	.ascii	"\011pdispdesc"

.data
	.balign 4
.globl	RTTI_SYSTEM_PDISPDESC
RTTI_SYSTEM_PDISPDESC:
	.byte	0
	.ascii	"\011pdispdesc"

.data
	.balign 4
.globl	INIT_SYSTEM_TDISPDESC
INIT_SYSTEM_TDISPDESC:
	.byte	13,9
	.ascii	"tdispdesc"
	.long	264,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TDISPDESC
RTTI_SYSTEM_TDISPDESC:
	.byte	13,9
	.ascii	"tdispdesc"
	.long	264,3
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	4
	.long	RTTI_SYSTEM_TCALLDESC
	.long	5

.data
	.balign 4
.globl	INIT_SYSTEM_TVARIANTMANAGER
INIT_SYSTEM_TVARIANTMANAGER:
	.byte	13,15
	.ascii	"tvariantmanager"
	.long	184,0

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF684
RTTI_SYSTEM_DEF684:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF685
RTTI_SYSTEM_DEF685:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF686
RTTI_SYSTEM_DEF686:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF687
RTTI_SYSTEM_DEF687:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF688
RTTI_SYSTEM_DEF688:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF689
RTTI_SYSTEM_DEF689:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF690
RTTI_SYSTEM_DEF690:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF691
RTTI_SYSTEM_DEF691:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF692
RTTI_SYSTEM_DEF692:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF693
RTTI_SYSTEM_DEF693:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF694
RTTI_SYSTEM_DEF694:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF695
RTTI_SYSTEM_DEF695:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF696
RTTI_SYSTEM_DEF696:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF697
RTTI_SYSTEM_DEF697:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF698
RTTI_SYSTEM_DEF698:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF699
RTTI_SYSTEM_DEF699:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF700
RTTI_SYSTEM_DEF700:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF701
RTTI_SYSTEM_DEF701:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF702
RTTI_SYSTEM_DEF702:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF703
RTTI_SYSTEM_DEF703:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF704
RTTI_SYSTEM_DEF704:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF705
RTTI_SYSTEM_DEF705:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF706
RTTI_SYSTEM_DEF706:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF707
RTTI_SYSTEM_DEF707:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF708
RTTI_SYSTEM_DEF708:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF709
RTTI_SYSTEM_DEF709:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF710
RTTI_SYSTEM_DEF710:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF711
RTTI_SYSTEM_DEF711:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF712
RTTI_SYSTEM_DEF712:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF713
RTTI_SYSTEM_DEF713:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF714
RTTI_SYSTEM_DEF714:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF715
RTTI_SYSTEM_DEF715:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF716
RTTI_SYSTEM_DEF716:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF717
RTTI_SYSTEM_DEF717:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF718
RTTI_SYSTEM_DEF718:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF719
RTTI_SYSTEM_DEF719:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF720
RTTI_SYSTEM_DEF720:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF721
RTTI_SYSTEM_DEF721:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF722
RTTI_SYSTEM_DEF722:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF723
RTTI_SYSTEM_DEF723:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF724
RTTI_SYSTEM_DEF724:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF725
RTTI_SYSTEM_DEF725:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF726
RTTI_SYSTEM_DEF726:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF727
RTTI_SYSTEM_DEF727:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF728
RTTI_SYSTEM_DEF728:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF729
RTTI_SYSTEM_DEF729:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_TVARIANTMANAGER
RTTI_SYSTEM_TVARIANTMANAGER:
	.byte	13,15
	.ascii	"tvariantmanager"
	.long	184,46
	.long	RTTI_SYSTEM_DEF684
	.long	0
	.long	RTTI_SYSTEM_DEF685
	.long	4
	.long	RTTI_SYSTEM_DEF686
	.long	8
	.long	RTTI_SYSTEM_DEF687
	.long	12
	.long	RTTI_SYSTEM_DEF688
	.long	16
	.long	RTTI_SYSTEM_DEF689
	.long	20
	.long	RTTI_SYSTEM_DEF690
	.long	24
	.long	RTTI_SYSTEM_DEF691
	.long	28
	.long	RTTI_SYSTEM_DEF692
	.long	32
	.long	RTTI_SYSTEM_DEF693
	.long	36
	.long	RTTI_SYSTEM_DEF694
	.long	40
	.long	RTTI_SYSTEM_DEF695
	.long	44
	.long	RTTI_SYSTEM_DEF696
	.long	48
	.long	RTTI_SYSTEM_DEF697
	.long	52
	.long	RTTI_SYSTEM_DEF698
	.long	56
	.long	RTTI_SYSTEM_DEF699
	.long	60
	.long	RTTI_SYSTEM_DEF700
	.long	64
	.long	RTTI_SYSTEM_DEF701
	.long	68
	.long	RTTI_SYSTEM_DEF702
	.long	72
	.long	RTTI_SYSTEM_DEF703
	.long	76
	.long	RTTI_SYSTEM_DEF704
	.long	80
	.long	RTTI_SYSTEM_DEF705
	.long	84
	.long	RTTI_SYSTEM_DEF706
	.long	88
	.long	RTTI_SYSTEM_DEF707
	.long	92
	.long	RTTI_SYSTEM_DEF708
	.long	96
	.long	RTTI_SYSTEM_DEF709
	.long	100
	.long	RTTI_SYSTEM_DEF710
	.long	104
	.long	RTTI_SYSTEM_DEF711
	.long	108
	.long	RTTI_SYSTEM_DEF712
	.long	112
	.long	RTTI_SYSTEM_DEF713
	.long	116
	.long	RTTI_SYSTEM_DEF714
	.long	120
	.long	RTTI_SYSTEM_DEF715
	.long	124
	.long	RTTI_SYSTEM_DEF716
	.long	128
	.long	RTTI_SYSTEM_DEF717
	.long	132
	.long	RTTI_SYSTEM_DEF718
	.long	136
	.long	RTTI_SYSTEM_DEF719
	.long	140
	.long	RTTI_SYSTEM_DEF720
	.long	144
	.long	RTTI_SYSTEM_DEF721
	.long	148
	.long	RTTI_SYSTEM_DEF722
	.long	152
	.long	RTTI_SYSTEM_DEF723
	.long	156
	.long	RTTI_SYSTEM_DEF724
	.long	160
	.long	RTTI_SYSTEM_DEF725
	.long	164
	.long	RTTI_SYSTEM_DEF726
	.long	168
	.long	RTTI_SYSTEM_DEF727
	.long	172
	.long	RTTI_SYSTEM_DEF728
	.long	176
	.long	RTTI_SYSTEM_DEF729
	.long	180

.data
	.balign 4
.globl	INIT_SYSTEM_PVARIANTMANAGER
INIT_SYSTEM_PVARIANTMANAGER:
	.byte	0
	.ascii	"\017pvariantmanager"

.data
	.balign 4
.globl	RTTI_SYSTEM_PVARIANTMANAGER
RTTI_SYSTEM_PVARIANTMANAGER:
	.byte	0
	.ascii	"\017pvariantmanager"

.data
	.balign 4
.globl	INIT_SYSTEM_PDYNARRAYINDEX
INIT_SYSTEM_PDYNARRAYINDEX:
	.byte	0
	.ascii	"\016pdynarrayindex"

.data
	.balign 4
.globl	RTTI_SYSTEM_PDYNARRAYINDEX
RTTI_SYSTEM_PDYNARRAYINDEX:
	.byte	0
	.ascii	"\016pdynarrayindex"

.data
	.balign 4
.globl	INIT_SYSTEM_PDYNARRAYTYPEINFO
INIT_SYSTEM_PDYNARRAYTYPEINFO:
	.byte	0
	.ascii	"\021pdynarraytypeinfo"

.data
	.balign 4
.globl	RTTI_SYSTEM_PDYNARRAYTYPEINFO
RTTI_SYSTEM_PDYNARRAYTYPEINFO:
	.byte	0
	.ascii	"\021pdynarraytypeinfo"

.data
	.balign 4
.globl	INIT_SYSTEM_TDYNARRAYTYPEINFO
INIT_SYSTEM_TDYNARRAYTYPEINFO:
	.byte	13,17
	.ascii	"tdynarraytypeinfo"
	.long	14,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TDYNARRAYTYPEINFO
RTTI_SYSTEM_TDYNARRAYTYPEINFO:
	.byte	13,17
	.ascii	"tdynarraytypeinfo"
	.long	14,5
	.long	RTTI_SYSTEM_BYTE
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	1
	.long	RTTI_SYSTEM_LONGINT
	.long	2
	.long	RTTI_SYSTEM_PDYNARRAYTYPEINFO
	.long	6
	.long	RTTI_SYSTEM_LONGINT
	.long	10

.data
	.balign 4
.globl	INIT_SYSTEM_DEF879
INIT_SYSTEM_DEF879:
	.byte	1
	.ascii	"\000"
	.byte	0
	.long	0,1

.data
	.balign 4
.globl	INIT_SYSTEM_FPC_SMALL_SET
INIT_SYSTEM_FPC_SMALL_SET:
	.byte	0
	.ascii	"\015fpc_small_set"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF879
RTTI_SYSTEM_DEF879:
	.byte	1
	.ascii	"\000"
	.byte	0
	.long	0,1

.data
	.balign 4
.globl	RTTI_SYSTEM_FPC_SMALL_SET
RTTI_SYSTEM_FPC_SMALL_SET:
	.byte	0
	.ascii	"\015fpc_small_set"

.data
	.balign 4
.globl	INIT_SYSTEM_DEF881
INIT_SYSTEM_DEF881:
	.byte	1
	.ascii	"\000"
	.byte	0
	.long	0,1

.data
	.balign 4
.globl	INIT_SYSTEM_FPC_NORMAL_SET
INIT_SYSTEM_FPC_NORMAL_SET:
	.byte	0
	.ascii	"\016fpc_normal_set"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF881
RTTI_SYSTEM_DEF881:
	.byte	1
	.ascii	"\000"
	.byte	0
	.long	0,1

.data
	.balign 4
.globl	RTTI_SYSTEM_FPC_NORMAL_SET
RTTI_SYSTEM_FPC_NORMAL_SET:
	.byte	0
	.ascii	"\016fpc_normal_set"

.data
	.balign 4
.globl	INIT_SYSTEM_FPC_NORMAL_SET_BYTE
INIT_SYSTEM_FPC_NORMAL_SET_BYTE:
	.byte	12
	.ascii	"\023fpc_normal_set_byte"
	.long	1,32
	.long	INIT_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_SYSTEM_FPC_NORMAL_SET_BYTE
RTTI_SYSTEM_FPC_NORMAL_SET_BYTE:
	.byte	12
	.ascii	"\023fpc_normal_set_byte"
	.long	1,32
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	INIT_SYSTEM_FPC_NORMAL_SET_LONG
INIT_SYSTEM_FPC_NORMAL_SET_LONG:
	.byte	12
	.ascii	"\023fpc_normal_set_long"
	.long	4,8
	.long	INIT_SYSTEM_LONGINT
	.long	3

.data
	.balign 4
.globl	RTTI_SYSTEM_FPC_NORMAL_SET_LONG
RTTI_SYSTEM_FPC_NORMAL_SET_LONG:
	.byte	12
	.ascii	"\023fpc_normal_set_long"
	.long	4,8
	.long	RTTI_SYSTEM_LONGINT
	.long	3

.data
	.balign 4
.globl	INIT_SYSTEM_DEF976
INIT_SYSTEM_DEF976:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSTEM_DEF1005
INIT_SYSTEM_DEF1005:
	.byte	12
	.ascii	"\015UnicodeString"
	.long	4,0
	.long	INIT_SYSTEM_UNICODESTRING
	.long	258

.data
	.balign 4
.globl	INIT_SYSTEM_TFPCHEAPSTATUS
INIT_SYSTEM_TFPCHEAPSTATUS:
	.byte	13,14
	.ascii	"TFPCHeapStatus"
	.long	20,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TFPCHEAPSTATUS
RTTI_SYSTEM_TFPCHEAPSTATUS:
	.byte	13,14
	.ascii	"TFPCHeapStatus"
	.long	20,5
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_LONGWORD
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	16

.data
	.balign 4
.globl	INIT_SYSTEM_THEAPSTATUS
INIT_SYSTEM_THEAPSTATUS:
	.byte	13,11
	.ascii	"THeapStatus"
	.long	40,0

.data
	.balign 4
.globl	RTTI_SYSTEM_THEAPSTATUS
RTTI_SYSTEM_THEAPSTATUS:
	.byte	13,11
	.ascii	"THeapStatus"
	.long	40,10
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_LONGWORD
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_LONGWORD
	.long	20
	.long	RTTI_SYSTEM_LONGWORD
	.long	24
	.long	RTTI_SYSTEM_LONGWORD
	.long	28
	.long	RTTI_SYSTEM_LONGWORD
	.long	32
	.long	RTTI_SYSTEM_LONGWORD
	.long	36

.data
	.balign 4
.globl	INIT_SYSTEM_PMEMORYMANAGER
INIT_SYSTEM_PMEMORYMANAGER:
	.byte	0
	.ascii	"\016PMemoryManager"

.data
	.balign 4
.globl	RTTI_SYSTEM_PMEMORYMANAGER
RTTI_SYSTEM_PMEMORYMANAGER:
	.byte	0
	.ascii	"\016PMemoryManager"

.data
	.balign 4
.globl	INIT_SYSTEM_TMEMORYMANAGER
INIT_SYSTEM_TMEMORYMANAGER:
	.byte	13,14
	.ascii	"TMemoryManager"
	.long	48,0

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1215
RTTI_SYSTEM_DEF1215:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1216
RTTI_SYSTEM_DEF1216:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1217
RTTI_SYSTEM_DEF1217:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1218
RTTI_SYSTEM_DEF1218:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1219
RTTI_SYSTEM_DEF1219:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1220
RTTI_SYSTEM_DEF1220:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1221
RTTI_SYSTEM_DEF1221:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1222
RTTI_SYSTEM_DEF1222:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1223
RTTI_SYSTEM_DEF1223:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1224
RTTI_SYSTEM_DEF1224:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1225
RTTI_SYSTEM_DEF1225:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_TMEMORYMANAGER
RTTI_SYSTEM_TMEMORYMANAGER:
	.byte	13,14
	.ascii	"TMemoryManager"
	.long	48,12
	.long	RTTI_SYSTEM_BOOLEAN
	.long	0
	.long	RTTI_SYSTEM_DEF1215
	.long	4
	.long	RTTI_SYSTEM_DEF1216
	.long	8
	.long	RTTI_SYSTEM_DEF1217
	.long	12
	.long	RTTI_SYSTEM_DEF1218
	.long	16
	.long	RTTI_SYSTEM_DEF1219
	.long	20
	.long	RTTI_SYSTEM_DEF1220
	.long	24
	.long	RTTI_SYSTEM_DEF1221
	.long	28
	.long	RTTI_SYSTEM_DEF1222
	.long	32
	.long	RTTI_SYSTEM_DEF1223
	.long	36
	.long	RTTI_SYSTEM_DEF1224
	.long	40
	.long	RTTI_SYSTEM_DEF1225
	.long	44

.data
	.balign 4
.globl	INIT_SYSTEM_PRTLEVENT
INIT_SYSTEM_PRTLEVENT:
	.byte	0
	.ascii	"\011PRTLEvent"

.data
	.balign 4
.globl	RTTI_SYSTEM_PRTLEVENT
RTTI_SYSTEM_PRTLEVENT:
	.byte	0
	.ascii	"\011PRTLEvent"

.data
	.balign 4
.globl	INIT_SYSTEM_TTHREADFUNC
INIT_SYSTEM_TTHREADFUNC:
	.byte	23,11
	.ascii	"TThreadFunc"

.data
	.balign 4
.globl	RTTI_SYSTEM_TTHREADFUNC
RTTI_SYSTEM_TTHREADFUNC:
	.byte	23,11
	.ascii	"TThreadFunc"

.data
	.balign 4
.globl	INIT_SYSTEM_TRTLMETHOD
INIT_SYSTEM_TRTLMETHOD:
	.byte	6,10
	.ascii	"trtlmethod"
	.byte	0,0,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TRTLMETHOD
RTTI_SYSTEM_TRTLMETHOD:
	.byte	6,10
	.ascii	"trtlmethod"
	.byte	0,0,0

.data
	.balign 4
.globl	INIT_SYSTEM_TBEGINTHREADHANDLER
INIT_SYSTEM_TBEGINTHREADHANDLER:
	.byte	23,19
	.ascii	"TBeginThreadHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TBEGINTHREADHANDLER
RTTI_SYSTEM_TBEGINTHREADHANDLER:
	.byte	23,19
	.ascii	"TBeginThreadHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TENDTHREADHANDLER
INIT_SYSTEM_TENDTHREADHANDLER:
	.byte	23,17
	.ascii	"TEndThreadHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TENDTHREADHANDLER
RTTI_SYSTEM_TENDTHREADHANDLER:
	.byte	23,17
	.ascii	"TEndThreadHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TTHREADHANDLER
INIT_SYSTEM_TTHREADHANDLER:
	.byte	23,14
	.ascii	"TThreadHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TTHREADHANDLER
RTTI_SYSTEM_TTHREADHANDLER:
	.byte	23,14
	.ascii	"TThreadHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TTHREADSWITCHHANDLER
INIT_SYSTEM_TTHREADSWITCHHANDLER:
	.byte	23,20
	.ascii	"TThreadSwitchHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TTHREADSWITCHHANDLER
RTTI_SYSTEM_TTHREADSWITCHHANDLER:
	.byte	23,20
	.ascii	"TThreadSwitchHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TWAITFORTHREADTERMINATEHANDLER
INIT_SYSTEM_TWAITFORTHREADTERMINATEHANDLER:
	.byte	23,30
	.ascii	"TWaitForThreadTerminateHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TWAITFORTHREADTERMINATEHANDLER
RTTI_SYSTEM_TWAITFORTHREADTERMINATEHANDLER:
	.byte	23,30
	.ascii	"TWaitForThreadTerminateHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TTHREADSETPRIORITYHANDLER
INIT_SYSTEM_TTHREADSETPRIORITYHANDLER:
	.byte	23,25
	.ascii	"TThreadSetPriorityHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TTHREADSETPRIORITYHANDLER
RTTI_SYSTEM_TTHREADSETPRIORITYHANDLER:
	.byte	23,25
	.ascii	"TThreadSetPriorityHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TTHREADGETPRIORITYHANDLER
INIT_SYSTEM_TTHREADGETPRIORITYHANDLER:
	.byte	23,25
	.ascii	"TThreadGetPriorityHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TTHREADGETPRIORITYHANDLER
RTTI_SYSTEM_TTHREADGETPRIORITYHANDLER:
	.byte	23,25
	.ascii	"TThreadGetPriorityHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TGETCURRENTTHREADIDHANDLER
INIT_SYSTEM_TGETCURRENTTHREADIDHANDLER:
	.byte	23,26
	.ascii	"TGetCurrentThreadIdHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TGETCURRENTTHREADIDHANDLER
RTTI_SYSTEM_TGETCURRENTTHREADIDHANDLER:
	.byte	23,26
	.ascii	"TGetCurrentThreadIdHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TCRITICALSECTIONHANDLER
INIT_SYSTEM_TCRITICALSECTIONHANDLER:
	.byte	23,23
	.ascii	"TCriticalSectionHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TCRITICALSECTIONHANDLER
RTTI_SYSTEM_TCRITICALSECTIONHANDLER:
	.byte	23,23
	.ascii	"TCriticalSectionHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TCRITICALSECTIONHANDLERTRYENTER
INIT_SYSTEM_TCRITICALSECTIONHANDLERTRYENTER:
	.byte	23,31
	.ascii	"TCriticalSectionHandlerTryEnter"

.data
	.balign 4
.globl	RTTI_SYSTEM_TCRITICALSECTIONHANDLERTRYENTER
RTTI_SYSTEM_TCRITICALSECTIONHANDLERTRYENTER:
	.byte	23,31
	.ascii	"TCriticalSectionHandlerTryEnter"

.data
	.balign 4
.globl	INIT_SYSTEM_TINITTHREADVARHANDLER
INIT_SYSTEM_TINITTHREADVARHANDLER:
	.byte	23,21
	.ascii	"TInitThreadVarHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TINITTHREADVARHANDLER
RTTI_SYSTEM_TINITTHREADVARHANDLER:
	.byte	23,21
	.ascii	"TInitThreadVarHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TRELOCATETHREADVARHANDLER
INIT_SYSTEM_TRELOCATETHREADVARHANDLER:
	.byte	23,25
	.ascii	"TRelocateThreadVarHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TRELOCATETHREADVARHANDLER
RTTI_SYSTEM_TRELOCATETHREADVARHANDLER:
	.byte	23,25
	.ascii	"TRelocateThreadVarHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TALLOCATETHREADVARSHANDLER
INIT_SYSTEM_TALLOCATETHREADVARSHANDLER:
	.byte	23,26
	.ascii	"TAllocateThreadVarsHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TALLOCATETHREADVARSHANDLER
RTTI_SYSTEM_TALLOCATETHREADVARSHANDLER:
	.byte	23,26
	.ascii	"TAllocateThreadVarsHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TRELEASETHREADVARSHANDLER
INIT_SYSTEM_TRELEASETHREADVARSHANDLER:
	.byte	23,25
	.ascii	"TReleaseThreadVarsHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TRELEASETHREADVARSHANDLER
RTTI_SYSTEM_TRELEASETHREADVARSHANDLER:
	.byte	23,25
	.ascii	"TReleaseThreadVarsHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TBASICEVENTHANDLER
INIT_SYSTEM_TBASICEVENTHANDLER:
	.byte	23,18
	.ascii	"TBasicEventHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TBASICEVENTHANDLER
RTTI_SYSTEM_TBASICEVENTHANDLER:
	.byte	23,18
	.ascii	"TBasicEventHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TBASICEVENTWAITFORHANDLER
INIT_SYSTEM_TBASICEVENTWAITFORHANDLER:
	.byte	23,25
	.ascii	"TBasicEventWaitForHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TBASICEVENTWAITFORHANDLER
RTTI_SYSTEM_TBASICEVENTWAITFORHANDLER:
	.byte	23,25
	.ascii	"TBasicEventWaitForHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TBASICEVENTCREATEHANDLER
INIT_SYSTEM_TBASICEVENTCREATEHANDLER:
	.byte	23,24
	.ascii	"TBasicEventCreateHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TBASICEVENTCREATEHANDLER
RTTI_SYSTEM_TBASICEVENTCREATEHANDLER:
	.byte	23,24
	.ascii	"TBasicEventCreateHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TRTLEVENTHANDLER
INIT_SYSTEM_TRTLEVENTHANDLER:
	.byte	23,16
	.ascii	"TRTLEventHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TRTLEVENTHANDLER
RTTI_SYSTEM_TRTLEVENTHANDLER:
	.byte	23,16
	.ascii	"TRTLEventHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TRTLEVENTHANDLERTIMEOUT
INIT_SYSTEM_TRTLEVENTHANDLERTIMEOUT:
	.byte	23,23
	.ascii	"TRTLEventHandlerTimeout"

.data
	.balign 4
.globl	RTTI_SYSTEM_TRTLEVENTHANDLERTIMEOUT
RTTI_SYSTEM_TRTLEVENTHANDLERTIMEOUT:
	.byte	23,23
	.ascii	"TRTLEventHandlerTimeout"

.data
	.balign 4
.globl	INIT_SYSTEM_TRTLCREATEEVENTHANDLER
INIT_SYSTEM_TRTLCREATEEVENTHANDLER:
	.byte	23,22
	.ascii	"TRTLCreateEventHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TRTLCREATEEVENTHANDLER
RTTI_SYSTEM_TRTLCREATEEVENTHANDLER:
	.byte	23,22
	.ascii	"TRTLCreateEventHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TRTLEVENTSYNCHANDLER
INIT_SYSTEM_TRTLEVENTSYNCHANDLER:
	.byte	23,20
	.ascii	"TRTLEventSyncHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TRTLEVENTSYNCHANDLER
RTTI_SYSTEM_TRTLEVENTSYNCHANDLER:
	.byte	23,20
	.ascii	"TRTLEventSyncHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TSEMPAHOREINITHANDLER
INIT_SYSTEM_TSEMPAHOREINITHANDLER:
	.byte	23,21
	.ascii	"TSempahoreInitHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TSEMPAHOREINITHANDLER
RTTI_SYSTEM_TSEMPAHOREINITHANDLER:
	.byte	23,21
	.ascii	"TSempahoreInitHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TSEMAPHOREDESTROYHANDLER
INIT_SYSTEM_TSEMAPHOREDESTROYHANDLER:
	.byte	23,24
	.ascii	"TSemaphoreDestroyHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TSEMAPHOREDESTROYHANDLER
RTTI_SYSTEM_TSEMAPHOREDESTROYHANDLER:
	.byte	23,24
	.ascii	"TSemaphoreDestroyHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TSEMAPHOREPOSTHANDLER
INIT_SYSTEM_TSEMAPHOREPOSTHANDLER:
	.byte	23,21
	.ascii	"TSemaphorePostHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TSEMAPHOREPOSTHANDLER
RTTI_SYSTEM_TSEMAPHOREPOSTHANDLER:
	.byte	23,21
	.ascii	"TSemaphorePostHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TSEMAPHOREWAITHANDLER
INIT_SYSTEM_TSEMAPHOREWAITHANDLER:
	.byte	23,21
	.ascii	"TSemaphoreWaitHandler"

.data
	.balign 4
.globl	RTTI_SYSTEM_TSEMAPHOREWAITHANDLER
RTTI_SYSTEM_TSEMAPHOREWAITHANDLER:
	.byte	23,21
	.ascii	"TSemaphoreWaitHandler"

.data
	.balign 4
.globl	INIT_SYSTEM_TTHREADMANAGER
INIT_SYSTEM_TTHREADMANAGER:
	.byte	13,14
	.ascii	"TThreadManager"
	.long	152,0

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1281
RTTI_SYSTEM_DEF1281:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1282
RTTI_SYSTEM_DEF1282:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_TTHREADMANAGER
RTTI_SYSTEM_TTHREADMANAGER:
	.byte	13,14
	.ascii	"TThreadManager"
	.long	152,38
	.long	RTTI_SYSTEM_DEF1281
	.long	0
	.long	RTTI_SYSTEM_DEF1282
	.long	4
	.long	RTTI_SYSTEM_TBEGINTHREADHANDLER
	.long	8
	.long	RTTI_SYSTEM_TENDTHREADHANDLER
	.long	12
	.long	RTTI_SYSTEM_TTHREADHANDLER
	.long	16
	.long	RTTI_SYSTEM_TTHREADHANDLER
	.long	20
	.long	RTTI_SYSTEM_TTHREADHANDLER
	.long	24
	.long	RTTI_SYSTEM_TTHREADHANDLER
	.long	28
	.long	RTTI_SYSTEM_TTHREADSWITCHHANDLER
	.long	32
	.long	RTTI_SYSTEM_TWAITFORTHREADTERMINATEHANDLER
	.long	36
	.long	RTTI_SYSTEM_TTHREADSETPRIORITYHANDLER
	.long	40
	.long	RTTI_SYSTEM_TTHREADGETPRIORITYHANDLER
	.long	44
	.long	RTTI_SYSTEM_TGETCURRENTTHREADIDHANDLER
	.long	48
	.long	RTTI_SYSTEM_TCRITICALSECTIONHANDLER
	.long	52
	.long	RTTI_SYSTEM_TCRITICALSECTIONHANDLER
	.long	56
	.long	RTTI_SYSTEM_TCRITICALSECTIONHANDLER
	.long	60
	.long	RTTI_SYSTEM_TCRITICALSECTIONHANDLERTRYENTER
	.long	64
	.long	RTTI_SYSTEM_TCRITICALSECTIONHANDLER
	.long	68
	.long	RTTI_SYSTEM_TINITTHREADVARHANDLER
	.long	72
	.long	RTTI_SYSTEM_TRELOCATETHREADVARHANDLER
	.long	76
	.long	RTTI_SYSTEM_TALLOCATETHREADVARSHANDLER
	.long	80
	.long	RTTI_SYSTEM_TRELEASETHREADVARSHANDLER
	.long	84
	.long	RTTI_SYSTEM_TBASICEVENTCREATEHANDLER
	.long	88
	.long	RTTI_SYSTEM_TBASICEVENTHANDLER
	.long	92
	.long	RTTI_SYSTEM_TBASICEVENTHANDLER
	.long	96
	.long	RTTI_SYSTEM_TBASICEVENTHANDLER
	.long	100
	.long	RTTI_SYSTEM_TBASICEVENTWAITFORHANDLER
	.long	104
	.long	RTTI_SYSTEM_TRTLCREATEEVENTHANDLER
	.long	108
	.long	RTTI_SYSTEM_TRTLEVENTHANDLER
	.long	112
	.long	RTTI_SYSTEM_TRTLEVENTHANDLER
	.long	116
	.long	RTTI_SYSTEM_TRTLEVENTHANDLER
	.long	120
	.long	RTTI_SYSTEM_TRTLEVENTHANDLER
	.long	124
	.long	RTTI_SYSTEM_TRTLEVENTSYNCHANDLER
	.long	128
	.long	RTTI_SYSTEM_TRTLEVENTHANDLERTIMEOUT
	.long	132
	.long	RTTI_SYSTEM_TSEMPAHOREINITHANDLER
	.long	136
	.long	RTTI_SYSTEM_TSEMAPHOREDESTROYHANDLER
	.long	140
	.long	RTTI_SYSTEM_TSEMAPHOREPOSTHANDLER
	.long	144
	.long	RTTI_SYSTEM_TSEMAPHOREWAITHANDLER
	.long	148

.data
	.balign 4
.globl	INIT_SYSTEM_ENUMRESTYPEPROC
INIT_SYSTEM_ENUMRESTYPEPROC:
	.byte	23,15
	.ascii	"EnumResTypeProc"

.data
	.balign 4
.globl	RTTI_SYSTEM_ENUMRESTYPEPROC
RTTI_SYSTEM_ENUMRESTYPEPROC:
	.byte	23,15
	.ascii	"EnumResTypeProc"

.data
	.balign 4
.globl	INIT_SYSTEM_ENUMRESNAMEPROC
INIT_SYSTEM_ENUMRESNAMEPROC:
	.byte	23,15
	.ascii	"EnumResNameProc"

.data
	.balign 4
.globl	RTTI_SYSTEM_ENUMRESNAMEPROC
RTTI_SYSTEM_ENUMRESNAMEPROC:
	.byte	23,15
	.ascii	"EnumResNameProc"

.data
	.balign 4
.globl	INIT_SYSTEM_ENUMRESLANGPROC
INIT_SYSTEM_ENUMRESLANGPROC:
	.byte	23,15
	.ascii	"EnumResLangProc"

.data
	.balign 4
.globl	RTTI_SYSTEM_ENUMRESLANGPROC
RTTI_SYSTEM_ENUMRESLANGPROC:
	.byte	23,15
	.ascii	"EnumResLangProc"

.data
	.balign 4
.globl	INIT_SYSTEM_TRESOURCEMANAGER
INIT_SYSTEM_TRESOURCEMANAGER:
	.byte	13,16
	.ascii	"TResourceManager"
	.long	44,0

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1342
RTTI_SYSTEM_DEF1342:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1343
RTTI_SYSTEM_DEF1343:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1344
RTTI_SYSTEM_DEF1344:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1345
RTTI_SYSTEM_DEF1345:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1346
RTTI_SYSTEM_DEF1346:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1347
RTTI_SYSTEM_DEF1347:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1348
RTTI_SYSTEM_DEF1348:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1349
RTTI_SYSTEM_DEF1349:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1350
RTTI_SYSTEM_DEF1350:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1351
RTTI_SYSTEM_DEF1351:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_DEF1352
RTTI_SYSTEM_DEF1352:
	.byte	23
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSTEM_TRESOURCEMANAGER
RTTI_SYSTEM_TRESOURCEMANAGER:
	.byte	13,16
	.ascii	"TResourceManager"
	.long	44,11
	.long	RTTI_SYSTEM_DEF1342
	.long	0
	.long	RTTI_SYSTEM_DEF1343
	.long	4
	.long	RTTI_SYSTEM_DEF1344
	.long	8
	.long	RTTI_SYSTEM_DEF1345
	.long	12
	.long	RTTI_SYSTEM_DEF1346
	.long	16
	.long	RTTI_SYSTEM_DEF1347
	.long	20
	.long	RTTI_SYSTEM_DEF1348
	.long	24
	.long	RTTI_SYSTEM_DEF1349
	.long	28
	.long	RTTI_SYSTEM_DEF1350
	.long	32
	.long	RTTI_SYSTEM_DEF1351
	.long	36
	.long	RTTI_SYSTEM_DEF1352
	.long	40

.data
	.balign 4
.globl	INIT_SYSTEM_TOS
INIT_SYSTEM_TOS:
	.byte	3,3
	.ascii	"Tos"
	.byte	5
	.long	0,2,0
	.byte	5
	.ascii	"osDOS"
	.byte	5
	.ascii	"osOS2"
	.byte	6
	.ascii	"osDPMI"
	.byte	6
	.ascii	"System"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSTEM_TOS
RTTI_SYSTEM_TOS:
	.byte	3,3
	.ascii	"Tos"
	.byte	5
	.long	0,2,0
	.byte	5
	.ascii	"osDOS"
	.byte	5
	.ascii	"osOS2"
	.byte	6
	.ascii	"osDPMI"
	.byte	6
	.ascii	"System"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSTEM_TOS_s2o
RTTI_SYSTEM_TOS_s2o:
	.long	3,0
	.long	RTTI_SYSTEM_TOS+18
	.long	2
	.long	RTTI_SYSTEM_TOS+30
	.long	1
	.long	RTTI_SYSTEM_TOS+24

.data
	.balign 4
.globl	RTTI_SYSTEM_TOS_o2s
RTTI_SYSTEM_TOS_o2s:
	.long	0
	.long	RTTI_SYSTEM_TOS+18
	.long	RTTI_SYSTEM_TOS+24
	.long	RTTI_SYSTEM_TOS+30

.data
	.balign 4
.globl	INIT_SYSTEM_TBYTEARRAY
INIT_SYSTEM_TBYTEARRAY:
	.byte	12
	.ascii	"\012TByteArray"
	.long	1,65536
	.long	INIT_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_SYSTEM_TBYTEARRAY
RTTI_SYSTEM_TBYTEARRAY:
	.byte	12
	.ascii	"\012TByteArray"
	.long	1,65536
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	INIT_SYSTEM_PBYTEARRAY
INIT_SYSTEM_PBYTEARRAY:
	.byte	0
	.ascii	"\012PByteArray"

.data
	.balign 4
.globl	RTTI_SYSTEM_PBYTEARRAY
RTTI_SYSTEM_PBYTEARRAY:
	.byte	0
	.ascii	"\012PByteArray"

.data
	.balign 4
.globl	INIT_SYSTEM_TSYSTHREADIB
INIT_SYSTEM_TSYSTHREADIB:
	.byte	13,12
	.ascii	"TSysThreadIB"
	.long	16,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TSYSTHREADIB
RTTI_SYSTEM_TSYSTHREADIB:
	.byte	13,12
	.ascii	"TSysThreadIB"
	.long	16,5
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	12
	.long	RTTI_SYSTEM_WORD
	.long	14

.data
	.balign 4
.globl	INIT_SYSTEM_PSYSTHREADIB
INIT_SYSTEM_PSYSTHREADIB:
	.byte	0
	.ascii	"\014PSysThreadIB"

.data
	.balign 4
.globl	RTTI_SYSTEM_PSYSTHREADIB
RTTI_SYSTEM_PSYSTHREADIB:
	.byte	0
	.ascii	"\014PSysThreadIB"

.data
	.balign 4
.globl	INIT_SYSTEM_TTHREADINFOBLOCK
INIT_SYSTEM_TTHREADINFOBLOCK:
	.byte	13,16
	.ascii	"TThreadInfoBlock"
	.long	24,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TTHREADINFOBLOCK
RTTI_SYSTEM_TTHREADINFOBLOCK:
	.byte	13,16
	.ascii	"TThreadInfoBlock"
	.long	24,6
	.long	RTTI_SYSTEM_POINTER
	.long	0
	.long	RTTI_SYSTEM_POINTER
	.long	4
	.long	RTTI_SYSTEM_POINTER
	.long	8
	.long	RTTI_SYSTEM_PSYSTHREADIB
	.long	12
	.long	RTTI_SYSTEM_LONGWORD
	.long	16
	.long	RTTI_SYSTEM_LONGWORD
	.long	20

.data
	.balign 4
.globl	INIT_SYSTEM_PTHREADINFOBLOCK
INIT_SYSTEM_PTHREADINFOBLOCK:
	.byte	0
	.ascii	"\020PThreadInfoBlock"

.data
	.balign 4
.globl	RTTI_SYSTEM_PTHREADINFOBLOCK
RTTI_SYSTEM_PTHREADINFOBLOCK:
	.byte	0
	.ascii	"\020PThreadInfoBlock"

.data
	.balign 4
.globl	INIT_SYSTEM_PPTHREADINFOBLOCK
INIT_SYSTEM_PPTHREADINFOBLOCK:
	.byte	0
	.ascii	"\021PPThreadInfoBlock"

.data
	.balign 4
.globl	RTTI_SYSTEM_PPTHREADINFOBLOCK
RTTI_SYSTEM_PPTHREADINFOBLOCK:
	.byte	0
	.ascii	"\021PPThreadInfoBlock"

.data
	.balign 4
.globl	INIT_SYSTEM_TPROCESSINFOBLOCK
INIT_SYSTEM_TPROCESSINFOBLOCK:
	.byte	13,17
	.ascii	"TProcessInfoBlock"
	.long	28,0

.data
	.balign 4
.globl	RTTI_SYSTEM_TPROCESSINFOBLOCK
RTTI_SYSTEM_TPROCESSINFOBLOCK:
	.byte	13,17
	.ascii	"TProcessInfoBlock"
	.long	28,7
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSTEM_LONGWORD
	.long	8
	.long	RTTI_SYSTEM_PBYTEARRAY
	.long	12
	.long	RTTI_SYSTEM_PBYTEARRAY
	.long	16
	.long	RTTI_SYSTEM_LONGWORD
	.long	20
	.long	RTTI_SYSTEM_LONGWORD
	.long	24

.data
	.balign 4
.globl	INIT_SYSTEM_PPROCESSINFOBLOCK
INIT_SYSTEM_PPROCESSINFOBLOCK:
	.byte	0
	.ascii	"\021PProcessInfoBlock"

.data
	.balign 4
.globl	RTTI_SYSTEM_PPROCESSINFOBLOCK
RTTI_SYSTEM_PPROCESSINFOBLOCK:
	.byte	0
	.ascii	"\021PProcessInfoBlock"

.data
	.balign 4
.globl	INIT_SYSTEM_PPPROCESSINFOBLOCK
INIT_SYSTEM_PPPROCESSINFOBLOCK:
	.byte	0
	.ascii	"\022PPProcessInfoBlock"

.data
	.balign 4
.globl	RTTI_SYSTEM_PPPROCESSINFOBLOCK
RTTI_SYSTEM_PPPROCESSINFOBLOCK:
	.byte	0
	.ascii	"\022PPProcessInfoBlock"
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

