	.file "system.pas"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
SYSTEM_GET_PC_ADDR$$POINTER:
	movl	$0,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETPROCESSID$$LONGWORD
SYSTEM_GETPROCESSID$$LONGWORD:
	movl	U_SYSTEM_PROCESSID,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DUMMYDOSOPENL$crc5CEF2B0C
SYSTEM_DUMMYDOSOPENL$crc5CEF2B0C:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	16(%ebp),%edx
	movl	20(%ebp),%ecx
	movl	24(%ebp),%eax
	movl	28(%ebp),%ebx
	movl	32(%ebp),%esi
	movl	36(%ebp),%eax
	movl	40(%ebp),%edi
	pushl	%edi
	pushl	%eax
	movl	%esi,%eax
	pushl	%eax
	movl	%ebx,%eax
	pushl	%eax
	movl	%ecx,%eax
	pushl	%eax
	pushl	%edx
	pushl	-4(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_273
	addl	$32,%esp
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DUMMYDOSSETFILEPTRL$LONGINT$INT64$LONGWORD$INT64$$LONGWORD
SYSTEM_DUMMYDOSSETFILEPTRL$LONGINT$INT64$LONGWORD$INT64$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	16(%ebp),%eax
	movl	20(%ebp),%eax
	movl	24(%ebp),%ebx
	leal	-4(%ebp),%esi
	pushl	%esi
	pushl	%eax
	pushl	%edx
	pushl	%ecx
	call	_$dll$doscalls$_index_256
	addl	$16,%esp
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	movl	%ecx,(%ebx)
	movl	%edx,4(%ebx)
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DUMMYDOSSETFILESIZEL$LONGINT$INT64$$LONGWORD
SYSTEM_DUMMYDOSSETFILESIZEL$LONGINT$INT64$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	movl	16(%ebp),%ecx
	pushl	%eax
	pushl	%edx
	call	_$dll$doscalls$_index_272
	addl	$8,%esp
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_ERRNO2INOUTRES:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj66
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj67
Lj66:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj67:
	movw	(%eax),%ax
	cmpw	$19,%ax
	jb	Lj56
	subw	$31,%ax
	jbe	Lj57
	subw	$2,%ax
	jbe	Lj58
	subw	$5,%ax
	je	Lj59
	decw	%ax
	je	Lj60
	subw	$71,%ax
	je	Lj62
	subw	$2,%ax
	je	Lj61
	subw	$2,%ax
	je	Lj63
	subw	$92,%ax
	je	Lj64
	subw	$84,%ax
	je	Lj65
	jmp	Lj56
Lj57:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj70
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj71
Lj70:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj71:
	movzwl	(%eax),%ebx
	addl	$131,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj72
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj73
Lj72:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj73:
	movw	%bx,(%eax)
	jmp	Lj55
Lj58:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj76
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj77
Lj76:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj77:
	movw	$5,(%eax)
	jmp	Lj55
Lj59:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj80
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj81
Lj80:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj81:
	movw	$100,(%eax)
	jmp	Lj55
Lj60:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj84
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj85
Lj84:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj85:
	movw	$101,(%eax)
	jmp	Lj55
Lj61:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj88
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj89
Lj88:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj89:
	movw	$101,(%eax)
	jmp	Lj55
Lj62:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj92
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj93
Lj92:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj93:
	movw	$5,(%eax)
	jmp	Lj55
Lj63:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj96
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj97
Lj96:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj97:
	movw	$6,(%eax)
	jmp	Lj55
Lj64:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj100
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj101
Lj100:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj101:
	movw	$3,(%eax)
	jmp	Lj55
Lj65:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj104
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj105
Lj104:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj105:
	movw	$4,(%eax)
Lj56:
Lj55:
	movl	(%esp),%ebx
	addl	$4,%esp
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
	je	Lj111
	pushl	%ebx
	movl	$1,%eax
	cpuid
	movl	%edx,-8(%ebp)
	popl	%ebx
	movl	-8(%ebp),%eax
	andl	$33554432,%eax
	je	Lj113
	cmpb	$0,U_SYSTEM_OS_SUPPORTS_SSE
	je	Lj113
	movb	$1,-1(%ebp)
	jmp	Lj116
Lj113:
	movb	$0,-1(%ebp)
	jmp	Lj116
Lj111:
	movb	$0,-1(%ebp)
Lj116:
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
	je	Lj122
	pushl	%ebx
	movl	$1,%eax
	cpuid
	movl	%edx,-8(%ebp)
	popl	%ebx
	movl	-8(%ebp),%eax
	andl	$8388608,%eax
	setneb	-1(%ebp)
	jmp	Lj125
Lj122:
	movb	$0,-1(%ebp)
Lj125:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SMALLFORWARDMOVE_3:
	jmp	*Lj130(,%ecx,4)
	.balign 16,0x90
Lj130:
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
	.long	Lj161
	.long	Lj162
	.long	Lj163
	.long	Lj164
	.long	Lj165
	.long	Lj166
	.long	Lj167
Lj167:
	movl	-36(%eax),%ecx
	movl	%ecx,-36(%edx)
Lj163:
	movl	-32(%eax),%ecx
	movl	%ecx,-32(%edx)
Lj159:
	movl	-28(%eax),%ecx
	movl	%ecx,-28(%edx)
Lj155:
	movl	-24(%eax),%ecx
	movl	%ecx,-24(%edx)
Lj151:
	movl	-20(%eax),%ecx
	movl	%ecx,-20(%edx)
Lj147:
	movl	-16(%eax),%ecx
	movl	%ecx,-16(%edx)
Lj143:
	movl	-12(%eax),%ecx
	movl	%ecx,-12(%edx)
Lj139:
	movl	-8(%eax),%ecx
	movl	%ecx,-8(%edx)
Lj135:
	movl	-4(%eax),%ecx
	movl	%ecx,-4(%edx)
	ret
Lj166:
	movl	-35(%eax),%ecx
	movl	%ecx,-35(%edx)
Lj162:
	movl	-31(%eax),%ecx
	movl	%ecx,-31(%edx)
Lj158:
	movl	-27(%eax),%ecx
	movl	%ecx,-27(%edx)
Lj154:
	movl	-23(%eax),%ecx
	movl	%ecx,-23(%edx)
Lj150:
	movl	-19(%eax),%ecx
	movl	%ecx,-19(%edx)
Lj146:
	movl	-15(%eax),%ecx
	movl	%ecx,-15(%edx)
Lj142:
	movl	-11(%eax),%ecx
	movl	%ecx,-11(%edx)
Lj138:
	movl	-7(%eax),%ecx
	movl	%ecx,-7(%edx)
	movl	-4(%eax),%ecx
	movl	%ecx,-4(%edx)
	ret
Lj134:
	movzwl	-3(%eax),%ecx
	movw	%cx,-3(%edx)
	movzbl	-1(%eax),%ecx
	movb	%cl,-1(%edx)
	ret
Lj165:
	movl	-34(%eax),%ecx
	movl	%ecx,-34(%edx)
Lj161:
	movl	-30(%eax),%ecx
	movl	%ecx,-30(%edx)
Lj157:
	movl	-26(%eax),%ecx
	movl	%ecx,-26(%edx)
Lj153:
	movl	-22(%eax),%ecx
	movl	%ecx,-22(%edx)
Lj149:
	movl	-18(%eax),%ecx
	movl	%ecx,-18(%edx)
Lj145:
	movl	-14(%eax),%ecx
	movl	%ecx,-14(%edx)
Lj141:
	movl	-10(%eax),%ecx
	movl	%ecx,-10(%edx)
Lj137:
	movl	-6(%eax),%ecx
	movl	%ecx,-6(%edx)
Lj133:
	movzwl	-2(%eax),%ecx
	movw	%cx,-2(%edx)
	ret
Lj164:
	movl	-33(%eax),%ecx
	movl	%ecx,-33(%edx)
Lj160:
	movl	-29(%eax),%ecx
	movl	%ecx,-29(%edx)
Lj156:
	movl	-25(%eax),%ecx
	movl	%ecx,-25(%edx)
Lj152:
	movl	-21(%eax),%ecx
	movl	%ecx,-21(%edx)
Lj148:
	movl	-17(%eax),%ecx
	movl	%ecx,-17(%edx)
Lj144:
	movl	-13(%eax),%ecx
	movl	%ecx,-13(%edx)
Lj140:
	movl	-9(%eax),%ecx
	movl	%ecx,-9(%edx)
Lj136:
	movl	-5(%eax),%ecx
	movl	%ecx,-5(%edx)
Lj132:
	movzbl	-1(%eax),%ecx
	movb	%cl,-1(%edx)
Lj131:
	ret

.text
	.balign 4,0x90
SYSTEM_SMALLBACKWARDMOVE_3:
	jmp	*Lj170(,%ecx,4)
	.balign 16,0x90
Lj170:
	.long	Lj171
	.long	Lj172
	.long	Lj173
	.long	Lj174
	.long	Lj175
	.long	Lj176
	.long	Lj177
	.long	Lj178
	.long	Lj179
	.long	Lj180
	.long	Lj181
	.long	Lj182
	.long	Lj183
	.long	Lj184
	.long	Lj185
	.long	Lj186
	.long	Lj187
	.long	Lj188
	.long	Lj189
	.long	Lj190
	.long	Lj191
	.long	Lj192
	.long	Lj193
	.long	Lj194
	.long	Lj195
	.long	Lj196
	.long	Lj197
	.long	Lj198
	.long	Lj199
	.long	Lj200
	.long	Lj201
	.long	Lj202
	.long	Lj203
	.long	Lj204
	.long	Lj205
	.long	Lj206
	.long	Lj207
Lj207:
	movl	32(%eax),%ecx
	movl	%ecx,32(%edx)
Lj203:
	movl	28(%eax),%ecx
	movl	%ecx,28(%edx)
Lj199:
	movl	24(%eax),%ecx
	movl	%ecx,24(%edx)
Lj195:
	movl	20(%eax),%ecx
	movl	%ecx,20(%edx)
Lj191:
	movl	16(%eax),%ecx
	movl	%ecx,16(%edx)
Lj187:
	movl	12(%eax),%ecx
	movl	%ecx,12(%edx)
Lj183:
	movl	8(%eax),%ecx
	movl	%ecx,8(%edx)
Lj179:
	movl	4(%eax),%ecx
	movl	%ecx,4(%edx)
Lj175:
	movl	(%eax),%ecx
	movl	%ecx,(%edx)
	ret
Lj206:
	movl	31(%eax),%ecx
	movl	%ecx,31(%edx)
Lj202:
	movl	27(%eax),%ecx
	movl	%ecx,27(%edx)
Lj198:
	movl	23(%eax),%ecx
	movl	%ecx,23(%edx)
Lj194:
	movl	19(%eax),%ecx
	movl	%ecx,19(%edx)
Lj190:
	movl	15(%eax),%ecx
	movl	%ecx,15(%edx)
Lj186:
	movl	11(%eax),%ecx
	movl	%ecx,11(%edx)
Lj182:
	movl	7(%eax),%ecx
	movl	%ecx,7(%edx)
Lj178:
	movl	3(%eax),%ecx
	movl	%ecx,3(%edx)
	movl	(%eax),%ecx
	movl	%ecx,(%edx)
	ret
Lj174:
	movzwl	1(%eax),%ecx
	movw	%cx,1(%edx)
	movzbl	(%eax),%ecx
	movb	%cl,(%edx)
	ret
Lj205:
	movl	30(%eax),%ecx
	movl	%ecx,30(%edx)
Lj201:
	movl	26(%eax),%ecx
	movl	%ecx,26(%edx)
Lj197:
	movl	22(%eax),%ecx
	movl	%ecx,22(%edx)
Lj193:
	movl	18(%eax),%ecx
	movl	%ecx,18(%edx)
Lj189:
	movl	14(%eax),%ecx
	movl	%ecx,14(%edx)
Lj185:
	movl	10(%eax),%ecx
	movl	%ecx,10(%edx)
Lj181:
	movl	6(%eax),%ecx
	movl	%ecx,6(%edx)
Lj177:
	movl	2(%eax),%ecx
	movl	%ecx,2(%edx)
Lj173:
	movzwl	(%eax),%ecx
	movw	%cx,(%edx)
	ret
Lj204:
	movl	29(%eax),%ecx
	movl	%ecx,29(%edx)
Lj200:
	movl	25(%eax),%ecx
	movl	%ecx,25(%edx)
Lj196:
	movl	21(%eax),%ecx
	movl	%ecx,21(%edx)
Lj192:
	movl	17(%eax),%ecx
	movl	%ecx,17(%edx)
Lj188:
	movl	13(%eax),%ecx
	movl	%ecx,13(%edx)
Lj184:
	movl	9(%eax),%ecx
	movl	%ecx,9(%edx)
Lj180:
	movl	5(%eax),%ecx
	movl	%ecx,5(%edx)
Lj176:
	movl	1(%eax),%ecx
	movl	%ecx,1(%edx)
Lj172:
	movzbl	(%eax),%ecx
	movb	%cl,(%edx)
Lj171:
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
Lj212:
	movb	(%esi),%al
	movb	%al,(%edi)
	decl	%esi
	decl	%edi
	decl	%ecx
	jnz	Lj212
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
Lj215:
	fildq	-16(%eax,%ecx,1)
	fistpq	-16(%edx,%ecx,1)
	fildq	-8(%eax,%ecx,1)
	fistpq	-8(%edx,%ecx,1)
	addl	$16,%ecx
	jle	Lj215
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
Lj218:
	fildq	(%eax,%ecx,1)
	fildq	8(%eax,%ecx,1)
	fistpq	8(%edx,%ecx,1)
	fistpq	(%edx,%ecx,1)
	subl	$16,%ecx
	jge	Lj218
	fistpq	-8(%edx,%ebx,1)
	addl	$16,%ecx
	popl	%ebx
	jmp	SYSTEM_SMALLBACKWARDMOVE_3
	ret

.text
	.balign 4,0x90
SYSTEM_FORWARDS_MMX_3:
	cmpl	$1024,%ecx
	jge	Lj221
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
Lj222:
	movq	-32(%eax,%ecx,1),%mm1
	movq	-24(%eax,%ecx,1),%mm2
	movq	-16(%eax,%ecx,1),%mm3
	movq	-8(%eax,%ecx,1),%mm4
	movq	%mm1,-32(%edx,%ecx,1)
	movq	%mm2,-24(%edx,%ecx,1)
	movq	%mm3,-16(%edx,%ecx,1)
	movq	%mm4,-8(%edx,%ecx,1)
	addl	$32,%ecx
	jle	Lj222
	movq	%mm0,(%ebx)
	emms
	popl	%ebx
	negl	%ecx
	addl	$32,%ecx
	jmp	SYSTEM_SMALLFORWARDMOVE_3
Lj221:
	pushl	%ebx
	movl	%ecx,%ebx
	testl	$15,%edx
	jz	Lj223
	movl	%edx,%ecx
	addl	$15,%ecx
	andl	$-16,%ecx
	subl	%edx,%ecx
	addl	%ecx,%eax
	addl	%ecx,%edx
	subl	%ecx,%ebx
	call	SYSTEM_SMALLFORWARDMOVE_3
Lj223:
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
Lj224:
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
	jnz	Lj224
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
Lj227:
	movq	(%eax,%ecx,1),%mm1
	movq	8(%eax,%ecx,1),%mm2
	movq	16(%eax,%ecx,1),%mm3
	movq	24(%eax,%ecx,1),%mm4
	movq	%mm4,24(%edx,%ecx,1)
	movq	%mm3,16(%edx,%ecx,1)
	movq	%mm2,8(%edx,%ecx,1)
	movq	%mm1,(%edx,%ecx,1)
	subl	$32,%ecx
	jge	Lj227
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
	jl	Lj230
Lj231:
	testl	$15,%esi
	jnz	Lj232
Lj233:
Lj234:
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
	js	Lj234
	jmp	Lj235
Lj232:
Lj236:
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
	js	Lj236
	jmp	Lj235
Lj230:
	testl	$15,%esi
	jnz	Lj237
Lj238:
Lj239:
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
	js	Lj239
	sfence
	jmp	Lj235
Lj237:
Lj240:
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
	js	Lj240
	sfence
Lj235:
	andl	$127,%ecx
	jz	Lj241
	addl	%ecx,%esi
	addl	%ecx,%edx
	negl	%ecx
Lj242:
	movups	(%esi,%ecx,1),%xmm0
	movaps	%xmm0,(%edx,%ecx,1)
	addl	$16,%ecx
	jnz	Lj242
Lj241:
	popl	%esi
	ret

.text
	.balign 4,0x90
SYSTEM_FORWARDS_SSE_3:
	cmpl	$2048,%ecx
	jge	Lj245
	cmpl	$68,%ecx
	movups	(%eax),%xmm0
	jg	Lj246
	movups	16(%eax),%xmm1
	movups	%xmm0,(%edx)
	movups	%xmm1,16(%edx)
	addl	%ecx,%eax
	addl	%ecx,%edx
	subl	$32,%ecx
	jmp	SYSTEM_SMALLFORWARDMOVE_3
Lj246:
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
Lj247:
	movups	-32(%eax,%ecx,1),%xmm1
	movups	-16(%eax,%ecx,1),%xmm2
	movaps	%xmm1,-32(%edx,%ecx,1)
	movaps	%xmm2,-16(%edx,%ecx,1)
	addl	$32,%ecx
	jle	Lj247
	movups	%xmm0,(%ebx)
	negl	%ecx
	addl	$32,%ecx
	popl	%ebx
	jmp	SYSTEM_SMALLFORWARDMOVE_3
Lj245:
	pushl	%ebx
	movl	%ecx,%ebx
	testl	$15,%edx
	jz	Lj248
	movl	%edx,%ecx
	addl	$15,%ecx
	andl	$-16,%ecx
	subl	%edx,%ecx
	addl	%ecx,%eax
	addl	%ecx,%edx
	subl	%ecx,%ebx
	call	SYSTEM_SMALLFORWARDMOVE_3
	movl	%ebx,%ecx
Lj248:
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
	jg	Lj251
	subl	$32,%ecx
	movups	(%eax,%ecx,1),%xmm1
	movups	16(%eax,%ecx,1),%xmm2
	movups	%xmm1,(%edx,%ecx,1)
	movups	%xmm2,16(%edx,%ecx,1)
	jmp	SYSTEM_SMALLBACKWARDMOVE_3
Lj251:
	pushl	%ebx
	movups	-16(%eax,%ecx,1),%xmm0
	leal	(%edx,%ecx,1),%ebx
	andl	$15,%ebx
	subl	%ebx,%ecx
	addl	%ecx,%ebx
	subl	$32,%ecx
Lj252:
	movups	(%eax,%ecx,1),%xmm1
	movups	16(%eax,%ecx,1),%xmm2
	movaps	%xmm1,(%edx,%ecx,1)
	movaps	%xmm2,16(%edx,%ecx,1)
	subl	$32,%ecx
	jge	Lj252
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
	ja	Lj255
	cmpl	%edx,%eax
	leal	(%eax,%ecx,1),%eax
	jle	Lj256
Lj257:
	addl	%ecx,%edx
	jmp	SYSTEM_SMALLFORWARDMOVE_3
Lj256:
	je	Lj258
	subl	%ecx,%eax
	jmp	SYSTEM_SMALLBACKWARDMOVE_3
Lj255:
	jng	Lj258
	cmpl	%edx,%eax
	jg	Lj259
	je	Lj258
	pushl	%eax
	addl	%ecx,%eax
	cmpl	%edx,%eax
	popl	%eax
	jg	Lj260
Lj259:
	jmp	*TC_SYSTEM_FASTMOVEPROC_FORWARD
Lj260:
	jmp	*TC_SYSTEM_FASTMOVEPROC_BACKWARD
Lj258:
	ret

.text
	.balign 4,0x90
SYSTEM_SETUP_FASTMOVE:
	cmpb	$0,__fpc_valgrind
	je	Lj264
	movl	$SYSTEM_FORWARDS_VALGRIND,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_FORWARD
	movl	$SYSTEM_BACKWARDS_VALGRIND,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_BACKWARD
	jmp	Lj269
Lj264:
	cmpb	$0,TC_SYSTEM_HAS_SSE_SUPPORT
	je	Lj271
	movl	$SYSTEM_FORWARDS_SSE_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_FORWARD
	movl	$SYSTEM_BACKWARDS_SSE_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_BACKWARD
	jmp	Lj276
Lj271:
	cmpb	$0,TC_SYSTEM_HAS_MMX_SUPPORT
	je	Lj278
	movl	$SYSTEM_FORWARDS_MMX_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_FORWARD
	movl	$SYSTEM_BACKWARDS_MMX_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_BACKWARD
Lj278:
Lj276:
Lj269:
	ret

.text
	.balign 4,0x90
SYSTEM_FPC_CPUINIT:
	movb	$0,U_SYSTEM_OS_SUPPORTS_SSE
	cmpb	$0,operatingsystem_islibrary
	je	Lj288
	call	SYSTEM_GET8087CW$$WORD
	movw	%ax,TC_SYSTEM_DEFAULT8087CW
Lj288:
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
	jg	Lj297
	orl	%edx,%edx
	jle	Lj298
Lj299:
	movb	%cl,(%eax)
	incl	%eax
	decl	%edx
	jne	Lj299
Lj298:
	ret
Lj297:
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
Lj300:
	rep
	stosb
Lj301:
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
	jle	Lj304
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
Lj304:
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
	jle	Lj307
	cld
	rep
	stosl
Lj307:
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
	jz	Lj310
	cld
	movl	%ecx,%edx
	movb	%bl,%al
	repne
	scasb
	jne	Lj310
	incl	%ecx
	subl	%ecx,%edx
	movl	%edx,%eax
	jmp	Lj311
Lj310:
	movl	$-1,%eax
Lj311:
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
	jz	Lj314
	cld
	movl	%ecx,%edx
	movw	%bx,%ax
	repne
	scasw
	jne	Lj314
	incl	%ecx
	subl	%ecx,%edx
	movl	%edx,%eax
	jmp	Lj315
Lj314:
	movl	$-1,%eax
Lj315:
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
	jz	Lj318
	cld
	movl	%ecx,%edx
	movl	%ebx,%eax
	repne
	scasl
	jne	Lj318
	incl	%ecx
	subl	%ecx,%edx
	movl	%edx,%eax
	jmp	Lj319
Lj318:
	movl	$-1,%eax
Lj319:
	movl	-8(%ebp),%edi
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT:
	cmpl	$57,%ecx
	jg	Lj322
	testl	%ecx,%ecx
	je	Lj323
	pushl	%ebx
Lj324:
	movb	(%eax),%bl
	cmpb	(%edx),%bl
	leal	1(%eax),%eax
	leal	1(%edx),%edx
	jne	Lj325
	decl	%ecx
	jne	Lj324
Lj325:
	movzbl	-1(%edx),%ecx
	movzbl	%bl,%eax
	subl	%ecx,%eax
	popl	%ebx
	ret
Lj323:
	movl	$0,%eax
	ret
Lj322:
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
	jne	Lj326
	movl	%eax,%ecx
	andl	$3,%eax
	shrl	$2,%ecx
	orl	%ecx,%ecx
	rep
	cmpsl
	je	Lj327
	movl	$4,%eax
	subl	%eax,%esi
	subl	%eax,%edi
Lj327:
	movl	%eax,%ecx
	orl	%eax,%eax
	rep
	cmpsb
Lj326:
	movzbl	-1(%esi),%ecx
	movzbl	-1(%edi),%eax
	subl	%ecx,%eax
Lj328:
	popl	%edi
	popl	%esi
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT
SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT:
	cmpl	$32,%ecx
	jg	Lj331
	testl	%ecx,%ecx
	je	Lj332
	pushl	%ebx
Lj333:
	movw	(%eax),%bx
	cmpw	(%edx),%bx
	leal	2(%eax),%eax
	leal	2(%edx),%edx
	jne	Lj334
	decl	%ecx
	jne	Lj333
Lj334:
	movzwl	-2(%edx),%ecx
	movzwl	%bx,%eax
	subl	%ecx,%eax
	popl	%ebx
	ret
Lj332:
	movl	$0,%eax
	ret
Lj331:
	pushl	%esi
	pushl	%edi
	pushl	%ebx
	cld
	movl	%eax,%edi
	movl	%edx,%esi
	movl	%ecx,%eax
	movl	(%edi),%ebx
	cmpl	(%esi),%ebx
	jne	Lj335
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
	je	Lj336
	movl	$4,%eax
	subl	%eax,%esi
	subl	%eax,%edi
	incl	%eax
Lj336:
	subl	%edx,%esi
	subl	%edx,%edi
	addl	%edx,%eax
	shrl	$1,%eax
Lj335:
	movl	%eax,%ecx
	orl	%eax,%eax
	rep
	cmpsw
Lj337:
	movzwl	-2(%esi),%ecx
	movzwl	-2(%edi),%eax
	subl	%ecx,%eax
Lj338:
	popl	%ebx
	popl	%edi
	popl	%esi
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_COMPAREDWORD$formal$formal$LONGINT$$LONGINT
SYSTEM_COMPAREDWORD$formal$formal$LONGINT$$LONGINT:
	cmpl	$32,%ecx
	jg	Lj341
	testl	%ecx,%ecx
	je	Lj342
	pushl	%ebx
Lj343:
	movl	(%eax),%ebx
	cmpl	(%edx),%ebx
	leal	4(%eax),%eax
	leal	4(%edx),%edx
	jne	Lj344
	decl	%ecx
	jne	Lj343
Lj344:
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
Lj342:
	movl	$0,%eax
	ret
Lj341:
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
Lj345:
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
	je	Lj348
	xorl	%ecx,%ecx
	xorl	%eax,%eax
	.balign 4,0x90
Lj349:
	movb	(%esi),%al
	cmpb	%al,%bl
	je	Lj348
	incl	%ecx
	incl	%esi
	cmpl	%edx,%ecx
	je	Lj350
	testl	%eax,%eax
	jne	Lj349
Lj350:
	movl	$-1,%ecx
Lj348:
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
	jbe	Lj353
	movl	%ecx,%eax
Lj353:
	stosb
	cmpl	$7,%eax
	jl	Lj354
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
Lj354:
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
	jbe	Lj357
	movl	%ecx,%eax
Lj357:
	stosb
	cmpl	$7,%eax
	jl	Lj358
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
Lj358:
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
	jbe	Lj361
	movl	%ebx,%eax
Lj361:
	cmpl	$7,%eax
	jl	Lj362
	movl	%edi,%ecx
	negl	%ecx
	andl	$3,%ecx
	subl	%ecx,%eax
	orl	%ecx,%ecx
	rep
	cmpsb
	jne	Lj363
	movl	%eax,%ecx
	andl	$3,%eax
	shrl	$2,%ecx
	orl	%ecx,%ecx
	rep
	cmpsl
	je	Lj362
	movl	$4,%eax
	subl	%eax,%esi
	subl	%eax,%edi
Lj362:
	movl	%eax,%ecx
	orl	%eax,%eax
	rep
	cmpsb
	je	Lj364
Lj363:
	movzbl	-1(%esi),%edx
	movzbl	-1(%edi),%ebx
Lj364:
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
	jz	Lj367
	leal	3(%esi),%edx
	andl	$-4,%edx
	incl	%edi
	subl	%esi,%edx
	jz	Lj368
Lj369:
	movb	(%esi),%al
	incl	%esi
	testb	%al,%al
	jz	Lj367
	incl	%edi
	incb	%cl
	decb	%dl
	movb	%al,-1(%edi)
	jne	Lj369
	.balign 16,0x90
Lj368:
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
	jnz	Lj370
	cmpl	$252,%ecx
	ja	Lj371
	jmp	Lj368
Lj370:
	subl	$4,%ecx
	shrl	$8,%eax
	jc	Lj367
	incl	%ecx
	shrl	$8,%eax
	jc	Lj367
	incl	%ecx
	shrl	$8,%eax
	jc	Lj367
	incl	%ecx
	jmp	Lj367
Lj371:
	testb	%cl,%cl
	jz	Lj367
	movl	(%esi),%eax
Lj372:
	testb	%al,%al
	jz	Lj367
	movb	%al,(%edi)
	shrl	$8,%eax
	incl	%edi
	incb	%cl
	jnz	Lj372
Lj367:
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
	jz	Lj375
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
Lj375:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER:
	orl	%eax,%eax
	jz	Lj378
	movl	4(%eax),%eax
Lj378:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER
SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER:
	orl	%eax,%eax
	jz	Lj381
	movl	(%eax),%eax
Lj381:
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
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	TC_SYSTEM_ISMULTITHREAD,%edx
	testl	%edx,%edx
	jne	Lj391
	decl	(%eax)
	movl	(%eax),%edx
	testl	%edx,%edx
	seteb	%bl
	jmp	Lj394
Lj391:
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj394:
	movb	%bl,%al
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_INCLOCKED$LONGINT:
	movl	TC_SYSTEM_ISMULTITHREAD,%edx
	testl	%edx,%edx
	jne	Lj402
	incl	(%eax)
	jmp	Lj403
Lj402:
	call	SYSTEM_CPUINCLOCKED$LONGINT
Lj403:
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
	je	Lj423
	movl	TC_SYSTEM_MXCSR,%eax
	movl	%eax,-4(%ebp)
	ldmxcsr	-4(%ebp)
Lj423:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj428
	movl	U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK,%eax
	call	*%edx
	jmp	Lj429
Lj428:
	movl	$U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK+4,%eax
Lj429:
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
	je	Lj435
	movl	TC_SYSTEM_MXCSR,%eax
	movl	%eax,-4(%ebp)
	ldmxcsr	-4(%ebp)
Lj435:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj440
	movl	U_SYSTEM_SOFTFLOAT_EXCEPTION_FLAGS,%eax
	call	*%edx
	jmp	Lj441
Lj440:
	movl	$U_SYSTEM_SOFTFLOAT_EXCEPTION_FLAGS+4,%eax
Lj441:
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
	testb	%al,%al
	je	Lj449
	movb	$1,U_SYSTEM_SSE_CHECK
	movaps	%xmm7,%xmm6
	movb	$0,U_SYSTEM_SSE_CHECK
Lj449:
	movb	U_SYSTEM_OS_SUPPORTS_SSE,%al
	movb	%al,TC_SYSTEM_HAS_SSE_SUPPORT
	testb	%al,%al
	je	Lj457
	cmpb	$0,operatingsystem_islibrary
	je	Lj457
	call	SYSTEM_GETSSECSR$$LONGWORD
	movl	%eax,TC_SYSTEM_MXCSR
Lj457:
	call	SYSTEM_MMX_SUPPORT$$BOOLEAN
	movb	%al,TC_SYSTEM_HAS_MMX_SUPPORT
	call	SYSTEM_SYSRESETFPU
	movb	operatingsystem_islibrary,%al
	testb	%al,%al
	jne	Lj464
	call	SYSTEM_SYSINITFPU
Lj464:
	cmpb	$0,__fpc_valgrind
	je	Lj466
	movl	$SYSTEM_FORWARDS_VALGRIND,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_FORWARD
	movl	$SYSTEM_BACKWARDS_VALGRIND,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_BACKWARD
	jmp	Lj471
Lj466:
	cmpb	$0,TC_SYSTEM_HAS_SSE_SUPPORT
	je	Lj473
	movl	$SYSTEM_FORWARDS_SSE_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_FORWARD
	movl	$SYSTEM_BACKWARDS_SSE_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_BACKWARD
	jmp	Lj478
Lj473:
	cmpb	$0,TC_SYSTEM_HAS_MMX_SUPPORT
	je	Lj480
	movl	$SYSTEM_FORWARDS_MMX_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_FORWARD
	movl	$SYSTEM_BACKWARDS_MMX_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_BACKWARD
Lj480:
Lj478:
Lj471:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_decr_ref
fpc_ansistr_decr_ref:
.globl	FPC_ANSISTR_DECR_REF
FPC_ANSISTR_DECR_REF:
	cmpl	$0,(%eax)
	jne	Lj487
	ret
Lj487:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%eax),%edx
	subl	$8,%edx
	cmpl	$0,(%edx)
	jl	Lj488
Lj489:
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	jne	Lj490
	decl	(%edx)
	je	Lj491
	addl	$4,%esp
	ret
Lj490:
	movl	%edx,%eax
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	testb	%al,%al
	je	Lj492
Lj491:
	movl	(%esp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	call	FPC_FREEMEM_X
	movl	(%esp),%eax
	movl	$0,(%eax)
Lj493:
Lj492:
Lj488:
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
	je	Lj496
Lj497:
	movl	-8(%eax),%ecx
	cmpl	$1,%ecx
	je	Lj498
	movl	%edx,%eax
	call	SYSTEM_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER
Lj498:
Lj496:
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
	jnz	Lj509_1
Lj510_1:
	bsfl	8(%esp),%eax
	addl	$32,%eax
Lj509_1:
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_BSRQWORD$QWORD$$LONGWORD
SYSTEM_BSRQWORD$QWORD$$LONGWORD:
	bsrl	8(%esp),%eax
	jz	Lj513_1
	addl	$32,%eax
	jmp	Lj514_1
Lj513_1:
	bsrl	4(%esp),%eax
Lj514_1:
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_FILLCHAR$formal$LONGINT$BOOLEAN
SYSTEM_FILLCHAR$formal$LONGINT$BOOLEAN:
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FILLCHAR$formal$LONGINT$CHAR
SYSTEM_FILLCHAR$formal$LONGINT$CHAR:
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FILLBYTE$formal$LONGINT$BYTE
SYSTEM_FILLBYTE$formal$LONGINT$BYTE:
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INDEXCHAR$formal$LONGINT$CHAR$$LONGINT
SYSTEM_INDEXCHAR$formal$LONGINT$CHAR$$LONGINT:
	call	SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_COMPARECHAR$formal$formal$LONGINT$$LONGINT
SYSTEM_COMPARECHAR$formal$formal$LONGINT$$LONGINT:
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FILLQWORD$formal$LONGINT$QWORD
SYSTEM_FILLQWORD$formal$LONGINT$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	testl	%edx,%edx
	jle	Lj561
	leal	(%eax,%edx,8),%edx
	jmp	Lj570
	.balign 4,0x90
Lj569:
	movl	%ecx,(%eax)
	movl	%ebx,4(%eax)
	addl	$8,%eax
Lj570:
	cmpl	%edx,%eax
	jb	Lj569
Lj571:
Lj561:
	movl	-4(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_INDEXQWORD$formal$LONGINT$QWORD$$LONGINT
SYSTEM_INDEXQWORD$formal$LONGINT$QWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%ecx
	movl	-8(%ebp),%ebx
	testl	%edx,%edx
	jl	Lj578
Lj581:
	cmpl	$536870911,%edx
	jg	Lj578
Lj580:
	movl	%edx,%eax
	leal	(%ebx,%eax,8),%eax
	cmpl	%ebx,%eax
	jnb	Lj579
Lj578:
	movl	$-9,%eax
	jmp	Lj588
Lj579:
	leal	(%ebx,%edx,8),%edx
	movl	%edx,%eax
	jmp	Lj588
	.balign 4,0x90
Lj587:
	movl	(%ebx),%esi
	movl	4(%ebx),%edi
	cmpl	%ecx,%edi
	jne	Lj591
	cmpl	-4(%ebp),%esi
	jne	Lj591
Lj590:
	movl	-8(%ebp),%esi
	movl	%ebx,%edi
	subl	%esi,%edi
	movl	%edi,%esi
	sarl	$31,%edi
	andl	$7,%edi
	addl	%edi,%esi
	sarl	$3,%esi
	movl	%esi,%edx
	jmp	Lj574
Lj591:
	addl	$8,%ebx
Lj588:
	cmpl	%eax,%ebx
	jb	Lj587
Lj589:
	movl	$-1,%edx
Lj574:
	movl	%edx,%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_MOVECHAR0$formal$formal$LONGINT
SYSTEM_MOVECHAR0$formal$formal$LONGINT:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%edi
	movl	%edx,%esi
	testl	%ecx,%ecx
	je	Lj596
	movl	%ecx,%ebx
	movl	%ebx,%edx
	movl	%edi,%eax
	movb	$0,%cl
	call	SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
	movl	%eax,%ecx
	cmpl	$-1,%ecx
	je	Lj609
	movl	%esi,%edx
	movl	%edi,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj616
Lj609:
	movl	%ebx,%ecx
	movl	%esi,%edx
	movl	%edi,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj616:
Lj596:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_COMPARECHAR0$formal$formal$LONGINT$$LONGINT
SYSTEM_COMPARECHAR0$formal$formal$LONGINT$$LONGINT:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%edx,%esi
	movl	%ecx,%ebx
	movl	$0,(%esp)
	movl	%eax,%edx
	movl	%esi,%ecx
	addl	%edx,%ebx
	jmp	Lj634
	.balign 4,0x90
Lj633:
	movzbl	(%edx),%edi
	movzbl	(%ecx),%eax
	subl	%eax,%edi
	movl	%edi,(%esp)
	testl	%edi,%edi
	jnl	Lj639
	movl	$-1,%esi
	jmp	Lj623
Lj639:
	cmpl	$0,(%esp)
	jng	Lj644
	movl	$1,%esi
	jmp	Lj623
Lj644:
Lj642:
	movzbl	(%edx),%eax
	testl	%eax,%eax
	je	Lj647
Lj649:
	movzbl	(%ecx),%eax
	testl	%eax,%eax
	jne	Lj648
Lj647:
	movl	$0,%esi
	jmp	Lj623
Lj648:
	incl	%ecx
	incl	%edx
Lj634:
	cmpl	%ebx,%edx
	jb	Lj633
Lj635:
	movl	$0,%esi
Lj623:
	movl	%esi,%eax
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_help_constructor
fpc_help_constructor:
.globl	FPC_HELP_CONSTRUCTOR
FPC_HELP_CONSTRUCTOR:
	subl	$20,%esp
	movl	%ebx,8(%esp)
	movl	%esi,12(%esp)
	movl	%edi,16(%esp)
	movl	%eax,(%esp)
	movl	%edx,%edi
	movl	%ecx,4(%esp)
	movl	(%edi),%eax
	testl	%eax,%eax
	jne	Lj657
	movl	(%esp),%ebx
	jmp	Lj654
Lj657:
	movl	(%edi),%esi
	movl	(%esp),%eax
	testl	%eax,%eax
	jne	Lj663
	movl	(%edi),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jna	Lj663
	movl	(%edi),%eax
	movl	(%eax),%edx
	movl	%esp,%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	$-1,(%edi)
Lj663:
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj672
	movl	(%esi),%edx
	movl	(%esp),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	movl	(%esp),%eax
	addl	4(%esp),%eax
	movl	%esi,(%eax)
Lj672:
	movl	(%esp),%ebx
Lj654:
	movl	%ebx,%eax
	movl	8(%esp),%ebx
	movl	12(%esp),%esi
	movl	16(%esp),%edi
	addl	$20,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_help_destructor
fpc_help_destructor:
.globl	FPC_HELP_DESTRUCTOR
FPC_HELP_DESTRUCTOR:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%ecx,%esi
	testl	%ebx,%ebx
	je	Lj683
Lj688:
	testl	%edx,%edx
	je	Lj683
Lj687:
	movl	%esi,%eax
	addl	%ebx,%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj683
	movl	%esi,%eax
	addl	%ebx,%eax
	movl	(%eax),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj689
Lj691:
	movl	4(%eax),%eax
	addl	%edx,%eax
	je	Lj690
Lj689:
	movw	$210,%ax
	call	SYSTEM_RUNERROR$WORD
Lj690:
	addl	%ebx,%esi
	movl	$0,(%esi)
	movl	%ebx,%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj683:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_help_fail
fpc_help_fail:
.globl	FPC_HELP_FAIL
FPC_HELP_FAIL:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,%edi
	testl	%ebx,%ebx
	je	Lj710
Lj714:
	movl	(%esi),%eax
	testl	%eax,%eax
	je	Lj710
	movl	(%esi),%eax
	cmpl	$-1,%eax
	jne	Lj716
	testl	%ebx,%ebx
	je	Lj717
Lj719:
	movl	%edi,%eax
	addl	%ebx,%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj718
Lj717:
	movl	$210,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj729
Lj718:
	movl	%edi,%eax
	addl	%ebx,%eax
	movl	$0,(%eax)
	movl	%ebx,%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	$0,(%esi)
	jmp	Lj729
Lj716:
	addl	%ebx,%edi
	movl	$0,(%edi)
Lj729:
Lj710:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_check_object
fpc_check_object:
.globl	FPC_CHECK_OBJECT
FPC_CHECK_OBJECT:
	testl	%eax,%eax
	je	Lj734
Lj737:
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj734
Lj736:
	movl	(%eax),%edx
	movl	4(%eax),%eax
	addl	%eax,%edx
	je	Lj735
Lj734:
	movw	$210,%ax
	call	SYSTEM_RUNERROR$WORD
Lj735:
	ret

.text
	.balign 4,0x90
.globl	fpc_check_object_ext
fpc_check_object_ext:
.globl	FPC_CHECK_OBJECT_EXT
FPC_CHECK_OBJECT_EXT:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	testl	%ebx,%ebx
	je	Lj744
Lj747:
	movl	(%ebx),%eax
	testl	%eax,%eax
	je	Lj744
Lj746:
	movl	%ebx,%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	addl	%eax,%edx
	je	Lj753
Lj744:
	movw	$210,%ax
	call	SYSTEM_RUNERROR$WORD
	jmp	Lj753
	.balign 4,0x90
Lj752:
	cmpl	%esi,%ebx
	je	Lj742
	movl	8(%ebx),%ebx
Lj757:
Lj753:
	testl	%ebx,%ebx
	jne	Lj752
Lj754:
	movw	$219,%ax
	call	SYSTEM_RUNERROR$WORD
Lj742:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_concat
fpc_shortstr_concat:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%ecx,%esi
	movl	8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movzbl	(%esi),%eax
	movl	%eax,-4(%ebp)
	movl	-12(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	%ecx,%ebx
	movl	%ebx,%eax
	addl	-4(%ebp),%eax
	cmpl	%edx,%eax
	jng	Lj769
	cmpl	%edx,-4(%ebp)
	jng	Lj771
	movl	%edx,-4(%ebp)
Lj771:
	movl	%edx,%eax
	subl	-4(%ebp),%eax
	movl	%eax,%ebx
Lj769:
	movl	-8(%ebp),%eax
	movl	%esi,%edx
	cmpl	%edx,%eax
	jne	Lj777
	movl	-4(%ebp),%eax
	incl	%eax
	andl	$255,%eax
	movl	-8(%ebp),%ecx
	leal	(%ecx,%eax,1),%edx
	movl	%ebx,%ecx
	movl	-12(%ebp),%edi
	leal	1(%edi),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj784
Lj777:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	%edx,%eax
	jne	Lj786
	movl	-4(%ebp),%eax
	incl	%eax
	andl	$255,%eax
	movl	-8(%ebp),%ecx
	leal	(%ecx,%eax,1),%edx
	movl	%ebx,%ecx
	movl	-8(%ebp),%edi
	leal	1(%edi),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	leal	1(%eax),%edx
	leal	1(%esi),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj799
Lj786:
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	leal	1(%eax),%edx
	leal	1(%esi),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	incl	%eax
	andl	$255,%eax
	movl	-8(%ebp),%ecx
	leal	(%ecx,%eax,1),%edx
	movl	%ebx,%ecx
	movl	-12(%ebp),%eax
	leal	1(%eax),%esi
	movl	%esi,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj799:
Lj784:
	movl	%ebx,%edx
	addl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	%dl,(%eax)
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
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
	movl	%esi,-300(%ebp)
	movl	%edi,-296(%ebp)
	movl	%eax,-288(%ebp)
	movl	%edx,-284(%ebp)
	movl	%ecx,-276(%ebp)
	movl	8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj817
	movl	-288(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj814
Lj817:
	movl	$0,-280(%ebp)
	movl	-288(%ebp),%ebx
	movl	-276(%ebp),%ecx
	movl	-280(%ebp),%eax
	cmpl	(%ecx,%eax,4),%ebx
	jne	Lj823
	incl	-280(%ebp)
Lj823:
	movb	$0,-292(%ebp)
	movl	%edx,%ecx
	movl	-280(%ebp),%esi
	cmpl	%esi,%ecx
	jl	Lj827
	decl	%esi
	.balign 4,0x90
Lj828:
	incl	%esi
	movl	-288(%ebp),%eax
	movl	-276(%ebp),%ebx
	cmpl	(%ebx,%esi,4),%eax
	jne	Lj830
	movb	$1,-292(%ebp)
	jmp	Lj827
Lj830:
	cmpl	%esi,%ecx
	jg	Lj828
Lj827:
	movb	-292(%ebp),%al
	testb	%al,%al
	je	Lj834
	movl	$0,-280(%ebp)
	movb	$0,-256(%ebp)
	leal	-256(%ebp),%eax
	movl	%eax,%ecx
	jmp	Lj841
Lj834:
	movl	-280(%ebp),%eax
	testl	%eax,%eax
	jne	Lj843
	movl	-288(%ebp),%eax
	movb	$0,(%eax)
Lj843:
	movl	-288(%ebp),%ecx
Lj841:
	movzbl	(%ecx),%eax
	movl	%eax,-272(%ebp)
	movl	%ecx,%ebx
	movl	%ebx,-268(%ebp)
	movl	-268(%ebp),%eax
	movzbl	(%eax),%ecx
	incl	%ecx
	movb	%cl,%al
	andl	$255,%eax
	leal	(%ebx,%eax,1),%eax
	movl	%eax,-260(%ebp)
	movl	%edx,%edi
	movl	-280(%ebp),%ebx
	cmpl	%ebx,%edi
	jl	Lj853
	decl	%ebx
	.balign 4,0x90
Lj854:
	incl	%ebx
	movl	-276(%ebp),%eax
	movl	(%eax,%ebx,4),%esi
	testl	%esi,%esi
	je	Lj858
	movb	(%esi),%al
	movb	%al,-264(%ebp)
	movzbl	-264(%ebp),%eax
	addl	-272(%ebp),%eax
	cmpl	-284(%ebp),%eax
	jng	Lj862
	movl	-284(%ebp),%eax
	subl	-272(%ebp),%eax
	movb	%al,-264(%ebp)
Lj862:
	movl	-260(%ebp),%edx
	leal	1(%esi),%eax
	movzbl	-264(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movzbl	-264(%ebp),%eax
	addl	%eax,-260(%ebp)
	movzbl	-264(%ebp),%eax
	addl	%eax,-272(%ebp)
Lj858:
	cmpl	%ebx,%edi
	jg	Lj854
Lj853:
	movl	-268(%ebp),%eax
	movb	-272(%ebp),%dl
	movb	%dl,(%eax)
	movb	-292(%ebp),%al
	testb	%al,%al
	je	Lj874
	leal	-256(%ebp),%ecx
	movl	-284(%ebp),%edx
	movl	-288(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj874:
Lj814:
	movl	-304(%ebp),%ebx
	movl	-300(%ebp),%esi
	movl	-296(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_shortstr_append_shortstr
fpc_shortstr_append_shortstr:
.globl	FPC_SHORTSTR_APPEND_SHORTSTR
FPC_SHORTSTR_APPEND_SHORTSTR:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,(%esp)
	movl	%ecx,%esi
	movl	(%esp),%ecx
	movzbw	(%ecx),%ax
	movw	%ax,%di
	movzbw	(%esi),%ax
	movw	%ax,%bx
	movswl	%di,%eax
	movswl	%bx,%ecx
	addl	%ecx,%eax
	cmpl	%edx,%eax
	jng	Lj888
	movswl	%di,%ecx
	movl	%edx,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movw	%cx,%bx
Lj888:
	movswl	%di,%eax
	incl	%eax
	andl	$255,%eax
	movl	(%esp),%ecx
	leal	(%ecx,%eax,1),%edx
	movswl	%bx,%eax
	movl	%eax,%ecx
	leal	1(%esi),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movswl	%di,%eax
	movswl	%bx,%edx
	addl	%edx,%eax
	movl	(%esp),%edx
	movb	%al,(%edx)
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_compare_equal
fpc_shortstr_compare_equal:
.globl	FPC_SHORTSTR_COMPARE_EQUAL
FPC_SHORTSTR_COMPARE_EQUAL:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movzbl	(%eax),%ebx
	movzbl	(%edx),%ecx
	subl	%ecx,%ebx
	jne	Lj904
	movzbl	(%eax),%ecx
	incl	%edx
	incl	%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	movl	%eax,%ebx
Lj904:
	movl	%ebx,%eax
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_STRPAS$PCHAR$$SHORTSTRING
SYSTEM_STRPAS$PCHAR$$SHORTSTRING:
	movl	%eax,%ecx
	movl	%edx,%eax
	movl	$255,%edx
	call	FPC_PCHAR_TO_SHORTSTR
	ret

.text
	.balign 4,0x90
.globl	fpc_chararray_to_shortstr
fpc_chararray_to_shortstr:
.globl	FPC_CHARARRAY_TO_SHORTSTR
FPC_CHARARRAY_TO_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,%edi
	movl	%ecx,%esi
	movl	12(%ebp),%ecx
	movb	8(%ebp),%al
	incl	%ecx
	movl	%ecx,-4(%ebp)
	movl	%edx,%ecx
	incl	%ecx
	cmpl	-4(%ebp),%ecx
	jnle	Lj926
	movl	%edx,-4(%ebp)
	jmp	Lj929
Lj926:
	cmpl	$0,-4(%ebp)
	jnl	Lj931
	movl	$0,-4(%ebp)
Lj931:
Lj929:
	testb	%al,%al
	je	Lj935
	movl	-4(%ebp),%edx
	movl	%esi,%eax
	movb	$0,%cl
	call	SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
	testl	%eax,%eax
	jnl	Lj945
	movb	-4(%ebp),%bl
	jmp	Lj951
Lj945:
	movb	%al,%bl
	jmp	Lj951
Lj935:
	movb	-4(%ebp),%bl
Lj951:
	movzbl	%bl,%ecx
	leal	1(%edi),%edx
	movl	%esi,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movb	%bl,(%edi)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_shortstr_to_chararray
fpc_shortstr_to_chararray:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%ebx
	movl	%edx,%edi
	movl	%ecx,%eax
	movzbl	(%eax),%edx
	movl	%edx,%esi
	movl	%edi,%edx
	incl	%edx
	cmpl	%esi,%edx
	jnl	Lj967
	movl	%edi,%edx
	incl	%edx
	movl	%edx,%esi
Lj967:
	testl	%esi,%esi
	jng	Lj971
	movl	%esi,%ecx
	movl	%ebx,%edx
	incl	%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj971:
	movl	%edi,%edx
	incl	%edx
	subl	%esi,%edx
	leal	(%ebx,%esi,1),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_pwidechar_length
fpc_pwidechar_length:
.globl	FPC_PWIDECHAR_LENGTH
FPC_PWIDECHAR_LENGTH:
	movl	%eax,%edx
	movl	$0,%eax
	testl	%edx,%edx
	je	Lj984
	jmp	Lj991
	.balign 4,0x90
Lj990:
	incl	%eax
Lj991:
	movw	(%edx,%eax,2),%cx
	testw	%cx,%cx
	jne	Lj990
Lj992:
	jmp	Lj984
Lj984:
	ret

.text
	.balign 4,0x90
.globl	fpc_mul_integer
fpc_mul_integer:
.globl	FPC_MUL_INTEGER
FPC_MUL_INTEGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movw	%ax,%si
	movb	$0,-4(%ebp)
	testw	%si,%si
	jnl	Lj1000
	movb	-4(%ebp),%al
	testb	%al,%al
	seteb	-4(%ebp)
	movswl	%si,%eax
	negl	%eax
	movw	%ax,%bx
	jmp	Lj1005
Lj1000:
	movw	%si,%bx
Lj1005:
	testw	%dx,%dx
	jnl	Lj1009
	movb	-4(%ebp),%al
	testb	%al,%al
	seteb	-4(%ebp)
	movswl	%dx,%eax
	negl	%eax
	movw	%ax,%si
	jmp	Lj1014
Lj1009:
	movw	%dx,%si
Lj1014:
	movzwl	%bx,%edx
	movzwl	%si,%eax
	mull	%edx
	movw	%ax,%di
	testb	%cl,%cl
	je	Lj1020
	movzwl	%bx,%eax
	testl	%eax,%eax
	je	Lj1020
	movzwl	%si,%eax
	testl	%eax,%eax
	je	Lj1020
	cmpw	%di,%bx
	ja	Lj1019
Lj1025:
	cmpw	%di,%si
	ja	Lj1019
Lj1024:
	movzwl	%di,%eax
	shrl	$15,%eax
	testl	%eax,%eax
	je	Lj1020
	cmpw	$32768,%di
	jne	Lj1019
Lj1027:
	movb	-4(%ebp),%al
	testb	%al,%al
	jne	Lj1020
Lj1019:
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj1020:
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj1033
	movzwl	%di,%eax
	negl	%eax
	jmp	Lj1036
Lj1033:
	movw	%di,%ax
Lj1036:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
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
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	movw	%ax,%di
	movw	%dx,%bx
	movb	%cl,-16(%ebp)
	movw	$0,-4(%ebp)
	movw	$1,%si
	movb	$0,-12(%ebp)
	movb	$0,-20(%ebp)
	decb	-20(%ebp)
	.balign 4,0x90
Lj1049:
	incb	-20(%ebp)
	movw	%si,%ax
	andw	%bx,%ax
	andl	$65535,%eax
	je	Lj1051
	movw	-4(%ebp),%ax
	movw	%ax,-8(%ebp)
	movzwl	-4(%ebp),%edx
	movzwl	%di,%eax
	addl	%eax,%edx
	movw	%dx,-4(%ebp)
	movb	-16(%ebp),%al
	testb	%al,%al
	je	Lj1057
	movb	-12(%ebp),%al
	testb	%al,%al
	jne	Lj1056
Lj1059:
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1057
	movzwl	%di,%eax
	testl	%eax,%eax
	je	Lj1057
	movw	-4(%ebp),%ax
	cmpw	%ax,-8(%ebp)
	ja	Lj1056
Lj1062:
	cmpw	%ax,%di
	jna	Lj1057
Lj1056:
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj1057:
Lj1051:
	movb	-12(%ebp),%al
	testb	%al,%al
	jne	Lj1069
Lj1071:
	movw	%di,%ax
	andl	$32768,%eax
	je	Lj1070
Lj1069:
	movb	$1,-12(%ebp)
	jmp	Lj1072
Lj1070:
	movb	$0,-12(%ebp)
Lj1072:
	shlw	$1,%di
	shlw	$1,%si
	cmpb	$15,-20(%ebp)
	jb	Lj1049
	movw	-4(%ebp),%ax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
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
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,%esi
	movb	$0,-4(%ebp)
	testl	%esi,%esi
	jnl	Lj1082
	movb	-4(%ebp),%al
	testb	%al,%al
	seteb	-4(%ebp)
	movl	%esi,%eax
	negl	%eax
	movl	%eax,%ebx
	jmp	Lj1087
Lj1082:
	movl	%esi,%ebx
Lj1087:
	testl	%edx,%edx
	jnl	Lj1091
	movb	-4(%ebp),%al
	testb	%al,%al
	seteb	-4(%ebp)
	movl	%edx,%eax
	negl	%eax
	movl	%eax,%esi
	jmp	Lj1096
Lj1091:
	movl	%edx,%esi
Lj1096:
	movl	%esi,%eax
	mull	%ebx
	movl	%eax,%edi
	testb	%cl,%cl
	je	Lj1102
	testl	%ebx,%ebx
	je	Lj1102
	testl	%esi,%esi
	je	Lj1102
	cmpl	%edi,%ebx
	ja	Lj1101
Lj1107:
	cmpl	%edi,%esi
	ja	Lj1101
Lj1106:
	movl	%edi,%eax
	shrl	$15,%eax
	testl	%eax,%eax
	je	Lj1102
	cmpl	$-2147483648,%edi
	jne	Lj1101
Lj1109:
	movb	-4(%ebp),%al
	testb	%al,%al
	jne	Lj1102
Lj1101:
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj1102:
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj1115
	movl	%edi,%eax
	negl	%eax
	jmp	Lj1118
Lj1115:
	movl	%edi,%eax
Lj1118:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
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
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	movl	%eax,%edi
	movl	%edx,%ebx
	movb	%cl,-16(%ebp)
	movl	$0,-4(%ebp)
	movl	$1,%esi
	movb	$0,-12(%ebp)
	movb	$0,-20(%ebp)
	decb	-20(%ebp)
	.balign 4,0x90
Lj1131:
	incb	-20(%ebp)
	movl	%esi,%eax
	andl	%ebx,%eax
	je	Lj1133
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	%edi,%eax
	addl	-4(%ebp),%eax
	movl	%eax,-4(%ebp)
	movb	-16(%ebp),%al
	testb	%al,%al
	je	Lj1139
	movb	-12(%ebp),%al
	testb	%al,%al
	jne	Lj1138
Lj1141:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1139
	testl	%edi,%edi
	je	Lj1139
	movl	-4(%ebp),%eax
	cmpl	%eax,-8(%ebp)
	ja	Lj1138
Lj1144:
	cmpl	%eax,%edi
	jna	Lj1139
Lj1138:
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj1139:
Lj1133:
	movb	-12(%ebp),%al
	testb	%al,%al
	jne	Lj1151
Lj1153:
	movl	%edi,%eax
	andl	$-2147483648,%eax
	je	Lj1152
Lj1151:
	movb	$1,-12(%ebp)
	jmp	Lj1154
Lj1152:
	movb	$0,-12(%ebp)
Lj1154:
	movl	%edi,%eax
	shll	$1,%eax
	movl	%eax,%edi
	movl	%esi,%eax
	shll	$1,%eax
	movl	%eax,%esi
	cmpb	$31,-20(%ebp)
	jb	Lj1131
	movl	-4(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ODD$LONGINT$$BOOLEAN
SYSTEM_ODD$LONGINT$$BOOLEAN:
	andl	$1,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ODD$LONGWORD$$BOOLEAN
SYSTEM_ODD$LONGWORD$$BOOLEAN:
	andl	$1,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ODD$INT64$$BOOLEAN
SYSTEM_ODD$INT64$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$1,%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_ODD$QWORD$$BOOLEAN
SYSTEM_ODD$QWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$1,%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_SQR$LONGINT$$LONGINT
SYSTEM_SQR$LONGINT$$LONGINT:
	movl	%eax,%edx
	movl	%edx,%eax
	imull	%edx,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ABS$INT64$$INT64
SYSTEM_ABS$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	testl	%ebx,%ebx
	jl	Lj1189
	jg	Lj1190
	testl	%ecx,%ecx
	jnb	Lj1190
Lj1189:
	movl	%ecx,%eax
	movl	%ebx,%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	jmp	Lj1193
Lj1190:
	movl	%ecx,%eax
	movl	%ebx,%edx
Lj1193:
	movl	-4(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_SQR$INT64$$INT64
SYSTEM_SQR$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	pushl	%edx
	pushl	%eax
	pushl	%edx
	pushl	%eax
	movl	$0,%eax
	call	fpc_mul_int64
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_SQR$QWORD$$QWORD
SYSTEM_SQR$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	pushl	%edx
	pushl	%eax
	pushl	%edx
	pushl	%eax
	movl	$0,%eax
	call	fpc_mul_qword
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_DECLOCKED$INT64$$BOOLEAN:
	subl	$1,(%eax)
	sbbl	$0,4(%eax)
	movl	(%eax),%edx
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj1219
	testl	%edx,%edx
	jne	Lj1219
Lj1218:
	movb	$1,%al
	jmp	Lj1220
Lj1219:
	movb	$0,%al
Lj1220:
	ret

.text
	.balign 4,0x90
SYSTEM_INCLOCKED$INT64:
	addl	$1,(%eax)
	adcl	$0,4(%eax)
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ALIGN$LONGWORD$LONGWORD$$LONGWORD
SYSTEM_ALIGN$LONGWORD$LONGWORD$$LONGWORD:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%edx,%ecx
	movl	%ecx,%ebx
	addl	%eax,%ebx
	decl	%ebx
	movl	%ebx,%eax
	movl	$0,%edx
	divl	%ecx
	movl	%edx,%eax
	subl	%eax,%ebx
	movl	%ebx,%eax
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ALIGN$POINTER$LONGWORD$$POINTER
SYSTEM_ALIGN$POINTER$LONGWORD$$POINTER:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%edx,%ecx
	movl	%ecx,%ebx
	addl	%eax,%ebx
	decl	%ebx
	movl	%ebx,%eax
	movl	$0,%edx
	divl	%ecx
	movl	%edx,%eax
	subl	%eax,%ebx
	movl	%ebx,%eax
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_INT_STR$LONGINT$OPENSTRING:
	subl	$64,%esp
	movl	%ebx,52(%esp)
	movl	%esi,56(%esp)
	movl	%edi,60(%esp)
	movl	%edx,48(%esp)
	movl	%ecx,40(%esp)
	movl	48(%esp),%edx
	leal	1(%edx),%ecx
	movl	%ecx,44(%esp)
	movl	44(%esp),%edx
	movl	%edx,36(%esp)
	testl	%eax,%eax
	jnl	Lj1242
	movl	36(%esp),%edx
	movb	$45,(%edx)
	incl	36(%esp)
	movl	%eax,%edx
	negl	%edx
	movl	%edx,%ecx
	jmp	Lj1247
Lj1242:
	movl	%eax,%ecx
Lj1247:
	movl	%esp,%edi
	movl	%edi,%esi
	.balign 4,0x90
Lj1254:
	movl	%ecx,%edx
	movl	$-858993459,%eax
	mull	%edx
	shrl	$3,%edx
	movl	%edx,%ebx
	incl	%esi
	movl	$10,%eax
	mull	%ebx
	movl	%ecx,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	addl	$48,%eax
	movb	%al,(%esi)
	movl	%ebx,%ecx
	testl	%ebx,%ebx
	jne	Lj1254
	movl	%esi,%eax
	subl	%edi,%eax
	movl	36(%esp),%edx
	subl	44(%esp),%edx
	addl	%edx,%eax
	subl	40(%esp),%eax
	testl	%eax,%eax
	jng	Lj1268
	addl	%eax,%edi
	jmp	Lj1268
	.balign 4,0x90
Lj1267:
	movb	(%esi),%al
	movl	36(%esp),%edx
	movb	%al,(%edx)
	incl	36(%esp)
	decl	%esi
Lj1268:
	cmpl	%edi,%esi
	ja	Lj1267
Lj1269:
	movl	36(%esp),%edx
	subl	44(%esp),%edx
	movl	48(%esp),%eax
	movb	%dl,(%eax)
	movl	52(%esp),%ebx
	movl	56(%esp),%esi
	movl	60(%esp),%edi
	addl	$64,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_INT_STR$LONGWORD$OPENSTRING:
	subl	$64,%esp
	movl	%ebx,52(%esp)
	movl	%esi,56(%esp)
	movl	%edi,60(%esp)
	movl	%eax,36(%esp)
	movl	%edx,48(%esp)
	movl	%ecx,40(%esp)
	movl	48(%esp),%edx
	leal	1(%edx),%eax
	movl	%eax,44(%esp)
	movl	44(%esp),%edi
	movl	%esp,%esi
	movl	%esi,%ebx
	.balign 4,0x90
Lj1284:
	incl	%ebx
	movl	36(%esp),%edx
	movl	$-858993459,%eax
	mull	%edx
	shrl	$3,%edx
	movl	%edx,%ecx
	movl	$10,%eax
	mull	%ecx
	movl	36(%esp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	addl	$48,%eax
	movb	%al,(%ebx)
	movl	%ecx,36(%esp)
	movl	36(%esp),%eax
	testl	%eax,%eax
	jne	Lj1284
	movl	%ebx,%eax
	subl	%esi,%eax
	subl	40(%esp),%eax
	testl	%eax,%eax
	jng	Lj1298
	addl	%eax,%esi
	jmp	Lj1298
	.balign 4,0x90
Lj1297:
	movb	(%ebx),%al
	movb	%al,(%edi)
	incl	%edi
	decl	%ebx
Lj1298:
	cmpl	%esi,%ebx
	ja	Lj1297
Lj1299:
	movl	%edi,%edx
	subl	44(%esp),%edx
	movl	48(%esp),%eax
	movb	%dl,(%eax)
	movl	52(%esp),%ebx
	movl	56(%esp),%esi
	movl	60(%esp),%edi
	addl	$64,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_INT_STR$INT64$OPENSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$76,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	movl	8(%ebp),%ebx
	movl	12(%ebp),%ecx
	movl	%eax,-64(%ebp)
	movl	%edx,-56(%ebp)
	movl	-64(%ebp),%edx
	leal	1(%edx),%eax
	movl	%eax,-60(%ebp)
	movl	%eax,-52(%ebp)
	testl	%ecx,%ecx
	jl	Lj1310
	jg	Lj1311
	testl	%ebx,%ebx
	jnb	Lj1311
Lj1310:
	movl	-52(%ebp),%eax
	movb	$45,(%eax)
	incl	-52(%ebp)
	movl	%ebx,%eax
	movl	%ecx,%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-48(%ebp)
	movl	%edx,-40(%ebp)
	jmp	Lj1316
Lj1311:
	movl	%ebx,-48(%ebp)
	movl	%ecx,-40(%ebp)
Lj1316:
	leal	-33(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	-44(%ebp),%edi
	.balign 4,0x90
Lj1323:
	pushl	$0
	pushl	$10
	pushl	-40(%ebp)
	pushl	-48(%ebp)
	call	fpc_div_qword
	movl	%eax,%ebx
	movl	%edx,%esi
	incl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	$0
	pushl	$10
	movl	$0,%eax
	call	fpc_mul_qword
	movl	-48(%ebp),%ecx
	subl	%eax,%ecx
	movl	%ecx,%eax
	movl	-40(%ebp),%ecx
	sbbl	%edx,%ecx
	movl	%ecx,%edx
	addl	$48,%eax
	adcl	$0,%edx
	movb	%al,(%edi)
	movl	%ebx,-48(%ebp)
	movl	%esi,-40(%ebp)
	testl	%esi,%esi
	jne	Lj1323
	cmpl	$0,-48(%ebp)
	jne	Lj1323
Lj1325:
	movl	%edi,%edx
	subl	-44(%ebp),%edx
	movl	-52(%ebp),%eax
	subl	-60(%ebp),%eax
	addl	%eax,%edx
	subl	-56(%ebp),%edx
	movl	%edx,%eax
	testl	%eax,%eax
	jng	Lj1347
	addl	%eax,-44(%ebp)
	jmp	Lj1347
	.balign 4,0x90
Lj1346:
	movb	(%edi),%dl
	movl	-52(%ebp),%eax
	movb	%dl,(%eax)
	incl	-52(%ebp)
	decl	%edi
Lj1347:
	cmpl	-44(%ebp),%edi
	ja	Lj1346
Lj1348:
	movl	-52(%ebp),%edx
	subl	-60(%ebp),%edx
	movl	-64(%ebp),%eax
	movb	%dl,(%eax)
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_INT_STR$QWORD$OPENSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$108,%esp
	movl	%ebx,-108(%ebp)
	movl	%esi,-104(%ebp)
	movl	%edi,-100(%ebp)
	movl	8(%ebp),%ecx
	movl	%ecx,-80(%ebp)
	movl	12(%ebp),%ecx
	movl	%ecx,-76(%ebp)
	movl	%eax,-96(%ebp)
	movl	%edx,-88(%ebp)
	movl	-96(%ebp),%edx
	leal	1(%edx),%eax
	movl	%eax,-92(%ebp)
	movl	%eax,-84(%ebp)
	leal	-65(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	-72(%ebp),%edi
	.balign 4,0x90
Lj1363:
	incl	%edi
	pushl	$0
	pushl	$10
	pushl	-76(%ebp)
	pushl	-80(%ebp)
	call	fpc_div_qword
	movl	%eax,%esi
	movl	%edx,%ebx
	pushl	%ebx
	pushl	%esi
	pushl	$0
	pushl	$10
	movl	$0,%eax
	call	fpc_mul_qword
	movl	-80(%ebp),%ecx
	subl	%eax,%ecx
	movl	%ecx,%eax
	movl	-76(%ebp),%ecx
	sbbl	%edx,%ecx
	movl	%ecx,%edx
	addl	$48,%eax
	adcl	$0,%edx
	movb	%al,(%edi)
	movl	%esi,-80(%ebp)
	movl	%ebx,-76(%ebp)
	testl	%ebx,%ebx
	jne	Lj1363
	cmpl	$0,-80(%ebp)
	jne	Lj1363
Lj1365:
	movl	%edi,%eax
	subl	-72(%ebp),%eax
	subl	-88(%ebp),%eax
	testl	%eax,%eax
	jng	Lj1387
	addl	%eax,-72(%ebp)
	jmp	Lj1387
	.balign 4,0x90
Lj1386:
	movb	(%edi),%dl
	movl	-84(%ebp),%eax
	movb	%dl,(%eax)
	incl	-84(%ebp)
	decl	%edi
Lj1387:
	cmpl	-72(%ebp),%edi
	ja	Lj1386
Lj1388:
	movl	-84(%ebp),%edx
	subl	-92(%ebp),%edx
	movl	-96(%ebp),%eax
	movb	%dl,(%eax)
	movl	-108(%ebp),%ebx
	movl	-104(%ebp),%esi
	movl	-100(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_SWAPENDIAN$SMALLINT$$SMALLINT
SYSTEM_SWAPENDIAN$SMALLINT$$SMALLINT:
	movw	%ax,%dx
	andl	$65535,%edx
	movl	%edx,%eax
	shrl	$8,%eax
	shll	$8,%edx
	orl	%edx,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SWAPENDIAN$WORD$$WORD
SYSTEM_SWAPENDIAN$WORD$$WORD:
	movw	%ax,%dx
	andl	$65535,%edx
	movl	%edx,%eax
	shrl	$8,%eax
	shll	$8,%edx
	orl	%edx,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SWAPENDIAN$LONGINT$$LONGINT
SYSTEM_SWAPENDIAN$LONGINT$$LONGINT:
	movl	%eax,%edx
	andl	$65280,%edx
	shll	$8,%edx
	movl	%eax,%ecx
	shll	$24,%ecx
	orl	%ecx,%edx
	movl	%eax,%ecx
	andl	$16711680,%ecx
	shrl	$8,%ecx
	orl	%ecx,%edx
	shrl	$24,%eax
	orl	%eax,%edx
	movl	%edx,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD
SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD:
	movl	%eax,%edx
	andl	$65280,%edx
	shll	$8,%edx
	movl	%eax,%ecx
	shll	$24,%ecx
	orl	%ecx,%edx
	movl	%eax,%ecx
	andl	$16711680,%ecx
	shrl	$8,%ecx
	orl	%ecx,%edx
	shrl	$24,%eax
	orl	%eax,%edx
	movl	%edx,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SWAPENDIAN$INT64$$INT64
SYSTEM_SWAPENDIAN$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	8(%ebp),%ebx
	movl	12(%ebp),%ecx
	movl	%ebx,%edx
	movl	%ecx,%eax
	andl	$65280,%edx
	movl	$0,%eax
	movl	$0,%eax
	shll	$8,%edx
	movl	%ebx,%esi
	movl	%ecx,%edi
	movl	$0,%edi
	shll	$24,%esi
	orl	%edi,%eax
	orl	%esi,%edx
	movl	%ebx,%esi
	movl	%ecx,%edi
	andl	$16711680,%esi
	movl	$0,%edi
	shldl	$24,%esi,%edi
	shll	$24,%esi
	orl	%esi,%eax
	orl	%edi,%edx
	movl	%ebx,%esi
	movl	%ecx,%edi
	andl	$-16777216,%esi
	movl	$0,%edi
	shldl	$8,%esi,%edi
	shll	$8,%esi
	orl	%esi,%eax
	orl	%edi,%edx
	movl	%ebx,%esi
	movl	%ecx,%edi
	movl	$0,%esi
	andl	$255,%edi
	shrdl	$8,%edi,%esi
	shrl	$8,%edi
	orl	%esi,%eax
	orl	%edi,%edx
	movl	%ebx,%esi
	movl	%ecx,%edi
	movl	$0,%esi
	andl	$65280,%edi
	shrdl	$24,%edi,%esi
	shrl	$24,%edi
	orl	%esi,%eax
	orl	%edi,%edx
	movl	%ebx,%esi
	movl	%ecx,%edi
	movl	$0,%esi
	andl	$16711680,%edi
	movl	$0,%esi
	shrl	$8,%edi
	orl	%edi,%eax
	orl	%esi,%edx
	movl	$0,%ebx
	shrl	$24,%ecx
	orl	%ecx,%eax
	orl	%ebx,%edx
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_SWAPENDIAN$QWORD$$QWORD
SYSTEM_SWAPENDIAN$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	movl	%ecx,%edx
	movl	%ebx,%eax
	andl	$65280,%edx
	movl	$0,%eax
	movl	%edx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,%eax
	movl	%eax,-4(%ebp)
	shll	$8,-8(%ebp)
	movl	%ecx,%edx
	movl	%ebx,%eax
	movl	$0,%eax
	shll	$24,%edx
	orl	%eax,-4(%ebp)
	orl	%edx,-8(%ebp)
	movl	%ecx,%eax
	movl	%ebx,%edx
	andl	$16711680,%eax
	movl	$0,%edx
	shldl	$24,%eax,%edx
	shll	$24,%eax
	orl	%eax,-4(%ebp)
	orl	%edx,-8(%ebp)
	movl	%ecx,%eax
	movl	%ebx,%edx
	andl	$-16777216,%eax
	movl	$0,%edx
	shldl	$8,%eax,%edx
	shll	$8,%eax
	orl	%eax,-4(%ebp)
	orl	%edx,-8(%ebp)
	movl	%ecx,%edx
	movl	%ebx,%esi
	movl	%edx,%edi
	movl	%esi,%eax
	movl	$0,%edi
	andl	$255,%eax
	shrdl	$8,%eax,%edi
	shrl	$8,%eax
	orl	%edi,-4(%ebp)
	orl	%eax,-8(%ebp)
	movl	%edx,%eax
	movl	%esi,%edi
	movl	$0,%eax
	andl	$65280,%edi
	shrdl	$24,%edi,%eax
	shrl	$24,%edi
	orl	%eax,-4(%ebp)
	orl	%edi,-8(%ebp)
	movl	%esi,%eax
	movl	$0,%edx
	andl	$16711680,%eax
	movl	$0,%edx
	shrl	$8,%eax
	orl	%eax,-4(%ebp)
	orl	%edx,-8(%ebp)
	movl	%ecx,%edx
	movl	%ebx,%eax
	movl	$0,%edx
	shrl	$24,%eax
	orl	%eax,-4(%ebp)
	orl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_BETON$SMALLINT$$SMALLINT
SYSTEM_BETON$SMALLINT$$SMALLINT:
	movw	%ax,%dx
	andl	$65535,%edx
	movl	%edx,%eax
	shrl	$8,%eax
	shll	$8,%edx
	orl	%edx,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BETON$WORD$$WORD
SYSTEM_BETON$WORD$$WORD:
	movw	%ax,%dx
	andl	$65535,%edx
	movl	%edx,%eax
	shrl	$8,%eax
	shll	$8,%edx
	orl	%edx,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BETON$LONGINT$$LONGINT
SYSTEM_BETON$LONGINT$$LONGINT:
	call	SYSTEM_SWAPENDIAN$LONGINT$$LONGINT
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BETON$LONGWORD$$LONGWORD
SYSTEM_BETON$LONGWORD$$LONGWORD:
	call	SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BETON$INT64$$INT64
SYSTEM_BETON$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	pushl	%edx
	pushl	%eax
	call	SYSTEM_SWAPENDIAN$INT64$$INT64
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_BETON$QWORD$$QWORD
SYSTEM_BETON$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	pushl	%edx
	pushl	%eax
	call	SYSTEM_SWAPENDIAN$QWORD$$QWORD
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_LETON$SMALLINT$$SMALLINT
SYSTEM_LETON$SMALLINT$$SMALLINT:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LETON$WORD$$WORD
SYSTEM_LETON$WORD$$WORD:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LETON$LONGINT$$LONGINT
SYSTEM_LETON$LONGINT$$LONGINT:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LETON$LONGWORD$$LONGWORD
SYSTEM_LETON$LONGWORD$$LONGWORD:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LETON$INT64$$INT64
SYSTEM_LETON$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_LETON$QWORD$$QWORD
SYSTEM_LETON$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_NTOBE$SMALLINT$$SMALLINT
SYSTEM_NTOBE$SMALLINT$$SMALLINT:
	movw	%ax,%dx
	andl	$65535,%edx
	movl	%edx,%eax
	shrl	$8,%eax
	shll	$8,%edx
	orl	%edx,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_NTOBE$WORD$$WORD
SYSTEM_NTOBE$WORD$$WORD:
	movw	%ax,%dx
	andl	$65535,%edx
	movl	%edx,%eax
	shrl	$8,%eax
	shll	$8,%edx
	orl	%edx,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_NTOBE$LONGINT$$LONGINT
SYSTEM_NTOBE$LONGINT$$LONGINT:
	call	SYSTEM_SWAPENDIAN$LONGINT$$LONGINT
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_NTOBE$LONGWORD$$LONGWORD
SYSTEM_NTOBE$LONGWORD$$LONGWORD:
	call	SYSTEM_SWAPENDIAN$LONGWORD$$LONGWORD
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_NTOBE$INT64$$INT64
SYSTEM_NTOBE$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	pushl	%edx
	pushl	%eax
	call	SYSTEM_SWAPENDIAN$INT64$$INT64
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_NTOBE$QWORD$$QWORD
SYSTEM_NTOBE$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	pushl	%edx
	pushl	%eax
	call	SYSTEM_SWAPENDIAN$QWORD$$QWORD
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_NTOLE$SMALLINT$$SMALLINT
SYSTEM_NTOLE$SMALLINT$$SMALLINT:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_NTOLE$WORD$$WORD
SYSTEM_NTOLE$WORD$$WORD:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_NTOLE$LONGINT$$LONGINT
SYSTEM_NTOLE$LONGINT$$LONGINT:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_NTOLE$LONGWORD$$LONGWORD
SYSTEM_NTOLE$LONGWORD$$LONGWORD:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_NTOLE$INT64$$INT64
SYSTEM_NTOLE$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_NTOLE$QWORD$$QWORD
SYSTEM_NTOLE$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_RORQWORD$QWORD$$QWORD
SYSTEM_RORQWORD$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	movl	%ecx,%eax
	movl	%ebx,%edx
	shrdl	$1,%edx,%eax
	shrl	$1,%edx
	movl	$0,%ebx
	shll	$31,%ecx
	orl	%ebx,%eax
	orl	%ecx,%edx
	movl	-4(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_RORQWORD$QWORD$BYTE$$QWORD
SYSTEM_RORQWORD$QWORD$BYTE$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	8(%ebp),%esi
	movl	12(%ebp),%ebx
	andl	$63,%eax
	movl	%eax,%edi
	movl	%esi,%eax
	movl	%ebx,%edx
	movl	%edi,%ecx
	cmpl	$64,%ecx
	jl	Lj1577
	movl	$0,%eax
	movl	$0,%edx
	jmp	Lj1579
Lj1577:
	cmpl	$32,%ecx
	jl	Lj1578
	subl	$32,%ecx
	shrl	%cl,%edx
	movl	%edx,%eax
	movl	$0,%edx
	jmp	Lj1579
Lj1578:
	shrdl	%cl,%edx,%eax
	shrl	%cl,%edx
Lj1579:
	movl	$64,%ecx
	subl	%edi,%ecx
	cmpl	$64,%ecx
	jl	Lj1580
	movl	$0,%esi
	movl	$0,%ebx
	jmp	Lj1582
Lj1580:
	cmpl	$32,%ecx
	jl	Lj1581
	subl	$32,%ecx
	shll	%cl,%esi
	movl	%esi,%ebx
	movl	$0,%esi
	jmp	Lj1582
Lj1581:
	shldl	%cl,%esi,%ebx
	shll	%cl,%esi
Lj1582:
	orl	%esi,%eax
	orl	%ebx,%edx
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_ROLQWORD$QWORD$$QWORD
SYSTEM_ROLQWORD$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	movl	%ecx,%eax
	movl	%ebx,%edx
	shldl	$1,%eax,%edx
	shll	$1,%eax
	movl	$0,%ecx
	shrl	$31,%ebx
	orl	%ebx,%eax
	orl	%ecx,%edx
	movl	-4(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_ROLQWORD$QWORD$BYTE$$QWORD
SYSTEM_ROLQWORD$QWORD$BYTE$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	8(%ebp),%esi
	movl	12(%ebp),%ebx
	andl	$63,%eax
	movl	%eax,%edi
	movl	%esi,%eax
	movl	%ebx,%edx
	movl	%edi,%ecx
	cmpl	$64,%ecx
	jl	Lj1595
	movl	$0,%eax
	movl	$0,%edx
	jmp	Lj1597
Lj1595:
	cmpl	$32,%ecx
	jl	Lj1596
	subl	$32,%ecx
	shll	%cl,%eax
	movl	%eax,%edx
	movl	$0,%eax
	jmp	Lj1597
Lj1596:
	shldl	%cl,%eax,%edx
	shll	%cl,%eax
Lj1597:
	movl	$64,%ecx
	subl	%edi,%ecx
	cmpl	$64,%ecx
	jl	Lj1598
	movl	$0,%esi
	movl	$0,%ebx
	jmp	Lj1600
Lj1598:
	cmpl	$32,%ecx
	jl	Lj1599
	subl	$32,%ecx
	shrl	%cl,%ebx
	movl	%ebx,%esi
	movl	$0,%ebx
	jmp	Lj1600
Lj1599:
	shrdl	%cl,%ebx,%esi
	shrl	%cl,%ebx
Lj1600:
	orl	%esi,%eax
	orl	%ebx,%edx
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_SARINT64$INT64$BYTE$$INT64
SYSTEM_SARINT64$INT64$BYTE$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	8(%ebp),%edx
	movl	12(%ebp),%ebx
	movb	%al,%cl
	movl	%edx,-4(%ebp)
	movl	%ebx,%eax
	movl	$0,%edx
	shrl	$31,%eax
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	andl	$63,%ecx
	movl	%ecx,%esi
	testl	%ecx,%ecx
	setneb	%cl
	andl	$255,%ecx
	negl	%ecx
	movl	%ecx,%edi
	sarl	$31,%edi
	andl	%ecx,%eax
	andl	%edi,%edx
	movl	$64,%ecx
	subl	%esi,%ecx
	cmpl	$64,%ecx
	jl	Lj1613
	movl	$0,%eax
	movl	$0,%edx
	jmp	Lj1615
Lj1613:
	cmpl	$32,%ecx
	jl	Lj1614
	subl	$32,%ecx
	shll	%cl,%eax
	movl	%eax,%edx
	movl	$0,%eax
	jmp	Lj1615
Lj1614:
	shldl	%cl,%eax,%edx
	shll	%cl,%eax
Lj1615:
	movl	-4(%ebp),%edi
	movl	%esi,%ecx
	cmpl	$64,%ecx
	jl	Lj1616
	movl	$0,%edi
	movl	$0,%ebx
	jmp	Lj1618
Lj1616:
	cmpl	$32,%ecx
	jl	Lj1617
	subl	$32,%ecx
	shrl	%cl,%ebx
	movl	%ebx,%edi
	movl	$0,%ebx
	jmp	Lj1618
Lj1617:
	shrdl	%cl,%ebx,%edi
	shrl	%cl,%ebx
Lj1618:
	orl	%edi,%eax
	orl	%ebx,%edx
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_varset_load
fpc_varset_load:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,%ebx
	movl	%edx,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	8(%ebp),%esi
	movl	%ebx,%edi
	movl	%ecx,%ebx
	testl	%esi,%esi
	jng	Lj1626
	movl	%ebx,%eax
	movl	%esi,%edx
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	addl	%esi,%ebx
	subl	%esi,-8(%ebp)
	jmp	Lj1633
Lj1626:
	testl	%esi,%esi
	jnl	Lj1635
	subl	%esi,%edi
	addl	%esi,-4(%ebp)
Lj1635:
Lj1633:
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jng	Lj1637
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj1637:
	movl	%ebx,%esi
	movl	%esi,%edx
	movl	%edi,%eax
	movl	-4(%ebp),%ebx
	movl	%ebx,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%ebx,%eax
	addl	%esi,%eax
	movl	-8(%ebp),%edx
	subl	%ebx,%edx
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_varset_create_element
fpc_varset_create_element:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%ecx,%esi
	movl	%esi,%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	%ebx,%ecx
	movl	%ecx,%edx
	shrl	$3,%edx
	andl	$7,%ecx
	movzbl	(%esi,%edx),%eax
	movl	$1,%ebx
	shll	%cl,%ebx
	orl	%ebx,%eax
	movb	%al,(%esi,%edx)
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_varset_set
fpc_varset_set:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	%edx,%ebx
	movl	%ecx,%esi
	movl	8(%ebp),%ecx
	movl	%ebx,%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%esi,%ecx
	movl	%ecx,%edx
	shrl	$3,%edx
	andl	$7,%ecx
	movzbl	(%ebx,%edx),%eax
	movl	$1,%esi
	shll	%cl,%esi
	orl	%esi,%eax
	movb	%al,(%ebx,%edx)
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_varset_unset
fpc_varset_unset:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	%edx,%ebx
	movl	%ecx,%esi
	movl	8(%ebp),%ecx
	movl	%ebx,%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%esi,%ecx
	movl	%ecx,%edx
	shrl	$3,%edx
	andl	$7,%ecx
	movzbl	(%ebx,%edx),%eax
	movl	$1,%esi
	shll	%cl,%esi
	notl	%esi
	andl	%esi,%eax
	movb	%al,(%ebx,%edx)
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_varset_set_range
fpc_varset_set_range:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	12(%ebp),%ebx
	movl	8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-8(%ebp),%esi
	cmpl	%esi,%ebx
	jl	Lj1691
	decl	%esi
	.balign 4,0x90
Lj1692:
	incl	%esi
	movl	%esi,%ecx
	movl	%ecx,%edi
	shrl	$3,%edi
	andl	$7,%ecx
	movl	-4(%ebp),%edx
	movzbl	(%edx,%edi),%eax
	movl	$1,%edx
	shll	%cl,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movb	%al,(%edx,%edi)
	cmpl	%esi,%ebx
	jg	Lj1692
Lj1691:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_varset_add_sets
fpc_varset_add_sets:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,%esi
	movl	8(%ebp),%eax
	decl	%eax
	movl	%eax,%ecx
	movl	$0,%ebx
	cmpl	%ebx,%ecx
	jl	Lj1698
	decl	%ebx
	.balign 4,0x90
Lj1699:
	incl	%ebx
	movl	%ebx,%eax
	movl	-4(%ebp),%edi
	movb	(%edi,%eax,1),%dl
	movl	-8(%ebp),%edi
	movb	(%edi,%eax,1),%al
	orb	%al,%dl
	movb	%dl,(%esi,%ebx,1)
	cmpl	%ebx,%ecx
	jg	Lj1699
Lj1698:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_varset_mul_sets
fpc_varset_mul_sets:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,%esi
	movl	8(%ebp),%eax
	decl	%eax
	movl	%eax,%ecx
	movl	$0,%ebx
	cmpl	%ebx,%ecx
	jl	Lj1707
	decl	%ebx
	.balign 4,0x90
Lj1708:
	incl	%ebx
	movl	%ebx,%eax
	movl	-4(%ebp),%edi
	movb	(%edi,%eax,1),%dl
	movl	-8(%ebp),%edi
	movb	(%edi,%eax,1),%al
	andb	%al,%dl
	movb	%dl,(%esi,%ebx,1)
	cmpl	%ebx,%ecx
	jg	Lj1708
Lj1707:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
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
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,%esi
	movl	8(%ebp),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,%edi
	cmpl	%edi,%ebx
	jl	Lj1716
	decl	%edi
	.balign 4,0x90
Lj1717:
	incl	%edi
	movl	%edi,%eax
	movl	-8(%ebp),%ecx
	movb	(%ecx,%eax,1),%dl
	notb	%dl
	movl	-4(%ebp),%ecx
	movb	(%ecx,%eax,1),%al
	andb	%dl,%al
	movb	%al,(%esi,%edi,1)
	cmpl	%edi,%ebx
	jg	Lj1717
Lj1716:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_varset_symdif_sets
fpc_varset_symdif_sets:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,%esi
	movl	8(%ebp),%eax
	decl	%eax
	movl	%eax,%ecx
	movl	$0,%ebx
	cmpl	%ebx,%ecx
	jl	Lj1725
	decl	%ebx
	.balign 4,0x90
Lj1726:
	incl	%ebx
	movl	%ebx,%eax
	movl	-4(%ebp),%edi
	movb	(%edi,%eax,1),%dl
	movl	-8(%ebp),%edi
	movb	(%edi,%eax,1),%al
	xorb	%al,%dl
	movb	%dl,(%esi,%ebx,1)
	cmpl	%ebx,%ecx
	jg	Lj1726
Lj1725:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_varset_comp_sets
fpc_varset_comp_sets:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,%ebx
	movl	%ecx,%eax
	movb	$0,(%esp)
	decl	%eax
	movl	%eax,%ecx
	movl	$0,%edi
	cmpl	%edi,%ecx
	jl	Lj1736
	decl	%edi
	.balign 4,0x90
Lj1737:
	incl	%edi
	movl	%edi,%esi
	movb	(%ebx,%esi,1),%al
	cmpb	(%edx,%esi,1),%al
	jne	Lj1731
	cmpl	%edi,%ecx
	jg	Lj1737
Lj1736:
	movb	$1,(%esp)
Lj1731:
	movb	(%esp),%al
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_varset_contains_sets
fpc_varset_contains_sets:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,%eax
	movb	$0,(%esp)
	decl	%eax
	movl	%eax,%edi
	movl	$0,%ecx
	cmpl	%ecx,%edi
	jl	Lj1749
	decl	%ecx
	.balign 4,0x90
Lj1750:
	incl	%ecx
	movl	%ecx,%edx
	movb	(%esi,%edx,1),%al
	notb	%al
	movb	(%ebx,%edx,1),%dl
	andb	%al,%dl
	movzbl	%dl,%eax
	testl	%eax,%eax
	jne	Lj1744
	cmpl	%ecx,%edi
	jg	Lj1750
Lj1749:
	movb	$1,(%esp)
Lj1744:
	movb	(%esp),%al
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_HI$BYTE$$BYTE
SYSTEM_HI$BYTE$$BYTE:
	andl	$255,%eax
	shrl	$4,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LO$BYTE$$BYTE
SYSTEM_LO$BYTE$$BYTE:
	andb	$15,%al
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SWAP$WORD$$WORD
SYSTEM_SWAP$WORD$$WORD:
	movw	%ax,%dx
	andl	$65535,%edx
	movl	%edx,%eax
	shrl	$8,%eax
	shll	$8,%edx
	orl	%edx,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SWAP$SMALLINT$$SMALLINT
SYSTEM_SWAP$SMALLINT$$SMALLINT:
	movw	%ax,%dx
	andl	$65535,%edx
	movl	%edx,%eax
	shrl	$8,%eax
	shll	$8,%edx
	orl	%edx,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SWAP$LONGINT$$LONGINT
SYSTEM_SWAP$LONGINT$$LONGINT:
	movl	%eax,%edx
	movl	%edx,%eax
	andl	$65535,%eax
	shll	$16,%eax
	shrl	$16,%edx
	addl	%edx,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SWAP$LONGWORD$$LONGWORD
SYSTEM_SWAP$LONGWORD$$LONGWORD:
	movl	%eax,%edx
	movl	%edx,%eax
	andl	$65535,%eax
	shll	$16,%eax
	shrl	$16,%edx
	addl	%edx,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SWAP$QWORD$$QWORD
SYSTEM_SWAP$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	movl	%ecx,%edx
	movl	%ebx,%eax
	movl	$0,%eax
	movl	$0,%eax
	movl	$0,%ecx
	addl	%ebx,%eax
	adcl	%ecx,%edx
	movl	-4(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_SWAP$INT64$$INT64
SYSTEM_SWAP$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	movl	%ecx,%edx
	movl	%ebx,%eax
	movl	$0,%eax
	movl	$0,%eax
	movl	$0,%ecx
	addl	%ebx,%eax
	adcl	%ecx,%edx
	movl	-4(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_assign$REAL48$$DOUBLE
SYSTEM_assign$REAL48$$DOUBLE:
	subl	$18,%esp
	movl	%eax,(%esp)
	movl	(%esp),%edx
	movl	(%edx),%eax
	movl	%eax,12(%esp)
	movw	4(%edx),%ax
	movw	%ax,16(%esp)
	leal	12(%esp),%eax
	call	SYSTEM_REAL2DOUBLE$REAL48$$DOUBLE
	fstpl	4(%esp)
	fldl	4(%esp)
	addl	$18,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$REAL48$$EXTENDED
SYSTEM_assign$REAL48$$EXTENDED:
	subl	$22,%esp
	movl	%eax,(%esp)
	movl	(%esp),%edx
	movl	(%edx),%eax
	movl	%eax,16(%esp)
	movw	4(%edx),%ax
	movw	%ax,20(%esp)
	leal	16(%esp),%eax
	call	SYSTEM_REAL2DOUBLE$REAL48$$DOUBLE
	fstpt	4(%esp)
	fldt	4(%esp)
	addl	$22,%esp
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
	subl	$12,%esp
	movw	$207,%ax
	call	SYSTEM_RUNERROR$WORD
	fldz
	fstpt	(%esp)
	fldt	(%esp)
	addl	$12,%esp
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
	subl	$24,%esp
	fldz
	fldt	20(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jne	Lj1890
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj1892
	fldz
	fstpt	-12(%ebp)
	jmp	Lj1898
Lj1892:
	movl	$207,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj1898
Lj1890:
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jne	Lj1900
	fld1
	fstpt	-12(%ebp)
	jmp	Lj1903
Lj1900:
	fldz
	fldt	20(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jnb	Lj1905
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	fpc_frac_real
	fldz
	fcompp
	fnstsw	%ax
	sahf
	je	Lj1905
	movl	$207,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj1911
Lj1905:
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
	jnb	Lj1917
	fnstcw	-16(%ebp)
	fnstcw	-14(%ebp)
	orw	$3840,-16(%ebp)
	fldt	8(%ebp)
	fldcw	-16(%ebp)
	fistpq	-24(%ebp)
	fldcw	-14(%ebp)
	fwait
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	andl	$1,%eax
	testb	%al,%al
	je	Lj1917
	fldt	-12(%ebp)
	fchs
	fstpt	-12(%ebp)
Lj1917:
Lj1911:
Lj1903:
Lj1898:
	fldt	-12(%ebp)
	leave
	ret	$24

.text
	.balign 4,0x90
.globl	SYSTEM_FLOAT_RAISE$SHORTINT
SYSTEM_FLOAT_RAISE$SHORTINT:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movb	%al,%bl
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1931
	movl	U_SYSTEM_SOFTFLOAT_EXCEPTION_FLAGS,%eax
	call	*%edx
	movl	%eax,%esi
	jmp	Lj1932
Lj1931:
	movl	$U_SYSTEM_SOFTFLOAT_EXCEPTION_FLAGS+4,%esi
Lj1932:
	movzbl	(%esi),%eax
	movsbl	%bl,%edx
	orl	%edx,%eax
	movb	%al,(%esi)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1937
	movl	U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK,%eax
	call	*%edx
	jmp	Lj1938
Lj1937:
	movl	$U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK+4,%eax
Lj1938:
	movb	(%eax),%al
	notb	%al
	movb	(%esi),%dl
	andb	%dl,%al
	movb	%al,%bl
	andl	$1,%eax
	je	Lj1940
	movl	$207,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj1943
Lj1940:
	movb	%bl,%al
	andl	$4,%eax
	je	Lj1945
	movl	$200,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj1948
Lj1945:
	movb	%bl,%al
	andl	$8,%eax
	je	Lj1950
	movl	$205,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj1953
Lj1950:
	movb	%bl,%al
	andl	$16,%eax
	je	Lj1955
	movl	$206,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj1958
Lj1955:
	movb	%bl,%al
	andl	$32,%eax
	je	Lj1960
	movl	$207,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj1960:
Lj1958:
Lj1953:
Lj1948:
Lj1943:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_FREXP$REAL$SMALLINT$$REAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,%edx
	movw	$0,(%edx)
	fldl	8(%ebp)
	fabs
	fldt	_$SYSTEM$_Ld2
	fcompp
	fnstsw	%ax
	sahf
	jna	Lj1976
	jmp	Lj1970
	.balign 4,0x90
Lj1969:
	fldl	_$SYSTEM$_Ld3
	fmull	8(%ebp)
	fstpl	8(%ebp)
	decw	(%edx)
Lj1970:
	fldl	8(%ebp)
	fabs
	fldt	_$SYSTEM$_Ld2
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1969
Lj1971:
	jmp	Lj1974
	.balign 4,0x90
Lj1975:
	fldl	_$SYSTEM$_Ld3
	fdivrl	8(%ebp)
	fstpl	8(%ebp)
	incw	(%edx)
Lj1976:
	fldl	8(%ebp)
	fabs
	fld1
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1975
Lj1977:
Lj1974:
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_LDEXP$REAL$SMALLINT$$REAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	fld1
	fstpl	-16(%ebp)
	testw	%ax,%ax
	jng	Lj1995
	jmp	Lj1989
	.balign 4,0x90
Lj1988:
	fldl	_$SYSTEM$_Ld3
	fmull	-16(%ebp)
	fstpl	-16(%ebp)
	decw	%ax
Lj1989:
	testw	%ax,%ax
	jg	Lj1988
Lj1990:
	jmp	Lj1993
	.balign 4,0x90
Lj1994:
	fldl	_$SYSTEM$_Ld3
	fdivrl	-16(%ebp)
	fstpl	-16(%ebp)
	incw	%ax
Lj1995:
	testw	%ax,%ax
	jl	Lj1994
Lj1996:
Lj1993:
	fldl	-16(%ebp)
	fmull	8(%ebp)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_POLEVL$REAL$TABCOEF$SMALLINT$$REAL:
	subl	$24,%esp
	movl	%ebx,16(%esp)
	movl	%esi,20(%esp)
	movl	(%edx),%ebx
	movl	%ebx,8(%esp)
	movl	4(%edx),%ebx
	movl	%ebx,12(%esp)
	movw	$1,%si
	cmpw	%si,%cx
	jl	Lj2006
	decw	%si
	.balign 4,0x90
Lj2007:
	incw	%si
	fldl	(%eax)
	fmull	8(%esp)
	movw	%si,%bx
	andl	$65535,%ebx
	faddl	(%edx,%ebx,8)
	fstpl	8(%esp)
	cmpw	%si,%cx
	jg	Lj2007
Lj2006:
	movl	8(%esp),%eax
	movl	%eax,(%esp)
	movl	12(%esp),%eax
	movl	%eax,4(%esp)
	fldl	(%esp)
	movl	16(%esp),%ebx
	movl	20(%esp),%esi
	addl	$24,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_P1EVL$REAL$TABCOEF$SMALLINT$$REAL:
	subl	$24,%esp
	movl	%ebx,16(%esp)
	movl	%esi,20(%esp)
	fldl	(%edx)
	faddl	(%eax)
	fstpl	8(%esp)
	movswl	%cx,%ecx
	decl	%ecx
	movw	$1,%si
	cmpw	%si,%cx
	jl	Lj2017
	decw	%si
	.balign 4,0x90
Lj2018:
	incw	%si
	fldl	(%eax)
	fmull	8(%esp)
	movw	%si,%bx
	andl	$65535,%ebx
	faddl	(%edx,%ebx,8)
	fstpl	8(%esp)
	cmpw	%si,%cx
	jg	Lj2018
Lj2017:
	movl	8(%esp),%eax
	movl	%eax,(%esp)
	movl	12(%esp),%eax
	movl	%eax,4(%esp)
	fldl	(%esp)
	movl	16(%esp),%ebx
	movl	20(%esp),%esi
	addl	$24,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_REAL2DOUBLE$REAL48$$DOUBLE
SYSTEM_REAL2DOUBLE$REAL48$$DOUBLE:
	subl	$26,%esp
	movl	%eax,(%esp)
	movl	(%eax),%edx
	movl	%edx,20(%esp)
	movw	4(%eax),%ax
	movw	%ax,24(%esp)
	movzbl	20(%esp),%eax
	testl	%eax,%eax
	jne	Lj2026
	fldz
	fstpl	4(%esp)
	jmp	Lj2023
Lj2026:
	movb	$0,12(%esp)
	movzbl	21(%esp),%eax
	shll	$5,%eax
	movb	%al,13(%esp)
	movzbl	21(%esp),%eax
	shrl	$3,%eax
	movzbl	22(%esp),%edx
	shll	$5,%edx
	orl	%edx,%eax
	movb	%al,14(%esp)
	movzbl	22(%esp),%eax
	shrl	$3,%eax
	movzbl	23(%esp),%edx
	shll	$5,%edx
	orl	%edx,%eax
	movb	%al,15(%esp)
	movzbl	23(%esp),%eax
	shrl	$3,%eax
	movzbl	24(%esp),%edx
	shll	$5,%edx
	orl	%edx,%eax
	movb	%al,16(%esp)
	movb	25(%esp),%al
	andl	$127,%eax
	shll	$5,%eax
	movzbl	24(%esp),%edx
	shrl	$3,%edx
	orl	%edx,%eax
	movb	%al,17(%esp)
	movb	25(%esp),%al
	andl	$127,%eax
	shrl	$3,%eax
	movb	%al,18(%esp)
	movzbw	20(%esp),%ax
	andl	$65535,%eax
	addl	$894,%eax
	movw	%ax,%dx
	andl	$15,%edx
	shll	$4,%edx
	movzbl	18(%esp),%ecx
	orl	%ecx,%edx
	movb	%dl,18(%esp)
	andl	$65535,%eax
	shrl	$4,%eax
	movb	%al,19(%esp)
	movb	25(%esp),%al
	andb	$128,%al
	movb	19(%esp),%dl
	orb	%dl,%al
	movb	%al,19(%esp)
	movl	12(%esp),%eax
	movl	%eax,4(%esp)
	movl	16(%esp),%eax
	movl	%eax,8(%esp)
Lj2023:
	fldl	4(%esp)
	addl	$26,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED
SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	testl	%eax,%eax
	jnl	Lj2056
	movl	%eax,%edx
	negl	%edx
	movl	%edx,%eax
	andl	$31,%edx
	imull	$10,%edx
	fldt	8(%ebp)
	fldt	TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_NEGPOW32(%edx)
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
	movl	%eax,%edx
	shrl	$5,%edx
	movl	%edx,%eax
	testl	%edx,%edx
	je	Lj2078
	movl	%eax,%edx
	andl	$15,%edx
	imull	$10,%edx
	fldt	-12(%ebp)
	fldt	TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_NEGPOW512(%edx)
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
	movl	%eax,%edx
	shrl	$4,%edx
	movl	%edx,%eax
	testl	%edx,%edx
	je	Lj2078
	cmpl	$9,%eax
	jnle	Lj2072
	imull	$10,%eax,%edx
	fldt	-12(%ebp)
	fldt	TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_NEGPOW4096(%edx)
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
	jmp	Lj2078
Lj2072:
	movl	_$SYSTEM$_Ld4,%edx
	movl	%edx,-12(%ebp)
	movl	_$SYSTEM$_Ld4+4,%edx
	movl	%edx,-8(%ebp)
	movw	_$SYSTEM$_Ld4+8,%dx
	movw	%dx,-4(%ebp)
	jmp	Lj2078
Lj2056:
	movl	%eax,%edx
	andl	$31,%edx
	imull	$10,%edx
	fldt	8(%ebp)
	fldt	TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_POW32(%edx)
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
	movl	%eax,%edx
	shrl	$5,%edx
	movl	%edx,%eax
	testl	%edx,%edx
	je	Lj2084
	movl	%eax,%edx
	andl	$15,%edx
	imull	$10,%edx
	fldt	-12(%ebp)
	fldt	TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_POW512(%edx)
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
	movl	%eax,%edx
	shrl	$4,%edx
	movl	%edx,%eax
	testl	%edx,%edx
	je	Lj2090
	cmpl	$9,%eax
	jnle	Lj2092
	imull	$10,%eax
	fldt	-12(%ebp)
	fldt	TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_POW4096(%eax)
	fmulp	%st,%st(1)
	fstpt	-12(%ebp)
	jmp	Lj2095
Lj2092:
	movl	_$SYSTEM$_Ld4,%eax
	movl	%eax,-12(%ebp)
	movl	_$SYSTEM$_Ld4+4,%eax
	movl	%eax,-8(%ebp)
	movw	_$SYSTEM$_Ld4+8,%ax
	movw	%ax,-4(%ebp)
Lj2095:
Lj2090:
Lj2084:
Lj2078:
	fldt	-12(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
SYSTEM_ALIGNTOPTR$POINTER$$POINTER:
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_setlength
fpc_shortstr_setlength:
.globl	FPC_SHORTSTR_SETLENGTH
FPC_SHORTSTR_SETLENGTH:
	cmpl	$255,%ecx
	jng	Lj2105
	movl	$255,%ecx
Lj2105:
	movb	%cl,(%eax)
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_copy
fpc_shortstr_copy:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	%edx,%esi
	movl	8(%ebp),%ebx
	testl	%ecx,%ecx
	jnl	Lj2113
	movl	$0,%ecx
Lj2113:
	cmpl	$1,%esi
	jng	Lj2117
	decl	%esi
	jmp	Lj2118
Lj2117:
	movl	$0,%esi
Lj2118:
	movzbl	(%eax),%edx
	cmpl	%esi,%edx
	jnl	Lj2122
	movl	$0,%ecx
	jmp	Lj2125
Lj2122:
	movzbl	(%eax),%edx
	subl	%esi,%edx
	cmpl	%ecx,%edx
	jnl	Lj2127
	movzbl	(%eax),%edx
	subl	%esi,%edx
	movl	%edx,%ecx
Lj2127:
Lj2125:
	movb	%cl,(%ebx)
	movl	%esi,%edx
	incl	%edx
	andl	$255,%edx
	leal	(%eax,%edx,1),%eax
	leal	1(%ebx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	8(%ebp),%esi
	testl	%ecx,%ecx
	jle	Lj2138
	movzbl	(%eax),%edx
	cmpl	%ecx,%edx
	jnge	Lj2143
	testl	%esi,%esi
	jng	Lj2143
	movzbl	(%eax),%edx
	subl	%ecx,%edx
	cmpl	%esi,%edx
	jnl	Lj2146
	movzbl	(%eax),%edx
	subl	%ecx,%edx
	incl	%edx
	movl	%edx,%esi
Lj2146:
	movzbl	(%eax),%edx
	subl	%esi,%edx
	movb	%dl,(%eax)
	movzbl	(%eax),%edx
	cmpl	%ecx,%edx
	jnge	Lj2152
	movzbl	(%eax),%edx
	subl	%ecx,%edx
	incl	%edx
	movl	%edx,%ebx
	movl	%esi,%edx
	addl	%ecx,%edx
	andl	$255,%edx
	leal	(%eax,%edx,1),%edx
	andl	$255,%ecx
	leal	(%eax,%ecx,1),%esi
	movl	%ebx,%ecx
	movl	%edx,%eax
	movl	%esi,%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj2152:
Lj2143:
Lj2138:
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_INSERT$SHORTSTRING$OPENSTRING$LONGINT
SYSTEM_INSERT$SHORTSTRING$OPENSTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,%edx
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	cmpl	$1,-8(%ebp)
	jnl	Lj2162
	movl	$1,-8(%ebp)
Lj2162:
	movl	-4(%ebp),%ecx
	movzbl	(%ecx),%eax
	cmpl	-8(%ebp),%eax
	jnl	Lj2166
	movl	-4(%ebp),%ecx
	movzbl	(%ecx),%eax
	incl	%eax
	movl	%eax,-8(%ebp)
	cmpl	%edx,%eax
	jg	Lj2159
Lj2166:
	movl	-4(%ebp),%ecx
	movzbl	(%ecx),%eax
	subl	-8(%ebp),%eax
	incl	%eax
	movl	%eax,%ecx
	movl	-12(%ebp),%ebx
	movzbl	(%ebx),%eax
	movl	%eax,%esi
	movl	-12(%ebp),%eax
	movzbl	(%eax),%ebx
	movl	-4(%ebp),%edi
	movzbl	(%edi),%eax
	addl	%eax,%ebx
	movl	%edx,%eax
	incl	%eax
	cmpl	%eax,%ebx
	jnge	Lj2176
	movl	-12(%ebp),%eax
	movzbl	(%eax),%ebx
	movl	-4(%ebp),%edi
	movzbl	(%edi),%eax
	addl	%eax,%ebx
	movl	%edx,%eax
	incl	%eax
	subl	%eax,%ebx
	incl	%ebx
	movl	%ebx,%edx
	cmpl	%ecx,%edx
	jng	Lj2180
	movl	%edx,%eax
	subl	%ecx,%eax
	subl	%eax,%esi
	movl	$0,%ecx
	jmp	Lj2183
Lj2180:
	subl	%edx,%ecx
Lj2183:
Lj2176:
	movl	%esi,%eax
	addl	-8(%ebp),%eax
	andl	$255,%eax
	movl	-4(%ebp),%ebx
	leal	(%ebx,%eax,1),%edx
	movb	-8(%ebp),%al
	andl	$255,%eax
	movl	-4(%ebp),%ebx
	leal	(%ebx,%eax,1),%eax
	movl	%ecx,%ebx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movb	-8(%ebp),%al
	andl	$255,%eax
	movl	-4(%ebp),%ecx
	leal	(%ecx,%eax,1),%edx
	movl	%esi,%ecx
	movl	-12(%ebp),%edi
	leal	1(%edi),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%esi,%eax
	addl	-8(%ebp),%eax
	addl	%ebx,%eax
	decl	%eax
	movb	%al,%dl
	movl	-4(%ebp),%eax
	movb	%dl,(%eax)
Lj2159:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT
SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,%esi
	movl	%ecx,%edx
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	cmpl	$1,-8(%ebp)
	jnl	Lj2201
	movl	$1,-8(%ebp)
Lj2201:
	movzbl	(%esi),%eax
	cmpl	-8(%ebp),%eax
	jnl	Lj2205
	movzbl	(%esi),%eax
	incl	%eax
	movl	%eax,-8(%ebp)
	cmpl	%edx,%eax
	jg	Lj2198
Lj2205:
	movzbl	(%esi),%eax
	subl	-8(%ebp),%eax
	incl	%eax
	movl	%eax,%ecx
	movzbl	(%esi),%eax
	incl	%eax
	incl	%edx
	cmpl	%edx,%eax
	jne	Lj2213
	testl	%ecx,%ecx
	jng	Lj2213
	decl	%ecx
Lj2213:
	movl	-8(%ebp),%eax
	incl	%eax
	andl	$255,%eax
	leal	(%esi,%eax,1),%edx
	movb	-8(%ebp),%al
	andl	$255,%eax
	leal	(%esi,%eax,1),%eax
	movl	%ecx,%ebx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movb	-8(%ebp),%al
	movzbl	%al,%edx
	movb	-4(%ebp),%al
	movb	%al,(%esi,%edx,1)
	movl	%ebx,%eax
	addl	-8(%ebp),%eax
	movb	%al,(%esi)
Lj2198:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT
SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT:
	subl	$24,%esp
	movl	%ebx,12(%esp)
	movl	%esi,16(%esp)
	movl	%edi,20(%esp)
	movl	%eax,(%esp)
	movl	$0,4(%esp)
	movl	(%esp),%eax
	movzbl	(%eax),%ecx
	testl	%ecx,%ecx
	jng	Lj2230
	movzbl	(%edx),%ecx
	movl	(%esp),%eax
	movzbl	(%eax),%ebx
	subl	%ebx,%ecx
	movl	%ecx,8(%esp)
	movl	$0,%ebx
	leal	1(%edx),%eax
	movl	%eax,%esi
	jmp	Lj2238
	.balign 4,0x90
Lj2237:
	incl	%ebx
	movb	(%esi),%al
	movl	(%esp),%edx
	cmpb	1(%edx),%al
	jne	Lj2241
	movl	(%esp),%eax
	movzbl	(%eax),%ecx
	movl	%esi,%edx
	movl	(%esp),%edi
	leal	1(%edi),%eax
	call	SYSTEM_COMPARECHAR$formal$formal$LONGINT$$LONGINT
	testl	%eax,%eax
	jne	Lj2241
	movl	%ebx,4(%esp)
	jmp	Lj2225
Lj2241:
	incl	%esi
Lj2238:
	cmpl	8(%esp),%ebx
	jle	Lj2237
Lj2239:
Lj2230:
Lj2225:
	movl	4(%esp),%eax
	movl	12(%esp),%ebx
	movl	16(%esp),%esi
	movl	20(%esp),%edi
	addl	$24,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	leal	1(%edx),%ebx
	movzbl	(%edx),%esi
	movl	$1,%edi
	cmpl	%edi,%esi
	jl	Lj2256
	decl	%edi
	.balign 4,0x90
Lj2257:
	incl	%edi
	movb	(%ebx),%cl
	cmpb	%al,%cl
	jne	Lj2259
	movl	%edi,%edx
	jmp	Lj2251
Lj2259:
	incl	%ebx
	cmpl	%edi,%esi
	jg	Lj2257
Lj2256:
	movl	$0,%edx
Lj2251:
	movl	%edx,%eax
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_char_copy
fpc_char_copy:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	8(%ebp),%ebx
	cmpl	$1,%edx
	jne	Lj2267
	testl	%ecx,%ecx
	jng	Lj2267
	movb	$1,(%ebx)
	movb	%al,1(%ebx)
	jmp	Lj2271
Lj2267:
	movb	$0,(%ebx)
Lj2271:
	movl	-4(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_POS$SHORTSTRING$CHAR$$LONGINT
SYSTEM_POS$SHORTSTRING$CHAR$$LONGINT:
	movzbl	(%eax),%ecx
	cmpl	$1,%ecx
	jne	Lj2277
	movb	1(%eax),%al
	cmpb	%dl,%al
	jne	Lj2277
	movl	$1,%eax
	jmp	Lj2281
Lj2277:
	movl	$0,%eax
Lj2281:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UPCASE$CHAR$$CHAR
SYSTEM_UPCASE$CHAR$$CHAR:
	movzbl	%al,%edx
	subl	$97,%edx
	cmpl	$26,%edx
Lj2288:
	jnc	Lj2287
	movzbl	%al,%edx
	subl	$32,%edx
	jmp	Lj2291
Lj2287:
	movb	%al,%dl
Lj2291:
	movb	%dl,%al
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING
SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,%edi
	movl	%edx,%esi
	movb	(%edi),%al
	movb	%al,(%esi)
	movzbl	(%edi),%eax
	movl	%eax,%ebx
	movl	$1,(%esp)
	cmpl	(%esp),%ebx
	jl	Lj2299
	decl	(%esp)
	.balign 4,0x90
Lj2300:
	incl	(%esp)
	movb	(%esp),%al
	andl	$255,%eax
	movb	(%edi,%eax,1),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	movb	(%esp),%dl
	andl	$255,%edx
	movb	%al,(%esi,%edx,1)
	cmpl	(%esp),%ebx
	jg	Lj2300
Lj2299:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LOWERCASE$CHAR$$CHAR
SYSTEM_LOWERCASE$CHAR$$CHAR:
	movzbl	%al,%edx
	subl	$65,%edx
	cmpl	$26,%edx
Lj2309:
	jnc	Lj2308
	movzbl	%al,%edx
	addl	$32,%edx
	jmp	Lj2312
Lj2308:
	movb	%al,%dl
Lj2312:
	movb	%dl,%al
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LOWERCASE$SHORTSTRING$$SHORTSTRING
SYSTEM_LOWERCASE$SHORTSTRING$$SHORTSTRING:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,%edi
	movl	%edx,%esi
	movb	(%edi),%al
	movb	%al,(%esi)
	movzbl	(%edi),%eax
	movl	%eax,%ebx
	movl	$1,(%esp)
	cmpl	(%esp),%ebx
	jl	Lj2320
	decl	(%esp)
	.balign 4,0x90
Lj2321:
	incl	(%esp)
	movb	(%esp),%al
	andl	$255,%eax
	movb	(%edi,%eax,1),%al
	call	SYSTEM_LOWERCASE$CHAR$$CHAR
	movb	(%esp),%dl
	andl	$255,%edx
	movb	%al,(%esi,%edx,1)
	cmpl	(%esp),%ebx
	jg	Lj2321
Lj2320:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_HEXSTR$LONGINT$BYTE$$SHORTSTRING
SYSTEM_HEXSTR$LONGINT$BYTE$$SHORTSTRING:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,%ebx
	movb	%dl,(%esp)
	movb	(%esp),%al
	movb	%al,(%ecx)
	movzbl	(%esp),%eax
	movl	%eax,%edx
	cmpl	$1,%edx
	jl	Lj2331
	incl	%edx
	.balign 4,0x90
Lj2332:
	decl	%edx
	movl	%ebx,%eax
	andl	$15,%eax
	movl	%eax,%edi
	movb	%dl,%al
	movzbl	%al,%esi
	movb	TC_SYSTEM_HEXTBL(%edi),%al
	movb	%al,(%ecx,%esi,1)
	movl	%ebx,%eax
	shrl	$4,%eax
	movl	%eax,%ebx
	cmpl	$1,%edx
	jg	Lj2332
Lj2331:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_OCTSTR$LONGINT$BYTE$$SHORTSTRING
SYSTEM_OCTSTR$LONGINT$BYTE$$SHORTSTRING:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,%ebx
	movb	%dl,(%esp)
	movb	(%esp),%al
	movb	%al,(%ecx)
	movzbl	(%esp),%eax
	movl	%eax,%edx
	cmpl	$1,%edx
	jl	Lj2342
	incl	%edx
	.balign 4,0x90
Lj2343:
	decl	%edx
	movl	%ebx,%eax
	andl	$7,%eax
	movl	%eax,%edi
	movb	%dl,%al
	movzbl	%al,%esi
	movb	TC_SYSTEM_HEXTBL(%edi),%al
	movb	%al,(%ecx,%esi,1)
	movl	%ebx,%eax
	shrl	$3,%eax
	movl	%eax,%ebx
	cmpl	$1,%edx
	jg	Lj2343
Lj2342:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BINSTR$LONGINT$BYTE$$SHORTSTRING
SYSTEM_BINSTR$LONGINT$BYTE$$SHORTSTRING:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%eax,%esi
	movl	%ecx,%ebx
	movb	%dl,(%esp)
	movb	(%esp),%al
	movb	%al,(%ebx)
	movzbl	(%esp),%eax
	movl	%eax,%ecx
	cmpl	$1,%ecx
	jl	Lj2353
	incl	%ecx
	.balign 4,0x90
Lj2354:
	decl	%ecx
	movl	%esi,%eax
	andl	$1,%eax
	addl	$48,%eax
	movb	%cl,%dl
	andl	$255,%edx
	movb	%al,(%ebx,%edx,1)
	movl	%esi,%eax
	shrl	$1,%eax
	movl	%eax,%esi
	cmpl	$1,%ecx
	jg	Lj2354
Lj2353:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_HEXSTR$INT64$BYTE$$SHORTSTRING
SYSTEM_HEXSTR$INT64$BYTE$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	8(%ebp),%ecx
	movl	%ecx,-4(%ebp)
	movl	12(%ebp),%ebx
	movl	%edx,%ecx
	movb	%al,-8(%ebp)
	movb	%al,(%ecx)
	movzbl	-8(%ebp),%eax
	movl	%eax,%edx
	cmpl	$1,%edx
	jl	Lj2364
	incl	%edx
	.balign 4,0x90
Lj2365:
	decl	%edx
	movl	-4(%ebp),%eax
	movl	%ebx,%esi
	andl	$15,%eax
	movl	$0,%esi
	movl	%eax,%edi
	movb	%dl,%al
	movzbl	%al,%esi
	movb	TC_SYSTEM_HEXTBL(%edi),%al
	movb	%al,(%ecx,%esi,1)
	movl	-4(%ebp),%esi
	movl	%ebx,%eax
	shrdl	$4,%eax,%esi
	shrl	$4,%eax
	movl	%esi,-4(%ebp)
	movl	%eax,%ebx
	cmpl	$1,%edx
	jg	Lj2365
Lj2364:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_OCTSTR$INT64$BYTE$$SHORTSTRING
SYSTEM_OCTSTR$INT64$BYTE$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	8(%ebp),%ecx
	movl	%ecx,-4(%ebp)
	movl	12(%ebp),%ebx
	movl	%edx,%ecx
	movb	%al,-8(%ebp)
	movb	%al,(%ecx)
	movzbl	-8(%ebp),%eax
	movl	%eax,%edx
	cmpl	$1,%edx
	jl	Lj2375
	incl	%edx
	.balign 4,0x90
Lj2376:
	decl	%edx
	movl	-4(%ebp),%eax
	movl	%ebx,%esi
	andl	$7,%eax
	movl	$0,%esi
	movl	%eax,%edi
	movb	%dl,%al
	movzbl	%al,%esi
	movb	TC_SYSTEM_HEXTBL(%edi),%al
	movb	%al,(%ecx,%esi,1)
	movl	-4(%ebp),%esi
	movl	%ebx,%eax
	shrdl	$3,%eax,%esi
	shrl	$3,%eax
	movl	%esi,-4(%ebp)
	movl	%eax,%ebx
	cmpl	$1,%edx
	jg	Lj2376
Lj2375:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_BINSTR$INT64$BYTE$$SHORTSTRING
SYSTEM_BINSTR$INT64$BYTE$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	%edx,%ebx
	movb	%al,-4(%ebp)
	movb	%al,(%ebx)
	movzbl	-4(%ebp),%eax
	movl	%eax,%ecx
	cmpl	$1,%ecx
	jl	Lj2386
	incl	%ecx
	.balign 4,0x90
Lj2387:
	decl	%ecx
	movl	%edi,%eax
	movl	%esi,%edx
	andl	$1,%eax
	movl	$0,%edx
	addl	$48,%eax
	adcl	$0,%edx
	movb	%cl,%dl
	andl	$255,%edx
	movb	%al,(%ebx,%edx,1)
	movl	%edi,%eax
	movl	%esi,%edx
	shrdl	$1,%edx,%eax
	shrl	$1,%edx
	movl	%eax,%edi
	movl	%edx,%esi
	cmpl	$1,%ecx
	jg	Lj2387
Lj2386:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_HEXSTR$QWORD$BYTE$$SHORTSTRING
SYSTEM_HEXSTR$QWORD$BYTE$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	pushl	%ebx
	pushl	%ecx
	call	SYSTEM_HEXSTR$INT64$BYTE$$SHORTSTRING
	movl	-4(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_OCTSTR$QWORD$BYTE$$SHORTSTRING
SYSTEM_OCTSTR$QWORD$BYTE$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	pushl	%ebx
	pushl	%ecx
	call	SYSTEM_OCTSTR$INT64$BYTE$$SHORTSTRING
	movl	-4(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_BINSTR$QWORD$BYTE$$SHORTSTRING
SYSTEM_BINSTR$QWORD$BYTE$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	8(%ebp),%ecx
	movl	12(%ebp),%ebx
	pushl	%ebx
	pushl	%ecx
	call	SYSTEM_BINSTR$INT64$BYTE$$SHORTSTRING
	movl	-4(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_HEXSTR$POINTER$$SHORTSTRING
SYSTEM_HEXSTR$POINTER$$SHORTSTRING:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movb	$8,(%esi)
	movl	$8,%ecx
	incl	%ecx
	.balign 4,0x90
Lj2424:
	decl	%ecx
	movl	%ebx,%edx
	andl	$15,%edx
	movb	%cl,%al
	andl	$255,%eax
	movb	TC_SYSTEM_HEXTBL(%edx),%dl
	movb	%dl,(%esi,%eax,1)
	movl	%ebx,%eax
	shrl	$4,%eax
	movl	%eax,%ebx
	cmpl	$1,%ecx
	jg	Lj2424
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SPACE$BYTE$$SHORTSTRING
SYSTEM_SPACE$BYTE$$SHORTSTRING:
	movl	%edx,%ecx
	movb	%al,%dl
	movb	%dl,(%ecx)
	andl	$255,%edx
	leal	1(%ecx),%eax
	movb	$32,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_sint
fpc_shortstr_sint:
.globl	FPC_SHORTSTR_SINT
FPC_SHORTSTR_SINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$528,%esp
	movl	%ebx,-528(%ebp)
	movl	%esi,-524(%ebp)
	movl	%edi,-520(%ebp)
	movl	%eax,%esi
	movl	%edx,%ebx
	movl	%ecx,-516(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,%edi
	movl	%edi,%ecx
	movl	-516(%ebp),%eax
	movl	%esi,%esi
	movl	%eax,%edx
	movl	%esi,%eax
	call	SYSTEM_INT_STR$LONGINT$OPENSTRING
	movl	-516(%ebp),%eax
	movzbl	(%eax),%edx
	cmpl	%ebx,%edx
	jnl	Lj2448
	pushl	-516(%ebp)
	movl	-516(%ebp),%edx
	movzbl	(%edx),%eax
	movl	%ebx,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-512(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-512(%ebp),%ecx
	leal	-256(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-256(%ebp),%ecx
	movl	%edi,%edx
	movl	-516(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj2448:
	movl	-528(%ebp),%ebx
	movl	-524(%ebp),%esi
	movl	-520(%ebp),%edi
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
	subl	$528,%esp
	movl	%ebx,-528(%ebp)
	movl	%esi,-524(%ebp)
	movl	%edi,-520(%ebp)
	movl	%eax,%esi
	movl	%edx,%ebx
	movl	%ecx,-516(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,%edi
	movl	%edi,%ecx
	movl	-516(%ebp),%eax
	movl	%esi,%esi
	movl	%eax,%edx
	movl	%esi,%eax
	call	SYSTEM_INT_STR$LONGWORD$OPENSTRING
	movl	-516(%ebp),%eax
	movzbl	(%eax),%edx
	cmpl	%ebx,%edx
	jnl	Lj2476
	pushl	-516(%ebp)
	movl	-516(%ebp),%edx
	movzbl	(%edx),%eax
	movl	%ebx,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-512(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-512(%ebp),%ecx
	leal	-256(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-256(%ebp),%ecx
	movl	%edi,%edx
	movl	-516(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj2476:
	movl	-528(%ebp),%ebx
	movl	-524(%ebp),%esi
	movl	-520(%ebp),%edi
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
	subl	$528,%esp
	movl	%ebx,-528(%ebp)
	movl	%esi,-524(%ebp)
	movl	%edi,-520(%ebp)
	movl	8(%ebp),%edi
	movl	12(%ebp),%ebx
	movl	%eax,%esi
	movl	%edx,-516(%ebp)
	movl	%edi,%edx
	movl	%ebx,%eax
	pushl	%eax
	pushl	%edx
	movl	%ecx,%ebx
	movl	%ebx,%edx
	movl	-516(%ebp),%eax
	call	SYSTEM_INT_STR$QWORD$OPENSTRING
	movl	-516(%ebp),%eax
	movzbl	(%eax),%edx
	cmpl	%esi,%edx
	jnl	Lj2504
	pushl	-516(%ebp)
	movl	-516(%ebp),%edx
	movzbl	(%edx),%eax
	movl	%esi,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-512(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-512(%ebp),%ecx
	leal	-256(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-256(%ebp),%ecx
	movl	%ebx,%edx
	movl	-516(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj2504:
	movl	-528(%ebp),%ebx
	movl	-524(%ebp),%esi
	movl	-520(%ebp),%edi
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
	subl	$528,%esp
	movl	%ebx,-528(%ebp)
	movl	%esi,-524(%ebp)
	movl	%edi,-520(%ebp)
	movl	8(%ebp),%edi
	movl	12(%ebp),%ebx
	movl	%eax,%esi
	movl	%edx,-516(%ebp)
	movl	%edi,%edx
	movl	%ebx,%eax
	pushl	%eax
	pushl	%edx
	movl	%ecx,%ebx
	movl	%ebx,%edx
	movl	-516(%ebp),%eax
	call	SYSTEM_INT_STR$INT64$OPENSTRING
	movl	-516(%ebp),%eax
	movzbl	(%eax),%edx
	cmpl	%esi,%edx
	jnl	Lj2532
	pushl	-516(%ebp)
	movl	-516(%ebp),%edx
	movzbl	(%edx),%eax
	movl	%esi,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-512(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-512(%ebp),%ecx
	leal	-256(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-256(%ebp),%ecx
	movl	%ebx,%edx
	movl	-516(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj2532:
	movl	-528(%ebp),%ebx
	movl	-524(%ebp),%esi
	movl	-520(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_STR_REAL$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$880,%esp
	movl	%ebx,-880(%ebp)
	movl	%esi,-876(%ebp)
	movl	%edi,-872(%ebp)
	movl	%eax,-860(%ebp)
	movl	%edx,-856(%ebp)
	movl	%ecx,-844(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-868(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-864(%ebp)
	movl	-844(%ebp),%eax
	testl	%eax,%eax
	je	Lj2559
	decl	%eax
	je	Lj2560
	decl	%eax
	jb	Lj2558
	subl	$1,%eax
	jbe	Lj2561
	decl	%eax
	je	Lj2562
	decl	%eax
	je	Lj2563
	decl	%eax
	je	Lj2564
	jmp	Lj2558
Lj2559:
	movl	$16,%esi
	movl	$8,%ebx
	movl	$4,-848(%ebp)
	movl	_$SYSTEM$_Ld5,%eax
	movl	%eax,-12(%ebp)
	movl	_$SYSTEM$_Ld5+4,%eax
	movl	%eax,-8(%ebp)
	movw	_$SYSTEM$_Ld5+8,%ax
	movw	%ax,-4(%ebp)
	jmp	Lj2557
Lj2560:
	movl	$22,%esi
	movl	_$SYSTEM$_Ld6,%eax
	movl	%eax,-12(%ebp)
	movl	_$SYSTEM$_Ld6+4,%eax
	movl	%eax,-8(%ebp)
	movw	_$SYSTEM$_Ld6+8,%ax
	movw	%ax,-4(%ebp)
	movl	$9,%ebx
	movl	$5,-848(%ebp)
	jmp	Lj2557
Lj2561:
	movl	$25,%esi
	movl	$10,%ebx
	movl	$6,-848(%ebp)
	movl	_$SYSTEM$_Ld7,%eax
	movl	%eax,-12(%ebp)
	movl	_$SYSTEM$_Ld7+4,%eax
	movl	%eax,-8(%ebp)
	movw	_$SYSTEM$_Ld7+8,%ax
	movw	%ax,-4(%ebp)
	jmp	Lj2557
Lj2562:
	movl	$23,%esi
	movl	$10,%ebx
	movl	$6,-848(%ebp)
	movl	_$SYSTEM$_Ld6,%eax
	movl	%eax,-12(%ebp)
	movl	_$SYSTEM$_Ld6+4,%eax
	movl	%eax,-8(%ebp)
	movw	_$SYSTEM$_Ld6+8,%ax
	movw	%ax,-4(%ebp)
	jmp	Lj2557
Lj2563:
	movl	$25,%esi
	movl	$10,%ebx
	movl	$0,-848(%ebp)
	movl	_$SYSTEM$_Ld7,%eax
	movl	%eax,-12(%ebp)
	movl	_$SYSTEM$_Ld7+4,%eax
	movl	%eax,-8(%ebp)
	movw	_$SYSTEM$_Ld7+8,%ax
	movw	%ax,-4(%ebp)
	jmp	Lj2557
Lj2564:
	movl	$25,%esi
	movl	$10,%ebx
	movl	$6,-848(%ebp)
	movl	_$SYSTEM$_Ld7,%eax
	movl	%eax,-12(%ebp)
	movl	_$SYSTEM$_Ld7+4,%eax
	movl	%eax,-8(%ebp)
	movw	_$SYSTEM$_Ld7+8,%ax
	movw	%ax,-4(%ebp)
Lj2558:
Lj2557:
	cmpl	$-32767,-860(%ebp)
	jne	Lj2614
	movl	%esi,-860(%ebp)
Lj2614:
	movw	24(%ebp),%ax
	andl	$32768,%eax
	setneb	-852(%ebp)
	movw	24(%ebp),%ax
	andl	$32767,%eax
	cmpl	$32767,%eax
	seteb	%al
	movl	16(%ebp),%edx
	testl	%edx,%edx
	jne	Lj2622
	movl	20(%ebp),%edx
	andl	$2147483647,%edx
	jne	Lj2622
	movb	$1,%dl
	jmp	Lj2624
Lj2622:
	movb	$0,%dl
Lj2624:
	testb	%al,%al
	je	Lj2626
	testb	%dl,%dl
	je	Lj2628
	movb	-852(%ebp),%al
	testb	%al,%al
	je	Lj2630
	leal	-304(%ebp),%eax
	movl	$_$SYSTEM$_Ld8,%ecx
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	jmp	Lj2651
Lj2630:
	leal	-304(%ebp),%eax
	movl	$_$SYSTEM$_Ld9,%ecx
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	jmp	Lj2651
Lj2628:
	leal	-304(%ebp),%eax
	movl	$_$SYSTEM$_Ld10,%ecx
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	jmp	Lj2651
Lj2626:
	movb	-852(%ebp),%al
	testb	%al,%al
	je	Lj2653
	fldt	16(%ebp)
	fchs
	fstpt	16(%ebp)
Lj2653:
	movl	%esi,%eax
	subl	-848(%ebp),%eax
	subl	$2,%eax
	movl	%eax,-48(%ebp)
	cmpl	%eax,-856(%ebp)
	jng	Lj2659
	movl	-48(%ebp),%eax
	movl	%eax,-856(%ebp)
Lj2659:
	cmpl	$0,-856(%ebp)
	jnl	Lj2663
	cmpl	$0,-860(%ebp)
	jnge	Lj2665
	cmpl	%ebx,-860(%ebp)
	jnl	Lj2665
	movl	%ebx,-860(%ebp)
Lj2665:
	cmpl	$0,-860(%ebp)
	jng	Lj2670
	cmpl	%esi,-860(%ebp)
	jnl	Lj2670
	movl	-860(%ebp),%eax
	subl	-848(%ebp),%eax
	subl	$2,%eax
	movl	%eax,-48(%ebp)
Lj2670:
Lj2663:
	leal	-304(%ebp),%eax
	movl	$_$SYSTEM$_Ld11,%edx
	movl	$255,%ebx
	movl	%edx,%ecx
	movl	%ebx,%edx
	call	fpc_shortstr_to_shortstr
	movl	$2,-40(%ebp)
	movl	$0,-44(%ebp)
	movzwl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	16(%ebp)
	movl	%ebp,%eax
	call	SYSTEM_STR_REAL$crcC5C66959_GETINTPART$EXTENDED
	fld1
	fldt	-12(%ebp)
	fsubrp	%st,%st(1)
	fldt	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jna	Lj2689
	movzwl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	16(%ebp)
	call	fpc_frac_real
	fstpt	16(%ebp)
Lj2689:
	cmpl	$0,-856(%ebp)
	jnge	Lj2695
	movl	-48(%ebp),%eax
	cmpl	-856(%ebp),%eax
	jng	Lj2695
	movl	-856(%ebp),%eax
	movl	%eax,-48(%ebp)
Lj2695:
	movl	-40(%ebp),%eax
	cmpl	$2,%eax
	jne	Lj2700
	fldz
	fldt	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj2700
	jmp	Lj2703
	.balign 4,0x90
Lj2702:
	fldt	_$SYSTEM$_Ld12
	fldt	16(%ebp)
	fmulp	%st,%st(1)
	fstpt	16(%ebp)
	decl	-44(%ebp)
	cmpl	$0,-856(%ebp)
	jnge	Lj2708
	decl	-48(%ebp)
Lj2708:
Lj2703:
	fldt	-12(%ebp)
	fldt	_$SYSTEM$_Ld13
	fsubp	%st,%st(1)
	fldt	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj2702
Lj2704:
	decl	-44(%ebp)
Lj2700:
	movl	-40(%ebp),%edi
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	jnge	Lj2712
	movl	_$SYSTEM$_Ld2,%eax
	movl	%eax,-24(%ebp)
	movl	_$SYSTEM$_Ld2+4,%eax
	movl	%eax,-20(%ebp)
	movw	_$SYSTEM$_Ld2+8,%ax
	movw	%ax,-16(%ebp)
	fld1
	fstpt	-36(%ebp)
	movl	-48(%ebp),%eax
	movl	$1,%ebx
	cmpl	%ebx,%eax
	jl	Lj2718
	decl	%ebx
	.balign 4,0x90
Lj2719:
	incl	%ebx
	fldt	_$SYSTEM$_Ld12
	fldt	-36(%ebp)
	fmulp	%st,%st(1)
	fstpt	-36(%ebp)
	cmpl	%ebx,%eax
	jg	Lj2719
Lj2718:
	fldt	-36(%ebp)
	fldt	-24(%ebp)
	fdivp	%st,%st(1)
	fstpt	-24(%ebp)
	movl	-844(%ebp),%eax
	testl	%eax,%eax
	je	Lj2725
	fldt	-12(%ebp)
	fldt	16(%ebp)
	fmulp	%st,%st(1)
	fldt	16(%ebp)
	faddp	%st,%st(1)
	fstpt	16(%ebp)
Lj2725:
	fldt	-24(%ebp)
	fldt	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jnae	Lj2729
	fldt	-24(%ebp)
	fldt	16(%ebp)
	faddp	%st,%st(1)
	fstpt	16(%ebp)
Lj2729:
	movzwl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	16(%ebp)
	call	fpc_int_real
	fld1
	fcompp
	fnstsw	%ax
	sahf
	jne	Lj2733
	movzbl	-40(%ebp),%eax
	pushl	%eax
	leal	-304(%ebp),%edx
	movl	%ebp,%eax
	movl	$255,%ecx
	call	SYSTEM_STR_REAL$crcC5C66959_ROUNDSTR$OPENSTRING$BYTE
	movzwl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	16(%ebp)
	call	fpc_frac_real
	fstpt	16(%ebp)
Lj2733:
	movl	-48(%ebp),%esi
	movl	$1,%ebx
	cmpl	%ebx,%esi
	jl	Lj2749
	decl	%ebx
	.balign 4,0x90
Lj2750:
	incl	%ebx
	fld1
	fldt	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jna	Lj2752
	movzwl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	16(%ebp)
	call	fpc_frac_real
	fldt	_$SYSTEM$_Ld12
	fmulp	%st,%st(1)
	fstpt	16(%ebp)
	jmp	Lj2757
Lj2752:
	fldt	_$SYSTEM$_Ld12
	fldt	16(%ebp)
	fmulp	%st,%st(1)
	fstpt	16(%ebp)
Lj2757:
	incl	-40(%ebp)
	fnstcw	-320(%ebp)
	fnstcw	-318(%ebp)
	orw	$3840,-320(%ebp)
	fldt	16(%ebp)
	fldcw	-320(%ebp)
	fistpq	-328(%ebp)
	fldcw	-318(%ebp)
	fwait
	movl	-328(%ebp),%eax
	movl	-324(%ebp),%edx
	addl	$48,%eax
	adcl	$0,%edx
	movzbl	-40(%ebp),%edx
	movb	%al,-304(%ebp,%edx,1)
	movzbl	-40(%ebp),%eax
	movb	-304(%ebp,%eax,1),%al
	cmpb	$57,%al
	jna	Lj2763
	movzbl	-40(%ebp),%eax
	movzbl	-304(%ebp,%eax,1),%eax
	subl	$10,%eax
	movzbl	-40(%ebp),%edx
	movb	%al,-304(%ebp,%edx,1)
	movl	-40(%ebp),%eax
	decl	%eax
	pushl	%eax
	leal	-304(%ebp),%edx
	movl	%ebp,%eax
	movl	$255,%ecx
	call	SYSTEM_STR_REAL$crcC5C66959_ROUNDSTR$OPENSTRING$BYTE
Lj2763:
	cmpl	%ebx,%esi
	jg	Lj2750
Lj2749:
	movl	-40(%ebp),%edi
Lj2712:
	movl	%edi,%ecx
	leal	-304(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
	movb	-302(%ebp),%al
	cmpb	$48,%al
	jne	Lj2783
	pushl	$1
	leal	-304(%ebp),%eax
	movl	$2,%edx
	movl	$255,%ebx
	movl	%edx,%ecx
	movl	%ebx,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	jmp	Lj2792
Lj2783:
	incl	-44(%ebp)
Lj2792:
	movb	-852(%ebp),%al
	testb	%al,%al
	je	Lj2794
	movb	$45,-303(%ebp)
Lj2794:
	cmpl	$0,-856(%ebp)
	jl	Lj2797
Lj2799:
	movl	-44(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	testl	%eax,%eax
	jg	Lj2797
	jl	Lj2798
	cmpl	$35,%edx
	jna	Lj2798
Lj2797:
	pushl	$3
	leal	-304(%ebp),%edx
	movl	$255,%ecx
	movb	$46,%al
	call	SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT
	pushl	$10
	movl	-44(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	leal	-315(%ebp),%edx
	movl	$-1,%ebx
	movl	%edx,%ecx
	movl	%ebx,%edx
	call	fpc_shortstr_sint
	movl	-848(%ebp),%edx
	subl	$2,%edx
	movzbl	-315(%ebp),%eax
	cmpl	%eax,%edx
	jng	Lj2817
	leal	-315(%ebp),%eax
	pushl	%eax
	leal	-840(%ebp),%eax
	pushl	%eax
	movl	-848(%ebp),%ecx
	subl	$2,%ecx
	movzbl	-315(%ebp),%eax
	subl	%eax,%ecx
	movl	$1,%eax
	movl	$_$SYSTEM$_Ld14,%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	fpc_shortstr_copy
	leal	-840(%ebp),%ecx
	leal	-584(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-584(%ebp),%ecx
	leal	-315(%ebp),%eax
	movl	$10,%edx
	call	fpc_shortstr_to_shortstr
Lj2817:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	jnl	Lj2841
	leal	-315(%ebp),%eax
	pushl	%eax
	leal	-584(%ebp),%eax
	movl	$_$SYSTEM$_Ld15,%edx
	movl	$255,%ebx
	movl	%edx,%ecx
	movl	%ebx,%edx
	call	fpc_shortstr_concat
	leal	-584(%ebp),%ecx
	leal	-315(%ebp),%eax
	movl	$10,%edx
	call	fpc_shortstr_to_shortstr
	jmp	Lj2856
Lj2841:
	leal	-315(%ebp),%eax
	pushl	%eax
	leal	-584(%ebp),%eax
	movl	$_$SYSTEM$_Ld16,%edx
	movl	$255,%ebx
	movl	%edx,%ecx
	movl	%ebx,%edx
	call	fpc_shortstr_concat
	leal	-584(%ebp),%ecx
	leal	-315(%ebp),%eax
	movl	$10,%edx
	call	fpc_shortstr_to_shortstr
Lj2856:
	pushl	$2
	leal	-304(%ebp),%eax
	movl	%eax,-340(%ebp)
	movl	$_$SYSTEM$_Ld17,%eax
	movl	%eax,-336(%ebp)
	leal	-315(%ebp),%ecx
	leal	-596(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	leal	-596(%ebp),%eax
	movl	%eax,-332(%ebp)
	leal	-340(%ebp),%ecx
	leal	-304(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat_multi
	jmp	Lj2885
Lj2798:
	movb	-852(%ebp),%al
	testb	%al,%al
	jne	Lj2887
	pushl	$1
	leal	-304(%ebp),%eax
	movl	$1,%edx
	movl	$255,%ebx
	movl	%edx,%ecx
	movl	%ebx,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	movb	$2,%bl
	jmp	Lj2898
Lj2887:
	movb	$3,%bl
Lj2898:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	jnge	Lj2902
	movzbl	%bl,%eax
	movl	-44(%ebp),%edx
	addl	%eax,%edx
	addl	-856(%ebp),%edx
	decl	%edx
	movzbl	-304(%ebp),%eax
	cmpl	%eax,%edx
	jng	Lj2904
	leal	-584(%ebp),%eax
	pushl	%eax
	movzbl	%bl,%eax
	movl	-44(%ebp),%ecx
	addl	%eax,%ecx
	addl	-856(%ebp),%ecx
	movzbl	-304(%ebp),%eax
	subl	%eax,%ecx
	movl	$1,%eax
	movl	$_$SYSTEM$_Ld14,%esi
	movl	%eax,%edx
	movl	%esi,%eax
	call	fpc_shortstr_copy
	leal	-584(%ebp),%eax
	pushl	%eax
	leal	-304(%ebp),%ecx
	leal	-304(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
Lj2904:
	movzbl	%bl,%edx
	movl	-44(%ebp),%eax
	addl	%edx,%eax
	pushl	%eax
	leal	-304(%ebp),%edx
	movl	$255,%ecx
	movb	$46,%al
	call	SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT
	jmp	Lj2929
Lj2902:
	movl	-44(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	movl	%eax,-44(%ebp)
	movzbl	%bl,%eax
	decl	%eax
	pushl	%eax
	leal	-584(%ebp),%eax
	pushl	%eax
	movl	-44(%ebp),%ecx
	movl	$1,%eax
	movl	$_$SYSTEM$_Ld14,%esi
	movl	%eax,%edx
	movl	%esi,%eax
	call	fpc_shortstr_copy
	leal	-584(%ebp),%eax
	leal	-304(%ebp),%edx
	movl	$255,%ecx
	call	SYSTEM_INSERT$SHORTSTRING$OPENSTRING$LONGINT
	movzbl	%bl,%eax
	pushl	%eax
	leal	-304(%ebp),%edx
	movl	$255,%ecx
	movb	$46,%al
	call	SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT
Lj2929:
	cmpl	$0,-856(%ebp)
	jng	Lj2957
	leal	-304(%ebp),%edx
	movb	$46,%al
	call	SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
	movl	%eax,%ecx
	addl	-856(%ebp),%ecx
	leal	-304(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
	jmp	Lj2968
Lj2957:
	leal	-304(%ebp),%edx
	movb	$46,%al
	call	SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
	movl	%eax,%ecx
	decl	%ecx
	leal	-304(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
Lj2968:
Lj2885:
Lj2651:
	movzbl	-304(%ebp),%eax
	cmpl	-860(%ebp),%eax
	jnl	Lj2980
	leal	-304(%ebp),%eax
	pushl	%eax
	movzbl	-304(%ebp),%eax
	movl	-860(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-840(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-840(%ebp),%ecx
	leal	-584(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-584(%ebp),%ecx
	movl	-864(%ebp),%edx
	movl	-868(%ebp),%eax
	call	fpc_shortstr_to_shortstr
	jmp	Lj2999
Lj2980:
	leal	-304(%ebp),%ecx
	movl	-864(%ebp),%edx
	movl	-868(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj2999:
	movl	-880(%ebp),%ebx
	movl	-876(%ebp),%esi
	movl	-872(%ebp),%edi
	leave
	ret	$20

.text
	.balign 4,0x90
SYSTEM_STR_REAL$crcC5C66959_GETINTPART$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$212,%esp
	movl	%ebx,-212(%ebp)
	movl	%esi,-208(%ebp)
	movl	%edi,-204(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,%edi
	movl	$0,%edx
	movb	$0,-200(%ebp)
	jmp	Lj3013
	.balign 4,0x90
Lj3012:
	incl	%edi
	incl	%edx
	cmpl	$18,%edi
	jng	Lj3016
	movl	$1,%edi
	movb	$1,-200(%ebp)
Lj3016:
	imull	$10,%edi,%ecx
	movl	8(%ebp),%eax
	movl	%eax,-194(%ebp,%ecx)
	movl	12(%ebp),%eax
	movl	%eax,-190(%ebp,%ecx)
	movw	16(%ebp),%ax
	movw	%ax,-186(%ebp,%ecx)
	fldt	_$SYSTEM$_Ld12
	fldt	8(%ebp)
	fdivp	%st,%st(1)
	fstpt	8(%ebp)
Lj3013:
	movl	-4(%ebp),%eax
	fld1
	fldt	-12(%eax)
	fsubrp	%st,%st(1)
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj3012
Lj3014:
	testl	%edx,%edx
	je	Lj2555
	movl	%edi,%eax
	incl	%eax
	movl	%eax,%esi
	cmpl	$18,%esi
	jng	Lj3030
	movl	$1,%esi
Lj3030:
	movl	-4(%ebp),%eax
	fldz
	fstpt	-24(%eax)
	decl	%edx
	movl	-4(%ebp),%eax
	movl	%edx,-44(%eax)
	.balign 4,0x90
Lj3037:
	movl	-4(%ebp),%eax
	movl	-48(%eax),%eax
	testl	%eax,%eax
	jng	Lj3041
	fnstcw	-188(%ebp)
	fnstcw	-186(%ebp)
	orw	$3840,-188(%ebp)
	imull	$10,%edi,%eax
	movl	-4(%ebp),%edx
	fldt	-24(%edx)
	fldt	-194(%ebp,%eax)
	fsubp	%st,%st(1)
	fldcw	-188(%ebp)
	fistpq	-196(%ebp)
	fldcw	-186(%ebp)
	fwait
	movl	-196(%ebp),%ebx
	movl	-4(%ebp),%eax
	decl	-48(%eax)
	movl	-4(%ebp),%eax
	incl	-40(%eax)
	movl	-4(%ebp),%ecx
	movzbl	-40(%ecx),%edx
	movl	%ebx,%eax
	addl	$48,%eax
	movb	%al,-304(%ecx,%edx,1)
	movl	-4(%ebp),%eax
	movzbl	-40(%eax),%edx
	movb	-304(%eax,%edx,1),%al
	cmpb	$57,%al
	jna	Lj3049
	movl	-4(%ebp),%eax
	movzbl	-40(%eax),%edx
	movzbl	-304(%eax,%edx,1),%eax
	subl	$10,%eax
	movl	-4(%ebp),%edx
	movzbl	-40(%edx),%ecx
	movb	%al,-304(%edx,%ecx,1)
	movl	-4(%ebp),%eax
	movl	-40(%eax),%eax
	decl	%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	leal	-304(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_STR_REAL$crcC5C66959_ROUNDSTR$OPENSTRING$BYTE
Lj3049:
Lj3041:
	imull	$10,%edi,%edx
	movzwl	-186(%ebp,%edx),%eax
	pushl	%eax
	pushl	-190(%ebp,%edx)
	pushl	-194(%ebp,%edx)
	call	fpc_int_real
	fldt	_$SYSTEM$_Ld12
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	fstpt	-24(%eax)
	subl	$1,%edi
	jne	Lj3071
	movl	$18,%edi
Lj3071:
	movb	-200(%ebp),%al
	testb	%al,%al
	je	Lj3075
	cmpl	%esi,%edi
	je	Lj3039
Lj3075:
	movb	-200(%ebp),%al
	testb	%al,%al
	jne	Lj3074
	cmpl	$18,%edi
	je	Lj3039
Lj3074:
	movl	-4(%ebp),%eax
	movl	-48(%eax),%eax
	testl	%eax,%eax
	jne	Lj3037
Lj3039:
	movb	-200(%ebp),%al
	testb	%al,%al
	jne	Lj3078
Lj3080:
	cmpl	$18,%edi
	jnl	Lj3079
Lj3078:
	movl	-4(%ebp),%eax
	movl	$-1,-48(%eax)
	imull	$10,%edi,%edx
	movl	-4(%ebp),%eax
	fldt	-24(%eax)
	fldt	-194(%ebp,%edx)
	fsubp	%st,%st(1)
	subl	$12,%esp
	fstpt	(%esp)
	call	fpc_int_real
	fldt	_$SYSTEM$_Ld18
	fcompp
	fnstsw	%ax
	sahf
	jnbe	Lj3084
	movl	-4(%ebp),%eax
	movzbl	-40(%eax),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	leal	-304(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_STR_REAL$crcC5C66959_ROUNDSTR$OPENSTRING$BYTE
Lj3084:
Lj3079:
Lj2555:
	movl	-212(%ebp),%ebx
	movl	-208(%ebp),%esi
	movl	-204(%ebp),%edi
	leave
	ret	$12

.text
	.balign 4,0x90
SYSTEM_STR_REAL$crcC5C66959_ROUNDSTR$OPENSTRING$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,%eax
	movb	8(%ebp),%cl
	movl	$1,%ebx
	.balign 4,0x90
Lj3097:
	movzbl	%cl,%edx
	movzbl	(%eax,%edx,1),%edx
	addl	%ebx,%edx
	movzbl	%cl,%esi
	movb	%dl,(%eax,%esi,1)
	movl	$0,%ebx
	movzbl	%cl,%edx
	movb	(%eax,%edx,1),%dl
	cmpb	$57,%dl
	jna	Lj3105
	movzbl	%cl,%edx
	movb	$48,(%eax,%edx,1)
	movl	$1,%ebx
Lj3105:
	decb	%cl
	testl	%ebx,%ebx
	jne	Lj3097
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_STR_REAL_ISO$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%esi
	movl	%edx,%eax
	movl	12(%ebp),%ebx
	movl	8(%ebp),%edx
	movzwl	24(%ebp),%edi
	pushl	%edi
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	%ebx
	pushl	%edx
	movl	%eax,%edx
	movl	%esi,%eax
	call	SYSTEM_STR_REAL$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING
	movzbw	(%ebx),%cx
	movw	$1,%ax
	cmpw	%ax,%cx
	jl	Lj3125
	decw	%ax
	.balign 4,0x90
Lj3126:
	incw	%ax
	movb	%al,%dl
	andl	$255,%edx
	movb	(%ebx,%edx,1),%dl
	cmpb	$69,%dl
	jne	Lj3128
	movb	%al,%dl
	andl	$255,%edx
	movb	$101,(%ebx,%edx,1)
Lj3128:
	cmpw	%ax,%cx
	jg	Lj3126
Lj3125:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
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
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	12(%ebp),%edi
	movl	8(%ebp),%ebx
	movzwl	24(%ebp),%esi
	pushl	%esi
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	%edi
	pushl	%ebx
	call	SYSTEM_STR_REAL$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	leave
	ret	$20

.text
	.balign 4,0x90
SYSTEM_FPC_SHORTSTR_ENUM_INTERN$LONGINT$LONGINT$POINTER$POINTER$OPENSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-12(%ebp)
	movl	16(%ebp),%edx
	movl	12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	$107,-20(%ebp)
	movl	%edx,%ebx
	movl	(%ebx),%eax
	testl	%eax,%eax
	jne	Lj3152
	movl	%ecx,%edx
	addl	$2,%edx
	movzbl	1(%ecx),%eax
	addl	%eax,%edx
	movl	%edx,%eax
	incl	%eax
	decl	%eax
	incl	%eax
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	cmpl	(%edx),%eax
	jl	Lj3145
Lj3168:
	movl	-4(%ebp),%eax
	cmpl	4(%edx),%eax
	jg	Lj3145
	movl	(%edx),%eax
	subl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%ebx,%eax,4),%ecx
	testl	%ecx,%ecx
	je	Lj3145
Lj3171:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%esi
	movl	%eax,%edx
	movl	%esi,%eax
	call	fpc_shortstr_to_shortstr
	jmp	Lj3179
Lj3152:
	leal	8(%ebx),%eax
	movl	%eax,%ecx
	movl	$0,%edx
	movl	4(%ebx),%eax
	decl	%eax
	movl	%eax,%esi
	.balign 4,0x90
Lj3186:
	movl	%esi,%eax
	addl	%edx,%eax
	movl	%eax,%edi
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edi
	sarl	$1,%edi
	movl	%edi,%ebx
	movl	(%ecx,%ebx,8),%eax
	cmpl	-4(%ebp),%eax
	jnl	Lj3192
	movl	%ebx,%eax
	incl	%eax
	movl	%eax,%edx
	jmp	Lj3195
Lj3192:
	movl	(%ecx,%ebx,8),%eax
	cmpl	-4(%ebp),%eax
	jng	Lj3188
	movl	%ebx,%eax
	decl	%eax
	movl	%eax,%esi
Lj3200:
Lj3195:
	cmpl	%esi,%edx
	jng	Lj3186
	jmp	Lj3145
Lj3188:
	movl	4(%ecx,%ebx,8),%ecx
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	fpc_shortstr_to_shortstr
Lj3179:
	movl	-16(%ebp),%edx
	movzbl	(%edx),%eax
	cmpl	-12(%ebp),%eax
	jnl	Lj3210
	movl	-16(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-12(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,%ecx
	movl	$1,%ebx
	cmpl	%ebx,%ecx
	jl	Lj3214
	decl	%ebx
	.balign 4,0x90
Lj3215:
	incl	%ebx
	movl	-16(%ebp),%esi
	movzbl	(%esi),%eax
	addl	%ebx,%eax
	andl	$255,%eax
	movl	-16(%ebp),%esi
	movb	$32,(%esi,%eax,1)
	cmpl	%ebx,%ecx
	jg	Lj3215
Lj3214:
	movl	-16(%ebp),%eax
	addb	%dl,(%eax)
Lj3210:
	movl	$0,-20(%ebp)
Lj3145:
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
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
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%ebx
	movl	%edx,%eax
	movl	16(%ebp),%esi
	movl	12(%ebp),%edx
	movl	8(%ebp),%edi
	pushl	%esi
	pushl	%edx
	pushl	%edi
	movl	%eax,%edx
	movl	%ebx,%eax
	call	SYSTEM_FPC_SHORTSTR_ENUM_INTERN$LONGINT$LONGINT$POINTER$POINTER$OPENSTRING$$LONGINT
	testl	%eax,%eax
	je	Lj3237
	movw	$107,%ax
	call	SYSTEM_RUNERROR$WORD
Lj3237:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
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
	movl	%ebx,-524(%ebp)
	movl	%esi,-520(%ebp)
	movl	%edi,-516(%ebp)
	movl	%edx,%edi
	movl	%ecx,%esi
	movl	8(%ebp),%ebx
	testb	%al,%al
	je	Lj3243
	movl	%ebx,%edx
	movl	%esi,%eax
	movl	$_$SYSTEM$_Ld19,%ecx
	call	fpc_shortstr_to_shortstr
	jmp	Lj3250
Lj3243:
	movl	%ebx,%edx
	movl	%esi,%eax
	movl	$_$SYSTEM$_Ld20,%ecx
	call	fpc_shortstr_to_shortstr
Lj3250:
	movzbl	(%esi),%eax
	cmpl	%edi,%eax
	jnl	Lj3258
	pushl	%esi
	movzbl	(%esi),%eax
	movl	%edi,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-512(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-512(%ebp),%ecx
	leal	-256(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-256(%ebp),%ecx
	movl	%ebx,%edx
	movl	%esi,%eax
	call	fpc_shortstr_to_shortstr
Lj3258:
	movl	-524(%ebp),%ebx
	movl	-520(%ebp),%esi
	movl	-516(%ebp),%edi
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
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
	movl	%eax,-24(%ebp)
	movl	%edx,-32(%ebp)
	movl	%ecx,-52(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-28(%ebp)
	leal	-19(%ebp),%eax
	movb	$48,%dl
	movl	$19,%ebx
	movb	%dl,%cl
	movl	%ebx,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	cmpl	$-32767,-24(%ebp)
	jne	Lj3286
	movl	$25,-24(%ebp)
Lj3286:
	leal	12(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	testl	%eax,%eax
	jg	Lj3289
	jl	Lj3290
	testl	%edx,%edx
	jnae	Lj3290
Lj3289:
	leal	12(%ebp),%eax
	movl	(%eax),%edi
	movl	4(%eax),%ebx
	movl	$0,-48(%ebp)
	jmp	Lj3295
Lj3290:
	movl	$1,-48(%ebp)
	leal	12(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	notl	%eax
	negl	%edx
	sbbl	$-1,%eax
	movl	%edx,%edi
	movl	%eax,%ebx
Lj3295:
	movl	$0,%esi
	.balign 4,0x90
Lj3302:
	incl	%esi
	pushl	$0
	pushl	$10
	pushl	%ebx
	pushl	%edi
	call	fpc_mod_qword
	addl	$48,%eax
	adcl	$0,%edx
	movb	%al,-20(%ebp,%esi,1)
	pushl	$0
	pushl	$10
	pushl	%ebx
	pushl	%edi
	call	fpc_div_qword
	movl	%eax,%edi
	movl	%edx,%ebx
	testl	%ebx,%ebx
	jne	Lj3302
	testl	%edi,%edi
	jne	Lj3302
Lj3304:
	movl	%esi,-36(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj3320
	incl	%esi
Lj3320:
	cmpl	$0,-32(%ebp)
	jnl	Lj3322
	addl	$5,%esi
	cmpl	$8,-24(%ebp)
	jnl	Lj3324
	movl	$8,-24(%ebp)
Lj3324:
	movl	%esi,%eax
	subl	-24(%ebp),%eax
	movl	%eax,-44(%ebp)
	cmpl	-24(%ebp),%esi
	jnl	Lj3330
	movl	-24(%ebp),%esi
Lj3330:
	cmpl	$0,-44(%ebp)
	jng	Lj3334
	movl	-24(%ebp),%esi
	movl	-36(%ebp),%eax
	subl	-44(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj3342
Lj3334:
	movl	-36(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj3342
Lj3322:
	addl	-48(%ebp),%esi
	jmp	Lj3344
	.balign 4,0x90
Lj3343:
	incl	%esi
	incl	-36(%ebp)
	movl	-36(%ebp),%eax
	movb	$48,-20(%ebp,%eax,1)
Lj3344:
	cmpl	$5,-36(%ebp)
	jl	Lj3343
Lj3345:
	movl	$4,%eax
	subl	-32(%ebp),%eax
	movl	%eax,-44(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-40(%ebp)
	testl	%eax,%eax
	je	Lj3353
	cmpl	$4,-40(%ebp)
	jng	Lj3355
	movl	$4,-40(%ebp)
Lj3355:
	incl	-40(%ebp)
Lj3353:
	subl	-44(%ebp),%esi
Lj3342:
	cmpl	$0,-44(%ebp)
	jng	Lj3359
	movl	$1,%ebx
	movl	$0,%edi
	movl	-44(%ebp),%edx
	movl	$0,%ecx
	cmpl	%ecx,%edx
	jl	Lj3365
	decl	%ecx
	.balign 4,0x90
Lj3366:
	incl	%ecx
	cmpl	$1,%edi
	jne	Lj3368
	movb	-20(%ebp,%ebx,1),%al
	cmpb	$57,%al
	jne	Lj3368
	movb	$48,-20(%ebp,%ebx,1)
	jmp	Lj3372
Lj3368:
	movzbl	-20(%ebp,%ebx,1),%eax
	addl	%edi,%eax
	movb	%al,-20(%ebp,%ebx,1)
	cmpb	$53,%al
	jnae	Lj3376
	movl	$1,%edi
	jmp	Lj3379
Lj3376:
	movl	$0,%edi
Lj3379:
Lj3372:
	incl	%ebx
	cmpl	-36(%ebp),%ebx
	jg	Lj3365
	cmpl	%ecx,%edx
	jg	Lj3366
Lj3365:
	cmpl	$1,%edi
	jne	Lj3385
	movl	%ebx,%eax
	decl	%eax
	movb	-20(%ebp,%eax,1),%al
	cmpb	$48,%al
	jne	Lj3385
	jmp	Lj3388
	.balign 4,0x90
Lj3387:
	movb	$48,-20(%ebp,%ebx,1)
	incl	%ebx
Lj3388:
	movb	-20(%ebp,%ebx,1),%al
	cmpb	$57,%al
	je	Lj3387
Lj3389:
	incb	-20(%ebp,%ebx,1)
	cmpl	%esi,%ebx
	jng	Lj3395
	incl	%esi
	incl	-36(%ebp)
Lj3395:
Lj3385:
Lj3359:
	cmpl	-24(%ebp),%esi
	jnl	Lj3397
	movl	-24(%ebp),%esi
Lj3397:
	cmpl	-28(%ebp),%esi
	jng	Lj3401
	cmpl	$0,-44(%ebp)
	jnl	Lj3403
	movl	%esi,%eax
	subl	-28(%ebp),%eax
	addl	%eax,-44(%ebp)
Lj3403:
	movl	-28(%ebp),%esi
Lj3401:
	movl	%esi,%ebx
	movl	%ebx,%ecx
	movl	-28(%ebp),%edx
	movl	-52(%ebp),%eax
	call	fpc_shortstr_setlength
	movl	%ebx,%ecx
	cmpl	$0,-32(%ebp)
	jnl	Lj3439
	leal	12(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj3417
	testl	%edx,%edx
	jne	Lj3417
Lj3416:
	movl	$0,%edi
	jmp	Lj3420
Lj3417:
	movl	-36(%ebp),%eax
	subl	$5,%eax
	movl	%eax,%edi
Lj3420:
	testl	%edi,%edi
	jnge	Lj3424
	movl	%ecx,%eax
	subl	$2,%eax
	andl	$255,%eax
	movl	-52(%ebp),%edx
	movb	$43,(%edx,%eax,1)
	jmp	Lj3427
Lj3424:
	movl	%ecx,%eax
	subl	$2,%eax
	movzbl	%al,%edx
	movl	-52(%ebp),%eax
	movb	$45,(%eax,%edx,1)
	movl	%edi,%eax
	negl	%eax
	movl	%eax,%edi
Lj3427:
	movl	%edi,%eax
	cltd
	movl	$10,%ebx
	idivl	%ebx
	addl	$48,%edx
	movb	%cl,%al
	movzbl	%al,%ebx
	movl	-52(%ebp),%eax
	movb	%dl,(%eax,%ebx,1)
	decl	%ecx
	movl	%edi,%ebx
	movl	$1717986919,%eax
	imull	%ebx
	movl	%ebx,%eax
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	addl	$48,%edx
	movb	%cl,%al
	movzbl	%al,%ebx
	movl	-52(%ebp),%eax
	movb	%dl,(%eax,%ebx,1)
	subl	$2,%ecx
	movb	%cl,%al
	movzbl	%al,%edx
	movl	-52(%ebp),%eax
	movb	$69,(%eax,%edx,1)
	decl	%ecx
	jmp	Lj3439
	.balign 4,0x90
Lj3438:
	movb	%cl,%al
	movzbl	%al,%edx
	movl	-52(%ebp),%eax
	movb	$48,(%eax,%edx,1)
	decl	%ecx
	incl	-44(%ebp)
Lj3439:
	cmpl	$0,-44(%ebp)
	jl	Lj3438
Lj3440:
	movl	-36(%ebp),%edx
	movl	-44(%ebp),%eax
	incl	%eax
	movl	%eax,%ebx
	cmpl	%ebx,%edx
	jl	Lj3444
	decl	%ebx
	.balign 4,0x90
Lj3445:
	incl	%ebx
	decl	-40(%ebp)
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3447
	movb	%cl,%al
	andl	$255,%eax
	movl	-52(%ebp),%esi
	movb	$46,(%esi,%eax,1)
	decl	%ecx
Lj3447:
	movb	%cl,%al
	movzbl	%al,%esi
	movb	-20(%ebp,%ebx,1),%al
	movl	-52(%ebp),%edi
	movb	%al,(%edi,%esi,1)
	decl	%ecx
	cmpl	%ebx,%edx
	jg	Lj3445
Lj3444:
	cmpl	$1,-48(%ebp)
	jne	Lj3457
	movb	%cl,%dl
	andl	$255,%edx
	movl	-52(%ebp),%eax
	movb	$45,(%eax,%edx,1)
	decl	%ecx
	jmp	Lj3457
	.balign 4,0x90
Lj3456:
	movb	%cl,%dl
	andl	$255,%edx
	movl	-52(%ebp),%eax
	movb	$32,(%eax,%edx,1)
	decl	%ecx
Lj3457:
	testl	%ecx,%ecx
	jg	Lj3456
Lj3458:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	fpc_chararray_sint
fpc_chararray_sint:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$524,%esp
	movl	%ebx,-524(%ebp)
	movl	%esi,-520(%ebp)
	movl	%edi,-516(%ebp)
	movl	%edx,%edi
	movl	%ecx,%esi
	movl	8(%ebp),%ebx
	leal	-256(%ebp),%edx
	movl	$255,%ecx
	call	SYSTEM_INT_STR$LONGINT$OPENSTRING
	movzbl	-256(%ebp),%eax
	cmpl	%edi,%eax
	jnl	Lj3470
	leal	-256(%ebp),%eax
	pushl	%eax
	movzbl	-256(%ebp),%eax
	movl	%edi,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-512(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-512(%ebp),%ecx
	leal	-256(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
Lj3470:
	movl	%ebx,%eax
	incl	%eax
	movzbl	-256(%ebp),%edx
	cmpl	%edx,%eax
	jng	Lj3484
	movzbl	-256(%ebp),%ecx
	jmp	Lj3487
Lj3484:
	movl	%ebx,%eax
	incl	%eax
	movl	%eax,%ecx
Lj3487:
	movl	%esi,%edx
	leal	-255(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-524(%ebp),%ebx
	movl	-520(%ebp),%esi
	movl	-516(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_chararray_uint
fpc_chararray_uint:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$524,%esp
	movl	%ebx,-524(%ebp)
	movl	%esi,-520(%ebp)
	movl	%edi,-516(%ebp)
	movl	%edx,%edi
	movl	%ecx,%esi
	movl	8(%ebp),%ebx
	leal	-256(%ebp),%edx
	movl	$255,%ecx
	call	SYSTEM_INT_STR$LONGWORD$OPENSTRING
	movzbl	-256(%ebp),%eax
	cmpl	%edi,%eax
	jnl	Lj3505
	leal	-256(%ebp),%eax
	pushl	%eax
	movzbl	-256(%ebp),%eax
	movl	%edi,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-512(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-512(%ebp),%ecx
	leal	-256(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
Lj3505:
	movl	%ebx,%eax
	incl	%eax
	movzbl	-256(%ebp),%edx
	cmpl	%edx,%eax
	jng	Lj3519
	movzbl	-256(%ebp),%ecx
	jmp	Lj3522
Lj3519:
	movl	%ebx,%eax
	incl	%eax
	movl	%eax,%ecx
Lj3522:
	movl	%esi,%edx
	leal	-255(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-524(%ebp),%ebx
	movl	-520(%ebp),%esi
	movl	-516(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_chararray_qword
fpc_chararray_qword:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$532,%esp
	movl	%ebx,-532(%ebp)
	movl	%esi,-528(%ebp)
	movl	%edi,-524(%ebp)
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	%eax,%ebx
	movl	%edx,-520(%ebp)
	movl	%ecx,-516(%ebp)
	movl	%edi,%edx
	movl	%esi,%eax
	pushl	%eax
	pushl	%edx
	leal	-256(%ebp),%eax
	movl	$255,%edx
	call	SYSTEM_INT_STR$QWORD$OPENSTRING
	movzbl	-256(%ebp),%eax
	cmpl	%ebx,%eax
	jnl	Lj3540
	leal	-256(%ebp),%eax
	pushl	%eax
	movzbl	-256(%ebp),%eax
	movl	%ebx,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-512(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-512(%ebp),%ecx
	leal	-256(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
Lj3540:
	movl	-516(%ebp),%edx
	incl	%edx
	movzbl	-256(%ebp),%eax
	cmpl	%eax,%edx
	jng	Lj3554
	movzbl	-256(%ebp),%ecx
	jmp	Lj3557
Lj3554:
	movl	-516(%ebp),%eax
	incl	%eax
	movl	%eax,%ecx
Lj3557:
	movl	-520(%ebp),%edx
	leal	-255(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-532(%ebp),%ebx
	movl	-528(%ebp),%esi
	movl	-524(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_chararray_int64
fpc_chararray_int64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$532,%esp
	movl	%ebx,-532(%ebp)
	movl	%esi,-528(%ebp)
	movl	%edi,-524(%ebp)
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	%eax,%ebx
	movl	%edx,-520(%ebp)
	movl	%ecx,-516(%ebp)
	movl	%edi,%edx
	movl	%esi,%eax
	pushl	%eax
	pushl	%edx
	leal	-256(%ebp),%eax
	movl	$255,%edx
	call	SYSTEM_INT_STR$INT64$OPENSTRING
	movzbl	-256(%ebp),%eax
	cmpl	%ebx,%eax
	jnl	Lj3575
	leal	-256(%ebp),%eax
	pushl	%eax
	movzbl	-256(%ebp),%eax
	movl	%ebx,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-512(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-512(%ebp),%ecx
	leal	-256(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
Lj3575:
	movl	-516(%ebp),%edx
	incl	%edx
	movzbl	-256(%ebp),%eax
	cmpl	%eax,%edx
	jng	Lj3589
	movzbl	-256(%ebp),%ecx
	jmp	Lj3592
Lj3589:
	movl	-516(%ebp),%eax
	incl	%eax
	movl	%eax,%ecx
Lj3592:
	movl	-520(%ebp),%edx
	leal	-255(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-532(%ebp),%ebx
	movl	-528(%ebp),%esi
	movl	-524(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_chararray_float
fpc_chararray_float:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%ebx,-268(%ebp)
	movl	%esi,-264(%ebp)
	movl	%edi,-260(%ebp)
	movl	12(%ebp),%esi
	movl	8(%ebp),%ebx
	movzwl	24(%ebp),%edi
	pushl	%edi
	pushl	20(%ebp)
	pushl	16(%ebp)
	leal	-256(%ebp),%edi
	pushl	%edi
	pushl	$255
	call	SYSTEM_STR_REAL$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING
	movl	%ebx,%eax
	incl	%eax
	movzbl	-256(%ebp),%edx
	cmpl	%edx,%eax
	jng	Lj3616
	movzbl	-256(%ebp),%ecx
	jmp	Lj3619
Lj3616:
	movl	%ebx,%eax
	incl	%eax
	movl	%eax,%ecx
Lj3619:
	movl	%esi,%edx
	leal	-255(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-268(%ebp),%ebx
	movl	-264(%ebp),%esi
	movl	-260(%ebp),%edi
	leave
	ret	$20

.text
	.balign 4,0x90
.globl	fpc_chararray_enum
fpc_chararray_enum:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%ebx,-268(%ebp)
	movl	%esi,-264(%ebp)
	movl	%edi,-260(%ebp)
	movl	16(%ebp),%edi
	movl	12(%ebp),%esi
	movl	8(%ebp),%ebx
	pushl	%edi
	leal	-256(%ebp),%edi
	pushl	%edi
	pushl	$255
	call	FPC_SHORTSTR_ENUM
	movl	%ebx,%eax
	incl	%eax
	movzbl	-256(%ebp),%edx
	cmpl	%edx,%eax
	jng	Lj3643
	movzbl	-256(%ebp),%ecx
	jmp	Lj3646
Lj3643:
	movl	%ebx,%eax
	incl	%eax
	movl	%eax,%ecx
Lj3646:
	movl	%esi,%edx
	leal	-255(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-268(%ebp),%ebx
	movl	-264(%ebp),%esi
	movl	-260(%ebp),%edi
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	fpc_chararray_bool
fpc_chararray_bool:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%ebx,-264(%ebp)
	movl	%esi,-260(%ebp)
	movl	%ecx,%esi
	movl	8(%ebp),%ebx
	pushl	$255
	leal	-256(%ebp),%ecx
	call	FPC_SHORTSTR_BOOL
	movl	%ebx,%eax
	incl	%eax
	movzbl	-256(%ebp),%edx
	cmpl	%edx,%eax
	jng	Lj3666
	movzbl	-256(%ebp),%ecx
	jmp	Lj3669
Lj3666:
	movl	%ebx,%eax
	incl	%eax
	movl	%eax,%ecx
Lj3669:
	movl	%esi,%edx
	leal	-255(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-264(%ebp),%ebx
	movl	-260(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_chararray_currency
fpc_chararray_currency:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%ebx,-264(%ebp)
	movl	%esi,-260(%ebp)
	movl	%ecx,%esi
	movl	8(%ebp),%ebx
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	$255
	leal	-256(%ebp),%ecx
	call	fpc_shortstr_currency
	movl	%ebx,%eax
	incl	%eax
	movzbl	-256(%ebp),%edx
	cmpl	%edx,%eax
	jng	Lj3691
	movzbl	-256(%ebp),%ecx
	jmp	Lj3694
Lj3691:
	movl	%ebx,%eax
	incl	%eax
	movl	%eax,%ecx
Lj3694:
	movl	%esi,%edx
	leal	-255(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-264(%ebp),%ebx
	movl	-260(%ebp),%esi
	leave
	ret	$12

.text
	.balign 4,0x90
SYSTEM_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$LONGINT:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%eax,%esi
	movl	%edx,%eax
	movl	$1,(%esp)
	movb	$0,(%eax)
	movb	$10,(%ecx)
	movzbl	(%esi),%edx
	testl	%edx,%edx
	jne	Lj3716
	movl	(%esp),%ebx
	jmp	Lj3703
	.balign 4,0x90
Lj3715:
	incl	(%esp)
Lj3716:
	movzbl	(%esi),%edx
	cmpl	(%esp),%edx
	jnge	Lj3717
	movb	(%esp),%dl
	andl	$255,%edx
	movzbl	(%esi,%edx,1),%edx
	cmpl	$9,%edx
	je	Lj3715
	cmpl	$32,%edx
Lj3719:
	je	Lj3715
Lj3717:
	movb	(%esp),%dl
	andl	$255,%edx
	movb	(%esi,%edx,1),%dl
	cmpb	$43,%dl
	jb	Lj3721
	subb	$43,%dl
	je	Lj3723
	subb	$2,%dl
	jne	Lj3721
	movb	$1,(%eax)
	incl	(%esp)
	jmp	Lj3720
Lj3723:
	incl	(%esp)
Lj3721:
Lj3720:
	movzbl	(%esi),%eax
	cmpl	(%esp),%eax
	jnge	Lj3747
	movb	(%esp),%al
	andl	$255,%eax
	movb	(%esi,%eax,1),%al
	cmpb	$36,%al
	jb	Lj3747
	subb	$36,%al
	je	Lj3730
	decb	%al
	je	Lj3731
	decb	%al
	je	Lj3732
	subb	$10,%al
	je	Lj3733
	subb	$40,%al
	je	Lj3730
	subb	$32,%al
	jne	Lj3747
Lj3730:
	movb	$16,(%ecx)
	incl	(%esp)
	jmp	Lj3747
Lj3731:
	movb	$2,(%ecx)
	incl	(%esp)
	jmp	Lj3747
Lj3732:
	movb	$8,(%ecx)
	incl	(%esp)
	jmp	Lj3747
Lj3733:
	movzbl	(%esi),%eax
	cmpl	(%esp),%eax
	jng	Lj3747
	movl	(%esp),%eax
	incl	%eax
	andl	$255,%eax
	movzbl	(%esi,%eax,1),%eax
	cmpl	$88,%eax
	je	Lj3740
	cmpl	$120,%eax
Lj3743:
	jne	Lj3747
Lj3740:
	addl	$2,(%esp)
	movb	$16,(%ecx)
	jmp	Lj3747
	jmp	Lj3747
	.balign 4,0x90
Lj3746:
	incl	(%esp)
Lj3747:
	movzbl	(%esi),%eax
	cmpl	(%esp),%eax
	jng	Lj3748
	movb	(%esp),%al
	andl	$255,%eax
	movb	(%esi,%eax,1),%al
	cmpb	$48,%al
	je	Lj3746
Lj3748:
	movl	(%esp),%ebx
Lj3703:
	movl	%ebx,%eax
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_val_sint_shortstr
fpc_val_sint_shortstr:
.globl	FPC_VAL_SINT_SHORTSTR
FPC_VAL_SINT_SHORTSTR:
	subl	$36,%esp
	movl	%ebx,24(%esp)
	movl	%esi,28(%esp)
	movl	%edi,32(%esp)
	movl	%eax,16(%esp)
	movl	%edx,12(%esp)
	movl	%ecx,8(%esp)
	movl	$0,20(%esp)
	movl	$0,%edi
	movl	%esp,%ecx
	leal	1(%esp),%eax
	movl	12(%esp),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	SYSTEM_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$LONGINT
	movl	8(%esp),%edx
	movl	%eax,(%edx)
	movl	12(%esp),%eax
	movzbl	(%eax),%edx
	movl	8(%esp),%eax
	cmpl	(%eax),%edx
	jl	Lj3752
	movl	8(%esp),%eax
	movzbl	(%eax),%edx
	movl	12(%esp),%eax
	movb	(%eax,%edx,1),%dl
	testb	%dl,%dl
	jne	Lj3769
	movl	8(%esp),%eax
	movl	(%eax),%edx
	cmpl	$1,%edx
	jng	Lj3752
	movl	8(%esp),%eax
	movl	(%eax),%edx
	decl	%edx
	movb	%dl,%al
	andl	$255,%eax
	movl	12(%esp),%edx
	movb	(%edx,%eax,1),%al
	cmpb	$48,%al
	jne	Lj3752
	movl	8(%esp),%eax
	movl	$0,(%eax)
	jmp	Lj3752
Lj3769:
	movzbl	(%esp),%ecx
	movl	$-1,%eax
	movl	$0,%edx
	divl	%ecx
	movl	%eax,%esi
	movzbl	(%esp),%eax
	cmpl	$10,%eax
	jne	Lj3778
	movzbl	1(%esp),%eax
	addl	$2147483647,%eax
	movl	%eax,%ebx
	jmp	Lj3787
Lj3778:
	movl	$-1,%ebx
	jmp	Lj3787
	.balign 4,0x90
Lj3786:
	movl	8(%esp),%edx
	movzbl	(%edx),%eax
	movl	12(%esp),%edx
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj3788
	subb	$48,%al
	jb	Lj3790
	subb	$9,%al
	jbe	Lj3791
	subb	$8,%al
	jb	Lj3790
	subb	$5,%al
	jbe	Lj3792
	subb	$27,%al
	jb	Lj3790
	subb	$5,%al
	jbe	Lj3793
	jmp	Lj3790
Lj3791:
	movl	8(%esp),%edx
	movzbl	(%edx),%eax
	movl	12(%esp),%edx
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	movb	%al,4(%esp)
	jmp	Lj3789
Lj3792:
	movl	8(%esp),%edx
	movzbl	(%edx),%eax
	movl	12(%esp),%edx
	movzbl	(%edx,%eax,1),%eax
	subl	$55,%eax
	movb	%al,4(%esp)
	jmp	Lj3789
Lj3793:
	movl	8(%esp),%edx
	movzbl	(%edx),%eax
	movl	12(%esp),%edx
	movzbl	(%edx,%eax,1),%eax
	subl	$87,%eax
	movb	%al,4(%esp)
	jmp	Lj3789
	jmp	Lj3788
Lj3790:
	movb	$16,4(%esp)
Lj3789:
	movl	%edi,%ecx
	movzbl	(%esp),%eax
	mull	%edi
	movl	%eax,%edi
	movb	4(%esp),%al
	cmpb	(%esp),%al
	jae	Lj3807
Lj3810:
	movzbl	4(%esp),%edx
	movl	%ebx,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	cmpl	%edi,%edx
	jb	Lj3807
Lj3809:
	cmpl	%esi,%ecx
	jna	Lj3808
Lj3807:
	movl	$0,20(%esp)
	jmp	Lj3752
Lj3808:
	movzbl	4(%esp),%eax
	addl	%edi,%eax
	movl	%eax,%edi
	movl	8(%esp),%eax
	incl	(%eax)
Lj3787:
	movl	12(%esp),%edx
	movzbl	(%edx),%eax
	movl	8(%esp),%edx
	cmpl	(%edx),%eax
	jge	Lj3786
Lj3788:
	movl	8(%esp),%eax
	movl	$0,(%eax)
	movl	%edi,20(%esp)
	cmpb	$0,1(%esp)
	je	Lj3820
	movl	20(%esp),%eax
	negl	%eax
	movl	%eax,20(%esp)
Lj3820:
	movb	1(%esp),%al
	testb	%al,%al
	jne	Lj3824
	movzbl	(%esp),%eax
	cmpl	$10,%eax
	je	Lj3824
	movl	16(%esp),%eax
	cmpl	$1,%eax
	jl	Lj3827
	decl	%eax
	je	Lj3828
	decl	%eax
	je	Lj3829
	jmp	Lj3827
Lj3828:
	movb	20(%esp),%al
	movsbl	%al,%eax
	movl	%eax,20(%esp)
	jmp	Lj3826
Lj3829:
	movw	20(%esp),%ax
	movswl	%ax,%eax
	movl	%eax,20(%esp)
Lj3827:
Lj3826:
Lj3824:
Lj3752:
	movl	20(%esp),%eax
	movl	24(%esp),%ebx
	movl	28(%esp),%esi
	movl	32(%esp),%edi
	addl	$36,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_val_uint_shortstr
fpc_val_uint_shortstr:
.globl	FPC_VAL_UINT_SHORTSTR
FPC_VAL_UINT_SHORTSTR:
	subl	$24,%esp
	movl	%ebx,12(%esp)
	movl	%esi,16(%esp)
	movl	%edi,20(%esp)
	movl	%eax,8(%esp)
	movl	%edx,4(%esp)
	movl	$0,%edi
	movl	%esp,%ecx
	leal	1(%esp),%edx
	movl	8(%esp),%eax
	call	SYSTEM_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$LONGINT
	movl	4(%esp),%edx
	movl	%eax,(%edx)
	cmpb	$0,1(%esp)
	jne	Lj3834
Lj3848:
	movl	8(%esp),%eax
	movzbl	(%eax),%edx
	movl	4(%esp),%eax
	cmpl	(%eax),%edx
	jl	Lj3834
	movl	4(%esp),%eax
	movzbl	(%eax),%edx
	movl	8(%esp),%eax
	movb	(%eax,%edx,1),%dl
	testb	%dl,%dl
	jne	Lj3857
	movl	4(%esp),%eax
	movl	(%eax),%edx
	cmpl	$1,%edx
	jng	Lj3834
	movl	4(%esp),%eax
	movl	(%eax),%edx
	decl	%edx
	movb	%dl,%al
	andl	$255,%eax
	movl	8(%esp),%edx
	movb	(%edx,%eax,1),%al
	cmpb	$48,%al
	jne	Lj3834
	movl	4(%esp),%eax
	movl	$0,(%eax)
	jmp	Lj3834
	.balign 4,0x90
Lj3856:
	movl	4(%esp),%eax
	movzbl	(%eax),%esi
	movl	8(%esp),%edx
	movb	(%edx,%esi,1),%al
	testb	%al,%al
	je	Lj3858
	subb	$48,%al
	jb	Lj3860
	subb	$9,%al
	jbe	Lj3861
	subb	$8,%al
	jb	Lj3860
	subb	$5,%al
	jbe	Lj3862
	subb	$27,%al
	jb	Lj3860
	subb	$5,%al
	jbe	Lj3863
	jmp	Lj3860
Lj3861:
	movl	4(%esp),%eax
	movzbl	(%eax),%esi
	movl	8(%esp),%edx
	movzbl	(%edx,%esi,1),%eax
	subl	$48,%eax
	movb	%al,%cl
	jmp	Lj3859
Lj3862:
	movl	4(%esp),%eax
	movzbl	(%eax),%edx
	movl	8(%esp),%esi
	movzbl	(%esi,%edx,1),%eax
	subl	$55,%eax
	movb	%al,%cl
	jmp	Lj3859
Lj3863:
	movl	4(%esp),%eax
	movzbl	(%eax),%edx
	movl	8(%esp),%esi
	movzbl	(%esi,%edx,1),%eax
	subl	$87,%eax
	movb	%al,%cl
	jmp	Lj3859
	jmp	Lj3858
Lj3860:
	movb	$16,%cl
Lj3859:
	movl	%edi,%ebx
	cmpb	(%esp),%cl
	jae	Lj3875
Lj3877:
	movzbl	%cl,%eax
	movl	$-1,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movzbl	(%esp),%esi
	movl	$0,%edx
	divl	%esi
	cmpl	%ebx,%eax
	jnb	Lj3876
Lj3875:
	movl	$0,%edi
	jmp	Lj3834
Lj3876:
	movzbl	(%esp),%eax
	mull	%edi
	movzbl	%cl,%edx
	addl	%edx,%eax
	movl	%eax,%edi
	movl	4(%esp),%eax
	incl	(%eax)
Lj3857:
	movl	8(%esp),%eax
	movzbl	(%eax),%edx
	movl	4(%esp),%eax
	cmpl	(%eax),%edx
	jge	Lj3856
Lj3858:
	movl	4(%esp),%eax
	movl	$0,(%eax)
Lj3834:
	movl	%edi,%eax
	movl	12(%esp),%ebx
	movl	16(%esp),%esi
	movl	20(%esp),%edi
	addl	$24,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_val_int64_shortstr
fpc_val_int64_shortstr:
.globl	FPC_VAL_INT64_SHORTSTR
FPC_VAL_INT64_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	movl	$0,-48(%ebp)
	movl	$0,-44(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-40(%ebp)
	leal	-1(%ebp),%ecx
	leal	-2(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	SYSTEM_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$LONGINT
	movl	-32(%ebp),%edx
	movl	%eax,(%edx)
	movl	-36(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-32(%ebp),%eax
	cmpl	(%eax),%edx
	jl	Lj3884
	movl	-32(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-36(%ebp),%eax
	movb	(%eax,%edx,1),%dl
	testb	%dl,%dl
	jne	Lj3901
	movl	-32(%ebp),%eax
	movl	(%eax),%edx
	cmpl	$1,%edx
	jng	Lj3884
	movl	-32(%ebp),%eax
	movl	(%eax),%edx
	decl	%edx
	movb	%dl,%al
	andl	$255,%eax
	movl	-36(%ebp),%edx
	movb	(%edx,%eax,1),%al
	cmpb	$48,%al
	jne	Lj3884
	movl	-32(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj3884
Lj3901:
	movzbl	-1(%ebp),%edx
	movl	$0,%eax
	pushl	%eax
	pushl	%edx
	pushl	$-1
	pushl	$-1
	call	fpc_div_qword
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	movzbl	-1(%ebp),%eax
	cmpl	$10,%eax
	jne	Lj3914
	movzbl	-2(%ebp),%edx
	movl	$0,%eax
	addl	$-1,%edx
	adcl	$2147483647,%eax
	movl	%edx,-16(%ebp)
	movl	%eax,-8(%ebp)
	jmp	Lj3923
Lj3914:
	movl	$-1,-16(%ebp)
	movl	$-1,-8(%ebp)
	jmp	Lj3923
	.balign 4,0x90
Lj3922:
	movl	-32(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-36(%ebp),%edx
	movb	(%edx,%ecx,1),%al
	testb	%al,%al
	je	Lj3924
	subb	$48,%al
	jb	Lj3926
	subb	$9,%al
	jbe	Lj3927
	subb	$8,%al
	jb	Lj3926
	subb	$5,%al
	jbe	Lj3928
	subb	$27,%al
	jb	Lj3926
	subb	$5,%al
	jbe	Lj3929
	jmp	Lj3926
Lj3927:
	movl	-32(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-36(%ebp),%eax
	movzbl	(%eax,%edx,1),%edx
	subl	$48,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,%edi
	jmp	Lj3925
Lj3928:
	movl	-32(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-36(%ebp),%eax
	movzbl	(%eax,%edx,1),%edx
	subl	$55,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,%edi
	jmp	Lj3925
Lj3929:
	movl	-32(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-36(%ebp),%eax
	movzbl	(%eax,%edx,1),%edx
	subl	$87,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,%edi
	jmp	Lj3925
	jmp	Lj3924
Lj3926:
	movl	$16,-12(%ebp)
	movl	$0,%edi
Lj3925:
	movl	-28(%ebp),%esi
	movl	-40(%ebp),%ebx
	pushl	-40(%ebp)
	pushl	-28(%ebp)
	movzbl	-1(%ebp),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	movl	$0,%eax
	call	fpc_mul_qword
	movl	%eax,-28(%ebp)
	movl	%edx,-40(%ebp)
	movzbl	-1(%ebp),%edx
	movl	$0,%eax
	cmpl	%edi,%eax
	jb	Lj3949
	ja	Lj3952
	cmpl	-12(%ebp),%edx
	jbe	Lj3949
Lj3952:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	-12(%ebp),%eax
	sbbl	%edi,%edx
	cmpl	-40(%ebp),%edx
	jb	Lj3949
	ja	Lj3951
	cmpl	-28(%ebp),%eax
	jb	Lj3949
Lj3951:
	cmpl	-20(%ebp),%ebx
	ja	Lj3949
	jb	Lj3950
	cmpl	-24(%ebp),%esi
	jna	Lj3950
Lj3949:
	movl	$0,-48(%ebp)
	movl	$0,-44(%ebp)
	jmp	Lj3884
Lj3950:
	movl	-28(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	-12(%ebp),%eax
	adcl	%edi,%edx
	movl	%eax,-28(%ebp)
	movl	%edx,-40(%ebp)
	movl	-32(%ebp),%eax
	incl	(%eax)
Lj3923:
	movl	-36(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-32(%ebp),%eax
	cmpl	(%eax),%edx
	jge	Lj3922
Lj3924:
	movl	-32(%ebp),%eax
	movl	$0,(%eax)
	movl	-28(%ebp),%edx
	movl	-40(%ebp),%eax
	movl	%edx,-48(%ebp)
	movl	%eax,-44(%ebp)
	cmpb	$0,-2(%ebp)
	je	Lj3962
	movl	-48(%ebp),%edx
	movl	-44(%ebp),%eax
	notl	%eax
	negl	%edx
	sbbl	$-1,%eax
	movl	%edx,-48(%ebp)
	movl	%eax,-44(%ebp)
Lj3962:
Lj3884:
	movl	-44(%ebp),%edx
	movl	-48(%ebp),%eax
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
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
	subl	$36,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-12(%ebp)
	leal	-1(%ebp),%ecx
	leal	-2(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	SYSTEM_INITVAL$SHORTSTRING$BOOLEAN$BYTE$$LONGINT
	movl	-20(%ebp),%edx
	movl	%eax,(%edx)
	cmpb	$0,-2(%ebp)
	jne	Lj3965
Lj3979:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-20(%ebp),%eax
	cmpl	(%eax),%edx
	jl	Lj3965
	movl	-20(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-24(%ebp),%eax
	movb	(%eax,%edx,1),%dl
	testb	%dl,%dl
	jne	Lj3988
	movl	-20(%ebp),%eax
	movl	(%eax),%edx
	cmpl	$1,%edx
	jng	Lj3965
	movl	-20(%ebp),%eax
	movl	(%eax),%edx
	decl	%edx
	movb	%dl,%al
	andl	$255,%eax
	movl	-24(%ebp),%edx
	movb	(%edx,%eax,1),%al
	cmpb	$48,%al
	jne	Lj3965
	movl	-20(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj3965
	.balign 4,0x90
Lj3987:
	movl	-20(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-24(%ebp),%ecx
	movb	(%ecx,%edx,1),%al
	testb	%al,%al
	je	Lj3989
	subb	$48,%al
	jb	Lj3991
	subb	$9,%al
	jbe	Lj3992
	subb	$8,%al
	jb	Lj3991
	subb	$5,%al
	jbe	Lj3993
	subb	$27,%al
	jb	Lj3991
	subb	$5,%al
	jbe	Lj3994
	jmp	Lj3991
Lj3992:
	movl	-20(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-24(%ebp),%eax
	movzbl	(%eax,%edx,1),%edx
	subl	$48,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-8(%ebp)
	movl	%eax,%edi
	jmp	Lj3990
Lj3993:
	movl	-20(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-24(%ebp),%eax
	movzbl	(%eax,%edx,1),%edx
	subl	$55,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-8(%ebp)
	movl	%eax,%edi
	jmp	Lj3990
Lj3994:
	movl	-20(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-24(%ebp),%eax
	movzbl	(%eax,%edx,1),%edx
	subl	$87,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-8(%ebp)
	movl	%eax,%edi
	jmp	Lj3990
	jmp	Lj3989
Lj3991:
	movl	$16,-8(%ebp)
	movl	$0,%edi
Lj3990:
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%ebx
	movzbl	-1(%ebp),%edx
	movl	$0,%eax
	cmpl	%edi,%eax
	jb	Lj4006
	ja	Lj4008
	cmpl	-8(%ebp),%edx
	jbe	Lj4006
Lj4008:
	movzbl	-1(%ebp),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	movl	-8(%ebp),%edx
	movl	%edi,%ecx
	movl	$-1,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	$-1,%eax
	sbbl	%ecx,%eax
	movl	%eax,%ecx
	pushl	%ecx
	pushl	%edx
	call	fpc_div_qword
	cmpl	%ebx,%edx
	jb	Lj4006
	ja	Lj4007
	cmpl	%esi,%eax
	jnb	Lj4007
Lj4006:
	movl	$0,-16(%ebp)
	movl	$0,-12(%ebp)
	jmp	Lj3965
Lj4007:
	pushl	-12(%ebp)
	pushl	-16(%ebp)
	movzbl	-1(%ebp),%edx
	movl	$0,%eax
	pushl	%eax
	pushl	%edx
	movl	$0,%eax
	call	fpc_mul_qword
	addl	-8(%ebp),%eax
	adcl	%edi,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-20(%ebp),%eax
	incl	(%eax)
Lj3988:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-20(%ebp),%eax
	cmpl	(%eax),%edx
	jge	Lj3987
Lj3989:
	movl	-20(%ebp),%eax
	movl	$0,(%eax)
Lj3965:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_real_shortstr
fpc_val_real_shortstr:
.globl	FPC_VAL_REAL_SHORTSTR
FPC_VAL_REAL_SHORTSTR:
	subl	$64,%esp
	movl	%ebx,52(%esp)
	movl	%esi,56(%esp)
	movl	%edi,60(%esp)
	movl	%eax,%edi
	movl	%edx,%esi
	fldz
	fstpt	(%esp)
	movl	$1,(%esi)
	movl	$0,%ebx
	movl	$0,%ecx
	fld1
	fstpt	24(%esp)
	movb	$0,%dl
	fld1
	fstpt	36(%esp)
	jmp	Lj4042
	.balign 4,0x90
Lj4041:
	incl	(%esi)
Lj4042:
	movzbl	(%edi),%eax
	cmpl	(%esi),%eax
	jnge	Lj4043
	movzbl	(%esi),%eax
	movzbl	(%edi,%eax,1),%eax
	cmpl	$9,%eax
	je	Lj4041
	cmpl	$32,%eax
Lj4045:
	je	Lj4041
Lj4043:
	movzbl	(%edi),%eax
	cmpl	(%esi),%eax
	jnge	Lj4055
	movzbl	(%esi),%eax
	movb	(%edi,%eax,1),%al
	cmpb	$43,%al
	jb	Lj4055
	subb	$43,%al
	je	Lj4050
	subb	$2,%al
	je	Lj4051
	jmp	Lj4055
Lj4050:
	incl	(%esi)
	jmp	Lj4055
Lj4051:
	movl	_$SYSTEM$_Ld21,%eax
	movl	%eax,36(%esp)
	movl	_$SYSTEM$_Ld21+4,%eax
	movl	%eax,40(%esp)
	movw	_$SYSTEM$_Ld21+8,%ax
	movw	%ax,44(%esp)
	incl	(%esi)
Lj4048:
	jmp	Lj4055
	.balign 4,0x90
Lj4054:
	orb	$1,%dl
	movzbl	(%esi),%eax
	movzbl	(%edi,%eax,1),%eax
	subl	$48,%eax
	movl	%eax,48(%esp)
	fildl	48(%esp)
	fldt	_$SYSTEM$_Ld12
	fldt	(%esp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpt	(%esp)
	incl	(%esi)
Lj4055:
	movzbl	(%edi),%eax
	cmpl	(%esi),%eax
	jnge	Lj4056
	movzbl	(%esi),%eax
	movzbl	(%edi,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
Lj4062:
	jc	Lj4054
Lj4056:
	movzbl	(%edi),%eax
	cmpl	(%esi),%eax
	jnge	Lj4064
	movzbl	(%esi),%eax
	movb	(%edi,%eax,1),%al
	cmpb	$46,%al
	jne	Lj4064
	incl	(%esi)
	jmp	Lj4067
	.balign 4,0x90
Lj4066:
	orb	$2,%dl
	movzbl	(%esi),%eax
	movzbl	(%edi,%eax,1),%eax
	subl	$48,%eax
	movl	%eax,48(%esp)
	fildl	48(%esp)
	fldt	_$SYSTEM$_Ld12
	fldt	(%esp)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fstpt	(%esp)
	incl	%ecx
	incl	(%esi)
Lj4067:
	movzbl	(%edi),%eax
	cmpl	(%esi),%eax
	jnge	Lj4068
	movzbl	(%esi),%eax
	movzbl	(%edi,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
Lj4074:
	jc	Lj4066
Lj4068:
Lj4064:
	movzbl	%dl,%eax
	testl	%eax,%eax
	jne	Lj4076
	fldz
	fstpt	(%esp)
	jmp	Lj4025
Lj4076:
	movzbl	(%edi),%eax
	cmpl	(%esi),%eax
	jnge	Lj4080
	movzbl	(%esi),%eax
	movzbl	(%edi,%eax,1),%eax
	cmpl	$69,%eax
	je	Lj4079
	cmpl	$101,%eax
Lj4082:
	jne	Lj4080
Lj4079:
	incl	(%esi)
	movzbl	(%edi),%eax
	cmpl	(%esi),%eax
	jnge	Lj4084
	movzbl	(%esi),%eax
	movb	(%edi,%eax,1),%al
	cmpb	$43,%al
	jne	Lj4086
	incl	(%esi)
	jmp	Lj4087
Lj4086:
	movzbl	(%esi),%eax
	movb	(%edi,%eax,1),%al
	cmpb	$45,%al
	jne	Lj4089
	movl	_$SYSTEM$_Ld21,%eax
	movl	%eax,24(%esp)
	movl	_$SYSTEM$_Ld21+4,%eax
	movl	%eax,28(%esp)
	movw	_$SYSTEM$_Ld21+8,%ax
	movw	%ax,32(%esp)
	incl	(%esi)
Lj4089:
Lj4087:
Lj4084:
	movzbl	(%edi),%eax
	cmpl	(%esi),%eax
	jl	Lj4092
Lj4094:
	movzbl	(%esi),%eax
	movzbl	(%edi,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
Lj4095:
	jc	Lj4099
Lj4092:
	fldz
	fstpt	(%esp)
	jmp	Lj4025
	.balign 4,0x90
Lj4098:
	imull	$10,%ebx,%eax
	movl	%eax,%ebx
	movzbl	(%esi),%eax
	movzbl	(%edi,%eax,1),%eax
	addl	%ebx,%eax
	subl	$48,%eax
	movl	%eax,%ebx
	incl	(%esi)
Lj4099:
	movzbl	(%edi),%eax
	cmpl	(%esi),%eax
	jnge	Lj4100
	movzbl	(%esi),%eax
	movzbl	(%edi,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
Lj4106:
	jc	Lj4098
Lj4100:
Lj4080:
	fldz
	fldt	24(%esp)
	fcompp
	fnstsw	%ax
	sahf
	jna	Lj4108
	subl	%ecx,%ebx
	testl	%ebx,%ebx
	jnl	Lj4115
	movl	_$SYSTEM$_Ld21,%eax
	movl	%eax,24(%esp)
	movl	_$SYSTEM$_Ld21+4,%eax
	movl	%eax,28(%esp)
	movw	_$SYSTEM$_Ld21+8,%ax
	movw	%ax,32(%esp)
	movl	%ebx,%eax
	negl	%eax
	movl	%eax,%ebx
	jmp	Lj4115
Lj4108:
	addl	%ecx,%ebx
Lj4115:
	fldt	36(%esp)
	fldt	(%esp)
	fmulp	%st,%st(1)
	fstpt	(%esp)
	fld1
	fstpt	12(%esp)
	cmpl	$4930,%ebx
	jng	Lj4121
	movl	$1,%eax
	decl	%eax
	.balign 4,0x90
Lj4124:
	incl	%eax
	fldt	_$SYSTEM$_Ld12
	fldt	12(%esp)
	fmulp	%st,%st(1)
	fstpt	12(%esp)
	cmpl	$4930,%eax
	jl	Lj4124
	fldz
	fldt	24(%esp)
	fcompp
	fnstsw	%ax
	sahf
	jna	Lj4128
	fldt	12(%esp)
	fldt	(%esp)
	fmulp	%st,%st(1)
	fstpt	(%esp)
	jmp	Lj4131
Lj4128:
	fldt	12(%esp)
	fldt	(%esp)
	fdivp	%st,%st(1)
	fstpt	(%esp)
Lj4131:
	subl	$4930,%ebx
	fld1
	fstpt	12(%esp)
Lj4121:
	movl	%ebx,%eax
	movl	$1,%edx
	cmpl	%edx,%eax
	jl	Lj4137
	decl	%edx
	.balign 4,0x90
Lj4138:
	incl	%edx
	fldt	_$SYSTEM$_Ld12
	fldt	12(%esp)
	fmulp	%st,%st(1)
	fstpt	12(%esp)
	cmpl	%edx,%eax
	jg	Lj4138
Lj4137:
	fldz
	fldt	24(%esp)
	fcompp
	fnstsw	%ax
	sahf
	jna	Lj4142
	fldt	12(%esp)
	fldt	(%esp)
	fmulp	%st,%st(1)
	fstpt	(%esp)
	jmp	Lj4145
Lj4142:
	fldt	12(%esp)
	fldt	(%esp)
	fdivp	%st,%st(1)
	fstpt	(%esp)
Lj4145:
	movzbl	(%edi),%eax
	cmpl	(%esi),%eax
	jnge	Lj4149
	fldz
	fstpt	(%esp)
	jmp	Lj4025
Lj4149:
	movl	$0,(%esi)
Lj4025:
	fldt	(%esp)
	movl	52(%esp),%ebx
	movl	56(%esp),%esi
	movl	60(%esp),%edi
	addl	$64,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_val_enum_shortstr
fpc_val_enum_shortstr:
.globl	FPC_VAL_ENUM_SHORTSTR
FPC_VAL_ENUM_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$796,%esp
	movl	%ebx,-796(%ebp)
	movl	%esi,-792(%ebp)
	movl	%edi,-788(%ebp)
	movl	%eax,%ebx
	movl	%ecx,-4(%ebp)
	movb	$1,-784(%ebp)
	movl	-4(%ebp),%eax
	movl	$1,(%eax)
	jmp	Lj4163
	.balign 4,0x90
Lj4162:
	incb	-784(%ebp)
Lj4163:
	movb	(%edx),%al
	cmpb	-784(%ebp),%al
	jnae	Lj4164
	movzbl	-784(%ebp),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$32,%al
	je	Lj4162
Lj4164:
	leal	-772(%ebp),%eax
	pushl	%eax
	movzbl	-784(%ebp),%eax
	movl	%eax,%esi
	movl	%edx,%eax
	movl	$255,%ecx
	movl	%esi,%edx
	call	fpc_shortstr_copy
	leal	-772(%ebp),%eax
	leal	-516(%ebp),%edx
	call	SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING
	leal	-516(%ebp),%ecx
	leal	-260(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	%ebx,%edx
	leal	4(%edx),%eax
	movl	%eax,-780(%ebp)
	movl	$1,-776(%ebp)
	movl	(%edx),%esi
	.balign 4,0x90
Lj4190:
	movl	%esi,%eax
	addl	-776(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,%ebx
	decl	%eax
	movl	-780(%ebp),%edx
	movl	4(%edx,%eax,8),%eax
	leal	-516(%ebp),%edx
	call	SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING
	leal	-516(%ebp),%ecx
	leal	-260(%ebp),%edx
	movl	%ebp,%eax
	call	SYSTEM_fpc_val_enum_shortstr$crcCF5712C8_STRING_COMPARE$SHORTSTRING$SHORTSTRING$$LONGINT
	movl	%eax,%edi
	testl	%edi,%edi
	jng	Lj4208
	movl	%ebx,%eax
	incl	%eax
	movl	%eax,-776(%ebp)
	jmp	Lj4211
Lj4208:
	testl	%edi,%edi
	jnl	Lj4192
	movl	%ebx,%eax
	decl	%eax
	movl	%eax,%esi
Lj4216:
Lj4211:
	cmpl	%esi,-776(%ebp)
	jna	Lj4190
	movzbl	-784(%ebp),%eax
	decl	%eax
	movl	-4(%ebp),%edx
	addl	%eax,(%edx)
	jmp	Lj4154
Lj4192:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	%ebx,%eax
	decl	%eax
	movl	-780(%ebp),%edx
	movl	(%edx,%eax,8),%eax
Lj4154:
	movl	-796(%ebp),%ebx
	movl	-792(%ebp),%esi
	movl	-788(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_fpc_val_enum_shortstr$crcCF5712C8_STRING_COMPARE$SHORTSTRING$SHORTSTRING$$LONGINT:
	subl	$24,%esp
	movl	%ebx,12(%esp)
	movl	%esi,16(%esp)
	movl	%edi,20(%esp)
	movl	%eax,(%esp)
	movl	%edx,8(%esp)
	movl	%ecx,4(%esp)
	movl	8(%esp),%eax
	movb	(%eax),%bl
	movl	8(%esp),%edx
	movb	(%edx),%al
	movl	4(%esp),%edx
	cmpb	(%edx),%al
	jna	Lj4226
	movl	4(%esp),%eax
	movb	(%eax),%bl
Lj4226:
	movb	$1,%cl
	jmp	Lj4232
	.balign 4,0x90
Lj4231:
	movzbl	%cl,%esi
	movl	8(%esp),%edi
	movb	(%edi,%esi,1),%al
	movzbl	%cl,%edi
	movl	4(%esp),%esi
	movb	(%esi,%edi,1),%dl
	cmpb	%dl,%al
	jne	Lj4233
	incb	%cl
Lj4232:
	cmpb	%bl,%cl
	jbe	Lj4231
Lj4233:
	movl	(%esp),%esi
	movl	-4(%esi),%esi
	movzbl	%cl,%edi
	cmpl	(%esi),%edi
	jng	Lj4241
	movl	(%esp),%esi
	movl	-4(%esi),%edi
	movzbl	%cl,%esi
	movl	%esi,(%edi)
Lj4241:
	cmpb	%bl,%cl
	jnbe	Lj4245
	movzbl	%al,%ecx
	movzbl	%dl,%eax
	subl	%eax,%ecx
	jmp	Lj4248
Lj4245:
	movl	8(%esp),%eax
	movzbl	(%eax),%ebx
	movl	4(%esp),%eax
	movzbl	(%eax),%edx
	subl	%edx,%ebx
	movl	%ebx,%ecx
Lj4248:
	movl	%ecx,%eax
	movl	12(%esp),%ebx
	movl	16(%esp),%esi
	movl	20(%esp),%edi
	addl	$24,%esp
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
	movl	%esi,-48(%ebp)
	movl	%edi,-44(%ebp)
	movl	%eax,-28(%ebp)
	movl	%edx,-40(%ebp)
	fldz
	fistpq	-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-12(%ebp)
	movl	-28(%ebp),%edx
	movzbl	(%edx),%eax
	movl	%eax,-24(%ebp)
	movl	-40(%ebp),%eax
	movl	$1,(%eax)
	movl	$1,-36(%ebp)
	movl	$0,%edi
	.balign 4,0x90
Lj4265:
	movl	-40(%ebp),%eax
	movl	(%eax),%edx
	cmpl	-24(%ebp),%edx
	jg	Lj4251
	movl	-40(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-28(%ebp),%ecx
	movzbl	(%ecx,%edx,1),%eax
	cmpl	$9,%eax
	je	Lj4271
	cmpl	$32,%eax
Lj4273:
	jne	Lj4267
Lj4271:
	movl	-40(%ebp),%eax
	incl	(%eax)
Lj4274:
Lj4270:
	jmp	Lj4265
Lj4267:
	movl	-40(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-28(%ebp),%eax
	movb	(%eax,%edx,1),%dl
	cmpb	$43,%dl
	jb	Lj4276
	subb	$43,%dl
	je	Lj4277
	subb	$2,%dl
	je	Lj4278
	jmp	Lj4276
Lj4277:
	movl	-40(%ebp),%eax
	incl	(%eax)
	jmp	Lj4275
Lj4278:
	movl	$-1,-36(%ebp)
	movl	-40(%ebp),%eax
	incl	(%eax)
Lj4276:
Lj4275:
	movb	$0,%bl
	movl	$0,-32(%ebp)
	jmp	Lj4286
	.balign 4,0x90
Lj4285:
	movl	-40(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-28(%ebp),%edx
	movb	(%edx,%ecx,1),%al
	cmpb	$46,%al
	jb	Lj4287
	subb	$46,%al
	je	Lj4291
	subb	$2,%al
	jb	Lj4287
	subb	$9,%al
	jnbe	Lj4287
	movl	-40(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-28(%ebp),%edx
	movzbl	(%edx,%ecx,1),%eax
	subl	$48,%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	cmpl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_INT64EDGE+4,%eax
	jl	Lj4294
	jg	Lj4296
	cmpl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_INT64EDGE,%edx
	jbe	Lj4294
Lj4296:
	pushl	$0
	pushl	$10
	movl	-20(%ebp),%ecx
	movl	%ecx,%eax
	sarl	$31,%eax
	movl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_MAXINT64,%edx
	subl	%ecx,%edx
	movl	%edx,%ecx
	movl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_MAXINT64+4,%edx
	sbbl	%eax,%edx
	movl	%edx,%eax
	pushl	%eax
	pushl	%ecx
	call	fpc_div_int64
	cmpl	-12(%ebp),%edx
	jg	Lj4294
	jl	Lj4295
	cmpl	-16(%ebp),%eax
	jnae	Lj4295
Lj4294:
	pushl	-12(%ebp)
	pushl	-16(%ebp)
	pushl	$0
	pushl	$10
	movl	$0,%eax
	call	fpc_mul_int64
	movl	-20(%ebp),%ecx
	movl	%ecx,%esi
	sarl	$31,%esi
	addl	%ecx,%eax
	adcl	%esi,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	incl	-32(%ebp)
	jmp	Lj4288
Lj4295:
	testl	%edi,%edi
	je	Lj4251
	testb	%bl,%bl
	jne	Lj4314
	cmpl	$5,-20(%ebp)
	jnge	Lj4314
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_MAXINT64+4,%edx
	jl	Lj4313
	jg	Lj4314
	cmpl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_MAXINT64,%eax
	jnb	Lj4314
Lj4313:
	addl	$1,-16(%ebp)
	adcl	$0,-12(%ebp)
Lj4314:
	movb	$1,%bl
Lj4312:
	jmp	Lj4288
Lj4291:
	testl	%edi,%edi
	jne	Lj4251
	movl	$1,%edi
	movl	$0,-32(%ebp)
Lj4325:
	jmp	Lj4288
	jmp	Lj4287
Lj4288:
	movl	-40(%ebp),%eax
	incl	(%eax)
Lj4286:
	movl	-40(%ebp),%edx
	movl	(%edx),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj4285
Lj4287:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4327
	testl	%edi,%edi
	je	Lj4251
Lj4327:
	testl	%edi,%edi
	je	Lj4330
	movl	-32(%ebp),%edi
Lj4330:
	movl	$4,%eax
	subl	%edi,%eax
	movl	%eax,%ebx
	movl	-40(%ebp),%eax
	movl	(%eax),%edx
	cmpl	-24(%ebp),%edx
	jnle	Lj4336
	movl	-40(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-28(%ebp),%ecx
	movzbl	(%ecx,%edx,1),%eax
	cmpl	$69,%eax
	je	Lj4337
	cmpl	$101,%eax
Lj4339:
	jne	Lj4251
Lj4337:
	movl	-40(%ebp),%eax
	incl	(%eax)
	movl	-40(%ebp),%edx
	movl	(%edx),%eax
	cmpl	-24(%ebp),%eax
	jg	Lj4251
	movl	$1,-32(%ebp)
	movl	-40(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-28(%ebp),%eax
	movb	(%eax,%edx,1),%dl
	cmpb	$43,%dl
	jb	Lj4345
	subb	$43,%dl
	je	Lj4346
	subb	$2,%dl
	je	Lj4347
	jmp	Lj4345
Lj4346:
	movl	-40(%ebp),%eax
	incl	(%eax)
	jmp	Lj4344
Lj4347:
	movl	$-1,-32(%ebp)
	movl	-40(%ebp),%eax
	incl	(%eax)
Lj4345:
Lj4344:
	movl	$0,-20(%ebp)
	jmp	Lj4353
	.balign 4,0x90
Lj4352:
	movl	-40(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-28(%ebp),%edx
	movzbl	(%edx,%ecx,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
Lj4357:
	jnc	Lj4251
	cmpl	$4951,-20(%ebp)
	jg	Lj4251
	movl	-20(%ebp),%esi
	imull	$10,%esi
	movl	-40(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-28(%ebp),%edx
	movzbl	(%edx,%ecx,1),%eax
	subl	$48,%eax
	addl	%eax,%esi
	movl	%esi,-20(%ebp)
	movl	-40(%ebp),%eax
	incl	(%eax)
Lj4362:
Lj4353:
	movl	-40(%ebp),%eax
	movl	(%eax),%edx
	cmpl	-24(%ebp),%edx
	jle	Lj4352
Lj4354:
	movl	-32(%ebp),%eax
	imull	-20(%ebp),%eax
	addl	%ebx,%eax
	movl	%eax,%ebx
Lj4365:
Lj4336:
	testl	%ebx,%ebx
	jng	Lj4367
	movl	%ebx,%esi
	movl	$1,-32(%ebp)
	cmpl	-32(%ebp),%esi
	jl	Lj4382
	decl	-32(%ebp)
	.balign 4,0x90
Lj4370:
	incl	-32(%ebp)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	cmpl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_INT64EDGE2+4,%eax
	jl	Lj4371
	jg	Lj4251
	cmpl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_INT64EDGE2,%edx
	jnbe	Lj4251
Lj4371:
	pushl	-12(%ebp)
	pushl	-16(%ebp)
	pushl	$0
	pushl	$10
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	jmp	Lj4381
Lj4372:
	jmp	Lj4251
Lj4381:
	cmpl	-32(%ebp),%esi
	jg	Lj4370
	jmp	Lj4382
Lj4367:
	movl	%ebx,%eax
	negl	%eax
	movl	%eax,%ebx
	movl	$1,-32(%ebp)
	cmpl	-32(%ebp),%ebx
	jl	Lj4384
	decl	-32(%ebp)
	.balign 4,0x90
Lj4385:
	incl	-32(%ebp)
	movl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_MAXINT64,%edx
	movl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_MAXINT64+4,%eax
	subl	$5,%edx
	sbbl	$0,%eax
	cmpl	-12(%ebp),%eax
	jg	Lj4386
	jl	Lj4387
	cmpl	-16(%ebp),%edx
	jnae	Lj4387
Lj4386:
	addl	$5,-16(%ebp)
	adcl	$0,-12(%ebp)
Lj4387:
	pushl	$0
	pushl	$10
	pushl	-12(%ebp)
	pushl	-16(%ebp)
	call	fpc_div_int64
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	cmpl	-32(%ebp),%ebx
	jg	Lj4385
Lj4384:
Lj4382:
	pushl	-12(%ebp)
	pushl	-16(%ebp)
	movl	-36(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	leal	-16(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-8(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-4(%ebp)
	movl	-40(%ebp),%eax
	movl	$0,(%eax)
Lj4251:
	fildq	-8(%ebp)
	movl	-52(%ebp),%ebx
	movl	-48(%ebp),%esi
	movl	-44(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETSTRING$OPENSTRING$PCHAR$LONGINT
SYSTEM_SETSTRING$OPENSTRING$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%edi
	movl	%edx,%eax
	movl	%ecx,%ebx
	movl	8(%ebp),%edx
	cmpl	%eax,%edx
	jng	Lj4409
	movl	%eax,%edx
Lj4409:
	movl	%edx,%esi
	movl	%esi,%ecx
	movl	%eax,%edx
	movl	%edi,%eax
	call	fpc_shortstr_setlength
	testl	%ebx,%ebx
	je	Lj4419
	movl	%ebx,%eax
	movl	%esi,%ecx
	leal	1(%edi),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj4419:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$LONGINT
SYSTEM_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$LONGINT:
	subl	$24,%esp
	movl	%ebx,12(%esp)
	movl	%esi,16(%esp)
	movl	%edi,20(%esp)
	movl	%eax,%ecx
	movzbl	(%ecx),%eax
	movl	%eax,8(%esp)
	movzbl	(%edx),%eax
	movl	%eax,4(%esp)
	cmpl	%eax,8(%esp)
	jng	Lj4433
	movl	4(%esp),%eax
	movl	%eax,(%esp)
	jmp	Lj4436
Lj4433:
	movl	8(%esp),%eax
	movl	%eax,(%esp)
Lj4436:
	movw	$0,%bx
	leal	1(%ecx),%eax
	movl	%eax,%ecx
	leal	1(%edx),%eax
	movl	%eax,%esi
	jmp	Lj4446
	.balign 4,0x90
Lj4445:
	movb	(%ecx),%al
	movb	(%esi),%dl
	cmpb	%dl,%al
	je	Lj4453
	movzbl	%al,%edi
	subl	$97,%edi
	cmpl	$26,%edi
Lj4456:
	jnc	Lj4455
	subb	$32,%al
Lj4455:
	movzbl	%dl,%edi
	subl	$97,%edi
	cmpl	$26,%edi
Lj4459:
	jnc	Lj4458
	subb	$32,%dl
Lj4458:
	cmpb	%dl,%al
	jne	Lj4447
Lj4453:
	incl	%ecx
	incl	%esi
	incw	%bx
Lj4446:
	movswl	%bx,%edi
	cmpl	(%esp),%edi
	jl	Lj4445
Lj4447:
	movswl	%bx,%ecx
	cmpl	(%esp),%ecx
	jnl	Lj4463
	movzbl	%al,%ecx
	movzbl	%dl,%eax
	subl	%eax,%ecx
	jmp	Lj4466
Lj4463:
	movl	8(%esp),%eax
	subl	4(%esp),%eax
	movl	%eax,%ecx
Lj4466:
	movl	%ecx,%eax
	movl	12(%esp),%ebx
	movl	16(%esp),%esi
	movl	20(%esp),%edi
	addl	$24,%esp
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
	jnz	Lj4471
	movl	%ebp,%edx
	movl	$200,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
	jmp	Lj4472
Lj4471:
	movl	12(%ebp),%edx
	movl	8(%ebp),%eax
	testl	%ecx,%ecx
	jnz	Lj4473
	cmpl	%ebx,%edx
	jae	Lj4474
	divl	%ebx
	movl	%ecx,%edx
	jmp	Lj4472
Lj4474:
	movl	%eax,%ecx
	movl	%edx,%eax
	xorl	%edx,%edx
	divl	%ebx
	xchgl	%ecx,%eax
	divl	%ebx
	movl	%ecx,%edx
	jmp	Lj4472
Lj4473:
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
Lj4472:
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
	jnz	Lj4477
	movl	%ebp,%edx
	movl	$200,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
	jmp	Lj4478
Lj4477:
	movl	12(%ebp),%edx
	movl	8(%ebp),%eax
	testl	%ecx,%ecx
	jnz	Lj4479
	cmpl	%ebx,%edx
	jae	Lj4480
	divl	%ebx
	movl	%edx,%eax
	movl	%ecx,%edx
	jmp	Lj4478
Lj4480:
	movl	%eax,%ecx
	movl	%edx,%eax
	xorl	%edx,%edx
	divl	%ebx
	movl	%ecx,%eax
	divl	%ebx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj4478
Lj4479:
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
Lj4478:
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
	jnz	Lj4483
	orl	%ecx,%edx
	movl	8(%ebp),%edx
	movl	16(%ebp),%eax
	jnz	Lj4484
	mull	%edx
	jmp	Lj4485
Lj4484:
	imull	20(%ebp),%edx
	imull	%eax,%ecx
	addl	%edx,%ecx
	mull	8(%ebp)
	addl	%ecx,%edx
Lj4485:
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj4486
Lj4483:
	orl	%ecx,%ecx
	jz	Lj4487
	orl	%edx,%edx
	jnz	Lj4488
Lj4487:
	orl	%ecx,%edx
	movl	8(%ebp),%edi
	movl	16(%ebp),%esi
	jnz	Lj4489
	movl	%edi,%eax
	mull	%esi
	movl	%eax,%esi
	movl	%edx,%edi
	jmp	Lj4490
Lj4489:
	movl	20(%ebp),%eax
	mull	%edi
	movl	%eax,%edi
	jc	Lj4488
	movl	%esi,%eax
	mull	%ecx
	movl	%eax,%ecx
	jc	Lj4488
	addl	%edi,%ecx
	jc	Lj4488
	movl	8(%ebp),%eax
	mull	%esi
	movl	%eax,%esi
	movl	%edx,%edi
	addl	%ecx,%edi
	jc	Lj4488
Lj4490:
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	jmp	Lj4486
Lj4488:
	movb	$1,-21(%ebp)
Lj4486:
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	cmpb	$0,-21(%ebp)
	je	Lj4496
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj4496:
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
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	$0,%esi
	movl	$0,%edx
	decl	%edx
	.balign 4,0x90
Lj4507:
	incl	%edx
	movl	$-2147483648,%ebx
	movl	%edx,%ecx
	shrl	%cl,%ebx
	movl	12(%ebp),%ecx
	andl	%ecx,%ebx
	je	Lj4509
	movl	%esi,%eax
	jmp	Lj4501
Lj4509:
	incl	%esi
	cmpl	$31,%edx
	jl	Lj4507
	movl	$0,%edx
	decl	%edx
	.balign 4,0x90
Lj4514:
	incl	%edx
	movl	$-2147483648,%ebx
	movl	%edx,%ecx
	shrl	%cl,%ebx
	movl	8(%ebp),%ecx
	andl	%ecx,%ebx
	je	Lj4516
	movl	%esi,%eax
	jmp	Lj4501
Lj4516:
	incl	%esi
	cmpl	$31,%edx
	jl	Lj4514
	movl	%esi,%eax
Lj4501:
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
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
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	8(%ebp),%ebx
	movl	12(%ebp),%esi
	cmpl	$0,-8(%ebp)
	jne	Lj4524
	cmpl	$0,-12(%ebp)
	jne	Lj4524
Lj4523:
	movl	%ebp,%edx
	movl	$200,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj4524:
	movb	$0,%dl
	testl	%esi,%esi
	jl	Lj4531
	jg	Lj4532
	testl	%ebx,%ebx
	jnb	Lj4532
Lj4531:
	testb	%dl,%dl
	seteb	%dl
	movl	%ebx,%eax
	movl	%esi,%ecx
	notl	%ecx
	negl	%eax
	sbbl	$-1,%ecx
	movl	%eax,-20(%ebp)
	movl	%ecx,-16(%ebp)
	jmp	Lj4537
Lj4532:
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
Lj4537:
	cmpl	$0,-8(%ebp)
	jl	Lj4540
	jg	Lj4541
	cmpl	$0,-12(%ebp)
	jnb	Lj4541
Lj4540:
	testb	%dl,%dl
	seteb	%dl
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%eax
	notl	%eax
	negl	%ecx
	sbbl	$-1,%eax
	movl	%ecx,-4(%ebp)
	movl	%eax,%ebx
	jmp	Lj4546
Lj4541:
	movl	-12(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-8(%ebp),%ebx
Lj4546:
	testb	%dl,%dl
	je	Lj4550
	pushl	%ebx
	pushl	-4(%ebp)
	pushl	-16(%ebp)
	pushl	-20(%ebp)
	call	fpc_div_qword
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,%edi
	movl	%edx,%esi
	jmp	Lj4557
Lj4550:
	pushl	%ebx
	pushl	-4(%ebp)
	pushl	-16(%ebp)
	pushl	-20(%ebp)
	call	fpc_div_qword
	movl	%eax,%edi
	movl	%edx,%esi
Lj4557:
	movl	%esi,%edx
	movl	%edi,%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
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
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	16(%ebp),%ebx
	movl	20(%ebp),%esi
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%edi
	testl	%esi,%esi
	jne	Lj4567
	testl	%ebx,%ebx
	jne	Lj4567
Lj4566:
	movl	%ebp,%edx
	movl	$200,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj4567:
	testl	%esi,%esi
	jl	Lj4572
	jg	Lj4573
	testl	%ebx,%ebx
	jnb	Lj4573
Lj4572:
	movl	%ebx,%eax
	movl	%esi,%ecx
	notl	%ecx
	negl	%eax
	sbbl	$-1,%ecx
	movl	%eax,%edx
	movl	%ecx,%eax
	jmp	Lj4576
Lj4573:
	movl	%ebx,%edx
	movl	%esi,%eax
Lj4576:
	testl	%edi,%edi
	jl	Lj4579
	jg	Lj4580
	cmpl	$0,-4(%ebp)
	jnb	Lj4580
Lj4579:
	movb	$1,-8(%ebp)
	movl	-4(%ebp),%ecx
	movl	%edi,%esi
	notl	%esi
	negl	%ecx
	sbbl	$-1,%esi
	movl	%ecx,%ebx
	movl	%esi,%ecx
	jmp	Lj4585
Lj4580:
	movb	$0,-8(%ebp)
	movl	-4(%ebp),%ebx
	movl	%edi,%ecx
Lj4585:
	pushl	%eax
	pushl	%edx
	movl	%ebx,%edx
	movl	%ecx,%eax
	pushl	%eax
	pushl	%edx
	call	fpc_mod_qword
	movb	-8(%ebp),%cl
	testb	%cl,%cl
	je	Lj4597
	movl	%eax,%ebx
	movl	%edx,%ecx
	notl	%ecx
	negl	%ebx
	sbbl	$-1,%ecx
	jmp	Lj4600
Lj4597:
	movl	%eax,%ebx
	movl	%edx,%ecx
Lj4600:
	movl	%ecx,%edx
	movl	%ebx,%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
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
	subl	$36,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	16(%ebp),%ecx
	movl	20(%ebp),%ebx
	movl	8(%ebp),%edx
	movl	%edx,-24(%ebp)
	movl	12(%ebp),%edx
	movl	%eax,-16(%ebp)
	movb	$0,-20(%ebp)
	testl	%ebx,%ebx
	jl	Lj4607
	jg	Lj4608
	testl	%ecx,%ecx
	jnb	Lj4608
Lj4607:
	movb	-20(%ebp),%al
	testb	%al,%al
	seteb	-20(%ebp)
	movl	%ecx,%eax
	movl	%ebx,%esi
	notl	%esi
	negl	%eax
	sbbl	$-1,%esi
	movl	%eax,%edi
	jmp	Lj4613
Lj4608:
	movl	%ecx,%edi
	movl	%ebx,%esi
Lj4613:
	testl	%edx,%edx
	jl	Lj4616
	jg	Lj4617
	cmpl	$0,-24(%ebp)
	jnb	Lj4617
Lj4616:
	movb	-20(%ebp),%al
	testb	%al,%al
	seteb	-20(%ebp)
	movl	-24(%ebp),%eax
	movl	%edx,%ebx
	notl	%ebx
	negl	%eax
	sbbl	$-1,%ebx
	movl	%eax,%ecx
	movl	%ebx,%eax
	jmp	Lj4622
Lj4617:
	movl	-24(%ebp),%ecx
	movl	%edx,%eax
Lj4622:
	movl	%edi,-4(%ebp)
	movl	%esi,%edi
	pushl	%edi
	pushl	-4(%ebp)
	movl	%ecx,%esi
	movl	%eax,%ebx
	pushl	%ebx
	pushl	%esi
	movl	$0,%eax
	call	fpc_mul_qword
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj4634
	testl	%edi,%edi
	jne	Lj4638
	cmpl	$0,-4(%ebp)
	je	Lj4639
Lj4638:
	movl	$-1,%eax
	jmp	Lj4640
Lj4639:
	movl	$0,%eax
Lj4640:
	testl	%eax,%eax
	je	Lj4634
	testl	%ebx,%ebx
	jne	Lj4641
	testl	%esi,%esi
	je	Lj4642
Lj4641:
	movl	$-1,%eax
	jmp	Lj4643
Lj4642:
	movl	$0,%eax
Lj4643:
	testl	%eax,%eax
	je	Lj4634
	cmpl	-8(%ebp),%edi
	ja	Lj4644
	jb	Lj4647
	movl	-4(%ebp),%eax
	cmpl	-12(%ebp),%eax
	ja	Lj4644
Lj4647:
	cmpl	-8(%ebp),%ebx
	ja	Lj4644
	jb	Lj4646
	cmpl	-12(%ebp),%esi
	ja	Lj4644
Lj4646:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$0,%edx
	shrl	$31,%eax
	testl	%edx,%edx
	jne	Lj4648
	testl	%eax,%eax
	je	Lj4645
Lj4648:
	cmpl	$-2147483648,-8(%ebp)
	jne	Lj4644
	cmpl	$0,-12(%ebp)
	jne	Lj4644
Lj4649:
	movb	-20(%ebp),%al
	testb	%al,%al
	jne	Lj4645
Lj4644:
	movl	$-1,%eax
	jmp	Lj4650
Lj4645:
	movl	$0,%eax
Lj4650:
	testl	%eax,%eax
	je	Lj4634
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj4634:
	movb	-20(%ebp),%al
	testb	%al,%al
	je	Lj4656
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	jmp	Lj4659
Lj4656:
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
Lj4659:
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret	$16

.text
	.balign 4,0x90
SYSTEM_TRANSLATEPLACEHOLDERCP$WORD$$WORD:
	movw	%ax,%dx
	movw	%dx,%ax
	subw	$1,%dx
	jnbe	Lj4667
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
Lj4667:
Lj4666:
	ret

.text
	.balign 4,0x90
SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edx,%ebx
	movl	%ecx,-4(%ebp)
	movl	12(%ebp),%esi
	movl	8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	leal	(%edx,%esi,1),%edx
	leal	(%eax,%ebx,1),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_FPC_PCHAR_PCHAR_INTERN_CHARMOVE$PCHAR$LONGINT$PCHAR$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	%edx,%ebx
	movl	%ecx,%edx
	movl	12(%ebp),%esi
	movl	8(%ebp),%ecx
	leal	(%edx,%esi,1),%edx
	leal	(%eax,%ebx,1),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_FPC_SHORTSTR_ANSISTR_INTERN_CHARMOVE$SHORTSTRING$LONGINT$ANSISTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%eax,%ebx
	movl	%ecx,-4(%ebp)
	movl	12(%ebp),%ecx
	movl	8(%ebp),%esi
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	leal	(%eax,%ecx,1),%eax
	andl	$255,%edx
	leal	(%ebx,%edx,1),%ecx
	movl	%esi,%ebx
	movl	%eax,%edx
	movl	%ecx,%eax
	movl	%ebx,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_NEWANSISTRING$LONGINT$$POINTER:
	subl	$4,%esp
	movl	%eax,%edx
	addl	$13,%edx
	movl	%esp,%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj4702
	movl	(%esp),%eax
	movl	$1,4(%eax)
	movl	(%esp),%eax
	movl	$0,8(%eax)
	movl	(%esp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movw	%dx,(%eax)
	movl	(%esp),%eax
	movw	$1,2(%eax)
	addl	$12,(%esp)
	movl	(%esp),%eax
	movb	$0,(%eax)
Lj4702:
	movl	(%esp),%eax
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_incr_ref
fpc_ansistr_incr_ref:
.globl	FPC_ANSISTR_INCR_REF
FPC_ANSISTR_INCR_REF:
	testl	%eax,%eax
	je	Lj4715
	movl	%eax,%edx
	subl	$12,%edx
	movl	4(%edx),%edx
	testl	%edx,%edx
	jl	Lj4715
	subl	$12,%eax
	addl	$4,%eax
	movl	TC_SYSTEM_ISMULTITHREAD,%edx
	testl	%edx,%edx
	jne	Lj4724
	incl	(%eax)
	jmp	Lj4725
Lj4724:
	call	SYSTEM_CPUINCLOCKED$LONGINT
Lj4725:
Lj4715:
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_assign
fpc_ansistr_assign:
.globl	FPC_ANSISTR_ASSIGN
FPC_ANSISTR_ASSIGN:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	(%ebx),%eax
	cmpl	%esi,%eax
	je	Lj4728
	testl	%esi,%esi
	je	Lj4733
	movl	%esi,%eax
	subl	$12,%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jng	Lj4735
	movl	%esi,%eax
	subl	$12,%eax
	addl	$4,%eax
	movl	TC_SYSTEM_ISMULTITHREAD,%edx
	testl	%edx,%edx
	jne	Lj4739
	incl	(%eax)
	jmp	Lj4740
Lj4739:
	call	SYSTEM_CPUINCLOCKED$LONGINT
Lj4740:
Lj4735:
Lj4733:
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%esi,(%ebx)
Lj4728:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
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
	movw	8(%ebp),%ax
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
	jne	Lj4749
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
	je	Lj4768
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj4768:
	pushl	%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
Lj4749:
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
	je	Lj4750
	call	FPC_RERAISE
Lj4750:
	movl	-68(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_ansistr_concat
fpc_ansistr_concat:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,%dx
	subw	$1,%ax
	jnbe	Lj4795
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
Lj4795:
Lj4794:
	movw	%dx,-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4800
	movw	-16(%ebp),%si
	jmp	Lj4803
Lj4800:
	movl	-8(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,%si
Lj4803:
	movw	%si,%bx
	subw	$1,%si
	jnbe	Lj4816
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%bx
Lj4816:
Lj4815:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4821
	movw	-16(%ebp),%si
	jmp	Lj4824
Lj4821:
	movl	-12(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,%si
Lj4824:
	movw	%si,%ax
	subw	$1,%si
	jnbe	Lj4837
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
Lj4837:
Lj4836:
	cmpw	-16(%ebp),%bx
	jne	Lj4841
Lj4843:
	cmpw	-16(%ebp),%ax
	je	Lj4842
Lj4841:
	pushl	-16(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ANSISTR_CONCAT_COMPLEX$ANSISTRING$ANSISTRING$ANSISTRING$WORD
	jmp	Lj4781
Lj4842:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4853
	movl	-12(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-12(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj4781
Lj4853:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4857
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj4781
Lj4857:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4862
	movl	-4(%eax),%eax
Lj4862:
	movl	%eax,%esi
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4865
	movl	-4(%eax),%eax
Lj4865:
	movl	%eax,%edi
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	jne	Lj4867
	movl	-8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	seteb	%bl
	movl	%edi,%edx
	addl	%esi,%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	testb	%bl,%bl
	je	Lj4875
	pushl	%esi
	pushl	%edi
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj4882
	movl	$FPC_EMPTYCHAR,%eax
Lj4882:
	movl	-4(%ebp),%edx
	movl	$0,%ebx
	movl	%edx,%ecx
	movl	%ebx,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
	jmp	Lj4899
Lj4875:
	pushl	%esi
	movl	%edi,%eax
	incl	%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4894
	movl	$FPC_EMPTYCHAR,%eax
Lj4894:
	movl	-4(%ebp),%edx
	movl	$0,%ebx
	movl	%edx,%ecx
	movl	%ebx,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
	jmp	Lj4899
Lj4867:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-12(%ebp),%eax
	jne	Lj4901
	movl	%edi,%edx
	addl	%esi,%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	pushl	%esi
	movl	%edi,%eax
	incl	%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj4912
	movl	$FPC_EMPTYCHAR,%eax
Lj4912:
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
	pushl	$0
	pushl	%esi
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4923
	movl	$FPC_EMPTYCHAR,%eax
Lj4923:
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
	jmp	Lj4928
Lj4901:
	movl	%edi,%edx
	addl	%esi,%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	pushl	$0
	pushl	%esi
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4939
	movl	$FPC_EMPTYCHAR,%eax
Lj4939:
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
	pushl	%esi
	movl	%edi,%eax
	incl	%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4950
	movl	$FPC_EMPTYCHAR,%eax
Lj4950:
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
Lj4928:
Lj4899:
	movw	-16(%ebp),%dx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
Lj4781:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_concat_multi
fpc_ansistr_concat_multi:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$96,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	movl	%edi,-88(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-76(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj4963
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4967
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj4963
Lj4967:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-84(%ebp)
	movl	$0,-80(%ebp)
	jmp	Lj4977
	.balign 4,0x90
Lj4976:
	incl	-80(%ebp)
Lj4977:
	movl	-80(%ebp),%eax
	cmpl	-76(%ebp),%eax
	jnle	Lj4978
	movl	-8(%ebp),%eax
	movl	-80(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj4976
Lj4978:
	movl	-80(%ebp),%eax
	cmpl	-76(%ebp),%eax
	jng	Lj4981
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj4963
Lj4981:
	movw	-84(%ebp),%ax
	movw	%ax,%dx
	subw	$1,%ax
	jnbe	Lj4992
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
Lj4992:
Lj4991:
	movw	%dx,-84(%ebp)
	movb	$1,%bl
	movl	-8(%ebp),%eax
	movl	-80(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,%dx
	subw	$1,%ax
	jnbe	Lj5008
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
Lj5008:
Lj5007:
	movw	%dx,-72(%ebp)
	movl	-76(%ebp),%esi
	movl	-80(%ebp),%eax
	incl	%eax
	movl	%eax,-68(%ebp)
	cmpl	-68(%ebp),%esi
	jl	Lj5013
	decl	-68(%ebp)
	.balign 4,0x90
Lj5014:
	incl	-68(%ebp)
	movl	-8(%ebp),%eax
	movl	-68(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj5016
	movl	-8(%ebp),%eax
	movl	-68(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,%dx
	subw	$1,%ax
	jnbe	Lj5026
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
Lj5026:
Lj5025:
	cmpw	-72(%ebp),%dx
	je	Lj5016
	movb	$0,%bl
	jmp	Lj5013
Lj5016:
	cmpl	-68(%ebp),%esi
	jg	Lj5014
Lj5013:
	testb	%bl,%bl
	jne	Lj5033
	leal	-20(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-20(%ebp)
	movl	-76(%ebp),%ebx
	movl	-80(%ebp),%eax
	movl	%eax,-68(%ebp)
	cmpl	-68(%ebp),%ebx
	jl	Lj5037
	decl	-68(%ebp)
	.balign 4,0x90
Lj5038:
	incl	-68(%ebp)
	movl	-8(%ebp),%eax
	movl	-68(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj5040
	leal	-64(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-64(%ebp)
	movl	-8(%ebp),%eax
	movl	-68(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	leal	-64(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-64(%ebp),%ecx
	movl	-20(%ebp),%eax
	leal	-20(%ebp),%esi
	movl	%eax,%edx
	movl	%esi,%eax
	call	fpc_unicodestr_concat
Lj5040:
	cmpl	-68(%ebp),%ebx
	jg	Lj5038
Lj5037:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj5055
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj5055:
	pushl	%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
	jmp	Lj4963
Lj5033:
	movl	$0,-16(%ebp)
	movl	-80(%ebp),%edi
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj5067
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	-80(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	cmpl	(%ecx),%eax
	jne	Lj5069
	incl	-80(%ebp)
Lj5069:
	movl	-76(%ebp),%ebx
	movl	-80(%ebp),%eax
	movl	%eax,-68(%ebp)
	cmpl	-68(%ebp),%ebx
	jl	Lj5071
	decl	-68(%ebp)
	.balign 4,0x90
Lj5072:
	incl	-68(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-68(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	cmpl	(%edx),%eax
	jne	Lj5074
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	call	FPC_ANSISTR_INCR_REF
	movl	%edi,-80(%ebp)
	jmp	Lj5071
Lj5074:
	cmpl	-68(%ebp),%ebx
	jg	Lj5072
Lj5071:
Lj5067:
	cmpl	%edi,-80(%ebp)
	jne	Lj5082
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
Lj5082:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj5087
	movl	-4(%eax),%eax
Lj5087:
	movl	%eax,%ebx
	movl	$0,%edx
	movl	-76(%ebp),%ecx
	movl	%edi,-68(%ebp)
	cmpl	-68(%ebp),%ecx
	jl	Lj5091
	decl	-68(%ebp)
	.balign 4,0x90
Lj5092:
	incl	-68(%ebp)
	movl	-8(%ebp),%eax
	movl	-68(%ebp),%esi
	movl	(%eax,%esi,4),%eax
	testl	%eax,%eax
	je	Lj5093
	movl	-4(%eax),%eax
Lj5093:
	addl	%eax,%edx
	cmpl	-68(%ebp),%ecx
	jg	Lj5092
Lj5091:
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	addl	%ebx,%eax
	movl	%eax,%esi
	movl	-76(%ebp),%edi
	movl	-80(%ebp),%eax
	movl	%eax,-68(%ebp)
	cmpl	-68(%ebp),%edi
	jl	Lj5101
	decl	-68(%ebp)
	.balign 4,0x90
Lj5102:
	incl	-68(%ebp)
	movl	-8(%ebp),%eax
	movl	-68(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-12(%ebp)
	testl	%eax,%eax
	je	Lj5106
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj5109
	movl	-4(%eax),%eax
Lj5109:
	movl	%eax,%ebx
	incl	%eax
	movl	%eax,%ecx
	movl	%esi,%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	addl	%ebx,%esi
Lj5106:
	cmpl	-68(%ebp),%edi
	jg	Lj5102
Lj5101:
	movw	-72(%ebp),%dx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
	movw	-84(%ebp),%dx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
Lj4963:
	call	FPC_POPADDRSTACK
	leal	-64(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj4964
	call	FPC_RERAISE
Lj4964:
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	movl	-88(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_to_shortstr
fpc_ansistr_to_shortstr:
.globl	FPC_ANSISTR_TO_SHORTSTR
FPC_ANSISTR_TO_SHORTSTR:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%eax,%esi
	movl	%ecx,(%esp)
	movl	(%esp),%eax
	testl	%eax,%eax
	jne	Lj5139
	movb	$0,(%esi)
	jmp	Lj5142
Lj5139:
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj5145
	movl	-4(%eax),%eax
Lj5145:
	movl	%eax,%ebx
	cmpl	%edx,%ebx
	jng	Lj5147
	movl	%edx,%ebx
Lj5147:
	movl	%ebx,%ecx
	leal	1(%esi),%edx
	movl	(%esp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movb	%bl,(%esi)
Lj5142:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_to_ansistr
fpc_shortstr_to_ansistr:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,%ebx
	movl	%edx,(%esp)
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%di
	movzbl	(%ebx),%esi
	movl	%esi,%edx
	movl	(%esp),%eax
	call	fpc_ansistr_setlength
	testl	%esi,%esi
	jng	Lj5169
	movl	%esi,%ecx
	movl	(%esp),%eax
	movl	(%eax),%edx
	leal	1(%ebx),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movw	%di,%dx
	movl	(%esp),%eax
	movb	$0,%cl
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
Lj5169:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_char_to_ansistr
fpc_char_to_ansistr:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movb	%al,%bl
	movl	%edx,(%esp)
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%si
	movl	(%esp),%eax
	movl	$1,%edx
	call	fpc_ansistr_setlength
	movl	(%esp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	jne	Lj5194
	movl	$FPC_EMPTYCHAR,%edx
Lj5194:
	movb	%bl,(%edx)
	movw	%si,%dx
	movl	(%esp),%eax
	movb	$0,%cl
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_pchar_to_ansistr
fpc_pchar_to_ansistr:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,%esi
	movl	%edx,(%esp)
	testl	%esi,%esi
	je	Lj5203
	movb	(%esi),%al
	testb	%al,%al
	jne	Lj5204
Lj5203:
	movl	$0,%ebx
	jmp	Lj5208
Lj5204:
	movl	%esi,%eax
	movb	$0,%cl
	movl	$-1,%edx
	call	SYSTEM_INDEXCHAR$formal$LONGINT$CHAR$$LONGINT
	movl	%eax,%ebx
Lj5208:
	movl	%ebx,%edx
	movl	(%esp),%eax
	call	fpc_ansistr_setlength
	testl	%ebx,%ebx
	jng	Lj5222
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%di
	movl	%ebx,%ecx
	movl	%esi,%eax
	movl	(%esp),%edx
	movl	(%edx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movw	%di,%dx
	movl	(%esp),%eax
	movb	$0,%cl
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
Lj5222:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_chararray_to_ansistr
fpc_chararray_to_ansistr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%edi
	movl	%edx,%esi
	testb	%cl,%cl
	je	Lj5244
	movb	(%edi),%al
	testb	%al,%al
	jne	Lj5246
	movl	$0,%ebx
	jmp	Lj5262
Lj5246:
	movl	%esi,%edx
	incl	%edx
	movl	%edi,%eax
	movb	$0,%cl
	call	SYSTEM_INDEXCHAR$formal$LONGINT$CHAR$$LONGINT
	movl	%eax,%ebx
	cmpl	$-1,%ebx
	jne	Lj5262
	movl	%esi,%eax
	incl	%eax
	movl	%eax,%ebx
	jmp	Lj5262
Lj5244:
	movl	%esi,%eax
	incl	%eax
	movl	%eax,%ebx
Lj5262:
	movl	%ebx,%esi
	movl	%esi,%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_setlength
	testl	%esi,%esi
	jng	Lj5270
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%bx
	movl	%esi,%ecx
	movl	%edi,%eax
	movl	8(%ebp),%edx
	movl	(%edx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movw	%bx,%dx
	movl	8(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
Lj5270:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_ansistr_to_chararray
fpc_ansistr_to_chararray:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,%ebx
	movl	%edx,%edi
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5293
	movl	-4(%eax),%eax
Lj5293:
	movl	%eax,%esi
	movl	%edi,%eax
	incl	%eax
	cmpl	%esi,%eax
	jnl	Lj5295
	movl	%edi,%eax
	incl	%eax
	movl	%eax,%esi
Lj5295:
	testl	%esi,%esi
	jng	Lj5299
	movl	%esi,%ecx
	movl	%ebx,%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj5299:
	movl	%edi,%edx
	incl	%edx
	subl	%esi,%edx
	leal	(%ebx,%esi,1),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
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
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5314
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jne	Lj5318
	movl	$0,%ebx
	jmp	Lj5314
Lj5318:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5322
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5325
	movl	-4(%eax),%eax
Lj5325:
	negl	%eax
	movl	%eax,%ebx
	jmp	Lj5314
Lj5322:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5327
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5330
	movl	-4(%eax),%eax
Lj5330:
	movl	%eax,%ebx
	jmp	Lj5314
Lj5327:
	movl	-4(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,%si
	subw	$1,%ax
	jnbe	Lj5341
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%si
Lj5341:
Lj5340:
	movl	-8(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,%dx
	subw	$1,%ax
	jnbe	Lj5355
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
Lj5355:
Lj5354:
	cmpw	%dx,%si
	jne	Lj5360
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj5363
	movl	-4(%ecx),%ecx
Lj5363:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5366
	movl	-4(%eax),%eax
Lj5366:
	cmpl	%eax,%ecx
	jng	Lj5368
	movl	%eax,%ecx
Lj5368:
	testl	%ecx,%ecx
	jng	Lj5372
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	movl	%eax,%ebx
	testl	%eax,%eax
	jne	Lj5392
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5385
	movl	-4(%eax),%eax
Lj5385:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj5386
	movl	-4(%edx),%edx
Lj5386:
	subl	%edx,%eax
	movl	%eax,%ebx
	jmp	Lj5392
Lj5372:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5390
	movl	-4(%eax),%eax
Lj5390:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj5391
	movl	-4(%edx),%edx
Lj5391:
	subl	%edx,%eax
	movl	%eax,%ebx
	jmp	Lj5392
Lj5360:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-12(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	leal	-12(%ebp),%eax
	movb	$1,%cl
	movw	$65001,%dx
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
	leal	-16(%ebp),%eax
	movb	$1,%cl
	movw	$65001,%dx
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_compare
	movl	%eax,%ebx
Lj5392:
Lj5314:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-12(%ebp)
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5315
	call	FPC_RERAISE
Lj5315:
	movl	%ebx,%eax
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
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
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5429
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jne	Lj5433
	movl	$0,%edi
	jmp	Lj5429
Lj5433:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5437
	movl	$-1,%edi
	jmp	Lj5429
Lj5437:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5441
	movl	$1,%edi
	jmp	Lj5429
Lj5441:
	movl	-4(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,%bx
	subw	$1,%ax
	jnbe	Lj5454
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%bx
Lj5454:
Lj5453:
	movl	-8(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,%dx
	subw	$1,%ax
	jnbe	Lj5468
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
Lj5468:
Lj5467:
	cmpw	%dx,%bx
	jne	Lj5473
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5476
	movl	-4(%eax),%eax
Lj5476:
	movl	%eax,%ebx
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5479
	movl	-4(%eax),%eax
Lj5479:
	movl	%eax,%esi
	movl	%ebx,%eax
	subl	%esi,%eax
	movl	%eax,%edi
	testl	%eax,%eax
	jne	Lj5494
	testl	%ebx,%ebx
	jng	Lj5494
	movl	%ebx,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	movl	%eax,%edi
	jmp	Lj5494
Lj5473:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-12(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	leal	-12(%ebp),%eax
	movb	$1,%cl
	movw	$65001,%dx
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
	leal	-16(%ebp),%eax
	movb	$1,%cl
	movw	$65001,%dx
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj5513
	movl	-4(%eax),%eax
Lj5513:
	movl	%eax,%ebx
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj5516
	movl	-4(%eax),%eax
Lj5516:
	movl	%eax,%esi
	movl	%ebx,%eax
	subl	%esi,%eax
	movl	%eax,%edi
	testl	%eax,%eax
	jne	Lj5520
	testl	%ebx,%ebx
	jng	Lj5522
	movl	%ebx,%ecx
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	movl	%eax,%edi
Lj5522:
Lj5520:
Lj5494:
Lj5429:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-12(%ebp)
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5430
	call	FPC_RERAISE
Lj5430:
	movl	%edi,%eax
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
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
	testl	%eax,%eax
	je	Lj5545
Lj5548:
	subl	$12,%eax
	movl	8(%eax),%eax
	cmpl	%edx,%eax
	jl	Lj5545
Lj5547:
	cmpl	$1,%edx
	jnl	Lj5546
Lj5545:
	call	SYSTEM_GET_PC_ADDR$$POINTER
	movl	%eax,%edx
	movl	%ebp,%ecx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORADDRFRAMEIND$LONGINT$POINTER$POINTER
Lj5546:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_setlength
fpc_ansistr_setlength:
.globl	FPC_ANSISTR_SETLENGTH
FPC_ANSISTR_SETLENGTH:
	subl	$16,%esp
	movl	%ebx,8(%esp)
	movl	%esi,12(%esp)
	movl	%eax,(%esp)
	movl	%edx,%esi
	testl	%esi,%esi
	jng	Lj5558
	movl	(%esp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj5560
	movl	%esi,%eax
	call	SYSTEM_NEWANSISTRING$LONGINT$$POINTER
	movl	(%esp),%edx
	movl	%eax,(%edx)
	movl	(%esp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movw	%dx,(%eax)
	jmp	Lj5567
Lj5560:
	movl	(%esp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movl	4(%eax),%eax
	cmpl	$1,%eax
	jne	Lj5569
	movl	(%esp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movl	%eax,4(%esp)
	call	SYSTEM_MEMSIZE$POINTER$$LONGWORD
	movl	%eax,%ebx
	movl	%esi,%edx
	addl	$12,%edx
	incl	%edx
	cmpl	%ebx,%edx
	jg	Lj5578
Lj5580:
	cmpl	$32,%ebx
	jng	Lj5588
	movl	%ebx,%eax
	movl	%eax,%ecx
	sarl	$31,%ecx
	andl	$1,%ecx
	addl	%ecx,%eax
	sarl	$1,%eax
	cmpl	%edx,%eax
	jnge	Lj5588
Lj5578:
	leal	4(%esp),%eax
	call	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	movl	4(%esp),%eax
	addl	$12,%eax
	movl	(%esp),%edx
	movl	%eax,(%edx)
	jmp	Lj5588
Lj5569:
	movl	%esi,%eax
	call	SYSTEM_NEWANSISTRING$LONGINT$$POINTER
	movl	%eax,4(%esp)
	movl	4(%esp),%edx
	subl	$12,%edx
	movl	(%esp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movw	(%eax),%ax
	movw	%ax,(%edx)
	movl	(%esp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj5597
	movl	-4(%eax),%eax
Lj5597:
	incl	%eax
	movl	%eax,%ebx
	cmpl	%ebx,%esi
	jnl	Lj5599
	movl	%esi,%ecx
	jmp	Lj5602
Lj5599:
	movl	%ebx,%ecx
Lj5602:
	movl	4(%esp),%eax
	movl	(%esp),%edx
	movl	(%edx),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	(%esp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	(%esp),%eax
	movl	4(%esp),%edx
	movl	%edx,(%eax)
Lj5588:
Lj5567:
	movl	(%esp),%eax
	movl	(%eax),%eax
	addl	%esi,%eax
	movb	$0,(%eax)
	movl	(%esp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movl	%esi,8(%eax)
	jmp	Lj5619
Lj5558:
	movl	(%esp),%eax
	call	FPC_ANSISTR_DECR_REF
Lj5619:
	movl	8(%esp),%ebx
	movl	12(%esp),%esi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_FPC_TRUELY_ANSISTR_UNIQUE$POINTER$$POINTER:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%edi
	movl	(%edi),%eax
	subl	$12,%eax
	movl	8(%eax),%ebx
	movl	%ebx,%eax
	call	SYSTEM_NEWANSISTRING$LONGINT$$POINTER
	movl	%ebx,%ecx
	incl	%ecx
	movl	%eax,%esi
	movl	%esi,%edx
	movl	(%edi),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%esi,%edx
	subl	$12,%edx
	movl	%ebx,8(%edx)
	movl	%esi,%eax
	subl	$12,%eax
	movl	(%edi),%edx
	subl	$12,%edx
	movw	(%edx),%dx
	movw	%dx,(%eax)
	movl	%edi,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%esi,%eax
	movl	%eax,(%edi)
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_copy
fpc_ansistr_copy:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,%esi
	movl	%ecx,%edi
	movl	$0,%ebx
	decl	%esi
	testl	%esi,%esi
	jnl	Lj5651
	movl	$0,%esi
Lj5651:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5657
	movl	-4(%eax),%eax
Lj5657:
	cmpl	%edi,%eax
	jl	Lj5654
Lj5656:
	movl	%edi,%eax
	addl	%esi,%eax
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj5658
	movl	-4(%edx),%edx
Lj5658:
	cmpl	%edx,%eax
	jng	Lj5655
Lj5654:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5661
	movl	-4(%eax),%eax
Lj5661:
	subl	%esi,%eax
	movl	%eax,%edi
Lj5655:
	testl	%edi,%edi
	jng	Lj5663
	movl	%edi,%eax
	call	SYSTEM_NEWANSISTRING$LONGINT$$POINTER
	movl	%eax,%ebx
	testl	%eax,%eax
	je	Lj5669
	movl	-4(%ebp),%eax
	addl	%esi,%eax
	movl	%ebx,%edx
	movl	%edi,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%edi,%eax
	addl	%ebx,%eax
	movb	$0,(%eax)
	movl	%ebx,%eax
	subl	$12,%eax
	movl	%edi,8(%eax)
	movl	%ebx,%eax
	subl	$12,%eax
	movl	-4(%ebp),%edx
	subl	$12,%edx
	movw	(%edx),%dx
	movw	%dx,(%eax)
Lj5669:
Lj5663:
	movl	8(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	8(%ebp),%eax
	movl	%ebx,(%eax)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_POS$SHORTSTRING$ANSISTRING$$LONGINT
SYSTEM_POS$SHORTSTRING$ANSISTRING$$LONGINT:
	subl	$28,%esp
	movl	%ebx,16(%esp)
	movl	%esi,20(%esp)
	movl	%edi,24(%esp)
	movl	%eax,4(%esp)
	movl	%edx,(%esp)
	movl	$0,8(%esp)
	movl	4(%esp),%edx
	movzbl	(%edx),%eax
	testl	%eax,%eax
	jng	Lj5691
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj5694
	movl	-4(%eax),%eax
Lj5694:
	movl	4(%esp),%ecx
	movzbl	(%ecx),%edx
	subl	%edx,%eax
	movl	%eax,12(%esp)
	movl	$0,%ebx
	movl	(%esp),%esi
	jmp	Lj5700
	.balign 4,0x90
Lj5699:
	incl	%ebx
	movb	(%esi),%al
	movl	4(%esp),%edx
	cmpb	1(%edx),%al
	jne	Lj5703
	movl	4(%esp),%eax
	movzbl	(%eax),%ecx
	movl	%esi,%edx
	movl	4(%esp),%edi
	leal	1(%edi),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	testl	%eax,%eax
	jne	Lj5703
	movl	%ebx,8(%esp)
	jmp	Lj5686
Lj5703:
	incl	%esi
Lj5700:
	cmpl	12(%esp),%ebx
	jle	Lj5699
Lj5701:
Lj5691:
Lj5686:
	movl	8(%esp),%eax
	movl	16(%esp),%ebx
	movl	20(%esp),%esi
	movl	24(%esp),%edi
	addl	$28,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT:
	subl	$24,%esp
	movl	%ebx,12(%esp)
	movl	%esi,16(%esp)
	movl	%edi,20(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	$0,8(%esp)
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj5719
	movl	-4(%eax),%eax
Lj5719:
	testl	%eax,%eax
	jng	Lj5718
	movl	4(%esp),%eax
	testl	%eax,%eax
	je	Lj5722
	movl	-4(%eax),%eax
Lj5722:
	movl	(%esp),%edx
	testl	%edx,%edx
	je	Lj5723
	movl	-4(%edx),%edx
Lj5723:
	subl	%edx,%eax
	movl	%eax,%edi
	movl	$0,%esi
	movl	4(%esp),%ebx
	jmp	Lj5729
	.balign 4,0x90
Lj5728:
	incl	%esi
	movl	(%esp),%edx
	movb	(%ebx),%al
	cmpb	(%edx),%al
	jne	Lj5732
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj5736
	movl	-4(%eax),%eax
Lj5736:
	movl	%eax,%ecx
	movl	%ebx,%edx
	movl	(%esp),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	testl	%eax,%eax
	jne	Lj5732
	movl	%esi,8(%esp)
	jmp	Lj5713
Lj5732:
	incl	%ebx
Lj5729:
	cmpl	%edi,%esi
	jle	Lj5728
Lj5730:
Lj5718:
Lj5713:
	movl	8(%esp),%eax
	movl	12(%esp),%ebx
	movl	16(%esp),%esi
	movl	20(%esp),%edi
	addl	$24,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
SYSTEM_POS$CHAR$ANSISTRING$$LONGINT:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%edx,(%esp)
	movl	(%esp),%ebx
	movl	(%esp),%esi
	testl	%esi,%esi
	je	Lj5750
	movl	-4(%esi),%esi
Lj5750:
	movl	$1,%edi
	cmpl	%edi,%esi
	jl	Lj5748
	decl	%edi
	.balign 4,0x90
Lj5749:
	incl	%edi
	movb	(%ebx),%cl
	cmpb	%al,%cl
	jne	Lj5752
	movl	%edi,%edx
	jmp	Lj5743
Lj5752:
	incl	%ebx
	cmpl	%edi,%esi
	jg	Lj5749
Lj5748:
	movl	$0,%edx
Lj5743:
	movl	%edx,%eax
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_val_real_ansistr
fpc_val_real_ansistr:
.globl	FPC_VAL_REAL_ANSISTR
FPC_VAL_REAL_ANSISTR:
	subl	$276,%esp
	movl	%ebx,272(%esp)
	movl	%eax,(%esp)
	movl	%edx,%ebx
	fldz
	fstpt	4(%esp)
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj5763
	movl	-4(%eax),%eax
Lj5763:
	cmpl	$255,%eax
	jng	Lj5762
	movl	$256,(%ebx)
	jmp	Lj5766
Lj5762:
	movl	(%esp),%ecx
	leal	16(%esp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	%ebx,%edx
	leal	16(%esp),%eax
	call	fpc_val_real_shortstr
	fstpt	4(%esp)
Lj5766:
	fldt	4(%esp)
	movl	272(%esp),%ebx
	addl	$276,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_val_currency_ansistr
fpc_val_currency_ansistr:
.globl	FPC_VAL_CURRENCY_ANSISTR
FPC_VAL_CURRENCY_ANSISTR:
	subl	$272,%esp
	movl	%ebx,268(%esp)
	movl	%eax,(%esp)
	movl	%edx,%ebx
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj5783
	movl	-4(%eax),%eax
Lj5783:
	cmpl	$255,%eax
	jng	Lj5782
	fldz
	fistpq	4(%esp)
	movl	$256,(%ebx)
	jmp	Lj5788
Lj5782:
	movl	(%esp),%ecx
	leal	12(%esp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	%ebx,%edx
	leal	12(%esp),%eax
	call	fpc_val_real_shortstr
	fldt	_$SYSTEM$_Ld22
	fmulp	%st,%st(1)
	fistpq	4(%esp)
Lj5788:
	fildq	4(%esp)
	movl	268(%esp),%ebx
	addl	$272,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_val_uint_ansistr
fpc_val_uint_ansistr:
.globl	FPC_VAL_UINT_ANSISTR
FPC_VAL_UINT_ANSISTR:
	subl	$268,%esp
	movl	%ebx,260(%esp)
	movl	%esi,264(%esp)
	movl	%eax,(%esp)
	movl	%edx,%ebx
	movl	$0,%esi
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj5807
	movl	-4(%eax),%eax
Lj5807:
	cmpl	$255,%eax
	jng	Lj5806
	movl	$256,(%ebx)
	jmp	Lj5810
Lj5806:
	movl	(%esp),%ecx
	leal	4(%esp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	%ebx,%edx
	leal	4(%esp),%eax
	call	fpc_val_uint_shortstr
	movl	%eax,%esi
Lj5810:
	movl	%esi,%eax
	movl	260(%esp),%ebx
	movl	264(%esp),%esi
	addl	$268,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_val_sint_ansistr
fpc_val_sint_ansistr:
.globl	FPC_VAL_SINT_ANSISTR
FPC_VAL_SINT_ANSISTR:
	subl	$272,%esp
	movl	%ebx,260(%esp)
	movl	%esi,264(%esp)
	movl	%edi,268(%esp)
	movl	%eax,%edi
	movl	%edx,(%esp)
	movl	%ecx,%ebx
	movl	$0,%esi
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj5829
	movl	-4(%eax),%eax
Lj5829:
	cmpl	$255,%eax
	jng	Lj5828
	movl	$256,(%ebx)
	jmp	Lj5832
Lj5828:
	movl	(%esp),%ecx
	leal	4(%esp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	%ebx,%ecx
	leal	4(%esp),%edx
	movl	%edi,%eax
	call	FPC_VAL_SINT_SHORTSTR
	movl	%eax,%esi
Lj5832:
	movl	%esi,%eax
	movl	260(%esp),%ebx
	movl	264(%esp),%esi
	movl	268(%esp),%edi
	addl	$272,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_val_qword_ansistr
fpc_val_qword_ansistr:
.globl	FPC_VAL_QWORD_ANSISTR
FPC_VAL_QWORD_ANSISTR:
	subl	$272,%esp
	movl	%ebx,260(%esp)
	movl	%esi,264(%esp)
	movl	%edi,268(%esp)
	movl	%eax,(%esp)
	movl	%edx,%edi
	movl	$0,%ebx
	movl	$0,%esi
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj5853
	movl	-4(%eax),%eax
Lj5853:
	cmpl	$255,%eax
	jng	Lj5852
	movl	$256,(%edi)
	jmp	Lj5856
Lj5852:
	movl	(%esp),%ecx
	leal	4(%esp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	%edi,%edx
	leal	4(%esp),%eax
	call	fpc_val_qword_shortstr
	movl	%eax,%ebx
	movl	%edx,%esi
Lj5856:
	movl	%esi,%edx
	movl	%ebx,%eax
	movl	260(%esp),%ebx
	movl	264(%esp),%esi
	movl	268(%esp),%edi
	addl	$272,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_val_int64_ansistr
fpc_val_int64_ansistr:
.globl	FPC_VAL_INT64_ANSISTR
FPC_VAL_INT64_ANSISTR:
	subl	$272,%esp
	movl	%ebx,260(%esp)
	movl	%esi,264(%esp)
	movl	%edi,268(%esp)
	movl	%eax,(%esp)
	movl	%edx,%edi
	movl	$0,%ebx
	movl	$0,%esi
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj5875
	movl	-4(%eax),%eax
Lj5875:
	cmpl	$255,%eax
	jng	Lj5874
	movl	$256,(%edi)
	jmp	Lj5878
Lj5874:
	movl	(%esp),%ecx
	leal	4(%esp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	%edi,%edx
	leal	4(%esp),%eax
	call	fpc_val_int64_shortstr
	movl	%eax,%ebx
	movl	%edx,%esi
Lj5878:
	movl	%esi,%edx
	movl	%ebx,%eax
	movl	260(%esp),%ebx
	movl	264(%esp),%esi
	movl	268(%esp),%edi
	addl	$272,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_float
fpc_ansistr_float:
.globl	FPC_ANSISTR_FLOAT
FPC_ANSISTR_FLOAT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%ebx,-312(%ebp)
	movl	%esi,-308(%ebp)
	movl	%edi,-304(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,%edi
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-300(%ebp)
	leal	-268(%ebp),%ecx
	leal	-292(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5893
	movzwl	20(%ebp),%eax
	pushl	%eax
	pushl	16(%ebp)
	pushl	12(%ebp)
	leal	-256(%ebp),%eax
	pushl	%eax
	pushl	$255
	movl	%edi,%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_STR_REAL$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING
	leal	-300(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-300(%ebp)
	leal	-300(%ebp),%edx
	leal	-256(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-300(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-300(%ebp),%eax
	movl	%eax,(%ebx)
Lj5893:
	call	FPC_POPADDRSTACK
	leal	-300(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-300(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5894
	call	FPC_RERAISE
Lj5894:
	movl	-312(%ebp),%ebx
	movl	-308(%ebp),%esi
	movl	-304(%ebp),%edi
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
	movl	%esi,-312(%ebp)
	movl	%edi,-308(%ebp)
	movl	%eax,-304(%ebp)
	movl	%edx,%ebx
	movl	%ecx,%esi
	movl	12(%ebp),%edi
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-300(%ebp)
	leal	-268(%ebp),%ecx
	leal	-292(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5916
	pushl	%edi
	leal	-256(%ebp),%eax
	pushl	%eax
	pushl	$255
	movl	%esi,%ecx
	movl	%ebx,%edx
	movl	-304(%ebp),%eax
	call	FPC_SHORTSTR_ENUM
	leal	-300(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-300(%ebp)
	leal	-300(%ebp),%edx
	leal	-256(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-300(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-300(%ebp),%eax
	movl	%eax,(%ebx)
Lj5916:
	call	FPC_POPADDRSTACK
	leal	-300(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-300(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5917
	call	FPC_RERAISE
Lj5917:
	movl	-316(%ebp),%ebx
	movl	-312(%ebp),%esi
	movl	-308(%ebp),%edi
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
	subl	$312,%esp
	movl	%ebx,-312(%ebp)
	movl	%esi,-308(%ebp)
	movb	%al,%bl
	movl	%edx,%esi
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-304(%ebp)
	leal	-272(%ebp),%ecx
	leal	-296(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5939
	pushl	$255
	leal	-260(%ebp),%ecx
	movl	%esi,%edx
	movb	%bl,%al
	call	FPC_SHORTSTR_BOOL
	leal	-304(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-304(%ebp)
	leal	-304(%ebp),%edx
	leal	-260(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-304(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-304(%ebp),%eax
	movl	%eax,(%ebx)
Lj5939:
	call	FPC_POPADDRSTACK
	leal	-304(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-304(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5940
	call	FPC_RERAISE
Lj5940:
	movl	-312(%ebp),%ebx
	movl	-308(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_enum_ansistr
fpc_val_enum_ansistr:
.globl	FPC_VAL_ENUM_ANSISTR
FPC_VAL_ENUM_ANSISTR:
	subl	$268,%esp
	movl	%ebx,260(%esp)
	movl	%esi,264(%esp)
	movl	%eax,%ebx
	movl	%edx,(%esp)
	movl	%ecx,%esi
	movl	(%esp),%ecx
	leal	4(%esp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	leal	4(%esp),%edx
	movl	%esi,%ecx
	movl	%ebx,%eax
	call	FPC_VAL_ENUM_SHORTSTR
	movl	260(%esp),%ebx
	movl	264(%esp),%esi
	addl	$268,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_currency
fpc_ansistr_currency:
.globl	FPC_ANSISTR_CURRENCY
FPC_ANSISTR_CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%ebx,-312(%ebp)
	movl	%esi,-308(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-304(%ebp)
	leal	-272(%ebp),%ecx
	leal	-296(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5974
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$255
	leal	-260(%ebp),%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	fpc_shortstr_currency
	leal	-304(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-304(%ebp)
	leal	-304(%ebp),%edx
	leal	-260(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-304(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-304(%ebp),%eax
	movl	%eax,(%ebx)
Lj5974:
	call	FPC_POPADDRSTACK
	leal	-304(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-304(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5975
	call	FPC_RERAISE
Lj5975:
	movl	-312(%ebp),%ebx
	movl	-308(%ebp),%esi
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
	subl	$312,%esp
	movl	%ebx,-312(%ebp)
	movl	%esi,-308(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-304(%ebp)
	leal	-272(%ebp),%ecx
	leal	-296(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5995
	pushl	$255
	leal	-260(%ebp),%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	fpc_shortstr_uint
	leal	-304(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-304(%ebp)
	leal	-304(%ebp),%edx
	leal	-260(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-304(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-304(%ebp),%eax
	movl	%eax,(%ebx)
Lj5995:
	call	FPC_POPADDRSTACK
	leal	-304(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-304(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5996
	call	FPC_RERAISE
Lj5996:
	movl	-312(%ebp),%ebx
	movl	-308(%ebp),%esi
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
	subl	$312,%esp
	movl	%ebx,-312(%ebp)
	movl	%esi,-308(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-304(%ebp)
	leal	-272(%ebp),%ecx
	leal	-296(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj6014
	pushl	$255
	leal	-260(%ebp),%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	fpc_shortstr_sint
	leal	-304(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-304(%ebp)
	leal	-304(%ebp),%edx
	leal	-260(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-304(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-304(%ebp),%eax
	movl	%eax,(%ebx)
Lj6014:
	call	FPC_POPADDRSTACK
	leal	-304(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-304(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6015
	call	FPC_RERAISE
Lj6015:
	movl	-312(%ebp),%ebx
	movl	-308(%ebp),%esi
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
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movl	%esi,-312(%ebp)
	movl	%edi,-308(%ebp)
	movl	8(%ebp),%esi
	movl	12(%ebp),%edi
	movl	%eax,%ebx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-304(%ebp)
	leal	-272(%ebp),%ecx
	leal	-296(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj6033
	pushl	%edi
	pushl	%esi
	leal	-260(%ebp),%edx
	movl	%ebx,%eax
	movl	$255,%ecx
	call	fpc_shortstr_qword
	leal	-304(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-304(%ebp)
	leal	-304(%ebp),%edx
	leal	-260(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-304(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-304(%ebp),%eax
	movl	%eax,(%ebx)
Lj6033:
	call	FPC_POPADDRSTACK
	leal	-304(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-304(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6034
	call	FPC_RERAISE
Lj6034:
	movl	-316(%ebp),%ebx
	movl	-312(%ebp),%esi
	movl	-308(%ebp),%edi
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
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movl	%esi,-312(%ebp)
	movl	%edi,-308(%ebp)
	movl	8(%ebp),%esi
	movl	12(%ebp),%edi
	movl	%eax,%ebx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-304(%ebp)
	leal	-272(%ebp),%ecx
	leal	-296(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj6052
	pushl	%edi
	pushl	%esi
	leal	-260(%ebp),%edx
	movl	%ebx,%eax
	movl	$255,%ecx
	call	fpc_shortstr_int64
	leal	-304(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-304(%ebp)
	leal	-304(%ebp),%edx
	leal	-260(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-304(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-304(%ebp),%eax
	movl	%eax,(%ebx)
Lj6052:
	call	FPC_POPADDRSTACK
	leal	-304(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-304(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6053
	call	FPC_RERAISE
Lj6053:
	movl	-316(%ebp),%ebx
	movl	-312(%ebp),%esi
	movl	-308(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,%edi
	movl	%ecx,%ebx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj6073
	movl	-4(%eax),%eax
Lj6073:
	movl	%eax,%esi
	cmpl	%esi,%edi
	jg	Lj6069
Lj6077:
	testl	%edi,%edi
	jle	Lj6069
Lj6076:
	testl	%ebx,%ebx
	jle	Lj6069
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_UNIQUE
	movl	%esi,%eax
	subl	%edi,%eax
	cmpl	%ebx,%eax
	jnl	Lj6081
	movl	%esi,%eax
	subl	%edi,%eax
	incl	%eax
	movl	%eax,%ebx
Lj6081:
	movl	%esi,%eax
	subl	%edi,%eax
	cmpl	%ebx,%eax
	jnge	Lj6085
	decl	%edi
	pushl	%edi
	movl	%esi,%eax
	subl	%edi,%eax
	subl	%ebx,%eax
	incl	%eax
	pushl	%eax
	movl	%ebx,%edx
	addl	%edi,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj6094
	movl	$FPC_EMPTYCHAR,%eax
Lj6094:
	movl	-4(%ebp),%ecx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
Lj6085:
	movl	%esi,%edx
	subl	%ebx,%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
Lj6069:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INSERT$ANSISTRING$ANSISTRING$LONGINT
SYSTEM_INSERT$ANSISTRING$ANSISTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,%esi
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj6103
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6108
	movl	-4(%eax),%eax
Lj6108:
	testl	%eax,%eax
	je	Lj6103
	testl	%esi,%esi
	jnle	Lj6110
	movl	$1,%esi
Lj6110:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj6115
	movl	-4(%eax),%eax
Lj6115:
	movl	%eax,%ebx
	cmpl	%ebx,%esi
	jng	Lj6117
	movl	%ebx,%eax
	incl	%eax
	movl	%eax,%esi
Lj6117:
	decl	%esi
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj6122
	movl	-4(%edx),%edx
Lj6122:
	addl	%ebx,%edx
	leal	-12(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj6127
	movl	-4(%eax),%eax
Lj6127:
	testl	%eax,%eax
	je	Lj6126
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,%di
	subw	$1,%ax
	jnbe	Lj6142
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%di
Lj6137:
	jmp	Lj6142
Lj6126:
	movl	-4(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,%dx
	subw	$1,%ax
	jnbe	Lj6153
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
Lj6153:
Lj6152:
	movw	%dx,%di
Lj6142:
	movw	%di,%dx
	leal	-12(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
	testl	%esi,%esi
	jng	Lj6164
	pushl	$0
	pushl	%esi
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj6171
	movl	$FPC_EMPTYCHAR,%eax
Lj6171:
	leal	-12(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
Lj6164:
	pushl	%esi
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6180
	movl	-4(%eax),%eax
Lj6180:
	pushl	%eax
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj6183
	movl	$FPC_EMPTYCHAR,%eax
Lj6183:
	leal	-12(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
	movl	%ebx,%eax
	subl	%esi,%eax
	testl	%eax,%eax
	jng	Lj6189
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6192
	movl	-4(%eax),%eax
Lj6192:
	addl	%esi,%eax
	pushl	%eax
	movl	%ebx,%eax
	subl	%esi,%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj6197
	movl	$FPC_EMPTYCHAR,%eax
Lj6197:
	leal	-12(%ebp),%ecx
	movl	%esi,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
Lj6189:
	movl	-12(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-12(%ebp),%eax
	movl	%eax,(%ebx)
Lj6103:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6104
	call	FPC_RERAISE
Lj6104:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movb	%al,%bl
	movl	%ecx,(%esp)
	movl	(%esp),%eax
	call	fpc_ansistr_setlength
	movl	(%esp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj6218
	movl	-4(%edx),%edx
Lj6218:
	movl	(%esp),%eax
	movl	(%eax),%eax
	movb	%bl,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETSTRING$ANSISTRING$PCHAR$LONGINT
SYSTEM_SETSTRING$ANSISTRING$PCHAR$LONGINT:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%eax,(%esp)
	movl	%edx,%ebx
	movl	%ecx,%esi
	movl	(%esp),%eax
	movl	$0,(%eax)
	movl	%esi,%edx
	movl	(%esp),%eax
	call	fpc_ansistr_setlength
	testl	%ebx,%ebx
	je	Lj6230
	movl	%esi,%ecx
	movl	%ebx,%eax
	movl	(%esp),%edx
	movl	(%edx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj6230:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETSTRING$ANSISTRING$PWIDECHAR$LONGINT
SYSTEM_SETSTRING$ANSISTRING$PWIDECHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,%eax
	movl	%ecx,%esi
	movl	-4(%ebp),%edx
	movl	$0,(%edx)
	testl	%eax,%eax
	je	Lj6244
	testl	%esi,%esi
	jng	Lj6244
	pushl	%esi
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-4(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER,%ebx
	call	*%ebx
	jmp	Lj6254
Lj6244:
	movl	%esi,%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
Lj6254:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UPCASE$ANSISTRING$$ANSISTRING
SYSTEM_UPCASE$ANSISTRING$$ANSISTRING:
	subl	$20,%esp
	movl	%ebx,8(%esp)
	movl	%esi,12(%esp)
	movl	%edi,16(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	testl	%edx,%edx
	je	Lj6263
	movl	-4(%edx),%edx
Lj6263:
	movl	4(%esp),%eax
	call	fpc_ansistr_setlength
	movl	(%esp),%ebx
	testl	%ebx,%ebx
	je	Lj6269
	movl	-4(%ebx),%ebx
Lj6269:
	movl	$1,%esi
	cmpl	%esi,%ebx
	jl	Lj6267
	decl	%esi
	.balign 4,0x90
Lj6268:
	incl	%esi
	movl	4(%esp),%eax
	call	fpc_ansistr_unique
	movl	%eax,%edi
	movl	(%esp),%eax
	movb	-1(%eax,%esi,1),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	movb	%al,-1(%edi,%esi,1)
	cmpl	%esi,%ebx
	jg	Lj6268
Lj6267:
	movl	8(%esp),%ebx
	movl	12(%esp),%esi
	movl	16(%esp),%edi
	addl	$20,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LOWERCASE$ANSISTRING$$ANSISTRING
SYSTEM_LOWERCASE$ANSISTRING$$ANSISTRING:
	subl	$20,%esp
	movl	%ebx,8(%esp)
	movl	%esi,12(%esp)
	movl	%edi,16(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	testl	%edx,%edx
	je	Lj6280
	movl	-4(%edx),%edx
Lj6280:
	movl	4(%esp),%eax
	call	fpc_ansistr_setlength
	movl	(%esp),%ebx
	testl	%ebx,%ebx
	je	Lj6286
	movl	-4(%ebx),%ebx
Lj6286:
	movl	$1,%esi
	cmpl	%esi,%ebx
	jl	Lj6284
	decl	%esi
	.balign 4,0x90
Lj6285:
	incl	%esi
	movl	4(%esp),%eax
	call	fpc_ansistr_unique
	movl	%eax,%edi
	movl	(%esp),%eax
	movb	-1(%eax,%esi,1),%al
	call	SYSTEM_LOWERCASE$CHAR$$CHAR
	movb	%al,-1(%edi,%esi,1)
	cmpl	%esi,%ebx
	jg	Lj6285
Lj6284:
	movl	8(%esp),%ebx
	movl	12(%esp),%esi
	movl	16(%esp),%edi
	addl	$20,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD:
	subl	$4,%esp
	movl	%eax,(%esp)
	cmpl	$0,(%esp)
	je	Lj6296
	movl	(%esp),%eax
	subl	$12,%eax
	movw	(%eax),%ax
	jmp	Lj6299
Lj6296:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
Lj6299:
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_STRINGELEMENTSIZE$ANSISTRING$$WORD
SYSTEM_STRINGELEMENTSIZE$ANSISTRING$$WORD:
	subl	$4,%esp
	movl	%eax,(%esp)
	cmpl	$0,(%esp)
	je	Lj6305
	movl	(%esp),%eax
	subl	$12,%eax
	movw	2(%eax),%ax
	jmp	Lj6308
Lj6305:
	movw	$1,%ax
Lj6308:
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_STRINGREFCOUNT$ANSISTRING$$LONGINT
SYSTEM_STRINGREFCOUNT$ANSISTRING$$LONGINT:
	subl	$4,%esp
	movl	%eax,(%esp)
	cmpl	$0,(%esp)
	je	Lj6314
	movl	(%esp),%eax
	subl	$12,%eax
	movl	4(%eax),%eax
	jmp	Lj6317
Lj6314:
	movl	$0,%eax
Lj6317:
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_INTERNALSETCODEPAGE$ANSISTRING$WORD$BOOLEAN:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	movw	%dx,%bx
	testb	%cl,%cl
	je	Lj6323
	movl	(%esp),%eax
	call	FPC_ANSISTR_UNIQUE
	movl	(%esp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movw	%bx,(%eax)
	jmp	Lj6328
Lj6323:
	movl	(%esp),%eax
	call	FPC_ANSISTR_UNIQUE
	movl	(%esp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movw	%bx,(%eax)
Lj6328:
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj6333
	movl	(%esp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movw	(%eax),%ax
	cmpw	%dx,%ax
	je	Lj6333
	movw	%ax,%bx
	subw	$1,%ax
	jnbe	Lj6349
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%bx
Lj6349:
Lj6348:
	movw	%dx,%ax
	movw	%ax,%si
	subw	$1,%ax
	jnbe	Lj6361
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%si
Lj6361:
Lj6360:
	testb	%cl,%cl
	je	Lj6366
	cmpw	%si,%bx
	je	Lj6366
	movb	$1,%cl
	jmp	Lj6368
Lj6366:
	movb	$0,%cl
Lj6368:
	testb	%cl,%cl
	jne	Lj6370
	movl	(%esp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movl	4(%eax),%eax
	cmpl	$1,%eax
	jne	Lj6370
	movl	(%esp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movw	%dx,(%eax)
	jmp	Lj6374
Lj6370:
	movl	(%esp),%eax
	call	SYSTEM_INTERNALSETCODEPAGE$ANSISTRING$WORD$BOOLEAN
Lj6374:
Lj6333:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETMULTIBYTECONVERSIONCODEPAGE$WORD
SYSTEM_SETMULTIBYTECONVERSIONCODEPAGE$WORD:
	movw	%ax,U_SYSTEM_DEFAULTSYSTEMCODEPAGE
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETMULTIBYTEFILESYSTEMCODEPAGE$WORD
SYSTEM_SETMULTIBYTEFILESYSTEMCODEPAGE$WORD:
	movw	%ax,U_SYSTEM_DEFAULTFILESYSTEMCODEPAGE
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETMULTIBYTERTLFILESYSTEMCODEPAGE$WORD
SYSTEM_SETMULTIBYTERTLFILESYSTEMCODEPAGE$WORD:
	movw	%ax,U_SYSTEM_DEFAULTRTLFILESYSTEMCODEPAGE
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_append_char
fpc_ansistr_append_char:
.globl	FPC_ANSISTR_APPEND_CHAR
FPC_ANSISTR_APPEND_CHAR:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	movb	%dl,%bl
	movl	(%esp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj6397
	movl	-4(%edx),%edx
Lj6397:
	incl	%edx
	movl	(%esp),%eax
	call	fpc_ansistr_setlength
	movl	(%esp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj6402
	movl	-4(%edx),%edx
Lj6402:
	movl	(%esp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	decl	%edx
	movb	%bl,(%edx)
	movl	(%esp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj6405
	movl	-4(%edx),%edx
Lj6405:
	movl	(%esp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	movb	$0,(%edx)
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_append_shortstring
fpc_ansistr_append_shortstring:
.globl	FPC_ANSISTR_APPEND_SHORTSTRING
FPC_ANSISTR_APPEND_SHORTSTRING:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%eax,(%esp)
	movl	%edx,%ebx
	movzbl	(%ebx),%eax
	testl	%eax,%eax
	je	Lj6406
	movl	(%esp),%eax
	movl	(%eax),%esi
	testl	%esi,%esi
	je	Lj6412
	movl	-4(%esi),%esi
Lj6412:
	movzbl	(%ebx),%edx
	addl	%esi,%edx
	movl	(%esp),%eax
	call	fpc_ansistr_setlength
	movl	(%esp),%eax
	movl	(%eax),%edx
	addl	%esi,%edx
	movzbl	(%ebx),%ecx
	leal	1(%ebx),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	(%esp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj6425
	movl	-4(%edx),%edx
Lj6425:
	movl	(%esp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	movb	$0,(%edx)
Lj6406:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_append_ansistring
fpc_ansistr_append_ansistring:
.globl	FPC_ANSISTR_APPEND_ANSISTRING
FPC_ANSISTR_APPEND_ANSISTRING:
	subl	$20,%esp
	movl	%ebx,8(%esp)
	movl	%esi,12(%esp)
	movl	%edi,16(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	4(%esp),%eax
	testl	%eax,%eax
	je	Lj6426
	movl	(%esp),%eax
	movl	(%eax),%eax
	cmpl	4(%esp),%eax
	seteb	%bl
	movl	4(%esp),%eax
	testl	%eax,%eax
	je	Lj6434
	movl	-4(%eax),%eax
Lj6434:
	movl	%eax,%esi
	movl	(%esp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj6437
	movl	-4(%eax),%eax
Lj6437:
	movl	%eax,%edi
	movl	%esi,%edx
	addl	%edi,%edx
	movl	(%esp),%eax
	call	fpc_ansistr_setlength
	testb	%bl,%bl
	jne	Lj6443
	movl	(%esp),%eax
	movl	(%eax),%edx
	addl	%edi,%edx
	movl	%esi,%eax
	incl	%eax
	movl	4(%esp),%ebx
	movl	%eax,%ecx
	movl	%ebx,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj6450
Lj6443:
	movl	(%esp),%eax
	movl	(%eax),%edx
	addl	%edi,%edx
	movl	%esi,%ecx
	incl	%ecx
	movl	(%esp),%eax
	movl	(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj6450:
Lj6426:
	movl	8(%esp),%ebx
	movl	12(%esp),%esi
	movl	16(%esp),%edi
	addl	$20,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DEFAULTUNICODE2ANSIMOVE$PUNICODECHAR$ANSISTRING$WORD$LONGINT
SYSTEM_DEFAULTUNICODE2ANSIMOVE$PUNICODECHAR$ANSISTRING$WORD$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%eax,%ebx
	movl	%edx,-4(%ebp)
	movl	8(%ebp),%esi
	movl	%esi,%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	$1,%ecx
	cmpl	%ecx,%esi
	jl	Lj6466
	decl	%ecx
	.balign 4,0x90
Lj6467:
	incl	%ecx
	movzwl	(%ebx),%eax
	cmpl	$256,%eax
	jnl	Lj6469
	movb	(%ebx),%al
	movb	%al,(%edx)
	jmp	Lj6472
Lj6469:
	movb	$63,(%edx)
Lj6472:
	addl	$2,%ebx
	incl	%edx
	cmpl	%ecx,%esi
	jg	Lj6467
Lj6466:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_DEFAULTANSI2UNICODEMOVE$PCHAR$WORD$UNICODESTRING$LONGINT
SYSTEM_DEFAULTANSI2UNICODEMOVE$PCHAR$WORD$UNICODESTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%eax,%ebx
	movl	%ecx,-4(%ebp)
	movl	8(%ebp),%esi
	movl	%esi,%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-4(%ebp),%eax
	movl	(%eax),%ecx
	movl	$1,%edx
	cmpl	%edx,%esi
	jl	Lj6484
	decl	%edx
	.balign 4,0x90
Lj6485:
	incl	%edx
	movzbw	(%ebx),%ax
	movw	%ax,(%ecx)
	incl	%ebx
	addl	$2,%ecx
	cmpl	%edx,%esi
	jg	Lj6485
Lj6484:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_DEFAULTCHARLENGTHPCHAR$PCHAR$$LONGINT:
	call	fpc_pchar_length
	ret

.text
	.balign 4,0x90
SYSTEM_DEFAULTCODEPOINTLENGTH$PCHAR$LONGINT$$LONGINT:
	movb	(%eax),%al
	testb	%al,%al
	je	Lj6497
	movl	$1,%eax
	jmp	Lj6500
Lj6497:
	movl	$0,%eax
Lj6500:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER
SYSTEM_GETUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER:
	subl	$12,%esp
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,(%esp)
	movl	(%esp),%edi
	movl	$U_SYSTEM_WIDESTRINGMANAGER,%esi
	cld
	movl	$26,%ecx
	rep
	movsl
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER
SYSTEM_SETUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER:
	subl	$12,%esp
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%edx,(%esp)
	movl	(%esp),%edi
	movl	$U_SYSTEM_WIDESTRINGMANAGER,%esi
	cld
	movl	$26,%ecx
	rep
	movsl
	movl	$U_SYSTEM_WIDESTRINGMANAGER,%edi
	movl	%eax,%esi
	cld
	movl	$26,%ecx
	rep
	movsl
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER
SYSTEM_SETUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER:
	subl	$8,%esp
	movl	%esi,(%esp)
	movl	%edi,4(%esp)
	movl	%eax,%esi
	movl	$U_SYSTEM_WIDESTRINGMANAGER,%edi
	cld
	movl	$26,%ecx
	rep
	movsl
	movl	(%esp),%esi
	movl	4(%esp),%edi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETWIDESTRINGMANAGER$TUNICODESTRINGMANAGER
SYSTEM_GETWIDESTRINGMANAGER$TUNICODESTRINGMANAGER:
	subl	$12,%esp
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,(%esp)
	movl	(%esp),%edi
	movl	$U_SYSTEM_WIDESTRINGMANAGER,%esi
	cld
	movl	$26,%ecx
	rep
	movsl
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETWIDESTRINGMANAGER$TUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER
SYSTEM_SETWIDESTRINGMANAGER$TUNICODESTRINGMANAGER$TUNICODESTRINGMANAGER:
	subl	$12,%esp
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%edx,(%esp)
	movl	(%esp),%edi
	movl	$U_SYSTEM_WIDESTRINGMANAGER,%esi
	cld
	movl	$26,%ecx
	rep
	movsl
	movl	$U_SYSTEM_WIDESTRINGMANAGER,%edi
	movl	%eax,%esi
	cld
	movl	$26,%ecx
	rep
	movsl
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETWIDESTRINGMANAGER$TUNICODESTRINGMANAGER
SYSTEM_SETWIDESTRINGMANAGER$TUNICODESTRINGMANAGER:
	subl	$8,%esp
	movl	%esi,(%esp)
	movl	%edi,4(%esp)
	movl	%eax,%esi
	movl	$U_SYSTEM_WIDESTRINGMANAGER,%edi
	cld
	movl	$26,%ecx
	rep
	movsl
	movl	(%esp),%esi
	movl	4(%esp),%edi
	addl	$8,%esp
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
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%eax,%ebx
	movl	%ebx,%edx
	leal	10(,%edx,2),%edx
	movl	%esp,%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj6544
	shll	$1,%ebx
	movl	(%esp),%eax
	movl	%ebx,4(%eax)
	movl	(%esp),%eax
	movl	$1,(%eax)
	movl	(%esp),%eax
	movw	$0,8(%eax)
	addl	$8,(%esp)
	jmp	Lj6551
Lj6544:
	call	SYSTEM_UNICODESTRINGERROR
Lj6551:
	movl	(%esp),%eax
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_DISPOSEUNICODESTRING$POINTER:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	(%ebx),%eax
	testl	%eax,%eax
	je	Lj6554
	subl	$8,(%ebx)
	movl	(%ebx),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	$0,(%ebx)
Lj6554:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_decr_ref
fpc_unicodestr_decr_ref:
.globl	FPC_UNICODESTR_DECR_REF
FPC_UNICODESTR_DECR_REF:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%esi
	movl	(%esi),%eax
	testl	%eax,%eax
	je	Lj6562
	movl	(%esi),%eax
	subl	$8,%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	jl	Lj6562
	movl	TC_SYSTEM_ISMULTITHREAD,%edx
	testl	%edx,%edx
	jne	Lj6575
	decl	(%eax)
	movl	(%eax),%edx
	testl	%edx,%edx
	seteb	%bl
	jmp	Lj6578
Lj6575:
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj6578:
	testb	%bl,%bl
	je	Lj6571
	movl	%esi,%eax
	call	SYSTEM_DISPOSEUNICODESTRING$POINTER
Lj6571:
Lj6562:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_incr_ref
fpc_unicodestr_incr_ref:
.globl	FPC_UNICODESTR_INCR_REF
FPC_UNICODESTR_INCR_REF:
	testl	%eax,%eax
	je	Lj6585
	movl	%eax,%edx
	subl	$8,%edx
	movl	(%edx),%edx
	testl	%edx,%edx
	jl	Lj6585
	subl	$8,%eax
	movl	TC_SYSTEM_ISMULTITHREAD,%edx
	testl	%edx,%edx
	jne	Lj6594
	incl	(%eax)
	jmp	Lj6595
Lj6594:
	call	SYSTEM_CPUINCLOCKED$LONGINT
Lj6595:
Lj6585:
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_to_shortstr
fpc_unicodestr_to_shortstr:
.globl	FPC_UNICODESTR_TO_SHORTSTR
FPC_UNICODESTR_TO_SHORTSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	movl	%eax,%ebx
	movl	%edx,%edi
	movl	%ecx,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj6600
	movb	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6607
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6607:
	testl	%eax,%eax
	jng	Lj6609
	cmpl	%edi,%eax
	jng	Lj6611
	movl	%edi,%eax
Lj6611:
	pushl	%eax
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj6618
	movl	$FPC_EMPTYCHAR,%eax
Lj6618:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-8(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%esi
	call	*%esi
	movl	-8(%ebp),%ecx
	movl	%edi,%edx
	movl	%ebx,%eax
	call	fpc_ansistr_to_shortstr
Lj6609:
Lj6600:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-8(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6601
	call	FPC_RERAISE
Lj6601:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_to_unicodestr
fpc_shortstr_to_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%eax,%esi
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	movzbl	(%esi),%ebx
	testl	%ebx,%ebx
	jng	Lj6642
	pushl	%ebx
	leal	1(%esi),%eax
	movl	-4(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%esi
	call	*%esi
	shll	$1,%ebx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	addl	%eax,%ebx
	movw	$0,(%ebx)
Lj6642:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_to_ansistr
fpc_unicodestr_to_ansistr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6659
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6659:
	testl	%eax,%eax
	jng	Lj6661
	pushl	%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
Lj6661:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_ansistr_to_unicodestr
fpc_ansistr_to_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6676
	movl	-4(%eax),%eax
Lj6676:
	testl	%eax,%eax
	jng	Lj6678
	pushl	%eax
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj6683
	movl	$FPC_EMPTYCHAR,%eax
Lj6683:
	movl	-8(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
Lj6678:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_to_widestr
fpc_unicodestr_to_widestr:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	testl	%edx,%edx
	je	Lj6692
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj6692:
	movl	4(%esp),%eax
	call	fpc_unicodestr_setlength
	movl	(%esp),%ecx
	testl	%ecx,%ecx
	je	Lj6697
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj6697:
	shll	$1,%ecx
	movl	4(%esp),%eax
	movl	(%eax),%edx
	movl	(%esp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_widestr_to_unicodestr
fpc_widestr_to_unicodestr:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	testl	%edx,%edx
	je	Lj6706
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj6706:
	movl	4(%esp),%eax
	call	fpc_unicodestr_setlength
	movl	(%esp),%ecx
	testl	%ecx,%ecx
	je	Lj6711
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj6711:
	shll	$1,%ecx
	movl	4(%esp),%eax
	movl	(%eax),%edx
	movl	(%esp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_punicodechar_to_ansistr
fpc_punicodechar_to_ansistr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%eax,%ebx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%esi
	movl	%esi,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%esi)
	testl	%ebx,%ebx
	je	Lj6716
	movl	%ebx,%eax
	movw	$0,%cx
	movl	$-1,%edx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	testl	%eax,%eax
	jng	Lj6731
	pushl	%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-4(%ebp),%edx
	movl	%ebx,%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
Lj6731:
Lj6716:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_punicodechar_to_unicodestr
fpc_punicodechar_to_unicodestr:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%eax,%ebx
	movl	%edx,(%esp)
	movl	(%esp),%esi
	movl	%esi,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%esi)
	testl	%ebx,%ebx
	je	Lj6740
	movl	%ebx,%eax
	movw	$0,%cx
	movl	$-1,%edx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,%esi
	movl	%esi,%edx
	movl	(%esp),%eax
	call	fpc_unicodestr_setlength
	testl	%esi,%esi
	jng	Lj6759
	movl	%esi,%ecx
	shll	$1,%ecx
	movl	(%esp),%eax
	movl	(%eax),%edx
	movl	%ebx,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	shll	$1,%esi
	movl	(%esp),%eax
	movl	(%eax),%eax
	addl	%eax,%esi
	movw	$0,(%esi)
Lj6759:
Lj6740:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_pwidechar_to_unicodestr
fpc_pwidechar_to_unicodestr:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%eax,%ebx
	movl	%edx,(%esp)
	movl	(%esp),%esi
	movl	%esi,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%esi)
	testl	%ebx,%ebx
	je	Lj6768
	movl	%ebx,%eax
	movw	$0,%cx
	movl	$-1,%edx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,%esi
	movl	%esi,%edx
	movl	(%esp),%eax
	call	fpc_unicodestr_setlength
	testl	%esi,%esi
	jng	Lj6787
	movl	%esi,%ecx
	shll	$1,%ecx
	movl	(%esp),%eax
	movl	(%eax),%edx
	movl	%ebx,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	shll	$1,%esi
	movl	(%esp),%eax
	movl	(%eax),%eax
	addl	%eax,%esi
	movw	$0,(%esi)
Lj6787:
Lj6768:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_punicodechar_to_shortstr
fpc_punicodechar_to_shortstr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	movl	%eax,-48(%ebp)
	movl	%edx,%ebx
	movl	%ecx,%esi
	movl	$0,-4(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj6798
	movl	-48(%ebp),%eax
	movb	$0,(%eax)
	testl	%esi,%esi
	je	Lj6798
	movl	%esi,%eax
	movw	$0,%cx
	movl	$2147483647,%edx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	testl	%eax,%eax
	jng	Lj6814
	pushl	%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-4(%ebp),%eax
	movl	%esi,%edi
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%esi
	movl	%eax,%edx
	movl	%edi,%eax
	call	*%esi
	movl	-4(%ebp),%ecx
	movl	%ebx,%edx
	movl	-48(%ebp),%eax
	call	fpc_ansistr_to_shortstr
Lj6814:
Lj6798:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-4(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6799
	call	FPC_RERAISE
Lj6799:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_pwidechar_to_ansistr
fpc_pwidechar_to_ansistr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%eax,%ebx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%esi
	movl	%esi,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%esi)
	testl	%ebx,%ebx
	je	Lj6835
	movl	%ebx,%eax
	movw	$0,%cx
	movl	$-1,%edx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	testl	%eax,%eax
	jng	Lj6850
	pushl	%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-4(%ebp),%edx
	movl	%ebx,%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER,%ebx
	call	*%ebx
Lj6850:
Lj6835:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_pwidechar_to_shortstr
fpc_pwidechar_to_shortstr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	movl	%eax,-48(%ebp)
	movl	%edx,%ebx
	movl	%ecx,%esi
	movl	$0,-4(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj6861
	movl	-48(%ebp),%eax
	movb	$0,(%eax)
	testl	%esi,%esi
	je	Lj6861
	movl	%esi,%eax
	movw	$0,%cx
	movl	$2147483647,%edx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	testl	%eax,%eax
	jng	Lj6877
	pushl	%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-4(%ebp),%eax
	movl	%esi,%edi
	movl	U_SYSTEM_WIDESTRINGMANAGER,%esi
	movl	%eax,%edx
	movl	%edi,%eax
	call	*%esi
	movl	-4(%ebp),%ecx
	movl	%ebx,%edx
	movl	-48(%ebp),%eax
	call	fpc_ansistr_to_shortstr
Lj6877:
Lj6861:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-4(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6862
	call	FPC_RERAISE
Lj6862:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_assign
fpc_unicodestr_assign:
.globl	FPC_UNICODESTR_ASSIGN
FPC_UNICODESTR_ASSIGN:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	testl	%esi,%esi
	je	Lj6901
	movl	%esi,%eax
	subl	$8,%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jng	Lj6903
	movl	%esi,%eax
	subl	$8,%eax
	movl	TC_SYSTEM_ISMULTITHREAD,%edx
	testl	%edx,%edx
	jne	Lj6907
	incl	(%eax)
	jmp	Lj6908
Lj6907:
	call	SYSTEM_CPUINCLOCKED$LONGINT
Lj6908:
Lj6903:
Lj6901:
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	%esi,(%ebx)
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_concat
fpc_unicodestr_concat:
	subl	$24,%esp
	movl	%ebx,12(%esp)
	movl	%esi,16(%esp)
	movl	%edi,20(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	%ecx,8(%esp)
	movl	4(%esp),%eax
	testl	%eax,%eax
	jne	Lj6918
	movl	8(%esp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	(%esp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	8(%esp),%eax
	movl	%eax,(%ebx)
	jmp	Lj6915
Lj6918:
	movl	8(%esp),%eax
	testl	%eax,%eax
	jne	Lj6922
	movl	4(%esp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	(%esp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	4(%esp),%eax
	movl	%eax,(%ebx)
	jmp	Lj6915
Lj6922:
	movl	4(%esp),%eax
	testl	%eax,%eax
	je	Lj6927
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6927:
	movl	%eax,%edi
	movl	8(%esp),%eax
	testl	%eax,%eax
	je	Lj6930
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6930:
	movl	%eax,%esi
	movl	(%esp),%eax
	movl	(%eax),%eax
	cmpl	4(%esp),%eax
	jne	Lj6932
	movl	4(%esp),%eax
	cmpl	8(%esp),%eax
	seteb	%bl
	movl	%edi,%edx
	addl	%esi,%edx
	movl	(%esp),%eax
	call	fpc_unicodestr_setlength
	testb	%bl,%bl
	je	Lj6940
	movl	%edi,%edx
	shll	$1,%edx
	movl	(%esp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	movl	%esi,%eax
	shll	$1,%eax
	movl	(%esp),%ecx
	movl	(%ecx),%ebx
	movl	%eax,%ecx
	movl	%ebx,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj6954
Lj6940:
	movl	%edi,%edx
	shll	$1,%edx
	movl	(%esp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	movl	%esi,%ecx
	incl	%ecx
	shll	$1,%ecx
	movl	8(%esp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj6954
Lj6932:
	movl	(%esp),%eax
	movl	(%eax),%eax
	cmpl	8(%esp),%eax
	jne	Lj6956
	movl	%edi,%edx
	addl	%esi,%edx
	movl	(%esp),%eax
	call	fpc_unicodestr_setlength
	movl	%edi,%edx
	shll	$1,%edx
	movl	(%esp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	movl	%esi,%ecx
	incl	%ecx
	shll	$1,%ecx
	movl	(%esp),%eax
	movl	(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%edi,%ecx
	shll	$1,%ecx
	movl	(%esp),%eax
	movl	(%eax),%eax
	movl	4(%esp),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj6973
Lj6956:
	movl	(%esp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	movl	%edi,%edx
	addl	%esi,%edx
	movl	(%esp),%eax
	call	fpc_unicodestr_setlength
	movl	%edi,%ecx
	shll	$1,%ecx
	movl	(%esp),%eax
	movl	(%eax),%edx
	movl	4(%esp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%edi,%edx
	shll	$1,%edx
	movl	(%esp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	movl	%esi,%eax
	incl	%eax
	shll	$1,%eax
	movl	8(%esp),%ebx
	movl	%eax,%ecx
	movl	%ebx,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj6973:
Lj6954:
Lj6915:
	movl	12(%esp),%ebx
	movl	16(%esp),%esi
	movl	20(%esp),%edi
	addl	$24,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_concat_multi
fpc_unicodestr_concat_multi:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,%edi
	testl	%edi,%edi
	jne	Lj6995
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj6992
Lj6995:
	movl	$0,-16(%ebp)
	movl	$0,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	(%eax,%ecx,4),%eax
	cmpl	(%edx),%eax
	jne	Lj7003
	incl	-24(%ebp)
Lj7003:
	movl	%edi,%esi
	movl	-24(%ebp),%ebx
	cmpl	%ebx,%esi
	jl	Lj7005
	decl	%ebx
	.balign 4,0x90
Lj7006:
	incl	%ebx
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%eax,%ebx,4),%eax
	cmpl	(%edx),%eax
	jne	Lj7008
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	call	FPC_UNICODESTR_INCR_REF
	movl	$0,-24(%ebp)
	jmp	Lj7005
Lj7008:
	cmpl	%ebx,%esi
	jg	Lj7006
Lj7005:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj7016
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
Lj7016:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj7021
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7021:
	movl	%eax,%ebx
	movl	$0,%edx
	movl	%edi,%eax
	movl	$0,%ecx
	cmpl	%ecx,%eax
	jl	Lj7025
	decl	%ecx
	.balign 4,0x90
Lj7026:
	incl	%ecx
	movl	-8(%ebp),%esi
	movl	(%esi,%ecx,4),%esi
	testl	%esi,%esi
	je	Lj7027
	movl	-4(%esi),%esi
	shrl	$1,%esi
Lj7027:
	addl	%esi,%edx
	cmpl	%ecx,%eax
	jg	Lj7026
Lj7025:
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	%ebx,%edx
	shll	$1,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-24(%ebp),%ebx
	cmpl	%ebx,%edi
	jl	Lj7035
	decl	%ebx
	.balign 4,0x90
Lj7036:
	incl	%ebx
	movl	-8(%ebp),%eax
	movl	(%eax,%ebx,4),%eax
	movl	%eax,-12(%ebp)
	testl	%eax,%eax
	je	Lj7040
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj7043
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7043:
	movl	%eax,%esi
	incl	%eax
	shll	$1,%eax
	movl	%eax,%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%esi,%eax
	shll	$1,%eax
	addl	%eax,-20(%ebp)
Lj7040:
	cmpl	%ebx,%edi
	jg	Lj7036
Lj7035:
	leal	-16(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
Lj6992:
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_char_to_uchar
fpc_char_to_uchar:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movb	%al,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7054
	pushl	$1
	leal	-4(%ebp),%eax
	leal	-8(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
	movl	-8(%ebp),%eax
	movw	(%eax),%bx
Lj7054:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-8(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7055
	call	FPC_RERAISE
Lj7055:
	movw	%bx,%ax
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_char_to_unicodestr
fpc_char_to_unicodestr:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movb	%al,%bl
	movl	%edx,(%esp)
	movl	(%esp),%eax
	movl	$1,%edx
	call	fpc_unicodestr_setlength
	movl	(%esp),%eax
	call	fpc_unicodestr_unique
	movl	%eax,%esi
	movb	%bl,%al
	call	fpc_char_to_uchar
	movw	%ax,(%esi)
	movl	(%esp),%eax
	movl	(%eax),%eax
	addl	$2,%eax
	movw	$0,(%eax)
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_uchar_to_char
fpc_uchar_to_char:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movw	%ax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7089
	pushl	$1
	leal	-4(%ebp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-8(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7102
	movl	-4(%eax),%eax
Lj7102:
	cmpl	$1,%eax
	jne	Lj7101
	movl	-8(%ebp),%eax
	movb	(%eax),%bl
	jmp	Lj7105
Lj7101:
	movb	$63,%bl
Lj7105:
Lj7089:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-8(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7090
	call	FPC_RERAISE
Lj7090:
	movb	%bl,%al
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_wchar_to_unicodestr
fpc_wchar_to_unicodestr:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movw	%ax,%bx
	movl	%edx,(%esp)
	movl	(%esp),%eax
	movl	$1,%edx
	call	fpc_unicodestr_setlength
	movl	(%esp),%eax
	call	fpc_unicodestr_unique
	movw	%bx,(%eax)
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_char_to_wchar
fpc_char_to_wchar:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movb	%al,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7126
	pushl	$1
	leal	-4(%ebp),%eax
	leal	-8(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+4,%ebx
	call	*%ebx
	movl	-8(%ebp),%eax
	movw	(%eax),%bx
Lj7126:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-8(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7127
	call	FPC_RERAISE
Lj7127:
	movw	%bx,%ax
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_wchar_to_char
fpc_wchar_to_char:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movw	%ax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7147
	pushl	$1
	leal	-4(%ebp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-8(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER,%ebx
	call	*%ebx
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7160
	movl	-4(%eax),%eax
Lj7160:
	cmpl	$1,%eax
	jne	Lj7159
	movl	-8(%ebp),%eax
	movb	(%eax),%bl
	jmp	Lj7163
Lj7159:
	movb	$63,%bl
Lj7163:
Lj7147:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-8(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7148
	call	FPC_RERAISE
Lj7148:
	movb	%bl,%al
	movl	-52(%ebp),%ebx
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
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	movl	%eax,%ebx
	movl	%edx,%edi
	movw	%cx,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7174
	pushl	$1
	leal	-4(%ebp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-8(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER,%esi
	call	*%esi
	movl	-8(%ebp),%ecx
	movl	%edi,%edx
	movl	%ebx,%eax
	call	fpc_ansistr_to_shortstr
Lj7174:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-8(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7175
	call	FPC_RERAISE
Lj7175:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_uchar_to_unicodestr
fpc_uchar_to_unicodestr:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movw	%ax,%bx
	movl	%edx,(%esp)
	movl	(%esp),%eax
	movl	$1,%edx
	call	fpc_unicodestr_setlength
	movl	(%esp),%eax
	call	fpc_unicodestr_unique
	movw	%bx,(%eax)
	movl	4(%esp),%ebx
	addl	$8,%esp
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
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	movl	%eax,%ebx
	movl	%edx,%edi
	movw	%cx,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7219
	pushl	$1
	leal	-4(%ebp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-8(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%esi
	call	*%esi
	movl	-8(%ebp),%ecx
	movl	%edi,%edx
	movl	%ebx,%eax
	call	fpc_ansistr_to_shortstr
Lj7219:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-8(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7220
	call	FPC_RERAISE
Lj7220:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_pchar_to_unicodestr
fpc_pchar_to_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%eax,%ebx
	movl	%edx,-4(%ebp)
	testl	%ebx,%ebx
	je	Lj7244
	movb	(%ebx),%al
	testb	%al,%al
	jne	Lj7245
Lj7244:
	movl	-4(%ebp),%esi
	movl	%esi,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%esi)
	jmp	Lj7242
Lj7245:
	movl	%ebx,%eax
	movb	$0,%cl
	movl	$-1,%edx
	call	SYSTEM_INDEXCHAR$formal$LONGINT$CHAR$$LONGINT
	pushl	%eax
	movl	-4(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%esi
	movl	%ebx,%eax
	call	*%esi
Lj7242:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_chararray_to_unicodestr
fpc_chararray_to_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%ebx
	movl	%edx,%edi
	testb	%cl,%cl
	je	Lj7268
	movb	(%ebx),%al
	testb	%al,%al
	jne	Lj7270
	movl	8(%ebp),%esi
	movl	%esi,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%esi)
	jmp	Lj7265
Lj7270:
	movl	%edi,%edx
	incl	%edx
	movl	%ebx,%eax
	movb	$0,%cl
	call	SYSTEM_INDEXCHAR$formal$LONGINT$CHAR$$LONGINT
	movl	%eax,%esi
	cmpl	$-1,%esi
	jne	Lj7285
	movl	%edi,%eax
	incl	%eax
	movl	%eax,%esi
	jmp	Lj7285
Lj7268:
	movl	%edi,%eax
	incl	%eax
	movl	%eax,%esi
Lj7285:
	movl	%esi,%edx
	movl	8(%ebp),%eax
	call	fpc_unicodestr_setlength
	pushl	%esi
	movl	%ebx,%eax
	movl	8(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
Lj7265:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
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
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-56(%ebp)
	movl	%edx,-52(%ebp)
	movl	%ecx,%esi
	movl	12(%ebp),%edi
	movb	8(%ebp),%bl
	movl	$0,-4(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7302
	movl	%edi,%eax
	incl	%eax
	movl	%eax,-48(%ebp)
	movl	-52(%ebp),%eax
	incl	%eax
	cmpl	-48(%ebp),%eax
	jnle	Lj7308
	movl	-52(%ebp),%eax
	movl	%eax,-48(%ebp)
	jmp	Lj7311
Lj7308:
	cmpl	$0,-48(%ebp)
	jnl	Lj7313
	movl	$0,-48(%ebp)
Lj7313:
Lj7311:
	testb	%bl,%bl
	je	Lj7317
	movl	-48(%ebp),%edx
	movl	%esi,%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	testl	%eax,%eax
	jnl	Lj7327
	movb	-48(%ebp),%dl
	jmp	Lj7333
Lj7327:
	movb	%al,%dl
	jmp	Lj7333
Lj7317:
	movb	-48(%ebp),%dl
Lj7333:
	movzbl	%dl,%eax
	pushl	%eax
	movl	%esi,%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-4(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
	movl	-4(%ebp),%ecx
	movl	-52(%ebp),%edx
	movl	-56(%ebp),%eax
	call	fpc_ansistr_to_shortstr
Lj7302:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-4(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7303
	call	FPC_RERAISE
Lj7303:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_unicodechararray_to_ansistr
fpc_unicodechararray_to_ansistr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%ebx
	movl	%edx,%edi
	testb	%cl,%cl
	je	Lj7359
	movl	%edi,%edx
	incl	%edx
	movl	%ebx,%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,%esi
	cmpl	$-1,%esi
	jne	Lj7372
	movl	%edi,%eax
	incl	%eax
	movl	%eax,%esi
	jmp	Lj7372
Lj7359:
	movl	%edi,%eax
	incl	%eax
	movl	%eax,%esi
Lj7372:
	movl	%esi,%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_setlength
	pushl	%esi
	movl	%ebx,%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	8(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_unicodechararray_to_unicodestr
fpc_unicodechararray_to_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%ebx
	movl	%edx,%edi
	testb	%cl,%cl
	je	Lj7390
	movl	%edi,%edx
	incl	%edx
	movl	%ebx,%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,%esi
	cmpl	$-1,%esi
	jne	Lj7403
	movl	%edi,%eax
	incl	%eax
	movl	%eax,%esi
	jmp	Lj7403
Lj7390:
	movl	%edi,%eax
	incl	%eax
	movl	%eax,%esi
Lj7403:
	movl	%esi,%edx
	movl	8(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	%esi,%ecx
	shll	$1,%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	%ebx,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_widechararray_to_unicodestr
fpc_widechararray_to_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%ebx
	movl	%edx,%edi
	testb	%cl,%cl
	je	Lj7419
	movl	%edi,%edx
	incl	%edx
	movl	%ebx,%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,%esi
	cmpl	$-1,%esi
	jne	Lj7432
	movl	%edi,%eax
	incl	%eax
	movl	%eax,%esi
	jmp	Lj7432
Lj7419:
	movl	%edi,%eax
	incl	%eax
	movl	%eax,%esi
Lj7432:
	movl	%esi,%edx
	movl	8(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	%esi,%ecx
	shll	$1,%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	%ebx,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
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
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-56(%ebp)
	movl	%edx,-52(%ebp)
	movl	%ecx,%esi
	movl	12(%ebp),%edi
	movb	8(%ebp),%bl
	movl	$0,-4(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7447
	movl	%edi,%eax
	incl	%eax
	movl	%eax,-48(%ebp)
	movl	-52(%ebp),%eax
	incl	%eax
	cmpl	-48(%ebp),%eax
	jnle	Lj7453
	movl	-52(%ebp),%eax
	movl	%eax,-48(%ebp)
	jmp	Lj7456
Lj7453:
	cmpl	$0,-48(%ebp)
	jnl	Lj7458
	movl	$0,-48(%ebp)
Lj7458:
Lj7456:
	testb	%bl,%bl
	je	Lj7462
	movl	-48(%ebp),%edx
	movl	%esi,%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	testl	%eax,%eax
	jnl	Lj7472
	movb	-48(%ebp),%dl
	jmp	Lj7478
Lj7472:
	movb	%al,%dl
	jmp	Lj7478
Lj7462:
	movb	-48(%ebp),%dl
Lj7478:
	movzbl	%dl,%eax
	pushl	%eax
	movl	%esi,%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-4(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER,%ebx
	call	*%ebx
	movl	-4(%ebp),%ecx
	movl	-52(%ebp),%edx
	movl	-56(%ebp),%eax
	call	fpc_ansistr_to_shortstr
Lj7447:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-4(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7448
	call	FPC_RERAISE
Lj7448:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_widechararray_to_ansistr
fpc_widechararray_to_ansistr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%ebx
	movl	%edx,%edi
	testb	%cl,%cl
	je	Lj7504
	movl	%edi,%edx
	incl	%edx
	movl	%ebx,%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,%esi
	cmpl	$-1,%esi
	jne	Lj7517
	movl	%edi,%eax
	incl	%eax
	movl	%eax,%esi
	jmp	Lj7517
Lj7504:
	movl	%edi,%eax
	incl	%eax
	movl	%eax,%esi
Lj7517:
	movl	%esi,%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_setlength
	pushl	%esi
	movl	%ebx,%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	8(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER,%ebx
	call	*%ebx
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_widechararray_to_widestr
fpc_widechararray_to_widestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%ebx
	movl	%edx,%edi
	testb	%cl,%cl
	je	Lj7535
	movl	%edi,%edx
	incl	%edx
	movl	%ebx,%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,%esi
	cmpl	$-1,%esi
	jne	Lj7548
	movl	%edi,%eax
	incl	%eax
	movl	%eax,%esi
	jmp	Lj7548
Lj7535:
	movl	%edi,%eax
	incl	%eax
	movl	%eax,%esi
Lj7548:
	movl	%esi,%edx
	movl	8(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	%esi,%ecx
	shll	$1,%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	%ebx,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
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
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
	movl	%eax,-52(%ebp)
	movl	%edx,%ebx
	movl	%ecx,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7563
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7568
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7568:
	movl	%eax,%esi
	testl	%esi,%esi
	jng	Lj7570
	pushl	%esi
	movl	-4(%ebp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-8(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%edi
	call	*%edi
Lj7570:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7581
	movl	-4(%eax),%eax
Lj7581:
	movl	%eax,%esi
	movl	%ebx,%eax
	incl	%eax
	cmpl	%esi,%eax
	jnl	Lj7583
	movl	%ebx,%eax
	incl	%eax
	movl	%eax,%esi
Lj7583:
	movl	%esi,%ecx
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%ebx,%edx
	incl	%edx
	subl	%esi,%edx
	movl	-52(%ebp),%ecx
	leal	(%ecx,%esi,1),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
Lj7563:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-8(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7564
	call	FPC_RERAISE
Lj7564:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_to_unicodechararray
fpc_unicodestr_to_unicodechararray:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,%ebx
	movl	%edx,%edi
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7608
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7608:
	movl	%eax,%esi
	movl	%edi,%eax
	incl	%eax
	cmpl	%esi,%eax
	jnl	Lj7610
	movl	%edi,%eax
	incl	%eax
	movl	%eax,%esi
Lj7610:
	testl	%esi,%esi
	jng	Lj7614
	movl	%esi,%ecx
	shll	$1,%ecx
	movl	%ebx,%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj7614:
	movl	%edi,%edx
	incl	%edx
	subl	%esi,%edx
	shll	$1,%edx
	leal	(%ebx,%esi,2),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
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
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
	movl	%eax,-52(%ebp)
	movl	%edx,%esi
	movl	%ecx,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7629
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7634
	movl	-4(%eax),%eax
Lj7634:
	movl	%eax,%ebx
	testl	%ebx,%ebx
	jng	Lj7636
	pushl	%ebx
	movl	-4(%ebp),%eax
	leal	-8(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%edi
	call	*%edi
Lj7636:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7647
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7647:
	movl	%eax,%ebx
	movl	%esi,%eax
	incl	%eax
	cmpl	%ebx,%eax
	jnl	Lj7649
	movl	%esi,%eax
	incl	%eax
	movl	%eax,%ebx
Lj7649:
	movl	%ebx,%ecx
	shll	$1,%ecx
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%esi,%edx
	incl	%edx
	subl	%ebx,%edx
	shll	$1,%edx
	movl	-52(%ebp),%ecx
	leal	(%ecx,%ebx,2),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
Lj7629:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-8(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7630
	call	FPC_RERAISE
Lj7630:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_to_unicodechararray
fpc_shortstr_to_unicodechararray:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	movl	%eax,-48(%ebp)
	movl	%edx,%esi
	movl	%ecx,%edi
	movl	$0,-4(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7672
	movzbl	(%edi),%eax
	movl	%eax,%ebx
	testl	%ebx,%ebx
	jng	Lj7678
	pushl	%ebx
	leal	1(%edi),%eax
	leal	-4(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%edi
	call	*%edi
Lj7678:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7689
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7689:
	movl	%eax,%ebx
	movl	%esi,%eax
	incl	%eax
	cmpl	%ebx,%eax
	jnl	Lj7691
	movl	%esi,%eax
	incl	%eax
	movl	%eax,%ebx
Lj7691:
	movl	%ebx,%ecx
	shll	$1,%ecx
	movl	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%esi,%edx
	incl	%edx
	subl	%ebx,%edx
	shll	$1,%edx
	movl	-48(%ebp),%ecx
	leal	(%ecx,%ebx,2),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
Lj7672:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-4(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7673
	call	FPC_RERAISE
Lj7673:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
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
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
	movl	%eax,-52(%ebp)
	movl	%edx,%esi
	movl	%ecx,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7714
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7719
	movl	-4(%eax),%eax
Lj7719:
	movl	%eax,%ebx
	testl	%ebx,%ebx
	jng	Lj7721
	pushl	%ebx
	movl	-4(%ebp),%eax
	leal	-8(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+4,%edi
	call	*%edi
Lj7721:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7732
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7732:
	movl	%eax,%ebx
	movl	%esi,%eax
	incl	%eax
	cmpl	%ebx,%eax
	jnl	Lj7734
	movl	%esi,%eax
	incl	%eax
	movl	%eax,%ebx
Lj7734:
	movl	%ebx,%ecx
	shll	$1,%ecx
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%esi,%edx
	incl	%edx
	subl	%ebx,%edx
	shll	$1,%edx
	movl	-52(%ebp),%ecx
	leal	(%ecx,%ebx,2),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
Lj7714:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-8(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7715
	call	FPC_RERAISE
Lj7715:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_shortstr_to_widechararray
fpc_shortstr_to_widechararray:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	movl	%eax,-48(%ebp)
	movl	%edx,%esi
	movl	%ecx,%edi
	movl	$0,-4(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7757
	movzbl	(%edi),%eax
	movl	%eax,%ebx
	testl	%ebx,%ebx
	jng	Lj7763
	pushl	%ebx
	leal	1(%edi),%eax
	leal	-4(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+4,%edi
	call	*%edi
Lj7763:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7774
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7774:
	movl	%eax,%ebx
	movl	%esi,%eax
	incl	%eax
	cmpl	%ebx,%eax
	jnl	Lj7776
	movl	%esi,%eax
	incl	%eax
	movl	%eax,%ebx
Lj7776:
	movl	%ebx,%ecx
	shll	$1,%ecx
	movl	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%esi,%edx
	incl	%edx
	subl	%ebx,%edx
	shll	$1,%edx
	movl	-48(%ebp),%ecx
	leal	(%ecx,%ebx,2),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
Lj7757:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-4(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7758
	call	FPC_RERAISE
Lj7758:
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_to_widechararray
fpc_unicodestr_to_widechararray:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,%ebx
	movl	%edx,%edi
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7801
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7801:
	movl	%eax,%esi
	movl	%edi,%eax
	incl	%eax
	cmpl	%esi,%eax
	jnl	Lj7803
	movl	%edi,%eax
	incl	%eax
	movl	%eax,%esi
Lj7803:
	testl	%esi,%esi
	jng	Lj7807
	movl	%esi,%ecx
	shll	$1,%ecx
	movl	%ebx,%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj7807:
	movl	%edi,%edx
	incl	%edx
	subl	%esi,%edx
	shll	$1,%edx
	leal	(%ebx,%esi,2),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_compare
fpc_unicodestr_compare:
.globl	FPC_UNICODESTR_COMPARE
FPC_UNICODESTR_COMPARE:
	subl	$12,%esp
	movl	%ebx,8(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%eax
	cmpl	4(%esp),%eax
	jne	Lj7823
	movl	$0,%ebx
	jmp	Lj7820
Lj7823:
	movl	(%esp),%ecx
	testl	%ecx,%ecx
	je	Lj7828
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj7828:
	movl	4(%esp),%eax
	testl	%eax,%eax
	je	Lj7831
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7831:
	cmpl	%eax,%ecx
	jng	Lj7833
	movl	%eax,%ecx
Lj7833:
	movl	4(%esp),%edx
	movl	(%esp),%eax
	call	SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT
	testl	%eax,%eax
	jne	Lj7845
	movl	(%esp),%edx
	testl	%edx,%edx
	je	Lj7848
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj7848:
	movl	4(%esp),%ecx
	testl	%ecx,%ecx
	je	Lj7849
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj7849:
	subl	%ecx,%edx
	movl	%edx,%eax
Lj7845:
	movl	%eax,%ebx
Lj7820:
	movl	%ebx,%eax
	movl	8(%esp),%ebx
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_compare_equal
fpc_unicodestr_compare_equal:
.globl	FPC_UNICODESTR_COMPARE_EQUAL
FPC_UNICODESTR_COMPARE_EQUAL:
	subl	$12,%esp
	movl	%ebx,8(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%eax
	cmpl	4(%esp),%eax
	jne	Lj7855
	movl	$0,%ebx
	jmp	Lj7852
Lj7855:
	movl	(%esp),%ecx
	testl	%ecx,%ecx
	je	Lj7860
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj7860:
	movl	4(%esp),%eax
	testl	%eax,%eax
	je	Lj7863
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7863:
	cmpl	%ecx,%eax
	je	Lj7862
	movl	$-1,%ebx
	jmp	Lj7852
Lj7862:
	movl	4(%esp),%edx
	movl	(%esp),%eax
	call	SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT
	movl	%eax,%ebx
	jmp	Lj7852
Lj7866:
Lj7852:
	movl	%ebx,%eax
	movl	8(%esp),%ebx
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_checkrange
fpc_unicodestr_checkrange:
.globl	FPC_UNICODESTR_RANGECHECK
FPC_UNICODESTR_RANGECHECK:
	pushl	%ebp
	movl	%esp,%ebp
	testl	%eax,%eax
	je	Lj7877
Lj7880:
	subl	$8,%eax
	movl	4(%eax),%ecx
	movl	%ecx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%ecx
	sarl	$1,%ecx
	cmpl	%edx,%ecx
	jl	Lj7877
Lj7879:
	cmpl	$1,%edx
	jnl	Lj7878
Lj7877:
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj7878:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_setlength
fpc_unicodestr_setlength:
.globl	FPC_UNICODESTR_SETLENGTH
FPC_UNICODESTR_SETLENGTH:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%eax,(%esp)
	movl	%edx,%ebx
	testl	%ebx,%ebx
	jng	Lj7888
	movl	(%esp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj7890
	movl	%ebx,%eax
	call	SYSTEM_NEWUNICODESTRING$LONGINT$$POINTER
	movl	(%esp),%edx
	movl	%eax,(%edx)
	jmp	Lj7895
Lj7890:
	movl	(%esp),%eax
	movl	(%eax),%eax
	subl	$8,%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	jne	Lj7897
	movl	(%esp),%eax
	subl	$8,(%eax)
	movl	%ebx,%esi
	leal	10(,%esi,2),%esi
	movl	(%esp),%eax
	movl	(%eax),%eax
	call	SYSTEM_MEMSIZE$POINTER$$LONGWORD
	cmpl	%eax,%esi
	jna	Lj7899
	movl	%ebx,%edx
	leal	10(,%edx,2),%edx
	movl	(%esp),%eax
	call	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
Lj7899:
	movl	(%esp),%eax
	addl	$8,(%eax)
	jmp	Lj7906
Lj7897:
	movl	%ebx,%eax
	call	SYSTEM_NEWUNICODESTRING$LONGINT$$POINTER
	movl	%eax,%esi
	movl	(%esp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj7913
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7913:
	testl	%eax,%eax
	jng	Lj7912
	movl	(%esp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj7916
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7916:
	incl	%eax
	cmpl	%ebx,%eax
	jng	Lj7915
	movl	%ebx,%ecx
	jmp	Lj7919
Lj7915:
	movl	(%esp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj7922
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7922:
	incl	%eax
	movl	%eax,%ecx
Lj7919:
	shll	$1,%ecx
	movl	%esi,%edx
	movl	(%esp),%eax
	movl	(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj7912:
	movl	(%esp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	(%esp),%eax
	movl	%esi,(%eax)
Lj7906:
Lj7895:
	movl	%ebx,%eax
	shll	$1,%eax
	movl	(%esp),%edx
	movl	(%edx),%edx
	addl	%edx,%eax
	movw	$0,(%eax)
	movl	(%esp),%eax
	movl	(%eax),%eax
	subl	$8,%eax
	shll	$1,%ebx
	movl	%ebx,4(%eax)
	jmp	Lj7937
Lj7888:
	movl	(%esp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj7939
	movl	(%esp),%eax
	call	FPC_UNICODESTR_DECR_REF
Lj7939:
	movl	(%esp),%eax
	movl	$0,(%eax)
Lj7937:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UNICODECHARTOSTRING$PUNICODECHAR$$ANSISTRING
SYSTEM_UNICODECHARTOSTRING$PUNICODECHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,%ebx
	movl	%edx,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7946
	leal	-48(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%edx
	movl	%ebx,%eax
	call	fpc_pwidechar_to_unicodestr
	movl	-48(%ebp),%edx
	testl	%edx,%edx
	je	Lj7955
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj7955:
	movl	-4(%ebp),%ecx
	movl	%ebx,%eax
	call	SYSTEM_UNICODECHARLENTOSTRING$PUNICODECHAR$LONGINT$$ANSISTRING
Lj7946:
	call	FPC_POPADDRSTACK
	leal	-48(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-48(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7947
	call	FPC_RERAISE
Lj7947:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_STRINGTOUNICODECHAR$ANSISTRING$PUNICODECHAR$LONGINT$$PUNICODECHAR
SYSTEM_STRINGTOUNICODECHAR$ANSISTRING$PUNICODECHAR$LONGINT$$PUNICODECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,%edi
	movl	%ecx,%ebx
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7962
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7967
	movl	-4(%eax),%eax
Lj7967:
	pushl	%eax
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj7970
	movl	$FPC_EMPTYCHAR,%eax
Lj7970:
	leal	-8(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%esi
	call	*%esi
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7977
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7977:
	cmpl	%ebx,%eax
	jnl	Lj7976
	movl	-8(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj7980
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj7980:
	shll	$1,%ecx
	movl	%edi,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj7985
Lj7976:
	movl	%ebx,%ecx
	decl	%ecx
	shll	$1,%ecx
	movl	%edi,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj7985:
	movw	$0,-2(%edi,%ebx,2)
	movl	%edi,%ebx
Lj7962:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-8(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7963
	call	FPC_RERAISE
Lj7963:
	movl	%ebx,%eax
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_WIDECHARTOSTRING$PWIDECHAR$$ANSISTRING
SYSTEM_WIDECHARTOSTRING$PWIDECHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,%ebx
	movl	%edx,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8004
	leal	-48(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%edx
	movl	%ebx,%eax
	call	fpc_pwidechar_to_unicodestr
	movl	-48(%ebp),%edx
	testl	%edx,%edx
	je	Lj8013
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj8013:
	movl	-4(%ebp),%ecx
	movl	%ebx,%eax
	call	SYSTEM_WIDECHARLENTOSTRING$PWIDECHAR$LONGINT$$ANSISTRING
Lj8004:
	call	FPC_POPADDRSTACK
	leal	-48(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-48(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8005
	call	FPC_RERAISE
Lj8005:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_STRINGTOWIDECHAR$ANSISTRING$PWIDECHAR$LONGINT$$PWIDECHAR
SYSTEM_STRINGTOWIDECHAR$ANSISTRING$PWIDECHAR$LONGINT$$PWIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,%edi
	movl	%ecx,%ebx
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8020
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8025
	movl	-4(%eax),%eax
Lj8025:
	pushl	%eax
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8028
	movl	$FPC_EMPTYCHAR,%eax
Lj8028:
	leal	-8(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+4,%esi
	call	*%esi
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj8035
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8035:
	cmpl	%ebx,%eax
	jnl	Lj8034
	movl	-8(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj8038
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj8038:
	shll	$1,%ecx
	movl	%edi,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj8043
Lj8034:
	movl	%ebx,%ecx
	decl	%ecx
	shll	$1,%ecx
	movl	%edi,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj8043:
	movw	$0,-2(%edi,%ebx,2)
	movl	%edi,%ebx
Lj8020:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-8(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8021
	call	FPC_RERAISE
Lj8021:
	movl	%ebx,%eax
	movl	-60(%ebp),%ebx
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UNICODECHARLENTOSTRING$PUNICODECHAR$LONGINT$$ANSISTRING
SYSTEM_UNICODECHARLENTOSTRING$PUNICODECHAR$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	pushl	%edx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-4(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UNICODECHARLENTOSTRVAR$PUNICODECHAR$LONGINT$ANSISTRING
SYSTEM_UNICODECHARLENTOSTRVAR$PUNICODECHAR$LONGINT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8072
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_UNICODECHARLENTOSTRING$PUNICODECHAR$LONGINT$$ANSISTRING
	movl	-48(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-48(%ebp),%eax
	movl	%eax,(%ebx)
Lj8072:
	call	FPC_POPADDRSTACK
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8073
	call	FPC_RERAISE
Lj8073:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UNICODECHARTOSTRVAR$PUNICODECHAR$ANSISTRING
SYSTEM_UNICODECHARTOSTRVAR$PUNICODECHAR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,%ebx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8085
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%edx
	movl	%ebx,%eax
	call	SYSTEM_UNICODECHARTOSTRING$PUNICODECHAR$$ANSISTRING
	movl	-48(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-48(%ebp),%eax
	movl	%eax,(%ebx)
Lj8085:
	call	FPC_POPADDRSTACK
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8086
	call	FPC_RERAISE
Lj8086:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_WIDECHARLENTOSTRING$PWIDECHAR$LONGINT$$ANSISTRING
SYSTEM_WIDECHARLENTOSTRING$PWIDECHAR$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	pushl	%edx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-4(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER,%ebx
	call	*%ebx
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_WIDECHARLENTOSTRVAR$PWIDECHAR$LONGINT$ANSISTRING
SYSTEM_WIDECHARLENTOSTRVAR$PWIDECHAR$LONGINT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8106
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_WIDECHARLENTOSTRING$PWIDECHAR$LONGINT$$ANSISTRING
	movl	-48(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-48(%ebp),%eax
	movl	%eax,(%ebx)
Lj8106:
	call	FPC_POPADDRSTACK
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8107
	call	FPC_RERAISE
Lj8107:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_WIDECHARTOSTRVAR$PWIDECHAR$ANSISTRING
SYSTEM_WIDECHARTOSTRVAR$PWIDECHAR$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,%ebx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8119
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%edx
	movl	%ebx,%eax
	call	SYSTEM_WIDECHARTOSTRING$PWIDECHAR$$ANSISTRING
	movl	-48(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-48(%ebp),%eax
	movl	%eax,(%ebx)
Lj8119:
	call	FPC_POPADDRSTACK
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8120
	call	FPC_RERAISE
Lj8120:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_unique
fpc_unicodestr_unique:
.globl	FPC_UNICODESTR_UNIQUE
FPC_UNICODESTR_UNIQUE:
	subl	$20,%esp
	movl	%ebx,8(%esp)
	movl	%esi,12(%esp)
	movl	%edi,16(%esp)
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	(%eax),%edx
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	movl	(%edx),%eax
	testl	%eax,%eax
	je	Lj8128
	movl	(%esp),%edx
	movl	(%edx),%eax
	subl	$8,%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj8135
	movl	(%esp),%edx
	movl	(%edx),%eax
	subl	$8,%eax
	movl	4(%eax),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,%ebx
	call	SYSTEM_NEWUNICODESTRING$LONGINT$$POINTER
	movl	%eax,%esi
	movl	%ebx,%eax
	incl	%eax
	shll	$1,%eax
	movl	%eax,%ecx
	movl	%esi,%edx
	movl	(%esp),%edi
	movl	(%edi),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%esi,%edx
	subl	$8,%edx
	movl	%ebx,%eax
	shll	$1,%eax
	movl	%eax,4(%edx)
	movl	(%esp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	(%esp),%eax
	movl	%esi,(%eax)
	movl	%esi,4(%esp)
Lj8135:
Lj8128:
	movl	4(%esp),%eax
	movl	8(%esp),%ebx
	movl	12(%esp),%esi
	movl	16(%esp),%edi
	addl	$20,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_copy
fpc_unicodestr_copy:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,%edi
	movl	%ecx,%esi
	movl	$0,%ebx
	decl	%edi
	testl	%edi,%edi
	jnl	Lj8161
	movl	$0,%edi
Lj8161:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8167
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8167:
	cmpl	%esi,%eax
	jl	Lj8164
Lj8166:
	movl	%esi,%eax
	addl	%edi,%eax
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj8168
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj8168:
	cmpl	%edx,%eax
	jng	Lj8165
Lj8164:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8171
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8171:
	subl	%edi,%eax
	movl	%eax,%esi
Lj8165:
	testl	%esi,%esi
	jng	Lj8173
	testl	%edi,%edi
	jnl	Lj8175
	movl	$0,%edi
Lj8175:
	movl	%esi,%eax
	call	SYSTEM_NEWUNICODESTRING$LONGINT$$POINTER
	movl	%eax,%ebx
	testl	%eax,%eax
	je	Lj8183
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8186
	movl	$FPC_EMPTYCHAR,%eax
Lj8186:
	leal	(%eax,%edi,2),%eax
	movl	%esi,%ecx
	shll	$1,%ecx
	movl	%ebx,%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%ebx,%eax
	subl	$8,%eax
	movl	%esi,%edx
	shll	$1,%edx
	movl	%edx,4(%eax)
	leal	(%ebx,%esi,2),%esi
	movw	$0,(%esi)
Lj8183:
Lj8173:
	movl	8(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	8(%ebp),%eax
	movl	%ebx,(%eax)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT
SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT:
	subl	$24,%esp
	movl	%ebx,12(%esp)
	movl	%esi,16(%esp)
	movl	%edi,20(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	$0,8(%esp)
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj8205
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8205:
	testl	%eax,%eax
	jng	Lj8204
	movl	4(%esp),%eax
	testl	%eax,%eax
	je	Lj8208
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8208:
	movl	(%esp),%edx
	testl	%edx,%edx
	je	Lj8209
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj8209:
	subl	%edx,%eax
	movl	%eax,%edi
	movl	$0,%esi
	movl	4(%esp),%ebx
	jmp	Lj8215
	.balign 4,0x90
Lj8214:
	incl	%esi
	movl	(%esp),%eax
	movw	(%ebx),%dx
	cmpw	(%eax),%dx
	jne	Lj8218
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj8222
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8222:
	movl	%eax,%ecx
	movl	%ebx,%edx
	movl	(%esp),%eax
	call	SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT
	testl	%eax,%eax
	jne	Lj8218
	movl	%esi,8(%esp)
	jmp	Lj8199
Lj8218:
	addl	$2,%ebx
Lj8215:
	cmpl	%edi,%esi
	jle	Lj8214
Lj8216:
Lj8204:
Lj8199:
	movl	8(%esp),%eax
	movl	12(%esp),%ebx
	movl	16(%esp),%esi
	movl	20(%esp),%edi
	addl	$24,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$WIDECHAR$UNICODESTRING$$LONGINT
SYSTEM_POS$WIDECHAR$UNICODESTRING$$LONGINT:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%edx,(%esp)
	movl	(%esp),%ecx
	movl	(%esp),%ebx
	testl	%ebx,%ebx
	je	Lj8236
	movl	-4(%ebx),%ebx
	shrl	$1,%ebx
Lj8236:
	movl	$1,%esi
	cmpl	%esi,%ebx
	jl	Lj8234
	decl	%esi
	.balign 4,0x90
Lj8235:
	incl	%esi
	movw	(%ecx),%di
	cmpw	%ax,%di
	jne	Lj8238
	movl	%esi,%edx
	jmp	Lj8229
Lj8238:
	addl	$2,%ecx
	cmpl	%esi,%ebx
	jg	Lj8235
Lj8234:
	movl	$0,%edx
Lj8229:
	movl	%edx,%eax
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$ANSISTRING$UNICODESTRING$$LONGINT
SYSTEM_POS$ANSISTRING$UNICODESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8245
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_to_unicodestr
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT
	movl	%eax,%ebx
Lj8245:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj8246
	call	FPC_RERAISE
Lj8246:
	movl	%ebx,%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$SHORTSTRING$UNICODESTRING$$LONGINT
SYSTEM_POS$SHORTSTRING$UNICODESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$308,%esp
	movl	%ebx,-308(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	leal	-264(%ebp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	movl	$0,-304(%ebp)
	leal	-276(%ebp),%ecx
	leal	-300(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8260
	leal	-304(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-304(%ebp)
	leal	-304(%ebp),%edx
	leal	-264(%ebp),%eax
	call	fpc_shortstr_to_unicodestr
	movl	-304(%ebp),%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT
	movl	%eax,%ebx
Lj8260:
	call	FPC_POPADDRSTACK
	leal	-304(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-304(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8261
	call	FPC_RERAISE
Lj8261:
	movl	%ebx,%eax
	movl	-308(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$UNICODESTRING$ANSISTRING$$LONGINT
SYSTEM_POS$UNICODESTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8275
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_to_unicodestr
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT
	movl	%eax,%ebx
Lj8275:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-4(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj8276
	call	FPC_RERAISE
Lj8276:
	movl	%ebx,%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$CHAR$UNICODESTRING$$LONGINT
SYSTEM_POS$CHAR$UNICODESTRING$$LONGINT:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%edx,(%esp)
	call	fpc_char_to_uchar
	movl	(%esp),%ecx
	movl	(%esp),%ebx
	testl	%ebx,%ebx
	je	Lj8299
	movl	-4(%ebx),%ebx
	shrl	$1,%ebx
Lj8299:
	movl	$1,%esi
	cmpl	%esi,%ebx
	jl	Lj8297
	decl	%esi
	.balign 4,0x90
Lj8298:
	incl	%esi
	movw	(%ecx),%di
	cmpw	%ax,%di
	jne	Lj8301
	movl	%esi,%edx
	jmp	Lj8288
Lj8301:
	addl	$2,%ecx
	cmpl	%esi,%ebx
	jg	Lj8298
Lj8297:
	movl	$0,%edx
Lj8288:
	movl	%edx,%eax
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DELETE$UNICODESTRING$LONGINT$LONGINT
SYSTEM_DELETE$UNICODESTRING$LONGINT$LONGINT:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,(%esp)
	movl	%edx,%edi
	movl	%ecx,%ebx
	movl	(%esp),%eax
	movl	(%eax),%esi
	testl	%esi,%esi
	je	Lj8310
	movl	-4(%esi),%esi
	shrl	$1,%esi
Lj8310:
	cmpl	%esi,%edi
	jg	Lj8306
Lj8314:
	testl	%edi,%edi
	jle	Lj8306
Lj8313:
	testl	%ebx,%ebx
	jle	Lj8306
	movl	(%esp),%eax
	call	FPC_UNICODESTR_UNIQUE
	movl	%esi,%eax
	subl	%edi,%eax
	cmpl	%ebx,%eax
	jnl	Lj8318
	movl	%esi,%eax
	subl	%edi,%eax
	incl	%eax
	movl	%eax,%ebx
Lj8318:
	movl	%esi,%eax
	subl	%edi,%eax
	cmpl	%ebx,%eax
	jnge	Lj8322
	decl	%edi
	movl	%esi,%ecx
	subl	%edi,%ecx
	subl	%ebx,%ecx
	incl	%ecx
	shll	$1,%ecx
	movl	(%esp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	jne	Lj8327
	movl	$FPC_EMPTYCHAR,%edx
Lj8327:
	movl	%ebx,%eax
	addl	%edi,%eax
	leal	(%edx,%eax,2),%eax
	movl	(%esp),%edx
	movl	(%edx),%edx
	testl	%edx,%edx
	jne	Lj8330
	movl	$FPC_EMPTYCHAR,%edx
Lj8330:
	leal	(%edx,%edi,2),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj8322:
	movl	%esi,%edx
	subl	%ebx,%edx
	movl	(%esp),%eax
	call	fpc_unicodestr_setlength
Lj8306:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INSERT$UNICODESTRING$UNICODESTRING$LONGINT
SYSTEM_INSERT$UNICODESTRING$UNICODESTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,%ebx
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8337
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8342
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8342:
	testl	%eax,%eax
	je	Lj8337
	testl	%ebx,%ebx
	jnle	Lj8344
	movl	$1,%ebx
Lj8344:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj8349
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8349:
	movl	%eax,%esi
	cmpl	%esi,%ebx
	jng	Lj8351
	movl	%esi,%eax
	incl	%eax
	movl	%eax,%ebx
Lj8351:
	decl	%ebx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8358
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8358:
	addl	%esi,%eax
	call	SYSTEM_NEWUNICODESTRING$LONGINT$$POINTER
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj8361
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj8361:
	addl	%esi,%edx
	leal	-12(%ebp),%eax
	call	fpc_unicodestr_setlength
	testl	%ebx,%ebx
	jng	Lj8365
	movl	%ebx,%ecx
	shll	$1,%ecx
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8370
	movl	$FPC_EMPTYCHAR,%eax
Lj8370:
	movl	-8(%ebp),%edx
	movl	(%edx),%edi
	testl	%edi,%edi
	jne	Lj8373
	movl	$FPC_EMPTYCHAR,%edi
Lj8373:
	movl	%eax,%edx
	movl	%edi,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj8365:
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj8376
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj8376:
	shll	$1,%ecx
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8379
	movl	$FPC_EMPTYCHAR,%eax
Lj8379:
	leal	(%eax,%ebx,2),%edx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8382
	movl	$FPC_EMPTYCHAR,%eax
Lj8382:
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%esi,%eax
	subl	%ebx,%eax
	testl	%eax,%eax
	jng	Lj8384
	movl	-12(%ebp),%edx
	testl	%edx,%edx
	jne	Lj8387
	movl	$FPC_EMPTYCHAR,%edx
Lj8387:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8388
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8388:
	addl	%ebx,%eax
	leal	(%edx,%eax,2),%edx
	movl	%esi,%eax
	subl	%ebx,%eax
	shll	$1,%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	testl	%ecx,%ecx
	jne	Lj8393
	movl	$FPC_EMPTYCHAR,%ecx
Lj8393:
	leal	(%ecx,%ebx,2),%ebx
	movl	%eax,%ecx
	movl	%ebx,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj8384:
	movl	-12(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-12(%ebp),%eax
	movl	%eax,(%ebx)
Lj8337:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8338
	call	FPC_RERAISE
Lj8338:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UPCASE$WIDECHAR$$WIDECHAR
SYSTEM_UPCASE$WIDECHAR$$WIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movw	%ax,%bx
	movl	$0,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8404
	leal	-4(%ebp),%edx
	movw	%bx,%ax
	call	fpc_uchar_to_unicodestr
	leal	-48(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+88,%ecx
	call	*%ecx
	movl	-48(%ebp),%eax
	movw	(%eax),%bx
Lj8404:
	call	FPC_POPADDRSTACK
	leal	-48(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-4(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-4(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8405
	call	FPC_RERAISE
Lj8405:
	movw	%bx,%ax
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UPCASE$UNICODESTRING$$UNICODESTRING
SYSTEM_UPCASE$UNICODESTRING$$UNICODESTRING:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	4(%esp),%edx
	movl	(%esp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+88,%ecx
	call	*%ecx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT
SYSTEM_SETSTRING$UNICODESTRING$PUNICODECHAR$LONGINT:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%eax,(%esp)
	movl	%edx,%ebx
	movl	%ecx,%esi
	movl	(%esp),%eax
	movl	$0,(%eax)
	movl	%esi,%edx
	movl	(%esp),%eax
	call	fpc_unicodestr_setlength
	testl	%ebx,%ebx
	je	Lj8436
	testl	%esi,%esi
	jng	Lj8436
	movl	(%esp),%eax
	call	fpc_unicodestr_unique
	movl	%eax,%edx
	movl	%esi,%ecx
	shll	$1,%ecx
	movl	%ebx,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj8436:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETSTRING$UNICODESTRING$PCHAR$LONGINT
SYSTEM_SETSTRING$UNICODESTRING$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,%ebx
	movl	%ecx,%esi
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	%esi,%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
	testl	%ebx,%ebx
	je	Lj8453
	testl	%esi,%esi
	jng	Lj8453
	pushl	%esi
	movl	-4(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	%ebx,%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
Lj8453:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_val_real_unicodestr
fpc_val_real_unicodestr:
.globl	FPC_VAL_REAL_UNICODESTR
FPC_VAL_REAL_UNICODESTR:
	subl	$276,%esp
	movl	%ebx,272(%esp)
	movl	%eax,(%esp)
	movl	%edx,%ebx
	fldz
	fstpt	4(%esp)
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj8469
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8469:
	cmpl	$255,%eax
	jng	Lj8468
	movl	$256,(%ebx)
	jmp	Lj8472
Lj8468:
	movl	(%esp),%ecx
	leal	16(%esp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	%ebx,%edx
	leal	16(%esp),%eax
	call	fpc_val_real_shortstr
	fstpt	4(%esp)
Lj8472:
	fldt	4(%esp)
	movl	272(%esp),%ebx
	addl	$276,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_val_enum_unicodestr
fpc_val_enum_unicodestr:
	subl	$264,%esp
	movl	%ebx,260(%esp)
	movl	%edx,(%esp)
	movl	%ecx,%ebx
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj8489
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8489:
	cmpl	$255,%eax
	jng	Lj8488
	movl	$256,(%ebx)
	jmp	Lj8492
Lj8488:
	movl	(%esp),%ecx
	leal	4(%esp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	%ebx,%ecx
	leal	4(%esp),%edx
	movl	$4,%eax
	call	fpc_val_sint_shortstr
Lj8492:
	movl	260(%esp),%ebx
	addl	$264,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_val_currency_unicodestr
fpc_val_currency_unicodestr:
.globl	FPC_VAL_CURRENCY_UNICODESTR
FPC_VAL_CURRENCY_UNICODESTR:
	subl	$272,%esp
	movl	%ebx,268(%esp)
	movl	%eax,(%esp)
	movl	%edx,%ebx
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj8511
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8511:
	cmpl	$255,%eax
	jng	Lj8510
	fldz
	fistpq	4(%esp)
	movl	$256,(%ebx)
	jmp	Lj8516
Lj8510:
	movl	(%esp),%ecx
	leal	12(%esp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	%ebx,%edx
	leal	12(%esp),%eax
	call	fpc_val_real_shortstr
	fldt	_$SYSTEM$_Ld22
	fmulp	%st,%st(1)
	fistpq	4(%esp)
Lj8516:
	fildq	4(%esp)
	movl	268(%esp),%ebx
	addl	$272,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_val_uint_unicodestr
fpc_val_uint_unicodestr:
.globl	FPC_VAL_UINT_UNICODESTR
FPC_VAL_UINT_UNICODESTR:
	subl	$268,%esp
	movl	%ebx,260(%esp)
	movl	%esi,264(%esp)
	movl	%eax,(%esp)
	movl	%edx,%ebx
	movl	$0,%esi
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj8535
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8535:
	cmpl	$255,%eax
	jng	Lj8534
	movl	$256,(%ebx)
	jmp	Lj8538
Lj8534:
	movl	(%esp),%ecx
	leal	4(%esp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	%ebx,%edx
	leal	4(%esp),%eax
	call	fpc_val_uint_shortstr
	movl	%eax,%esi
Lj8538:
	movl	%esi,%eax
	movl	260(%esp),%ebx
	movl	264(%esp),%esi
	addl	$268,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_val_sint_unicodestr
fpc_val_sint_unicodestr:
.globl	FPC_VAL_SINT_UNICODESTR
FPC_VAL_SINT_UNICODESTR:
	subl	$272,%esp
	movl	%ebx,260(%esp)
	movl	%esi,264(%esp)
	movl	%edi,268(%esp)
	movl	%eax,%edi
	movl	%edx,(%esp)
	movl	%ecx,%ebx
	movl	$0,%esi
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj8557
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8557:
	cmpl	$255,%eax
	jng	Lj8556
	movl	$256,(%ebx)
	jmp	Lj8560
Lj8556:
	movl	(%esp),%ecx
	leal	4(%esp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	%ebx,%ecx
	leal	4(%esp),%edx
	movl	%edi,%eax
	call	FPC_VAL_SINT_SHORTSTR
	movl	%eax,%esi
Lj8560:
	movl	%esi,%eax
	movl	260(%esp),%ebx
	movl	264(%esp),%esi
	movl	268(%esp),%edi
	addl	$272,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_val_qword_unicodestr
fpc_val_qword_unicodestr:
.globl	FPC_VAL_QWORD_UNICODESTR
FPC_VAL_QWORD_UNICODESTR:
	subl	$272,%esp
	movl	%ebx,260(%esp)
	movl	%esi,264(%esp)
	movl	%edi,268(%esp)
	movl	%eax,(%esp)
	movl	%edx,%edi
	movl	$0,%ebx
	movl	$0,%esi
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj8581
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8581:
	cmpl	$255,%eax
	jng	Lj8580
	movl	$256,(%edi)
	jmp	Lj8584
Lj8580:
	movl	(%esp),%ecx
	leal	4(%esp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	%edi,%edx
	leal	4(%esp),%eax
	call	fpc_val_qword_shortstr
	movl	%eax,%ebx
	movl	%edx,%esi
Lj8584:
	movl	%esi,%edx
	movl	%ebx,%eax
	movl	260(%esp),%ebx
	movl	264(%esp),%esi
	movl	268(%esp),%edi
	addl	$272,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_val_int64_unicodestr
fpc_val_int64_unicodestr:
.globl	FPC_VAL_INT64_UNICODESTR
FPC_VAL_INT64_UNICODESTR:
	subl	$272,%esp
	movl	%ebx,260(%esp)
	movl	%esi,264(%esp)
	movl	%edi,268(%esp)
	movl	%eax,(%esp)
	movl	%edx,%edi
	movl	$0,%ebx
	movl	$0,%esi
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj8603
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8603:
	cmpl	$255,%eax
	jng	Lj8602
	movl	$256,(%edi)
	jmp	Lj8606
Lj8602:
	movl	(%esp),%ecx
	leal	4(%esp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	%edi,%edx
	leal	4(%esp),%eax
	call	fpc_val_int64_shortstr
	movl	%eax,%ebx
	movl	%edx,%esi
Lj8606:
	movl	%esi,%edx
	movl	%ebx,%eax
	movl	260(%esp),%ebx
	movl	264(%esp),%esi
	movl	268(%esp),%edi
	addl	$272,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_float
fpc_unicodestr_float:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%ebx,-312(%ebp)
	movl	%esi,-308(%ebp)
	movl	%edi,-304(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,%edi
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-300(%ebp)
	leal	-268(%ebp),%ecx
	leal	-292(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8621
	movzwl	20(%ebp),%eax
	pushl	%eax
	pushl	16(%ebp)
	pushl	12(%ebp)
	leal	-256(%ebp),%eax
	pushl	%eax
	pushl	$255
	movl	%edi,%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_STR_REAL$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING
	leal	-300(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-300(%ebp)
	leal	-300(%ebp),%edx
	leal	-256(%ebp),%eax
	call	fpc_shortstr_to_unicodestr
	movl	-300(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-300(%ebp),%eax
	movl	%eax,(%ebx)
Lj8621:
	call	FPC_POPADDRSTACK
	leal	-300(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-300(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8622
	call	FPC_RERAISE
Lj8622:
	movl	-312(%ebp),%ebx
	movl	-308(%ebp),%esi
	movl	-304(%ebp),%edi
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
	movl	%esi,-312(%ebp)
	movl	%edi,-308(%ebp)
	movl	%eax,-304(%ebp)
	movl	%edx,%ebx
	movl	%ecx,%esi
	movl	12(%ebp),%edi
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-300(%ebp)
	leal	-268(%ebp),%ecx
	leal	-292(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8644
	pushl	%edi
	leal	-256(%ebp),%eax
	pushl	%eax
	pushl	$255
	movl	%esi,%ecx
	movl	%ebx,%edx
	movl	-304(%ebp),%eax
	call	FPC_SHORTSTR_ENUM
	leal	-300(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-300(%ebp)
	leal	-300(%ebp),%edx
	leal	-256(%ebp),%eax
	call	fpc_shortstr_to_unicodestr
	movl	-300(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-300(%ebp),%eax
	movl	%eax,(%ebx)
Lj8644:
	call	FPC_POPADDRSTACK
	leal	-300(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-300(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8645
	call	FPC_RERAISE
Lj8645:
	movl	-316(%ebp),%ebx
	movl	-312(%ebp),%esi
	movl	-308(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_unicodestr_bool
fpc_unicodestr_bool:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%ebx,-312(%ebp)
	movl	%esi,-308(%ebp)
	movb	%al,%bl
	movl	%edx,%esi
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-304(%ebp)
	leal	-272(%ebp),%ecx
	leal	-296(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8667
	pushl	$255
	leal	-260(%ebp),%ecx
	movl	%esi,%edx
	movb	%bl,%al
	call	FPC_SHORTSTR_BOOL
	leal	-304(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-304(%ebp)
	leal	-304(%ebp),%edx
	leal	-260(%ebp),%eax
	call	fpc_shortstr_to_unicodestr
	movl	-304(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-304(%ebp),%eax
	movl	%eax,(%ebx)
Lj8667:
	call	FPC_POPADDRSTACK
	leal	-304(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-304(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8668
	call	FPC_RERAISE
Lj8668:
	movl	-312(%ebp),%ebx
	movl	-308(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_currency
fpc_unicodestr_currency:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%ebx,-312(%ebp)
	movl	%esi,-308(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-304(%ebp)
	leal	-272(%ebp),%ecx
	leal	-296(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8686
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$255
	leal	-260(%ebp),%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	fpc_shortstr_currency
	leal	-304(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-304(%ebp)
	leal	-304(%ebp),%edx
	leal	-260(%ebp),%eax
	call	fpc_shortstr_to_unicodestr
	movl	-304(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-304(%ebp),%eax
	movl	%eax,(%ebx)
Lj8686:
	call	FPC_POPADDRSTACK
	leal	-304(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-304(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8687
	call	FPC_RERAISE
Lj8687:
	movl	-312(%ebp),%ebx
	movl	-308(%ebp),%esi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_unicodestr_sint
fpc_unicodestr_sint:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%ebx,-312(%ebp)
	movl	%esi,-308(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-304(%ebp)
	leal	-272(%ebp),%ecx
	leal	-296(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8707
	pushl	$255
	leal	-260(%ebp),%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	fpc_shortstr_sint
	leal	-304(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-304(%ebp)
	leal	-304(%ebp),%edx
	leal	-260(%ebp),%eax
	call	fpc_shortstr_to_unicodestr
	movl	-304(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-304(%ebp),%eax
	movl	%eax,(%ebx)
Lj8707:
	call	FPC_POPADDRSTACK
	leal	-304(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-304(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8708
	call	FPC_RERAISE
Lj8708:
	movl	-312(%ebp),%ebx
	movl	-308(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_uint
fpc_unicodestr_uint:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%ebx,-312(%ebp)
	movl	%esi,-308(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-304(%ebp)
	leal	-272(%ebp),%ecx
	leal	-296(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8726
	pushl	$255
	leal	-260(%ebp),%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	fpc_shortstr_uint
	leal	-304(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-304(%ebp)
	leal	-304(%ebp),%edx
	leal	-260(%ebp),%eax
	call	fpc_shortstr_to_unicodestr
	movl	-304(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-304(%ebp),%eax
	movl	%eax,(%ebx)
Lj8726:
	call	FPC_POPADDRSTACK
	leal	-304(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-304(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8727
	call	FPC_RERAISE
Lj8727:
	movl	-312(%ebp),%ebx
	movl	-308(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_unicodestr_int64
fpc_unicodestr_int64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movl	%esi,-312(%ebp)
	movl	%edi,-308(%ebp)
	movl	8(%ebp),%esi
	movl	12(%ebp),%edi
	movl	%eax,%ebx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-304(%ebp)
	leal	-272(%ebp),%ecx
	leal	-296(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8745
	pushl	%edi
	pushl	%esi
	leal	-260(%ebp),%edx
	movl	%ebx,%eax
	movl	$255,%ecx
	call	fpc_shortstr_int64
	leal	-304(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-304(%ebp)
	leal	-304(%ebp),%edx
	leal	-260(%ebp),%eax
	call	fpc_shortstr_to_unicodestr
	movl	-304(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-304(%ebp),%eax
	movl	%eax,(%ebx)
Lj8745:
	call	FPC_POPADDRSTACK
	leal	-304(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-304(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8746
	call	FPC_RERAISE
Lj8746:
	movl	-316(%ebp),%ebx
	movl	-312(%ebp),%esi
	movl	-308(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_unicodestr_qword
fpc_unicodestr_qword:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movl	%esi,-312(%ebp)
	movl	%edi,-308(%ebp)
	movl	8(%ebp),%esi
	movl	12(%ebp),%edi
	movl	%eax,%ebx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-304(%ebp)
	leal	-272(%ebp),%ecx
	leal	-296(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8764
	pushl	%edi
	pushl	%esi
	leal	-260(%ebp),%edx
	movl	%ebx,%eax
	movl	$255,%ecx
	call	fpc_shortstr_qword
	leal	-304(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-304(%ebp)
	leal	-304(%ebp),%edx
	leal	-260(%ebp),%eax
	call	fpc_shortstr_to_unicodestr
	movl	-304(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-304(%ebp),%eax
	movl	%eax,(%ebx)
Lj8764:
	call	FPC_POPADDRSTACK
	leal	-304(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-304(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8765
	call	FPC_RERAISE
Lj8765:
	movl	-316(%ebp),%ebx
	movl	-312(%ebp),%esi
	movl	-308(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_UTF16TOUTF32$UNICODESTRING$LONGINT$LONGINT$$UCS4CHAR
SYSTEM_UTF16TOUTF32$UNICODESTRING$LONGINT$LONGINT$$UCS4CHAR:
.globl	FPC_UTF16TOUTF32
FPC_UTF16TOUTF32:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movw	-2(%eax,%edx,2),%bx
	cmpw	$55295,%bx
	jbe	Lj8785
Lj8787:
	cmpw	$57344,%bx
	jnae	Lj8786
Lj8785:
	movzwl	%bx,%eax
	movl	$1,(%ecx)
	jmp	Lj8792
Lj8786:
	cmpw	$56319,%bx
	jnbe	Lj8794
	movl	(%esp),%esi
	testl	%esi,%esi
	je	Lj8798
	movl	-4(%esi),%esi
	shrl	$1,%esi
Lj8798:
	cmpl	%edx,%esi
	jng	Lj8794
	movl	(%esp),%edi
	movl	%edx,%esi
	incl	%esi
	movw	-2(%edi,%esi,2),%si
	cmpw	$56320,%si
	jnae	Lj8794
	movl	(%esp),%edi
	movl	%edx,%esi
	incl	%esi
	movw	-2(%edi,%esi,2),%si
	cmpw	$57343,%si
	jnbe	Lj8794
	movl	(%esp),%esi
	incl	%edx
	movzwl	-2(%esi,%edx,2),%esi
	subl	$56320,%esi
	movzwl	%bx,%edx
	subl	$55296,%edx
	shll	$10,%edx
	addl	%edx,%esi
	addl	$65536,%esi
	movl	%esi,%eax
	movl	$2,(%ecx)
	jmp	Lj8803
Lj8794:
	andl	$65535,%ebx
	movl	%ebx,%eax
	movl	$1,(%ecx)
Lj8803:
Lj8792:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UNICODETOUTF8$PCHAR$PUNICODECHAR$LONGINT$$LONGINT
SYSTEM_UNICODETOUTF8$PCHAR$PUNICODECHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%ebx
	movl	%edx,%edi
	movl	%ecx,%esi
	testl	%edi,%edi
	je	Lj8811
	movl	%edi,%eax
	movw	$0,%cx
	movl	$-1,%edx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	pushl	%eax
	movl	%edi,%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_UNICODETOUTF8$PCHAR$LONGWORD$PUNICODECHAR$LONGWORD$$LONGWORD
	jmp	Lj8828
Lj8811:
	movl	$0,%eax
Lj8828:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UNICODETOUTF8$PCHAR$LONGWORD$PUNICODECHAR$LONGWORD$$LONGWORD
SYSTEM_UNICODETOUTF8$PCHAR$LONGWORD$PUNICODECHAR$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$96,%esp
	movl	%ebx,-96(%ebp)
	movl	%esi,-92(%ebp)
	movl	%edi,-88(%ebp)
	movl	%eax,-60(%ebp)
	movl	%edx,%ebx
	movl	%ecx,-68(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8833
	movl	$0,-84(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj8833
	movl	$0,-72(%ebp)
	movl	$0,-80(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj8918
	jmp	Lj8847
	.balign 4,0x90
Lj8846:
	movl	-68(%ebp),%edx
	movl	-72(%ebp),%eax
	movw	(%edx,%eax,2),%ax
	movw	%ax,-64(%ebp)
	subw	$127,%ax
	jbe	Lj8853
	subw	$1920,%ax
	jbe	Lj8854
	subw	$53248,%ax
	jbe	Lj8855
	subw	$1024,%ax
	jbe	Lj8856
	subw	$1025,%ax
	jb	Lj8852
	subw	$8191,%ax
	jbe	Lj8855
	jmp	Lj8852
Lj8853:
	movb	-64(%ebp),%al
	movl	-60(%ebp),%edx
	movl	-80(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	incl	-80(%ebp)
	jmp	Lj8851
Lj8854:
	movl	-80(%ebp),%eax
	incl	%eax
	cmpl	%ebx,%eax
	jae	Lj8848
	movzwl	-64(%ebp),%eax
	shrl	$6,%eax
	orl	$192,%eax
	movl	-60(%ebp),%ecx
	movl	-80(%ebp),%edx
	movb	%al,(%ecx,%edx,1)
	movl	-80(%ebp),%eax
	incl	%eax
	movl	%eax,%ecx
	movw	-64(%ebp),%ax
	andw	$63,%ax
	orw	$128,%ax
	movl	-60(%ebp),%edx
	movb	%al,(%edx,%ecx,1)
	addl	$2,-80(%ebp)
	jmp	Lj8851
Lj8855:
	movl	-80(%ebp),%eax
	addl	$2,%eax
	cmpl	%ebx,%eax
	jae	Lj8848
	movzwl	-64(%ebp),%eax
	shrl	$12,%eax
	orl	$224,%eax
	movl	-60(%ebp),%ecx
	movl	-80(%ebp),%edx
	movb	%al,(%ecx,%edx,1)
	movzwl	-64(%ebp),%eax
	shrl	$6,%eax
	andl	$63,%eax
	orl	$128,%eax
	movl	-80(%ebp),%edx
	incl	%edx
	movl	%edx,%ecx
	movl	-60(%ebp),%edx
	movb	%al,(%edx,%ecx,1)
	movl	-80(%ebp),%eax
	addl	$2,%eax
	movl	%eax,%ecx
	movw	-64(%ebp),%ax
	andw	$63,%ax
	orw	$128,%ax
	movl	-60(%ebp),%edx
	movb	%al,(%edx,%ecx,1)
	addl	$3,-80(%ebp)
	jmp	Lj8851
Lj8856:
	movl	-80(%ebp),%eax
	addl	$3,%eax
	cmpl	%ebx,%eax
	jae	Lj8848
	movl	-76(%ebp),%edi
	movl	$0,%ecx
	subl	$1,%edi
	sbbl	$0,%ecx
	movl	-72(%ebp),%edx
	movl	$0,%eax
	cmpl	%eax,%ecx
	jg	Lj8878
	jl	Lj8851
	cmpl	%edx,%edi
	jna	Lj8851
Lj8878:
	movl	-72(%ebp),%eax
	incl	%eax
	movl	-68(%ebp),%edx
	movw	(%edx,%eax,2),%ax
	cmpw	$56320,%ax
	jnae	Lj8851
	movl	-72(%ebp),%eax
	incl	%eax
	movl	-68(%ebp),%edx
	movw	(%edx,%eax,2),%ax
	cmpw	$57343,%ax
	jnbe	Lj8851
	leal	-48(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	movl	-72(%ebp),%eax
	incl	%eax
	movl	-68(%ebp),%edx
	movw	(%edx,%eax,2),%ax
	leal	-52(%ebp),%edx
	call	fpc_uchar_to_unicodestr
	movl	-52(%ebp),%edi
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	movl	-68(%ebp),%edx
	movl	-72(%ebp),%ecx
	movw	(%edx,%ecx,2),%ax
	leal	-56(%ebp),%edx
	call	fpc_uchar_to_unicodestr
	movl	-56(%ebp),%edx
	leal	-48(%ebp),%eax
	movl	%edi,%ecx
	call	fpc_unicodestr_concat
	movl	-48(%ebp),%eax
	leal	-4(%ebp),%ecx
	movl	$1,%edx
	call	SYSTEM_UTF16TOUTF32$UNICODESTRING$LONGINT$LONGINT$$UCS4CHAR
	movl	%eax,%esi
	shrl	$18,%eax
	orl	$240,%eax
	movl	-60(%ebp),%edx
	movl	-80(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	movl	%esi,%eax
	shrl	$12,%eax
	andl	$63,%eax
	orl	$128,%eax
	movl	-80(%ebp),%edx
	incl	%edx
	movl	%edx,%ecx
	movl	-60(%ebp),%edx
	movb	%al,(%edx,%ecx,1)
	movl	%esi,%eax
	shrl	$6,%eax
	andl	$63,%eax
	orl	$128,%eax
	movl	-80(%ebp),%edx
	addl	$2,%edx
	movl	-60(%ebp),%ecx
	movb	%al,(%ecx,%edx,1)
	movl	-80(%ebp),%eax
	addl	$3,%eax
	movl	%eax,%ecx
	movl	%esi,%eax
	andl	$63,%eax
	orl	$128,%eax
	movl	-60(%ebp),%edx
	movb	%al,(%edx,%ecx,1)
	addl	$4,-80(%ebp)
	incl	-72(%ebp)
Lj8852:
Lj8851:
	incl	-72(%ebp)
Lj8847:
	movl	-72(%ebp),%eax
	cmpl	-76(%ebp),%eax
	jnb	Lj8848
	cmpl	%ebx,-80(%ebp)
	jb	Lj8846
Lj8848:
	movl	%ebx,%eax
	decl	%eax
	cmpl	-80(%ebp),%eax
	jnb	Lj8911
	movl	%ebx,%eax
	decl	%eax
	movl	%eax,-80(%ebp)
Lj8911:
	movl	-60(%ebp),%edx
	movl	-80(%ebp),%eax
	movb	$0,(%edx,%eax,1)
	jmp	Lj8916
	.balign 4,0x90
Lj8917:
	movl	-68(%ebp),%edx
	movl	-72(%ebp),%ecx
	movw	(%edx,%ecx,2),%ax
	subw	$127,%ax
	jbe	Lj8922
	subw	$1920,%ax
	jbe	Lj8923
	subw	$53248,%ax
	jbe	Lj8924
	subw	$1024,%ax
	jbe	Lj8925
	subw	$1025,%ax
	jb	Lj8921
	subw	$8191,%ax
	jbe	Lj8924
	jmp	Lj8921
Lj8922:
	incl	-80(%ebp)
	jmp	Lj8920
Lj8923:
	addl	$2,-80(%ebp)
	jmp	Lj8920
Lj8924:
	addl	$3,-80(%ebp)
	jmp	Lj8920
Lj8925:
	movl	-76(%ebp),%eax
	movl	$0,%ecx
	subl	$1,%eax
	sbbl	$0,%ecx
	movl	-72(%ebp),%edx
	movl	$0,%ebx
	cmpl	%ebx,%ecx
	jg	Lj8929
	jl	Lj8920
	cmpl	%edx,%eax
	jna	Lj8920
Lj8929:
	movl	-72(%ebp),%eax
	incl	%eax
	movl	-68(%ebp),%edx
	movw	(%edx,%eax,2),%ax
	cmpw	$56320,%ax
	jnae	Lj8920
	movl	-72(%ebp),%eax
	incl	%eax
	movl	-68(%ebp),%edx
	movw	(%edx,%eax,2),%ax
	cmpw	$57343,%ax
	jnbe	Lj8920
	addl	$4,-80(%ebp)
	incl	-72(%ebp)
Lj8921:
Lj8920:
	incl	-72(%ebp)
Lj8918:
	movl	-72(%ebp),%eax
	cmpl	-76(%ebp),%eax
	jb	Lj8917
Lj8919:
Lj8916:
	movl	-80(%ebp),%eax
	incl	%eax
	movl	%eax,-84(%ebp)
Lj8833:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-48(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-48(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8834
	call	FPC_RERAISE
Lj8834:
	movl	-84(%ebp),%eax
	movl	-96(%ebp),%ebx
	movl	-92(%ebp),%esi
	movl	-88(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_UTF8TOUNICODE$PUNICODECHAR$PCHAR$LONGINT$$LONGINT
SYSTEM_UTF8TOUNICODE$PUNICODECHAR$PCHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,%edi
	testl	%esi,%esi
	je	Lj8935
	movl	%esi,%eax
	call	FPC_PCHAR_LENGTH
	pushl	%eax
	movl	%esi,%ecx
	movl	%edi,%edx
	movl	%ebx,%eax
	call	SYSTEM_UTF8TOUNICODE$PUNICODECHAR$LONGWORD$PCHAR$LONGWORD$$LONGWORD
	jmp	Lj8948
Lj8935:
	movl	$0,%eax
Lj8948:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UTF8TOUNICODE$PUNICODECHAR$LONGWORD$PCHAR$LONGWORD$$LONGWORD
SYSTEM_UTF8TOUNICODE$PUNICODECHAR$LONGWORD$PCHAR$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	movl	%edi,-48(%ebp)
	movl	%eax,%esi
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8954
Lj8953:
	movl	$0,-36(%ebp)
	jmp	Lj8951
Lj8954:
	movl	$-1,-36(%ebp)
	movl	$0,-4(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-28(%ebp)
	testl	%esi,%esi
	je	Lj9102
	jmp	Lj8968
	.balign 4,0x90
Lj8967:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%ecx
	movb	(%eax,%ecx,1),%al
	movb	%al,-44(%ebp)
	andl	$128,%eax
	jne	Lj8973
	movzbl	-44(%ebp),%eax
	cmpl	$10,%eax
	jne	Lj8975
	cmpl	$13,-28(%ebp)
	je	Lj8977
	jmp	Lj8977
Lj8979:
	movl	-32(%ebp),%eax
	movw	$13,(%esi,%eax,2)
	incl	-32(%ebp)
	movl	-32(%ebp),%eax
	movw	$10,(%esi,%eax,2)
	incl	-32(%ebp)
	movl	$10,-28(%ebp)
	jmp	Lj8995
Lj8980:
	movl	-32(%ebp),%eax
	movw	$13,(%esi,%eax,2)
	incl	-32(%ebp)
	jmp	Lj8995
Lj8977:
	movzbw	-44(%ebp),%cx
	movl	-32(%ebp),%eax
	movw	%cx,(%esi,%eax,2)
	incl	-32(%ebp)
	movzbl	-44(%ebp),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj8995
Lj8975:
	movzbw	-44(%ebp),%ax
	movl	-32(%ebp),%ecx
	movw	%ax,(%esi,%ecx,2)
	incl	-32(%ebp)
	movzbl	-44(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj8995:
	incl	-4(%ebp)
	jmp	Lj9000
Lj8973:
	movb	-44(%ebp),%al
	movb	%al,-40(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj9006
	.balign 4,0x90
Lj9005:
	movzbl	-40(%ebp),%eax
	shll	$1,%eax
	andl	$254,%eax
	movb	%al,-40(%ebp)
	incl	-16(%ebp)
Lj9006:
	movb	-40(%ebp),%al
	andl	$128,%eax
	jne	Lj9005
Lj9007:
	movl	-16(%ebp),%eax
	addl	-4(%ebp),%eax
	decl	%eax
	cmpl	-20(%ebp),%eax
	jna	Lj9011
	movl	$1,-16(%ebp)
Lj9011:
	movl	-16(%ebp),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jb	Lj9015
	decl	-12(%ebp)
	.balign 4,0x90
Lj9016:
	incl	-12(%ebp)
	movl	-12(%ebp),%eax
	addl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movb	(%ecx,%eax,1),%al
	movb	%al,%cl
	andb	$128,%cl
	negb	%cl
	jno	Lj9017
Lj9019:
	andl	$64,%eax
	je	Lj9018
Lj9017:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj9015
Lj9018:
	cmpl	-12(%ebp),%ebx
	ja	Lj9016
Lj9015:
	movl	$65535,-24(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj9033
	decl	%eax
	je	Lj9034
	decl	%eax
	je	Lj9035
	decl	%eax
	je	Lj9036
	decl	%eax
	je	Lj9037
	decl	%eax
	jb	Lj9033
	subl	$2,%eax
	jbe	Lj9038
	jmp	Lj9033
Lj9034:
	movl	$63,-24(%ebp)
	jmp	Lj9032
Lj9035:
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%ecx
	movb	(%ebx,%ecx,1),%al
	andl	$31,%eax
	shll	$6,%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	incl	%eax
	movl	-8(%ebp),%ecx
	movb	(%ecx,%eax,1),%al
	andl	$63,%eax
	orl	-24(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	$127,%eax
	jnbe	Lj9032
	movl	$63,-24(%ebp)
	jmp	Lj9032
Lj9036:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%ebx
	movb	(%ecx,%ebx,1),%al
	andl	$15,%eax
	shll	$12,%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	incl	%eax
	movl	-8(%ebp),%ecx
	movb	(%ecx,%eax,1),%al
	andl	$63,%eax
	shll	$6,%eax
	orl	-24(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	addl	$2,%eax
	movl	-8(%ebp),%ecx
	movb	(%ecx,%eax,1),%al
	andl	$63,%eax
	orl	-24(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	$2047,%eax
	jbe	Lj9055
Lj9058:
	cmpl	$65534,-24(%ebp)
	jae	Lj9055
Lj9057:
	cmpl	$55296,-24(%ebp)
	jnae	Lj9032
	cmpl	$57343,-24(%ebp)
	jnbe	Lj9032
Lj9055:
	movl	$63,-24(%ebp)
	jmp	Lj9032
Lj9037:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%ebx
	movb	(%ecx,%ebx,1),%al
	andl	$7,%eax
	shll	$18,%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	incl	%eax
	movl	-8(%ebp),%ecx
	movb	(%ecx,%eax,1),%al
	andl	$63,%eax
	shll	$12,%eax
	orl	-24(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	addl	$2,%eax
	movl	-8(%ebp),%ecx
	movb	(%ecx,%eax,1),%al
	andl	$63,%eax
	shll	$6,%eax
	orl	-24(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	addl	$3,%eax
	movl	-8(%ebp),%ecx
	movb	(%ecx,%eax,1),%al
	andl	$63,%eax
	orl	-24(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	$65536,%eax
	jb	Lj9070
Lj9072:
	cmpl	$1114111,-24(%ebp)
	jna	Lj9071
Lj9070:
	movl	$63,-24(%ebp)
	jmp	Lj9032
Lj9071:
	subl	$65536,-24(%ebp)
	movl	%edx,%ebx
	movl	$0,%eax
	subl	$1,%ebx
	sbbl	$0,%eax
	movl	-32(%ebp),%ecx
	movl	$0,%edi
	cmpl	%edi,%eax
	jg	Lj9076
	jl	Lj9077
	cmpl	%ecx,%ebx
	jna	Lj9077
Lj9076:
	movl	-24(%ebp),%eax
	shrl	$10,%eax
	addl	$55296,%eax
	movl	-32(%ebp),%ecx
	movw	%ax,(%esi,%ecx,2)
	incl	-32(%ebp)
	movl	-24(%ebp),%eax
	andl	$1023,%eax
	addl	$56320,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj9032
Lj9077:
	movl	-16(%ebp),%eax
	addl	-4(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj9032
Lj9038:
	movl	$63,-24(%ebp)
Lj9033:
Lj9032:
	cmpl	$0,-16(%ebp)
	jna	Lj9090
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	movw	-24(%ebp),%ax
	movl	-32(%ebp),%ecx
	movw	%ax,(%esi,%ecx,2)
	incl	-32(%ebp)
Lj9090:
	movl	-16(%ebp),%eax
	addl	-4(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj9000:
Lj8968:
	cmpl	%edx,-32(%ebp)
	jnb	Lj8969
	movl	-4(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj8967
Lj8969:
	movl	-32(%ebp),%eax
	incl	%eax
	movl	%eax,-36(%ebp)
	jmp	Lj9100
	.balign 4,0x90
Lj9101:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-44(%ebp)
	andl	$128,%eax
	jne	Lj9107
	movzbl	-44(%ebp),%eax
	cmpl	$10,%eax
	jne	Lj9109
	cmpl	$13,-28(%ebp)
Lj9111:
	incl	-32(%ebp)
	movzbl	-44(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj9115:
	jmp	Lj9118
Lj9109:
	incl	-32(%ebp)
	movzbl	-44(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj9118:
	incl	-4(%ebp)
	jmp	Lj9121
Lj9107:
	movb	-44(%ebp),%al
	movb	%al,-40(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj9127
	.balign 4,0x90
Lj9126:
	movzbl	-40(%ebp),%eax
	shll	$1,%eax
	andl	$254,%eax
	movb	%al,-40(%ebp)
	incl	-16(%ebp)
Lj9127:
	movb	-40(%ebp),%al
	andl	$128,%eax
	jne	Lj9126
Lj9128:
	movl	-16(%ebp),%eax
	addl	-4(%ebp),%eax
	decl	%eax
	cmpl	-20(%ebp),%eax
	jna	Lj9132
	movl	$1,-16(%ebp)
Lj9132:
	movl	-16(%ebp),%eax
	decl	%eax
	movl	%eax,%edx
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%edx
	jb	Lj9136
	decl	-12(%ebp)
	.balign 4,0x90
Lj9137:
	incl	-12(%ebp)
	movl	-12(%ebp),%eax
	addl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movb	(%ecx,%eax,1),%al
	movb	%al,%cl
	andb	$128,%cl
	negb	%cl
	jno	Lj9138
Lj9140:
	andl	$64,%eax
	je	Lj9139
Lj9138:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj9136
Lj9139:
	cmpl	-12(%ebp),%edx
	ja	Lj9137
Lj9136:
	movl	$65535,-24(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj9154
	decl	%eax
	je	Lj9155
	decl	%eax
	je	Lj9156
	decl	%eax
	je	Lj9157
	decl	%eax
	je	Lj9158
	decl	%eax
	jb	Lj9154
	subl	$2,%eax
	jbe	Lj9159
	jmp	Lj9154
Lj9155:
	movl	$63,-24(%ebp)
	jmp	Lj9153
Lj9156:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	(%edx,%eax,1),%cl
	andb	$31,%cl
	movzbl	%cl,%eax
	shll	$6,%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	incl	%eax
	movl	-8(%ebp),%edx
	movb	(%edx,%eax,1),%al
	andl	$63,%eax
	orl	-24(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	$127,%eax
	jnbe	Lj9153
	movl	$63,-24(%ebp)
	jmp	Lj9153
Lj9157:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	(%edx,%eax,1),%cl
	andb	$15,%cl
	movzbl	%cl,%eax
	shll	$12,%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	incl	%eax
	movl	-8(%ebp),%edx
	movb	(%edx,%eax,1),%al
	andl	$63,%eax
	shll	$6,%eax
	orl	-24(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	addl	$2,%eax
	movl	-8(%ebp),%edx
	movb	(%edx,%eax,1),%al
	andl	$63,%eax
	orl	-24(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	$2047,%eax
	jbe	Lj9176
Lj9179:
	cmpl	$65534,-24(%ebp)
	jae	Lj9176
Lj9178:
	cmpl	$55296,-24(%ebp)
	jnae	Lj9153
	cmpl	$57343,-24(%ebp)
	jnbe	Lj9153
Lj9176:
	movl	$63,-24(%ebp)
	jmp	Lj9153
Lj9158:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movb	(%eax,%edx,1),%cl
	andb	$7,%cl
	movzbl	%cl,%eax
	shll	$18,%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	incl	%eax
	movl	-8(%ebp),%edx
	movb	(%edx,%eax,1),%al
	andl	$63,%eax
	shll	$12,%eax
	orl	-24(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	addl	$2,%eax
	movl	-8(%ebp),%edx
	movb	(%edx,%eax,1),%al
	andl	$63,%eax
	shll	$6,%eax
	orl	-24(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	addl	$3,%eax
	movl	-8(%ebp),%edx
	movb	(%edx,%eax,1),%al
	andl	$63,%eax
	orl	-24(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	$65536,%eax
	jb	Lj9191
Lj9193:
	cmpl	$1114111,-24(%ebp)
	jna	Lj9192
Lj9191:
	movl	$63,-24(%ebp)
	jmp	Lj9153
Lj9192:
	incl	-32(%ebp)
	jmp	Lj9153
Lj9159:
	movl	$63,-24(%ebp)
Lj9154:
Lj9153:
	cmpl	$0,-16(%ebp)
	jna	Lj9200
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	incl	-32(%ebp)
Lj9200:
	movl	-16(%ebp),%eax
	addl	-4(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj9121:
Lj9102:
	movl	-4(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj9101
Lj9103:
	movl	-32(%ebp),%eax
	incl	%eax
	movl	%eax,-36(%ebp)
Lj9100:
Lj8951:
	movl	-36(%ebp),%eax
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	movl	-48(%ebp),%edi
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
	jne	Lj9209
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_to_unicodestr
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_UTF8ENCODE$UNICODESTRING$$UTF8STRING
Lj9209:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9210
	call	FPC_RERAISE
Lj9210:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UTF8ENCODE$UNICODESTRING$$UTF8STRING
SYSTEM_UTF8ENCODE$UNICODESTRING$$UTF8STRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
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
	jne	Lj9222
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9222
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj9231
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9231:
	leal	(%edx,%edx,2),%edx
	leal	-12(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9238
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9238:
	pushl	%eax
	movl	-12(%ebp),%edx
	testl	%edx,%edx
	je	Lj9241
	movl	-4(%edx),%edx
Lj9241:
	incl	%edx
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	jne	Lj9244
	movl	$FPC_EMPTYCHAR,%ecx
Lj9244:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj9247
	movl	$FPC_EMPTYCHAR,%eax
Lj9247:
	call	SYSTEM_UNICODETOUTF8$PCHAR$LONGWORD$PUNICODECHAR$LONGWORD$$LONGWORD
	movl	%eax,%edx
	testl	%edx,%edx
	jng	Lj9249
	decl	%edx
	leal	-12(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-12(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-12(%ebp),%eax
	movl	%eax,(%ebx)
Lj9249:
Lj9222:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9223
	call	FPC_RERAISE
Lj9223:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UTF8DECODE$UTF8STRING$$UNICODESTRING
SYSTEM_UTF8DECODE$UTF8STRING$$UNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
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
	jne	Lj9264
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9264
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj9273
	movl	-4(%edx),%edx
Lj9273:
	leal	-12(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9280
	movl	-4(%eax),%eax
Lj9280:
	pushl	%eax
	movl	-12(%ebp),%edx
	testl	%edx,%edx
	je	Lj9283
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9283:
	incl	%edx
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	jne	Lj9286
	movl	$FPC_EMPTYCHAR,%ecx
Lj9286:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj9289
	movl	$FPC_EMPTYCHAR,%eax
Lj9289:
	call	SYSTEM_UTF8TOUNICODE$PUNICODECHAR$LONGWORD$PCHAR$LONGWORD$$LONGWORD
	movl	%eax,%edx
	testl	%edx,%edx
	jng	Lj9291
	decl	%edx
	leal	-12(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-12(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-12(%ebp),%eax
	movl	%eax,(%ebx)
Lj9291:
Lj9264:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9265
	call	FPC_RERAISE
Lj9265:
	movl	-56(%ebp),%ebx
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
	jne	Lj9306
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
Lj9306:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9307
	call	FPC_RERAISE
Lj9307:
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
	jne	Lj9319
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_UTF8DECODE$UTF8STRING$$UNICODESTRING
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
Lj9319:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9320
	call	FPC_RERAISE
Lj9320:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UNICODESTRINGTOUCS4STRING$UNICODESTRING$$UCS4STRING
SYSTEM_UNICODESTRINGTOUCS4STRING$UNICODESTRING$$UCS4STRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj9332
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9337
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9337:
	movl	%eax,%edi
	incl	%eax
	movl	%eax,-56(%ebp)
	leal	-56(%ebp),%eax
	pushl	%eax
	movl	$INIT_SYSTEM_UCS4STRING,%edx
	leal	-8(%ebp),%eax
	movl	$1,%ecx
	call	fpc_dynarray_setlength
	movl	$1,%ebx
	movl	$0,%esi
	jmp	Lj9353
	.balign 4,0x90
Lj9352:
	leal	-12(%ebp),%ecx
	movl	%ebx,%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_UTF16TOUTF32$UNICODESTRING$LONGINT$LONGINT$$UCS4CHAR
	movl	-8(%ebp),%edx
	movl	%eax,(%edx,%esi,4)
	incl	%esi
	movl	-12(%ebp),%eax
	addl	%eax,%ebx
Lj9353:
	cmpl	%edi,%ebx
	jle	Lj9352
Lj9354:
	movl	%esi,%eax
	incl	%eax
	movl	%eax,-56(%ebp)
	leal	-56(%ebp),%eax
	pushl	%eax
	movl	$INIT_SYSTEM_UCS4STRING,%edx
	leal	-8(%ebp),%eax
	movl	$1,%ecx
	call	fpc_dynarray_setlength
Lj9332:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj9333
	movl	$INIT_SYSTEM_UCS4STRING,%edx
	leal	-8(%ebp),%eax
	call	fpc_finalize
	call	FPC_RERAISE
Lj9333:
	movl	-8(%ebp),%eax
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_CONCATUTF32TOUNICODESTR$UCS4CHAR$UNICODESTRING$LONGINT:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%eax,%ebx
	movl	%edx,(%esp)
	movl	%ecx,%esi
	cmpl	$65535,%ebx
	setab	%al
	andl	$255,%eax
	movl	(%esi),%edx
	addl	%edx,%eax
	movl	(%esp),%edx
	movl	(%edx),%edx
	testl	%edx,%edx
	je	Lj9385
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9385:
	cmpl	%edx,%eax
	jng	Lj9382
	movl	(%esp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9388
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9388:
	cmpl	$2560,%eax
	jnl	Lj9387
	movl	(%esp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj9391
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9391:
	addl	$10,%edx
	movl	(%esp),%eax
	call	fpc_unicodestr_setlength
	jmp	Lj9394
Lj9387:
	movl	(%esp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj9397
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9397:
	shrl	$8,%edx
	movl	(%esp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9398
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9398:
	addl	%eax,%edx
	movl	(%esp),%eax
	call	fpc_unicodestr_setlength
Lj9394:
Lj9382:
	movl	(%esp),%eax
	movl	(%eax),%eax
	movl	(%esi),%edx
	leal	-2(%eax,%edx,2),%eax
	cmpl	$65535,%ebx
	jnb	Lj9404
	movw	%bx,(%eax)
	incl	(%esi)
	jmp	Lj9407
Lj9404:
	cmpl	$1114111,%ebx
	jnbe	Lj9409
	movl	%ebx,%edx
	subl	$65536,%edx
	shrl	$10,%edx
	addl	$55296,%edx
	movw	%dx,(%eax)
	subl	$65536,%ebx
	andl	$1023,%ebx
	addl	$56320,%ebx
	movl	%eax,%edx
	addl	$2,%edx
	movw	%bx,(%edx)
	addl	$2,(%esi)
	jmp	Lj9414
Lj9409:
	movw	$63,(%eax)
	incl	(%esi)
Lj9414:
Lj9407:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UCS4STRINGTOUNICODESTRING$UCS4STRING$$UNICODESTRING
SYSTEM_UCS4STRINGTOUNICODESTRING$UCS4STRING$$UNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	call	fpc_dynarray_length
	movl	%eax,%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	$1,-8(%ebp)
	movl	8(%ebp),%eax
	call	fpc_dynarray_high
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,%esi
	cmpl	%esi,%ebx
	jl	Lj9428
	decl	%esi
	.balign 4,0x90
Lj9429:
	incl	%esi
	movl	8(%ebp),%eax
	movl	(%eax,%esi,4),%eax
	leal	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	SYSTEM_CONCATUTF32TOUNICODESTR$UCS4CHAR$UNICODESTRING$LONGINT
	cmpl	%esi,%ebx
	jg	Lj9429
Lj9428:
	movl	-8(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_WIDESTRINGTOUCS4STRING$WIDESTRING$$UCS4STRING
SYSTEM_WIDESTRINGTOUCS4STRING$WIDESTRING$$UCS4STRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj9444
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9449
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9449:
	movl	%eax,%edi
	incl	%eax
	movl	%eax,-56(%ebp)
	leal	-56(%ebp),%eax
	pushl	%eax
	movl	$INIT_SYSTEM_UCS4STRING,%edx
	leal	-8(%ebp),%eax
	movl	$1,%ecx
	call	fpc_dynarray_setlength
	movl	$1,%ebx
	movl	$0,%esi
	jmp	Lj9465
	.balign 4,0x90
Lj9464:
	leal	-12(%ebp),%ecx
	movl	%ebx,%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_UTF16TOUTF32$UNICODESTRING$LONGINT$LONGINT$$UCS4CHAR
	movl	-8(%ebp),%edx
	movl	%eax,(%edx,%esi,4)
	incl	%esi
	movl	-12(%ebp),%eax
	addl	%eax,%ebx
Lj9465:
	cmpl	%edi,%ebx
	jle	Lj9464
Lj9466:
	movl	%esi,%eax
	incl	%eax
	movl	%eax,-56(%ebp)
	leal	-56(%ebp),%eax
	pushl	%eax
	movl	$INIT_SYSTEM_UCS4STRING,%edx
	leal	-8(%ebp),%eax
	movl	$1,%ecx
	call	fpc_dynarray_setlength
Lj9444:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj9445
	movl	$INIT_SYSTEM_UCS4STRING,%edx
	leal	-8(%ebp),%eax
	call	fpc_finalize
	call	FPC_RERAISE
Lj9445:
	movl	-8(%ebp),%eax
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_CONCATUTF32TOWIDESTR$UCS4CHAR$WIDESTRING$LONGINT:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%eax,%ebx
	movl	%edx,(%esp)
	movl	%ecx,%esi
	cmpl	$65535,%ebx
	setab	%al
	andl	$255,%eax
	movl	(%esi),%edx
	addl	%edx,%eax
	movl	(%esp),%edx
	movl	(%edx),%edx
	testl	%edx,%edx
	je	Lj9497
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9497:
	cmpl	%edx,%eax
	jng	Lj9494
	movl	(%esp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9500
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9500:
	cmpl	$2560,%eax
	jnl	Lj9499
	movl	(%esp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj9503
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9503:
	addl	$10,%edx
	movl	(%esp),%eax
	call	fpc_unicodestr_setlength
	jmp	Lj9506
Lj9499:
	movl	(%esp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj9509
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9509:
	shrl	$8,%edx
	movl	(%esp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9510
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9510:
	addl	%eax,%edx
	movl	(%esp),%eax
	call	fpc_unicodestr_setlength
Lj9506:
Lj9494:
	movl	(%esp),%eax
	movl	(%eax),%eax
	movl	(%esi),%edx
	leal	-2(%eax,%edx,2),%eax
	cmpl	$65535,%ebx
	jnb	Lj9516
	movw	%bx,(%eax)
	incl	(%esi)
	jmp	Lj9519
Lj9516:
	cmpl	$1114111,%ebx
	jnbe	Lj9521
	movl	%ebx,%edx
	subl	$65536,%edx
	shrl	$10,%edx
	addl	$55296,%edx
	movw	%dx,(%eax)
	subl	$65536,%ebx
	andl	$1023,%ebx
	addl	$56320,%ebx
	movl	%eax,%edx
	addl	$2,%edx
	movw	%bx,(%edx)
	addl	$2,(%esi)
	jmp	Lj9526
Lj9521:
	movw	$63,(%eax)
	incl	(%esi)
Lj9526:
Lj9519:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UCS4STRINGTOWIDESTRING$UCS4STRING$$WIDESTRING
SYSTEM_UCS4STRINGTOWIDESTRING$UCS4STRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	call	fpc_dynarray_length
	movl	%eax,%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	$1,-8(%ebp)
	movl	8(%ebp),%eax
	call	fpc_dynarray_high
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,%esi
	cmpl	%esi,%ebx
	jl	Lj9540
	decl	%esi
	.balign 4,0x90
Lj9541:
	incl	%esi
	movl	8(%ebp),%eax
	movl	(%eax,%esi,4),%eax
	leal	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	SYSTEM_CONCATUTF32TOWIDESTR$UCS4CHAR$WIDESTRING$LONGINT
	cmpl	%esi,%ebx
	jg	Lj9541
Lj9540:
	movl	-8(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_UNIMPLEMENTEDUNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	cmpb	$0,operatingsystem_isconsole
	je	Lj9557
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj9560
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj9561
Lj9560:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj9561:
	movl	$_$SYSTEM$_Ld23,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj9568
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj9569
Lj9568:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj9569:
	call	fpc_writeln_end
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj9572
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj9573
Lj9572:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj9573:
	movl	$_$SYSTEM$_Ld24,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj9580
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj9581
Lj9580:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj9581:
	call	fpc_writeln_end
Lj9557:
	movl	%ebp,%edx
	movl	$233,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_GENERICUNICODECASE$UNICODESTRING$$UNICODESTRING:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	call	SYSTEM_UNIMPLEMENTEDUNICODESTRING
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_COMPAREUNICODESTRING$UNICODESTRING$UNICODESTRING$$LONGINT:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	call	SYSTEM_UNIMPLEMENTEDUNICODESTRING
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_COMPARETEXTUNICODESTRING$UNICODESTRING$UNICODESTRING$$LONGINT:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	call	SYSTEM_UNIMPLEMENTEDUNICODESTRING
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_INITUNICODESTRINGMANAGER:
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
	ret

.text
	.balign 4,0x90
.globl	fpc_dynarray_rangecheck
fpc_dynarray_rangecheck:
.globl	FPC_DYNARRAY_RANGECHECK
FPC_DYNARRAY_RANGECHECK:
	pushl	%ebp
	movl	%esp,%ebp
	testl	%eax,%eax
	je	Lj9624
	testl	%edx,%edx
	jl	Lj9624
Lj9626:
	subl	$8,%eax
	movl	4(%eax),%eax
	cmpl	%edx,%eax
	jnl	Lj9625
Lj9624:
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9625:
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_dynarray_length
fpc_dynarray_length:
.globl	FPC_DYNARRAY_LENGTH
FPC_DYNARRAY_LENGTH:
	testl	%eax,%eax
	je	Lj9635
	subl	$8,%eax
	movl	4(%eax),%eax
	incl	%eax
	jmp	Lj9638
Lj9635:
	movl	$0,%eax
Lj9638:
	ret

.text
	.balign 4,0x90
.globl	fpc_dynarray_high
fpc_dynarray_high:
.globl	FPC_DYNARRAY_HIGH
FPC_DYNARRAY_HIGH:
	testl	%eax,%eax
	je	Lj9644
	subl	$8,%eax
	movl	4(%eax),%eax
	jmp	Lj9647
Lj9644:
	movl	$-1,%eax
Lj9647:
	ret

.text
	.balign 4,0x90
SYSTEM_FPC_DYNARRAY_CLEAR_INTERNAL$POINTER$POINTER:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	testl	%ebx,%ebx
	je	Lj9650
	movzbl	1(%edx),%eax
	addl	$2,%eax
	addl	%eax,%edx
	addl	$4,%edx
	movl	(%edx),%edx
	movl	4(%ebx),%ecx
	incl	%ecx
	movl	%ebx,%eax
	addl	$8,%eax
	call	FPC_FINALIZE_ARRAY
	movl	%ebx,%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj9650:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_dynarray_clear
fpc_dynarray_clear:
.globl	FPC_DYNARRAY_CLEAR
FPC_DYNARRAY_CLEAR:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%esi
	movl	%edx,%edi
	movl	(%esi),%eax
	testl	%eax,%eax
	je	Lj9670
	movl	(%esi),%eax
	subl	$8,%eax
	movl	TC_SYSTEM_ISMULTITHREAD,%edx
	testl	%edx,%edx
	jne	Lj9681
	decl	(%eax)
	movl	(%eax),%edx
	testl	%edx,%edx
	seteb	%bl
	jmp	Lj9684
Lj9681:
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj9684:
	testb	%bl,%bl
	je	Lj9677
	movl	(%esi),%eax
	subl	$8,%eax
	movl	%edi,%edx
	call	SYSTEM_FPC_DYNARRAY_CLEAR_INTERNAL$POINTER$POINTER
Lj9677:
	movl	$0,(%esi)
Lj9670:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_dynarray_decr_ref
fpc_dynarray_decr_ref:
.globl	FPC_DYNARRAY_DECR_REF
FPC_DYNARRAY_DECR_REF:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,%edi
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	testl	%eax,%eax
	je	Lj9695
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	subl	$8,%eax
	movl	%eax,%esi
	movl	(%esi),%eax
	testl	%eax,%eax
	jne	Lj9702
	movl	%ebp,%edx
	movl	$204,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9702:
	movl	%esi,%eax
	movl	TC_SYSTEM_ISMULTITHREAD,%edx
	testl	%edx,%edx
	jne	Lj9712
	decl	(%eax)
	movl	(%eax),%edx
	testl	%edx,%edx
	seteb	%bl
	jmp	Lj9715
Lj9712:
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj9715:
	testb	%bl,%bl
	je	Lj9708
	movl	%edi,%edx
	movl	%esi,%eax
	call	SYSTEM_FPC_DYNARRAY_CLEAR_INTERNAL$POINTER$POINTER
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj9708:
Lj9695:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
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
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	%eax,%ebx
	testl	%ebx,%ebx
	je	Lj9726
	subl	$8,%ebx
	movl	(%ebx),%eax
	testl	%eax,%eax
	jne	Lj9733
	movl	%ebp,%edx
	movl	$204,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9733:
	movl	%ebx,%eax
	movl	TC_SYSTEM_ISMULTITHREAD,%edx
	testl	%edx,%edx
	jne	Lj9741
	incl	(%eax)
	jmp	Lj9742
Lj9741:
	call	SYSTEM_CPUINCLOCKED$LONGINT
Lj9742:
Lj9726:
	movl	-4(%ebp),%ebx
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
	subl	$48,%esp
	movl	%ebx,-48(%ebp)
	movl	%esi,-44(%ebp)
	movl	%edi,-40(%ebp)
	movl	%eax,-28(%ebp)
	movl	%ecx,-32(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	%edx,%esi
	movl	%esi,%eax
	movzbl	1(%eax),%edx
	addl	$2,%edx
	addl	%edx,%eax
	movl	%eax,%edi
	movl	(%edi),%eax
	movl	%eax,-24(%ebp)
	movl	%edi,%eax
	addl	$4,%eax
	movl	(%eax),%edx
	movl	%edx,-16(%ebp)
	movl	-32(%ebp),%eax
	decl	%eax
	movl	-36(%ebp),%edx
	movl	(%edx,%eax,4),%eax
	imull	-24(%ebp),%eax
	addl	$8,%eax
	movl	%eax,-12(%ebp)
	movb	$0,-20(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj9764
Lj9763:
	movl	-32(%ebp),%eax
	decl	%eax
	movl	-36(%ebp),%edx
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	jnl	Lj9766
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9766:
	movl	-32(%ebp),%eax
	decl	%eax
	movl	-36(%ebp),%edx
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj9745
	movl	-12(%ebp),%edx
	leal	-8(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movb	$1,-20(%ebp)
	jmp	Lj9785
Lj9764:
	movl	-28(%ebp),%eax
	movl	(%eax),%edx
	subl	$8,%edx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-32(%ebp),%eax
	decl	%eax
	movl	-36(%ebp),%edx
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	jnle	Lj9791
	movl	-32(%ebp),%eax
	decl	%eax
	movl	-36(%ebp),%edx
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	jnl	Lj9793
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9793:
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_ISMULTITHREAD,%edx
	testl	%edx,%edx
	jne	Lj9803
	decl	(%eax)
	movl	(%eax),%edx
	testl	%edx,%edx
	seteb	%bl
	jmp	Lj9806
Lj9803:
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj9806:
	testb	%bl,%bl
	je	Lj9799
	movl	%esi,%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_FPC_DYNARRAY_CLEAR_INTERNAL$POINTER$POINTER
Lj9799:
	movl	-28(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj9745
Lj9791:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj9818
	movb	$1,-20(%ebp)
	movl	-12(%ebp),%edx
	leal	-8(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-32(%ebp),%eax
	decl	%eax
	movl	-4(%ebp),%ecx
	movl	-36(%ebp),%edx
	movl	(%edx,%eax,4),%eax
	cmpl	4(%ecx),%eax
	jng	Lj9832
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	incl	%eax
	movl	%eax,%ebx
	jmp	Lj9835
Lj9832:
	movl	-32(%ebp),%eax
	decl	%eax
	movl	-36(%ebp),%edx
	movl	(%edx,%eax,4),%ebx
Lj9835:
	movl	%ebx,%eax
	imull	-24(%ebp),%eax
	movl	%eax,%ecx
	movl	-8(%ebp),%eax
	addl	$8,%eax
	movl	%eax,%edx
	movl	-28(%ebp),%esi
	movl	(%esi),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%ebx,%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,%esi
	cmpl	%esi,%ebx
	jl	Lj9845
	decl	%esi
	.balign 4,0x90
Lj9846:
	incl	%esi
	movl	%esi,%eax
	imull	-24(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	$8,%edx
	addl	%edx,%eax
	movl	-16(%ebp),%edx
	call	FPC_ADDREF
	cmpl	%esi,%ebx
	jg	Lj9846
Lj9845:
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_ISMULTITHREAD,%edx
	testl	%edx,%edx
	jne	Lj9856
	decl	(%eax)
	movl	(%eax),%edx
	testl	%edx,%edx
	seteb	%bl
	jmp	Lj9859
Lj9856:
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj9859:
	testb	%bl,%bl
	je	Lj9868
	movl	%edi,%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_FPC_DYNARRAY_CLEAR_INTERNAL$POINTER$POINTER
	jmp	Lj9868
Lj9818:
	movl	-32(%ebp),%eax
	decl	%eax
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	incl	%eax
	movl	-36(%ebp),%edx
	cmpl	(%edx,%ecx,4),%eax
	je	Lj9870
	cmpl	$8,-12(%ebp)
	jl	Lj9871
Lj9873:
	cmpl	$0,-24(%ebp)
	jng	Lj9872
	movl	-12(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jnl	Lj9872
Lj9871:
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9872:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	jne	Lj9880
	movl	-32(%ebp),%eax
	decl	%eax
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	incl	%edx
	movl	-36(%ebp),%eax
	cmpl	(%eax,%ecx,4),%edx
	jng	Lj9882
	movl	-32(%ebp),%eax
	decl	%eax
	movl	-36(%ebp),%ecx
	movl	(%ecx,%eax,4),%edx
	imull	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	addl	$8,%eax
	addl	%eax,%edx
	movl	%edx,%eax
	movl	-32(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%ebx
	movl	-36(%ebp),%edi
	movl	(%edi,%edx,4),%ecx
	movl	4(%ebx),%edx
	subl	%ecx,%edx
	movl	%edx,%ecx
	incl	%ecx
	movl	-16(%ebp),%edx
	call	FPC_FINALIZE_ARRAY
	movl	-12(%ebp),%edx
	leal	-4(%ebp),%eax
	call	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	jmp	Lj9893
Lj9882:
	movl	-32(%ebp),%eax
	decl	%eax
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	incl	%edx
	movl	-36(%ebp),%eax
	cmpl	(%eax,%ecx,4),%edx
	jnl	Lj9895
	movl	-12(%ebp),%edx
	leal	-4(%ebp),%eax
	call	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	movl	-32(%ebp),%eax
	decl	%eax
	movl	-4(%ebp),%ecx
	movl	-36(%ebp),%ebx
	movl	(%ebx,%eax,4),%edx
	movl	4(%ecx),%eax
	subl	%eax,%edx
	decl	%edx
	imull	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%ecx
	incl	%ecx
	imull	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	addl	$8,%eax
	addl	%eax,%ecx
	movl	%ecx,%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
Lj9895:
Lj9893:
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movb	$1,-20(%ebp)
Lj9880:
Lj9870:
Lj9868:
Lj9785:
	cmpl	$1,-32(%ebp)
	jna	Lj9911
	movl	-32(%ebp),%eax
	decl	%eax
	movl	-36(%ebp),%edx
	movl	(%edx,%eax,4),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,%esi
	cmpl	%esi,%ebx
	jl	Lj9913
	decl	%esi
	.balign 4,0x90
Lj9914:
	incl	%esi
	pushl	-36(%ebp)
	movl	-24(%ebp),%eax
	imull	%esi,%eax
	movl	-8(%ebp),%edx
	addl	$8,%edx
	addl	%edx,%eax
	movl	-32(%ebp),%edx
	decl	%edx
	movl	%edx,%ecx
	movl	-16(%ebp),%edx
	call	FPC_DYNARR_SETLENGTH
	cmpl	%esi,%ebx
	jg	Lj9914
Lj9913:
Lj9911:
	movb	-20(%ebp),%al
	testb	%al,%al
	je	Lj9924
	movl	-8(%ebp),%eax
	addl	$8,%eax
	movl	-28(%ebp),%edx
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	$1,(%eax)
	movl	-32(%ebp),%eax
	decl	%eax
	movl	-36(%ebp),%edx
	movl	(%edx,%eax,4),%ecx
	decl	%ecx
	movl	-8(%ebp),%eax
	movl	%ecx,4(%eax)
Lj9924:
Lj9745:
	movl	-48(%ebp),%ebx
	movl	-44(%ebp),%esi
	movl	-40(%ebp),%edi
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
	subl	$36,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%ecx,-24(%ebp)
	movl	8(%ebp),%eax
	addl	-24(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj9931
	movl	-12(%ebp),%eax
	subl	$8,%eax
	movl	%eax,%ebx
	movzbl	1(%edx),%eax
	addl	$2,%eax
	addl	%eax,%edx
	movl	%edx,%eax
	movl	(%eax),%edx
	movl	%edx,-16(%ebp)
	movl	%eax,%edx
	addl	$4,%edx
	movl	(%edx),%eax
	movl	%eax,-8(%ebp)
	cmpl	$-1,-24(%ebp)
	jne	Lj9954
	cmpl	$-3,%esi
	jne	Lj9954
	movl	$0,-24(%ebp)
	movl	4(%ebx),%esi
Lj9954:
	cmpl	$0,-24(%ebp)
	jl	Lj9960
Lj9963:
	testl	%esi,%esi
	jl	Lj9960
Lj9962:
	movl	4(%ebx),%eax
	cmpl	-24(%ebp),%eax
	jnl	Lj9961
Lj9960:
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9961:
	movl	%esi,%eax
	subl	-24(%ebp),%eax
	incl	%eax
	movl	%eax,%edi
	movl	4(%ebx),%eax
	subl	-24(%ebp),%eax
	incl	%eax
	cmpl	%edi,%eax
	jnl	Lj9971
	movl	4(%ebx),%eax
	subl	-24(%ebp),%eax
	incl	%eax
	movl	%eax,%edi
Lj9971:
	movl	%edi,%eax
	imull	-16(%ebp),%eax
	movl	%eax,%ebx
	movl	%ebx,%edx
	addl	$8,%edx
	leal	-4(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-4(%ebp),%eax
	addl	$8,%eax
	movl	%eax,%edx
	movl	-24(%ebp),%eax
	imull	-16(%ebp),%eax
	addl	-12(%ebp),%eax
	movl	%edx,%esi
	movl	%ebx,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	movl	$1,(%eax)
	movl	%edi,%eax
	decl	%eax
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movzbl	(%edx),%eax
	subl	$9,%eax
	cmpl	$6,%eax
	jb	Lj9994
	cmpl	$7,%eax
	stc
	je	Lj9994
	cmpl	$12,%eax
	stc
	je	Lj9994
	cmpl	$15,%eax
	stc
	je	Lj9994
	clc
Lj9994:
	jnc	Lj9993
	movl	%edi,%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,%ebx
	cmpl	%ebx,%edi
	jl	Lj9996
	decl	%ebx
	.balign 4,0x90
Lj9997:
	incl	%ebx
	movl	%ebx,%eax
	imull	-16(%ebp),%eax
	addl	%esi,%eax
	movl	-8(%ebp),%edx
	call	FPC_ADDREF
	cmpl	%ebx,%edi
	jg	Lj9997
Lj9996:
Lj9993:
	movl	%esi,-20(%ebp)
Lj9931:
	movl	-20(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_DYNARRAYSETLENGTH$POINTER$POINTER$LONGINT$PSIZEINT
SYSTEM_DYNARRAYSETLENGTH$POINTER$POINTER$LONGINT$PSIZEINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,-56(%ebp)
	movl	%edx,-52(%ebp)
	movl	%ecx,%esi
	movl	8(%ebp),%ebx
	cmpl	$11,%esi
	jnle	Lj10007
	leal	-44(%ebp),%eax
	movl	%eax,-48(%ebp)
	jmp	Lj10010
Lj10007:
	movl	%esi,%edx
	shll	$2,%edx
	leal	-48(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
Lj10010:
	movl	%esi,%eax
	decl	%eax
	movl	%eax,%ecx
	movl	$0,%edx
	cmpl	%edx,%ecx
	jl	Lj10016
	decl	%edx
	.balign 4,0x90
Lj10017:
	incl	%edx
	movl	%esi,%eax
	decl	%eax
	subl	%edx,%eax
	movl	%eax,%edi
	movl	-48(%ebp),%eax
	movl	(%ebx,%edi,4),%edi
	movl	%edi,(%eax,%edx,4)
	cmpl	%edx,%ecx
	jg	Lj10017
Lj10016:
	pushl	-48(%ebp)
	movl	%esi,%ecx
	movl	-52(%ebp),%edx
	movl	-56(%ebp),%eax
	call	FPC_DYNARR_SETLENGTH
	leal	-44(%ebp),%eax
	cmpl	-48(%ebp),%eax
	je	Lj10029
	movl	-48(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj10029:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_DODISPCALLBYIDERROR$POINTER$IDISPATCH$PDISPDESC$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%edx,-4(%ebp)
	movl	8(%ebp),%eax
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
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	8(%ebp),%edx
	pushl	%edx
	movl	-4(%ebp),%edx
	movl	U_SYSTEM_DISPCALLBYIDPROC,%ebx
	call	*%ebx
	movl	-8(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_do_is
fpc_do_is:
.globl	FPC_DO_IS
FPC_DO_IS:
	movl	%edx,%ecx
	testl	%ecx,%ecx
	je	Lj10051
	testl	%eax,%eax
	je	Lj10051
	movl	%eax,%edx
	movl	(%ecx),%eax
	call	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	je	Lj10051
	movb	$1,%al
	jmp	Lj10058
Lj10051:
	movb	$0,%al
Lj10058:
	ret

.text
	.balign 4,0x90
.globl	fpc_do_as
fpc_do_as:
.globl	FPC_DO_AS
FPC_DO_AS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	%edx,%ebx
	testl	%ebx,%ebx
	je	Lj10062
	movl	%eax,%edx
	movl	(%ebx),%eax
	call	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	jne	Lj10062
	movl	%ebp,%edx
	movl	$219,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj10062:
	movl	%ebx,%eax
	movl	-4(%ebp),%ebx
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
	movl	%esi,-4(%ebp)
	movl	%eax,%ebx
	cmpl	$0,(%ebx)
	je	Lj10077
	pushl	(%ebx)
	movl	(%ebx),%eax
	movl	(%eax),%eax
	call	*8(%eax)
	popl	%esi
	movl	$0,(%ebx)
Lj10077:
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
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
	je	Lj10085
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*4(%eax)
	popl	%ebx
Lj10085:
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
	movl	%esi,-8(%ebp)
	movl	%eax,%ebx
	movl	%edx,-4(%ebp)
	cmpl	$0,-4(%ebp)
	je	Lj10091
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*4(%eax)
	popl	%esi
Lj10091:
	cmpl	$0,(%ebx)
	je	Lj10095
	pushl	(%ebx)
	movl	(%ebx),%eax
	movl	(%eax),%eax
	call	*8(%eax)
	popl	%esi
Lj10095:
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
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
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	cmpl	$0,-4(%ebp)
	je	Lj10105
	leal	-8(%ebp),%eax
	pushl	%eax
	pushl	%edx
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	jne	Lj10105
	movb	$1,%bl
	jmp	Lj10113
Lj10105:
	movb	$0,%bl
Lj10113:
	cmpl	$0,-8(%ebp)
	je	Lj10115
	pushl	-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	*8(%eax)
	popl	%esi
Lj10115:
	movb	%bl,%al
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
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
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,%ebx
	cmpl	$0,-4(%ebp)
	je	Lj10121
	leal	-8(%ebp),%eax
	pushl	%eax
	pushl	$TC_SYSTEM_IOBJECTINSTANCE
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	jne	Lj10121
	movl	%ebx,%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	je	Lj10121
	movb	$1,%al
	jmp	Lj10134
Lj10121:
	movb	$0,%al
Lj10134:
	movl	-12(%ebp),%ebx
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
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	$0,-4(%ebp)
	movl	$0,-8(%ebp)
	testl	%ebx,%ebx
	je	Lj10142
	movl	$_$SYSTEM$_Ld25,%edx
	leal	-8(%ebp),%ecx
	movl	%ebx,%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
	testb	%al,%al
	je	Lj10144
	leal	-4(%ebp),%eax
	pushl	%eax
	pushl	%esi
	pushl	-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj10141
Lj10144:
	leal	-4(%ebp),%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN
	testb	%al,%al
	je	Lj10142
Lj10141:
	movb	$1,%bl
	jmp	Lj10164
Lj10142:
	movb	$0,%bl
Lj10164:
	cmpl	$0,-4(%ebp)
	je	Lj10166
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*8(%eax)
	popl	%esi
Lj10166:
	movb	%bl,%al
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_class_is_corbaintf
fpc_class_is_corbaintf:
.globl	FPC_CLASS_IS_CORBAINTF
FPC_CLASS_IS_CORBAINTF:
	testl	%eax,%eax
	je	Lj10172
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY
	testl	%eax,%eax
	je	Lj10172
	movb	$1,%al
	jmp	Lj10178
Lj10172:
	movb	$0,%al
Lj10178:
	ret

.text
	.balign 4,0x90
.globl	fpc_intf_cast
fpc_intf_cast:
.globl	FPC_INTF_CAST
FPC_INTF_CAST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-12(%ebp)
	cmpl	$0,-4(%ebp)
	je	Lj10184
	leal	-12(%ebp),%eax
	pushl	%eax
	pushl	%edx
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	jne	Lj10184
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj10194
Lj10184:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_INTF_DECR_REF
	movl	$0,(%ebx)
Lj10194:
	movl	-16(%ebp),%ebx
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
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,%ebx
	cmpl	$0,-4(%ebp)
	je	Lj10200
	leal	-8(%ebp),%eax
	pushl	%eax
	pushl	$TC_SYSTEM_IOBJECTINSTANCE
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	jne	Lj10200
	movl	%ebx,%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	je	Lj10200
	movl	-8(%ebp),%eax
	jmp	Lj10215
Lj10200:
	movl	$0,%eax
Lj10215:
	movl	-12(%ebp),%ebx
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
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$0,-12(%ebp)
	testl	%ebx,%ebx
	je	Lj10225
	movl	$_$SYSTEM$_Ld26,%edx
	leal	-12(%ebp),%ecx
	movl	%ebx,%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
	testb	%al,%al
	je	Lj10227
	leal	-8(%ebp),%eax
	pushl	%eax
	pushl	%esi
	pushl	-12(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj10224
Lj10227:
	leal	-8(%ebp),%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN
	testb	%al,%al
	je	Lj10225
Lj10224:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj10249
Lj10225:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_INTF_DECR_REF
	movl	$0,(%ebx)
Lj10249:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_class_cast_corbaintf
fpc_class_cast_corbaintf:
.globl	FPC_CLASS_CAST_CORBAINTF
FPC_CLASS_CAST_CORBAINTF:
	subl	$4,%esp
	testl	%eax,%eax
	je	Lj10255
	movl	%esp,%ecx
	call	SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN
	testb	%al,%al
	je	Lj10255
	movl	(%esp),%eax
	jmp	Lj10265
Lj10255:
	movl	$0,%eax
Lj10265:
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_intf_as
fpc_intf_as:
.globl	FPC_INTF_AS
FPC_INTF_AS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%ecx,-8(%ebp)
	cmpl	$0,-4(%ebp)
	je	Lj10271
	movl	$0,-12(%ebp)
	leal	-12(%ebp),%eax
	pushl	%eax
	pushl	%edx
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj10275
	movl	$219,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj10275:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj10286
Lj10271:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_INTF_DECR_REF
	movl	$0,(%ebx)
Lj10286:
	movl	-16(%ebp),%ebx
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
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,%ebx
	cmpl	$0,-4(%ebp)
	je	Lj10292
	leal	-8(%ebp),%eax
	pushl	%eax
	pushl	$TC_SYSTEM_IOBJECTINSTANCE
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	jne	Lj10293
	movl	%ebx,%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	jne	Lj10294
Lj10293:
	movl	$219,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj10294:
	movl	-8(%ebp),%eax
	jmp	Lj10310
Lj10292:
	movl	$0,%eax
Lj10310:
	movl	-12(%ebp),%ebx
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
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,-4(%ebp)
	testl	%ebx,%ebx
	je	Lj10316
	movl	$0,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	$_$SYSTEM$_Ld27,%edx
	leal	-12(%ebp),%ecx
	movl	%ebx,%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
	testb	%al,%al
	je	Lj10323
	leal	-8(%ebp),%eax
	pushl	%eax
	pushl	%esi
	pushl	-12(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj10322
Lj10323:
	leal	-8(%ebp),%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj10322
Lj10321:
	movl	$219,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj10322:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj10347
Lj10316:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_INTF_DECR_REF
	movl	$0,(%ebx)
Lj10347:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_class_as_corbaintf
fpc_class_as_corbaintf:
.globl	FPC_CLASS_AS_CORBAINTF
FPC_CLASS_AS_CORBAINTF:
	subl	$4,%esp
	testl	%eax,%eax
	je	Lj10353
	movl	$0,(%esp)
	movl	%esp,%ecx
	call	SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj10357
	movl	$219,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj10357:
	movl	(%esp),%eax
	jmp	Lj10368
Lj10353:
	movl	$0,%eax
Lj10368:
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__CREATE$$TOBJECT
SYSTEM_TOBJECT_$__CREATE$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	cmpl	$1,%esi
	jna	Lj10374
	movl	%esi,%eax
	movl	%esi,%edx
	call	*52(%edx)
	movl	%eax,%ebx
Lj10374:
	testl	%ebx,%ebx
	je	Lj10371
	leal	-12(%ebp),%ecx
	leal	-36(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj10383
	testl	%ebx,%ebx
	je	Lj10388
	testl	%esi,%esi
	je	Lj10388
	movl	%ebx,%eax
	movl	(%ebx),%edx
	call	*68(%edx)
Lj10388:
Lj10383:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj10385
	leal	-52(%ebp),%ecx
	leal	-76(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj10393
	testl	%esi,%esi
	je	Lj10395
	movl	%ebx,%eax
	movl	$-1,%edx
	movl	(%ebx),%ecx
	call	*48(%ecx)
Lj10395:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj10393:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj10392
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj10392:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
Lj10385:
Lj10371:
	movl	%ebx,%eax
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__DESTROY
SYSTEM_TOBJECT_$__DESTROY:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	testl	%esi,%esi
	jng	Lj10403
	movl	%ebx,%eax
	movl	(%ebx),%edx
	call	*72(%edx)
Lj10403:
	testl	%ebx,%ebx
	je	Lj10407
	testl	%esi,%esi
	je	Lj10407
	movl	%ebx,%eax
	movl	(%ebx),%edx
	call	*56(%edx)
Lj10407:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__FREE
SYSTEM_TOBJECT_$__FREE:
	movl	%eax,%ecx
	testl	%ecx,%ecx
	je	Lj10414
	movl	%ecx,%eax
	movl	$1,%edx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj10414:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__INSTANCESIZE$$LONGINT
SYSTEM_TOBJECT_$__INSTANCESIZE$$LONGINT:
	movl	(%eax),%eax
	ret

.text
	.balign 4,0x90
SYSTEM_INITINTERFACEPOINTERS$TCLASS$POINTER:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%edx,(%esp)
	movl	%eax,%ecx
	jmp	Lj10428
	.balign 4,0x90
Lj10427:
	movl	40(%ecx),%ebx
	testl	%ebx,%ebx
	je	Lj10433
	movl	(%ebx),%esi
	leal	4(%ebx),%eax
	movl	%eax,%edx
	jmp	Lj10439
	.balign 4,0x90
Lj10438:
	movl	16(%edx),%eax
	testl	%eax,%eax
	jne	Lj10442
	movl	8(%edx),%eax
	movl	(%esp),%edi
	leal	(%edi,%eax,1),%eax
	movl	4(%edx),%edi
	movl	%edi,(%eax)
Lj10442:
	addl	$20,%edx
	decl	%esi
Lj10439:
	testl	%esi,%esi
	jg	Lj10438
Lj10440:
Lj10433:
	movl	8(%ecx),%ecx
Lj10428:
	testl	%ecx,%ecx
	je	Lj10429
	movl	$FPC_EMPTYINTF,%eax
	cmpl	40(%ecx),%eax
	jne	Lj10427
Lj10429:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__INITINSTANCE$POINTER$$TOBJECT
SYSTEM_TOBJECT_$__INITINSTANCE$POINTER$$TOBJECT:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ebx,%eax
	movl	(%eax),%edx
	movl	%esi,%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	%ebx,%eax
	movl	%eax,(%esi)
	movl	$FPC_EMPTYINTF,%edx
	cmpl	40(%eax),%edx
	je	Lj10463
	movl	%esi,%edx
	call	SYSTEM_INITINTERFACEPOINTERS$TCLASS$POINTER
Lj10463:
	movl	%esi,%eax
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__CLASSPARENT$$TCLASS
SYSTEM_TOBJECT_$__CLASSPARENT$$TCLASS:
	movl	8(%eax),%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	(%eax),%edx
	movl	%esp,%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	(%esp),%eax
	testl	%eax,%eax
	je	Lj10485
	movl	(%ebx),%edx
	movl	(%esp),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	(%esp),%eax
	movl	%ebx,(%eax)
	movl	$FPC_EMPTYINTF,%eax
	cmpl	40(%ebx),%eax
	je	Lj10500
	movl	(%esp),%edx
	movl	%ebx,%eax
	call	SYSTEM_INITINTERFACEPOINTERS$TCLASS$POINTER
Lj10500:
	movl	(%esp),%eax
Lj10485:
	movl	(%esp),%eax
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__FREEINSTANCE
SYSTEM_TOBJECT_$__FREEINSTANCE:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	SYSTEM_TOBJECT_$__CLEANUPINSTANCE
	movl	%ebx,%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__CLASSTYPE$$TCLASS
SYSTEM_TOBJECT_$__CLASSTYPE$$TCLASS:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__METHODADDRESS$SHORTSTRING$$POINTER
SYSTEM_TOBJECT_$__METHODADDRESS$SHORTSTRING$$POINTER:
	subl	$24,%esp
	movl	%ebx,12(%esp)
	movl	%esi,16(%esp)
	movl	%edi,20(%esp)
	movl	%edx,8(%esp)
	movl	%eax,4(%esp)
	jmp	Lj10524
	.balign 4,0x90
Lj10523:
	movl	4(%esp),%eax
	movl	20(%eax),%ebx
	testl	%ebx,%ebx
	je	Lj10529
	movl	(%ebx),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,%esi
	cmpl	%esi,%edi
	jb	Lj10531
	decl	%esi
	.balign 4,0x90
Lj10532:
	incl	%esi
	movl	4(%ebx,%esi,8),%eax
	movl	8(%esp),%edx
	call	SYSTEM_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$LONGINT
	testl	%eax,%eax
	jne	Lj10534
	movl	8(%ebx,%esi,8),%eax
	movl	%eax,(%esp)
	jmp	Lj10519
Lj10534:
	cmpl	%esi,%edi
	ja	Lj10532
Lj10531:
Lj10529:
	movl	4(%esp),%eax
	movl	8(%eax),%eax
	movl	%eax,4(%esp)
Lj10524:
	movl	4(%esp),%eax
	testl	%eax,%eax
	jne	Lj10523
Lj10525:
	movl	$0,(%esp)
Lj10519:
	movl	(%esp),%eax
	movl	12(%esp),%ebx
	movl	16(%esp),%esi
	movl	20(%esp),%edi
	addl	$24,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__METHODNAME$POINTER$$SHORTSTRING
SYSTEM_TOBJECT_$__METHODNAME$POINTER$$SHORTSTRING:
	subl	$24,%esp
	movl	%ebx,12(%esp)
	movl	%esi,16(%esp)
	movl	%edi,20(%esp)
	movl	%edx,4(%esp)
	movl	%ecx,8(%esp)
	movl	%eax,(%esp)
	jmp	Lj10550
	.balign 4,0x90
Lj10549:
	movl	(%esp),%eax
	movl	20(%eax),%ebx
	testl	%ebx,%ebx
	je	Lj10555
	movl	(%ebx),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,%esi
	cmpl	%esi,%edi
	jb	Lj10557
	decl	%esi
	.balign 4,0x90
Lj10558:
	incl	%esi
	movl	8(%ebx,%esi,8),%eax
	cmpl	4(%esp),%eax
	jne	Lj10560
	movl	4(%ebx,%esi,8),%ecx
	movl	8(%esp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	jmp	Lj10545
Lj10560:
	cmpl	%esi,%edi
	ja	Lj10558
Lj10557:
Lj10555:
	movl	(%esp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
Lj10550:
	movl	(%esp),%eax
	testl	%eax,%eax
	jne	Lj10549
Lj10551:
	movl	8(%esp),%eax
	movb	$0,(%eax)
Lj10545:
	movl	12(%esp),%ebx
	movl	16(%esp),%esi
	movl	20(%esp),%edi
	addl	$24,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__FIELDADDRESS$SHORTSTRING$$POINTER
SYSTEM_TOBJECT_$__FIELDADDRESS$SHORTSTRING$$POINTER:
	subl	$32,%esp
	movl	%ebx,20(%esp)
	movl	%esi,24(%esp)
	movl	%edi,28(%esp)
	movl	%eax,16(%esp)
	movl	%edx,12(%esp)
	movl	12(%esp),%edx
	movzbl	(%edx),%eax
	testl	%eax,%eax
	jng	Lj10574
	movl	16(%esp),%eax
	movl	(%eax),%eax
	movl	%eax,4(%esp)
	jmp	Lj10582
	.balign 4,0x90
Lj10581:
	movl	4(%esp),%eax
	movl	24(%eax),%eax
	movl	%eax,(%esp)
	testl	%eax,%eax
	je	Lj10587
	movl	(%esp),%eax
	leal	6(%eax),%edx
	movl	%edx,%ebx
	movl	(%esp),%eax
	movzwl	(%eax),%edx
	decl	%edx
	movl	%edx,%edi
	movl	$0,8(%esp)
	cmpl	8(%esp),%edi
	jl	Lj10591
	decl	8(%esp)
	.balign 4,0x90
Lj10592:
	incl	8(%esp)
	leal	6(%ebx),%eax
	movl	12(%esp),%edx
	call	SYSTEM_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$LONGINT
	testl	%eax,%eax
	jne	Lj10594
	movl	(%ebx),%eax
	addl	16(%esp),%eax
	movl	%eax,%esi
	jmp	Lj10571
Lj10594:
	leal	6(%ebx),%edx
	incl	%edx
	movzbl	6(%ebx),%eax
	addl	%eax,%edx
	movl	%edx,%ebx
	cmpl	8(%esp),%edi
	jg	Lj10592
Lj10591:
Lj10587:
	movl	4(%esp),%eax
	movl	8(%eax),%eax
	movl	%eax,4(%esp)
Lj10582:
	movl	4(%esp),%eax
	testl	%eax,%eax
	jne	Lj10581
Lj10583:
Lj10574:
	movl	$0,%esi
Lj10571:
	movl	%esi,%eax
	movl	20(%esp),%ebx
	movl	24(%esp),%esi
	movl	28(%esp),%edi
	addl	$32,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT:
	movl	$-2147418113,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__CLASSINFO$$POINTER
SYSTEM_TOBJECT_$__CLASSINFO$$POINTER:
	movl	28(%eax),%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING
SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING:
	movl	%eax,%ecx
	movl	%edx,%eax
	movl	12(%ecx),%ecx
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__CLASSNAMEIS$SHORTSTRING$$BOOLEAN
SYSTEM_TOBJECT_$__CLASSNAMEIS$SHORTSTRING$$BOOLEAN:
	movl	12(%eax),%eax
	call	SYSTEM_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$LONGINT
	testl	%eax,%eax
	seteb	%al
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN:
	testl	%edx,%edx
	je	Lj10634
	jmp	Lj10638
	.balign 4,0x90
Lj10637:
	movl	8(%eax),%eax
Lj10638:
	testl	%eax,%eax
	je	Lj10639
	cmpl	%edx,%eax
	jne	Lj10637
Lj10639:
	cmpl	%edx,%eax
	seteb	%al
	jmp	Lj10645
Lj10634:
	movb	$0,%al
Lj10645:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__STRINGMESSAGETABLE$$PSTRINGMESSAGETABLE
SYSTEM_TOBJECT_$__STRINGMESSAGETABLE$$PSTRINGMESSAGETABLE:
	movl	44(%eax),%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__DISPATCH$formal
SYSTEM_TOBJECT_$__DISPATCH$formal:
	subl	$44,%esp
	movl	%ebx,32(%esp)
	movl	%esi,36(%esp)
	movl	%edi,40(%esp)
	movl	%eax,28(%esp)
	movl	%edx,24(%esp)
	movl	24(%esp),%eax
	movl	(%eax),%eax
	movl	%eax,20(%esp)
	movl	28(%esp),%eax
	movl	(%eax),%eax
	movl	%eax,8(%esp)
	jmp	Lj10663
	.balign 4,0x90
Lj10662:
	movl	8(%esp),%eax
	movl	16(%eax),%eax
	movl	%eax,12(%esp)
	testl	%eax,%eax
	je	Lj10668
	movl	12(%esp),%eax
	leal	4(%eax),%edx
	movl	%edx,%ebx
	movl	12(%esp),%eax
	movl	(%eax),%eax
	movl	%eax,16(%esp)
	jmp	Lj10673
Lj10668:
	movl	$0,16(%esp)
Lj10673:
	movl	16(%esp),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,%esi
	cmpl	%esi,%edi
	jl	Lj10677
	decl	%esi
	.balign 4,0x90
Lj10678:
	incl	%esi
	movl	(%ebx,%esi,8),%eax
	cmpl	20(%esp),%eax
	jne	Lj10680
	movl	4(%ebx,%esi,8),%eax
	movl	%eax,(%esp)
	movl	28(%esp),%eax
	movl	%eax,4(%esp)
	movl	24(%esp),%edx
	movl	4(%esp),%eax
	movl	(%esp),%ecx
	call	*%ecx
	jmp	Lj10652
Lj10680:
	cmpl	%esi,%edi
	jg	Lj10678
Lj10677:
	movl	8(%esp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%esp)
Lj10663:
	movl	8(%esp),%eax
	testl	%eax,%eax
	jne	Lj10662
Lj10664:
	movl	24(%esp),%edx
	movl	28(%esp),%ecx
	movl	%ecx,%eax
	movl	(%ecx),%ecx
	call	*64(%ecx)
Lj10652:
	movl	32(%esp),%ebx
	movl	36(%esp),%esi
	movl	40(%esp),%edi
	addl	$44,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__DISPATCHSTR$formal
SYSTEM_TOBJECT_$__DISPATCHSTR$formal:
	subl	$296,%esp
	movl	%ebx,284(%esp)
	movl	%esi,288(%esp)
	movl	%edi,292(%esp)
	movl	%eax,280(%esp)
	movl	%edx,276(%esp)
	movl	276(%esp),%ecx
	movl	%esp,%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	280(%esp),%eax
	movl	(%eax),%eax
	movl	%eax,264(%esp)
	jmp	Lj10710
	.balign 4,0x90
Lj10709:
	movl	264(%esp),%eax
	movl	44(%eax),%eax
	movl	%eax,268(%esp)
	testl	%eax,%eax
	je	Lj10715
	movl	268(%esp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj10715
	movl	268(%esp),%eax
	movl	(%eax),%eax
	movl	%eax,272(%esp)
	movl	268(%esp),%edx
	leal	4(%edx),%eax
	movl	%eax,%ebx
	jmp	Lj10721
Lj10715:
	movl	$0,272(%esp)
Lj10721:
	movl	272(%esp),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,%esi
	cmpl	%esi,%edi
	jl	Lj10725
	decl	%esi
	.balign 4,0x90
Lj10726:
	incl	%esi
	movl	(%ebx,%esi,8),%edx
	movl	%esp,%eax
	call	fpc_shortstr_compare_equal
	testl	%eax,%eax
	jne	Lj10728
	movl	4(%ebx,%esi,8),%eax
	movl	%eax,256(%esp)
	movl	280(%esp),%eax
	movl	%eax,260(%esp)
	movl	276(%esp),%edx
	movl	260(%esp),%eax
	movl	256(%esp),%ecx
	call	*%ecx
	jmp	Lj10695
Lj10728:
	cmpl	%esi,%edi
	jg	Lj10726
Lj10725:
	movl	264(%esp),%eax
	movl	8(%eax),%eax
	movl	%eax,264(%esp)
Lj10710:
	movl	264(%esp),%eax
	testl	%eax,%eax
	jne	Lj10709
Lj10711:
	movl	276(%esp),%edx
	movl	280(%esp),%ecx
	movl	%ecx,%eax
	movl	(%ecx),%ecx
	call	*76(%ecx)
Lj10695:
	movl	284(%esp),%ebx
	movl	288(%esp),%esi
	movl	292(%esp),%edi
	addl	$296,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__CLEANUPINSTANCE
SYSTEM_TOBJECT_$__CLEANUPINSTANCE:
	subl	$24,%esp
	movl	%ebx,12(%esp)
	movl	%esi,16(%esp)
	movl	%edi,20(%esp)
	movl	%eax,8(%esp)
	movl	8(%esp),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	jmp	Lj10760
	.balign 4,0x90
Lj10759:
	movl	(%esp),%eax
	movl	32(%eax),%edi
	testl	%edi,%edi
	je	Lj10765
	incl	%edi
	movzbl	(%edi),%eax
	movl	%eax,%esi
	incl	%eax
	addl	%eax,%edi
	movl	%edi,%edi
	movl	4(%edi),%ebx
	movl	%ebx,4(%esp)
	movl	$1,%esi
	cmpl	%esi,%ebx
	jl	Lj10777
	decl	%esi
	.balign 4,0x90
Lj10778:
	incl	%esi
	leal	(%edi,%esi,8),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	addl	8(%esp),%eax
	call	FPC_FINALIZE
	cmpl	%esi,%ebx
	jg	Lj10778
Lj10777:
Lj10765:
	movl	(%esp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%esp)
Lj10760:
	movl	(%esp),%eax
	testl	%eax,%eax
	jne	Lj10759
Lj10761:
	movl	12(%esp),%ebx
	movl	16(%esp),%esi
	movl	20(%esp),%edi
	addl	$24,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
SYSTEM_TOBJECT_$__AFTERCONSTRUCTION:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
SYSTEM_TOBJECT_$__BEFOREDESTRUCTION:
	ret

.text
	.balign 4,0x90
SYSTEM_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	(%eax),%ecx
	cmpl	(%edx),%ecx
	jne	Lj10794
	leal	4(%eax),%ecx
	leal	4(%edx),%ebx
	movl	(%ecx),%ecx
	cmpl	(%ebx),%ecx
	jne	Lj10794
	leal	8(%eax),%ecx
	leal	8(%edx),%ebx
	movl	(%ecx),%ecx
	cmpl	(%ebx),%ecx
	jne	Lj10794
	addl	$12,%eax
	addl	$12,%edx
	movl	(%eax),%eax
	cmpl	(%edx),%eax
	jne	Lj10794
	movb	$1,%al
	jmp	Lj10798
Lj10794:
	movb	$0,%al
Lj10798:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN:
	subl	$20,%esp
	movl	%ebx,8(%esp)
	movl	%esi,12(%esp)
	movl	%edi,16(%esp)
	movl	%edx,%edi
	movl	%ecx,%esi
	movl	$0,(%esi)
	movl	%eax,%ebx
	movl	%ebx,4(%esp)
	testl	%edi,%edi
	je	Lj10806
	testl	%ebx,%ebx
	je	Lj10806
	movl	16(%edi),%eax
	testl	%eax,%eax
	je	Lj10810
	decl	%eax
	je	Lj10812
	decl	%eax
	je	Lj10814
	decl	%eax
	je	Lj10811
	decl	%eax
	je	Lj10813
	decl	%eax
	je	Lj10815
	decl	%eax
	je	Lj10811
	jmp	Lj10809
Lj10810:
	movl	8(%edi),%eax
	addl	%ebx,%eax
	movl	%eax,(%esi)
	jmp	Lj10808
Lj10811:
	movl	8(%edi),%eax
	addl	%ebx,%eax
	movl	(%eax),%eax
	movl	%eax,(%esi)
	jmp	Lj10808
Lj10812:
	movl	(%ebx),%eax
	movl	8(%edi),%edx
	addl	%edx,%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	%esi,%edx
	movl	4(%esp),%eax
	movl	(%esp),%ecx
	call	*%ecx
	jmp	Lj10808
Lj10813:
	movl	(%ebx),%eax
	movl	8(%edi),%edx
	addl	%edx,%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	4(%esp),%eax
	movl	(%esp),%edx
	call	*%edx
	movl	%eax,(%esi)
	jmp	Lj10808
Lj10814:
	movl	8(%edi),%eax
	movl	%eax,(%esp)
	movl	%esi,%edx
	movl	4(%esp),%eax
	movl	(%esp),%ecx
	call	*%ecx
	jmp	Lj10808
Lj10815:
	movl	8(%edi),%eax
	movl	%eax,(%esp)
	movl	4(%esp),%eax
	movl	(%esp),%edx
	call	*%edx
	movl	%eax,(%esi)
Lj10809:
Lj10808:
Lj10806:
	cmpl	$0,(%esi)
	je	Lj10845
	movb	$1,%al
	jmp	Lj10846
Lj10845:
	movb	$0,%al
Lj10846:
	movl	8(%esp),%ebx
	movl	12(%esp),%esi
	movl	16(%esp),%edi
	addl	$20,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN
SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,%ebx
	movl	%edx,%edi
	movl	%ecx,-4(%ebp)
	movl	%edi,%edx
	movl	$TC_SYSTEM_IOBJECTINSTANCE,%eax
	call	SYSTEM_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
	testb	%al,%al
	je	Lj10850
	movl	-4(%ebp),%eax
	movl	%ebx,(%eax)
	movb	$1,-8(%ebp)
	jmp	Lj10847
Lj10850:
	movl	%ebx,%ebx
	.balign 4,0x90
Lj10861:
	movl	%edi,%edx
	movl	(%ebx),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
	movl	%eax,%esi
	movl	-4(%ebp),%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
	movb	%al,-8(%ebp)
	testb	%al,%al
	je	Lj10863
Lj10880:
	movl	16(%esi),%eax
	cmpl	$4,%eax
Lj10881:
	jc	Lj10863
	movl	-4(%ebp),%eax
	movl	(%eax),%ebx
	jmp	Lj10861
Lj10863:
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj10885
	movl	16(%esi),%eax
	testl	%eax,%eax
	je	Lj10884
	cmpl	$3,%eax
Lj10887:
	jne	Lj10885
Lj10884:
	movl	-4(%ebp),%eax
	pushl	(%eax)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	(%eax),%eax
	call	*4(%eax)
	popl	%ebx
Lj10885:
Lj10847:
	movb	-8(%ebp),%al
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
SYSTEM_TOBJECT_$__GETINTERFACEWEAK$TGUID$formal$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,%ebx
	movl	%edx,%edi
	movl	%ecx,-4(%ebp)
	movl	%edi,%edx
	movl	$TC_SYSTEM_IOBJECTINSTANCE,%eax
	call	SYSTEM_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
	testb	%al,%al
	je	Lj10893
	movl	-4(%ebp),%eax
	movl	%ebx,(%eax)
	movb	$1,-8(%ebp)
	jmp	Lj10890
Lj10893:
	movl	%ebx,%ebx
	.balign 4,0x90
Lj10904:
	movl	%edi,%edx
	movl	(%ebx),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
	movl	%eax,%esi
	movl	-4(%ebp),%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
	movb	%al,-8(%ebp)
	testb	%al,%al
	je	Lj10906
Lj10923:
	movl	16(%esi),%eax
	cmpl	$4,%eax
Lj10924:
	jc	Lj10906
	movl	-4(%ebp),%eax
	movl	(%eax),%ebx
	jmp	Lj10904
Lj10906:
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj10928
	movl	16(%esi),%eax
	testl	%eax,%eax
	je	Lj10928
	cmpl	$3,%eax
Lj10930:
	je	Lj10928
	movl	-4(%ebp),%eax
	pushl	(%eax)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	(%eax),%eax
	call	*8(%eax)
	popl	%ebx
Lj10928:
Lj10890:
	movb	-8(%ebp),%al
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__GETINTERFACEBYSTR$SHORTSTRING$formal$$BOOLEAN
SYSTEM_TOBJECT_$__GETINTERFACEBYSTR$SHORTSTRING$formal$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%edx,%edi
	movl	%ecx,-4(%ebp)
	movl	%eax,%ebx
	.balign 4,0x90
Lj10937:
	movl	%edi,%edx
	movl	(%ebx),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY
	movl	%eax,%esi
	movl	-4(%ebp),%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
	movb	%al,-8(%ebp)
	testb	%al,%al
	je	Lj10939
Lj10956:
	movl	16(%esi),%eax
	cmpl	$4,%eax
Lj10957:
	jc	Lj10939
	movl	-4(%ebp),%eax
	movl	(%eax),%ebx
	jmp	Lj10937
Lj10939:
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj10961
	cmpl	$0,(%esi)
	je	Lj10961
	movl	16(%esi),%eax
	testl	%eax,%eax
	je	Lj10960
	cmpl	$3,%eax
Lj10964:
	jne	Lj10961
Lj10960:
	movl	-4(%ebp),%eax
	pushl	(%eax)
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	movl	(%eax),%eax
	call	*4(%eax)
	popl	%ebx
Lj10961:
	movb	-8(%ebp),%al
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN
SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN:
	call	SYSTEM_TOBJECT_$__GETINTERFACEBYSTR$SHORTSTRING$formal$$BOOLEAN
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
SYSTEM_TOBJECT_$__GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY:
	subl	$24,%esp
	movl	%ebx,12(%esp)
	movl	%esi,16(%esp)
	movl	%edi,20(%esp)
	movl	%edx,8(%esp)
	movl	%eax,4(%esp)
	jmp	Lj10982
	.balign 4,0x90
Lj10981:
	movl	4(%esp),%eax
	movl	40(%eax),%esi
	testl	%esi,%esi
	je	Lj10987
	movl	(%esi),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,%edi
	cmpl	%edi,%ebx
	jl	Lj10989
	decl	%edi
	.balign 4,0x90
Lj10990:
	incl	%edi
	imull	$20,%edi,%eax
	leal	4(%esi,%eax),%eax
	movl	%eax,(%esp)
	cmpl	$0,(%eax)
	je	Lj10994
	movl	(%esp),%edx
	movl	(%edx),%eax
	movl	8(%esp),%edx
	call	SYSTEM_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
	testb	%al,%al
	jne	Lj10977
Lj10994:
	cmpl	%edi,%ebx
	jg	Lj10990
Lj10989:
Lj10987:
	movl	4(%esp),%eax
	movl	8(%eax),%eax
	movl	%eax,4(%esp)
Lj10982:
	movl	4(%esp),%eax
	testl	%eax,%eax
	je	Lj10983
	movl	$FPC_EMPTYINTF,%edx
	movl	4(%esp),%eax
	cmpl	40(%eax),%edx
	jne	Lj10981
Lj10983:
	movl	$0,(%esp)
Lj10977:
	movl	(%esp),%eax
	movl	12(%esp),%ebx
	movl	16(%esp),%esi
	movl	20(%esp),%edi
	addl	$24,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY
SYSTEM_TOBJECT_$__GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY:
	subl	$24,%esp
	movl	%ebx,12(%esp)
	movl	%esi,16(%esp)
	movl	%edi,20(%esp)
	movl	%edx,8(%esp)
	movl	%eax,4(%esp)
	jmp	Lj11010
	.balign 4,0x90
Lj11009:
	movl	4(%esp),%eax
	movl	40(%eax),%ebx
	testl	%ebx,%ebx
	je	Lj11015
	movl	(%ebx),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,%esi
	cmpl	%esi,%edi
	jl	Lj11017
	decl	%esi
	.balign 4,0x90
Lj11018:
	incl	%esi
	imull	$20,%esi,%eax
	leal	4(%ebx,%eax),%eax
	movl	%eax,(%esp)
	cmpl	$0,12(%eax)
	je	Lj11022
	movl	(%esp),%edx
	movl	12(%edx),%eax
	movl	8(%esp),%edx
	call	fpc_shortstr_compare_equal
	testl	%eax,%eax
	je	Lj11005
Lj11022:
	cmpl	%esi,%edi
	jg	Lj11018
Lj11017:
Lj11015:
	movl	4(%esp),%eax
	movl	8(%eax),%eax
	movl	%eax,4(%esp)
Lj11010:
	movl	4(%esp),%eax
	testl	%eax,%eax
	je	Lj11011
	movl	$FPC_EMPTYINTF,%eax
	movl	4(%esp),%edx
	cmpl	40(%edx),%eax
	jne	Lj11009
Lj11011:
	movl	$0,(%esp)
Lj11005:
	movl	(%esp),%eax
	movl	12(%esp),%ebx
	movl	16(%esp),%esi
	movl	20(%esp),%edi
	addl	$24,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__GETINTERFACETABLE$$PINTERFACETABLE
SYSTEM_TOBJECT_$__GETINTERFACETABLE$$PINTERFACETABLE:
	movl	40(%eax),%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__UNITNAME$$ANSISTRING
SYSTEM_TOBJECT_$__UNITNAME$$ANSISTRING:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%edx,(%esp)
	call	SYSTEM_TOBJECT_$__CLASSINFO$$POINTER
	testl	%eax,%eax
	je	Lj11044
	movl	%eax,%edx
	incl	%edx
	movzbl	(%edx),%edx
	addl	$2,%edx
	addl	%edx,%eax
	addl	$10,%eax
	movl	(%esp),%edx
	call	fpc_shortstr_to_ansistr
	jmp	Lj11049
Lj11044:
	movl	(%esp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
Lj11049:
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN:
	cmpl	%eax,%edx
	seteb	%al
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING:
	subl	$260,%esp
	movl	%edx,(%esp)
	leal	4(%esp),%edx
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING
	leal	4(%esp),%eax
	movl	(%esp),%edx
	call	fpc_shortstr_to_ansistr
	addl	$260,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TINTERFACEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT
SYSTEM_TINTERFACEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	16(%ebp),%ecx
	call	SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN
	testb	%al,%al
	je	Lj11073
	movl	$0,%eax
	jmp	Lj11082
Lj11073:
	movl	$-2147467262,%eax
Lj11082:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TINTERFACEDOBJECT_$___ADDREF$$LONGINT
SYSTEM_TINTERFACEDOBJECT_$___ADDREF$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	addl	$4,%eax
	call	SYSTEM_INTERLOCKEDINCREMENT$LONGINT$$LONGINT
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TINTERFACEDOBJECT_$___RELEASE$$LONGINT
SYSTEM_TINTERFACEDOBJECT_$___RELEASE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	8(%ebp),%esi
	leal	4(%esi),%eax
	call	SYSTEM_INTERLOCKEDDECREMENT$LONGINT$$LONGINT
	movl	%eax,%ebx
	testl	%eax,%eax
	jne	Lj11098
	movl	%esi,%eax
	movl	$1,%edx
	movl	(%esi),%ecx
	call	*48(%ecx)
Lj11098:
	movl	%ebx,%eax
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TINTERFACEDOBJECT_$__AFTERCONSTRUCTION
SYSTEM_TINTERFACEDOBJECT_$__AFTERCONSTRUCTION:
	subl	$4,%esp
	movl	%ebx,(%esp)
	addl	$4,%eax
	movl	TC_SYSTEM_ISMULTITHREAD,%edx
	testl	%edx,%edx
	jne	Lj11108
	decl	(%eax)
	movl	(%eax),%edx
	testl	%edx,%edx
	seteb	%bl
	jmp	Lj11111
Lj11108:
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj11111:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TINTERFACEDOBJECT_$__BEFOREDESTRUCTION
SYSTEM_TINTERFACEDOBJECT_$__BEFOREDESTRUCTION:
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj11119
	movl	$204,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj11119:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TINTERFACEDOBJECT_$__NEWINSTANCE$$TOBJECT
SYSTEM_TINTERFACEDOBJECT_$__NEWINSTANCE$$TOBJECT:
	call	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	testl	%eax,%eax
	je	Lj11129
	movl	$1,4(%eax)
Lj11129:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TAGGREGATEDOBJECT_$__CREATE$IUNKNOWN$$TAGGREGATEDOBJECT
SYSTEM_TAGGREGATEDOBJECT_$__CREATE$IUNKNOWN$$TAGGREGATEDOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$92,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,-4(%ebp)
	cmpl	$1,%esi
	jna	Lj11135
	movl	%esi,%eax
	movl	%esi,%edx
	call	*52(%edx)
	movl	%eax,%ebx
Lj11135:
	testl	%ebx,%ebx
	je	Lj11132
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj11144
	leal	-56(%ebp),%ecx
	leal	-80(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj11148
	movl	%ebx,%eax
	movl	$0,%edx
	call	SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	movl	-4(%ebp),%eax
	movl	%eax,4(%ebx)
Lj11148:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj11149
	call	FPC_RERAISE
Lj11149:
	testl	%ebx,%ebx
	je	Lj11158
	testl	%esi,%esi
	je	Lj11158
	movl	%ebx,%eax
	movl	(%ebx),%edx
	call	*68(%edx)
Lj11158:
Lj11144:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj11146
	leal	-56(%ebp),%ecx
	leal	-80(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj11163
	testl	%esi,%esi
	je	Lj11165
	movl	%ebx,%eax
	movl	$-1,%edx
	movl	(%ebx),%ecx
	call	*48(%ecx)
Lj11165:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj11163:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj11162
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj11162:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
Lj11146:
Lj11132:
	movl	%ebx,%eax
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TAGGREGATEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT
SYSTEM_TAGGREGATEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	16(%ebp),%eax
	pushl	%eax
	pushl	%edx
	pushl	4(%ecx)
	movl	4(%ecx),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TAGGREGATEDOBJECT_$___ADDREF$$LONGINT
SYSTEM_TAGGREGATEDOBJECT_$___ADDREF$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	8(%ebp),%eax
	pushl	4(%eax)
	movl	4(%eax),%eax
	movl	(%eax),%eax
	call	*4(%eax)
	popl	%ebx
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TAGGREGATEDOBJECT_$___RELEASE$$LONGINT
SYSTEM_TAGGREGATEDOBJECT_$___RELEASE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	8(%ebp),%eax
	pushl	4(%eax)
	movl	4(%eax),%eax
	movl	(%eax),%eax
	call	*8(%eax)
	popl	%ebx
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TAGGREGATEDOBJECT_$__GETCONTROLLER$$IUNKNOWN
SYSTEM_TAGGREGATEDOBJECT_$__GETCONTROLLER$$IUNKNOWN:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%eax,%ebx
	movl	%edx,(%esp)
	movl	4(%ebx),%eax
	call	FPC_INTF_INCR_REF
	movl	(%esp),%esi
	movl	%esi,%eax
	call	FPC_INTF_DECR_REF
	movl	4(%ebx),%eax
	movl	%eax,(%esi)
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TCONTAINEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT
SYSTEM_TCONTAINEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	movl	16(%ebp),%ecx
	call	SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN
	testb	%al,%al
	je	Lj11199
	movl	$0,%eax
	jmp	Lj11208
Lj11199:
	movl	$-2147467262,%eax
Lj11208:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RAISELIST$$PEXCEPTOBJECT
SYSTEM_RAISELIST$$PEXCEPTOBJECT:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11215
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11216
Lj11215:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11216:
	movl	(%eax),%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ACQUIREEXCEPTIONOBJECT$$POINTER
SYSTEM_ACQUIREEXCEPTIONOBJECT$$POINTER:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11221
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11222
Lj11221:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11222:
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj11224
	incl	12(%eax)
	movl	(%eax),%ebx
	jmp	Lj11227
Lj11224:
	movw	$231,%ax
	call	SYSTEM_RUNERROR$WORD
Lj11227:
	movl	%ebx,%eax
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RELEASEEXCEPTIONOBJECT
SYSTEM_RELEASEEXCEPTIONOBJECT:
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
	testl	%eax,%eax
	je	Lj11237
	movl	12(%eax),%edx
	testl	%edx,%edx
	jng	Lj11240
	decl	12(%eax)
	jmp	Lj11240
Lj11237:
	movw	$231,%ax
	call	SYSTEM_RUNERROR$WORD
Lj11240:
	ret

.text
	.balign 4,0x90
.globl	fpc_pushexceptaddr
fpc_pushexceptaddr:
.globl	FPC_PUSHEXCEPTADDR
FPC_PUSHEXCEPTADDR:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,%edi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11247
	movl	U_SYSTEM_EXCEPTADDRSTACK,%eax
	call	*%edx
	jmp	Lj11248
Lj11247:
	movl	$U_SYSTEM_EXCEPTADDRSTACK+4,%eax
Lj11248:
	movl	(%eax),%edx
	movl	%edx,4(%edi)
	movl	%edi,(%eax)
	movl	%esi,%eax
	movl	%eax,(%edi)
	movl	%ebx,8(%edi)
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_pushexceptobj
fpc_pushexceptobj:
.globl	FPC_PUSHEXCEPTOBJECT
FPC_PUSHEXCEPTOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	movl	%eax,%esi
	movl	%edx,%ebx
	movl	%ecx,-24(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11263
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11264
Lj11263:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11264:
	movl	%eax,%edi
	movl	(%edi),%eax
	testl	%eax,%eax
	jne	Lj11266
	movl	$24,%eax
	call	fpc_getmem
	movl	%eax,(%edi)
	movl	$0,8(%eax)
	jmp	Lj11275
Lj11266:
	movl	$24,%eax
	call	fpc_getmem
	movl	(%edi),%edx
	movl	%edx,8(%eax)
	movl	%eax,(%edi)
Lj11275:
	movl	%edi,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	(%eax),%edx
	movl	%esi,(%edx)
	movl	%ebx,4(%edx)
	movl	$0,12(%edx)
	movl	-24(%ebp),%ebx
	movl	%ebp,%esi
	movl	$0,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-20(%ebp)
	jmp	Lj11305
	.balign 4,0x90
Lj11304:
	movl	%ebx,%eax
	call	SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
	movl	%eax,-8(%ebp)
	movl	%ebx,%eax
	call	SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj11306
Lj11317:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj11306
	movl	-20(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jnge	Lj11319
	addl	$16,-12(%ebp)
	movl	-12(%ebp),%edx
	shll	$2,%edx
	leal	-4(%ebp),%eax
	call	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
Lj11319:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
	incl	-20(%ebp)
	movl	%ebx,%esi
	movl	-16(%ebp),%ebx
Lj11305:
	movl	-20(%ebp),%eax
	cmpl	TC_SYSTEM_RAISEMAXFRAMECOUNT,%eax
	jnl	Lj11306
	cmpl	%esi,%ebx
	jna	Lj11306
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11332
	movl	U_SYSTEM_STACKBOTTOM,%eax
	call	*%edx
	movl	%eax,%edi
	jmp	Lj11333
Lj11332:
	movl	$U_SYSTEM_STACKBOTTOM+4,%edi
Lj11333:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11334
	movl	U_SYSTEM_STACKLENGTH,%eax
	call	*%edx
	jmp	Lj11335
Lj11334:
	movl	$U_SYSTEM_STACKLENGTH+4,%eax
Lj11335:
	movl	(%edi),%edx
	movl	(%eax),%eax
	addl	%eax,%edx
	cmpl	%ebx,%edx
	ja	Lj11304
Lj11306:
	movl	-28(%ebp),%edx
	movl	(%edx),%ecx
	movl	-20(%ebp),%eax
	movl	%eax,16(%ecx)
	movl	(%edx),%eax
	movl	-4(%ebp),%edx
	movl	%edx,20(%eax)
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DOUNHANDLEDEXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11344
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11345
Lj11344:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11345:
	movl	(%eax),%eax
	movl	TC_SYSTEM_EXCEPTPROC,%edx
	testl	%edx,%edx
	je	Lj11347
	testl	%eax,%eax
	je	Lj11347
	pushl	20(%eax)
	movl	16(%eax),%ecx
	movl	4(%eax),%edx
	movl	(%eax),%eax
	movl	TC_SYSTEM_EXCEPTPROC,%ebx
	call	*%ebx
	movl	$217,%eax
	call	SYSTEM_HALT$LONGINT
Lj11347:
	movl	TC_SYSTEM_ERRORADDR,%eax
	testl	%eax,%eax
	jne	Lj11362
	movw	$217,%ax
	call	SYSTEM_RUNERROR$WORD
	jmp	Lj11365
Lj11362:
	movzwl	TC_SYSTEM_ERRORCODE,%eax
	call	SYSTEM_HALT$LONGINT
Lj11365:
	movl	-4(%ebp),%ebx
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
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%ebx
	movl	%edx,%eax
	movl	$0,%edi
	movl	%eax,%edx
	movl	%ebx,%eax
	call	FPC_PUSHEXCEPTOBJECT
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11380
	movl	U_SYSTEM_EXCEPTADDRSTACK,%eax
	call	*%edx
	jmp	Lj11381
Lj11380:
	movl	$U_SYSTEM_EXCEPTADDRSTACK+4,%eax
Lj11381:
	movl	(%eax),%ebx
	testl	%ebx,%ebx
	jne	Lj11383
	call	SYSTEM_DOUNHANDLEDEXCEPTION
Lj11383:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11386
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11387
Lj11386:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11387:
	movl	(%eax),%eax
	movl	TC_SYSTEM_RAISEPROC,%edx
	testl	%edx,%edx
	je	Lj11389
	testl	%eax,%eax
	je	Lj11389
	pushl	20(%eax)
	movl	16(%eax),%ecx
	movl	4(%eax),%edx
	movl	(%eax),%eax
	movl	TC_SYSTEM_RAISEPROC,%esi
	call	*%esi
Lj11389:
	movl	(%ebx),%eax
	movl	$1,%edx
	call	FPC_LONGJMP
	movl	%edi,%eax
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_popaddrstack
fpc_popaddrstack:
.globl	FPC_POPADDRSTACK
FPC_POPADDRSTACK:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11409
	movl	U_SYSTEM_EXCEPTADDRSTACK,%eax
	call	*%edx
	movl	%eax,%ebx
	jmp	Lj11410
Lj11409:
	movl	$U_SYSTEM_EXCEPTADDRSTACK+4,%ebx
Lj11410:
	movl	(%ebx),%eax
	testl	%eax,%eax
	jne	Lj11412
	movl	$255,%eax
	call	SYSTEM_HALT$LONGINT
	jmp	Lj11415
Lj11412:
	movl	(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx)
Lj11415:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_popobjectstack
fpc_popobjectstack:
.globl	FPC_POPOBJECTSTACK
FPC_POPOBJECTSTACK:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11422
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11423
Lj11422:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11423:
	movl	(%eax),%esi
	testl	%esi,%esi
	jne	Lj11425
	movl	$1,%eax
	call	SYSTEM_HALT$LONGINT
	jmp	Lj11428
Lj11425:
	movl	12(%esi),%eax
	testl	%eax,%eax
	jne	Lj11430
	movl	(%esi),%edi
	jmp	Lj11433
Lj11430:
	movl	$0,%edi
Lj11433:
	movl	%esi,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11440
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11441
Lj11440:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11441:
	movl	8(%esi),%edx
	movl	%edx,(%eax)
	cmpl	$0,20(%ebx)
	je	Lj11443
	movl	20(%ebx),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj11443:
	movl	%ebx,%eax
	call	fpc_freemem
	movl	$0,TC_SYSTEM_ERRORADDR
Lj11428:
	movl	%edi,%eax
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_popsecondobjectstack
fpc_popsecondobjectstack:
.globl	FPC_POPSECONDOBJECTSTACK
FPC_POPSECONDOBJECTSTACK:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11454
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11455
Lj11454:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11455:
	movl	(%eax),%ebx
	testl	%ebx,%ebx
	je	Lj11456
	cmpl	$0,8(%ebx)
	jne	Lj11457
Lj11456:
	movl	$1,%eax
	call	SYSTEM_HALT$LONGINT
	jmp	Lj11461
Lj11457:
	movl	8(%ebx),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	jne	Lj11463
	movl	8(%ebx),%eax
	movl	(%eax),%esi
	jmp	Lj11466
Lj11463:
	movl	$0,%esi
Lj11466:
	movl	8(%ebx),%edi
	movl	8(%edi),%eax
	movl	%eax,8(%ebx)
	cmpl	$0,20(%edi)
	je	Lj11474
	movl	20(%edi),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj11474:
	movl	%edi,%eax
	call	fpc_freemem
Lj11461:
	movl	%esi,%eax
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_reraise
fpc_reraise:
.globl	FPC_RERAISE
FPC_RERAISE:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11483
	movl	U_SYSTEM_EXCEPTADDRSTACK,%eax
	call	*%edx
	jmp	Lj11484
Lj11483:
	movl	$U_SYSTEM_EXCEPTADDRSTACK+4,%eax
Lj11484:
	movl	(%eax),%ebx
	testl	%ebx,%ebx
	jne	Lj11486
	call	SYSTEM_DOUNHANDLEDEXCEPTION
Lj11486:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11489
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11490
Lj11489:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11490:
	movl	(%eax),%eax
	movl	$0,12(%eax)
	movl	(%ebx),%eax
	movl	$1,%edx
	call	FPC_LONGJMP
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_catches
fpc_catches:
.globl	FPC_CATCHES
FPC_CATCHES:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11499
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11500
Lj11499:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11500:
	movl	(%eax),%esi
	testl	%esi,%esi
	jne	Lj11502
	movl	$255,%eax
	call	SYSTEM_HALT$LONGINT
Lj11502:
	movl	%ebx,%eax
	cmpl	TC_SYSTEM_CATCHALLEXCEPTIONS,%eax
	je	Lj11508
Lj11509:
	movl	(%esi),%edx
	call	fpc_do_is
	testb	%al,%al
	jne	Lj11508
Lj11507:
	movl	$0,%eax
	jmp	Lj11516
Lj11508:
	movl	(%esi),%eax
Lj11516:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_destroyexception
fpc_destroyexception:
.globl	FPC_DESTROYEXCEPTION
FPC_DESTROYEXCEPTION:
	call	SYSTEM_TOBJECT_$__FREE
	ret

.text
	.balign 4,0x90
.globl	fpc_getexceptionaddr
fpc_getexceptionaddr:
.globl	FPC_GETEXCEPTIONADDR
FPC_GETEXCEPTIONADDR:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11527
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11528
Lj11527:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11528:
	movl	(%eax),%edx
	testl	%edx,%edx
	jne	Lj11530
	movl	$0,%eax
	jmp	Lj11533
Lj11530:
	movl	4(%edx),%eax
Lj11533:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSINITEXCEPTIONS
SYSTEM_SYSINITEXCEPTIONS:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11540
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11541
Lj11540:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11541:
	movl	$0,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11544
	movl	U_SYSTEM_EXCEPTADDRSTACK,%eax
	call	*%edx
	jmp	Lj11545
Lj11544:
	movl	$U_SYSTEM_EXCEPTADDRSTACK+4,%eax
Lj11545:
	movl	$0,(%eax)
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_VARIANT_INIT$TVARDATA
SYSTEM_VARIANT_INIT$TVARDATA:
.globl	FPC_VARIANT_INIT
FPC_VARIANT_INIT:
	movb	$0,%cl
	movl	$16,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_VARIANT_CLEAR$TVARDATA
SYSTEM_VARIANT_CLEAR$TVARDATA:
.globl	FPC_VARIANT_CLEAR
FPC_VARIANT_CLEAR:
	cmpl	$0,TC_SYSTEM_VARCLEARPROC
	je	Lj11557
	movl	TC_SYSTEM_VARCLEARPROC,%edx
	call	*%edx
Lj11557:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_VARIANT_ADDREF$TVARDATA
SYSTEM_VARIANT_ADDREF$TVARDATA:
.globl	FPC_VARIANT_ADDREF
FPC_VARIANT_ADDREF:
	cmpl	$0,TC_SYSTEM_VARADDREFPROC
	je	Lj11563
	movl	TC_SYSTEM_VARADDREFPROC,%edx
	call	*%edx
Lj11563:
	ret

.text
	.balign 4,0x90
.globl	fpc_variant_copy
fpc_variant_copy:
.globl	FPC_VARIANT_COPY
FPC_VARIANT_COPY:
	cmpl	$0,TC_SYSTEM_VARCOPYPROC
	je	Lj11569
	movl	TC_SYSTEM_VARCOPYPROC,%ecx
	call	*%ecx
Lj11569:
	ret

.text
	.balign 4,0x90
.globl	fpc_variant_copy_overwrite
fpc_variant_copy_overwrite:
.globl	FPC_VARIANT_COPY_OVERWRITE
FPC_VARIANT_COPY_OVERWRITE:
	movl	%eax,%ecx
	movl	%edx,%eax
	movw	$0,(%eax)
	cmpl	$0,TC_SYSTEM_VARCOPYPROC
	je	Lj11579
	movl	%ecx,%edx
	movl	TC_SYSTEM_VARCOPYPROC,%ecx
	call	*%ecx
Lj11579:
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_variant
fpc_write_text_variant:
.globl	FPC_WRITE_TEXT_VARIANT
FPC_WRITE_TEXT_VARIANT:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,(%esp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11588
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj11589
Lj11588:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj11589:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj11584
	movl	4(%esi),%eax
	cmpl	$55217,%eax
	jl	Lj11591
	subl	$55217,%eax
	je	Lj11593
	decl	%eax
	jne	Lj11591
	cmpl	$-1,%ebx
	jne	Lj11595
	movl	(%esp),%edx
	movl	%esi,%eax
	movl	U_SYSTEM_VARIANTMANAGER+180,%ecx
	call	*%ecx
	jmp	Lj11590
Lj11595:
	movl	%ebx,%ecx
	movl	(%esp),%edx
	movl	%esi,%eax
	movl	U_SYSTEM_VARIANTMANAGER+176,%ebx
	call	*%ebx
	jmp	Lj11590
Lj11593:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11609
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj11610
Lj11609:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj11610:
	movw	$105,(%eax)
	jmp	Lj11590
Lj11591:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11613
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj11614
Lj11613:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj11614:
	movw	$103,(%eax)
Lj11590:
Lj11584:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_vararray_get
fpc_vararray_get:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$76,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,%ebx
	movl	8(%ebp),%esi
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-64(%ebp),%eax
	call	FPC_INITIALIZE
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj11617
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-64(%ebp),%eax
	call	FPC_FINALIZE
	pushl	%ebx
	pushl	%esi
	movl	-8(%ebp),%esi
	subl	$16,%esp
	movl	%esp,%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	leal	-64(%ebp),%eax
	pushl	%eax
	movl	U_SYSTEM_VARIANTMANAGER+168,%eax
	call	*%eax
	addl	$24,%esp
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_variant_copy
Lj11617:
	call	FPC_POPADDRSTACK
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-64(%ebp),%eax
	call	FPC_FINALIZE
	popl	%eax
	testl	%eax,%eax
	je	Lj11618
	call	FPC_RERAISE
Lj11618:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_vararray_put
fpc_vararray_put:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%eax
	pushl	%ecx
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
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_variant_to_dynarray
fpc_variant_to_dynarray:
	subl	$12,%esp
	movl	%ebx,8(%esp)
	movl	%eax,(%esp)
	movl	%edx,%ecx
	movl	$0,4(%esp)
	movl	(%esp),%edx
	leal	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+48,%ebx
	call	*%ebx
	movl	4(%esp),%eax
	movl	8(%esp),%ebx
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_dynarray_to_variant
fpc_dynarray_to_variant:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%eax,%ebx
	movl	%ecx,(%esp)
	movl	%edx,%ecx
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+100,%esi
	movl	%ebx,%edx
	call	*%esi
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_variant_to_interface
fpc_variant_to_interface:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	movl	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+40,%ecx
	call	*%ecx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_interface_to_variant
fpc_interface_to_variant:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	movl	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+92,%ecx
	call	*%ecx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_variant_to_idispatch
fpc_variant_to_idispatch:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	movl	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+44,%ecx
	call	*%ecx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_idispatch_to_variant
fpc_idispatch_to_variant:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	movl	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+96,%ecx
	call	*%ecx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_dispinvoke_variant
fpc_dispinvoke_variant:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%edx,%esi
	movl	8(%ebp),%edx
	pushl	%edx
	pushl	%ecx
	subl	$16,%esp
	movl	%esp,%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	pushl	%eax
	movl	U_SYSTEM_VARIANTMANAGER+160,%eax
	call	*%eax
	addl	$28,%esp
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_assign$BYTE$$VARIANT
SYSTEM_assign$BYTE$$VARIANT:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%edx,(%esp)
	movzbl	%al,%edx
	movl	(%esp),%eax
	movl	$1,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+56,%ebx
	call	*%ebx
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$SHORTINT$$VARIANT
SYSTEM_assign$SHORTINT$$VARIANT:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%edx,(%esp)
	movsbl	%al,%edx
	movl	(%esp),%eax
	movl	$-1,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+56,%ebx
	call	*%ebx
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$WORD$$VARIANT
SYSTEM_assign$WORD$$VARIANT:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%edx,(%esp)
	movzwl	%ax,%edx
	movl	(%esp),%eax
	movl	$2,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+56,%ebx
	call	*%ebx
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$SMALLINT$$VARIANT
SYSTEM_assign$SMALLINT$$VARIANT:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%edx,(%esp)
	movswl	%ax,%edx
	movl	(%esp),%eax
	movl	$-2,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+56,%ebx
	call	*%ebx
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$LONGWORD$$VARIANT
SYSTEM_assign$LONGWORD$$VARIANT:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%edx,(%esp)
	movl	%eax,%edx
	movl	(%esp),%eax
	movl	$4,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+56,%ebx
	call	*%ebx
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$LONGINT$$VARIANT
SYSTEM_assign$LONGINT$$VARIANT:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%edx,(%esp)
	movl	%eax,%edx
	movl	(%esp),%eax
	movl	$-4,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+56,%ebx
	call	*%ebx
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$QWORD$$VARIANT
SYSTEM_assign$QWORD$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	8(%ebp),%edx
	movl	12(%ebp),%ecx
	movl	%eax,-4(%ebp)
	pushl	%ecx
	pushl	%edx
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
	movl	8(%ebp),%edx
	movl	12(%ebp),%ecx
	movl	%eax,-4(%ebp)
	pushl	%ecx
	pushl	%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+60,%edx
	call	*%edx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_assign$BOOLEAN$$VARIANT
SYSTEM_assign$BOOLEAN$$VARIANT:
	subl	$4,%esp
	movl	%edx,(%esp)
	movb	%al,%dl
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+52,%ecx
	call	*%ecx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$WORDBOOL$$VARIANT
SYSTEM_assign$WORDBOOL$$VARIANT:
	subl	$4,%esp
	movl	%edx,(%esp)
	orw	%ax,%ax
	setneb	%dl
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+52,%ecx
	call	*%ecx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$LONGBOOL$$VARIANT
SYSTEM_assign$LONGBOOL$$VARIANT:
	subl	$4,%esp
	movl	%edx,(%esp)
	orl	%eax,%eax
	setneb	%dl
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+52,%ecx
	call	*%ecx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$CHAR$$VARIANT
SYSTEM_assign$CHAR$$VARIANT:
	subl	$260,%esp
	movl	%edx,(%esp)
	andl	$255,%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,4(%esp)
	leal	4(%esp),%edx
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+80,%ecx
	call	*%ecx
	addl	$260,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$WIDECHAR$$VARIANT
SYSTEM_assign$WIDECHAR$$VARIANT:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%edx,(%esp)
	movzwl	%ax,%edx
	movl	(%esp),%eax
	movl	$2,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+56,%ebx
	call	*%ebx
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$SHORTSTRING$$VARIANT
SYSTEM_assign$SHORTSTRING$$VARIANT:
	subl	$4,%esp
	movl	%edx,(%esp)
	movl	%eax,%edx
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+80,%ecx
	call	*%ecx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$ANSISTRING$$VARIANT
SYSTEM_assign$ANSISTRING$$VARIANT:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	movl	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+84,%ecx
	call	*%ecx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$WIDESTRING$$VARIANT
SYSTEM_assign$WIDESTRING$$VARIANT:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	movl	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+88,%ecx
	call	*%ecx
	addl	$8,%esp
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
	jne	Lj11810
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
Lj11810:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj11811
	call	FPC_RERAISE
Lj11811:
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
	jne	Lj11823
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
Lj11823:
	call	FPC_POPADDRSTACK
	leal	-48(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-48(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj11824
	call	FPC_RERAISE
Lj11824:
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
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%edx,(%esp)
	movl	%eax,%edx
	movl	(%esp),%eax
	movl	$-4,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+56,%ebx
	call	*%ebx
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$BYTE
SYSTEM_assign$VARIANT$$BYTE:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$SHORTINT
SYSTEM_assign$VARIANT$$SHORTINT:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$WORD
SYSTEM_assign$VARIANT$$WORD:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$SMALLINT
SYSTEM_assign$VARIANT$$SMALLINT:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$LONGWORD
SYSTEM_assign$VARIANT$$LONGWORD:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$LONGINT
SYSTEM_assign$VARIANT$$LONGINT:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$QWORD
SYSTEM_assign$VARIANT$$QWORD:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+8,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$INT64
SYSTEM_assign$VARIANT$$INT64:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+4,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$BOOLEAN
SYSTEM_assign$VARIANT$$BOOLEAN:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+12,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$WORDBOOL
SYSTEM_assign$VARIANT$$WORDBOOL:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+12,%edx
	call	*%edx
	orb	%al,%al
	setneb	%al
	andw	$255,%ax
	negw	%ax
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$LONGBOOL
SYSTEM_assign$VARIANT$$LONGBOOL:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+12,%edx
	call	*%edx
	orb	%al,%al
	setneb	%al
	andl	$255,%eax
	negl	%eax
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$CHAR
SYSTEM_assign$VARIANT$$CHAR:
	subl	$260,%esp
	movl	%eax,(%esp)
	movl	(%esp),%edx
	leal	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+28,%ecx
	call	*%ecx
	movzbl	4(%esp),%eax
	testl	%eax,%eax
	jng	Lj11961
	movb	5(%esp),%al
Lj11961:
	addl	$260,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$WIDECHAR
SYSTEM_assign$VARIANT$$WIDECHAR:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$SHORTSTRING
SYSTEM_assign$VARIANT$$SHORTSTRING:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	%edx,%eax
	movl	(%esp),%edx
	movl	U_SYSTEM_VARIANTMANAGER+28,%ecx
	call	*%ecx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$ANSISTRING
SYSTEM_assign$VARIANT$$ANSISTRING:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	movl	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+32,%ecx
	call	*%ecx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$WIDESTRING
SYSTEM_assign$VARIANT$$WIDESTRING:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	movl	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+36,%ecx
	call	*%ecx
	addl	$8,%esp
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
	jne	Lj11990
	movl	-4(%ebp),%edx
	leal	-12(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+36,%ecx
	call	*%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_UTF8ENCODE$UNICODESTRING$$UTF8STRING
Lj11990:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj11991
	call	FPC_RERAISE
Lj11991:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$SINGLE
SYSTEM_assign$VARIANT$$SINGLE:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fstps	4(%esp)
	flds	4(%esp)
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$DOUBLE
SYSTEM_assign$VARIANT$$DOUBLE:
	subl	$12,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fstpl	4(%esp)
	fldl	4(%esp)
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$EXTENDED
SYSTEM_assign$VARIANT$$EXTENDED:
	subl	$16,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fstpt	4(%esp)
	fldt	4(%esp)
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$COMP
SYSTEM_assign$VARIANT$$COMP:
	subl	$12,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fistpq	4(%esp)
	fildq	4(%esp)
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$REAL
SYSTEM_assign$VARIANT$$REAL:
	subl	$12,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fstpl	4(%esp)
	fldl	4(%esp)
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$CURRENCY
SYSTEM_assign$VARIANT$$CURRENCY:
	subl	$12,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+24,%edx
	call	*%edx
	fistpq	4(%esp)
	fildq	4(%esp)
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$TDATETIME
SYSTEM_assign$VARIANT$$TDATETIME:
	subl	$12,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+20,%edx
	call	*%edx
	fstpl	4(%esp)
	fldl	4(%esp)
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$OLEVARIANT
SYSTEM_assign$VARIANT$$OLEVARIANT:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	movl	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+112,%ecx
	call	*%ecx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$VARIANT$$TERROR
SYSTEM_assign$VARIANT$$TERROR:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_or$VARIANT$VARIANT$$VARIANT
SYSTEM_or$VARIANT$VARIANT$$VARIANT:
	subl	$16,%esp
	movl	%ebx,12(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	%ecx,8(%esp)
	movl	(%esp),%edx
	movl	8(%esp),%eax
	call	fpc_variant_copy
	movl	4(%esp),%edx
	movl	8(%esp),%eax
	movl	$9,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	12(%esp),%ebx
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_and$VARIANT$VARIANT$$VARIANT
SYSTEM_and$VARIANT$VARIANT$$VARIANT:
	subl	$16,%esp
	movl	%ebx,12(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	%ecx,8(%esp)
	movl	(%esp),%edx
	movl	8(%esp),%eax
	call	fpc_variant_copy
	movl	4(%esp),%edx
	movl	8(%esp),%eax
	movl	$8,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	12(%esp),%ebx
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_xor$VARIANT$VARIANT$$VARIANT
SYSTEM_xor$VARIANT$VARIANT$$VARIANT:
	subl	$16,%esp
	movl	%ebx,12(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	%ecx,8(%esp)
	movl	(%esp),%edx
	movl	8(%esp),%eax
	call	fpc_variant_copy
	movl	4(%esp),%edx
	movl	8(%esp),%eax
	movl	$10,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	12(%esp),%ebx
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_not$VARIANT$$VARIANT
SYSTEM_not$VARIANT$$VARIANT:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	movl	4(%esp),%eax
	call	fpc_variant_copy
	movl	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+132,%edx
	call	*%edx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_shl$VARIANT$VARIANT$$VARIANT
SYSTEM_shl$VARIANT$VARIANT$$VARIANT:
	subl	$16,%esp
	movl	%ebx,12(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	%ecx,8(%esp)
	movl	(%esp),%edx
	movl	8(%esp),%eax
	call	fpc_variant_copy
	movl	4(%esp),%edx
	movl	8(%esp),%eax
	movl	$6,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	12(%esp),%ebx
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_shr$VARIANT$VARIANT$$VARIANT
SYSTEM_shr$VARIANT$VARIANT$$VARIANT:
	subl	$16,%esp
	movl	%ebx,12(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	%ecx,8(%esp)
	movl	(%esp),%edx
	movl	8(%esp),%eax
	call	fpc_variant_copy
	movl	4(%esp),%edx
	movl	8(%esp),%eax
	movl	$7,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	12(%esp),%ebx
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_plus$VARIANT$VARIANT$$VARIANT
SYSTEM_plus$VARIANT$VARIANT$$VARIANT:
	subl	$16,%esp
	movl	%ebx,12(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	%ecx,8(%esp)
	movl	(%esp),%edx
	movl	8(%esp),%eax
	call	fpc_variant_copy
	movl	4(%esp),%edx
	movl	8(%esp),%eax
	movl	$0,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	12(%esp),%ebx
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_minus$VARIANT$VARIANT$$VARIANT
SYSTEM_minus$VARIANT$VARIANT$$VARIANT:
	subl	$16,%esp
	movl	%ebx,12(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	%ecx,8(%esp)
	movl	(%esp),%edx
	movl	8(%esp),%eax
	call	fpc_variant_copy
	movl	4(%esp),%edx
	movl	8(%esp),%eax
	movl	$1,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	12(%esp),%ebx
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_star$VARIANT$VARIANT$$VARIANT
SYSTEM_star$VARIANT$VARIANT$$VARIANT:
	subl	$16,%esp
	movl	%ebx,12(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	%ecx,8(%esp)
	movl	(%esp),%edx
	movl	8(%esp),%eax
	call	fpc_variant_copy
	movl	4(%esp),%edx
	movl	8(%esp),%eax
	movl	$2,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	12(%esp),%ebx
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_slash$VARIANT$VARIANT$$VARIANT
SYSTEM_slash$VARIANT$VARIANT$$VARIANT:
	subl	$16,%esp
	movl	%ebx,12(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	%ecx,8(%esp)
	movl	(%esp),%edx
	movl	8(%esp),%eax
	call	fpc_variant_copy
	movl	4(%esp),%edx
	movl	8(%esp),%eax
	movl	$3,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	12(%esp),%ebx
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_starstar$VARIANT$VARIANT$$VARIANT
SYSTEM_starstar$VARIANT$VARIANT$$VARIANT:
	subl	$16,%esp
	movl	%ebx,12(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	%ecx,8(%esp)
	movl	(%esp),%edx
	movl	8(%esp),%eax
	call	fpc_variant_copy
	movl	4(%esp),%edx
	movl	8(%esp),%eax
	movl	$20,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	12(%esp),%ebx
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_div$VARIANT$VARIANT$$VARIANT
SYSTEM_div$VARIANT$VARIANT$$VARIANT:
	subl	$16,%esp
	movl	%ebx,12(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	%ecx,8(%esp)
	movl	(%esp),%edx
	movl	8(%esp),%eax
	call	fpc_variant_copy
	movl	4(%esp),%edx
	movl	8(%esp),%eax
	movl	$4,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	12(%esp),%ebx
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_mod$VARIANT$VARIANT$$VARIANT
SYSTEM_mod$VARIANT$VARIANT$$VARIANT:
	subl	$16,%esp
	movl	%ebx,12(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	%ecx,8(%esp)
	movl	(%esp),%edx
	movl	8(%esp),%eax
	call	fpc_variant_copy
	movl	4(%esp),%edx
	movl	8(%esp),%eax
	movl	$5,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+120,%ebx
	call	*%ebx
	movl	12(%esp),%ebx
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_minus$VARIANT$$VARIANT
SYSTEM_minus$VARIANT$$VARIANT:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	movl	4(%esp),%eax
	call	fpc_variant_copy
	movl	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+128,%edx
	call	*%edx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_equal$VARIANT$VARIANT$$BOOLEAN
SYSTEM_equal$VARIANT$VARIANT$$BOOLEAN:
	subl	$12,%esp
	movl	%ebx,8(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	4(%esp),%edx
	movl	(%esp),%eax
	movl	$14,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+124,%ebx
	call	*%ebx
	movl	8(%esp),%ebx
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_lower$VARIANT$VARIANT$$BOOLEAN
SYSTEM_lower$VARIANT$VARIANT$$BOOLEAN:
	subl	$12,%esp
	movl	%ebx,8(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	4(%esp),%edx
	movl	(%esp),%eax
	movl	$16,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+124,%ebx
	call	*%ebx
	movl	8(%esp),%ebx
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_greater$VARIANT$VARIANT$$BOOLEAN
SYSTEM_greater$VARIANT$VARIANT$$BOOLEAN:
	subl	$12,%esp
	movl	%ebx,8(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	4(%esp),%edx
	movl	(%esp),%eax
	movl	$18,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+124,%ebx
	call	*%ebx
	movl	8(%esp),%ebx
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_greater_or_equal$VARIANT$VARIANT$$BOOLEAN
SYSTEM_greater_or_equal$VARIANT$VARIANT$$BOOLEAN:
	subl	$12,%esp
	movl	%ebx,8(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	4(%esp),%edx
	movl	(%esp),%eax
	movl	$19,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+124,%ebx
	call	*%ebx
	movl	8(%esp),%ebx
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_lower_or_equal$VARIANT$VARIANT$$BOOLEAN
SYSTEM_lower_or_equal$VARIANT$VARIANT$$BOOLEAN:
	subl	$12,%esp
	movl	%ebx,8(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	4(%esp),%edx
	movl	(%esp),%eax
	movl	$17,%ecx
	movl	U_SYSTEM_VARIANTMANAGER+124,%ebx
	call	*%ebx
	movl	8(%esp),%ebx
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_VARARRAYREDIM$VARIANT$LONGINT
SYSTEM_VARARRAYREDIM$VARIANT$LONGINT:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+164,%ecx
	call	*%ecx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_VARARRAYPUT$VARIANT$VARIANT$array_of_LONGINT
SYSTEM_VARARRAYPUT$VARIANT$VARIANT$array_of_LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	8(%ebp),%edx
	movl	%edx,%eax
	incl	%eax
	testl	%eax,%eax
	jng	Lj12280
	pushl	%ecx
	incl	%edx
	pushl	%edx
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
	jmp	Lj12289
Lj12280:
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
Lj12289:
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_VARARRAYGET$VARIANT$array_of_LONGINT$$VARIANT
SYSTEM_VARARRAYGET$VARIANT$array_of_LONGINT$$VARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	%ecx,%eax
	incl	%eax
	testl	%eax,%eax
	jng	Lj12301
	pushl	%edx
	incl	%ecx
	pushl	%ecx
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
	jmp	Lj12310
Lj12301:
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
Lj12310:
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_VARCAST$VARIANT$VARIANT$LONGINT
SYSTEM_VARCAST$VARIANT$VARIANT$LONGINT:
	subl	$12,%esp
	movl	%ebx,8(%esp)
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	4(%esp),%edx
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+152,%ebx
	call	*%ebx
	movl	8(%esp),%ebx
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$BYTE
SYSTEM_assign$OLEVARIANT$$BYTE:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$SHORTINT
SYSTEM_assign$OLEVARIANT$$SHORTINT:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$WORD
SYSTEM_assign$OLEVARIANT$$WORD:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$SMALLINT
SYSTEM_assign$OLEVARIANT$$SMALLINT:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$LONGWORD
SYSTEM_assign$OLEVARIANT$$LONGWORD:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$LONGINT
SYSTEM_assign$OLEVARIANT$$LONGINT:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$QWORD
SYSTEM_assign$OLEVARIANT$$QWORD:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+4,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$INT64
SYSTEM_assign$OLEVARIANT$$INT64:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+8,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$BOOLEAN
SYSTEM_assign$OLEVARIANT$$BOOLEAN:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+12,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$WORDBOOL
SYSTEM_assign$OLEVARIANT$$WORDBOOL:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+12,%edx
	call	*%edx
	orb	%al,%al
	setneb	%al
	andw	$255,%ax
	negw	%ax
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$LONGBOOL
SYSTEM_assign$OLEVARIANT$$LONGBOOL:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+12,%edx
	call	*%edx
	orb	%al,%al
	setneb	%al
	andl	$255,%eax
	negl	%eax
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$CHAR
SYSTEM_assign$OLEVARIANT$$CHAR:
	subl	$260,%esp
	movl	%eax,(%esp)
	movl	(%esp),%edx
	leal	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+28,%ecx
	call	*%ecx
	movzbl	4(%esp),%eax
	testl	%eax,%eax
	jng	Lj12404
	movb	5(%esp),%al
	jmp	Lj12407
Lj12404:
	movb	$0,%al
Lj12407:
	addl	$260,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$WIDECHAR
SYSTEM_assign$OLEVARIANT$$WIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12412
	movl	-4(%ebp),%edx
	leal	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+36,%ecx
	call	*%ecx
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj12421
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj12421:
	testl	%eax,%eax
	jng	Lj12420
	movl	-8(%ebp),%eax
	movw	(%eax),%bx
	jmp	Lj12424
Lj12420:
	movw	$0,%bx
Lj12424:
Lj12412:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-8(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj12413
	call	FPC_RERAISE
Lj12413:
	movw	%bx,%ax
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$SHORTSTRING
SYSTEM_assign$OLEVARIANT$$SHORTSTRING:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	%edx,%eax
	movl	(%esp),%edx
	movl	U_SYSTEM_VARIANTMANAGER+28,%ecx
	call	*%ecx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$ANSISTRING
SYSTEM_assign$OLEVARIANT$$ANSISTRING:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	movl	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+32,%ecx
	call	*%ecx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$WIDESTRING
SYSTEM_assign$OLEVARIANT$$WIDESTRING:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	movl	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+36,%ecx
	call	*%ecx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$SINGLE
SYSTEM_assign$OLEVARIANT$$SINGLE:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fstps	4(%esp)
	flds	4(%esp)
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$DOUBLE
SYSTEM_assign$OLEVARIANT$$DOUBLE:
	subl	$12,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fstpl	4(%esp)
	fldl	4(%esp)
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$EXTENDED
SYSTEM_assign$OLEVARIANT$$EXTENDED:
	subl	$16,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fstpt	4(%esp)
	fldt	4(%esp)
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$COMP
SYSTEM_assign$OLEVARIANT$$COMP:
	subl	$12,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fistpq	4(%esp)
	fildq	4(%esp)
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$REAL
SYSTEM_assign$OLEVARIANT$$REAL:
	subl	$12,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+16,%edx
	call	*%edx
	fstpl	4(%esp)
	fldl	4(%esp)
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$CURRENCY
SYSTEM_assign$OLEVARIANT$$CURRENCY:
	subl	$12,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+24,%edx
	call	*%edx
	fistpq	4(%esp)
	fildq	4(%esp)
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$TDATETIME
SYSTEM_assign$OLEVARIANT$$TDATETIME:
	subl	$12,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+20,%edx
	call	*%edx
	fstpl	4(%esp)
	fldl	4(%esp)
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$OLEVARIANT$$TERROR
SYSTEM_assign$OLEVARIANT$$TERROR:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER,%edx
	call	*%edx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$BYTE$$OLEVARIANT
SYSTEM_assign$BYTE$$OLEVARIANT:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%edx,(%esp)
	movzbl	%al,%edx
	movl	(%esp),%eax
	movb	$1,%cl
	movl	U_SYSTEM_VARIANTMANAGER+116,%ebx
	call	*%ebx
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$SHORTINT$$OLEVARIANT
SYSTEM_assign$SHORTINT$$OLEVARIANT:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%edx,(%esp)
	movsbl	%al,%edx
	movl	(%esp),%eax
	movb	$-1,%cl
	movl	U_SYSTEM_VARIANTMANAGER+116,%ebx
	call	*%ebx
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$WORD$$OLEVARIANT
SYSTEM_assign$WORD$$OLEVARIANT:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%edx,(%esp)
	movzwl	%ax,%edx
	movl	(%esp),%eax
	movb	$2,%cl
	movl	U_SYSTEM_VARIANTMANAGER+116,%ebx
	call	*%ebx
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$SMALLINT$$OLEVARIANT
SYSTEM_assign$SMALLINT$$OLEVARIANT:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%edx,(%esp)
	movswl	%ax,%edx
	movl	(%esp),%eax
	movb	$-2,%cl
	movl	U_SYSTEM_VARIANTMANAGER+116,%ebx
	call	*%ebx
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$LONGWORD$$OLEVARIANT
SYSTEM_assign$LONGWORD$$OLEVARIANT:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%edx,(%esp)
	movl	%eax,%edx
	movl	(%esp),%eax
	movb	$4,%cl
	movl	U_SYSTEM_VARIANTMANAGER+116,%ebx
	call	*%ebx
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$LONGINT$$OLEVARIANT
SYSTEM_assign$LONGINT$$OLEVARIANT:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%edx,(%esp)
	movl	%eax,%edx
	movl	(%esp),%eax
	movb	$-4,%cl
	movl	U_SYSTEM_VARIANTMANAGER+116,%ebx
	call	*%ebx
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$QWORD$$OLEVARIANT
SYSTEM_assign$QWORD$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	8(%ebp),%edx
	movl	12(%ebp),%ecx
	movl	%eax,-4(%ebp)
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
	movl	8(%ebp),%edx
	movl	12(%ebp),%ecx
	movl	%eax,-4(%ebp)
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
	subl	$4,%esp
	movl	%edx,(%esp)
	movb	%al,%dl
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+52,%ecx
	call	*%ecx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$WORDBOOL$$OLEVARIANT
SYSTEM_assign$WORDBOOL$$OLEVARIANT:
	subl	$4,%esp
	movl	%edx,(%esp)
	orw	%ax,%ax
	setneb	%dl
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+52,%ecx
	call	*%ecx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$LONGBOOL$$OLEVARIANT
SYSTEM_assign$LONGBOOL$$OLEVARIANT:
	subl	$4,%esp
	movl	%edx,(%esp)
	orl	%eax,%eax
	setneb	%dl
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+52,%ecx
	call	*%ecx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$CHAR$$OLEVARIANT
SYSTEM_assign$CHAR$$OLEVARIANT:
	subl	$260,%esp
	movl	%edx,(%esp)
	andl	$255,%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,4(%esp)
	leal	4(%esp),%edx
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+104,%ecx
	call	*%ecx
	addl	$260,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$WIDECHAR$$OLEVARIANT
SYSTEM_assign$WIDECHAR$$OLEVARIANT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movw	%ax,%bx
	movl	%edx,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12593
	leal	-48(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%edx
	movw	%bx,%ax
	call	fpc_uchar_to_unicodestr
	movl	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+88,%ecx
	call	*%ecx
Lj12593:
	call	FPC_POPADDRSTACK
	leal	-48(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-48(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj12594
	call	FPC_RERAISE
Lj12594:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$SHORTSTRING$$OLEVARIANT
SYSTEM_assign$SHORTSTRING$$OLEVARIANT:
	subl	$4,%esp
	movl	%edx,(%esp)
	movl	%eax,%edx
	movl	(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+104,%ecx
	call	*%ecx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$ANSISTRING$$OLEVARIANT
SYSTEM_assign$ANSISTRING$$OLEVARIANT:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	movl	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+108,%ecx
	call	*%ecx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_assign$WIDESTRING$$OLEVARIANT
SYSTEM_assign$WIDESTRING$$OLEVARIANT:
	subl	$8,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	movl	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+88,%ecx
	call	*%ecx
	addl	$8,%esp
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
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%edx,(%esp)
	movl	%eax,%edx
	movl	(%esp),%eax
	movb	$-4,%cl
	movl	U_SYSTEM_VARIANTMANAGER+116,%ebx
	call	*%ebx
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UNASSIGNED$$VARIANT
SYSTEM_UNASSIGNED$$VARIANT:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	TC_SYSTEM_VARCLEARPROC,%edx
	call	*%edx
	movl	(%esp),%eax
	movw	$0,(%eax)
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_NULL$$VARIANT
SYSTEM_NULL$$VARIANT:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	TC_SYSTEM_VARCLEARPROC,%edx
	call	*%edx
	movl	(%esp),%eax
	movw	$1,(%eax)
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETVARIANTMANAGER$TVARIANTMANAGER
SYSTEM_GETVARIANTMANAGER$TVARIANTMANAGER:
	subl	$12,%esp
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,(%esp)
	movl	(%esp),%edi
	movl	$U_SYSTEM_VARIANTMANAGER,%esi
	cld
	movl	$46,%ecx
	rep
	movsl
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETVARIANTMANAGER$TVARIANTMANAGER
SYSTEM_SETVARIANTMANAGER$TVARIANTMANAGER:
	subl	$8,%esp
	movl	%esi,(%esp)
	movl	%edi,4(%esp)
	movl	%eax,%esi
	movl	$U_SYSTEM_VARIANTMANAGER,%edi
	cld
	movl	$46,%ecx
	rep
	movsl
	movl	(%esp),%esi
	movl	4(%esp),%edi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_INITVARIANTMANAGER:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$CHAR$VARIANT$$LONGINT
SYSTEM_POS$CHAR$VARIANT$$LONGINT:
	subl	$264,%esp
	movl	%ebx,260(%esp)
	movb	%al,%bl
	movl	%edx,(%esp)
	movl	(%esp),%edx
	leal	4(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+28,%ecx
	call	*%ecx
	leal	4(%esp),%edx
	movb	%bl,%al
	call	SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
	movl	260(%esp),%ebx
	addl	$264,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$SHORTSTRING$VARIANT$$LONGINT
SYSTEM_POS$SHORTSTRING$VARIANT$$LONGINT:
	subl	$520,%esp
	movl	%eax,(%esp)
	movl	%edx,4(%esp)
	movl	(%esp),%edx
	leal	8(%esp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	movl	4(%esp),%edx
	leal	264(%esp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+28,%ecx
	call	*%ecx
	leal	264(%esp),%edx
	leal	8(%esp),%eax
	call	SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT
	addl	$520,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$ANSISTRING$VARIANT$$LONGINT
SYSTEM_POS$ANSISTRING$VARIANT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12720
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%edx
	leal	-52(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+32,%ecx
	call	*%ecx
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
	movl	%eax,%ebx
Lj12720:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj12721
	call	FPC_RERAISE
Lj12721:
	movl	%ebx,%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$WIDESTRING$VARIANT$$LONGINT
SYSTEM_POS$WIDESTRING$VARIANT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12735
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	movl	-8(%ebp),%edx
	leal	-52(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+36,%ecx
	call	*%ecx
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT
	movl	%eax,%ebx
Lj12735:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-4(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj12736
	call	FPC_RERAISE
Lj12736:
	movl	%ebx,%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$VARIANT$CHAR$$LONGINT
SYSTEM_POS$VARIANT$CHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,%bl
	movl	-4(%ebp),%eax
	leal	-20(%ebp),%edx
	call	FPC_VARIANT_COPY_OVERWRITE
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12750
	leal	-20(%ebp),%edx
	leal	-312(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+28,%ecx
	call	*%ecx
	leal	-312(%ebp),%eax
	movb	%bl,%dl
	call	SYSTEM_POS$SHORTSTRING$CHAR$$LONGINT
	movl	%eax,%ebx
Lj12750:
	call	FPC_POPADDRSTACK
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-20(%ebp),%eax
	call	FPC_DECREF
	popl	%eax
	testl	%eax,%eax
	je	Lj12751
	call	FPC_RERAISE
Lj12751:
	movl	%ebx,%eax
	movl	-316(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$VARIANT$SHORTSTRING$$LONGINT
SYSTEM_POS$VARIANT$SHORTSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,%ebx
	movl	-4(%ebp),%eax
	leal	-20(%ebp),%edx
	call	FPC_VARIANT_COPY_OVERWRITE
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12765
	leal	-20(%ebp),%edx
	leal	-312(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+28,%ecx
	call	*%ecx
	leal	-312(%ebp),%eax
	movl	%ebx,%edx
	call	SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT
	movl	%eax,%ebx
Lj12765:
	call	FPC_POPADDRSTACK
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-20(%ebp),%eax
	call	FPC_DECREF
	popl	%eax
	testl	%eax,%eax
	je	Lj12766
	call	FPC_RERAISE
Lj12766:
	movl	%ebx,%eax
	movl	-316(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$VARIANT$ANSISTRING$$LONGINT
SYSTEM_POS$VARIANT$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	leal	-24(%ebp),%edx
	call	FPC_VARIANT_COPY_OVERWRITE
	movl	$0,-64(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12780
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-24(%ebp),%edx
	leal	-64(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+32,%ecx
	call	*%ecx
	movl	-64(%ebp),%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
	movl	%eax,%ebx
Lj12780:
	call	FPC_POPADDRSTACK
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-24(%ebp),%eax
	call	FPC_DECREF
	popl	%eax
	testl	%eax,%eax
	je	Lj12781
	call	FPC_RERAISE
Lj12781:
	movl	%ebx,%eax
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$VARIANT$WIDESTRING$$LONGINT
SYSTEM_POS$VARIANT$WIDESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	leal	-24(%ebp),%edx
	call	FPC_VARIANT_COPY_OVERWRITE
	movl	$0,-64(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12795
	leal	-64(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-24(%ebp),%edx
	leal	-64(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+36,%ecx
	call	*%ecx
	movl	-64(%ebp),%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT
	movl	%eax,%ebx
Lj12795:
	call	FPC_POPADDRSTACK
	leal	-64(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-64(%ebp)
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-24(%ebp),%eax
	call	FPC_DECREF
	popl	%eax
	testl	%eax,%eax
	je	Lj12796
	call	FPC_RERAISE
Lj12796:
	movl	%ebx,%eax
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_POS$VARIANT$VARIANT$$LONGINT
SYSTEM_POS$VARIANT$VARIANT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	leal	-24(%ebp),%edx
	call	FPC_VARIANT_COPY_OVERWRITE
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12810
	leal	-64(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-64(%ebp)
	movl	-8(%ebp),%edx
	leal	-64(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+36,%ecx
	call	*%ecx
	movl	-64(%ebp),%ebx
	leal	-68(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-68(%ebp)
	leal	-24(%ebp),%edx
	leal	-68(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+36,%ecx
	call	*%ecx
	movl	-68(%ebp),%eax
	movl	%ebx,%edx
	call	SYSTEM_POS$UNICODESTRING$UNICODESTRING$$LONGINT
	movl	%eax,%ebx
Lj12810:
	call	FPC_POPADDRSTACK
	leal	-68(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-64(%ebp)
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-24(%ebp),%eax
	call	FPC_DECREF
	popl	%eax
	testl	%eax,%eax
	je	Lj12811
	call	FPC_RERAISE
Lj12811:
	movl	%ebx,%eax
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_RTTIARRAYSIZE$POINTER$$LONGINT:
	movl	%eax,%edx
	addl	$2,%edx
	movzbl	1(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	movl	4(%edx),%edx
	imull	%edx,%eax
	ret

.text
	.balign 4,0x90
SYSTEM_RTTIRECORDSIZE$POINTER$$LONGINT:
	movl	%eax,%edx
	addl	$2,%edx
	movzbl	1(%eax),%eax
	addl	%eax,%edx
	movl	(%edx),%eax
	ret

.text
	.balign 4,0x90
SYSTEM_RTTISIZE$POINTER$$LONGINT:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movb	(%ebx),%al
	cmpb	$9,%al
	jb	Lj12852
	subb	$10,%al
	jbe	Lj12853
	decb	%al
	je	Lj12854
	decb	%al
	je	Lj12855
	decb	%al
	je	Lj12856
	decb	%al
	je	Lj12853
	subb	$2,%al
	je	Lj12856
	subb	$5,%al
	je	Lj12853
	subb	$3,%al
	jne	Lj12852
Lj12853:
	movl	$4,%esi
	jmp	Lj12851
Lj12854:
	movl	$16,%esi
	jmp	Lj12851
Lj12855:
	movl	%ebx,%eax
	call	SYSTEM_RTTIARRAYSIZE$POINTER$$LONGINT
	movl	%eax,%esi
	jmp	Lj12851
Lj12856:
	movl	%ebx,%eax
	call	SYSTEM_RTTIRECORDSIZE$POINTER$$LONGINT
	movl	%eax,%esi
	jmp	Lj12851
Lj12852:
	movl	$-1,%esi
Lj12851:
	movl	%esi,%eax
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_RECORDRTTI$POINTER$POINTER$TRTTIPROC:
	subl	$20,%esp
	movl	%ebx,8(%esp)
	movl	%esi,12(%esp)
	movl	%edi,16(%esp)
	movl	%eax,4(%esp)
	movl	%ecx,(%esp)
	movl	%edx,%ecx
	addl	$2,%ecx
	movzbl	1(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,%ebx
	movl	4(%ebx),%eax
	addl	$8,%ebx
	movl	%eax,%esi
	movl	$1,%edi
	cmpl	%edi,%esi
	jl	Lj12882
	decl	%edi
	.balign 4,0x90
Lj12883:
	incl	%edi
	movl	4(%ebx),%eax
	addl	4(%esp),%eax
	movl	(%ebx),%edx
	movl	(%esp),%ecx
	call	*%ecx
	addl	$8,%ebx
	cmpl	%edi,%esi
	jg	Lj12883
Lj12882:
	movl	8(%esp),%ebx
	movl	12(%esp),%esi
	movl	16(%esp),%edi
	addl	$20,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_ARRAYRTTI$POINTER$POINTER$TRTTIPROC:
	subl	$20,%esp
	movl	%ebx,8(%esp)
	movl	%esi,12(%esp)
	movl	%edi,16(%esp)
	movl	%eax,4(%esp)
	movl	%ecx,(%esp)
	movl	%edx,%ecx
	addl	$2,%ecx
	movzbl	1(%edx),%eax
	addl	%eax,%ecx
	movl	%ecx,%ebx
	movl	4(%ebx),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,%edi
	cmpl	%edi,%esi
	jl	Lj12897
	decl	%edi
	.balign 4,0x90
Lj12898:
	incl	%edi
	movl	(%ebx),%eax
	imull	%edi,%eax
	addl	4(%esp),%eax
	movl	8(%ebx),%edx
	movl	(%esp),%ecx
	call	*%ecx
	cmpl	%edi,%esi
	jg	Lj12898
Lj12897:
	movl	8(%esp),%ebx
	movl	12(%esp),%esi
	movl	16(%esp),%edi
	addl	$20,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_initialize
fpc_initialize:
.globl	FPC_INITIALIZE
FPC_INITIALIZE:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movb	(%esi),%al
	cmpb	$9,%al
	jb	Lj12906
	subb	$10,%al
	jbe	Lj12907
	decb	%al
	je	Lj12910
	decb	%al
	je	Lj12908
	decb	%al
	je	Lj12909
	decb	%al
	je	Lj12907
	subb	$2,%al
	je	Lj12909
	subb	$5,%al
	je	Lj12907
	subb	$3,%al
	jne	Lj12906
Lj12907:
	movl	$0,(%ebx)
	jmp	Lj12905
Lj12908:
	movl	$FPC_INITIALIZE,%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12905
Lj12909:
	movl	$FPC_INITIALIZE,%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_RECORDRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12905
Lj12910:
	movl	%ebx,%eax
	call	SYSTEM_VARIANT_INIT$TVARDATA
Lj12906:
Lj12905:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_finalize
fpc_finalize:
.globl	FPC_FINALIZE
FPC_FINALIZE:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movb	(%esi),%al
	cmpb	$9,%al
	jb	Lj12930
	subb	$9,%al
	je	Lj12931
	subb	$2,%al
	je	Lj12937
	decb	%al
	je	Lj12933
	decb	%al
	je	Lj12934
	decb	%al
	je	Lj12935
	subb	$2,%al
	je	Lj12934
	subb	$5,%al
	je	Lj12936
	subb	$3,%al
	je	Lj12932
	jmp	Lj12930
Lj12931:
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj12929
Lj12932:
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj12929
Lj12933:
	movl	$FPC_FINALIZE,%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12929
Lj12934:
	movl	$FPC_FINALIZE,%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_RECORDRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12929
Lj12935:
	movl	%ebx,%eax
	call	FPC_INTF_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj12929
Lj12936:
	movl	%ebx,%eax
	movl	%esi,%edx
	call	FPC_DYNARRAY_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj12929
Lj12937:
	movl	%ebx,%eax
	call	SYSTEM_VARIANT_CLEAR$TVARDATA
Lj12930:
Lj12929:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_addref
fpc_addref:
.globl	FPC_ADDREF
FPC_ADDREF:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movb	(%esi),%al
	cmpb	$9,%al
	jb	Lj12973
	subb	$9,%al
	je	Lj12974
	subb	$2,%al
	je	Lj12980
	decb	%al
	je	Lj12976
	decb	%al
	je	Lj12977
	decb	%al
	je	Lj12979
	subb	$2,%al
	je	Lj12977
	subb	$5,%al
	je	Lj12978
	subb	$3,%al
	je	Lj12975
	jmp	Lj12973
Lj12974:
	movl	(%ebx),%eax
	call	FPC_ANSISTR_INCR_REF
	jmp	Lj12972
Lj12975:
	movl	(%ebx),%eax
	call	FPC_UNICODESTR_INCR_REF
	jmp	Lj12972
Lj12976:
	movl	$FPC_ADDREF,%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12972
Lj12977:
	movl	$FPC_ADDREF,%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_RECORDRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12972
Lj12978:
	movl	(%ebx),%eax
	call	FPC_DYNARRAY_INCR_REF
	jmp	Lj12972
Lj12979:
	movl	(%ebx),%eax
	call	FPC_INTF_INCR_REF
	jmp	Lj12972
Lj12980:
	movl	%ebx,%eax
	call	SYSTEM_VARIANT_ADDREF$TVARDATA
Lj12973:
Lj12972:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_decref
fpc_decref:
.globl	FPC_DECREF
FPC_DECREF:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movb	(%esi),%al
	cmpb	$9,%al
	jb	Lj13006
	subb	$9,%al
	je	Lj13007
	subb	$2,%al
	je	Lj13013
	decb	%al
	je	Lj13009
	decb	%al
	je	Lj13010
	decb	%al
	je	Lj13012
	subb	$2,%al
	je	Lj13010
	subb	$5,%al
	je	Lj13011
	subb	$3,%al
	je	Lj13008
	jmp	Lj13006
Lj13007:
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	jmp	Lj13005
Lj13008:
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	jmp	Lj13005
Lj13009:
	movl	$FPC_DECREF,%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj13005
Lj13010:
	movl	$FPC_DECREF,%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_RECORDRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj13005
Lj13011:
	movl	%ebx,%eax
	movl	%esi,%edx
	call	FPC_DYNARRAY_DECR_REF
	jmp	Lj13005
Lj13012:
	movl	%ebx,%eax
	call	FPC_INTF_DECR_REF
	jmp	Lj13005
Lj13013:
	movl	%ebx,%eax
	call	SYSTEM_VARIANT_CLEAR$TVARDATA
Lj13006:
Lj13005:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_copy
fpc_copy:
.globl	FPC_COPY
FPC_COPY:
	subl	$44,%esp
	movl	%ebx,32(%esp)
	movl	%esi,36(%esp)
	movl	%edi,40(%esp)
	movl	%eax,20(%esp)
	movl	%edx,24(%esp)
	movl	%ecx,16(%esp)
	movl	$4,28(%esp)
	movl	16(%esp),%eax
	movb	(%eax),%dl
	cmpb	$9,%dl
	jb	Lj13043
	subb	$9,%dl
	je	Lj13044
	subb	$2,%dl
	je	Lj13050
	decb	%dl
	je	Lj13046
	decb	%dl
	je	Lj13047
	decb	%dl
	je	Lj13049
	subb	$2,%dl
	je	Lj13047
	subb	$5,%dl
	je	Lj13048
	subb	$3,%dl
	je	Lj13045
	jmp	Lj13043
Lj13044:
	movl	20(%esp),%edx
	movl	(%edx),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	24(%esp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	20(%esp),%eax
	movl	(%eax),%edx
	movl	24(%esp),%eax
	movl	%edx,(%eax)
	jmp	Lj13042
Lj13045:
	movl	20(%esp),%eax
	movl	(%eax),%edx
	movl	24(%esp),%eax
	call	FPC_UNICODESTR_ASSIGN
	jmp	Lj13042
Lj13046:
	movl	16(%esp),%eax
	addl	$2,%eax
	movl	16(%esp),%ecx
	movzbl	1(%ecx),%edx
	addl	%edx,%eax
	movl	%eax,%ebx
	movl	4(%ebx),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,12(%esp)
	cmpl	12(%esp),%esi
	jl	Lj13068
	decl	12(%esp)
	.balign 4,0x90
Lj13069:
	incl	12(%esp)
	movl	(%ebx),%eax
	imull	12(%esp),%eax
	addl	24(%esp),%eax
	movl	%eax,%edx
	movl	(%ebx),%eax
	imull	12(%esp),%eax
	addl	20(%esp),%eax
	movl	8(%ebx),%ecx
	call	FPC_COPY
	cmpl	12(%esp),%esi
	jg	Lj13069
Lj13068:
	movl	(%ebx),%edx
	movl	4(%ebx),%eax
	imull	%eax,%edx
	movl	%edx,28(%esp)
	jmp	Lj13042
Lj13047:
	movl	16(%esp),%eax
	addl	$2,%eax
	movl	16(%esp),%edx
	movzbl	1(%edx),%ecx
	addl	%ecx,%eax
	movl	%eax,4(%esp)
	movl	(%eax),%eax
	movl	%eax,28(%esp)
	movl	4(%esp),%edx
	movl	4(%edx),%eax
	addl	$8,4(%esp)
	movl	$0,8(%esp)
	movl	%eax,(%esp)
	movl	$1,12(%esp)
	movl	(%esp),%eax
	cmpl	12(%esp),%eax
	jl	Lj13091
	decl	12(%esp)
	.balign 4,0x90
Lj13092:
	incl	12(%esp)
	movl	4(%esp),%eax
	movl	(%eax),%ebx
	movl	4(%esp),%eax
	movl	4(%eax),%esi
	addl	$8,4(%esp)
	cmpl	8(%esp),%esi
	jng	Lj13098
	movl	8(%esp),%eax
	addl	24(%esp),%eax
	movl	%eax,%edx
	movl	8(%esp),%eax
	addl	20(%esp),%eax
	movl	%esi,%ecx
	subl	8(%esp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj13098:
	movl	%esi,%eax
	addl	24(%esp),%eax
	movl	%eax,%edx
	movl	%esi,%eax
	addl	20(%esp),%eax
	movl	%ebx,%ecx
	call	FPC_COPY
	movl	%eax,%edi
	addl	%esi,%eax
	movl	%eax,8(%esp)
	movl	(%esp),%eax
	cmpl	12(%esp),%eax
	jg	Lj13092
Lj13091:
	movl	28(%esp),%eax
	cmpl	8(%esp),%eax
	jng	Lj13042
	movl	8(%esp),%eax
	addl	24(%esp),%eax
	movl	%eax,%edx
	movl	8(%esp),%eax
	addl	20(%esp),%eax
	movl	28(%esp),%ecx
	subl	8(%esp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj13042
Lj13048:
	movl	20(%esp),%edx
	movl	(%edx),%eax
	call	FPC_DYNARRAY_INCR_REF
	movl	24(%esp),%eax
	movl	16(%esp),%edx
	call	FPC_DYNARRAY_DECR_REF
	movl	20(%esp),%eax
	movl	(%eax),%edx
	movl	24(%esp),%eax
	movl	%edx,(%eax)
	jmp	Lj13042
Lj13049:
	movl	20(%esp),%edx
	movl	(%edx),%eax
	call	FPC_INTF_INCR_REF
	movl	24(%esp),%eax
	call	FPC_INTF_DECR_REF
	movl	20(%esp),%eax
	movl	(%eax),%edx
	movl	24(%esp),%eax
	movl	%edx,(%eax)
	jmp	Lj13042
Lj13050:
	movl	20(%esp),%edx
	movl	24(%esp),%eax
	movl	TC_SYSTEM_VARCOPYPROC,%ecx
	call	*%ecx
	movl	$16,28(%esp)
Lj13043:
Lj13042:
	movl	28(%esp),%eax
	movl	32(%esp),%ebx
	movl	36(%esp),%esi
	movl	40(%esp),%edi
	addl	$44,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_copy_proc
fpc_copy_proc:
	call	FPC_COPY
	ret

.text
	.balign 4,0x90
.globl	fpc_initialize_array
fpc_initialize_array:
.globl	FPC_INITIALIZE_ARRAY
FPC_INITIALIZE_ARRAY:
	subl	$20,%esp
	movl	%ebx,8(%esp)
	movl	%esi,12(%esp)
	movl	%edi,16(%esp)
	movl	%eax,4(%esp)
	movl	%ecx,%ebx
	movl	%edx,(%esp)
	movl	(%esp),%eax
	call	SYSTEM_RTTISIZE$POINTER$$LONGINT
	movl	%eax,%esi
	testl	%esi,%esi
	jng	Lj13158
	movl	%ebx,%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,%edi
	cmpl	%edi,%ebx
	jl	Lj13160
	decl	%edi
	.balign 4,0x90
Lj13161:
	incl	%edi
	movl	%edi,%eax
	imull	%esi,%eax
	addl	4(%esp),%eax
	movl	(%esp),%edx
	call	FPC_INITIALIZE
	cmpl	%edi,%ebx
	jg	Lj13161
Lj13160:
Lj13158:
	movl	8(%esp),%ebx
	movl	12(%esp),%esi
	movl	16(%esp),%edi
	addl	$20,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_finalize_array
fpc_finalize_array:
.globl	FPC_FINALIZE_ARRAY
FPC_FINALIZE_ARRAY:
	subl	$20,%esp
	movl	%ebx,8(%esp)
	movl	%esi,12(%esp)
	movl	%edi,16(%esp)
	movl	%eax,4(%esp)
	movl	%ecx,%ebx
	movl	%edx,(%esp)
	movl	(%esp),%eax
	call	SYSTEM_RTTISIZE$POINTER$$LONGINT
	movl	%eax,%esi
	testl	%esi,%esi
	jng	Lj13173
	movl	%ebx,%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,%edi
	cmpl	%edi,%ebx
	jl	Lj13175
	decl	%edi
	.balign 4,0x90
Lj13176:
	incl	%edi
	movl	%edi,%eax
	imull	%esi,%eax
	addl	4(%esp),%eax
	movl	(%esp),%edx
	call	FPC_FINALIZE
	cmpl	%edi,%ebx
	jg	Lj13176
Lj13175:
Lj13173:
	movl	8(%esp),%ebx
	movl	12(%esp),%esi
	movl	16(%esp),%edi
	addl	$20,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_addref_array
fpc_addref_array:
.globl	FPC_ADDREF_ARRAY
FPC_ADDREF_ARRAY:
	subl	$20,%esp
	movl	%ebx,8(%esp)
	movl	%esi,12(%esp)
	movl	%edi,16(%esp)
	movl	%eax,4(%esp)
	movl	%ecx,%ebx
	movl	%edx,(%esp)
	movl	(%esp),%eax
	call	SYSTEM_RTTISIZE$POINTER$$LONGINT
	movl	%eax,%esi
	testl	%esi,%esi
	jng	Lj13188
	movl	%ebx,%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,%edi
	cmpl	%edi,%ebx
	jl	Lj13190
	decl	%edi
	.balign 4,0x90
Lj13191:
	incl	%edi
	movl	%edi,%eax
	imull	%esi,%eax
	addl	4(%esp),%eax
	movl	(%esp),%edx
	call	FPC_ADDREF
	cmpl	%edi,%ebx
	jg	Lj13191
Lj13190:
Lj13188:
	movl	8(%esp),%ebx
	movl	12(%esp),%esi
	movl	16(%esp),%edi
	addl	$20,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_decref_array
fpc_decref_array:
.globl	FPC_DECREF_ARRAY
FPC_DECREF_ARRAY:
	subl	$20,%esp
	movl	%ebx,8(%esp)
	movl	%esi,12(%esp)
	movl	%edi,16(%esp)
	movl	%eax,4(%esp)
	movl	%ecx,%ebx
	movl	%edx,(%esp)
	movl	(%esp),%eax
	call	SYSTEM_RTTISIZE$POINTER$$LONGINT
	movl	%eax,%esi
	testl	%esi,%esi
	jng	Lj13203
	movl	%ebx,%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,%edi
	cmpl	%edi,%ebx
	jl	Lj13205
	decl	%edi
	.balign 4,0x90
Lj13206:
	incl	%edi
	movl	%edi,%eax
	imull	%esi,%eax
	addl	4(%esp),%eax
	movl	(%esp),%edx
	call	FPC_DECREF
	cmpl	%edi,%ebx
	jg	Lj13206
Lj13205:
Lj13203:
	movl	8(%esp),%ebx
	movl	12(%esp),%esi
	movl	16(%esp),%edi
	addl	$20,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_SGENRAND_MT19937$LONGINT:
	movl	%eax,U_SYSTEM_MT
	movl	$1,%edx
	decl	%edx
	.balign 4,0x90
Lj13217:
	incl	%edx
	movl	%edx,%eax
	decl	%eax
	movl	U_SYSTEM_MT(,%eax,4),%ecx
	movl	%ecx,%eax
	shrl	$30,%eax
	xorl	%ecx,%eax
	imull	$1812433253,%eax
	addl	%edx,%eax
	movl	%eax,U_SYSTEM_MT(,%edx,4)
	cmpl	$623,%edx
	jl	Lj13217
	movl	$624,TC_SYSTEM_MTI
	ret

.text
	.balign 4,0x90
SYSTEM_GENRAND_MT19937$$LONGINT:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	U_SYSTEM_RANDSEED,%eax
	cmpl	TC_SYSTEM_OLDRANDSEED,%eax
	je	Lj13231
	movl	$625,TC_SYSTEM_MTI
Lj13231:
	movl	TC_SYSTEM_MTI,%eax
	cmpl	$624,%eax
	jnge	Lj13235
	movl	TC_SYSTEM_MTI,%eax
	cmpl	$625,%eax
	jne	Lj13237
	movl	U_SYSTEM_RANDSEED,%eax
	call	SYSTEM_SGENRAND_MT19937$LONGINT
	movl	U_SYSTEM_RANDSEED,%eax
	notl	%eax
	movl	%eax,U_SYSTEM_RANDSEED
	movl	%eax,TC_SYSTEM_OLDRANDSEED
Lj13237:
	movl	$0,%edx
	decl	%edx
	.balign 4,0x90
Lj13246:
	incl	%edx
	movl	%edx,%eax
	incl	%eax
	movl	U_SYSTEM_MT(,%eax,4),%eax
	andl	$2147483647,%eax
	movl	U_SYSTEM_MT(,%edx,4),%ebx
	andl	$-2147483648,%ebx
	orl	%ebx,%eax
	movl	%eax,%ecx
	movl	%edx,%eax
	addl	$397,%eax
	movl	%ecx,%ebx
	shrl	$1,%ebx
	movl	U_SYSTEM_MT(,%eax,4),%esi
	xorl	%ebx,%esi
	movl	%ecx,%eax
	andl	$1,%eax
	movl	TC_SYSTEM_GENRAND_MT19937$$LONGINT_MAG01(,%eax,4),%eax
	xorl	%eax,%esi
	movl	%esi,U_SYSTEM_MT(,%edx,4)
	cmpl	$226,%edx
	jl	Lj13246
	movl	$227,%edx
	decl	%edx
	.balign 4,0x90
Lj13253:
	incl	%edx
	movl	%edx,%eax
	incl	%eax
	movl	U_SYSTEM_MT(,%eax,4),%eax
	andl	$2147483647,%eax
	movl	U_SYSTEM_MT(,%edx,4),%ebx
	andl	$-2147483648,%ebx
	orl	%ebx,%eax
	movl	%eax,%ecx
	movl	%edx,%eax
	addl	$-227,%eax
	movl	%ecx,%ebx
	shrl	$1,%ebx
	movl	U_SYSTEM_MT(,%eax,4),%esi
	xorl	%ebx,%esi
	movl	%ecx,%eax
	andl	$1,%eax
	movl	TC_SYSTEM_GENRAND_MT19937$$LONGINT_MAG01(,%eax,4),%eax
	xorl	%eax,%esi
	movl	%esi,U_SYSTEM_MT(,%edx,4)
	cmpl	$622,%edx
	jl	Lj13253
	movl	U_SYSTEM_MT+2492,%eax
	andl	$-2147483648,%eax
	movl	U_SYSTEM_MT,%edx
	andl	$2147483647,%edx
	orl	%edx,%eax
	movl	%eax,%ecx
	shrl	$1,%eax
	movl	U_SYSTEM_MT+1584,%edx
	xorl	%edx,%eax
	andl	$1,%ecx
	movl	TC_SYSTEM_GENRAND_MT19937$$LONGINT_MAG01(,%ecx,4),%edx
	xorl	%edx,%eax
	movl	%eax,U_SYSTEM_MT+2492
	movl	$0,TC_SYSTEM_MTI
Lj13235:
	movl	TC_SYSTEM_MTI,%eax
	movl	U_SYSTEM_MT(,%eax,4),%edx
	incl	TC_SYSTEM_MTI
	movl	%edx,%eax
	shrl	$11,%eax
	xorl	%edx,%eax
	movl	%eax,%edx
	shll	$7,%edx
	andl	$-1658038656,%edx
	xorl	%eax,%edx
	movl	%edx,%ecx
	shll	$15,%ecx
	andl	$-272236544,%ecx
	xorl	%edx,%ecx
	movl	%ecx,%eax
	shrl	$18,%eax
	xorl	%ecx,%eax
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RANDOM$LONGINT$$LONGINT
SYSTEM_RANDOM$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	%eax,%ebx
	testl	%ebx,%ebx
	jnl	Lj13279
	incl	%ebx
Lj13279:
	call	SYSTEM_GENRAND_MT19937$$LONGINT
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	movl	%ebx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%ebx
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,%ecx
	movl	%edx,%eax
	movl	$0,%ecx
	movl	-4(%ebp),%ebx
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
	movl	%edi,-8(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%ebx
	call	SYSTEM_GENRAND_MT19937$$LONGINT
	movl	%eax,%esi
	movl	$0,%edi
	call	SYSTEM_GENRAND_MT19937$$LONGINT
	movl	$0,%edx
	movl	$0,%edx
	orl	%edx,%esi
	orl	%eax,%edi
	andl	$2147483647,%edi
	testl	%ebx,%ebx
	jne	Lj13292
	cmpl	$0,-4(%ebp)
	je	Lj13293
Lj13292:
	pushl	%ebx
	pushl	-4(%ebp)
	pushl	%edi
	pushl	%esi
	call	fpc_mod_int64
	movl	%eax,%esi
	movl	%edx,%edi
	jmp	Lj13300
Lj13293:
	movl	$0,%esi
	movl	$0,%edi
Lj13300:
	movl	%edi,%edx
	movl	%esi,%eax
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_RANDOM$$EXTENDED
SYSTEM_RANDOM$$EXTENDED:
	subl	$24,%esp
	call	SYSTEM_GENRAND_MT19937$$LONGINT
	movl	%eax,12(%esp)
	movl	%eax,16(%esp)
	movl	$0,20(%esp)
	fildq	16(%esp)
	fldt	_$SYSTEM$_Ld28
	fmulp	%st,%st(1)
	fstpt	(%esp)
	fldt	(%esp)
	addl	$24,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_PTR$LONGINT$LONGINT$$FARPOINTER
SYSTEM_PTR$LONGINT$LONGINT$$FARPOINTER:
	shll	$4,%eax
	addl	%edx,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_CSEG$$WORD
SYSTEM_CSEG$$WORD:
	movw	$0,%ax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DSEG$$WORD
SYSTEM_DSEG$$WORD:
	movw	$0,%ax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SSEG$$WORD
SYSTEM_SSEG$$WORD:
	movw	$0,%ax
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
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13351
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13352
Lj13351:
	movl	$U_SYSTEM_INOUTRES+4,%edx
Lj13352:
	movzwl	(%edx),%eax
	testl	%eax,%eax
	je	Lj13354
	movzwl	(%edx),%eax
	movw	$0,(%edx)
	movl	%ebp,%edx
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj13354:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_IORESULT$$WORD
SYSTEM_IORESULT$$WORD:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13367
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13368
Lj13367:
	movl	$U_SYSTEM_INOUTRES+4,%edx
Lj13368:
	movw	(%edx),%ax
	movw	$0,(%edx)
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETTHREADID$$LONGWORD
SYSTEM_GETTHREADID$$LONGWORD:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13377
	movl	U_SYSTEM_THREADID,%eax
	call	*%edx
	jmp	Lj13378
Lj13377:
	movl	$U_SYSTEM_THREADID+4,%eax
Lj13378:
	movl	(%eax),%eax
	ret

.text
	.balign 4,0x90
.globl	fpc_safecallcheck
fpc_safecallcheck:
.globl	FPC_SAFECALLCHECK
FPC_SAFECALLCHECK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	%eax,%ebx
	testl	%ebx,%ebx
	jnl	Lj13382
	cmpl	$0,TC_SYSTEM_SAFECALLERRORPROC
	je	Lj13384
	movl	%ebp,%edx
	movl	%ebx,%eax
	movl	TC_SYSTEM_SAFECALLERRORPROC,%ecx
	call	*%ecx
Lj13384:
	movl	%ebp,%edx
	movl	$229,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj13382:
	movl	%ebx,%eax
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FPC_STACKCHECK$LONGWORD
SYSTEM_FPC_STACKCHECK$LONGWORD:
.globl	FPC_STACKCHECK
FPC_STACKCHECK:
	subl	$4,%esp
	movl	%ebx,(%esp)
	cmpb	$0,TC_SYSTEM_STACKERROR
	jne	Lj13395
	call	SYSTEM_SPTR$$POINTER
	movl	%eax,%ebx
	subl	$16384,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13403
	movl	U_SYSTEM_STACKBOTTOM,%eax
	call	*%edx
	jmp	Lj13404
Lj13403:
	movl	$U_SYSTEM_STACKBOTTOM+4,%eax
Lj13404:
	movl	(%eax),%eax
	cmpl	%ebx,%eax
	jnae	Lj13402
	movb	$1,TC_SYSTEM_STACKERROR
	movl	$202,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj13402:
Lj13395:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_initializeunits
fpc_initializeunits:
.globl	FPC_INITIALIZEUNITS
FPC_INITIALIZEUNITS:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	call	SYSTEM_FPC_CPUINIT
	movl	INITFINAL,%ebx
	movl	$1,%esi
	cmpl	%esi,%ebx
	jl	Lj13412
	decl	%esi
	.balign 4,0x90
Lj13413:
	incl	%esi
	cmpl	$0,INITFINAL(,%esi,8)
	je	Lj13415
	movl	INITFINAL(,%esi,8),%eax
	call	*%eax
Lj13415:
	movl	%esi,INITFINAL+4
	cmpl	%esi,%ebx
	jg	Lj13413
Lj13412:
	cmpl	$0,TC_SYSTEM_INITPROC
	je	Lj13419
	movl	TC_SYSTEM_INITPROC,%eax
	call	*%eax
Lj13419:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FPC_LIBINITIALIZEUNITS
SYSTEM_FPC_LIBINITIALIZEUNITS:
.globl	FPC_LIBINITIALIZEUNITS
FPC_LIBINITIALIZEUNITS:
	movb	$1,operatingsystem_islibrary
	movb	$1,TC_SYSTEM_MODULEISLIB
	call	FPC_INITIALIZEUNITS
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FINALIZEUNITS
SYSTEM_FINALIZEUNITS:
.globl	FPC_FINALIZEUNITS
FPC_FINALIZEUNITS:
	jmp	Lj13429
	.balign 4,0x90
Lj13428:
	decl	INITFINAL+4
	movl	INITFINAL+4,%eax
	incl	%eax
	cmpl	$0,INITFINAL+4(,%eax,8)
	je	Lj13432
	movl	INITFINAL+4,%eax
	incl	%eax
	movl	INITFINAL+4(,%eax,8),%eax
	call	*%eax
Lj13432:
Lj13429:
	movl	INITFINAL+4,%eax
	testl	%eax,%eax
	jg	Lj13428
Lj13430:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSFLUSHSTDIO
SYSTEM_SYSFLUSHSTDIO:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13437
	movl	U_SYSTEM_OUTPUT,%eax
	call	*%edx
	jmp	Lj13438
Lj13437:
	movl	$U_SYSTEM_OUTPUT+4,%eax
Lj13438:
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jne	Lj13436
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13441
	movl	U_SYSTEM_OUTPUT,%eax
	call	*%edx
	jmp	Lj13442
Lj13441:
	movl	$U_SYSTEM_OUTPUT+4,%eax
Lj13442:
	call	SYSTEM_FLUSH$TEXT
Lj13436:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13445
	movl	U_SYSTEM_ERROUTPUT,%eax
	call	*%edx
	jmp	Lj13446
Lj13445:
	movl	$U_SYSTEM_ERROUTPUT+4,%eax
Lj13446:
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jne	Lj13444
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13449
	movl	U_SYSTEM_ERROUTPUT,%eax
	call	*%edx
	jmp	Lj13450
Lj13449:
	movl	$U_SYSTEM_ERROUTPUT+4,%eax
Lj13450:
	call	SYSTEM_FLUSH$TEXT
Lj13444:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13453
	movl	U_SYSTEM_STDOUT,%eax
	call	*%edx
	jmp	Lj13454
Lj13453:
	movl	$U_SYSTEM_STDOUT+4,%eax
Lj13454:
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jne	Lj13452
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13457
	movl	U_SYSTEM_STDOUT,%eax
	call	*%edx
	jmp	Lj13458
Lj13457:
	movl	$U_SYSTEM_STDOUT+4,%eax
Lj13458:
	call	SYSTEM_FLUSH$TEXT
Lj13452:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13461
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj13462
Lj13461:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj13462:
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jne	Lj13460
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13465
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj13466
Lj13465:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj13466:
	call	SYSTEM_FLUSH$TEXT
Lj13460:
	ret

.text
	.balign 4,0x90
SYSTEM_INTERNALEXIT:
	subl	$264,%esp
	movl	%ebx,256(%esp)
	movl	%esi,260(%esp)
	jmp	Lj13470
	.balign 4,0x90
Lj13469:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13474
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj13475
Lj13474:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj13475:
	movw	$0,(%eax)
	movl	TC_SYSTEM_EXITPROC,%ebx
	movl	$0,TC_SYSTEM_EXITPROC
	movl	%ebx,%eax
	call	*%eax
Lj13470:
	movl	TC_SYSTEM_EXITPROC,%eax
	testl	%eax,%eax
	jne	Lj13469
Lj13471:
	call	SYSTEM_FINALIZEUNITS
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13482
	movl	U_SYSTEM_STDOUT,%eax
	call	*%edx
	jmp	Lj13483
Lj13482:
	movl	$U_SYSTEM_STDOUT+4,%eax
Lj13483:
	movl	%eax,%ebx
	movl	TC_SYSTEM_ERRORADDR,%eax
	testl	%eax,%eax
	je	Lj13485
	movl	%ebx,%esi
	movl	%esi,%edx
	movl	$_$SYSTEM$_Ld29,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movzwl	TC_SYSTEM_ERRORCODE,%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	fpc_write_text_uint
	movl	%esi,%edx
	movl	$_$SYSTEM$_Ld30,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	%esp,%edx
	movl	TC_SYSTEM_ERRORADDR,%eax
	call	SYSTEM_HEXSTR$POINTER$$SHORTSTRING
	movl	%esp,%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	%esi,%eax
	call	fpc_writeln_end
	movl	%ebx,%esi
	movl	%esp,%edx
	movl	TC_SYSTEM_ERRORADDR,%eax
	movl	TC_SYSTEM_BACKTRACESTRFUNC,%ecx
	call	*%ecx
	movl	%esp,%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	%esi,%eax
	call	fpc_writeln_end
	movl	%ebx,%eax
	movl	TC_SYSTEM_ERRORBASE,%edx
	call	SYSTEM_DUMP_STACK$TEXT$POINTER
	movl	%ebx,%edx
	movl	$_$SYSTEM$_Ld1,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	%ebx,%eax
	call	fpc_writeln_end
Lj13485:
	call	SYSTEM_SYSFLUSHSTDIO
	cmpl	$0,U_SYSTEM_ARGV
	je	Lj13547
	movl	U_SYSTEM_ARGC,%ebx
	decl	%ebx
	movl	$0,%esi
	cmpl	%esi,%ebx
	jl	Lj13549
	decl	%esi
	.balign 4,0x90
Lj13550:
	incl	%esi
	movl	U_SYSTEM_ARGV,%eax
	cmpl	$0,(%eax,%esi,4)
	je	Lj13552
	movl	U_SYSTEM_ARGV,%eax
	movl	(%eax,%esi,4),%eax
	call	SYSTEM_SYSFREEMEM$POINTER$$LONGWORD
	movl	U_SYSTEM_ARGV,%eax
	movl	$0,(%eax,%esi,4)
Lj13552:
	cmpl	%esi,%ebx
	jg	Lj13550
Lj13549:
	movl	U_SYSTEM_ARGV,%eax
	call	SYSTEM_SYSFREEMEM$POINTER$$LONGWORD
	movl	$0,U_SYSTEM_ARGV
Lj13547:
	call	SYSTEM_FINALIZEHEAP
	movl	256(%esp),%ebx
	movl	260(%esp),%esi
	addl	$264,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DO_EXIT
SYSTEM_DO_EXIT:
.globl	FPC_DO_EXIT
FPC_DO_EXIT:
	call	SYSTEM_INTERNALEXIT
	call	SYSTEM_SYSTEM_EXIT
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LIB_EXIT
SYSTEM_LIB_EXIT:
.globl	FPC_LIB_EXIT
FPC_LIB_EXIT:
	call	SYSTEM_INTERNALEXIT
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_HALT$LONGINT
SYSTEM_HALT$LONGINT:
	movl	%eax,operatingsystem_result
	call	SYSTEM_DO_EXIT
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSBACKTRACESTR$POINTER$$SHORTSTRING
SYSTEM_SYSBACKTRACESTR$POINTER$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$260,%esp
	movl	%ebx,-260(%ebp)
	movl	%edx,%ebx
	leal	-256(%ebp),%edx
	call	SYSTEM_HEXSTR$POINTER$$SHORTSTRING
	leal	-256(%ebp),%eax
	pushl	%eax
	movl	%ebx,%eax
	movl	$_$SYSTEM$_Ld31,%ecx
	movl	$255,%edx
	call	fpc_shortstr_concat
	movl	-260(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER
SYSTEM_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER:
.globl	FPC_BREAK_ERROR
FPC_BREAK_ERROR:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,%esi
	movl	%edx,%ebx
	movl	%ecx,(%esp)
	movl	TC_SYSTEM_ERRORPROC,%eax
	testl	%eax,%eax
	je	Lj13586
	movl	(%esp),%ecx
	movl	%ebx,%edx
	movl	%esi,%eax
	movl	TC_SYSTEM_ERRORPROC,%edi
	call	*%edi
Lj13586:
	movw	%si,TC_SYSTEM_ERRORCODE
	movl	%ebx,TC_SYSTEM_ERRORADDR
	movl	(%esp),%esi
	movl	%esi,TC_SYSTEM_ERRORBASE
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13601
	movl	U_SYSTEM_EXCEPTADDRSTACK,%eax
	call	*%edx
	jmp	Lj13602
Lj13601:
	movl	$U_SYSTEM_EXCEPTADDRSTACK+4,%eax
Lj13602:
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj13600
	movl	%esi,%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	FPC_RAISEEXCEPTION
Lj13600:
	movzwl	TC_SYSTEM_ERRORCODE,%eax
	call	SYSTEM_HALT$LONGINT
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%esi,%eax
	call	SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER
	movl	%eax,%edi
	movl	%esi,%eax
	call	SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
	movl	%eax,%edx
	movl	%ebx,%eax
	movl	%edi,%ecx
	call	SYSTEM_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_HANDLEERRORADDRFRAMEIND$LONGINT$POINTER$POINTER:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%ebx
	movl	%ecx,%esi
	movl	%esi,%eax
	call	SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER
	movl	%eax,%edi
	movl	%esi,%eax
	call	SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
	movl	%eax,%edx
	movl	%ebx,%eax
	movl	%edi,%ecx
	call	SYSTEM_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_HANDLEERROR$LONGINT
SYSTEM_HANDLEERROR$LONGINT:
.globl	FPC_HANDLEERROR
FPC_HANDLEERROR:
	pushl	%ebp
	movl	%esp,%ebp
	movl	%ebp,%edx
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
	movw	%ax,TC_SYSTEM_ERRORCODE
	movl	%ebp,%eax
	call	SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
	movl	%eax,TC_SYSTEM_ERRORADDR
	movl	%ebp,%eax
	call	SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER
	movl	%eax,TC_SYSTEM_ERRORBASE
	movzwl	TC_SYSTEM_ERRORCODE,%eax
	call	SYSTEM_HALT$LONGINT
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RUNERROR
SYSTEM_RUNERROR:
	movw	$0,%ax
	call	SYSTEM_RUNERROR$WORD
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_HALT
SYSTEM_HALT:
	movl	$0,%eax
	call	SYSTEM_HALT$LONGINT
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ERROR$TRUNTIMEERROR
SYSTEM_ERROR$TRUNTIMEERROR:
	movzbw	TC_SYSTEM_RUNTIMEERROREXITCODES(%eax),%ax
	call	SYSTEM_RUNERROR$WORD
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
	jne	Lj13665
	movl	-8(%ebp),%eax
	decl	%eax
	movl	%eax,-16(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_ISDEVICE$LONGINT$$BOOLEAN
	movb	%al,-17(%ebp)
	jmp	Lj13678
	.balign 4,0x90
Lj13677:
	movl	-8(%ebp),%eax
	call	SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER
	movl	%eax,-24(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj13679
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
	je	Lj13679
	incl	-12(%ebp)
	movzwl	TC_SYSTEM_MAX_FRAME_DUMP,%eax
	cmpl	-12(%ebp),%eax
	jnl	Lj13706
	cmpb	$0,-17(%ebp)
	jne	Lj13679
Lj13706:
	movl	-12(%ebp),%eax
	cmpl	$256,%eax
	jg	Lj13679
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj13678:
	movl	-8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj13677
Lj13679:
Lj13665:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj13667
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
Lj13667:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DUMPEXCEPTIONBACKTRACE$TEXT
SYSTEM_DUMPEXCEPTIONBACKTRACE$TEXT:
	subl	$272,%esp
	movl	%ebx,260(%esp)
	movl	%esi,264(%esp)
	movl	%edi,268(%esp)
	movl	%eax,256(%esp)
	call	SYSTEM_RAISELIST$$PEXCEPTOBJECT
	testl	%eax,%eax
	je	Lj13712
	call	SYSTEM_RAISELIST$$PEXCEPTOBJECT
	movl	4(%eax),%eax
	movl	%esp,%edx
	movl	TC_SYSTEM_BACKTRACESTRFUNC,%ecx
	call	*%ecx
	movl	%esp,%ecx
	movl	256(%esp),%edx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	256(%esp),%eax
	call	fpc_writeln_end
	call	SYSTEM_RAISELIST$$PEXCEPTOBJECT
	movl	16(%eax),%esi
	call	SYSTEM_RAISELIST$$PEXCEPTOBJECT
	movl	20(%eax),%ebx
	decl	%esi
	movl	%esi,%edi
	movl	$0,%esi
	cmpl	%esi,%edi
	jl	Lj13733
	decl	%esi
	.balign 4,0x90
Lj13734:
	incl	%esi
	movl	(%ebx,%esi,4),%eax
	movl	%esp,%edx
	movl	TC_SYSTEM_BACKTRACESTRFUNC,%ecx
	call	*%ecx
	movl	%esp,%ecx
	movl	256(%esp),%edx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	256(%esp),%eax
	call	fpc_writeln_end
	cmpl	%esi,%edi
	jg	Lj13734
Lj13733:
Lj13712:
	movl	260(%esp),%ebx
	movl	264(%esp),%esi
	movl	268(%esp),%edi
	addl	$272,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_DOEXITPROC:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	TC_SYSTEM_EXITPROCLIST,%eax
	movl	(%eax),%edx
	movl	%edx,TC_SYSTEM_EXITPROCLIST
	movl	4(%eax),%edx
	movl	%edx,TC_SYSTEM_EXITPROC
	movl	8(%eax),%ebx
	call	fpc_freemem
	call	*%ebx
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ADDEXITPROC$TPROCEDURE
SYSTEM_ADDEXITPROC$TPROCEDURE:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	$12,%eax
	call	fpc_getmem
	movl	TC_SYSTEM_EXITPROCLIST,%edx
	movl	%edx,(%eax)
	movl	TC_SYSTEM_EXITPROC,%edx
	movl	%edx,4(%eax)
	movl	%ebx,8(%eax)
	movl	%eax,TC_SYSTEM_EXITPROCLIST
	movl	$SYSTEM_DOEXITPROC,%eax
	movl	%eax,TC_SYSTEM_EXITPROC
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ARRAYSTRINGTOPPCHAR$array_of_ANSISTRING$LONGINT$$PPCHAR
SYSTEM_ARRAYSTRINGTOPPCHAR$array_of_ANSISTRING$LONGINT$$PPCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,%ebx
	movl	%ecx,-12(%ebp)
	testl	%ebx,%ebx
	jnl	Lj13780
	movl	$0,-16(%ebp)
	jmp	Lj13777
Lj13780:
	movl	-12(%ebp),%edx
	addl	%ebx,%edx
	addl	$2,%edx
	shll	$2,%edx
	leal	-8(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13788
	movl	$0,-16(%ebp)
	jmp	Lj13777
Lj13788:
	movl	%ebx,%ecx
	movl	$0,%esi
	cmpl	%esi,%ecx
	jl	Lj13792
	decl	%esi
	.balign 4,0x90
Lj13793:
	incl	%esi
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%esi,%eax
	movl	-4(%ebp),%edi
	movl	(%edi,%esi,4),%edi
	testl	%edi,%edi
	jne	Lj13796
	movl	$FPC_EMPTYCHAR,%edi
Lj13796:
	movl	%edi,(%edx,%eax,4)
	cmpl	%esi,%ecx
	jg	Lj13793
Lj13792:
	movl	-8(%ebp),%edx
	movl	%ebx,%eax
	incl	%eax
	addl	-12(%ebp),%eax
	movl	$0,(%edx,%eax,4)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj13777:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_STRINGTOPPCHAR$ANSISTRING$SMALLINT$$PPCHAR
SYSTEM_STRINGTOPPCHAR$ANSISTRING$SMALLINT$$PPCHAR:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj13807
	movl	$FPC_EMPTYCHAR,%eax
Lj13807:
	call	SYSTEM_STRINGTOPPCHAR$PCHAR$SMALLINT$$PPCHAR
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_STRINGTOPPCHAR$PCHAR$SMALLINT$$PPCHAR
SYSTEM_STRINGTOPPCHAR$PCHAR$SMALLINT$$PPCHAR:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movw	%dx,%bx
	movl	%eax,%esi
	movl	%esi,%ecx
	movl	$1,%edx
	jmp	Lj13817
	.balign 4,0x90
	jmp	Lj13820
	.balign 4,0x90
Lj13819:
	incl	%ecx
Lj13820:
	movzbl	(%ecx),%eax
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj13822
	cmpl	$23,%eax
	stc
	je	Lj13822
	clc
Lj13822:
	jc	Lj13819
Lj13821:
	incl	%edx
	movb	(%ecx),%al
	cmpb	$34,%al
	jne	Lj13833
	incl	%ecx
	jmp	Lj13826
	.balign 4,0x90
Lj13825:
	incl	%ecx
Lj13826:
	movzbl	(%ecx),%eax
	testl	%eax,%eax
	je	Lj13827
	cmpl	$34,%eax
Lj13828:
	jne	Lj13825
Lj13827:
	movb	(%ecx),%al
	cmpb	$34,%al
	jne	Lj13831
	incl	%ecx
	jmp	Lj13831
	.balign 4,0x90
Lj13832:
	incl	%ecx
Lj13833:
	movzbl	(%ecx),%eax
	testl	%eax,%eax
	stc
	je	Lj13835
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj13835
	cmpl	$23,%eax
	stc
	je	Lj13835
	clc
Lj13835:
	jnc	Lj13832
Lj13831:
Lj13817:
	movb	(%ecx),%al
	testb	%al,%al
	jne	Lj13820
Lj13818:
	movswl	%bx,%eax
	addl	%edx,%eax
	movl	%eax,%edx
	shll	$2,%edx
	movl	%esp,%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	(%esp),%eax
	movl	(%esp),%edx
	testl	%edx,%edx
	je	Lj13810
	movswl	%bx,%edx
	movl	$1,%ecx
	cmpl	%ecx,%edx
	jl	Lj13845
	decl	%ecx
	.balign 4,0x90
Lj13846:
	incl	%ecx
	addl	$4,(%esp)
	cmpl	%ecx,%edx
	jg	Lj13846
Lj13845:
	movl	%esi,%edx
	jmp	Lj13850
	.balign 4,0x90
	jmp	Lj13853
	.balign 4,0x90
Lj13852:
	movb	$0,(%edx)
	incl	%edx
Lj13853:
	movzbl	(%edx),%ecx
	subl	$9,%ecx
	cmpl	$2,%ecx
	jb	Lj13857
	cmpl	$23,%ecx
	stc
	je	Lj13857
	clc
Lj13857:
	jc	Lj13852
Lj13854:
	movb	(%edx),%cl
	cmpb	$34,%cl
	jne	Lj13859
	incl	%edx
	movl	(%esp),%ecx
	movl	%edx,(%ecx)
	addl	$4,(%esp)
	movl	(%esp),%ecx
	movl	$0,(%ecx)
	jmp	Lj13865
	.balign 4,0x90
Lj13864:
	incl	%edx
Lj13865:
	movzbl	(%edx),%ecx
	testl	%ecx,%ecx
	je	Lj13866
	cmpl	$34,%ecx
Lj13867:
	jne	Lj13864
Lj13866:
	movb	(%edx),%cl
	cmpb	$34,%cl
	jne	Lj13872
	movb	$0,(%edx)
	incl	%edx
	jmp	Lj13872
Lj13859:
	movl	(%esp),%ecx
	movl	%edx,(%ecx)
	addl	$4,(%esp)
	movl	(%esp),%ecx
	movl	$0,(%ecx)
	jmp	Lj13878
	.balign 4,0x90
Lj13877:
	incl	%edx
Lj13878:
	movzbl	(%edx),%ecx
	testl	%ecx,%ecx
	stc
	je	Lj13880
	subl	$9,%ecx
	cmpl	$2,%ecx
	jb	Lj13880
	cmpl	$23,%ecx
	stc
	je	Lj13880
	clc
Lj13880:
	jnc	Lj13877
Lj13872:
Lj13850:
	movb	(%edx),%cl
	testb	%cl,%cl
	jne	Lj13853
Lj13851:
Lj13810:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
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
	je	Lj13884
	movl	TC_SYSTEM_ABSTRACTERRORPROC,%eax
	call	*%eax
Lj13884:
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
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	8(%ebp),%esi
	movl	TC_SYSTEM_ASSERTERRORPROC,%ebx
	testl	%ebx,%ebx
	je	Lj13892
	pushl	%esi
	movl	TC_SYSTEM_ASSERTERRORPROC,%ebx
	call	*%ebx
	jmp	Lj13901
Lj13892:
	movl	%ebp,%edx
	movl	$227,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj13901:
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_SYSASSERT$SHORTSTRING$SHORTSTRING$LONGINT$POINTER
SYSTEM_SYSASSERT$SHORTSTRING$SHORTSTRING$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%ebx
	movl	%edx,%edi
	movl	%ecx,%esi
	movl	8(%ebp),%eax
	movzbl	(%ebx),%eax
	testl	%eax,%eax
	jne	Lj13909
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13912
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13913
Lj13912:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13913:
	movl	$_$SYSTEM$_Ld32,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13920
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj13921
Lj13920:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj13921:
	call	fpc_write_end
	jmp	Lj13922
Lj13909:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13925
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13926
Lj13925:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13926:
	movl	%ebx,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13933
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj13934
Lj13933:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj13934:
	call	fpc_write_end
Lj13922:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13937
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13938
Lj13937:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13938:
	movl	$_$SYSTEM$_Ld33,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13945
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13946
Lj13945:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13946:
	movl	%edi,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13953
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13954
Lj13953:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13954:
	movl	$_$SYSTEM$_Ld34,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13961
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13962
Lj13961:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13962:
	movl	%esi,%ecx
	movl	$0,%eax
	call	fpc_write_text_sint
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13969
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13970
Lj13969:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13970:
	movl	$_$SYSTEM$_Ld35,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13977
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj13978
Lj13977:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj13978:
	call	fpc_writeln_end
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13981
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13982
Lj13981:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13982:
	movl	$_$SYSTEM$_Ld1,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13989
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj13990
Lj13989:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj13990:
	call	fpc_writeln_end
	movl	$227,%eax
	call	SYSTEM_HALT$LONGINT
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
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
SYSTEM_SYSOSALLOC$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	pushl	TC_SYSTEM_HEAPALLOCFLAGS
	pushl	%eax
	leal	-4(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_299
	addl	$12,%esp
	testl	%eax,%eax
	jne	Lj14008
	movl	-4(%ebp),%eax
	jmp	Lj14011
Lj14008:
	movl	$0,%eax
Lj14011:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSOSFREE$POINTER$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	pushl	%eax
	call	_$dll$doscalls$_index_304
	popl	%ebx
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_READUSEHIGHMEM$$BOOLEAN
SYSTEM_READUSEHIGHMEM$$BOOLEAN:
	movl	TC_SYSTEM_HEAPALLOCFLAGS,%eax
	andl	$1024,%eax
	cmpl	$1024,%eax
	seteb	%al
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_WRITEUSEHIGHMEM$BOOLEAN
SYSTEM_WRITEUSEHIGHMEM$BOOLEAN:
	testb	%al,%al
	je	Lj14025
	orl	$1024,TC_SYSTEM_HEAPALLOCFLAGS
	jmp	Lj14028
Lj14025:
	andl	$-1025,TC_SYSTEM_HEAPALLOCFLAGS
Lj14028:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETMEMORYMANAGER$TMEMORYMANAGER
SYSTEM_GETMEMORYMANAGER$TMEMORYMANAGER:
	subl	$12,%esp
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,(%esp)
	movl	(%esp),%edi
	movl	$TC_SYSTEM_MEMORYMANAGER,%esi
	cld
	movl	$12,%ecx
	rep
	movsl
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETMEMORYMANAGER$TMEMORYMANAGER
SYSTEM_SETMEMORYMANAGER$TMEMORYMANAGER:
	subl	$8,%esp
	movl	%esi,(%esp)
	movl	%edi,4(%esp)
	movl	%eax,%esi
	movl	$TC_SYSTEM_MEMORYMANAGER,%edi
	cld
	movl	$12,%ecx
	rep
	movsl
	movl	(%esp),%esi
	movl	4(%esp),%edi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ISMEMORYMANAGERSET$$BOOLEAN
SYSTEM_ISMEMORYMANAGERSET$$BOOLEAN:
	movl	$SYSTEM_SYSGETMEM$LONGWORD$$POINTER,%eax
	cmpl	TC_SYSTEM_MEMORYMANAGER+4,%eax
	jne	Lj14041
Lj14043:
	movl	$SYSTEM_SYSFREEMEM$POINTER$$LONGWORD,%eax
	cmpl	TC_SYSTEM_MEMORYMANAGER+8,%eax
	je	Lj14042
Lj14041:
	movb	$1,%al
	jmp	Lj14044
Lj14042:
	movb	$0,%al
Lj14044:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETMEM$POINTER$LONGWORD
SYSTEM_GETMEM$POINTER$LONGWORD:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	%edx,%eax
	movl	TC_SYSTEM_MEMORYMANAGER+4,%edx
	call	*%edx
	movl	%eax,(%ebx)
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETMEMORY$POINTER$LONGWORD
SYSTEM_GETMEMORY$POINTER$LONGWORD:
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FREEMEM$POINTER$LONGWORD
SYSTEM_FREEMEM$POINTER$LONGWORD:
	movl	TC_SYSTEM_MEMORYMANAGER+12,%ecx
	call	*%ecx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FREEMEMORY$POINTER$LONGWORD
SYSTEM_FREEMEMORY$POINTER$LONGWORD:
	call	SYSTEM_FREEMEM$POINTER$LONGWORD
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETHEAPSTATUS$$THEAPSTATUS
SYSTEM_GETHEAPSTATUS$$THEAPSTATUS:
	movl	TC_SYSTEM_MEMORYMANAGER+40,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETFPCHEAPSTATUS$$TFPCHEAPSTATUS
SYSTEM_GETFPCHEAPSTATUS$$TFPCHEAPSTATUS:
	movl	TC_SYSTEM_MEMORYMANAGER+44,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_MEMSIZE$POINTER$$LONGWORD
SYSTEM_MEMSIZE$POINTER$$LONGWORD:
	movl	TC_SYSTEM_MEMORYMANAGER+24,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FREEMEM$POINTER$$LONGWORD
SYSTEM_FREEMEM$POINTER$$LONGWORD:
.globl	FPC_FREEMEM_X
FPC_FREEMEM_X:
	movl	TC_SYSTEM_MEMORYMANAGER+8,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FREEMEMORY$POINTER$$LONGWORD
SYSTEM_FREEMEMORY$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETMEM$LONGWORD$$POINTER
SYSTEM_GETMEM$LONGWORD$$POINTER:
	movl	TC_SYSTEM_MEMORYMANAGER+4,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETMEMORY$LONGWORD$$POINTER
SYSTEM_GETMEMORY$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	call	SYSTEM_GETMEM$LONGWORD$$POINTER
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ALLOCMEM$LONGWORD$$POINTER
SYSTEM_ALLOCMEM$LONGWORD$$POINTER:
	movl	TC_SYSTEM_MEMORYMANAGER+16,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER:
	movl	TC_SYSTEM_MEMORYMANAGER+20,%ecx
	call	*%ecx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_REALLOCMEMORY$POINTER$LONGWORD$$POINTER
SYSTEM_REALLOCMEMORY$POINTER$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	movl	12(%ebp),%edx
	leal	8(%ebp),%eax
	call	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_getmem
fpc_getmem:
.globl	FPC_GETMEM
FPC_GETMEM:
	movl	TC_SYSTEM_MEMORYMANAGER+4,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	fpc_freemem
fpc_freemem:
.globl	FPC_FREEMEM
FPC_FREEMEM:
	movl	TC_SYSTEM_MEMORYMANAGER+8,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSGETFPCHEAPSTATUS$$TFPCHEAPSTATUS
SYSTEM_SYSGETFPCHEAPSTATUS$$TFPCHEAPSTATUS:
	subl	$8,%esp
	movl	%esi,(%esp)
	movl	%edi,4(%esp)
	movl	%eax,%edi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj14143
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj14144
Lj14143:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj14144:
	leal	164(%eax),%edx
	movl	%edx,%eax
	movl	8(%edx),%ecx
	movl	12(%eax),%edx
	subl	%edx,%ecx
	movl	%ecx,16(%eax)
	movl	%eax,%esi
	cld
	movl	$5,%ecx
	rep
	movsl
	movl	(%esp),%esi
	movl	4(%esp),%edi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSGETHEAPSTATUS$$THEAPSTATUS
SYSTEM_SYSGETHEAPSTATUS$$THEAPSTATUS:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj14153
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj14154
Lj14153:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj14154:
	addl	$164,%eax
	movl	%eax,%edx
	movl	8(%eax),%ecx
	movl	12(%edx),%eax
	subl	%eax,%ecx
	movl	%ecx,16(%edx)
	movl	12(%edx),%eax
	movl	%eax,12(%ebx)
	movl	16(%edx),%eax
	movl	%eax,16(%ebx)
	movl	8(%edx),%eax
	movl	%eax,(%ebx)
	movl	$0,4(%ebx)
	movl	$0,8(%ebx)
	movl	$0,20(%ebx)
	movl	$0,24(%ebx)
	movl	$0,28(%ebx)
	movl	$0,32(%ebx)
	movl	$0,36(%ebx)
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_APPEND_TO_LIST_VAR$PMEMCHUNK_VAR:
	movl	4(%eax),%edx
	addl	$152,%edx
	movl	$0,16(%eax)
	movl	(%edx),%ecx
	movl	%ecx,12(%eax)
	movl	(%edx),%ecx
	testl	%ecx,%ecx
	je	Lj14186
	movl	(%edx),%ecx
	movl	%eax,16(%ecx)
Lj14186:
	movl	%eax,(%edx)
	ret

.text
	.balign 4,0x90
SYSTEM_REMOVE_FROM_LIST_FIXED$PMEMCHUNK_FIXED$PPMEMCHUNK_FIXED:
	subl	$4,%esp
	movl	%ebx,(%esp)
	cmpl	$0,4(%eax)
	je	Lj14194
	movl	4(%eax),%ebx
	movl	8(%eax),%ecx
	movl	%ecx,8(%ebx)
Lj14194:
	cmpl	$0,8(%eax)
	je	Lj14198
	movl	8(%eax),%ecx
	movl	4(%eax),%ebx
	movl	%ebx,4(%ecx)
	jmp	Lj14201
Lj14198:
	movl	4(%eax),%eax
	movl	%eax,(%edx)
Lj14201:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_REMOVE_FROM_LIST_VAR$PMEMCHUNK_VAR:
	cmpl	$0,12(%eax)
	je	Lj14207
	movl	12(%eax),%edx
	movl	16(%eax),%ecx
	movl	%ecx,16(%edx)
Lj14207:
	cmpl	$0,16(%eax)
	je	Lj14211
	movl	16(%eax),%edx
	movl	12(%eax),%ecx
	movl	%ecx,12(%edx)
	jmp	Lj14214
Lj14211:
	movl	4(%eax),%edx
	movl	12(%eax),%eax
	movl	%eax,152(%edx)
Lj14214:
	ret

.text
	.balign 4,0x90
SYSTEM_REMOVE_FREED_FIXED_CHUNKS$POSCHUNK:
	subl	$20,%esp
	movl	%ebx,8(%esp)
	movl	%esi,12(%esp)
	movl	%edi,16(%esp)
	movl	%eax,%ecx
	movl	16(%ecx),%eax
	testl	%eax,%eax
	jl	Lj14217
	movl	%ecx,%eax
	addl	$28,%eax
	movl	%eax,4(%esp)
	movl	(%eax),%edx
	andl	$4080,%edx
	movl	%edx,(%esp)
	movl	(%ecx),%eax
	andl	$-16,%eax
	addl	%ecx,%eax
	subl	(%esp),%eax
	movl	%eax,%edx
	movl	20(%ecx),%ecx
	movl	(%esp),%eax
	shrl	$4,%eax
	leal	(%ecx,%eax,4),%eax
	movl	%eax,%ecx
	.balign 4,0x90
Lj14229:
	movl	%ecx,%ebx
	movl	4(%esp),%esi
	cmpl	$0,4(%esi)
	je	Lj14238
	movl	4(%esi),%eax
	movl	8(%esi),%edi
	movl	%edi,8(%eax)
Lj14238:
	cmpl	$0,8(%esi)
	je	Lj14242
	movl	8(%esi),%edi
	movl	4(%esi),%eax
	movl	%eax,4(%edi)
	jmp	Lj14245
Lj14242:
	movl	4(%esi),%eax
	movl	%eax,(%ebx)
Lj14245:
	movl	(%esp),%eax
	addl	4(%esp),%eax
	movl	%eax,4(%esp)
	cmpl	%edx,%eax
	jna	Lj14229
Lj14217:
	movl	8(%esp),%ebx
	movl	12(%esp),%esi
	movl	16(%esp),%edi
	addl	$20,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_FREE_OSCHUNK$PFREELISTS$POSCHUNK:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%esi,%eax
	call	SYSTEM_REMOVE_FREED_FIXED_CHUNKS$POSCHUNK
	cmpl	$0,8(%esi)
	je	Lj14255
	movl	8(%esi),%eax
	movl	12(%esi),%edx
	movl	%edx,12(%eax)
	jmp	Lj14258
Lj14255:
	movl	12(%esi),%eax
	movl	%eax,148(%ebx)
Lj14258:
	cmpl	$0,12(%esi)
	je	Lj14262
	movl	12(%esi),%eax
	movl	8(%esi),%edx
	movl	%edx,8(%eax)
Lj14262:
	movl	16(%esi),%eax
	testl	%eax,%eax
	jnge	Lj14266
	decl	140(%ebx)
Lj14266:
	movl	%esi,%eax
	movl	(%eax),%edx
	andl	$-16,%edx
	subl	%edx,172(%ebx)
	call	SYSTEM_SYSOSFREE$POINTER$LONGWORD
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_APPEND_TO_OSLIST$POSCHUNK:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	20(%ebx),%esi
	movl	(%ebx),%eax
	andl	$1,%eax
	je	Lj14278
	incl	136(%esi)
	andl	$-2,(%ebx)
	jmp	Lj14273
Lj14278:
	movl	136(%esi),%eax
	cmpl	TC_SYSTEM_MAXKEPTOSCHUNKS,%eax
	jae	Lj14281
Lj14283:
	movl	(%ebx),%eax
	andl	$-16,%eax
	cmpl	TC_SYSTEM_GROWHEAPSIZE2,%eax
	jna	Lj14282
Lj14281:
	movl	%ebx,%edx
	movl	%esi,%eax
	call	SYSTEM_FREE_OSCHUNK$PFREELISTS$POSCHUNK
	jmp	Lj14288
Lj14282:
	movl	(%esi),%eax
	movl	%eax,4(%ebx)
	movl	%ebx,(%esi)
	incl	136(%esi)
Lj14288:
Lj14273:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_APPEND_TO_OSLIST_VAR$PMEMCHUNK_VAR:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%edx
	movl	%edx,%eax
	subl	$36,%eax
	cmpl	$0,12(%edx)
	je	Lj14301
	movl	12(%edx),%ecx
	movl	16(%edx),%ebx
	movl	%ebx,16(%ecx)
Lj14301:
	cmpl	$0,16(%edx)
	je	Lj14305
	movl	16(%edx),%ecx
	movl	12(%edx),%ebx
	movl	%ebx,12(%ecx)
	jmp	Lj14308
Lj14305:
	movl	4(%edx),%ecx
	movl	12(%edx),%edx
	movl	%edx,152(%ecx)
Lj14308:
	call	SYSTEM_APPEND_TO_OSLIST$POSCHUNK
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_MODIFY_OSCHUNK_FREELISTS$POSCHUNK$PFREELISTS:
	movl	%edx,20(%eax)
	movl	16(%eax),%ecx
	cmpl	$-1,%ecx
	jne	Lj14313
	addl	$36,%eax
	.balign 4,0x90
Lj14321:
	movl	%edx,4(%eax)
	movl	8(%eax),%ecx
	andl	$4,%ecx
	jne	Lj14323
	movl	8(%eax),%ecx
	andl	$-16,%ecx
	addl	%eax,%ecx
	movl	%ecx,%eax
	jmp	Lj14321
Lj14323:
Lj14313:
	ret

.text
	.balign 4,0x90
SYSTEM_MODIFY_FREELISTS$PFREELISTS$PFREELISTS$$POSCHUNK:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%edx,%ebx
	movl	148(%eax),%esi
	testl	%esi,%esi
	je	Lj14335
	.balign 4,0x90
Lj14336:
	movl	%ebx,%edx
	movl	%esi,%eax
	call	SYSTEM_MODIFY_OSCHUNK_FREELISTS$POSCHUNK$PFREELISTS
	cmpl	$0,12(%esi)
	jne	Lj14344
Lj14343:
	movl	%esi,%edi
	jmp	Lj14330
Lj14344:
	movl	12(%esi),%esi
	jmp	Lj14336
Lj14335:
	movl	$0,%edi
Lj14330:
	movl	%edi,%eax
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_SPLIT_BLOCK$PMEMCHUNK_VAR$LONGWORD$$LONGWORD:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%edx,(%esp)
	movl	%eax,%ecx
	movl	8(%ecx),%ebx
	movl	%ebx,%eax
	andl	$-16,%eax
	movl	%eax,%edx
	subl	(%esp),%eax
	movl	%eax,%edi
	cmpl	$20,%edi
	jnae	Lj14360
	movl	(%esp),%eax
	addl	%ecx,%eax
	movl	%eax,%esi
	movl	%ebx,%eax
	andl	$4,%eax
	jne	Lj14364
	movl	%edx,%eax
	addl	%ecx,%eax
	movl	%edi,(%eax)
Lj14364:
	movl	%ebx,%eax
	andl	$4,%eax
	orl	%edi,%eax
	movl	%eax,8(%esi)
	movl	(%esp),%eax
	movl	%eax,(%esi)
	movl	4(%ecx),%eax
	movl	%eax,4(%esi)
	movl	%ebx,%eax
	andl	$11,%eax
	orl	(%esp),%eax
	movl	%eax,8(%ecx)
	movl	%esi,%ecx
	movl	4(%ecx),%eax
	leal	152(%eax),%ebx
	movl	$0,16(%ecx)
	movl	(%ebx),%eax
	movl	%eax,12(%ecx)
	movl	(%ebx),%eax
	testl	%eax,%eax
	je	Lj14385
	movl	(%ebx),%eax
	movl	%ecx,16(%eax)
Lj14385:
	movl	%ecx,(%ebx)
	movl	(%esp),%eax
	jmp	Lj14392
Lj14360:
	movl	%edx,%eax
Lj14392:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_CONCAT_TWO_BLOCKS$PMEMCHUNK_VAR$PMEMCHUNK_VAR:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	8(%esi),%eax
	andl	$1,%eax
	je	Lj14398
	movl	$204,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj14398:
	movl	8(%esi),%eax
	andl	$-16,%eax
	addl	%eax,8(%ebx)
	movl	8(%esi),%edx
	andl	$4,%edx
	je	Lj14404
	orl	$4,8(%ebx)
	jmp	Lj14407
Lj14404:
	addl	%esi,%eax
	movl	8(%ebx),%edx
	andl	$-16,%edx
	movl	%edx,(%eax)
Lj14407:
	cmpl	$0,12(%esi)
	je	Lj14416
	movl	12(%esi),%eax
	movl	16(%esi),%edx
	movl	%edx,16(%eax)
Lj14416:
	cmpl	$0,16(%esi)
	je	Lj14420
	movl	16(%esi),%eax
	movl	12(%esi),%edx
	movl	%edx,12(%eax)
	jmp	Lj14423
Lj14420:
	movl	4(%esi),%edx
	movl	12(%esi),%eax
	movl	%eax,152(%edx)
Lj14423:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_TRY_CONCAT_FREE_CHUNK_FORWARD$PMEMCHUNK_VAR$$BOOLEAN:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movb	$0,%bl
	movl	8(%eax),%edx
	andl	$4,%edx
	jne	Lj14431
	movl	8(%eax),%edx
	andl	$-16,%edx
	addl	%eax,%edx
	movl	8(%edx),%ecx
	andl	$2,%ecx
	jne	Lj14435
	call	SYSTEM_CONCAT_TWO_BLOCKS$PMEMCHUNK_VAR$PMEMCHUNK_VAR
	movb	$1,%bl
Lj14435:
Lj14431:
	movb	%bl,%al
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_TRY_CONCAT_FREE_CHUNK$PMEMCHUNK_VAR$$PMEMCHUNK_VAR:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	SYSTEM_TRY_CONCAT_FREE_CHUNK_FORWARD$PMEMCHUNK_VAR$$BOOLEAN
	movl	8(%ebx),%eax
	andl	$8,%eax
	jne	Lj14447
	movl	(%ebx),%esi
	movl	%ebx,%eax
	subl	%esi,%eax
	movl	%eax,%esi
	movl	8(%esi),%eax
	andl	$2,%eax
	jne	Lj14451
	movl	%ebx,%edx
	movl	%esi,%eax
	call	SYSTEM_CONCAT_TWO_BLOCKS$PMEMCHUNK_VAR$PMEMCHUNK_VAR
	movl	%esi,%ebx
Lj14451:
Lj14447:
	movl	%ebx,%eax
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_FIND_FREE_OSCHUNK$PFREELISTS$LONGWORD$LONGWORD$LONGWORD$$POSCHUNK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%edx
	movl	%edx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	(%eax),%ebx
	movl	$0,%edi
	jmp	Lj14467
	.balign 4,0x90
Lj14466:
	movl	(%ebx),%eax
	andl	$1,%eax
	je	Lj14470
	andl	$-2,(%ebx)
	movl	4(%ebx),%ebx
	testl	%edi,%edi
	jne	Lj14476
	movl	-4(%ebp),%eax
	movl	%ebx,(%eax)
	jmp	Lj14467
Lj14476:
	movl	%ebx,4(%edi)
	jmp	Lj14467
Lj14470:
	movl	(%ebx),%eax
	andl	$-16,%eax
	movl	%eax,%esi
	cmpl	-12(%ebp),%esi
	jnae	Lj14485
	cmpl	-8(%ebp),%esi
	jnbe	Lj14485
	movl	-16(%ebp),%eax
	movl	%esi,(%eax)
	testl	%edi,%edi
	jne	Lj14490
	movl	4(%ebx),%edx
	movl	-4(%ebp),%eax
	movl	%edx,(%eax)
	jmp	Lj14493
Lj14490:
	movl	4(%ebx),%eax
	movl	%eax,4(%edi)
Lj14493:
	movl	-4(%ebp),%eax
	decl	136(%eax)
	movl	%ebx,%eax
	call	SYSTEM_REMOVE_FREED_FIXED_CHUNKS$POSCHUNK
	jmp	Lj14468
Lj14485:
	movl	%ebx,%edi
	movl	4(%ebx),%ebx
Lj14467:
	testl	%ebx,%ebx
	jne	Lj14466
Lj14468:
	movl	%ebx,%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_ALLOC_OSCHUNK$PFREELISTS$LONGWORD$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	addl	$36,%eax
	movl	%eax,%esi
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj14509
	movl	$1048576,%ebx
	jmp	Lj14512
Lj14509:
	movl	$-1,%ebx
Lj14512:
	movl	$0,%edi
	movl	-20(%ebp),%eax
	movl	136(%eax),%edx
	cmpl	TC_SYSTEM_MAXKEPTOSCHUNKS,%edx
	jnae	Lj14518
	leal	-4(%ebp),%eax
	pushl	%eax
	movl	%ebx,%ecx
	movl	%esi,%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_FIND_FREE_OSCHUNK$PFREELISTS$LONGWORD$LONGWORD$LONGWORD$$POSCHUNK
	movl	%eax,%edi
Lj14518:
	testl	%edi,%edi
	jne	Lj14530
Lj14531:
	cmpl	$0,U_SYSTEM_ORPHANED_FREELISTS+156
	jne	Lj14529
Lj14533:
	cmpl	$0,U_SYSTEM_ORPHANED_FREELISTS+160
	jne	Lj14529
Lj14532:
	movl	U_SYSTEM_ORPHANED_FREELISTS+136,%eax
	testl	%eax,%eax
	jna	Lj14530
Lj14529:
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	movl	$U_SYSTEM_ORPHANED_FREELISTS,%eax
	call	SYSTEM_FINISH_WAITFIXEDLIST$PFREELISTS
	movl	$U_SYSTEM_ORPHANED_FREELISTS,%eax
	call	SYSTEM_FINISH_WAITVARLIST$PFREELISTS
	movl	U_SYSTEM_ORPHANED_FREELISTS+136,%eax
	testl	%eax,%eax
	jna	Lj14541
	leal	-4(%ebp),%eax
	pushl	%eax
	movl	$U_SYSTEM_ORPHANED_FREELISTS,%eax
	movl	%ebx,%ecx
	movl	%esi,%edx
	call	SYSTEM_FIND_FREE_OSCHUNK$PFREELISTS$LONGWORD$LONGWORD$LONGWORD$$POSCHUNK
	movl	%eax,%edi
	testl	%eax,%eax
	je	Lj14553
	movl	-20(%ebp),%eax
	movl	%eax,20(%edi)
	cmpl	$0,8(%edi)
	je	Lj14557
	movl	8(%edi),%edx
	movl	12(%edi),%eax
	movl	%eax,12(%edx)
	jmp	Lj14560
Lj14557:
	movl	12(%edi),%eax
	movl	%eax,U_SYSTEM_ORPHANED_FREELISTS+148
Lj14560:
	cmpl	$0,12(%edi)
	je	Lj14564
	movl	12(%edi),%eax
	movl	8(%edi),%edx
	movl	%edx,8(%eax)
Lj14564:
	movl	-20(%ebp),%edx
	movl	148(%edx),%eax
	movl	%eax,12(%edi)
	movl	-20(%ebp),%eax
	cmpl	$0,148(%eax)
	je	Lj14570
	movl	-20(%ebp),%edx
	movl	148(%edx),%eax
	movl	%edi,8(%eax)
Lj14570:
	movl	$0,8(%edi)
	movl	-20(%ebp),%eax
	movl	%edi,148(%eax)
Lj14553:
Lj14541:
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
Lj14530:
	testl	%edi,%edi
	jne	Lj14580
	movl	-4(%ebp),%eax
	addl	$36,%eax
	addl	$65535,%eax
	andl	$-65536,%eax
	movl	%eax,-4(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj14584
	movl	-20(%ebp),%edx
	movl	144(%edx),%eax
	call	SYSTEM_SYSOSALLOC$LONGWORD$$POINTER
	movl	%eax,%edi
	testl	%eax,%eax
	je	Lj14593
	movl	-20(%ebp),%eax
	movl	144(%eax),%edx
	movl	%edx,-4(%ebp)
	jmp	Lj14593
Lj14584:
	movl	-4(%ebp),%eax
	cmpl	TC_SYSTEM_GROWHEAPSIZE1,%eax
	jnbe	Lj14595
	movl	TC_SYSTEM_GROWHEAPSIZE1,%eax
	call	SYSTEM_SYSOSALLOC$LONGWORD$$POINTER
	movl	%eax,%edi
	testl	%eax,%eax
	je	Lj14604
	movl	TC_SYSTEM_GROWHEAPSIZE1,%eax
	movl	%eax,-4(%ebp)
	jmp	Lj14604
Lj14595:
	movl	-4(%ebp),%eax
	cmpl	TC_SYSTEM_GROWHEAPSIZE2,%eax
	jnbe	Lj14606
	movl	TC_SYSTEM_GROWHEAPSIZE2,%eax
	call	SYSTEM_SYSOSALLOC$LONGWORD$$POINTER
	movl	%eax,%edi
	testl	%eax,%eax
	je	Lj14615
	movl	TC_SYSTEM_GROWHEAPSIZE2,%eax
	movl	%eax,-4(%ebp)
	jmp	Lj14615
Lj14606:
	movl	-4(%ebp),%eax
	call	SYSTEM_SYSOSALLOC$LONGWORD$$POINTER
	movl	%eax,%edi
Lj14615:
Lj14604:
Lj14593:
	testl	%edi,%edi
	jne	Lj14621
	movl	-4(%ebp),%eax
	call	SYSTEM_SYSOSALLOC$LONGWORD$$POINTER
	movl	%eax,%edi
	testl	%eax,%eax
	jne	Lj14627
	cmpb	$0,U_SYSTEM_RETURNNILIFGROWHEAPFAILS
	je	Lj14629
	movl	$0,-12(%ebp)
	jmp	Lj14504
Lj14629:
	movl	$203,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj14632:
Lj14627:
Lj14621:
	movl	-20(%ebp),%eax
	movl	%eax,20(%edi)
	movl	$0,8(%edi)
	movl	-20(%ebp),%edx
	movl	148(%edx),%eax
	movl	%eax,12(%edi)
	movl	-20(%ebp),%eax
	cmpl	$0,148(%eax)
	je	Lj14642
	movl	-20(%ebp),%eax
	movl	148(%eax),%edx
	movl	%edi,8(%edx)
Lj14642:
	movl	-20(%ebp),%eax
	movl	%edi,148(%eax)
	movl	-20(%ebp),%edx
	leal	164(%edx),%eax
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	addl	%eax,8(%edx)
	movl	8(%edx),%eax
	cmpl	(%edx),%eax
	jna	Lj14650
	movl	8(%edx),%eax
	movl	%eax,(%edx)
Lj14650:
Lj14580:
	movl	%edi,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj14656
	movl	-8(%ebp),%eax
	movl	$0,16(%eax)
	movl	-16(%ebp),%eax
	shll	$4,%eax
	movl	%eax,%esi
	movl	-4(%ebp),%eax
	subl	%esi,%eax
	cmpl	%ebx,%eax
	jna	Lj14662
	movl	$204,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj14662:
	movl	$28,%edx
	movl	%edx,%eax
	addl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	$0,8(%ebx)
	.balign 4,0x90
Lj14673:
	movl	%esi,%edi
	orl	$1,%edi
	movl	%edx,%eax
	shll	$12,%eax
	orl	%eax,%edi
	movl	%edi,(%ebx)
	addl	%esi,%edx
	movl	-4(%ebp),%eax
	subl	%esi,%eax
	cmpl	%edx,%eax
	jb	Lj14675
	movl	%esi,%eax
	addl	%ebx,%eax
	movl	%eax,%ecx
	movl	%ecx,4(%ebx)
	movl	%ebx,8(%ecx)
	movl	%ecx,%ebx
	jmp	Lj14673
Lj14675:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,4),%ecx
	movl	%ecx,4(%ebx)
	testl	%ecx,%ecx
	je	Lj14693
	movl	%ebx,8(%ecx)
Lj14693:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	%edx,(%ecx,%eax,4)
	movl	-20(%ebp),%eax
	incl	140(%eax)
	movl	-20(%ebp),%edx
	movl	140(%edx),%eax
	cmpl	$264,%eax
	jna	Lj14704
	movl	-20(%ebp),%edx
	movl	144(%edx),%eax
	cmpl	$262144,%eax
	jnb	Lj14701
	movl	-20(%ebp),%eax
	movl	144(%eax),%edx
	movl	-20(%ebp),%eax
	addl	%edx,144(%eax)
Lj14701:
	movl	-20(%ebp),%eax
	movl	$0,140(%eax)
	jmp	Lj14704
Lj14656:
	movl	-8(%ebp),%eax
	movl	$-1,16(%eax)
	movl	-8(%ebp),%eax
	addl	$36,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	subl	$36,%eax
	andl	$-16,%eax
	orl	$12,%eax
	movl	%eax,8(%edx)
	movl	$0,(%edx)
	movl	-20(%ebp),%eax
	movl	%eax,4(%edx)
	leal	152(%eax),%ecx
	movl	$0,16(%edx)
	movl	(%ecx),%eax
	movl	%eax,12(%edx)
	movl	(%ecx),%eax
	testl	%eax,%eax
	je	Lj14727
	movl	(%ecx),%eax
	movl	%edx,16(%eax)
Lj14727:
	movl	%edx,(%ecx)
Lj14704:
Lj14504:
	movl	-12(%ebp),%eax
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSGETMEM_FIXED$LONGWORD$$POINTER:
	subl	$24,%esp
	movl	%ebx,12(%esp)
	movl	%esi,16(%esp)
	movl	%edi,20(%esp)
	movl	%eax,(%esp)
	movl	(%esp),%eax
	shrl	$4,%eax
	movl	%eax,4(%esp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj14738
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj14739
Lj14738:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj14739:
	movl	%eax,%edi
	movl	4(%esp),%eax
	movl	(%edi,%eax,4),%esi
	testl	%esi,%esi
	je	Lj14743
	movl	(%esi),%eax
	shrl	$12,%eax
	movl	%esi,%edx
	subl	%eax,%edx
	movl	%edx,8(%esp)
	movl	8(%esp),%eax
	movl	16(%eax),%edx
	testl	%edx,%edx
	jne	Lj14750
	movl	8(%esp),%eax
	movl	(%eax),%edx
	orl	$1,%edx
	movl	8(%esp),%eax
	movl	%edx,(%eax)
	decl	136(%edi)
	jmp	Lj14750
Lj14743:
	movl	%edi,%eax
	call	SYSTEM_TRY_FINISH_WAITFIXEDLIST$PFREELISTS$$BOOLEAN
	testb	%al,%al
	je	Lj14752
	movl	(%esp),%eax
	call	SYSTEM_SYSGETMEM_FIXED$LONGWORD$$POINTER
	movl	%eax,%ebx
	jmp	Lj14732
Lj14752:
	movl	(%esp),%ecx
	movl	4(%esp),%edx
	movl	%edi,%eax
	call	SYSTEM_ALLOC_OSCHUNK$PFREELISTS$LONGWORD$LONGWORD$$POINTER
	movl	%eax,%esi
	testl	%eax,%eax
	jne	Lj14769
Lj14768:
	movl	$0,%ebx
	jmp	Lj14732
Lj14769:
	movl	%esi,%eax
	subl	$28,%eax
	movl	%eax,8(%esp)
Lj14759:
Lj14750:
	movl	%esi,%eax
	addl	$4,%eax
	movl	%eax,%ebx
	movl	%esi,%eax
	movl	4(%eax),%ecx
	movl	%edi,%edx
	movl	4(%esp),%eax
	movl	%ecx,(%edx,%eax,4)
	testl	%ecx,%ecx
	je	Lj14781
	movl	$0,8(%ecx)
Lj14781:
	addl	$164,%edx
	movl	(%esp),%eax
	addl	%eax,12(%edx)
	movl	12(%edx),%eax
	cmpl	4(%edx),%eax
	jna	Lj14787
	movl	12(%edx),%eax
	movl	%eax,4(%edx)
Lj14787:
	movl	8(%esp),%eax
	incl	16(%eax)
Lj14732:
	movl	%ebx,%eax
	movl	12(%esp),%ebx
	movl	16(%esp),%esi
	movl	20(%esp),%edi
	addl	$24,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_SYSGETMEM_VAR$LONGWORD$$POINTER:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,%ebx
	movl	$0,(%esp)
	cmpl	$-65536,%ebx
	jna	Lj14795
	cmpb	$0,U_SYSTEM_RETURNNILIFGROWHEAPFAILS
	jne	Lj14790
	movl	$204,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj14798:
Lj14795:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj14803
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj14804
Lj14803:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj14804:
	movl	%eax,%esi
	call	SYSTEM_TRY_FINISH_WAITVARLIST$PFREELISTS
	movl	$0,%edx
	movl	152(%esi),%ecx
	movl	$-1,%eax
	jmp	Lj14814
	.balign 4,0x90
Lj14813:
	movl	8(%ecx),%edi
	cmpl	%ebx,%edi
	jnae	Lj14817
	testl	%edx,%edx
	je	Lj14818
	movl	8(%ecx),%edi
	cmpl	8(%edx),%edi
	jnb	Lj14819
Lj14818:
	movl	%ecx,%edx
	movl	8(%ecx),%edi
	cmpl	%ebx,%edi
	je	Lj14815
	movl	$10,%eax
Lj14819:
Lj14817:
	movl	12(%ecx),%ecx
	decl	%eax
Lj14814:
	testl	%ecx,%ecx
	je	Lj14815
	testl	%eax,%eax
	ja	Lj14813
Lj14815:
	movl	%edx,%edi
	testl	%edx,%edx
	jne	Lj14833
Lj14832:
	movl	%ebx,%ecx
	movl	%esi,%eax
	movl	$0,%edx
	call	SYSTEM_ALLOC_OSCHUNK$PFREELISTS$LONGWORD$LONGWORD$$POINTER
	movl	%eax,%edi
	testl	%eax,%eax
	je	Lj14790
Lj14842:
Lj14833:
	movl	%edi,%eax
	addl	$12,%eax
	movl	%eax,(%esp)
	movl	%edi,%ecx
	cmpl	$0,12(%edi)
	je	Lj14850
	movl	12(%edi),%eax
	movl	16(%edi),%edx
	movl	%edx,16(%eax)
Lj14850:
	cmpl	$0,16(%edi)
	je	Lj14854
	movl	16(%edi),%edx
	movl	12(%edi),%eax
	movl	%eax,12(%edx)
	jmp	Lj14857
Lj14854:
	movl	4(%edi),%edx
	movl	12(%edi),%eax
	movl	%eax,152(%edx)
Lj14857:
	movl	%ebx,%edx
	movl	%ecx,%ebx
	movl	%ebx,%eax
	call	SYSTEM_SPLIT_BLOCK$PMEMCHUNK_VAR$LONGWORD$$LONGWORD
	orl	$2,8(%ebx)
	movl	%esi,%edx
	addl	$164,%edx
	addl	%eax,12(%edx)
	movl	12(%edx),%eax
	cmpl	4(%edx),%eax
	jna	Lj14871
	movl	12(%edx),%eax
	movl	%eax,4(%edx)
Lj14871:
Lj14790:
	movl	(%esp),%eax
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSGETMEM$LONGWORD$$POINTER
SYSTEM_SYSGETMEM$LONGWORD$$POINTER:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	testl	%ebx,%ebx
	jne	Lj14877
	movl	$1,%ebx
Lj14877:
	cmpl	$524,%ebx
	jnbe	Lj14881
	movl	%ebx,%eax
	addl	$19,%eax
	andl	$4080,%eax
	movl	%eax,%ebx
	call	SYSTEM_SYSGETMEM_FIXED$LONGWORD$$POINTER
	movl	%eax,%esi
	jmp	Lj14888
Lj14881:
	cmpl	$-28,%ebx
	jnb	Lj14890
	movl	%ebx,%eax
	addl	$27,%eax
	andl	$-16,%eax
	movl	%eax,%ebx
Lj14890:
	movl	%ebx,%eax
	call	SYSTEM_SYSGETMEM_VAR$LONGWORD$$POINTER
	movl	%eax,%esi
Lj14888:
	movl	%esi,%eax
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_WAITFREE_FIXED$PMEMCHUNK_FIXED$POSCHUNK:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	movl	20(%esi),%eax
	movl	156(%eax),%eax
	movl	%eax,4(%ebx)
	movl	20(%esi),%eax
	movl	%ebx,156(%eax)
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_WAITFREE_VAR$PMEMCHUNK_VAR:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	movl	4(%ebx),%eax
	movl	160(%eax),%eax
	movl	%eax,12(%ebx)
	movl	4(%ebx),%eax
	movl	%ebx,160(%eax)
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_SYSFREEMEM_FIXED$PFREELISTS$PMEMCHUNK_FIXED$$LONGWORD:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%edx,%ebx
	movl	(%ebx),%edx
	shrl	$12,%edx
	movl	%ebx,%ecx
	subl	%edx,%ecx
	movl	%ecx,%esi
	movl	20(%esi),%edx
	movl	(%ebx),%ecx
	andl	$4080,%ecx
	movl	%ecx,%edi
	cmpl	%edx,%eax
	jne	Lj14926
	decl	16(%esi)
	movl	%edi,%edx
	shrl	$4,%edx
	movl	(%eax,%edx,4),%ecx
	movl	$0,8(%ebx)
	movl	%ecx,4(%ebx)
	testl	%ecx,%ecx
	je	Lj14936
	movl	%ebx,8(%ecx)
Lj14936:
	movl	%ebx,(%eax,%edx,4)
	subl	%edi,176(%eax)
	movl	16(%esi),%eax
	testl	%eax,%eax
	jnle	Lj14949
	movl	16(%esi),%eax
	testl	%eax,%eax
	jnl	Lj14944
	movl	$204,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj14944:
	movl	%esi,%eax
	call	SYSTEM_APPEND_TO_OSLIST$POSCHUNK
	jmp	Lj14949
Lj14926:
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_WAITFREE_FIXED$PMEMCHUNK_FIXED$POSCHUNK
Lj14949:
	movl	%edi,%eax
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_SYSFREEMEM_VAR$PFREELISTS$PMEMCHUNK_VAR$$LONGWORD:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,(%esp)
	movl	%edx,%edi
	movl	8(%edi),%eax
	andl	$-16,%eax
	movl	%eax,%esi
	movl	4(%edi),%eax
	cmpl	(%esp),%eax
	je	Lj14961
	movl	%edi,%eax
	call	SYSTEM_WAITFREE_VAR$PMEMCHUNK_VAR
	movl	%esi,%ebx
	jmp	Lj14956
Lj14961:
	movl	%edi,%eax
	andl	$-3,8(%eax)
	movl	%eax,%edx
	movl	%edx,%ecx
	movl	4(%ecx),%eax
	addl	$152,%eax
	movl	$0,16(%ecx)
	movl	(%eax),%edi
	movl	%edi,12(%ecx)
	movl	(%eax),%edi
	testl	%edi,%edi
	je	Lj14978
	movl	(%eax),%edi
	movl	%ecx,16(%edi)
Lj14978:
	movl	%eax,%edi
	movl	%ecx,(%edi)
	movl	%edx,%eax
	call	SYSTEM_TRY_CONCAT_FREE_CHUNK$PMEMCHUNK_VAR$$PMEMCHUNK_VAR
	movl	8(%eax),%edx
	andl	$12,%edx
	cmpl	$12,%edx
	jne	Lj14988
	call	SYSTEM_APPEND_TO_OSLIST_VAR$PMEMCHUNK_VAR
Lj14988:
	movl	(%esp),%eax
	subl	%esi,176(%eax)
	movl	%esi,%ebx
Lj14956:
	movl	%ebx,%eax
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSFREEMEM$POINTER$$LONGWORD
SYSTEM_SYSFREEMEM$POINTER$$LONGWORD:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,%ebx
	movl	%ebx,%eax
	subl	$4,%eax
	movl	%eax,%esi
	testl	%ebx,%ebx
	jne	Lj14998
	movl	$0,(%esp)
	jmp	Lj14993
Lj14998:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15003
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj15004
Lj15003:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj15004:
	movl	%eax,%edi
	movl	(%esi),%eax
	andl	$1,%eax
	jne	Lj15006
	movl	%ebx,%edx
	subl	$12,%edx
	movl	%edi,%eax
	call	SYSTEM_SYSFREEMEM_VAR$PFREELISTS$PMEMCHUNK_VAR$$LONGWORD
	movl	%eax,(%esp)
	jmp	Lj15013
Lj15006:
	movl	%esi,%edx
	movl	%edi,%eax
	call	SYSTEM_SYSFREEMEM_FIXED$PFREELISTS$PMEMCHUNK_FIXED$$LONGWORD
	movl	%eax,(%esp)
Lj15013:
Lj14993:
	movl	(%esp),%eax
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_FINISH_WAITFIXEDLIST$PFREELISTS:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	jmp	Lj15023
	.balign 4,0x90
Lj15022:
	movl	156(%ebx),%esi
	movl	4(%esi),%eax
	movl	%eax,156(%ebx)
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_SYSFREEMEM_FIXED$PFREELISTS$PMEMCHUNK_FIXED$$LONGWORD
Lj15023:
	movl	156(%ebx),%eax
	testl	%eax,%eax
	jne	Lj15022
Lj15024:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_TRY_FINISH_WAITFIXEDLIST$PFREELISTS$$BOOLEAN:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%esi
	movl	156(%esi),%eax
	testl	%eax,%eax
	jne	Lj15036
	movb	$0,%bl
	jmp	Lj15033
Lj15036:
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	movl	%esi,%eax
	call	SYSTEM_FINISH_WAITFIXEDLIST$PFREELISTS
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
	movb	$1,%bl
Lj15033:
	movb	%bl,%al
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_FINISH_WAITVARLIST$PFREELISTS:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	jmp	Lj15050
	.balign 4,0x90
Lj15049:
	movl	160(%ebx),%esi
	movl	12(%esi),%eax
	movl	%eax,160(%ebx)
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_SYSFREEMEM_VAR$PFREELISTS$PMEMCHUNK_VAR$$LONGWORD
Lj15050:
	movl	160(%ebx),%eax
	testl	%eax,%eax
	jne	Lj15049
Lj15051:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_TRY_FINISH_WAITVARLIST$PFREELISTS:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	160(%ebx),%eax
	testl	%eax,%eax
	je	Lj15060
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	movl	%ebx,%eax
	call	SYSTEM_FINISH_WAITVARLIST$PFREELISTS
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
Lj15060:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSFREEMEMSIZE$POINTER$LONGWORD$$LONGWORD
SYSTEM_SYSFREEMEMSIZE$POINTER$LONGWORD$$LONGWORD:
	subl	$4,%esp
	movl	%ebx,(%esp)
	testl	%edx,%edx
	jne	Lj15073
	movl	$0,%ebx
	jmp	Lj15070
Lj15073:
	call	SYSTEM_SYSFREEMEM$POINTER$$LONGWORD
	movl	%eax,%ebx
Lj15070:
	movl	%ebx,%eax
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSMEMSIZE$POINTER$$LONGWORD
SYSTEM_SYSMEMSIZE$POINTER$$LONGWORD:
	subl	$4,%eax
	movl	(%eax),%eax
	movl	%eax,%edx
	andl	$1,%edx
	jne	Lj15085
	movl	%eax,%edx
	andl	$-16,%edx
	movl	%edx,%eax
	subl	$12,%eax
	jmp	Lj15088
Lj15085:
	movl	%eax,%edx
	andl	$4080,%edx
	movl	%edx,%eax
	subl	$4,%eax
Lj15088:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSALLOCMEM$LONGWORD$$POINTER
SYSTEM_SYSALLOCMEM$LONGWORD$$POINTER:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	TC_SYSTEM_MEMORYMANAGER+4,%edx
	call	*%edx
	movl	%eax,%ebx
	testl	%eax,%eax
	je	Lj15098
	movl	%ebx,%eax
	movl	TC_SYSTEM_MEMORYMANAGER+24,%edx
	call	*%edx
	movl	%eax,%edx
	movl	%ebx,%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
Lj15098:
	movl	%ebx,%eax
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSTRYRESIZEMEM$POINTER$LONGWORD$$BOOLEAN
SYSTEM_SYSTRYRESIZEMEM$POINTER$LONGWORD$$BOOLEAN:
	subl	$24,%esp
	movl	%ebx,12(%esp)
	movl	%esi,16(%esp)
	movl	%edi,20(%esp)
	movl	%eax,%esi
	movb	$0,8(%esp)
	movl	(%esi),%eax
	subl	$4,%eax
	movl	(%eax),%ecx
	movl	%ecx,%eax
	andl	$1,%eax
	je	Lj15114
	movl	%ecx,%ebx
	andl	$4080,%ebx
	cmpl	$524,%edx
	jnbe	Lj15107
	movl	%edx,%eax
	addl	$19,%eax
	andl	$-16,%eax
	cmpl	%ebx,%eax
	jnbe	Lj15107
	movb	$1,8(%esp)
	jmp	Lj15107
Lj15114:
	cmpl	$264,%edx
	jnb	Lj15123
	movb	$0,8(%esp)
	jmp	Lj15107
Lj15123:
	andl	$-16,%ecx
	movl	%ecx,%ebx
	addl	$12,%edx
	addl	$15,%edx
	andl	$-16,%edx
	movl	%edx,4(%esp)
	cmpl	4(%esp),%ebx
	jnae	Lj15131
	movl	%ebx,%eax
	subl	$16,%eax
	cmpl	4(%esp),%eax
	jnb	Lj15131
	movb	$1,8(%esp)
	jmp	Lj15107
Lj15131:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15137
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj15138
Lj15137:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj15138:
	movl	%eax,(%esp)
	movl	(%esi),%eax
	subl	$12,%eax
	movl	%eax,%esi
	movl	4(%esi),%eax
	cmpl	(%esp),%eax
	jne	Lj15107
	movl	%ebx,%edi
	movl	%esi,%eax
	call	SYSTEM_TRY_CONCAT_FREE_CHUNK_FORWARD$PMEMCHUNK_VAR$$BOOLEAN
	testb	%al,%al
	je	Lj15146
	movl	8(%esi),%eax
	andl	$-16,%eax
	movl	%eax,%ebx
Lj15146:
	cmpl	%ebx,4(%esp)
	jna	Lj15152
	movl	(%esp),%eax
	leal	164(%eax),%edx
	movl	%ebx,%eax
	subl	%edi,%eax
	addl	%eax,12(%edx)
	movl	12(%edx),%eax
	cmpl	4(%edx),%eax
	jna	Lj15107
	movl	12(%edx),%eax
	movl	%eax,4(%edx)
	jmp	Lj15107
Lj15152:
	cmpl	4(%esp),%ebx
	jna	Lj15161
	movl	4(%esp),%edx
	movl	%esi,%eax
	call	SYSTEM_SPLIT_BLOCK$PMEMCHUNK_VAR$LONGWORD$$LONGWORD
	movl	%eax,%ebx
Lj15161:
Lj15159:
	movl	(%esp),%eax
	leal	164(%eax),%edx
	movl	%ebx,%eax
	subl	%edi,%eax
	addl	%eax,12(%edx)
	movl	12(%edx),%eax
	cmpl	4(%edx),%eax
	jna	Lj15171
	movl	12(%edx),%eax
	movl	%eax,4(%edx)
Lj15171:
	movb	$1,8(%esp)
Lj15107:
	movb	8(%esp),%al
	movl	12(%esp),%ebx
	movl	16(%esp),%esi
	movl	20(%esp),%edi
	addl	$24,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSREALLOCMEM$POINTER$LONGWORD$$POINTER
SYSTEM_SYSREALLOCMEM$POINTER$LONGWORD$$POINTER:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%edi
	movl	%edx,%ebx
	testl	%ebx,%ebx
	jne	Lj15179
	movl	(%edi),%eax
	testl	%eax,%eax
	je	Lj15186
	movl	(%edi),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+8,%edx
	call	*%edx
	movl	$0,(%edi)
	jmp	Lj15186
Lj15179:
	movl	(%edi),%eax
	testl	%eax,%eax
	jne	Lj15188
	movl	%ebx,%eax
	movl	TC_SYSTEM_MEMORYMANAGER+4,%edx
	call	*%edx
	movl	%eax,(%edi)
	jmp	Lj15193
Lj15188:
	movl	%ebx,%edx
	movl	%edi,%eax
	call	SYSTEM_SYSTRYRESIZEMEM$POINTER$LONGWORD$$BOOLEAN
	testb	%al,%al
	jne	Lj15195
	movl	(%edi),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+24,%edx
	call	*%edx
	movl	%eax,%edx
	cmpl	$528,%edx
	jnb	Lj15205
	movl	%edx,%eax
	leal	16(,%eax,2),%eax
	cmpl	%eax,%ebx
	jna	Lj15212
	movl	%ebx,%eax
	jmp	Lj15212
Lj15205:
	movl	%ebx,%eax
Lj15212:
	movl	%edx,%ebx
	cmpl	%ebx,%eax
	jnb	Lj15218
	movl	%eax,%ebx
Lj15218:
	movl	TC_SYSTEM_MEMORYMANAGER+4,%edx
	call	*%edx
	movl	%eax,%esi
	testl	%eax,%eax
	je	Lj15226
	movl	%esi,%edx
	movl	(%edi),%eax
	movl	%ebx,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj15226:
	movl	(%edi),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+8,%edx
	call	*%edx
	movl	%esi,(%edi)
Lj15195:
Lj15193:
Lj15186:
	movl	(%edi),%eax
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_INITHEAPTHREAD:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movw	U_SYSTEM_HEAP_LOCK_USE,%ax
	testw	%ax,%ax
	jng	Lj15242
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	incw	U_SYSTEM_HEAP_LOCK_USE
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
Lj15242:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15249
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	movl	%eax,%ebx
	jmp	Lj15250
Lj15249:
	movl	$U_SYSTEM_FREELISTS+4,%ebx
Lj15250:
	movl	%ebx,%eax
	movb	$0,%cl
	movl	$184,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	TC_SYSTEM_GROWHEAPSIZESMALL,%eax
	movl	%eax,144(%ebx)
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_INITHEAP:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movw	$0,U_SYSTEM_HEAP_LOCK_USE
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15265
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	movl	%eax,%ebx
	jmp	Lj15266
Lj15265:
	movl	$U_SYSTEM_FREELISTS+4,%ebx
Lj15266:
	movl	%ebx,%eax
	movb	$0,%cl
	movl	$184,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	TC_SYSTEM_GROWHEAPSIZESMALL,%eax
	movl	%eax,144(%ebx)
	movl	$U_SYSTEM_ORPHANED_FREELISTS,%eax
	movb	$0,%cl
	movl	$184,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_RELOCATEHEAP:
	movw	U_SYSTEM_HEAP_LOCK_USE,%ax
	testw	%ax,%ax
	jg	Lj15281
	movw	$1,U_SYSTEM_HEAP_LOCK_USE
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_INITCRITICALSECTION$TRTLCRITICALSECTION
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15291
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj15292
Lj15291:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj15292:
	movl	%eax,%edx
	call	SYSTEM_MODIFY_FREELISTS$PFREELISTS$PFREELISTS$$POSCHUNK
	movl	TC_SYSTEM_MEMORYMANAGER+36,%eax
	testl	%eax,%eax
	je	Lj15298
	movl	TC_SYSTEM_MEMORYMANAGER+36,%eax
	call	*%eax
Lj15298:
Lj15281:
	ret

.text
	.balign 4,0x90
SYSTEM_FINALIZEHEAP:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15303
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	movl	%eax,%ebx
	jmp	Lj15304
Lj15303:
	movl	$U_SYSTEM_FREELISTS+4,%ebx
Lj15304:
	movw	U_SYSTEM_HEAP_LOCK_USE,%ax
	testw	%ax,%ax
	jng	Lj15306
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	movl	%ebx,%eax
	call	SYSTEM_FINISH_WAITFIXEDLIST$PFREELISTS
	movl	%ebx,%eax
	call	SYSTEM_FINISH_WAITVARLIST$PFREELISTS
Lj15306:
	movl	(%ebx),%esi
	jmp	Lj15316
	.balign 4,0x90
Lj15315:
	movl	4(%esi),%edi
	movl	(%esi),%eax
	andl	$1,%eax
	jne	Lj15321
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_FREE_OSCHUNK$PFREELISTS$POSCHUNK
	jmp	Lj15326
Lj15321:
	andl	$-2,(%esi)
Lj15326:
	movl	%edi,%esi
Lj15316:
	testl	%esi,%esi
	jne	Lj15315
Lj15317:
	movl	$0,(%ebx)
	movl	$0,136(%ebx)
	movw	U_SYSTEM_HEAP_LOCK_USE,%ax
	testw	%ax,%ax
	jng	Lj15336
	movl	$U_SYSTEM_ORPHANED_FREELISTS,%edx
	movl	%ebx,%eax
	call	SYSTEM_MODIFY_FREELISTS$PFREELISTS$PFREELISTS$$POSCHUNK
	movl	%eax,%esi
	testl	%eax,%eax
	je	Lj15344
	movl	U_SYSTEM_ORPHANED_FREELISTS+148,%eax
	movl	%eax,12(%esi)
	cmpl	$0,U_SYSTEM_ORPHANED_FREELISTS+148
	je	Lj15348
	movl	U_SYSTEM_ORPHANED_FREELISTS+148,%eax
	movl	%esi,8(%eax)
Lj15348:
	movl	148(%ebx),%eax
	movl	%eax,U_SYSTEM_ORPHANED_FREELISTS+148
Lj15344:
	decw	U_SYSTEM_HEAP_LOCK_USE
	movw	U_SYSTEM_HEAP_LOCK_USE,%ax
	testw	%ax,%ax
	seteb	%bl
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
	testb	%bl,%bl
	je	Lj15358
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_DONECRITICALSECTION$TRTLCRITICALSECTION
Lj15358:
Lj15336:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INITTHREAD$LONGWORD
SYSTEM_INITTHREAD$LONGWORD:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	call	SYSTEM_SYSRESETFPU
	call	SYSTEM_SYSINITFPU
	call	SYSTEM_INITHEAPTHREAD
	movl	TC_SYSTEM_MEMORYMANAGER+28,%eax
	testl	%eax,%eax
	je	Lj15364
	movl	TC_SYSTEM_MEMORYMANAGER+28,%eax
	call	*%eax
Lj15364:
	cmpl	$0,U_SYSTEM_WIDESTRINGMANAGER+72
	je	Lj15366
	movl	U_SYSTEM_WIDESTRINGMANAGER+72,%eax
	call	*%eax
Lj15366:
	call	SYSTEM_SYSINITEXCEPTIONS
	call	SYSTEM_SYSINITSTDIO
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15369
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj15370
Lj15369:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj15370:
	movw	$0,(%eax)
	movl	%ebx,%eax
	call	SYSTEM_CHECKINITIALSTKLEN$LONGWORD$$LONGWORD
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15375
	movl	U_SYSTEM_STACKLENGTH,%eax
	call	*%edx
	jmp	Lj15376
Lj15375:
	movl	$U_SYSTEM_STACKLENGTH+4,%eax
Lj15376:
	movl	%ebx,(%eax)
	call	SYSTEM_SPTR$$POINTER
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15379
	movl	U_SYSTEM_STACKLENGTH,%eax
	call	*%edx
	jmp	Lj15380
Lj15379:
	movl	$U_SYSTEM_STACKLENGTH+4,%eax
Lj15380:
	movl	(%eax),%eax
	subl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15381
	movl	U_SYSTEM_STACKBOTTOM,%eax
	call	*%edx
	jmp	Lj15382
Lj15381:
	movl	$U_SYSTEM_STACKBOTTOM+4,%eax
Lj15382:
	movl	%ebx,(%eax)
	movl	U_SYSTEM_CURRENTTM+48,%eax
	call	*%eax
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15385
	movl	U_SYSTEM_THREADID,%eax
	call	*%edx
	jmp	Lj15386
Lj15385:
	movl	$U_SYSTEM_THREADID+4,%eax
Lj15386:
	movl	%ebx,(%eax)
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DONETHREAD
SYSTEM_DONETHREAD:
	cmpl	$0,U_SYSTEM_WIDESTRINGMANAGER+76
	je	Lj15390
	movl	U_SYSTEM_WIDESTRINGMANAGER+76,%eax
	call	*%eax
Lj15390:
	call	SYSTEM_FINALIZEHEAP
	movl	TC_SYSTEM_MEMORYMANAGER+32,%eax
	testl	%eax,%eax
	je	Lj15392
	movl	TC_SYSTEM_MEMORYMANAGER+32,%eax
	call	*%eax
Lj15392:
	call	SYSTEM_SYSFLUSHSTDIO
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15395
	movl	U_SYSTEM_THREADID,%eax
	call	*%edx
	jmp	Lj15396
Lj15395:
	movl	$U_SYSTEM_THREADID+4,%eax
Lj15396:
	movl	$0,(%eax)
	cmpl	$0,U_SYSTEM_CURRENTTM+84
	je	Lj15398
	movl	U_SYSTEM_CURRENTTM+84,%eax
	call	*%eax
Lj15398:
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BEGINTHREAD$TTHREADFUNC$$LONGWORD
SYSTEM_BEGINTHREAD$TTHREADFUNC$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,%ecx
	pushl	$0
	pushl	$0
	leal	-4(%ebp),%eax
	pushl	%eax
	movl	$4194304,%edx
	movl	$0,%eax
	call	SYSTEM_BEGINTHREAD$crc81B914C6
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BEGINTHREAD$TTHREADFUNC$POINTER$$LONGWORD
SYSTEM_BEGINTHREAD$TTHREADFUNC$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,%ecx
	pushl	%edx
	pushl	$0
	leal	-4(%ebp),%eax
	pushl	%eax
	movl	$4194304,%edx
	movl	$0,%eax
	call	SYSTEM_BEGINTHREAD$crc81B914C6
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BEGINTHREAD$TTHREADFUNC$POINTER$LONGWORD$$LONGWORD
SYSTEM_BEGINTHREAD$TTHREADFUNC$POINTER$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	pushl	%edx
	pushl	$0
	pushl	%ecx
	movl	%eax,%ecx
	movl	$4194304,%edx
	movl	$0,%eax
	call	SYSTEM_BEGINTHREAD$crc81B914C6
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BEGINTHREAD$TTHREADFUNC$POINTER$LONGWORD$LONGWORD$$LONGWORD
SYSTEM_BEGINTHREAD$TTHREADFUNC$POINTER$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,%eax
	movl	8(%ebp),%edx
	pushl	%esi
	pushl	$0
	pushl	%eax
	movl	$0,%eax
	movl	%ebx,%ecx
	call	SYSTEM_BEGINTHREAD$crc81B914C6
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_ENDTHREAD
SYSTEM_ENDTHREAD:
	movl	$0,%eax
	call	SYSTEM_ENDTHREAD$LONGWORD
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BEGINTHREAD$crc81B914C6
SYSTEM_BEGINTHREAD$crc81B914C6:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%ebx
	movl	%edx,%eax
	movl	16(%ebp),%esi
	movl	12(%ebp),%edx
	movl	8(%ebp),%edi
	pushl	%esi
	pushl	%edx
	pushl	%edi
	movl	U_SYSTEM_CURRENTTM+8,%esi
	movl	%eax,%edx
	movl	%ebx,%eax
	call	*%esi
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSTEM_FLUSHTHREAD
SYSTEM_FLUSHTHREAD:
	call	SYSTEM_SYSFLUSHSTDIO
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ENDTHREAD$LONGWORD
SYSTEM_ENDTHREAD$LONGWORD:
	movl	U_SYSTEM_CURRENTTM+12,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SUSPENDTHREAD$LONGWORD$$LONGWORD
SYSTEM_SUSPENDTHREAD$LONGWORD$$LONGWORD:
	movl	U_SYSTEM_CURRENTTM+16,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RESUMETHREAD$LONGWORD$$LONGWORD
SYSTEM_RESUMETHREAD$LONGWORD$$LONGWORD:
	movl	U_SYSTEM_CURRENTTM+20,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_CLOSETHREAD$LONGWORD$$LONGWORD
SYSTEM_CLOSETHREAD$LONGWORD$$LONGWORD:
	movl	U_SYSTEM_CURRENTTM+28,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_THREADSWITCH
SYSTEM_THREADSWITCH:
	movl	U_SYSTEM_CURRENTTM+32,%eax
	call	*%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_KILLTHREAD$LONGWORD$$LONGWORD
SYSTEM_KILLTHREAD$LONGWORD$$LONGWORD:
	movl	U_SYSTEM_CURRENTTM+24,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_WAITFORTHREADTERMINATE$LONGWORD$LONGINT$$LONGWORD
SYSTEM_WAITFORTHREADTERMINATE$LONGWORD$LONGINT$$LONGWORD:
	movl	U_SYSTEM_CURRENTTM+36,%ecx
	call	*%ecx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_THREADSETPRIORITY$LONGWORD$LONGINT$$BOOLEAN
SYSTEM_THREADSETPRIORITY$LONGWORD$LONGINT$$BOOLEAN:
	movl	U_SYSTEM_CURRENTTM+40,%ecx
	call	*%ecx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_THREADGETPRIORITY$LONGWORD$$LONGINT
SYSTEM_THREADGETPRIORITY$LONGWORD$$LONGINT:
	movl	U_SYSTEM_CURRENTTM+44,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETCURRENTTHREADID$$LONGWORD
SYSTEM_GETCURRENTTHREADID$$LONGWORD:
	movl	U_SYSTEM_CURRENTTM+48,%eax
	call	*%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INITCRITICALSECTION$TRTLCRITICALSECTION
SYSTEM_INITCRITICALSECTION$TRTLCRITICALSECTION:
	movl	U_SYSTEM_CURRENTTM+52,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DONECRITICALSECTION$TRTLCRITICALSECTION
SYSTEM_DONECRITICALSECTION$TRTLCRITICALSECTION:
	movl	U_SYSTEM_CURRENTTM+56,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION:
	movl	U_SYSTEM_CURRENTTM+60,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_TRYENTERCRITICALSECTION$TRTLCRITICALSECTION$$LONGINT
SYSTEM_TRYENTERCRITICALSECTION$TRTLCRITICALSECTION$$LONGINT:
	movl	U_SYSTEM_CURRENTTM+64,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION:
	movl	U_SYSTEM_CURRENTTM+68,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
SYSTEM_GETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN:
	subl	$12,%esp
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,(%esp)
	movl	(%esp),%edi
	movl	$U_SYSTEM_CURRENTTM,%esi
	cld
	movl	$38,%ecx
	rep
	movsl
	movb	$1,%al
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETTHREADMANAGER$TTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
SYSTEM_SETTHREADMANAGER$TTHREADMANAGER$TTHREADMANAGER$$BOOLEAN:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	%edx,%eax
	call	SYSTEM_GETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
	movl	%ebx,%eax
	call	SYSTEM_SETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
SYSTEM_SETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%esi
	movb	$1,%bl
	cmpl	$0,U_SYSTEM_CURRENTTM+4
	je	Lj15582
	movl	U_SYSTEM_CURRENTTM+4,%eax
	call	*%eax
	movb	%al,%bl
Lj15582:
	testb	%bl,%bl
	je	Lj15586
	movl	$U_SYSTEM_CURRENTTM,%edi
	cld
	movl	$38,%ecx
	rep
	movsl
	cmpl	$0,U_SYSTEM_CURRENTTM
	je	Lj15590
	movl	U_SYSTEM_CURRENTTM,%eax
	call	*%eax
	movb	%al,%bl
Lj15590:
Lj15586:
	movb	%bl,%al
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER
SYSTEM_BASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	%eax,%ebx
	movb	%dl,%al
	pushl	8(%ebp)
	movl	U_SYSTEM_CURRENTTM+88,%esi
	movb	%al,%dl
	movl	%ebx,%eax
	call	*%esi
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_BASICEVENTDESTROY$POINTER
SYSTEM_BASICEVENTDESTROY$POINTER:
	movl	U_SYSTEM_CURRENTTM+92,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BASICEVENTRESETEVENT$POINTER
SYSTEM_BASICEVENTRESETEVENT$POINTER:
	movl	U_SYSTEM_CURRENTTM+96,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BASICEVENTSETEVENT$POINTER
SYSTEM_BASICEVENTSETEVENT$POINTER:
	movl	U_SYSTEM_CURRENTTM+100,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT
SYSTEM_BASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT:
	movl	U_SYSTEM_CURRENTTM+104,%ecx
	call	*%ecx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RTLEVENTCREATE$$PRTLEVENT
SYSTEM_RTLEVENTCREATE$$PRTLEVENT:
	movl	U_SYSTEM_CURRENTTM+108,%eax
	call	*%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RTLEVENTDESTROY$PRTLEVENT
SYSTEM_RTLEVENTDESTROY$PRTLEVENT:
	movl	U_SYSTEM_CURRENTTM+112,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RTLEVENTSETEVENT$PRTLEVENT
SYSTEM_RTLEVENTSETEVENT$PRTLEVENT:
	movl	U_SYSTEM_CURRENTTM+116,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RTLEVENTRESETEVENT$PRTLEVENT
SYSTEM_RTLEVENTRESETEVENT$PRTLEVENT:
	movl	U_SYSTEM_CURRENTTM+120,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RTLEVENTWAITFOR$PRTLEVENT
SYSTEM_RTLEVENTWAITFOR$PRTLEVENT:
	movl	U_SYSTEM_CURRENTTM+124,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RTLEVENTWAITFOR$PRTLEVENT$LONGINT
SYSTEM_RTLEVENTWAITFOR$PRTLEVENT$LONGINT:
	movl	U_SYSTEM_CURRENTTM+132,%ecx
	call	*%ecx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RTLEVENTSYNC$TRTLMETHOD$TPROCEDURE
SYSTEM_RTLEVENTSYNC$TRTLMETHOD$TPROCEDURE:
	subl	$12,%esp
	movl	%eax,(%esp)
	movl	(%esp),%ecx
	movl	(%ecx),%eax
	movl	%eax,4(%esp)
	movl	4(%ecx),%eax
	movl	%eax,8(%esp)
	leal	4(%esp),%eax
	movl	U_SYSTEM_CURRENTTM+128,%ecx
	call	*%ecx
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_INIT_UNIT_THREADVARS$PLTVINITENTRY:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	jmp	Lj15660
	.balign 4,0x90
Lj15659:
	movl	(%ebx),%eax
	movl	4(%ebx),%edx
	movl	U_SYSTEM_CURRENTTM+72,%ecx
	call	*%ecx
	addl	$8,%ebx
Lj15660:
	movl	(%ebx),%eax
	testl	%eax,%eax
	jne	Lj15659
Lj15661:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_INIT_ALL_UNIT_THREADVARS:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movw	FPC_THREADVARTABLES,%si
	movw	$1,%bx
	cmpw	%bx,%si
	jl	Lj15669
	decw	%bx
	.balign 4,0x90
Lj15670:
	incw	%bx
	movw	%bx,%ax
	andl	$65535,%eax
	movl	FPC_THREADVARTABLES(,%eax,4),%eax
	call	SYSTEM_INIT_UNIT_THREADVARS$PLTVINITENTRY
	cmpw	%bx,%si
	jg	Lj15670
Lj15669:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_COPY_UNIT_THREADVARS$PLTVINITENTRY:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%edi
	jmp	Lj15676
	.balign 4,0x90
Lj15675:
	movl	(%edi),%eax
	movl	(%eax),%eax
	movl	U_SYSTEM_CURRENTTM+76,%edx
	call	*%edx
	movl	%eax,%ebx
	movl	(%edi),%eax
	addl	$4,%eax
	movl	%eax,%esi
	movl	4(%edi),%ecx
	movl	%ebx,%edx
	movl	%esi,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	addl	$8,%edi
Lj15676:
	movl	(%edi),%eax
	testl	%eax,%eax
	jne	Lj15675
Lj15677:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_COPY_ALL_UNIT_THREADVARS:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movw	FPC_THREADVARTABLES,%si
	movw	$1,%bx
	cmpw	%bx,%si
	jl	Lj15693
	decw	%bx
	.balign 4,0x90
Lj15694:
	incw	%bx
	movw	%bx,%ax
	andl	$65535,%eax
	movl	FPC_THREADVARTABLES(,%eax,4),%eax
	call	SYSTEM_COPY_UNIT_THREADVARS$PLTVINITENTRY
	cmpw	%bx,%si
	jg	Lj15694
Lj15693:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_INITTHREADVARS$POINTER
SYSTEM_INITTHREADVARS$POINTER:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	call	SYSTEM_INIT_ALL_UNIT_THREADVARS
	movl	U_SYSTEM_CURRENTTM+80,%eax
	call	*%eax
	call	SYSTEM_COPY_ALL_UNIT_THREADVARS
	movl	%ebx,FPC_THREADVAR_RELOCATE
	call	SYSTEM_RELOCATEHEAP
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_SYSINITTHREADVAR$LONGWORD$LONGWORD:
	movl	TC_SYSTEM_THREADVARBLOCKSIZE,%ecx
	movl	%ecx,(%eax)
	addl	%edx,TC_SYSTEM_THREADVARBLOCKSIZE
	ret

.text
	.balign 4,0x90
SYSTEM_SYSALLOCATETHREADVARS:
	pushl	%ebp
	movl	%esp,%ebp
	pushl	$19
	pushl	TC_SYSTEM_THREADVARBLOCKSIZE
	movl	TC_SYSTEM_DATAINDEX,%eax
	pushl	%eax
	call	_$dll$doscalls$_index_299
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj15708
	movl	$8,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj15708:
	movl	TC_SYSTEM_DATAINDEX,%eax
	movl	(%eax),%eax
	movb	TC_SYSTEM_THREADVARBLOCKSIZE,%cl
	movl	$0,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSRELOCATETHREADVAR$LONGWORD$$POINTER:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	TC_SYSTEM_DATAINDEX,%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj15726
	call	SYSTEM_SYSALLOCATETHREADVARS
	movl	$16777216,%eax
	call	SYSTEM_INITTHREAD$LONGWORD
Lj15726:
	movl	TC_SYSTEM_DATAINDEX,%eax
	movl	(%eax),%eax
	addl	%ebx,%eax
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_SYSINITMULTITHREADING:
	pushl	%ebp
	movl	%esp,%ebp
	movl	TC_SYSTEM_DATAINDEX,%eax
	testl	%eax,%eax
	jne	Lj15734
	pushl	$TC_SYSTEM_DATAINDEX
	pushl	$1
	call	_$dll$doscalls$_index_454
	addl	$8,%esp
	testl	%eax,%eax
	je	Lj15736
	movw	$8,%ax
	call	SYSTEM_RUNERROR$WORD
Lj15736:
	movl	$SYSTEM_SYSRELOCATETHREADVAR$LONGWORD$$POINTER,%eax
	call	SYSTEM_INITTHREADVARS$POINTER
	movl	$-1,TC_SYSTEM_ISMULTITHREAD
Lj15734:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSFINIMULTITHREADING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	cmpl	$0,TC_SYSTEM_ISMULTITHREAD
	je	Lj15750
	pushl	TC_SYSTEM_DATAINDEX
	call	_$dll$doscalls$_index_455
	popl	%ebx
	testl	%eax,%eax
Lj15752:
	movl	$0,TC_SYSTEM_DATAINDEX
Lj15750:
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSRELEASETHREADVARS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	TC_SYSTEM_DATAINDEX,%eax
	pushl	(%eax)
	call	_$dll$doscalls$_index_304
	popl	%ebx
	movl	TC_SYSTEM_DATAINDEX,%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_THREADMAIN$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	8(%ebp),%ebx
	call	SYSTEM_SYSALLOCATETHREADVARS
	movl	%ebx,%eax
	movl	(%eax),%edx
	movl	%edx,-12(%ebp)
	movl	4(%eax),%edx
	movl	%edx,-8(%ebp)
	movl	8(%eax),%edx
	movl	%edx,-4(%ebp)
	call	fpc_freemem
	movl	-4(%ebp),%eax
	call	SYSTEM_INITTHREAD$LONGWORD
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	call	*%edx
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSBEGINTHREAD$crc81B914C6:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%edx,%esi
	movl	%ecx,%ebx
	movl	16(%ebp),%edi
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	call	SYSTEM_SYSINITMULTITHREADING
	movl	$12,%eax
	call	fpc_getmem
	movl	%ebx,(%eax)
	movl	%edi,4(%eax)
	movl	%eax,%ebx
	movl	%esi,%eax
	movl	%eax,8(%ebx)
	movl	-8(%ebp),%edx
	movl	$0,(%edx)
	pushl	%eax
	pushl	-4(%ebp)
	pushl	%ebx
	movl	$SYSTEM_THREADMAIN$POINTER$$POINTER,%eax
	pushl	%eax
	pushl	-8(%ebp)
	call	_$dll$doscalls$_index_311
	addl	$20,%esp
	testl	%eax,%eax
	jne	Lj15792
	movl	-8(%ebp),%eax
	movl	(%eax),%esi
	jmp	Lj15805
Lj15792:
	movl	$0,%esi
	movl	%ebx,%eax
	call	fpc_freemem
Lj15805:
	movl	%esi,%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$12

.text
	.balign 4,0x90
SYSTEM_SYSENDTHREAD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	%eax,%ebx
	call	SYSTEM_DONETHREAD
	pushl	%ebx
	pushl	$0
	call	_$dll$doscalls$_index_234
	addl	$8,%esp
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSTHREADSWITCH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	pushl	$0
	call	_$dll$doscalls$_index_229
	popl	%ebx
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSSUSPENDTHREAD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	pushl	%eax
	call	_$dll$doscalls$_index_238
	popl	%ebx
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSRESUMETHREAD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	pushl	%eax
	call	_$dll$doscalls$_index_237
	popl	%ebx
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSKILLTHREAD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	pushl	%eax
	call	_$dll$doscalls$_index_111
	popl	%ebx
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSCLOSETHREAD$LONGWORD$$LONGWORD:
	ret

.text
	.balign 4,0x90
SYSTEM_SYSWAITFORTHREADTERMINATE$LONGWORD$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,%ebx
	testl	%ebx,%ebx
	jne	Lj15843
	pushl	$0
	leal	-4(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_349
	addl	$8,%esp
	movl	%eax,%esi
	jmp	Lj15850
Lj15843:
	.balign 4,0x90
Lj15851:
	pushl	$1
	leal	-4(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_349
	addl	$8,%esp
	movl	%eax,%esi
	cmpl	$294,%esi
	jne	Lj15861
	cmpl	$100,%ebx
	jng	Lj15863
	pushl	$100
	call	_$dll$doscalls$_index_229
	popl	%edi
	jmp	Lj15866
Lj15863:
	pushl	%ebx
	call	_$dll$doscalls$_index_229
	popl	%edi
	pushl	$1
	leal	-4(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_349
	addl	$8,%esp
Lj15866:
	subl	$100,%ebx
Lj15861:
	cmpl	$294,%esi
	jne	Lj15853
Lj15873:
	testl	%ebx,%ebx
	jnle	Lj15851
Lj15853:
Lj15850:
	movl	%esi,%eax
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_GETOS2THREADPRIORITY$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%eax,%ebx
	movl	$-1,%esi
	leal	-4(%ebp),%eax
	movl	$32768,%edx
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj15885
	movl	-4(%ebp),%eax
	movl	$32768,%edx
	call	SYSTEM_FREEMEM$POINTER$LONGWORD
	call	SYSTEM_FPC_THREADERROR
	jmp	Lj15890
Lj15885:
	pushl	$32768
	movl	-4(%ebp),%eax
	pushl	%eax
	pushl	$0
	pushl	U_SYSTEM_PROCESSID
	pushl	$0
	pushl	$1
	call	_$dll$doscalls$_index_368
	addl	$24,%esp
	testl	%eax,%eax
	jne	Lj15906
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj15906
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj15906
	movl	-4(%ebp),%eax
	addl	$32768,%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	4(%edx),%ecx
	jmp	Lj15914
	.balign 4,0x90
Lj15913:
	addl	$28,%ecx
Lj15914:
	movl	(%ecx),%edx
	cmpl	$256,%edx
	jne	Lj15915
	movzwl	4(%ecx),%edx
	cmpl	%ebx,%edx
	je	Lj15915
	movl	%ecx,%edx
	addl	$28,%edx
	cmpl	%eax,%edx
	jb	Lj15913
Lj15915:
	movl	(%ecx),%eax
	cmpl	$256,%eax
	jne	Lj15919
	movzwl	4(%ecx),%eax
	cmpl	%ebx,%eax
	jne	Lj15919
	movl	12(%ecx),%esi
Lj15919:
Lj15906:
	movl	-4(%ebp),%eax
	movl	$32768,%edx
	call	SYSTEM_FREEMEM$POINTER$LONGWORD
Lj15890:
	movl	%esi,%eax
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSTHREADSETPRIORITY$LONGWORD$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edx,%esi
	movl	%eax,%ebx
	call	SYSTEM_GETOS2THREADPRIORITY$LONGWORD$$LONGWORD
	cmpl	$65535,%eax
	jna	Lj15934
	movb	$0,-4(%ebp)
	jmp	Lj15937
Lj15934:
	movl	%esi,%edx
	shll	$1,%edx
	movl	%edx,%ecx
	movl	%eax,%edx
	andl	$255,%edx
	addl	%ecx,%edx
	testl	%edx,%edx
	jnl	Lj15941
	movl	%eax,%edx
	andl	$255,%edx
	negl	%edx
	movl	%edx,%ecx
	jmp	Lj15944
Lj15941:
	movl	%eax,%edx
	andl	$255,%edx
	addl	%ecx,%edx
	cmpl	$31,%edx
	jng	Lj15946
	andl	$255,%eax
	movzbl	%al,%edx
	movl	$31,%eax
	subl	%edx,%eax
	movl	%eax,%ecx
Lj15946:
Lj15944:
	pushl	%ebx
	pushl	%ecx
	pushl	$0
	pushl	$2
	call	_$dll$doscalls$_index_236
	addl	$16,%esp
	testl	%eax,%eax
	seteb	-4(%ebp)
Lj15937:
	movb	-4(%ebp),%al
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSTHREADGETPRIORITY$LONGWORD$$LONGINT:
	call	SYSTEM_GETOS2THREADPRIORITY$LONGWORD$$LONGWORD
	movl	%eax,%edx
	shrl	$8,%edx
	andl	$255,%edx
	cmpl	$1,%edx
	jne	Lj15966
	movl	%eax,%edx
	andl	$255,%edx
	movl	%edx,%ecx
	sarl	$31,%ecx
	andl	$1,%ecx
	addl	%ecx,%edx
	sarl	$1,%edx
	subl	$15,%edx
	jmp	Lj15969
Lj15966:
	andl	$255,%eax
	movl	%eax,%ecx
	sarl	$31,%ecx
	andl	$1,%ecx
	addl	%ecx,%eax
	sarl	$1,%eax
	movl	%eax,%edx
Lj15969:
	movl	%edx,%eax
	ret

.text
	.balign 4,0x90
SYSTEM_SYSGETCURRENTTHREADID$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	pushl	$0
	leal	-4(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_312
	addl	$8,%esp
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	(%eax),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSINITCRITICALSECTION$formal:
	pushl	%ebp
	movl	%esp,%ebp
	pushl	$0
	pushl	$0
	pushl	%eax
	pushl	$0
	call	_$dll$doscalls$_index_331
	addl	$16,%esp
	testl	%eax,%eax
	je	Lj15983
	call	SYSTEM_FPC_THREADERROR
Lj15983:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSDONECRITICALSECTION$formal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	%eax,%ebx
	.balign 4,0x90
Lj15994:
	pushl	(%ebx)
	call	_$dll$doscalls$_index_335
	popl	%esi
	testl	%eax,%eax
	je	Lj15994
	pushl	(%ebx)
	call	_$dll$doscalls$_index_333
	popl	%ebx
	testl	%eax,%eax
	je	Lj16000
	call	SYSTEM_FPC_THREADERROR
Lj16000:
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSENTERCRITICALSECTION$formal:
	pushl	%ebp
	movl	%esp,%ebp
	pushl	$-1
	pushl	(%eax)
	call	_$dll$doscalls$_index_334
	addl	$8,%esp
	testl	%eax,%eax
	je	Lj16006
	call	SYSTEM_FPC_THREADERROR
Lj16006:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSTRYENTERCRITICALSECTION$formal$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	pushl	$0
	pushl	(%eax)
	call	_$dll$doscalls$_index_334
	addl	$8,%esp
	testl	%eax,%eax
	jne	Lj16014
	movl	$1,%eax
	jmp	Lj16021
Lj16014:
	movl	$0,%eax
Lj16021:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSLEAVECRITICALSECTION$formal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	pushl	(%eax)
	call	_$dll$doscalls$_index_335
	popl	%ebx
	testl	%eax,%eax
	je	Lj16027
	call	SYSTEM_FPC_THREADERROR
Lj16027:
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSBASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movb	%dl,%bl
	movb	%cl,-56(%ebp)
	movl	$0,-4(%ebp)
	movl	$0,-52(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj16032
	movl	$8,%eax
	call	fpc_getmem
	movl	%eax,%esi
	movl	8(%ebp),%eax
	testl	%eax,%eax
	je	Lj16042
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	movl	$7,%ecx
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-52(%ebp),%eax
	leal	-48(%ebp),%edx
	call	SYSTEM_UPCASE$ANSISTRING$$ANSISTRING
	movl	-48(%ebp),%eax
	movl	$_$SYSTEM$_Ld36,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	je	Lj16042
	movl	8(%ebp),%ecx
	leal	-4(%ebp),%eax
	movl	$_$SYSTEM$_Ld36,%edx
	call	fpc_ansistr_concat
	jmp	Lj16066
Lj16042:
	movl	8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj16066:
	testb	%bl,%bl
	je	Lj16070
	movl	$0,%edi
	jmp	Lj16073
Lj16070:
	movl	$4096,%edi
Lj16073:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj16077
	movzbl	-56(%ebp),%eax
	pushl	%eax
	pushl	%edi
	pushl	%esi
	pushl	$0
	call	_$dll$doscalls$_index_324
	addl	$16,%esp
	movl	%eax,%ebx
	jmp	Lj16090
Lj16077:
	movzbl	-56(%ebp),%eax
	pushl	%eax
	pushl	%edi
	pushl	%esi
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj16103
	movl	$FPC_EMPTYCHAR,%eax
Lj16103:
	pushl	%eax
	call	_$dll$doscalls$_index_324
	addl	$16,%esp
	movl	%eax,%ebx
Lj16090:
	testl	%ebx,%ebx
	je	Lj16105
	movl	%esi,%eax
	call	fpc_freemem
	call	SYSTEM_FPC_THREADERROR
Lj16105:
Lj16032:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-4(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-4(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj16033
	call	FPC_RERAISE
Lj16033:
	movl	%esi,%eax
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_SYSBASICEVENTDESTROY$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	%eax,%ebx
	testl	%ebx,%ebx
	jne	Lj16117
	call	SYSTEM_FPC_THREADERROR
	jmp	Lj16118
Lj16117:
	pushl	(%ebx)
	call	_$dll$doscalls$_index_326
	popl	%esi
	movl	%ebx,%eax
	call	fpc_freemem
Lj16118:
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSBASICEVENTRESETEVENT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,%ebx
	testl	%ebx,%ebx
	jne	Lj16126
	call	SYSTEM_FPC_THREADERROR
	jmp	Lj16127
Lj16126:
	leal	-4(%ebp),%eax
	pushl	%eax
	pushl	(%ebx)
	call	_$dll$doscalls$_index_327
	addl	$8,%esp
Lj16127:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSBASICEVENTSETEVENT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	%eax,%ebx
	testl	%ebx,%ebx
	jne	Lj16135
	call	SYSTEM_FPC_THREADERROR
	jmp	Lj16136
Lj16135:
	pushl	(%ebx)
	call	_$dll$doscalls$_index_328
	popl	%ebx
Lj16136:
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSBASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	testl	%esi,%esi
	jne	Lj16142
	call	SYSTEM_FPC_THREADERROR
	jmp	Lj16143
Lj16142:
	pushl	%ebx
	pushl	(%esi)
	call	_$dll$doscalls$_index_329
	addl	$8,%esp
	movl	%eax,%edx
	testl	%eax,%eax
	je	Lj16152
	subl	$640,%eax
	je	Lj16153
	jmp	Lj16151
Lj16152:
	movl	$0,%eax
	jmp	Lj16150
Lj16153:
	movl	$1,%eax
	jmp	Lj16150
Lj16151:
	movl	$3,%eax
	movl	%edx,4(%esi)
Lj16150:
Lj16143:
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSRTLEVENTCREATE$$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	$-1,-4(%ebp)
	pushl	$0
	pushl	$4096
	leal	-4(%ebp),%eax
	pushl	%eax
	pushl	$0
	call	_$dll$doscalls$_index_324
	addl	$16,%esp
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSRTLEVENTDESTROY$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	pushl	%eax
	call	_$dll$doscalls$_index_326
	popl	%ebx
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSRTLEVENTSETEVENT$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	pushl	%eax
	call	_$dll$doscalls$_index_328
	popl	%ebx
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSRTLEVENTWAITFOR$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	pushl	$-1
	pushl	%eax
	call	_$dll$doscalls$_index_329
	addl	$8,%esp
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSRTLEVENTWAITFORTIMEOUT$PRTLEVENT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	pushl	%edx
	pushl	%eax
	call	_$dll$doscalls$_index_329
	addl	$8,%esp
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSRTLEVENTRESETEVENT$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	leal	-4(%ebp),%edx
	pushl	%edx
	pushl	%eax
	call	_$dll$doscalls$_index_327
	addl	$8,%esp
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_GETCPUCOUNT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	$1,%ebx
	pushl	$4
	leal	-4(%ebp),%eax
	pushl	%eax
	pushl	$26
	pushl	$26
	call	_$dll$doscalls$_index_348
	addl	$16,%esp
	testl	%eax,%eax
	jne	Lj16205
	movl	-4(%ebp),%ebx
Lj16205:
	movl	%ebx,%eax
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INITSYSTEMTHREADS:
	movl	$0,U_SYSTEM_OS2THREADMANAGER
	movl	$0,U_SYSTEM_OS2THREADMANAGER+4
	movl	$SYSTEM_SYSBEGINTHREAD$crc81B914C6,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+8
	movl	$SYSTEM_SYSENDTHREAD$LONGWORD,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+12
	movl	$SYSTEM_SYSSUSPENDTHREAD$LONGWORD$$LONGWORD,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+16
	movl	$SYSTEM_SYSRESUMETHREAD$LONGWORD$$LONGWORD,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+20
	movl	$SYSTEM_SYSKILLTHREAD$LONGWORD$$LONGWORD,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+24
	movl	$SYSTEM_SYSCLOSETHREAD$LONGWORD$$LONGWORD,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+28
	movl	$SYSTEM_SYSTHREADSWITCH,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+32
	movl	$SYSTEM_SYSWAITFORTHREADTERMINATE$LONGWORD$LONGINT$$LONGWORD,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+36
	movl	$SYSTEM_SYSTHREADSETPRIORITY$LONGWORD$LONGINT$$BOOLEAN,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+40
	movl	$SYSTEM_SYSTHREADGETPRIORITY$LONGWORD$$LONGINT,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+44
	movl	$SYSTEM_SYSGETCURRENTTHREADID$$LONGWORD,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+48
	movl	$SYSTEM_SYSINITCRITICALSECTION$formal,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+52
	movl	$SYSTEM_SYSDONECRITICALSECTION$formal,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+56
	movl	$SYSTEM_SYSENTERCRITICALSECTION$formal,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+60
	movl	$SYSTEM_SYSTRYENTERCRITICALSECTION$formal$$LONGINT,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+64
	movl	$SYSTEM_SYSLEAVECRITICALSECTION$formal,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+68
	movl	$SYSTEM_SYSINITTHREADVAR$LONGWORD$LONGWORD,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+72
	movl	$SYSTEM_SYSRELOCATETHREADVAR$LONGWORD$$POINTER,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+76
	movl	$SYSTEM_SYSALLOCATETHREADVARS,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+80
	movl	$SYSTEM_SYSRELEASETHREADVARS,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+84
	movl	$SYSTEM_SYSBASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+88
	movl	$SYSTEM_SYSBASICEVENTDESTROY$POINTER,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+92
	movl	$SYSTEM_SYSBASICEVENTSETEVENT$POINTER,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+100
	movl	$SYSTEM_SYSBASICEVENTRESETEVENT$POINTER,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+96
	movl	$SYSTEM_SYSBASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+104
	movl	$SYSTEM_SYSRTLEVENTCREATE$$PRTLEVENT,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+108
	movl	$SYSTEM_SYSRTLEVENTDESTROY$PRTLEVENT,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+112
	movl	$SYSTEM_SYSRTLEVENTSETEVENT$PRTLEVENT,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+116
	movl	$SYSTEM_SYSRTLEVENTRESETEVENT$PRTLEVENT,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+120
	movl	$SYSTEM_SYSRTLEVENTWAITFOR$PRTLEVENT,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+124
	movl	$SYSTEM_SYSRTLEVENTWAITFORTIMEOUT$PRTLEVENT$LONGINT,%eax
	movl	%eax,U_SYSTEM_OS2THREADMANAGER+132
	movl	$U_SYSTEM_OS2THREADMANAGER,%eax
	call	SYSTEM_SETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
	ret

.text
	.balign 4,0x90
SYSTEM_DODIRSEPARATORS$PCHAR:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	FPC_PCHAR_LENGTH
	movl	$0,%edx
	cmpl	%edx,%eax
	jl	Lj16289
	decl	%edx
	.balign 4,0x90
Lj16290:
	incl	%edx
	movzbl	(%ebx,%edx,1),%ecx
	btl	%ecx,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jnc	Lj16294
	movb	$92,(%ebx,%edx,1)
Lj16294:
	cmpl	%edx,%eax
	jg	Lj16290
Lj16289:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_DODIRSEPARATORS$OPENSTRING:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movzbl	(%eax),%ebx
	movl	$1,%ecx
	cmpl	%ecx,%ebx
	jl	Lj16300
	decl	%ecx
	.balign 4,0x90
Lj16301:
	incl	%ecx
	movb	%cl,%dl
	andl	$255,%edx
	movzbl	(%eax,%edx,1),%edx
	btl	%edx,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jnc	Lj16303
	movb	%cl,%dl
	andl	$255,%edx
	movb	$92,(%eax,%edx,1)
Lj16303:
	cmpl	%ecx,%ebx
	jg	Lj16301
Lj16300:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_DO_CLOSE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	cmpl	$2,%eax
	jng	Lj16309
	pushl	%eax
	call	_$dll$doscalls$_index_257
	popl	%ebx
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16314
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16315
Lj16314:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16315:
	movw	%bx,(%eax)
Lj16309:
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_ERASE$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	pushl	%ebx
	call	_$dll$doscalls$_index_259
	popl	%ebx
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16324
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16325
Lj16324:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16325:
	movw	%bx,(%eax)
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_RENAME$PCHAR$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ebx,%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	movl	%esi,%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	pushl	%esi
	pushl	%ebx
	call	_$dll$doscalls$_index_271
	addl	$8,%esp
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16338
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16339
Lj16338:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16339:
	movw	%bx,(%eax)
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_READ$LONGINT$POINTER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	leal	-4(%ebp),%ebx
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	call	_$dll$doscalls$_index_281
	addl	$16,%esp
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16352
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16353
Lj16352:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16353:
	movw	%bx,(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_WRITE$LONGINT$POINTER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	leal	-4(%ebp),%ebx
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	call	_$dll$doscalls$_index_282
	addl	$16,%esp
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16368
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16369
Lj16368:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16369:
	movw	%bx,(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_FILEPOS$LONGINT$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	leal	-8(%ebp),%edx
	pushl	%edx
	pushl	$1
	pushl	$0
	pushl	$0
	pushl	%eax
	movl	TC_SYSTEM_SYS_DOSSETFILEPTRL,%eax
	call	*%eax
	addl	$20,%esp
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16384
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16385
Lj16384:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16385:
	movw	%bx,(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_SEEK$LONGINT$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	8(%ebp),%edx
	movl	12(%ebp),%ecx
	leal	-8(%ebp),%ebx
	pushl	%ebx
	pushl	$0
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	movl	TC_SYSTEM_SYS_DOSSETFILEPTRL,%eax
	call	*%eax
	addl	$20,%esp
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16400
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16401
Lj16400:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16401:
	movw	%bx,(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_DO_SEEKEND$LONGINT$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	leal	-8(%ebp),%edx
	pushl	%edx
	pushl	$2
	pushl	$0
	pushl	$0
	pushl	%eax
	movl	TC_SYSTEM_SYS_DOSSETFILEPTRL,%eax
	call	*%eax
	addl	$20,%esp
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16414
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16415
Lj16414:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16415:
	movw	%bx,(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_FILESIZE$LONGINT$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	SYSTEM_DO_FILEPOS$LONGINT$$INT64
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ebx,%eax
	call	SYSTEM_DO_SEEKEND$LONGINT$$INT64
	movl	%eax,%esi
	movl	%edx,%edi
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	pushl	%edx
	pushl	%eax
	movl	%ebx,%eax
	call	SYSTEM_DO_SEEK$LONGINT$INT64
	movl	%edi,%edx
	movl	%esi,%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_TRUNCATE$LONGINT$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	%eax,%ebx
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	pushl	%edx
	pushl	%eax
	pushl	%ebx
	movl	TC_SYSTEM_SYS_DOSSETFILESIZEL,%eax
	call	*%eax
	addl	$12,%esp
	movl	%eax,%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16440
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16441
Lj16440:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16441:
	movw	%si,(%eax)
	movl	%ebx,%eax
	call	SYSTEM_DO_SEEKEND$LONGINT$$INT64
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_INCREASE_FILE_HANDLE_COUNT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$10,-4(%ebp)
	leal	-8(%ebp),%eax
	pushl	%eax
	leal	-4(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_382
	addl	$8,%esp
	testl	%eax,%eax
	je	Lj16449
	movb	$0,%al
	jmp	Lj16456
Lj16449:
	movl	-8(%ebp),%edx
	cmpl	TC_SYSTEM_FILEHANDLECOUNT,%edx
	jna	Lj16458
	movl	-8(%ebp),%edx
	movl	%edx,TC_SYSTEM_FILEHANDLECOUNT
	movb	$1,%al
	jmp	Lj16463
Lj16458:
	movb	$0,%al
Lj16463:
Lj16456:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_OPEN$formal$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	movl	%eax,-20(%ebp)
	movl	%ecx,-16(%ebp)
	movl	%edx,%ebx
	movl	%ebx,%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	movl	-16(%ebp),%eax
	andl	$65536,%eax
	jne	Lj16471
	movl	-20(%ebp),%eax
	movl	4(%eax),%edx
	cmpl	$55216,%edx
	jl	Lj16473
	subl	$55216,%edx
	je	Lj16472
	decl	%edx
	jl	Lj16473
	subl	$2,%edx
	jnle	Lj16473
	movl	-20(%ebp),%edx
	movl	(%edx),%eax
	call	SYSTEM_DO_CLOSE$LONGINT
	jmp	Lj16472
	jmp	Lj16472
Lj16473:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16480
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16481
Lj16480:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16481:
	movw	$102,(%eax)
	jmp	Lj16466
Lj16472:
Lj16471:
	movl	-20(%ebp),%eax
	movl	$-1,(%eax)
	movl	$0,%eax
	movl	$0,%edx
	movl	-16(%ebp),%eax
	andl	$247,%eax
	movl	%eax,%ecx
	andl	$112,%eax
	jne	Lj16491
	movl	%ecx,%eax
	orl	$64,%eax
	movl	%eax,%ecx
Lj16491:
	movl	%ecx,%eax
	andl	$3,%eax
	je	Lj16496
	decl	%eax
	je	Lj16497
	decl	%eax
	je	Lj16498
	jmp	Lj16495
Lj16496:
	movl	-20(%ebp),%eax
	movl	$55217,4(%eax)
	jmp	Lj16494
Lj16497:
	movl	-20(%ebp),%eax
	movl	$55218,4(%eax)
	jmp	Lj16494
Lj16498:
	movl	-20(%ebp),%eax
	movl	$55219,4(%eax)
Lj16495:
Lj16494:
	movl	-16(%ebp),%eax
	andl	$4096,%eax
	je	Lj16506
	movl	%edx,%eax
	orl	$2,%eax
	orl	$16,%eax
	movl	%eax,%edx
	jmp	Lj16509
Lj16506:
	movl	%edx,%eax
	orl	$1,%eax
	movl	%eax,%edx
Lj16509:
	movb	(%ebx),%al
	testb	%al,%al
	jne	Lj16513
	movl	-20(%ebp),%esi
	movl	4(%esi),%eax
	cmpl	$55217,%eax
	jl	Lj16466
	subl	$55217,%eax
	je	Lj16516
	decl	%eax
	jl	Lj16466
	subl	$1,%eax
	jle	Lj16517
	decl	%eax
	je	Lj16518
	jmp	Lj16466
Lj16516:
	movl	-20(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj16466
Lj16517:
	movl	-20(%ebp),%eax
	movl	$1,(%eax)
	jmp	Lj16466
Lj16518:
	movl	-20(%ebp),%eax
	movl	$1,(%eax)
	movl	-20(%ebp),%eax
	movl	$55218,4(%eax)
Lj16514:
	jmp	Lj16466
Lj16513:
	movl	$32,%eax
	pushl	$0
	movl	%ecx,-12(%ebp)
	pushl	-12(%ebp)
	movl	%edx,-8(%ebp)
	pushl	-8(%ebp)
	movl	%eax,%esi
	pushl	%esi
	pushl	$0
	pushl	$0
	leal	-4(%ebp),%eax
	pushl	%eax
	pushl	-20(%ebp)
	pushl	%ebx
	movl	TC_SYSTEM_SYS_DOSOPENL,%eax
	call	*%eax
	addl	$36,%esp
	movw	%ax,%di
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16547
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16548
Lj16547:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16548:
	movw	%di,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16551
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16552
Lj16551:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16552:
	movzwl	(%eax),%eax
	cmpl	$4,%eax
	jne	Lj16550
	call	SYSTEM_INCREASE_FILE_HANDLE_COUNT$$BOOLEAN
	testb	%al,%al
	je	Lj16554
	pushl	$0
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	%esi
	pushl	$0
	pushl	$0
	leal	-4(%ebp),%eax
	pushl	%eax
	pushl	-20(%ebp)
	pushl	%ebx
	movl	TC_SYSTEM_SYS_DOSOPENL,%eax
	call	*%eax
	addl	$36,%esp
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16573
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16574
Lj16573:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16574:
	movw	%bx,(%eax)
Lj16554:
Lj16550:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16577
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16578
Lj16577:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16578:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj16576
	movl	-20(%ebp),%eax
	movl	$-1,(%eax)
Lj16576:
	movl	-20(%ebp),%eax
	movl	(%eax),%edx
	cmpl	$-1,%edx
	je	Lj16582
	movl	-16(%ebp),%eax
	andl	$256,%eax
	je	Lj16584
	movl	-20(%ebp),%edx
	movl	(%edx),%eax
	call	SYSTEM_DO_SEEKEND$LONGINT$$INT64
	movl	-20(%ebp),%eax
	movl	$55218,4(%eax)
Lj16584:
Lj16582:
Lj16466:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_ISDEVICE$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movb	$0,%bl
	leal	-8(%ebp),%edx
	pushl	%edx
	leal	-4(%ebp),%edx
	pushl	%edx
	pushl	%eax
	call	_$dll$doscalls$_index_224
	addl	$12,%esp
	testl	%eax,%eax
	jne	Lj16589
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj16602
	movb	$1,%bl
Lj16602:
Lj16589:
	movb	%bl,%al
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FILECLOSEFUNC$TEXTREC:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_CLOSE$LONGINT
	movl	(%esp),%eax
	movl	$-1,(%eax)
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_FILEREADFUNC$TEXTREC:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	8(%eax),%ecx
	movl	(%esp),%eax
	movl	24(%eax),%edx
	movl	(%esp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_READ$LONGINT$POINTER$LONGINT$$LONGINT
	movl	(%esp),%edx
	movl	%eax,20(%edx)
	movl	(%esp),%eax
	movl	$0,16(%eax)
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_FILEWRITEFUNC$TEXTREC:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	(%esp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj16623
	movl	(%esp),%eax
	movl	16(%eax),%ecx
	movl	(%esp),%eax
	movl	24(%eax),%edx
	movl	(%esp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_WRITE$LONGINT$POINTER$LONGINT$$LONGINT
	movl	(%esp),%edx
	cmpl	16(%edx),%eax
	je	Lj16636
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16639
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16640
Lj16639:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16640:
	movw	$101,(%eax)
Lj16636:
	movl	(%esp),%eax
	movl	$0,16(%eax)
Lj16623:
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_FILEOPENFUNC$TEXTREC:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	4(%ebx),%eax
	cmpl	$55217,%eax
	jl	Lj16646
	subl	$55217,%eax
	je	Lj16647
	decl	%eax
	je	Lj16648
	subl	$2,%eax
	je	Lj16649
	jmp	Lj16646
Lj16647:
	movl	$65536,%esi
	jmp	Lj16645
Lj16648:
	movl	$69633,%esi
	jmp	Lj16645
Lj16649:
	movl	$65793,%esi
	jmp	Lj16645
Lj16646:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16658
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16659
Lj16658:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16659:
	movw	$102,(%eax)
	jmp	Lj16643
Lj16645:
	leal	76(%ebx),%edx
	movl	%esi,%ecx
	movl	%ebx,%eax
	call	SYSTEM_DO_OPEN$formal$PCHAR$LONGINT
	movl	$SYSTEM_FILECLOSEFUNC$TEXTREC,%eax
	movl	%eax,40(%ebx)
	movl	$0,36(%ebx)
	movl	4(%ebx),%eax
	cmpl	$55217,%eax
	jne	Lj16671
	movl	$SYSTEM_FILEREADFUNC$TEXTREC,%eax
	movl	%eax,32(%ebx)
	jmp	Lj16674
Lj16671:
	movl	$SYSTEM_FILEWRITEFUNC$TEXTREC,%eax
	movl	%eax,32(%ebx)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16680
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16681
Lj16680:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16681:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16678
	movl	(%ebx),%eax
	call	SYSTEM_DO_ISDEVICE$LONGINT$$BOOLEAN
	testb	%al,%al
	je	Lj16678
	movl	$SYSTEM_FILEWRITEFUNC$TEXTREC,%eax
	movl	%eax,36(%ebx)
Lj16678:
Lj16674:
Lj16643:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ASSIGN$TEXT$SHORTSTRING
SYSTEM_ASSIGN$TEXT$SHORTSTRING:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ebx,%eax
	movb	$0,%cl
	movl	$592,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	$-1,(%ebx)
	movl	$55216,4(%ebx)
	movl	$256,8(%ebx)
	leal	336(%ebx),%eax
	movl	%eax,24(%ebx)
	movl	$SYSTEM_FILEOPENFUNC$TEXTREC,%eax
	movl	%eax,28(%ebx)
	movl	TC_SYSTEM_DEFAULTTEXTLINEBREAKSTYLE,%eax
	testl	%eax,%eax
	je	Lj16706
	decl	%eax
	je	Lj16707
	decl	%eax
	je	Lj16708
	jmp	Lj16705
Lj16706:
	movw	$2561,332(%ebx)
	jmp	Lj16704
Lj16707:
	leal	332(%ebx),%eax
	movl	$_$SYSTEM$_Ld37,%ecx
	movl	$3,%edx
	call	fpc_shortstr_to_shortstr
	jmp	Lj16704
Lj16708:
	movw	$3329,332(%ebx)
Lj16705:
Lj16704:
	movzbl	(%esi),%ecx
	leal	76(%ebx),%edx
	leal	1(%esi),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ASSIGN$TEXT$PCHAR
SYSTEM_ASSIGN$TEXT$PCHAR:
	subl	$260,%esp
	movl	%ebx,256(%esp)
	movl	%eax,%ebx
	movl	%edx,%ecx
	movl	%esp,%eax
	movl	$255,%edx
	call	FPC_PCHAR_TO_SHORTSTR
	movl	%esp,%edx
	movl	%ebx,%eax
	call	SYSTEM_ASSIGN$TEXT$SHORTSTRING
	movl	256(%esp),%ebx
	addl	$260,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ASSIGN$TEXT$CHAR
SYSTEM_ASSIGN$TEXT$CHAR:
	subl	$256,%esp
	andl	$255,%edx
	shll	$8,%edx
	orl	$1,%edx
	movw	%dx,(%esp)
	movl	%esp,%edx
	call	SYSTEM_ASSIGN$TEXT$SHORTSTRING
	addl	$256,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_CLOSE$TEXT
SYSTEM_CLOSE$TEXT:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16749
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16750
Lj16749:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16750:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16745
	movl	4(%ebx),%eax
	cmpl	$55217,%eax
	jl	Lj16752
	subl	$55218,%eax
	jle	Lj16753
	subl	$2,%eax
	jne	Lj16752
Lj16753:
	movl	4(%ebx),%eax
	cmpl	$55218,%eax
	jne	Lj16755
	movl	%ebx,%eax
	movl	32(%ebx),%edx
	call	*%edx
Lj16755:
	movl	(%ebx),%eax
	testl	%eax,%eax
	je	Lj16759
	cmpl	$1,%eax
	je	Lj16759
	cmpl	$2,%eax
	je	Lj16759
	movl	%ebx,%eax
	movl	40(%ebx),%edx
	call	*%edx
Lj16759:
	movl	$55216,4(%ebx)
	movl	$0,16(%ebx)
	movl	$0,20(%ebx)
	jmp	Lj16751
Lj16752:
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
Lj16751:
Lj16745:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_OPENTEXT$TEXT$LONGINT$LONGINT:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	4(%ebx),%eax
	cmpl	$55216,%eax
	jl	Lj16779
	subl	$55216,%eax
	je	Lj16778
	decl	%eax
	jl	Lj16779
	subl	$2,%eax
	jnle	Lj16779
	movl	%ebx,%eax
	call	SYSTEM_CLOSE$TEXT
	jmp	Lj16778
	jmp	Lj16778
Lj16779:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16786
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16787
Lj16786:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16787:
	movw	$102,(%eax)
	jmp	Lj16776
Lj16778:
	movl	%esi,4(%ebx)
	movl	$0,16(%ebx)
	movl	$0,20(%ebx)
	movl	%ebx,%eax
	movl	28(%ebx),%edx
	call	*%edx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16798
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16799
Lj16798:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16799:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj16797
	movl	$55216,4(%ebx)
Lj16797:
Lj16776:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_REWRITE$TEXT
SYSTEM_REWRITE$TEXT:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16806
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16807
Lj16806:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16807:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16802
	movl	%ebx,%eax
	movl	$1,%ecx
	movl	$55218,%edx
	call	SYSTEM_OPENTEXT$TEXT$LONGINT$LONGINT
Lj16802:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RESET$TEXT
SYSTEM_RESET$TEXT:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16818
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16819
Lj16818:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16819:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16814
	movl	%ebx,%eax
	movl	$0,%ecx
	movl	$55217,%edx
	call	SYSTEM_OPENTEXT$TEXT$LONGINT$LONGINT
Lj16814:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_APPEND$TEXT
SYSTEM_APPEND$TEXT:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16830
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16831
Lj16830:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16831:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16826
	movl	%ebx,%eax
	movl	$1,%ecx
	movl	$55220,%edx
	call	SYSTEM_OPENTEXT$TEXT$LONGINT$LONGINT
Lj16826:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FLUSH$TEXT
SYSTEM_FLUSH$TEXT:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16842
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16843
Lj16842:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16843:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16838
	movl	4(%ebx),%eax
	cmpl	$55218,%eax
	je	Lj16845
	movl	4(%ebx),%eax
	cmpl	$55217,%eax
	jne	Lj16847
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16850
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16851
Lj16850:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16851:
	movw	$105,(%eax)
	jmp	Lj16838
Lj16847:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16855
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16856
Lj16855:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16856:
	movw	$103,(%eax)
	jmp	Lj16838
Lj16845:
	movl	%ebx,%eax
	movl	32(%ebx),%edx
	call	*%edx
Lj16838:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ERASE$TEXT
SYSTEM_ERASE$TEXT:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16863
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16864
Lj16863:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16864:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16859
	movl	4(%ebx),%eax
	cmpl	$55216,%eax
	jne	Lj16866
	leal	76(%ebx),%eax
	call	SYSTEM_DO_ERASE$PCHAR
Lj16866:
Lj16859:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RENAME$TEXT$PCHAR
SYSTEM_RENAME$TEXT$PCHAR:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16873
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16874
Lj16873:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16874:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16869
	movl	4(%ebx),%eax
	cmpl	$55216,%eax
	jne	Lj16876
	leal	76(%ebx),%eax
	movl	%esi,%edx
	call	SYSTEM_DO_RENAME$PCHAR$PCHAR
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16883
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16884
Lj16883:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16884:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16882
	movl	%esi,%eax
	call	FPC_PCHAR_LENGTH
	movl	%eax,%ecx
	incl	%ecx
	movl	%esi,%eax
	leal	76(%ebx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj16882:
Lj16876:
Lj16869:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RENAME$TEXT$SHORTSTRING
SYSTEM_RENAME$TEXT$SHORTSTRING:
	subl	$264,%esp
	movl	%ebx,256(%esp)
	movl	%esi,260(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16897
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16898
Lj16897:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16898:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16893
	movzbl	(%esi),%ecx
	movl	%esp,%edx
	leal	1(%esi),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movzbl	(%esi),%eax
	movb	$0,(%esp,%eax,1)
	movl	%esp,%edx
	movl	%ebx,%eax
	call	SYSTEM_RENAME$TEXT$PCHAR
Lj16893:
	movl	256(%esp),%ebx
	movl	260(%esp),%esi
	addl	$264,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RENAME$TEXT$CHAR
SYSTEM_RENAME$TEXT$CHAR:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%eax,%esi
	movb	%dl,%bl
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16915
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16916
Lj16915:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16916:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16911
	movb	%bl,(%esp)
	movb	$0,1(%esp)
	movl	%esp,%edx
	movl	%esi,%eax
	call	SYSTEM_RENAME$TEXT$PCHAR
Lj16911:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_EOF$TEXT$$BOOLEAN
SYSTEM_EOF$TEXT$$BOOLEAN:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16929
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16930
Lj16929:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16930:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj16928
	movb	$1,%bl
	jmp	Lj16925
Lj16928:
	movl	4(%esi),%eax
	cmpl	$55217,%eax
	je	Lj16934
	movl	4(%esi),%eax
	cmpl	$55218,%eax
	jne	Lj16936
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16939
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16940
Lj16939:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16940:
	movw	$104,(%eax)
	jmp	Lj16941
Lj16936:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16944
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16945
Lj16944:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16945:
	movw	$103,(%eax)
Lj16941:
	movb	$1,%bl
	jmp	Lj16925
Lj16934:
	movl	16(%esi),%eax
	cmpl	20(%esi),%eax
	jnge	Lj16949
	movl	%esi,%eax
	movl	32(%esi),%edx
	call	*%edx
	movl	16(%esi),%eax
	cmpl	20(%esi),%eax
	jnge	Lj16953
	movb	$1,%bl
	jmp	Lj16925
Lj16953:
Lj16949:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	je	Lj16957
	movl	24(%esi),%edx
	movl	16(%esi),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	jne	Lj16957
	movb	$1,%bl
	jmp	Lj16959
Lj16957:
	movb	$0,%bl
Lj16959:
Lj16925:
	movb	%bl,%al
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_EOF$$BOOLEAN
SYSTEM_EOF$$BOOLEAN:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16966
	movl	U_SYSTEM_INPUT,%eax
	call	*%edx
	jmp	Lj16967
Lj16966:
	movl	$U_SYSTEM_INPUT+4,%eax
Lj16967:
	call	SYSTEM_EOF$TEXT$$BOOLEAN
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SEEKEOF$TEXT$$BOOLEAN
SYSTEM_SEEKEOF$TEXT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-20(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16972
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16973
Lj16972:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16973:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj16971
	movb	$1,-24(%ebp)
	jmp	Lj16968
Lj16971:
	movl	-20(%ebp),%eax
	movl	4(%eax),%edx
	cmpl	$55217,%edx
	je	Lj16977
	movl	-20(%ebp),%eax
	movl	4(%eax),%edx
	cmpl	$55218,%edx
	jne	Lj16979
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16982
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16983
Lj16982:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16983:
	movw	$104,(%eax)
	jmp	Lj16984
Lj16979:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16987
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16988
Lj16987:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16988:
	movw	$103,(%eax)
Lj16984:
	movb	$1,-24(%ebp)
	jmp	Lj16968
Lj16977:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	$0,%ebx
	movl	$-1,-4(%ebp)
	movl	$-1,%edi
	movl	-20(%ebp),%edx
	movl	(%edx),%eax
	call	SYSTEM_DO_ISDEVICE$LONGINT$$BOOLEAN
	movb	%al,-12(%ebp)
	.balign 4,0x90
Lj17003:
	movl	-20(%ebp),%eax
	movl	16(%eax),%edx
	movl	-20(%ebp),%eax
	cmpl	20(%eax),%edx
	jnge	Lj17007
	incl	%ebx
	movb	-12(%ebp),%al
	testb	%al,%al
	jne	Lj17009
	cmpl	$1,%ebx
	jne	Lj17009
	movl	-20(%ebp),%edx
	movl	(%edx),%eax
	call	SYSTEM_DO_FILEPOS$LONGINT$$INT64
	movl	-20(%ebp),%ecx
	movl	20(%ecx),%esi
	movl	%esi,%ecx
	sarl	$31,%ecx
	subl	%esi,%eax
	sbbl	%ecx,%edx
	movl	%eax,-4(%ebp)
	movl	%edx,%edi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17017
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17018
Lj17017:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17018:
	movw	$0,(%eax)
Lj17009:
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	32(%edx),%ecx
	call	*%ecx
	movl	-20(%ebp),%eax
	movl	16(%eax),%edx
	movl	-20(%ebp),%eax
	cmpl	20(%eax),%edx
	jnge	Lj17022
	decl	%ebx
	movb	$1,-24(%ebp)
	jmp	Lj17005
Lj17022:
Lj17007:
	movl	-20(%ebp),%eax
	movl	24(%eax),%ecx
	movl	-20(%ebp),%eax
	movl	16(%eax),%edx
	movb	(%ecx,%edx,1),%al
	cmpb	$9,%al
	jb	Lj17026
	subb	$10,%al
	jbe	Lj17025
	subb	$3,%al
	je	Lj17025
	subb	$13,%al
	je	Lj17027
	subb	$6,%al
	je	Lj17025
	jmp	Lj17026
Lj17027:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	je	Lj17025
	movb	$1,-24(%ebp)
	jmp	Lj17005
	jmp	Lj17025
Lj17026:
	movb	$0,-24(%ebp)
	jmp	Lj17005
Lj17025:
	movl	-20(%ebp),%eax
	incl	16(%eax)
	jmp	Lj17003
Lj17005:
	movb	-12(%ebp),%al
	testb	%al,%al
	jne	Lj17036
	testl	%ebx,%ebx
	jne	Lj17038
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%eax,16(%edx)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%edx,20(%eax)
	jmp	Lj17043
Lj17038:
	pushl	%edi
	pushl	-4(%ebp)
	movl	-20(%ebp),%edx
	movl	(%edx),%eax
	call	SYSTEM_DO_SEEK$LONGINT$INT64
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17050
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17051
Lj17050:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17051:
	movw	$0,(%eax)
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	32(%edx),%ecx
	call	*%ecx
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%edx,16(%eax)
Lj17043:
Lj17036:
Lj16968:
	movb	-24(%ebp),%al
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SEEKEOF$$BOOLEAN
SYSTEM_SEEKEOF$$BOOLEAN:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17062
	movl	U_SYSTEM_INPUT,%eax
	call	*%edx
	jmp	Lj17063
Lj17062:
	movl	$U_SYSTEM_INPUT+4,%eax
Lj17063:
	call	SYSTEM_SEEKEOF$TEXT$$BOOLEAN
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_EOLN$TEXT$$BOOLEAN
SYSTEM_EOLN$TEXT$$BOOLEAN:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17068
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17069
Lj17068:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17069:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj17067
	movb	$1,%bl
	jmp	Lj17064
Lj17067:
	movl	4(%esi),%eax
	cmpl	$55217,%eax
	je	Lj17073
	movl	4(%esi),%eax
	cmpl	$55218,%eax
	jne	Lj17075
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17078
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17079
Lj17078:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17079:
	movw	$104,(%eax)
	jmp	Lj17080
Lj17075:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17083
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17084
Lj17083:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17084:
	movw	$103,(%eax)
Lj17080:
	movb	$1,%bl
	jmp	Lj17064
Lj17073:
	movl	16(%esi),%eax
	cmpl	20(%esi),%eax
	jnge	Lj17088
	movl	%esi,%eax
	movl	32(%esi),%edx
	call	*%edx
	movl	16(%esi),%eax
	cmpl	20(%esi),%eax
	jnge	Lj17092
	movb	$1,%bl
	jmp	Lj17064
Lj17092:
Lj17088:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	je	Lj17096
	movl	24(%esi),%eax
	movl	16(%esi),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$26,%al
	jne	Lj17096
	movb	$1,%bl
	jmp	Lj17064
Lj17096:
	movl	24(%esi),%edx
	movl	16(%esi),%eax
	movzbl	(%edx,%eax,1),%eax
	cmpl	$10,%eax
	je	Lj17102
	cmpl	$13,%eax
Lj17102:
	seteb	%bl
Lj17064:
	movb	%bl,%al
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_EOLN$$BOOLEAN
SYSTEM_EOLN$$BOOLEAN:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17109
	movl	U_SYSTEM_INPUT,%eax
	call	*%edx
	jmp	Lj17110
Lj17109:
	movl	$U_SYSTEM_INPUT+4,%eax
Lj17110:
	call	SYSTEM_EOLN$TEXT$$BOOLEAN
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SEEKEOLN$TEXT$$BOOLEAN
SYSTEM_SEEKEOLN$TEXT$$BOOLEAN:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17115
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17116
Lj17115:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17116:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj17114
	movb	$1,%bl
	jmp	Lj17111
Lj17114:
	movl	4(%esi),%eax
	cmpl	$55217,%eax
	je	Lj17120
	movl	4(%esi),%eax
	cmpl	$55218,%eax
	jne	Lj17122
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17125
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17126
Lj17125:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17126:
	movw	$104,(%eax)
	jmp	Lj17127
Lj17122:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17130
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17131
Lj17130:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17131:
	movw	$103,(%eax)
Lj17127:
	movb	$1,%bl
	jmp	Lj17111
Lj17120:
	.balign 4,0x90
Lj17134:
	movl	16(%esi),%eax
	cmpl	20(%esi),%eax
	jnge	Lj17138
	movl	%esi,%eax
	movl	32(%esi),%edx
	call	*%edx
	movl	16(%esi),%eax
	cmpl	20(%esi),%eax
	jnge	Lj17142
	movb	$1,%bl
	jmp	Lj17111
Lj17142:
Lj17138:
	movl	24(%esi),%eax
	movl	16(%esi),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$9,%al
	jb	Lj17146
	subb	$9,%al
	je	Lj17145
	decb	%al
	je	Lj17148
	subb	$3,%al
	je	Lj17148
	subb	$13,%al
	je	Lj17147
	subb	$6,%al
	je	Lj17145
	jmp	Lj17146
Lj17147:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	je	Lj17145
	movb	$1,%bl
	jmp	Lj17111
Lj17148:
	movb	$1,%bl
	jmp	Lj17111
	jmp	Lj17145
Lj17146:
	movb	$0,%bl
	jmp	Lj17111
Lj17145:
	incl	16(%esi)
	jmp	Lj17134
Lj17111:
	movb	%bl,%al
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SEEKEOLN$$BOOLEAN
SYSTEM_SEEKEOLN$$BOOLEAN:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17164
	movl	U_SYSTEM_INPUT,%eax
	call	*%edx
	jmp	Lj17165
Lj17164:
	movl	$U_SYSTEM_INPUT+4,%eax
Lj17165:
	call	SYSTEM_SEEKEOLN$TEXT$$BOOLEAN
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETTEXTBUF$TEXT$formal$LONGINT
SYSTEM_SETTEXTBUF$TEXT$formal$LONGINT:
	movl	%edx,24(%eax)
	movl	%ecx,8(%eax)
	movl	$0,16(%eax)
	movl	$0,20(%eax)
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETTEXTLINEENDING$TEXT$SHORTSTRING
SYSTEM_SETTEXTLINEENDING$TEXT$SHORTSTRING:
	subl	$264,%esp
	movl	%ebx,260(%esp)
	movl	%eax,%ebx
	movl	%edx,(%esp)
	leal	4(%esp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	leal	4(%esp),%ecx
	leal	332(%ebx),%eax
	movl	$3,%edx
	call	fpc_shortstr_to_shortstr
	movl	260(%esp),%ebx
	addl	$264,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_get_input
fpc_get_input:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17188
	movl	U_SYSTEM_INPUT,%eax
	call	*%edx
	jmp	Lj17189
Lj17188:
	movl	$U_SYSTEM_INPUT+4,%eax
Lj17189:
	ret

.text
	.balign 4,0x90
.globl	fpc_get_output
fpc_get_output:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17194
	movl	U_SYSTEM_OUTPUT,%eax
	call	*%edx
	jmp	Lj17195
Lj17194:
	movl	$U_SYSTEM_OUTPUT+4,%eax
Lj17195:
	ret

.text
	.balign 4,0x90
SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT:
	subl	$20,%esp
	movl	%ebx,8(%esp)
	movl	%esi,12(%esp)
	movl	%edi,16(%esp)
	movl	%eax,4(%esp)
	movl	%ecx,(%esp)
	movl	%edx,%ebx
	movl	$0,%esi
	movl	4(%esp),%eax
	movl	8(%eax),%ecx
	movl	4(%esp),%eax
	movl	16(%eax),%edx
	subl	%edx,%ecx
	movl	%ecx,%edi
	jmp	Lj17205
	.balign 4,0x90
Lj17204:
	movl	4(%esp),%eax
	movl	24(%eax),%edx
	movl	4(%esp),%ecx
	movl	16(%ecx),%eax
	leal	(%edx,%eax,1),%edx
	leal	(%ebx,%esi,1),%eax
	movl	%edi,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	subl	%edi,(%esp)
	addl	%edi,%esi
	movl	4(%esp),%eax
	addl	%edi,16(%eax)
	movl	4(%esp),%eax
	movl	4(%esp),%ecx
	movl	32(%ecx),%edx
	call	*%edx
	movl	4(%esp),%eax
	movl	8(%eax),%edx
	movl	4(%esp),%eax
	movl	16(%eax),%ecx
	subl	%ecx,%edx
	movl	%edx,%edi
Lj17205:
	cmpl	%edi,(%esp)
	jg	Lj17204
Lj17206:
	movl	4(%esp),%eax
	movl	24(%eax),%ecx
	movl	4(%esp),%eax
	movl	16(%eax),%edx
	leal	(%ecx,%edx,1),%edx
	leal	(%ebx,%esi,1),%eax
	movl	(%esp),%ebx
	movl	%ebx,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	4(%esp),%eax
	addl	%ebx,16(%eax)
	movl	8(%esp),%ebx
	movl	12(%esp),%esi
	movl	16(%esp),%edi
	addl	$20,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%edi
	movl	%edx,%esi
	movl	8(%edi),%eax
	movl	16(%edi),%edx
	subl	%edx,%eax
	movl	%eax,%ebx
	jmp	Lj17228
	.balign 4,0x90
Lj17227:
	movl	24(%edi),%eax
	movl	16(%edi),%edx
	leal	(%eax,%edx,1),%eax
	movl	%ebx,%edx
	movb	$32,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	subl	%ebx,%esi
	addl	%ebx,16(%edi)
	movl	%edi,%eax
	movl	32(%edi),%edx
	call	*%edx
	movl	8(%edi),%eax
	movl	16(%edi),%edx
	subl	%edx,%eax
	movl	%eax,%ebx
Lj17228:
	cmpl	%ebx,%esi
	jg	Lj17227
Lj17229:
	movl	24(%edi),%eax
	movl	16(%edi),%edx
	leal	(%eax,%edx,1),%eax
	movl	%esi,%ebx
	movl	%ebx,%edx
	movb	$32,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	addl	%ebx,16(%edi)
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_write_end
fpc_write_end:
	movl	%eax,%edx
	movl	36(%edx),%eax
	testl	%eax,%eax
	je	Lj17249
	movl	%edx,%eax
	movl	36(%edx),%edx
	call	*%edx
Lj17249:
	ret

.text
	.balign 4,0x90
.globl	fpc_writeln_end
fpc_writeln_end:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17256
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17257
Lj17256:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17257:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17252
	movl	4(%ebx),%eax
	cmpl	$55217,%eax
	jl	Lj17259
	subl	$55217,%eax
	je	Lj17261
	decl	%eax
	jne	Lj17259
	movzbl	332(%ebx),%ecx
	leal	333(%ebx),%edx
	movl	%ebx,%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	movl	36(%ebx),%eax
	testl	%eax,%eax
	je	Lj17258
	movl	%ebx,%eax
	movl	36(%ebx),%edx
	call	*%edx
	jmp	Lj17258
Lj17261:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17274
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17275
Lj17274:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17275:
	movw	$105,(%eax)
	jmp	Lj17258
Lj17259:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17278
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17279
Lj17278:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17279:
	movw	$103,(%eax)
Lj17258:
Lj17252:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_shortstr
fpc_write_text_shortstr:
.globl	FPC_WRITE_TEXT_SHORTSTR
FPC_WRITE_TEXT_SHORTSTR:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,%edi
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
	jne	Lj17280
	movl	4(%esi),%eax
	cmpl	$55217,%eax
	jl	Lj17287
	subl	$55217,%eax
	je	Lj17289
	decl	%eax
	jne	Lj17287
	movzbl	(%edi),%eax
	cmpl	%ebx,%eax
	jnl	Lj17291
	movzbl	(%edi),%edx
	subl	%edx,%ebx
	movl	%ebx,%edx
	movl	%esi,%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj17291:
	movzbl	(%edi),%ecx
	leal	1(%edi),%edx
	movl	%esi,%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj17286
Lj17289:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17304
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17305
Lj17304:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17305:
	movw	$105,(%eax)
	jmp	Lj17286
Lj17287:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17308
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17309
Lj17308:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17309:
	movw	$103,(%eax)
Lj17286:
Lj17280:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_shortstr_iso
fpc_write_text_shortstr_iso:
.globl	FPC_WRITE_TEXT_SHORTSTR_ISO
FPC_WRITE_TEXT_SHORTSTR_ISO:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%ebx
	movl	%edx,%edi
	movl	%ecx,%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17314
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17315
Lj17314:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17315:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17310
	movl	4(%edi),%eax
	cmpl	$55217,%eax
	jl	Lj17317
	subl	$55217,%eax
	je	Lj17319
	decl	%eax
	jne	Lj17317
	cmpl	$-1,%ebx
	jne	Lj17321
	movzbl	(%esi),%eax
	movl	%eax,%ebx
Lj17321:
	movzbl	(%esi),%eax
	cmpl	%ebx,%eax
	jnl	Lj17325
	movzbl	(%esi),%edx
	movl	%ebx,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edi,%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
	movzbl	(%esi),%ecx
	leal	1(%esi),%edx
	movl	%edi,%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj17316
Lj17325:
	movl	%ebx,%ecx
	leal	1(%esi),%edx
	movl	%edi,%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj17316
Lj17319:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17345
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17346
Lj17345:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17346:
	movw	$105,(%eax)
	jmp	Lj17316
Lj17317:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17349
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17350
Lj17349:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17350:
	movw	$103,(%eax)
Lj17316:
Lj17310:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_pchar_as_array
fpc_write_text_pchar_as_array:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,%esi
	movl	12(%ebp),%edi
	movb	8(%ebp),%bl
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17355
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17356
Lj17355:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17356:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17351
	movl	-8(%ebp),%edx
	movl	4(%edx),%eax
	cmpl	$55217,%eax
	jl	Lj17358
	subl	$55217,%eax
	je	Lj17360
	decl	%eax
	jne	Lj17358
	movl	%esi,%esi
	testb	%bl,%bl
	je	Lj17364
	movl	%edi,%edx
	incl	%edx
	movl	%esi,%eax
	movb	$0,%cl
	call	SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
	movl	%eax,%ebx
	cmpl	$-1,%ebx
	jne	Lj17377
	movl	%edi,%eax
	incl	%eax
	movl	%eax,%ebx
	jmp	Lj17377
Lj17364:
	movl	%edi,%eax
	incl	%eax
	movl	%eax,%ebx
Lj17377:
	cmpl	%ebx,-4(%ebp)
	jng	Lj17381
	movl	-4(%ebp),%edx
	subl	%ebx,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj17381:
	movl	%esi,%edx
	movl	%ebx,%ecx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj17357
Lj17360:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17394
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17395
Lj17394:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17395:
	movw	$105,(%eax)
	jmp	Lj17357
Lj17358:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17398
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17399
Lj17398:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17399:
	movw	$103,(%eax)
Lj17357:
Lj17351:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_write_text_pchar_as_array_iso
fpc_write_text_pchar_as_array_iso:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,%edi
	movl	12(%ebp),%esi
	movb	8(%ebp),%bl
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17404
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17405
Lj17404:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17405:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17400
	movl	-8(%ebp),%edx
	movl	4(%edx),%eax
	cmpl	$55217,%eax
	jl	Lj17407
	subl	$55217,%eax
	je	Lj17409
	decl	%eax
	jne	Lj17407
	movl	%edi,%edi
	testb	%bl,%bl
	je	Lj17413
	movl	%esi,%edx
	incl	%edx
	movl	%edi,%eax
	movb	$0,%cl
	call	SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
	movl	%eax,%ebx
	cmpl	$-1,%ebx
	jne	Lj17426
	movl	%esi,%eax
	incl	%eax
	movl	%eax,%ebx
	jmp	Lj17426
Lj17413:
	movl	%esi,%eax
	incl	%eax
	movl	%eax,%ebx
Lj17426:
	cmpl	$-1,-4(%ebp)
	jne	Lj17430
	movl	%ebx,-4(%ebp)
Lj17430:
	cmpl	%ebx,-4(%ebp)
	jng	Lj17434
	movl	-4(%ebp),%edx
	subl	%ebx,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
	movl	%edi,%edx
	movl	%ebx,%eax
	movl	-8(%ebp),%ebx
	movl	%eax,%ecx
	movl	%ebx,%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj17406
Lj17434:
	movl	%edi,%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj17406
Lj17409:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17454
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17455
Lj17454:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17455:
	movw	$105,(%eax)
	jmp	Lj17406
Lj17407:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17458
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17459
Lj17458:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17459:
	movw	$103,(%eax)
Lj17406:
Lj17400:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_write_text_pchar_as_pointer
fpc_write_text_pchar_as_pointer:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,%esi
	movl	%edx,(%esp)
	movl	%ecx,%ebx
	testl	%ebx,%ebx
	je	Lj17460
Lj17464:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17465
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17466
Lj17465:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17466:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17460
	movl	(%esp),%edx
	movl	4(%edx),%eax
	cmpl	$55217,%eax
	jl	Lj17468
	subl	$55217,%eax
	je	Lj17470
	decl	%eax
	jne	Lj17468
	movl	%ebx,%eax
	call	FPC_PCHAR_LENGTH
	movl	%eax,%edi
	cmpl	%edi,%esi
	jng	Lj17476
	movl	%esi,%edx
	subl	%edi,%edx
	movl	(%esp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj17476:
	movl	%ebx,%edx
	movl	%edi,%ecx
	movl	(%esp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj17467
Lj17470:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17489
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17490
Lj17489:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17490:
	movw	$105,(%eax)
	jmp	Lj17467
Lj17468:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17493
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17494
Lj17493:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17494:
	movw	$103,(%eax)
Lj17467:
Lj17460:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_ansistr
fpc_write_text_ansistr:
.globl	FPC_WRITE_TEXT_ANSISTR
FPC_WRITE_TEXT_ANSISTR:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,(%esp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17499
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17500
Lj17499:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17500:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17495
	movl	4(%esi),%eax
	cmpl	$55217,%eax
	jl	Lj17502
	subl	$55217,%eax
	je	Lj17504
	decl	%eax
	jne	Lj17502
	movl	(%esp),%edi
	testl	%edi,%edi
	je	Lj17507
	movl	-4(%edi),%edi
Lj17507:
	cmpl	%edi,%ebx
	jng	Lj17509
	movl	%ebx,%edx
	subl	%edi,%edx
	movl	%esi,%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj17509:
	testl	%edi,%edi
	jng	Lj17501
	movl	(%esp),%edx
	testl	%edx,%edx
	jne	Lj17518
	movl	$FPC_EMPTYCHAR,%edx
Lj17518:
	movl	%edi,%ecx
	movl	%esi,%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj17501
Lj17504:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17525
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17526
Lj17525:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17526:
	movw	$105,(%eax)
	jmp	Lj17501
Lj17502:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17529
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17530
Lj17529:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17530:
	movw	$103,(%eax)
Lj17501:
Lj17495:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_unicodestr
fpc_write_text_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,-4(%ebp)
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj17533
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj17533
Lj17538:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17539
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17540
Lj17539:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17540:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17533
	movl	4(%esi),%eax
	cmpl	$55217,%eax
	jl	Lj17542
	subl	$55217,%eax
	je	Lj17544
	decl	%eax
	jne	Lj17542
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj17547
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj17547:
	cmpl	%eax,%ebx
	jng	Lj17549
	movl	%ebx,%edx
	subl	%eax,%edx
	movl	%esi,%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj17549:
	leal	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_to_ansistr
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj17560
	movl	$FPC_EMPTYCHAR,%edx
Lj17560:
	movl	-8(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj17563
	movl	-4(%ecx),%ecx
Lj17563:
	movl	%esi,%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj17541
Lj17544:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17568
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17569
Lj17568:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17569:
	movw	$105,(%eax)
	jmp	Lj17541
Lj17542:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17572
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17573
Lj17572:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17573:
	movw	$103,(%eax)
Lj17541:
Lj17533:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-8(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj17534
	call	FPC_RERAISE
Lj17534:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_sint
fpc_write_text_sint:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%ebx,-268(%ebp)
	movl	%esi,-264(%ebp)
	movl	%edi,-260(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,%edi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17584
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17585
Lj17584:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17585:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17580
	pushl	$255
	leal	-256(%ebp),%ecx
	movl	%edi,%eax
	movl	$-1,%edx
	call	fpc_shortstr_sint
	leal	-256(%ebp),%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	FPC_WRITE_TEXT_SHORTSTR
Lj17580:
	movl	-268(%ebp),%ebx
	movl	-264(%ebp),%esi
	movl	-260(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_uint
fpc_write_text_uint:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%ebx,-268(%ebp)
	movl	%esi,-264(%ebp)
	movl	%edi,-260(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,%edi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17604
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17605
Lj17604:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17605:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17600
	pushl	$255
	leal	-256(%ebp),%ecx
	movl	%edi,%eax
	movl	$-1,%edx
	call	fpc_shortstr_uint
	leal	-256(%ebp),%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	FPC_WRITE_TEXT_SHORTSTR
Lj17600:
	movl	-268(%ebp),%ebx
	movl	-264(%ebp),%esi
	movl	-260(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_sint_iso
fpc_write_text_sint_iso:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%ebx,-268(%ebp)
	movl	%esi,-264(%ebp)
	movl	%edi,-260(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,%edi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17624
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17625
Lj17624:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17625:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17620
	pushl	$255
	leal	-256(%ebp),%ecx
	movl	%edi,%eax
	movl	$-1,%edx
	call	fpc_shortstr_sint
	cmpl	$-1,%ebx
	jne	Lj17635
	movl	$11,%ebx
	jmp	Lj17638
Lj17635:
	movzbl	-256(%ebp),%eax
	cmpl	%ebx,%eax
	jng	Lj17640
	movzbl	-256(%ebp),%eax
	movl	%eax,%ebx
Lj17640:
Lj17638:
	leal	-256(%ebp),%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	FPC_WRITE_TEXT_SHORTSTR_ISO
Lj17620:
	movl	-268(%ebp),%ebx
	movl	-264(%ebp),%esi
	movl	-260(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_uint_iso
fpc_write_text_uint_iso:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%ebx,-268(%ebp)
	movl	%esi,-264(%ebp)
	movl	%edi,-260(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,%edi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17653
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17654
Lj17653:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17654:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17649
	pushl	$255
	leal	-256(%ebp),%ecx
	movl	%edi,%eax
	movl	$-1,%edx
	call	fpc_shortstr_uint
	cmpl	$-1,%ebx
	jne	Lj17664
	movl	$11,%ebx
	jmp	Lj17667
Lj17664:
	movzbl	-256(%ebp),%eax
	cmpl	%ebx,%eax
	jng	Lj17669
	movzbl	-256(%ebp),%eax
	movl	%eax,%ebx
Lj17669:
Lj17667:
	leal	-256(%ebp),%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	FPC_WRITE_TEXT_SHORTSTR_ISO
Lj17649:
	movl	-268(%ebp),%ebx
	movl	-264(%ebp),%esi
	movl	-260(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_qword
fpc_write_text_qword:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%ebx,-272(%ebp)
	movl	%esi,-268(%ebp)
	movl	%edi,-264(%ebp)
	movl	%eax,-260(%ebp)
	movl	%edx,%ebx
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17682
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17683
Lj17682:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17683:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17678
	movl	%edi,%edx
	movl	%esi,%eax
	pushl	%eax
	pushl	%edx
	leal	-256(%ebp),%edx
	movl	$255,%ecx
	movl	$-1,%eax
	call	fpc_shortstr_qword
	leal	-256(%ebp),%ecx
	movl	%ebx,%edx
	movl	-260(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR
Lj17678:
	movl	-272(%ebp),%ebx
	movl	-268(%ebp),%esi
	movl	-264(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_write_text_int64
fpc_write_text_int64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%ebx,-272(%ebp)
	movl	%esi,-268(%ebp)
	movl	%edi,-264(%ebp)
	movl	%eax,-260(%ebp)
	movl	%edx,%ebx
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17702
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17703
Lj17702:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17703:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17698
	movl	%edi,%edx
	movl	%esi,%eax
	pushl	%eax
	pushl	%edx
	leal	-256(%ebp),%edx
	movl	$255,%ecx
	movl	$-1,%eax
	call	fpc_shortstr_int64
	leal	-256(%ebp),%ecx
	movl	%ebx,%edx
	movl	-260(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR
Lj17698:
	movl	-272(%ebp),%ebx
	movl	-268(%ebp),%esi
	movl	-264(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_write_text_qword_iso
fpc_write_text_qword_iso:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%ebx,-272(%ebp)
	movl	%esi,-268(%ebp)
	movl	%edi,-264(%ebp)
	movl	%eax,-260(%ebp)
	movl	%edx,%ebx
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17722
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17723
Lj17722:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17723:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17718
	movl	%edi,%edx
	movl	%esi,%eax
	pushl	%eax
	pushl	%edx
	leal	-256(%ebp),%edx
	movl	$255,%ecx
	movl	$-1,%eax
	call	fpc_shortstr_qword
	cmpl	$-1,-260(%ebp)
	jne	Lj17733
	movl	$20,-260(%ebp)
	jmp	Lj17736
Lj17733:
	movzbl	-256(%ebp),%eax
	cmpl	-260(%ebp),%eax
	jng	Lj17738
	movzbl	-256(%ebp),%eax
	movl	%eax,-260(%ebp)
Lj17738:
Lj17736:
	leal	-256(%ebp),%ecx
	movl	%ebx,%edx
	movl	-260(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR_ISO
Lj17718:
	movl	-272(%ebp),%ebx
	movl	-268(%ebp),%esi
	movl	-264(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_write_text_int64_iso
fpc_write_text_int64_iso:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%ebx,-272(%ebp)
	movl	%esi,-268(%ebp)
	movl	%edi,-264(%ebp)
	movl	%eax,-260(%ebp)
	movl	%edx,%ebx
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17751
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17752
Lj17751:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17752:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17747
	movl	%edi,%edx
	movl	%esi,%eax
	pushl	%eax
	pushl	%edx
	leal	-256(%ebp),%edx
	movl	$255,%ecx
	movl	$-1,%eax
	call	fpc_shortstr_int64
	cmpl	$-1,-260(%ebp)
	jne	Lj17762
	movl	$20,-260(%ebp)
	jmp	Lj17765
Lj17762:
	movzbl	-256(%ebp),%eax
	cmpl	-260(%ebp),%eax
	jng	Lj17767
	movzbl	-256(%ebp),%eax
	movl	%eax,-260(%ebp)
Lj17767:
Lj17765:
	leal	-256(%ebp),%ecx
	movl	%ebx,%edx
	movl	-260(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR_ISO
Lj17747:
	movl	-272(%ebp),%ebx
	movl	-268(%ebp),%esi
	movl	-264(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_write_text_float
fpc_write_text_float:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%ebx,-272(%ebp)
	movl	%esi,-268(%ebp)
	movl	%edi,-264(%ebp)
	movl	%eax,%edi
	movl	%edx,%esi
	movl	%ecx,%ebx
	movl	20(%ebp),%eax
	movl	%eax,-260(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17780
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17781
Lj17780:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17781:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17776
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-256(%ebp),%eax
	pushl	%eax
	pushl	$255
	movl	%edi,%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_STR_REAL$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING
	leal	-256(%ebp),%ecx
	movl	-260(%ebp),%edx
	movl	%ebx,%eax
	call	FPC_WRITE_TEXT_SHORTSTR
Lj17776:
	movl	-272(%ebp),%ebx
	movl	-268(%ebp),%esi
	movl	-264(%ebp),%edi
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	fpc_write_text_float_iso
fpc_write_text_float_iso:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%ebx,-272(%ebp)
	movl	%esi,-268(%ebp)
	movl	%edi,-264(%ebp)
	movl	%eax,%edi
	movl	%edx,%esi
	movl	%ecx,%ebx
	movl	20(%ebp),%eax
	movl	%eax,-260(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17804
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17805
Lj17804:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17805:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17800
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-256(%ebp),%eax
	pushl	%eax
	pushl	$255
	movl	%edi,%ecx
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_STR_REAL_ISO$LONGINT$LONGINT$EXTENDED$TREAL_TYPE$OPENSTRING
	leal	-256(%ebp),%ecx
	movl	-260(%ebp),%edx
	movl	%ebx,%eax
	call	FPC_WRITE_TEXT_SHORTSTR
Lj17800:
	movl	-272(%ebp),%ebx
	movl	-268(%ebp),%esi
	movl	-264(%ebp),%edi
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	fpc_write_text_enum
fpc_write_text_enum:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$276,%esp
	movl	%ebx,-276(%ebp)
	movl	%esi,-272(%ebp)
	movl	%edi,-268(%ebp)
	movl	%eax,%esi
	movl	%edx,%edi
	movl	%ecx,%ebx
	movl	12(%ebp),%eax
	movl	%eax,-264(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-260(%ebp)
	movl	-264(%ebp),%edx
	movl	4(%edx),%eax
	cmpl	$55218,%eax
	je	Lj17827
	movl	-264(%ebp),%eax
	movl	4(%eax),%edx
	cmpl	$55217,%edx
	jne	Lj17829
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17832
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17833
Lj17832:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17833:
	movw	$105,(%eax)
	jmp	Lj17824
Lj17829:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17837
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17838
Lj17837:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17838:
	movw	$103,(%eax)
	jmp	Lj17824
Lj17827:
	movl	%edi,%eax
	pushl	%eax
	leal	-256(%ebp),%eax
	pushl	%eax
	pushl	$255
	movl	%esi,%ecx
	movl	%ebx,%eax
	movl	-260(%ebp),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	SYSTEM_FPC_SHORTSTR_ENUM_INTERN$LONGINT$LONGINT$POINTER$POINTER$OPENSTRING$$LONGINT
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17853
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17854
Lj17853:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17854:
	movw	%bx,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17857
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17858
Lj17857:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17858:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17824
	movzbl	-256(%ebp),%ecx
	leal	-255(%ebp),%edx
	movl	-264(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
Lj17824:
	movl	-276(%ebp),%ebx
	movl	-272(%ebp),%esi
	movl	-268(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_write_text_currency
fpc_write_text_currency:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%ebx,-268(%ebp)
	movl	%esi,-264(%ebp)
	movl	%edi,-260(%ebp)
	movl	%eax,%edi
	movl	%edx,%esi
	movl	%ecx,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17869
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17870
Lj17869:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17870:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17865
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$255
	leal	-256(%ebp),%ecx
	movl	%edi,%eax
	movl	%esi,%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	fpc_shortstr_currency
	leal	-256(%ebp),%ecx
	movl	%ebx,%edx
	movl	%esi,%eax
	call	FPC_WRITE_TEXT_SHORTSTR
Lj17865:
	movl	-268(%ebp),%ebx
	movl	-264(%ebp),%esi
	movl	-260(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	fpc_write_text_boolean
fpc_write_text_boolean:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%esi
	movl	%edx,%edi
	movb	%cl,%bl
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17891
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17892
Lj17891:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17892:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17887
	testb	%bl,%bl
	je	Lj17894
	movl	%edi,%edx
	movl	%esi,%eax
	movl	$_$SYSTEM$_Ld19,%ecx
	call	FPC_WRITE_TEXT_SHORTSTR
	jmp	Lj17901
Lj17894:
	movl	%edi,%edx
	movl	%esi,%eax
	movl	$_$SYSTEM$_Ld20,%ecx
	call	FPC_WRITE_TEXT_SHORTSTR
Lj17901:
Lj17887:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_boolean_iso
fpc_write_text_boolean_iso:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%esi
	movl	%edx,%edi
	movb	%cl,%bl
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17912
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17913
Lj17912:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17913:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17908
	cmpl	$-1,%esi
	jne	Lj17915
	movl	$5,%esi
Lj17915:
	testb	%bl,%bl
	je	Lj17919
	movl	%edi,%edx
	movl	%esi,%eax
	movl	$_$SYSTEM$_Ld38,%ecx
	call	FPC_WRITE_TEXT_SHORTSTR_ISO
	jmp	Lj17926
Lj17919:
	movl	%edi,%edx
	movl	%esi,%eax
	movl	$_$SYSTEM$_Ld39,%ecx
	call	FPC_WRITE_TEXT_SHORTSTR_ISO
Lj17926:
Lj17908:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_char
fpc_write_text_char:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%edi
	movl	%edx,%esi
	movb	%cl,%bl
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17937
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17938
Lj17937:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17938:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17933
	movl	4(%esi),%eax
	cmpl	$55218,%eax
	je	Lj17940
	movl	4(%esi),%eax
	cmpl	$55216,%eax
	jne	Lj17942
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17945
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17946
Lj17945:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17946:
	movw	$103,(%eax)
	jmp	Lj17933
Lj17942:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17950
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17951
Lj17950:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17951:
	movw	$105,(%eax)
	jmp	Lj17933
Lj17940:
	cmpl	$1,%edi
	jng	Lj17953
	movl	%edi,%edx
	decl	%edx
	movl	%esi,%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj17953:
	movl	16(%esi),%eax
	cmpl	8(%esi),%eax
	jnge	Lj17959
	movl	%esi,%eax
	movl	32(%esi),%edx
	call	*%edx
Lj17959:
	movl	24(%esi),%edx
	movl	16(%esi),%ecx
	movb	%bl,(%edx,%ecx,1)
	incl	16(%esi)
Lj17933:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_char_iso
fpc_write_text_char_iso:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%edi
	movl	%edx,%esi
	movb	%cl,%bl
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17968
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17969
Lj17968:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17969:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17964
	movl	4(%esi),%eax
	cmpl	$55218,%eax
	je	Lj17971
	movl	4(%esi),%eax
	cmpl	$55216,%eax
	jne	Lj17973
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17976
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17977
Lj17976:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17977:
	movw	$103,(%eax)
	jmp	Lj17964
Lj17973:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17981
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17982
Lj17981:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17982:
	movw	$105,(%eax)
	jmp	Lj17964
Lj17971:
	cmpl	$-1,%edi
	jne	Lj17984
	movl	$1,%edi
Lj17984:
	cmpl	$1,%edi
	jng	Lj17988
	movl	%edi,%edx
	decl	%edx
	movl	%esi,%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
	jmp	Lj17993
Lj17988:
	cmpl	$1,%edi
	jl	Lj17964
Lj17993:
	movl	16(%esi),%eax
	cmpl	8(%esi),%eax
	jnge	Lj17997
	movl	%esi,%eax
	movl	32(%esi),%edx
	call	*%edx
Lj17997:
	movl	24(%esi),%edx
	movl	16(%esi),%ecx
	movb	%bl,(%edx,%ecx,1)
	incl	16(%esi)
Lj17964:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_write_text_widechar
fpc_write_text_widechar:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	movl	%edi,-48(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movw	%cx,%di
	movl	$0,-4(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj18004
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18009
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18010
Lj18009:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18010:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18004
	movl	4(%esi),%eax
	cmpl	$55218,%eax
	je	Lj18012
	movl	4(%esi),%eax
	cmpl	$55216,%eax
	jne	Lj18014
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18017
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18018
Lj18017:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18018:
	movw	$103,(%eax)
	jmp	Lj18004
Lj18014:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18022
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18023
Lj18022:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18023:
	movw	$105,(%eax)
	jmp	Lj18004
Lj18012:
	cmpl	$1,%ebx
	jng	Lj18025
	movl	%ebx,%edx
	decl	%edx
	movl	%esi,%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj18025:
	movl	16(%esi),%eax
	cmpl	8(%esi),%eax
	jnge	Lj18031
	movl	%esi,%eax
	movl	32(%esi),%edx
	call	*%edx
Lj18031:
	leal	-4(%ebp),%edx
	movw	%di,%ax
	call	fpc_uchar_to_ansistr
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj18040
	movl	$FPC_EMPTYCHAR,%edx
Lj18040:
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj18043
	movl	-4(%ecx),%ecx
Lj18043:
	movl	%esi,%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
Lj18004:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-4(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj18005
	call	FPC_RERAISE
Lj18005:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	movl	-48(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%ecx,%esi
	movb	$0,%bl
	movl	16(%eax),%ecx
	cmpl	20(%eax),%ecx
	jnl	Lj18057
	movb	TC_SYSTEM_CTRLZMARKSEOF,%cl
	testb	%cl,%cl
	je	Lj18058
Lj18060:
	movl	24(%eax),%ecx
	movl	16(%eax),%edi
	movb	(%ecx,%edi,1),%cl
	cmpb	$26,%cl
	je	Lj18059
Lj18058:
	movzbl	(%edx),%ecx
	cmpl	%esi,%ecx
	jnl	Lj18062
	incb	(%edx)
	movzbl	(%edx),%esi
	movl	24(%eax),%ecx
	movl	16(%eax),%edi
	movb	(%ecx,%edi,1),%cl
	movb	%cl,(%edx,%esi,1)
Lj18062:
	incl	16(%eax)
	movl	16(%eax),%edx
	cmpl	20(%eax),%edx
	jnge	Lj18066
	movl	%eax,%edx
	movl	32(%eax),%ecx
	movl	%edx,%eax
	call	*%ecx
Lj18066:
	movb	$1,%bl
Lj18059:
Lj18057:
	movb	%bl,%al
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_IGNORESPACES$TEXT$$BOOLEAN:
	subl	$264,%esp
	movl	%ebx,256(%esp)
	movl	%esi,260(%esp)
	movl	%eax,%esi
	movb	$0,(%esp)
	movb	$0,%bl
	movl	16(%esi),%eax
	cmpl	20(%esi),%eax
	jge	Lj18071
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	je	Lj18083
	movl	24(%esi),%eax
	movl	16(%esi),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$26,%al
	jne	Lj18083
	jmp	Lj18071
	.balign 4,0x90
Lj18082:
	movl	%esp,%edx
	movl	%esi,%eax
	movl	$255,%ecx
	call	SYSTEM_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
	testb	%al,%al
	je	Lj18071
	movl	16(%esi),%eax
	cmpl	20(%esi),%eax
	jge	Lj18084
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	je	Lj18096
	movl	24(%esi),%eax
	movl	16(%esi),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$26,%al
	je	Lj18084
Lj18096:
Lj18083:
	movl	24(%esi),%edx
	movl	16(%esi),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$32,%al
	jbe	Lj18082
Lj18084:
	movb	$1,%bl
Lj18071:
	movb	%bl,%al
	movl	256(%esp),%ebx
	movl	260(%esp),%esi
	addl	$264,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_READNUMERIC$TEXT$OPENSTRING:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%edi
	movl	%edx,%esi
	movl	%ecx,%ebx
	.balign 4,0x90
Lj18102:
	movl	%ebx,%ecx
	movl	%esi,%edx
	movl	%edi,%eax
	call	SYSTEM_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
	testb	%al,%al
	je	Lj18100
	movzbl	(%esi),%eax
	cmpl	%ebx,%eax
	je	Lj18104
Lj18113:
	movl	24(%edi),%eax
	movl	16(%edi),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$32,%al
	jnbe	Lj18102
Lj18104:
Lj18100:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_CHECKREAD$TEXT$$BOOLEAN:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%esi
	movb	$0,%bl
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18120
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18121
Lj18120:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18121:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18114
	movl	4(%esi),%eax
	cmpl	$55217,%eax
	je	Lj18123
	movl	4(%esi),%eax
	cmpl	$55218,%eax
	jl	Lj18125
	subl	$55218,%eax
	je	Lj18126
	subl	$2,%eax
	jne	Lj18125
Lj18126:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18129
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18130
Lj18129:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18130:
	movw	$104,(%eax)
	jmp	Lj18114
Lj18125:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18133
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18134
Lj18133:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18134:
	movw	$103,(%eax)
	jmp	Lj18114
Lj18123:
	movl	16(%esi),%eax
	cmpl	20(%esi),%eax
	jnge	Lj18136
	movl	%esi,%eax
	movl	32(%esi),%edx
	call	*%edx
Lj18136:
	movb	$1,%bl
Lj18114:
	movb	%bl,%al
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_read_end
fpc_read_end:
.globl	FPC_READ_END
FPC_READ_END:
	movl	%eax,%edx
	movl	36(%edx),%eax
	testl	%eax,%eax
	je	Lj18144
	movl	%edx,%eax
	movl	36(%edx),%edx
	call	*%edx
Lj18144:
	ret

.text
	.balign 4,0x90
.globl	fpc_readln_end
fpc_readln_end:
.globl	FPC_READLN_END
FPC_READLN_END:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%esi
	movl	%esi,%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18147
	movl	16(%esi),%eax
	cmpl	20(%esi),%eax
	jnge	Lj18154
	movl	36(%esi),%eax
	testl	%eax,%eax
	je	Lj18147
	movl	%esi,%eax
	movl	36(%esi),%edx
	call	*%edx
	jmp	Lj18147
Lj18154:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	je	Lj18160
	movl	24(%esi),%eax
	movl	16(%esi),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$26,%al
	je	Lj18147
Lj18160:
	.balign 4,0x90
Lj18162:
	movl	24(%esi),%eax
	movl	16(%esi),%edx
	movb	(%eax,%edx,1),%bl
	incl	16(%esi)
	cmpb	$10,%bl
	je	Lj18147
	movl	16(%esi),%eax
	cmpl	20(%esi),%eax
	jnge	Lj18170
	movl	%esi,%eax
	movl	32(%esi),%edx
	call	*%edx
	movl	16(%esi),%eax
	cmpl	20(%esi),%eax
	jnge	Lj18174
	movl	36(%esi),%eax
	testl	%eax,%eax
	je	Lj18147
	movl	%esi,%eax
	movl	36(%esi),%edx
	call	*%edx
	jmp	Lj18147
Lj18174:
Lj18170:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	je	Lj18180
	movl	24(%esi),%eax
	movl	16(%esi),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$26,%al
	je	Lj18147
Lj18180:
	cmpb	$13,%bl
	jne	Lj18162
	movl	24(%esi),%edx
	movl	16(%esi),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$10,%al
	jne	Lj18147
	incl	16(%esi)
	jmp	Lj18147
Lj18147:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_readln_end_iso
fpc_readln_end_iso:
.globl	FPC_READLN_END_ISO
FPC_READLN_END_ISO:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%esi
	movl	%esi,%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18186
	movl	16(%esi),%eax
	cmpl	20(%esi),%eax
	jnge	Lj18193
	movl	36(%esi),%eax
	testl	%eax,%eax
	je	Lj18186
	movl	%esi,%eax
	movl	36(%esi),%edx
	call	*%edx
	jmp	Lj18186
Lj18193:
	movl	24(%esi),%eax
	movl	16(%esi),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$26,%al
	jne	Lj18199
	incl	16(%esi)
	jmp	Lj18186
Lj18199:
	.balign 4,0x90
Lj18200:
	movl	24(%esi),%eax
	movl	16(%esi),%edx
	movb	(%eax,%edx,1),%bl
	incl	16(%esi)
	cmpb	$10,%bl
	je	Lj18186
	movl	16(%esi),%eax
	cmpl	20(%esi),%eax
	jnge	Lj18208
	movl	%esi,%eax
	movl	32(%esi),%edx
	call	*%edx
	movl	16(%esi),%eax
	cmpl	20(%esi),%eax
	jnge	Lj18212
	movl	36(%esi),%eax
	testl	%eax,%eax
	je	Lj18186
	movl	%esi,%eax
	movl	36(%esi),%edx
	call	*%edx
	jmp	Lj18186
Lj18212:
Lj18208:
	movl	24(%esi),%eax
	movl	16(%esi),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$26,%al
	jne	Lj18218
	incl	16(%esi)
	jmp	Lj18186
Lj18218:
	cmpb	$13,%bl
	jne	Lj18200
	movl	24(%esi),%edx
	movl	16(%esi),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$10,%al
	jne	Lj18186
	incl	16(%esi)
	jmp	Lj18186
Lj18186:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT:
	subl	$40,%esp
	movl	%ebx,28(%esp)
	movl	%esi,32(%esp)
	movl	%edi,36(%esp)
	movl	%eax,20(%esp)
	movl	%edx,16(%esp)
	movl	%ecx,12(%esp)
	movl	$0,24(%esp)
	movl	20(%esp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18223
	movl	$0,%ebx
	movb	$0,8(%esp)
	.balign 4,0x90
Lj18235:
	movl	20(%esp),%eax
	movl	16(%eax),%edx
	movl	20(%esp),%eax
	cmpl	20(%eax),%edx
	jnge	Lj18239
	movl	20(%esp),%eax
	movl	20(%esp),%ecx
	movl	32(%ecx),%edx
	call	*%edx
	movl	20(%esp),%eax
	movl	16(%eax),%edx
	movl	20(%esp),%eax
	cmpl	20(%eax),%edx
	jge	Lj18237
Lj18239:
	movl	20(%esp),%eax
	movl	24(%eax),%edx
	movl	20(%esp),%eax
	movl	16(%eax),%ecx
	leal	(%edx,%ecx,1),%eax
	movl	%eax,%esi
	movl	20(%esp),%eax
	movl	20(%eax),%edx
	addl	%ebx,%edx
	movl	20(%esp),%eax
	movl	16(%eax),%ecx
	subl	%ecx,%edx
	cmpl	12(%esp),%edx
	jng	Lj18247
	movl	20(%esp),%eax
	movl	24(%eax),%edx
	movl	20(%esp),%ecx
	movl	16(%ecx),%eax
	addl	12(%esp),%eax
	subl	%ebx,%eax
	leal	(%edx,%eax,1),%eax
	movl	%eax,%edi
	jmp	Lj18250
Lj18247:
	movl	20(%esp),%eax
	movl	24(%eax),%edx
	movl	20(%esp),%ecx
	movl	20(%ecx),%eax
	leal	(%edx,%eax,1),%eax
	movl	%eax,%edi
Lj18250:
	movl	%esi,(%esp)
	jmp	Lj18256
	.balign 4,0x90
Lj18255:
	movb	(%esi),%al
	cmpb	$32,%al
	jnb	Lj18259
	movb	(%esi),%al
	movzbl	%al,%edx
	cmpl	$10,%edx
	je	Lj18260
	cmpl	$13,%edx
Lj18265:
	je	Lj18260
Lj18262:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	je	Lj18261
	cmpb	$26,%al
	jne	Lj18261
Lj18260:
	movb	$1,8(%esp)
	jmp	Lj18257
Lj18261:
Lj18259:
	incl	%esi
Lj18256:
	cmpl	%edi,%esi
	jb	Lj18255
Lj18257:
	movl	%esi,%eax
	subl	(%esp),%eax
	movl	%eax,4(%esp)
	movl	4(%esp),%edx
	movl	20(%esp),%eax
	addl	%edx,16(%eax)
	movl	16(%esp),%eax
	leal	(%eax,%ebx,1),%edx
	movl	(%esp),%eax
	movl	4(%esp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	addl	4(%esp),%ebx
	cmpl	12(%esp),%ebx
	je	Lj18237
Lj18277:
	movb	8(%esp),%al
	testb	%al,%al
	je	Lj18235
Lj18237:
	movl	%ebx,24(%esp)
Lj18223:
	movl	24(%esp),%eax
	movl	28(%esp),%ebx
	movl	32(%esp),%esi
	movl	36(%esp),%edi
	addl	$40,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_shortstr
fpc_read_text_shortstr:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%edx,%ebx
	leal	1(%ebx),%edx
	call	SYSTEM_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT
	movb	%al,(%ebx)
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_pchar_as_pointer
fpc_read_text_pchar_as_pointer:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%edx,%ebx
	movl	%ebx,%edx
	movl	$2147483647,%ecx
	call	SYSTEM_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT
	addl	%ebx,%eax
	movb	$0,(%eax)
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_pchar_as_array
fpc_read_text_pchar_as_array:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,%esi
	movl	%edx,%edi
	movl	%ecx,%ebx
	movb	8(%ebp),%al
	movb	%al,-4(%ebp)
	movl	%edi,%edx
	movl	%ebx,%eax
	incl	%eax
	movl	%eax,%ecx
	movl	%esi,%eax
	call	SYSTEM_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT
	movb	-4(%ebp),%dl
	testb	%dl,%dl
	je	Lj18311
	cmpl	%ebx,%eax
	jng	Lj18311
	movl	%ebx,%eax
Lj18311:
	cmpl	%ebx,%eax
	jnle	Lj18316
	movb	$0,(%edi,%eax,1)
Lj18316:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	fpc_read_text_ansistr
fpc_read_text_ansistr:
.globl	FPC_READ_TEXT_ANSISTR
FPC_READ_TEXT_ANSISTR:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,%edi
	movl	%edx,(%esp)
	movl	(%esp),%eax
	movl	$0,(%eax)
	movl	$0,%ebx
	.balign 4,0x90
Lj18323:
	movl	%ebx,%edx
	addl	$255,%edx
	movl	(%esp),%eax
	call	fpc_ansistr_setlength
	movl	(%esp),%eax
	movl	(%eax),%edx
	addl	%ebx,%edx
	movl	%edi,%eax
	movl	$255,%ecx
	call	SYSTEM_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT
	movl	%eax,%esi
	addl	%esi,%ebx
	cmpl	$255,%esi
	jnl	Lj18323
	movl	%ebx,%edx
	movl	(%esp),%eax
	call	fpc_ansistr_setlength
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_unicodestr
fpc_read_text_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,%ebx
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj18344
	leal	-8(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-8(%ebp),%edx
	movl	%ebx,%eax
	call	FPC_READ_TEXT_ANSISTR
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_to_unicodestr
	movl	-52(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-52(%ebp),%eax
	movl	%eax,(%ebx)
Lj18344:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-8(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-8(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj18345
	call	FPC_RERAISE
Lj18345:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_char
fpc_read_text_char:
.globl	FPC_READ_TEXT_CHAR
FPC_READ_TEXT_CHAR:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movb	$0,(%esi)
	movl	%ebx,%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18363
	movl	16(%ebx),%eax
	cmpl	20(%ebx),%eax
	jnge	Lj18372
	movb	$26,(%esi)
	jmp	Lj18363
Lj18372:
	movl	24(%ebx),%eax
	movl	16(%ebx),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,(%esi)
	incl	16(%ebx)
Lj18363:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_widechar
fpc_read_text_widechar:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	movl	%eax,%ebx
	movl	%edx,-56(%ebp)
	movl	$0,-4(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj18379
	leal	-10(%ebp),%eax
	movb	$0,%cl
	movl	$6,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	$0,%esi
	decl	%esi
	.balign 4,0x90
Lj18390:
	incl	%esi
	leal	-10(%ebp,%esi,1),%edx
	movl	%ebx,%eax
	call	FPC_READ_TEXT_CHAR
	leal	-10(%ebp),%eax
	movl	%esi,%edx
	incl	%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+28,%ecx
	call	*%ecx
	cmpl	$-1,%eax
	je	Lj18395
	testl	%eax,%eax
	je	Lj18398
	jmp	Lj18396
	jmp	Lj18395
Lj18398:
	movl	-56(%ebp),%eax
	movw	$0,(%eax)
	jmp	Lj18379
Lj18396:
	movl	%esi,%eax
	incl	%eax
	pushl	%eax
	leal	-10(%ebp),%eax
	leal	-4(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+4,%edi
	call	*%edi
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj18415
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj18415:
	cmpl	$1,%eax
	jne	Lj18389
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	movl	-56(%ebp),%edx
	movw	%ax,(%edx)
	jmp	Lj18379
Lj18418:
Lj18395:
	cmpl	$5,%esi
	jl	Lj18390
Lj18389:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18421
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18422
Lj18421:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18422:
	movw	$106,(%eax)
Lj18379:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-4(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj18380
	call	FPC_RERAISE
Lj18380:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_char_iso
fpc_read_text_char_iso:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movb	$32,(%esi)
	movl	%ebx,%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18429
	movl	16(%ebx),%eax
	cmpl	20(%ebx),%eax
	jnge	Lj18438
	movb	$32,(%esi)
	jmp	Lj18429
Lj18438:
	movl	24(%ebx),%edx
	movl	16(%ebx),%eax
	movb	(%edx,%eax,1),%al
	movb	%al,(%esi)
	incl	16(%ebx)
	movb	(%esi),%al
	cmpb	$13,%al
	jne	Lj18444
	movb	$32,(%esi)
	movl	%ebx,%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18429
Lj18449:
	movl	16(%ebx),%eax
	cmpl	20(%ebx),%eax
	jge	Lj18429
	movl	24(%ebx),%edx
	movl	16(%ebx),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$10,%al
	jne	Lj18453
	incl	16(%ebx)
Lj18453:
	movl	%ebx,%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18429
Lj18456:
	movl	16(%ebx),%eax
	cmpl	20(%ebx),%eax
	jge	Lj18429
	movl	24(%ebx),%edx
	movl	16(%ebx),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	jne	Lj18461
	incl	16(%ebx)
	jmp	Lj18461
Lj18444:
	movb	(%esi),%al
	cmpb	$10,%al
	jne	Lj18463
	movb	$32,(%esi)
	movl	%ebx,%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18429
Lj18468:
	movl	16(%ebx),%eax
	cmpl	20(%ebx),%eax
	jge	Lj18429
	movl	24(%ebx),%edx
	movl	16(%ebx),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	jne	Lj18473
	incl	16(%ebx)
	jmp	Lj18473
Lj18463:
	movb	(%esi),%al
	cmpb	$26,%al
	jne	Lj18475
	movb	$32,(%esi)
Lj18475:
Lj18473:
Lj18461:
Lj18429:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_sint
fpc_read_text_sint:
	subl	$268,%esp
	movl	%ebx,260(%esp)
	movl	%esi,264(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	$0,(%esi)
	movl	%ebx,%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18478
	movb	$0,(%esp)
	movl	%ebx,%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18489
	movl	16(%ebx),%eax
	cmpl	20(%ebx),%eax
	jge	Lj18478
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	je	Lj18495
	movl	24(%ebx),%eax
	movl	16(%ebx),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$26,%al
	je	Lj18478
Lj18495:
	movl	%esp,%edx
	movl	%ebx,%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj18489:
	movzbl	(%esp),%eax
	testl	%eax,%eax
	jne	Lj18504
	movl	$0,(%esi)
	jmp	Lj18507
Lj18504:
	leal	256(%esp),%ecx
	movl	%esp,%edx
	movl	$4,%eax
	call	fpc_val_sint_shortstr
	movl	%eax,(%esi)
	movl	256(%esp),%eax
	testl	%eax,%eax
	je	Lj18517
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18520
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18521
Lj18520:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18521:
	movw	$106,(%eax)
Lj18517:
Lj18507:
Lj18478:
	movl	260(%esp),%ebx
	movl	264(%esp),%esi
	addl	$268,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_uint
fpc_read_text_uint:
	subl	$268,%esp
	movl	%ebx,260(%esp)
	movl	%esi,264(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	$0,(%esi)
	movl	%ebx,%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18522
	movb	$0,(%esp)
	movl	%ebx,%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18533
	movl	16(%ebx),%eax
	cmpl	20(%ebx),%eax
	jge	Lj18522
	movl	%esp,%edx
	movl	%ebx,%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj18533:
	movzbl	(%esp),%eax
	testl	%eax,%eax
	jne	Lj18545
	movl	$0,(%esi)
	jmp	Lj18548
Lj18545:
	leal	256(%esp),%edx
	movl	%esp,%eax
	call	fpc_val_uint_shortstr
	movl	%eax,(%esi)
	movl	256(%esp),%eax
	testl	%eax,%eax
	je	Lj18556
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18559
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18560
Lj18559:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18560:
	movw	$106,(%eax)
Lj18556:
Lj18548:
Lj18522:
	movl	260(%esp),%ebx
	movl	264(%esp),%esi
	addl	$268,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_float
fpc_read_text_float:
	subl	$268,%esp
	movl	%ebx,260(%esp)
	movl	%esi,264(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	fldz
	fstpt	(%esi)
	movl	%ebx,%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18561
	movb	$0,(%esp)
	movl	%ebx,%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18572
	movl	16(%ebx),%eax
	cmpl	20(%ebx),%eax
	jge	Lj18561
	movl	%esp,%edx
	movl	%ebx,%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj18572:
	leal	256(%esp),%edx
	movl	%esp,%eax
	call	fpc_val_real_shortstr
	fstpt	(%esi)
	movw	256(%esp),%ax
	andl	$65535,%eax
	je	Lj18592
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18595
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18596
Lj18595:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18596:
	movw	$106,(%eax)
Lj18592:
Lj18561:
	movl	260(%esp),%ebx
	movl	264(%esp),%esi
	addl	$268,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_enum
fpc_read_text_enum:
	subl	$272,%esp
	movl	%ebx,260(%esp)
	movl	%esi,264(%esp)
	movl	%edi,268(%esp)
	movl	%eax,%ebx
	movl	%edx,%edi
	movl	%ecx,%esi
	movl	%edi,%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18597
	movb	$0,(%esp)
	movl	%edi,%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18606
	movl	16(%edi),%eax
	cmpl	20(%edi),%eax
	jge	Lj18597
	movl	%esp,%edx
	movl	%edi,%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj18606:
	leal	256(%esp),%ecx
	movl	%esp,%edx
	movl	%ebx,%eax
	call	FPC_VAL_ENUM_SHORTSTR
	movl	%eax,(%esi)
	movl	256(%esp),%eax
	testl	%eax,%eax
	je	Lj18626
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18629
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18630
Lj18629:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18630:
	movw	$106,(%eax)
Lj18626:
Lj18597:
	movl	260(%esp),%ebx
	movl	264(%esp),%esi
	movl	268(%esp),%edi
	addl	$272,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_currency
fpc_read_text_currency:
	subl	$268,%esp
	movl	%ebx,260(%esp)
	movl	%esi,264(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	fldz
	fistpq	(%esi)
	movl	%ebx,%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18631
	movb	$0,(%esp)
	movl	%ebx,%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18642
	movl	16(%ebx),%eax
	cmpl	20(%ebx),%eax
	jge	Lj18631
	movl	%esp,%edx
	movl	%ebx,%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj18642:
	leal	256(%esp),%edx
	movl	%esp,%eax
	call	fpc_val_real_shortstr
	fldt	_$SYSTEM$_Ld22
	fmulp	%st,%st(1)
	fistpq	(%esi)
	movw	256(%esp),%ax
	andl	$65535,%eax
	je	Lj18662
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18665
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18666
Lj18665:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18666:
	movw	$106,(%eax)
Lj18662:
Lj18631:
	movl	260(%esp),%ebx
	movl	264(%esp),%esi
	addl	$268,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_qword
fpc_read_text_qword:
	subl	$268,%esp
	movl	%ebx,260(%esp)
	movl	%esi,264(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	$0,(%esi)
	movl	$0,4(%esi)
	movl	%ebx,%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18667
	movb	$0,(%esp)
	movl	%ebx,%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18678
	movl	16(%ebx),%eax
	cmpl	20(%ebx),%eax
	jge	Lj18667
	movl	%esp,%edx
	movl	%ebx,%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj18678:
	leal	256(%esp),%edx
	movl	%esp,%eax
	call	fpc_val_qword_shortstr
	movl	%eax,(%esi)
	movl	%edx,4(%esi)
	movl	256(%esp),%eax
	testl	%eax,%eax
	je	Lj18696
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18699
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18700
Lj18699:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18700:
	movw	$106,(%eax)
Lj18696:
Lj18667:
	movl	260(%esp),%ebx
	movl	264(%esp),%esi
	addl	$268,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_read_text_int64
fpc_read_text_int64:
	subl	$268,%esp
	movl	%ebx,260(%esp)
	movl	%esi,264(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	$0,(%esi)
	movl	$0,4(%esi)
	movl	%ebx,%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18701
	movb	$0,(%esp)
	movl	%ebx,%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18712
	movl	16(%ebx),%eax
	cmpl	20(%ebx),%eax
	jge	Lj18701
	movl	%esp,%edx
	movl	%ebx,%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj18712:
	leal	256(%esp),%edx
	movl	%esp,%eax
	call	fpc_val_int64_shortstr
	movl	%eax,(%esi)
	movl	%edx,4(%esi)
	movl	256(%esp),%eax
	testl	%eax,%eax
	je	Lj18730
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18733
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18734
Lj18733:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18734:
	movw	$106,(%eax)
Lj18730:
Lj18701:
	movl	260(%esp),%ebx
	movl	264(%esp),%esi
	addl	$268,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_WRITESTRSHORT$TEXTREC:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,(%esp)
	movl	(%esp),%edx
	movl	16(%edx),%eax
	testl	%eax,%eax
	je	Lj18735
	movl	(%esp),%edx
	leal	44(%edx),%eax
	movl	(%eax),%edx
	movl	(%esp),%eax
	movl	16(%eax),%edi
	movzbl	(%edx),%eax
	movl	%eax,%ebx
	movl	(%esp),%eax
	movl	16(%eax),%ecx
	addl	%ebx,%ecx
	movl	(%esp),%esi
	movzbl	60(%esi),%eax
	cmpl	%eax,%ecx
	jng	Lj18746
	movl	(%esp),%eax
	movzbl	60(%eax),%ecx
	subl	%ebx,%ecx
	movl	%ecx,%edi
Lj18746:
	movzbl	(%edx),%ecx
	addl	%edi,%ecx
	movl	%edx,%esi
	movl	%esi,%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
	movl	%esi,%edx
	movl	%ebx,%eax
	incl	%eax
	andl	$255,%eax
	leal	(%edx,%eax,1),%edx
	movl	(%esp),%eax
	movl	24(%eax),%ecx
	movl	%edi,%ebx
	movl	%ecx,%eax
	movl	%ebx,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	(%esp),%eax
	movl	$0,16(%eax)
Lj18735:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_WRITESTRANSI$TEXTREC:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%ebx
	movl	16(%ebx),%eax
	testl	%eax,%eax
	je	Lj18763
	leal	44(%ebx),%eax
	movl	(%eax),%esi
	movl	(%esi),%edi
	testl	%edi,%edi
	je	Lj18771
	movl	-4(%edi),%edi
Lj18771:
	movl	16(%ebx),%edx
	addl	%edi,%edx
	movl	%esi,%eax
	call	fpc_ansistr_setlength
	movl	%esi,%eax
	call	fpc_ansistr_unique
	incl	%edi
	leal	-1(%eax,%edi,1),%edx
	movl	24(%ebx),%eax
	movl	16(%ebx),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	$0,16(%ebx)
Lj18763:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_WRITESTRUNICODE$TEXTREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	movl	%eax,%ebx
	movl	$0,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj18788
	movl	16(%ebx),%eax
	testl	%eax,%eax
	je	Lj18788
	leal	44(%ebx),%eax
	movl	(%eax),%esi
	movl	16(%ebx),%edx
	leal	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	leal	-4(%ebp),%eax
	call	fpc_ansistr_unique
	movl	%eax,%edx
	movl	24(%ebx),%eax
	movl	16(%ebx),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leal	-48(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_to_unicodestr
	movl	-48(%ebp),%ecx
	movl	(%esi),%edx
	movl	%esi,%eax
	call	fpc_unicodestr_concat
	movl	$0,16(%ebx)
Lj18788:
	call	FPC_POPADDRSTACK
	leal	-48(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-4(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-4(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj18789
	call	FPC_RERAISE
Lj18789:
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SETUPWRITESTRCOMMON$TEXTREC:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	$_$SYSTEM$_Ld1,%edx
	call	SYSTEM_ASSIGN$TEXT$SHORTSTRING
	movl	$55218,4(%ebx)
	movl	$0,28(%ebx)
	movl	$0,40(%ebx)
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_setupwritestr_shortstr
fpc_setupwritestr_shortstr:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%esi
	movl	%edx,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18841
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18842
Lj18841:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18842:
	call	SYSTEM_SETUPWRITESTRCOMMON$TEXTREC
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18845
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18846
Lj18845:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18846:
	leal	44(%eax),%edx
	movl	%esi,(%edx)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18849
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj18850
Lj18849:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%edx
Lj18850:
	movb	%bl,60(%edx)
	movl	%ebx,%edx
	movl	%esi,%eax
	movl	$0,%ecx
	call	fpc_shortstr_setlength
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18859
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18860
Lj18859:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18860:
	movl	$SYSTEM_WRITESTRSHORT$TEXTREC,%edx
	movl	%edx,32(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18863
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18864
Lj18863:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18864:
	movl	$SYSTEM_WRITESTRSHORT$TEXTREC,%edx
	movl	%edx,36(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18867
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18868
Lj18867:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18868:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_setupwritestr_ansistr
fpc_setupwritestr_ansistr:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	$0,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18873
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18874
Lj18873:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18874:
	call	SYSTEM_SETUPWRITESTRCOMMON$TEXTREC
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18877
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18878
Lj18877:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18878:
	leal	44(%eax),%edx
	movl	(%esp),%eax
	movl	%eax,(%edx)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18881
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18882
Lj18881:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18882:
	movl	$SYSTEM_WRITESTRANSI$TEXTREC,%edx
	movl	%edx,32(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18885
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18886
Lj18885:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18886:
	movl	$SYSTEM_WRITESTRANSI$TEXTREC,%edx
	movl	%edx,36(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18889
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18890
Lj18889:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18890:
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_setupwritestr_unicodestr
fpc_setupwritestr_unicodestr:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	$0,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18895
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18896
Lj18895:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18896:
	call	SYSTEM_SETUPWRITESTRCOMMON$TEXTREC
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18899
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18900
Lj18899:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18900:
	leal	44(%eax),%edx
	movl	(%esp),%eax
	movl	%eax,(%edx)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18903
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18904
Lj18903:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18904:
	movl	$SYSTEM_WRITESTRUNICODE$TEXTREC,%edx
	movl	%edx,32(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18907
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18908
Lj18907:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18908:
	movl	$SYSTEM_WRITESTRUNICODE$TEXTREC,%edx
	movl	%edx,36(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18911
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18912
Lj18911:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18912:
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_READANSISTRFINAL$TEXTREC:
	subl	$4,%esp
	movl	%ebx,(%esp)
	leal	44(%eax),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_READSTRCOMMON$TEXTREC$PCHAR$LONGINT:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%esi
	leal	60(%esi),%eax
	movl	(%eax),%eax
	subl	%eax,%ecx
	movl	%ecx,%ebx
	movl	8(%esi),%eax
	cmpl	%ebx,%eax
	jnle	Lj18922
	movl	8(%esi),%ebx
Lj18922:
	testl	%ebx,%ebx
	jng	Lj18926
	leal	60(%esi),%eax
	movl	(%eax),%eax
	leal	(%edx,%eax,1),%eax
	movl	24(%esi),%edx
	movl	%ebx,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leal	60(%esi),%eax
	addl	%ebx,(%eax)
Lj18926:
	movl	%ebx,20(%esi)
	movl	$0,16(%esi)
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_READSTRANSI$TEXTREC:
	leal	44(%eax),%ecx
	movl	(%ecx),%edx
	movl	(%ecx),%ecx
	testl	%ecx,%ecx
	je	Lj18945
	movl	-4(%ecx),%ecx
Lj18945:
	call	SYSTEM_READSTRCOMMON$TEXTREC$PCHAR$LONGINT
	ret

.text
	.balign 4,0x90
SYSTEM_SETUPREADSTRCOMMON$TEXTREC:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	$_$SYSTEM$_Ld1,%edx
	call	SYSTEM_ASSIGN$TEXT$SHORTSTRING
	movl	$55217,4(%ebx)
	movl	$0,28(%ebx)
	movl	$0,40(%ebx)
	leal	60(%ebx),%eax
	movl	$0,(%eax)
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_setupreadstr_ansistr
fpc_setupreadstr_ansistr:
.globl	FPC_SETUPREADSTR_ANSISTR
FPC_SETUPREADSTR_ANSISTR:
	subl	$8,%esp
	movl	%ebx,4(%esp)
	movl	%eax,(%esp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18966
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18967
Lj18966:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18967:
	call	SYSTEM_SETUPREADSTRCOMMON$TEXTREC
	movl	(%esp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18970
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18971
Lj18970:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18971:
	leal	44(%eax),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	(%esp),%eax
	movl	%eax,(%ebx)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18974
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18975
Lj18974:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18975:
	movl	$SYSTEM_READSTRANSI$TEXTREC,%edx
	movl	%edx,32(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18978
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18979
Lj18978:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18979:
	movl	$SYSTEM_READANSISTRFINAL$TEXTREC,%edx
	movl	%edx,36(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18982
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18983
Lj18982:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18983:
	movl	4(%esp),%ebx
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_setupreadstr_shortstr
fpc_setupreadstr_shortstr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$48,%esp
	movl	%ebx,-48(%ebp)
	movl	%eax,%ebx
	movl	$0,-44(%ebp)
	leal	-12(%ebp),%ecx
	leal	-36(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj18986
	leal	-44(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-44(%ebp)
	leal	-44(%ebp),%edx
	movl	%ebx,%eax
	call	fpc_shortstr_to_ansistr
	movl	-44(%ebp),%eax
	call	FPC_SETUPREADSTR_ANSISTR
	movl	%eax,%ebx
Lj18986:
	call	FPC_POPADDRSTACK
	leal	-44(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-44(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj18987
	call	FPC_RERAISE
Lj18987:
	movl	%ebx,%eax
	movl	-48(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_setupreadstr_unicodestr
fpc_setupreadstr_unicodestr:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj18999
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_to_ansistr
	movl	-48(%ebp),%eax
	call	FPC_SETUPREADSTR_ANSISTR
	movl	%eax,%ebx
Lj18999:
	call	FPC_POPADDRSTACK
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj19000
	call	FPC_RERAISE
Lj19000:
	movl	%ebx,%eax
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_OPENSTDIO$TEXT$LONGINT$LONGINT:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,%edi
	movl	%ebx,%eax
	movl	$_$SYSTEM$_Ld1,%edx
	call	SYSTEM_ASSIGN$TEXT$SHORTSTRING
	movl	%edi,%eax
	movl	%eax,(%ebx)
	movl	%esi,4(%ebx)
	movl	$SYSTEM_FILECLOSEFUNC$TEXTREC,%edx
	movl	%edx,40(%ebx)
	cmpl	$55217,%esi
	jl	Lj19023
	subl	$55217,%esi
	je	Lj19024
	decl	%esi
	je	Lj19025
	jmp	Lj19023
Lj19024:
	movl	$SYSTEM_FILEREADFUNC$TEXTREC,%edx
	movl	%edx,32(%ebx)
	jmp	Lj19022
Lj19025:
	movl	$SYSTEM_FILEWRITEFUNC$TEXTREC,%edx
	movl	%edx,32(%ebx)
	call	SYSTEM_DO_ISDEVICE$LONGINT$$BOOLEAN
	testb	%al,%al
	je	Lj19022
	movl	$SYSTEM_FILEWRITEFUNC$TEXTREC,%eax
	movl	%eax,36(%ebx)
	jmp	Lj19022
Lj19023:
	movl	$102,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj19022:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ASSIGN$file$SHORTSTRING
SYSTEM_ASSIGN$file$SHORTSTRING:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ebx,%eax
	movb	$0,%cl
	movl	$332,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	$-1,(%ebx)
	movl	$55216,4(%ebx)
	movzbl	(%esi),%ecx
	leal	76(%ebx),%edx
	leal	1(%esi),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ASSIGN$file$PCHAR
SYSTEM_ASSIGN$file$PCHAR:
	subl	$260,%esp
	movl	%ebx,256(%esp)
	movl	%eax,%ebx
	movl	%edx,%ecx
	movl	%esp,%eax
	movl	$255,%edx
	call	FPC_PCHAR_TO_SHORTSTR
	movl	%esp,%edx
	movl	%ebx,%eax
	call	SYSTEM_ASSIGN$file$SHORTSTRING
	movl	256(%esp),%ebx
	addl	$260,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ASSIGN$file$CHAR
SYSTEM_ASSIGN$file$CHAR:
	subl	$256,%esp
	andl	$255,%edx
	shll	$8,%edx
	orl	$1,%edx
	movw	%dx,(%esp)
	movl	%esp,%edx
	call	SYSTEM_ASSIGN$file$SHORTSTRING
	addl	$256,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_REWRITE$file$LONGINT
SYSTEM_REWRITE$file$LONGINT:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19080
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19081
Lj19080:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19081:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19076
	movl	4(%ebx),%eax
	cmpl	$55216,%eax
	jl	Lj19083
	subl	$55216,%eax
	je	Lj19082
	decl	%eax
	je	Lj19084
	decl	%eax
	jl	Lj19083
	subl	$1,%eax
	jnle	Lj19083
Lj19084:
	movl	%ebx,%eax
	call	SYSTEM_CLOSE$file
	jmp	Lj19082
	jmp	Lj19082
Lj19083:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19090
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19091
Lj19090:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19091:
	movw	$102,(%eax)
	jmp	Lj19076
Lj19082:
	testl	%esi,%esi
	jne	Lj19093
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19096
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19097
Lj19096:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19097:
	movw	$2,(%eax)
	jmp	Lj19098
Lj19093:
	leal	76(%ebx),%edx
	movl	%ebx,%eax
	movl	$4098,%ecx
	call	SYSTEM_DO_OPEN$formal$PCHAR$LONGINT
	movl	%esi,8(%ebx)
Lj19098:
Lj19076:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RESET$file$LONGINT
SYSTEM_RESET$file$LONGINT:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19111
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19112
Lj19111:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19112:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19107
	movl	4(%ebx),%eax
	cmpl	$55216,%eax
	jl	Lj19114
	subl	$55216,%eax
	je	Lj19113
	decl	%eax
	je	Lj19115
	decl	%eax
	jl	Lj19114
	subl	$1,%eax
	jnle	Lj19114
Lj19115:
	movl	%ebx,%eax
	call	SYSTEM_CLOSE$file
	jmp	Lj19113
	jmp	Lj19113
Lj19114:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19121
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19122
Lj19121:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19122:
	movw	$102,(%eax)
	jmp	Lj19107
Lj19113:
	testl	%esi,%esi
	jne	Lj19124
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19127
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19128
Lj19127:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19128:
	movw	$2,(%eax)
	jmp	Lj19129
Lj19124:
	leal	76(%ebx),%edx
	movzbl	TC_SYSTEM_FILEMODE,%ecx
	movl	%ebx,%eax
	call	SYSTEM_DO_OPEN$formal$PCHAR$LONGINT
	movl	%esi,8(%ebx)
Lj19129:
Lj19107:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_REWRITE$file
SYSTEM_REWRITE$file:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19142
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19143
Lj19142:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19143:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19138
	movl	%ebx,%eax
	movl	$128,%edx
	call	SYSTEM_REWRITE$file$LONGINT
Lj19138:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RESET$file
SYSTEM_RESET$file:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19152
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19153
Lj19152:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19153:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19148
	movl	%ebx,%eax
	movl	$128,%edx
	call	SYSTEM_RESET$file$LONGINT
Lj19148:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKWRITE$file$formal$INT64$INT64
SYSTEM_BLOCKWRITE$file$formal$INT64$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,%ebx
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	movl	$0,4(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19164
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19165
Lj19164:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19165:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19158
	movl	-4(%ebp),%edx
	movl	4(%edx),%eax
	cmpl	$55217,%eax
	jl	Lj19167
	subl	$55217,%eax
	je	Lj19169
	decl	%eax
	jl	Lj19167
	subl	$1,%eax
	jnle	Lj19167
	pushl	%esi
	pushl	%edi
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,%ecx
	movl	%ebx,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%ebx
	movl	%ebx,%eax
	call	SYSTEM_DO_WRITE$LONGINT$POINTER$LONGINT$$LONGINT
	cltd
	movl	-4(%ebp),%ecx
	idivl	8(%ecx)
	movl	%eax,%ecx
	sarl	$31,%ecx
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	%ecx,4(%eax)
	jmp	Lj19166
Lj19169:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19186
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19187
Lj19186:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19187:
	movw	$105,(%eax)
	jmp	Lj19166
Lj19167:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19190
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19191
Lj19190:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19191:
	movw	$103,(%eax)
Lj19166:
Lj19158:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKWRITE$file$formal$LONGINT$LONGINT
SYSTEM_BLOCKWRITE$file$formal$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	8(%ebp),%ebx
	movl	%ecx,%esi
	sarl	$31,%esi
	pushl	%esi
	pushl	%ecx
	leal	-8(%ebp),%ecx
	call	SYSTEM_BLOCKWRITE$file$formal$INT64$INT64
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKWRITE$file$formal$WORD$WORD
SYSTEM_BLOCKWRITE$file$formal$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	8(%ebp),%ebx
	andl	$65535,%ecx
	movl	$0,%esi
	pushl	%esi
	pushl	%ecx
	leal	-8(%ebp),%ecx
	call	SYSTEM_BLOCKWRITE$file$formal$INT64$INT64
	movw	-8(%ebp),%ax
	movw	%ax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKWRITE$file$formal$LONGWORD$LONGWORD
SYSTEM_BLOCKWRITE$file$formal$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	8(%ebp),%ebx
	movl	$0,%esi
	pushl	%esi
	pushl	%ecx
	leal	-8(%ebp),%ecx
	call	SYSTEM_BLOCKWRITE$file$formal$INT64$INT64
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKWRITE$file$formal$WORD$SMALLINT
SYSTEM_BLOCKWRITE$file$formal$WORD$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	8(%ebp),%ebx
	andl	$65535,%ecx
	movl	$0,%esi
	pushl	%esi
	pushl	%ecx
	leal	-8(%ebp),%ecx
	call	SYSTEM_BLOCKWRITE$file$formal$INT64$INT64
	movw	-8(%ebp),%ax
	movw	%ax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKWRITE$file$formal$LONGINT
SYSTEM_BLOCKWRITE$file$formal$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%ecx,%ebx
	movl	%ebx,%ecx
	movl	%ecx,%esi
	sarl	$31,%esi
	pushl	%esi
	pushl	%ecx
	leal	-8(%ebp),%ecx
	call	SYSTEM_BLOCKWRITE$file$formal$INT64$INT64
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19254
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19255
Lj19254:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19255:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19251
	movl	%ebx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	cmpl	-4(%ebp),%edx
	jg	Lj19252
	jl	Lj19251
	cmpl	-8(%ebp),%eax
	jna	Lj19251
Lj19252:
	testl	%ebx,%ebx
	jng	Lj19251
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19258
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19259
Lj19258:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19259:
	movw	$101,(%eax)
Lj19251:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKREAD$file$formal$INT64$INT64
SYSTEM_BLOCKREAD$file$formal$INT64$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,%ebx
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	movl	$0,4(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19266
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19267
Lj19266:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19267:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19260
	movl	-4(%ebp),%edx
	movl	4(%edx),%eax
	cmpl	$55217,%eax
	jl	Lj19269
	subl	$55217,%eax
	je	Lj19270
	decl	%eax
	je	Lj19271
	decl	%eax
	jne	Lj19269
Lj19270:
	pushl	%esi
	pushl	%edi
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,%ecx
	movl	%ebx,%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%ebx
	movl	%ebx,%eax
	call	SYSTEM_DO_READ$LONGINT$POINTER$LONGINT$$LONGINT
	cltd
	movl	-4(%ebp),%ecx
	idivl	8(%ecx)
	movl	%eax,%ecx
	sarl	$31,%ecx
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	%ecx,4(%eax)
	jmp	Lj19268
Lj19271:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19288
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19289
Lj19288:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19289:
	movw	$104,(%eax)
	jmp	Lj19268
Lj19269:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19292
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19293
Lj19292:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19293:
	movw	$103,(%eax)
Lj19268:
Lj19260:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKREAD$file$formal$LONGINT$LONGINT
SYSTEM_BLOCKREAD$file$formal$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	8(%ebp),%ebx
	movl	%ecx,%esi
	sarl	$31,%esi
	pushl	%esi
	pushl	%ecx
	leal	-8(%ebp),%ecx
	call	SYSTEM_BLOCKREAD$file$formal$INT64$INT64
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKREAD$file$formal$WORD$WORD
SYSTEM_BLOCKREAD$file$formal$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	8(%ebp),%ebx
	andl	$65535,%ecx
	movl	$0,%esi
	pushl	%esi
	pushl	%ecx
	leal	-8(%ebp),%ecx
	call	SYSTEM_BLOCKREAD$file$formal$INT64$INT64
	movw	-8(%ebp),%ax
	movw	%ax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKREAD$file$formal$LONGWORD$LONGWORD
SYSTEM_BLOCKREAD$file$formal$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	8(%ebp),%ebx
	movl	$0,%esi
	pushl	%esi
	pushl	%ecx
	leal	-8(%ebp),%ecx
	call	SYSTEM_BLOCKREAD$file$formal$INT64$INT64
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKREAD$file$formal$WORD$SMALLINT
SYSTEM_BLOCKREAD$file$formal$WORD$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	8(%ebp),%ebx
	andl	$65535,%ecx
	movl	$0,%esi
	pushl	%esi
	pushl	%ecx
	leal	-8(%ebp),%ecx
	call	SYSTEM_BLOCKREAD$file$formal$INT64$INT64
	movw	-8(%ebp),%ax
	movw	%ax,(%ebx)
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_BLOCKREAD$file$formal$INT64
SYSTEM_BLOCKREAD$file$formal$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	8(%ebp),%ebx
	movl	12(%ebp),%ecx
	movl	%ebx,%esi
	movl	%ecx,%ebx
	pushl	%ebx
	pushl	%esi
	leal	-8(%ebp),%ecx
	call	SYSTEM_BLOCKREAD$file$formal$INT64$INT64
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19356
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19357
Lj19356:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19357:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19353
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	cmpl	%ebx,%edx
	jl	Lj19354
	jg	Lj19353
	cmpl	%esi,%eax
	jnb	Lj19353
Lj19354:
	testl	%ebx,%ebx
	jg	Lj19352
	jl	Lj19353
	testl	%esi,%esi
	jna	Lj19353
Lj19352:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19360
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19361
Lj19360:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19361:
	movw	$100,(%eax)
Lj19353:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_FILEPOS$file$$INT64
SYSTEM_FILEPOS$file$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%ebx
	movl	$0,%edi
	movl	$0,%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19368
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19369
Lj19368:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19369:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19362
	movl	4(%ebx),%eax
	cmpl	$55217,%eax
	jl	Lj19371
	subl	$55217,%eax
	je	Lj19372
	decl	%eax
	jl	Lj19371
	subl	$1,%eax
	jnle	Lj19371
Lj19372:
	movl	8(%ebx),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	(%ebx),%eax
	call	SYSTEM_DO_FILEPOS$LONGINT$$INT64
	pushl	%edx
	pushl	%eax
	call	fpc_div_int64
	movl	%eax,%edi
	movl	%edx,%esi
	jmp	Lj19370
Lj19371:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19383
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19384
Lj19383:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19384:
	movw	$103,(%eax)
Lj19370:
Lj19362:
	movl	%esi,%edx
	movl	%edi,%eax
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FILESIZE$file$$INT64
SYSTEM_FILESIZE$file$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%ebx
	movl	$0,%edi
	movl	$0,%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19391
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19392
Lj19391:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19392:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19385
	movl	4(%ebx),%eax
	cmpl	$55217,%eax
	jl	Lj19394
	subl	$55217,%eax
	je	Lj19395
	decl	%eax
	jl	Lj19394
	subl	$1,%eax
	jnle	Lj19394
Lj19395:
	movl	8(%ebx),%eax
	testl	%eax,%eax
	jng	Lj19393
	movl	8(%ebx),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	(%ebx),%eax
	call	SYSTEM_DO_FILESIZE$LONGINT$$INT64
	pushl	%edx
	pushl	%eax
	call	fpc_div_int64
	movl	%eax,%edi
	movl	%edx,%esi
	jmp	Lj19393
Lj19394:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19408
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19409
Lj19408:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19409:
	movw	$103,(%eax)
Lj19393:
Lj19385:
	movl	%esi,%edx
	movl	%edi,%eax
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_EOF$file$$BOOLEAN
SYSTEM_EOF$file$$BOOLEAN:
	subl	$16,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%edi,12(%esp)
	movl	%eax,%ebx
	movb	$0,(%esp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19416
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19417
Lj19416:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19417:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19410
	movl	4(%ebx),%eax
	cmpl	$55217,%eax
	jl	Lj19419
	subl	$55217,%eax
	je	Lj19420
	decl	%eax
	jl	Lj19419
	subl	$1,%eax
	jnle	Lj19419
Lj19420:
	movl	%ebx,%eax
	call	SYSTEM_FILESIZE$file$$INT64
	movl	%eax,%edi
	movl	%edx,%esi
	movl	%ebx,%eax
	call	SYSTEM_FILEPOS$file$$INT64
	cmpl	%edx,%esi
	jl	Lj19421
	jg	Lj19422
	cmpl	%eax,%edi
	jnbe	Lj19422
Lj19421:
	movb	$1,(%esp)
	jmp	Lj19418
Lj19422:
	movb	$0,(%esp)
	jmp	Lj19418
Lj19419:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19430
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19431
Lj19430:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19431:
	movw	$103,(%eax)
Lj19418:
Lj19410:
	movb	(%esp),%al
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	movl	12(%esp),%edi
	addl	$16,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SEEK$file$INT64
SYSTEM_SEEK$file$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	%edi,-4(%ebp)
	movl	%eax,%ebx
	movl	8(%ebp),%edi
	movl	12(%ebp),%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19436
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19437
Lj19436:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19437:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19432
	movl	4(%ebx),%eax
	cmpl	$55217,%eax
	jl	Lj19439
	subl	$55217,%eax
	je	Lj19440
	decl	%eax
	jl	Lj19439
	subl	$1,%eax
	jnle	Lj19439
Lj19440:
	pushl	%esi
	pushl	%edi
	movl	8(%ebx),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	$0,%eax
	call	fpc_mul_int64
	pushl	%edx
	pushl	%eax
	movl	(%ebx),%eax
	call	SYSTEM_DO_SEEK$LONGINT$INT64
	jmp	Lj19438
Lj19439:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19453
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19454
Lj19453:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19454:
	movw	$103,(%eax)
Lj19438:
Lj19432:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_TRUNCATE$file
SYSTEM_TRUNCATE$file:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19459
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19460
Lj19459:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19460:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19455
	movl	4(%ebx),%eax
	cmpl	$55218,%eax
	jl	Lj19462
	subl	$55219,%eax
	jnle	Lj19462
	movl	%ebx,%eax
	call	SYSTEM_FILEPOS$file$$INT64
	pushl	%edx
	pushl	%eax
	movl	8(%ebx),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	$0,%eax
	call	fpc_mul_int64
	pushl	%edx
	pushl	%eax
	movl	(%ebx),%eax
	call	SYSTEM_DO_TRUNCATE$LONGINT$INT64
	jmp	Lj19461
Lj19462:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19478
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19479
Lj19478:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19479:
	movw	$103,(%eax)
Lj19461:
Lj19455:
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_CLOSE$file
SYSTEM_CLOSE$file:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19484
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19485
Lj19484:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19485:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19480
	movl	4(%ebx),%eax
	cmpl	$55217,%eax
	jl	Lj19487
	subl	$55217,%eax
	je	Lj19488
	decl	%eax
	jl	Lj19487
	subl	$1,%eax
	jnle	Lj19487
Lj19488:
	movl	(%ebx),%eax
	call	SYSTEM_DO_CLOSE$LONGINT
	movl	$55216,4(%ebx)
	jmp	Lj19486
Lj19487:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19495
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19496
Lj19495:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19496:
	movw	$103,(%eax)
Lj19486:
Lj19480:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ERASE$file
SYSTEM_ERASE$file:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19501
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19502
Lj19501:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19502:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19497
	movl	4(%ebx),%eax
	cmpl	$55216,%eax
	jne	Lj19504
	leal	76(%ebx),%eax
	call	SYSTEM_DO_ERASE$PCHAR
Lj19504:
Lj19497:
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RENAME$file$PCHAR
SYSTEM_RENAME$file$PCHAR:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19511
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19512
Lj19511:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19512:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19507
	movl	4(%ebx),%eax
	cmpl	$55216,%eax
	jne	Lj19514
	leal	76(%ebx),%eax
	movl	%esi,%edx
	call	SYSTEM_DO_RENAME$PCHAR$PCHAR
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19521
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19522
Lj19521:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19522:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19520
	movl	%esi,%eax
	call	FPC_PCHAR_LENGTH
	movl	%eax,%ecx
	incl	%ecx
	movl	%esi,%eax
	leal	76(%ebx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj19520:
Lj19514:
Lj19507:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RENAME$file$SHORTSTRING
SYSTEM_RENAME$file$SHORTSTRING:
	subl	$264,%esp
	movl	%ebx,256(%esp)
	movl	%esi,260(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19535
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19536
Lj19535:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19536:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19531
	movzbl	(%esi),%ecx
	movl	%esp,%edx
	leal	1(%esi),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movzbl	(%esi),%eax
	movb	$0,(%esp,%eax,1)
	movl	%esp,%edx
	movl	%ebx,%eax
	call	SYSTEM_RENAME$file$PCHAR
Lj19531:
	movl	256(%esp),%ebx
	movl	260(%esp),%esi
	addl	$264,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RENAME$file$CHAR
SYSTEM_RENAME$file$CHAR:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%eax,%esi
	movb	%dl,%bl
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19553
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19554
Lj19553:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19554:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19549
	movb	%bl,(%esp)
	movb	$0,1(%esp)
	movl	%esp,%edx
	movl	%esi,%eax
	call	SYSTEM_RENAME$file$PCHAR
Lj19549:
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ASSIGN$TYPEDFILE$SHORTSTRING
SYSTEM_ASSIGN$TYPEDFILE$SHORTSTRING:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ebx,%eax
	movb	$0,%cl
	movl	$332,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	$-1,(%ebx)
	movl	$55216,4(%ebx)
	movzbl	(%esi),%ecx
	leal	76(%ebx),%edx
	leal	1(%esi),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ASSIGN$TYPEDFILE$PCHAR
SYSTEM_ASSIGN$TYPEDFILE$PCHAR:
	subl	$260,%esp
	movl	%ebx,256(%esp)
	movl	%eax,%ebx
	movl	%edx,%ecx
	movl	%esp,%eax
	movl	$255,%edx
	call	FPC_PCHAR_TO_SHORTSTR
	movl	%esp,%edx
	movl	%ebx,%eax
	call	SYSTEM_ASSIGN$TYPEDFILE$SHORTSTRING
	movl	256(%esp),%ebx
	addl	$260,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ASSIGN$TYPEDFILE$CHAR
SYSTEM_ASSIGN$TYPEDFILE$CHAR:
	subl	$256,%esp
	andl	$255,%edx
	shll	$8,%edx
	orl	$1,%edx
	movw	%dx,(%esp)
	movl	%esp,%edx
	call	SYSTEM_ASSIGN$TYPEDFILE$SHORTSTRING
	addl	$256,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_reset_typed
fpc_reset_typed:
.globl	FPC_RESET_TYPED
FPC_RESET_TYPED:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19605
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19606
Lj19605:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19606:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19601
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_RESET$file$LONGINT
Lj19601:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_rewrite_typed
fpc_rewrite_typed:
.globl	FPC_REWRITE_TYPED
FPC_REWRITE_TYPED:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19615
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19616
Lj19615:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19616:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19611
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_REWRITE$file$LONGINT
Lj19611:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_DOASSIGN$TYPEDFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$528,%esp
	movl	%ebx,-528(%ebp)
	movl	%eax,%ebx
	pushl	$2
	movl	$_$SYSTEM$_Ld40,%eax
	movl	%eax,-268(%ebp)
	movl	$1000000000,%eax
	call	SYSTEM_RANDOM$LONGINT$$LONGINT
	leal	-524(%ebp),%ecx
	movb	$8,%dl
	call	SYSTEM_HEXSTR$LONGINT$BYTE$$SHORTSTRING
	leal	-524(%ebp),%eax
	movl	%eax,-264(%ebp)
	movl	$_$SYSTEM$_Ld41,%eax
	movl	%eax,-260(%ebp)
	leal	-268(%ebp),%ecx
	leal	-256(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat_multi
	leal	-256(%ebp),%edx
	movl	%ebx,%eax
	call	SYSTEM_ASSIGN$TYPEDFILE$SHORTSTRING
	movl	-528(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	fpc_reset_typed_iso
fpc_reset_typed_iso:
.globl	FPC_RESET_TYPED_ISO
FPC_RESET_TYPED_ISO:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19647
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19648
Lj19647:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19648:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19643
	movl	4(%ebx),%eax
	testl	%eax,%eax
	jne	Lj19650
	movl	%ebx,%eax
	call	SYSTEM_DOASSIGN$TYPEDFILE
Lj19650:
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_RESET$file$LONGINT
Lj19643:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_rewrite_typed_iso
fpc_rewrite_typed_iso:
.globl	FPC_REWRITE_TYPED_ISO
FPC_REWRITE_TYPED_ISO:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19661
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19662
Lj19661:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19662:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19657
	movl	4(%ebx),%eax
	testl	%eax,%eax
	jne	Lj19664
	movl	%ebx,%eax
	call	SYSTEM_DOASSIGN$TYPEDFILE
Lj19664:
	movl	%esi,%edx
	movl	%ebx,%eax
	call	SYSTEM_REWRITE$file$LONGINT
Lj19657:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_typed_write
fpc_typed_write:
.globl	FPC_TYPED_WRITE
FPC_TYPED_WRITE:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,%edi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19675
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19676
Lj19675:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19676:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19671
	movl	4(%esi),%eax
	cmpl	$55217,%eax
	jl	Lj19678
	subl	$55217,%eax
	je	Lj19680
	decl	%eax
	jl	Lj19678
	subl	$1,%eax
	jnle	Lj19678
	movl	%edi,%edx
	movl	%ebx,%ecx
	movl	(%esi),%eax
	call	SYSTEM_DO_WRITE$LONGINT$POINTER$LONGINT$$LONGINT
	jmp	Lj19677
Lj19680:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19689
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19690
Lj19689:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19690:
	movw	$105,(%eax)
	jmp	Lj19677
Lj19678:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19693
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19694
Lj19693:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19694:
	movw	$103,(%eax)
Lj19677:
Lj19671:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	fpc_typed_read
fpc_typed_read:
.globl	FPC_TYPED_READ
FPC_TYPED_READ:
	subl	$12,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	%ecx,%edi
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19699
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19700
Lj19699:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19700:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19695
	movl	4(%esi),%eax
	cmpl	$55217,%eax
	jl	Lj19702
	subl	$55217,%eax
	je	Lj19703
	decl	%eax
	je	Lj19704
	decl	%eax
	jne	Lj19702
Lj19703:
	movl	%edi,%edx
	movl	%ebx,%ecx
	movl	(%esi),%eax
	call	SYSTEM_DO_READ$LONGINT$POINTER$LONGINT$$LONGINT
	cmpl	%ebx,%eax
	jnl	Lj19701
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19717
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19718
Lj19717:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19718:
	movw	$100,(%eax)
	jmp	Lj19701
Lj19704:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19721
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19722
Lj19721:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19722:
	movw	$104,(%eax)
	jmp	Lj19701
Lj19702:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19725
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19726
Lj19725:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19726:
	movw	$103,(%eax)
Lj19701:
Lj19695:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_MKDIR$PCHAR$LONGWORD
SYSTEM_MKDIR$PCHAR$LONGWORD:
.globl	FPC_SYS_MKDIR
FPC_SYS_MKDIR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	%eax,%ebx
	testl	%ebx,%ebx
	je	Lj19727
	testl	%edx,%edx
	je	Lj19727
Lj19731:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19733
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19734
Lj19733:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19734:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19727
	movl	%ebx,%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	pushl	$0
	pushl	%ebx
	call	_$dll$doscalls$_index_270
	addl	$8,%esp
	movl	%eax,%ebx
	movzwl	%bx,%eax
	testl	%eax,%eax
	je	Lj19744
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19747
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19748
Lj19747:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19748:
	movw	%bx,(%eax)
	call	SYSTEM_ERRNO2INOUTRES
Lj19744:
Lj19727:
	movl	-4(%ebp),%ebx
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
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	%eax,%ebx
	movl	%edx,%esi
	cmpl	$1,%esi
	jne	Lj19752
	movb	(%ebx),%al
	cmpb	$46,%al
	jne	Lj19752
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19756
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19757
Lj19756:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19757:
	movw	$16,(%eax)
Lj19752:
	testl	%ebx,%ebx
	je	Lj19749
	testl	%esi,%esi
	je	Lj19749
Lj19760:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19762
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19763
Lj19762:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19763:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19749
	movl	%ebx,%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	pushl	%ebx
	call	_$dll$doscalls$_index_226
	popl	%ebx
	movl	%eax,%ebx
	movzwl	%bx,%eax
	testl	%eax,%eax
	je	Lj19771
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19774
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19775
Lj19774:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19775:
	movw	%bx,(%eax)
	call	SYSTEM_ERRNO2INOUTRES
Lj19771:
Lj19749:
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
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
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edi,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,%ebx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj19776
	testl	%ebx,%ebx
	je	Lj19776
Lj19780:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19782
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19783
Lj19782:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19783:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19776
	cmpl	$2,%ebx
	jnae	Lj19785
	movl	-4(%ebp),%eax
	movb	1(%eax),%dl
	cmpb	$58,%dl
	jne	Lj19785
	movl	-4(%ebp),%edx
	movl	(%edx),%eax
	andl	$223,%eax
	subl	$64,%eax
	pushl	%eax
	call	_$dll$doscalls$_index_220
	popl	%esi
	movl	%eax,%esi
	testl	%eax,%eax
	je	Lj19792
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19795
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19796
Lj19795:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19796:
	movw	%si,(%eax)
	jmp	Lj19817
Lj19792:
	cmpl	$2,%ebx
	jna	Lj19817
	movl	-4(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	movl	%ebx,%eax
	decl	%eax
	movl	-4(%ebp),%edx
	movb	(%edx,%eax,1),%al
	cmpb	$92,%al
	jne	Lj19803
	cmpl	$3,%ebx
	je	Lj19803
	movl	%ebx,%eax
	decl	%eax
	movl	-4(%ebp),%edx
	movb	$0,(%edx,%eax,1)
Lj19803:
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_255
	popl	%edi
	movl	%eax,%esi
	testl	%eax,%eax
	je	Lj19817
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19815
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19816
Lj19815:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19816:
	movw	%si,%dx
	movw	%dx,(%eax)
	call	SYSTEM_ERRNO2INOUTRES
	jmp	Lj19817
Lj19785:
	movl	-4(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	cmpl	$1,%ebx
	jna	Lj19821
	movl	%ebx,%eax
	decl	%eax
	movl	-4(%ebp),%edx
	movb	(%edx,%eax,1),%al
	cmpb	$92,%al
	jne	Lj19821
	movl	%ebx,%eax
	decl	%eax
	movl	-4(%ebp),%edx
	movb	$0,(%edx,%eax,1)
Lj19821:
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_255
	popl	%ebx
	movl	%eax,%esi
	testl	%eax,%eax
	je	Lj19830
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19833
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19834
Lj19833:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19834:
	movw	%si,%dx
	movw	%dx,(%eax)
	call	SYSTEM_ERRNO2INOUTRES
Lj19830:
Lj19817:
Lj19776:
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETDIR$BYTE$OPENSTRING
SYSTEM_GETDIR$BYTE$OPENSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%ebx,-280(%ebp)
	movl	%esi,-276(%ebp)
	movl	%edi,-272(%ebp)
	movb	%al,%bl
	movl	%edx,-268(%ebp)
	movl	%ecx,%esi
	movl	-268(%ebp),%eax
	movb	$0,4(%eax)
	movl	-268(%ebp),%eax
	leal	4(%eax),%edx
	movl	$252,-4(%ebp)
	leal	-4(%ebp),%eax
	pushl	%eax
	pushl	%edx
	movzbl	%bl,%eax
	pushl	%eax
	call	_$dll$doscalls$_index_274
	addl	$12,%esp
	movw	%ax,%di
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19851
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19852
Lj19851:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19852:
	movw	%di,(%eax)
	movl	-268(%ebp),%eax
	movb	$3,(%eax)
	movl	-268(%ebp),%eax
	movb	$58,2(%eax)
	movl	-268(%ebp),%eax
	movb	$92,3(%eax)
	movb	$4,%dl
	jmp	Lj19862
	.balign 4,0x90
Lj19861:
	movzbl	%dl,%eax
	movl	-268(%ebp),%ecx
	movzbl	(%ecx,%eax,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jnc	Lj19865
	movzbl	%dl,%eax
	movl	-268(%ebp),%ecx
	movb	$92,(%ecx,%eax,1)
Lj19865:
	movl	-268(%ebp),%eax
	movb	%dl,(%eax)
	incb	%dl
Lj19862:
	movzbl	%dl,%eax
	movl	-268(%ebp),%ecx
	movb	(%ecx,%eax,1),%al
	testb	%al,%al
	jne	Lj19861
Lj19863:
	movzbl	%bl,%eax
	testl	%eax,%eax
	je	Lj19871
	movzbl	%bl,%edx
	addl	$64,%edx
	movl	-268(%ebp),%eax
	movb	%dl,1(%eax)
	jmp	Lj19874
Lj19871:
	leal	-8(%ebp),%eax
	pushl	%eax
	leal	-4(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_275
	addl	$8,%esp
	movl	-4(%ebp),%edx
	addl	$64,%edx
	movl	-268(%ebp),%eax
	movb	%dl,1(%eax)
Lj19874:
	movb	TC_SYSTEM_FILENAMECASESENSITIVE,%al
	testb	%al,%al
	jne	Lj19882
	leal	-264(%ebp),%edx
	movl	-268(%ebp),%eax
	call	SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING
	leal	-264(%ebp),%ecx
	movl	%esi,%edx
	movl	-268(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj19882:
	movl	-280(%ebp),%ebx
	movl	-276(%ebp),%esi
	movl	-272(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETDIR$BYTE$ANSISTRING
SYSTEM_GETDIR$BYTE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$308,%esp
	movl	%ebx,-308(%ebp)
	movb	%al,%bl
	movl	%edx,-4(%ebp)
	movl	$0,-304(%ebp)
	leal	-272(%ebp),%ecx
	leal	-296(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj19895
	leal	-260(%ebp),%edx
	movb	%bl,%al
	movl	$255,%ecx
	call	SYSTEM_GETDIR$BYTE$OPENSTRING
	leal	-304(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-304(%ebp)
	leal	-304(%ebp),%edx
	leal	-260(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-304(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-304(%ebp),%eax
	movl	%eax,(%ebx)
Lj19895:
	call	FPC_POPADDRSTACK
	leal	-304(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-304(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj19896
	call	FPC_RERAISE
Lj19896:
	movl	-308(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_MKDIR$SHORTSTRING
SYSTEM_MKDIR$SHORTSTRING:
	subl	$260,%esp
	movl	%ebx,256(%esp)
	movl	%eax,%ebx
	movzbl	(%ebx),%eax
	testl	%eax,%eax
	je	Lj19910
Lj19914:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19915
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19916
Lj19915:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19916:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19910
	movzbl	(%ebx),%ecx
	movl	%esp,%edx
	leal	1(%ebx),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movzbl	(%ebx),%eax
	movb	$0,(%esp,%eax,1)
	movl	%esp,%eax
	movzbl	(%ebx),%edx
	call	SYSTEM_MKDIR$PCHAR$LONGWORD
Lj19910:
	movl	256(%esp),%ebx
	addl	$260,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RMDIR$SHORTSTRING
SYSTEM_RMDIR$SHORTSTRING:
	subl	$260,%esp
	movl	%ebx,256(%esp)
	movl	%eax,%ebx
	movzbl	(%ebx),%eax
	testl	%eax,%eax
	je	Lj19929
Lj19933:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19934
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19935
Lj19934:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19935:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19929
	movzbl	(%ebx),%ecx
	movl	%esp,%edx
	leal	1(%ebx),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movzbl	(%ebx),%eax
	movb	$0,(%esp,%eax,1)
	movl	%esp,%eax
	movzbl	(%ebx),%edx
	call	SYSTEM_RMDIR$PCHAR$LONGWORD
Lj19929:
	movl	256(%esp),%ebx
	addl	$260,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_CHDIR$SHORTSTRING
SYSTEM_CHDIR$SHORTSTRING:
	subl	$260,%esp
	movl	%ebx,256(%esp)
	movl	%eax,%ebx
	movzbl	(%ebx),%eax
	testl	%eax,%eax
	je	Lj19948
Lj19952:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19953
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19954
Lj19953:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19954:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19948
	movzbl	(%ebx),%ecx
	movl	%esp,%edx
	leal	1(%ebx),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movzbl	(%ebx),%eax
	movb	$0,(%esp,%eax,1)
	movl	%esp,%eax
	movzbl	(%ebx),%edx
	call	SYSTEM_CHDIR$PCHAR$LONGWORD
Lj19948:
	movl	256(%esp),%ebx
	addl	$260,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_IS_INTRESOURCE$PCHAR$$BOOLEAN
SYSTEM_IS_INTRESOURCE$PCHAR$$BOOLEAN:
	shrl	$16,%eax
	testl	%eax,%eax
	seteb	%al
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_MAKELANGID$WORD$WORD$$WORD
SYSTEM_MAKELANGID$WORD$WORD$$WORD:
	andl	$1023,%eax
	andl	$65535,%edx
	shll	$10,%edx
	orl	%edx,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FINDRESOURCE$LONGWORD$ANSISTRING$ANSISTRING$$LONGWORD
SYSTEM_FINDRESOURCE$LONGWORD$ANSISTRING$ANSISTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%ebx,-52(%ebp)
	movl	%eax,%ebx
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj19977
	movl	-8(%ebp),%ecx
	testl	%ecx,%ecx
	jne	Lj19984
	movl	$FPC_EMPTYCHAR,%ecx
Lj19984:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj19987
	movl	$FPC_EMPTYCHAR,%edx
Lj19987:
	movl	%ebx,%eax
	call	SYSTEM_FINDRESOURCE$LONGWORD$PCHAR$PCHAR$$LONGWORD
	movl	%eax,%ebx
Lj19977:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-8(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj19978
	call	FPC_RERAISE
Lj19978:
	movl	%ebx,%eax
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FINDRESOURCEEX$LONGWORD$ANSISTRING$ANSISTRING$WORD$$LONGWORD
SYSTEM_FINDRESOURCEEX$LONGWORD$ANSISTRING$ANSISTRING$WORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%esi,-52(%ebp)
	movl	%eax,%ebx
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movw	8(%ebp),%si
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj19992
	pushl	%esi
	movl	-8(%ebp),%ecx
	testl	%ecx,%ecx
	jne	Lj20001
	movl	$FPC_EMPTYCHAR,%ecx
Lj20001:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj20004
	movl	$FPC_EMPTYCHAR,%edx
Lj20004:
	movl	%ebx,%eax
	call	SYSTEM_FINDRESOURCEEX$LONGWORD$PCHAR$PCHAR$WORD$$LONGWORD
	movl	%eax,%ebx
Lj19992:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-8(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj19993
	call	FPC_RERAISE
Lj19993:
	movl	%ebx,%eax
	movl	-56(%ebp),%ebx
	movl	-52(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_DEFAULTHINSTANCE$$LONGWORD:
	movl	$0,%eax
	ret

.text
	.balign 4,0x90
SYSTEM_DEFAULTENUMRESOURCETYPES$LONGWORD$ENUMRESTYPEPROC$LONGINT$$LONGBOOL:
	movl	$0,%eax
	ret

.text
	.balign 4,0x90
SYSTEM_DEFAULTENUMRESOURCENAMES$LONGWORD$PCHAR$ENUMRESNAMEPROC$LONGINT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	movl	8(%ebp),%eax
	movl	$0,%eax
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_DEFAULTENUMRESOURCELANGUAGES$LONGWORD$PCHAR$PCHAR$ENUMRESLANGPROC$LONGINT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	movl	12(%ebp),%eax
	movl	8(%ebp),%eax
	movl	$0,%eax
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_DEFAULTFINDRESOURCE$LONGWORD$PCHAR$PCHAR$$LONGWORD:
	movl	$0,%eax
	ret

.text
	.balign 4,0x90
SYSTEM_DEFAULTFINDRESOURCEEX$LONGWORD$PCHAR$PCHAR$WORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	movw	8(%ebp),%ax
	movl	$0,%eax
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_DEFAULTLOADRESOURCE$LONGWORD$LONGWORD$$LONGWORD:
	movl	$0,%eax
	ret

.text
	.balign 4,0x90
SYSTEM_DEFAULTSIZEOFRESOURCE$LONGWORD$LONGWORD$$LONGWORD:
	movl	$0,%eax
	ret

.text
	.balign 4,0x90
SYSTEM_DEFAULTLOCKRESOURCE$LONGWORD$$POINTER:
	movl	$0,%eax
	ret

.text
	.balign 4,0x90
SYSTEM_DEFAULTUNLOCKRESOURCE$LONGWORD$$LONGBOOL:
	movl	$0,%eax
	ret

.text
	.balign 4,0x90
SYSTEM_DEFAULTFREERESOURCE$LONGWORD$$LONGBOOL:
	movl	$0,%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETRESOURCEMANAGER$TRESOURCEMANAGER
SYSTEM_GETRESOURCEMANAGER$TRESOURCEMANAGER:
	subl	$12,%esp
	movl	%esi,4(%esp)
	movl	%edi,8(%esp)
	movl	%eax,(%esp)
	movl	(%esp),%edi
	movl	$TC_SYSTEM_RESOURCEMANAGER,%esi
	cld
	movl	$11,%ecx
	rep
	movsl
	movl	4(%esp),%esi
	movl	8(%esp),%edi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETRESOURCEMANAGER$TRESOURCEMANAGER
SYSTEM_SETRESOURCEMANAGER$TRESOURCEMANAGER:
	subl	$8,%esp
	movl	%esi,(%esp)
	movl	%edi,4(%esp)
	movl	%eax,%esi
	movl	$TC_SYSTEM_RESOURCEMANAGER,%edi
	cld
	movl	$11,%ecx
	rep
	movsl
	movl	(%esp),%esi
	movl	4(%esp),%edi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_HINSTANCE$$LONGWORD
SYSTEM_HINSTANCE$$LONGWORD:
	movl	TC_SYSTEM_RESOURCEMANAGER,%eax
	call	*%eax
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ENUMRESOURCETYPES$LONGWORD$ENUMRESTYPEPROC$LONGINT$$LONGBOOL
SYSTEM_ENUMRESOURCETYPES$LONGWORD$ENUMRESTYPEPROC$LONGINT$$LONGBOOL:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	TC_SYSTEM_RESOURCEMANAGER+4,%ebx
	call	*%ebx
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_ENUMRESOURCENAMES$LONGWORD$PCHAR$ENUMRESNAMEPROC$LONGINT$$LONGBOOL
SYSTEM_ENUMRESOURCENAMES$LONGWORD$PCHAR$ENUMRESNAMEPROC$LONGINT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	8(%ebp),%ebx
	pushl	%ebx
	movl	TC_SYSTEM_RESOURCEMANAGER+8,%ebx
	call	*%ebx
	movl	-4(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_ENUMRESOURCELANGUAGES$LONGWORD$PCHAR$PCHAR$ENUMRESLANGPROC$LONGINT$$LONGBOOL
SYSTEM_ENUMRESOURCELANGUAGES$LONGWORD$PCHAR$PCHAR$ENUMRESLANGPROC$LONGINT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	movl	%eax,%ebx
	movl	%edx,%eax
	movl	12(%ebp),%edx
	movl	8(%ebp),%esi
	pushl	%edx
	pushl	%esi
	movl	TC_SYSTEM_RESOURCEMANAGER+12,%esi
	movl	%eax,%edx
	movl	%ebx,%eax
	call	*%esi
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSTEM_FINDRESOURCE$LONGWORD$PCHAR$PCHAR$$LONGWORD
SYSTEM_FINDRESOURCE$LONGWORD$PCHAR$PCHAR$$LONGWORD:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	TC_SYSTEM_RESOURCEMANAGER+16,%ebx
	call	*%ebx
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FINDRESOURCEEX$LONGWORD$PCHAR$PCHAR$WORD$$LONGWORD
SYSTEM_FINDRESOURCEEX$LONGWORD$PCHAR$PCHAR$WORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movw	8(%ebp),%bx
	pushl	%ebx
	movl	TC_SYSTEM_RESOURCEMANAGER+20,%ebx
	call	*%ebx
	movl	-4(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSTEM_LOADRESOURCE$LONGWORD$LONGWORD$$LONGWORD
SYSTEM_LOADRESOURCE$LONGWORD$LONGWORD$$LONGWORD:
	movl	TC_SYSTEM_RESOURCEMANAGER+24,%ecx
	call	*%ecx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SIZEOFRESOURCE$LONGWORD$LONGWORD$$LONGWORD
SYSTEM_SIZEOFRESOURCE$LONGWORD$LONGWORD$$LONGWORD:
	movl	TC_SYSTEM_RESOURCEMANAGER+28,%ecx
	call	*%ecx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_LOCKRESOURCE$LONGWORD$$POINTER
SYSTEM_LOCKRESOURCE$LONGWORD$$POINTER:
	movl	TC_SYSTEM_RESOURCEMANAGER+32,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_UNLOCKRESOURCE$LONGWORD$$LONGBOOL
SYSTEM_UNLOCKRESOURCE$LONGWORD$$LONGBOOL:
	movl	TC_SYSTEM_RESOURCEMANAGER+36,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_FREERESOURCE$LONGWORD$$LONGBOOL
SYSTEM_FREERESOURCE$LONGWORD$$LONGBOOL:
	movl	TC_SYSTEM_RESOURCEMANAGER+40,%edx
	call	*%edx
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSSETCTRLBREAKHANDLER$TCTRLBREAKHANDLER$$TCTRLBREAKHANDLER
SYSTEM_SYSSETCTRLBREAKHANDLER$TCTRLBREAKHANDLER$$TCTRLBREAKHANDLER:
	movl	%eax,%edx
	movl	TC_SYSTEM_CTRLBREAKHANDLER,%eax
	movl	%edx,TC_SYSTEM_CTRLBREAKHANDLER
	ret

.text
	.balign 4,0x90
SYSTEM_IS_PREFETCH$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,%ebx
	movb	$0,-36(%ebp)
	movl	$16,-20(%ebp)
	leal	-24(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	pushl	%eax
	pushl	%ebx
	call	_$dll$doscalls$_index_306
	addl	$12,%esp
	testl	%eax,%eax
	jne	Lj20161
	movl	-24(%ebp),%eax
	andl	$16400,%eax
	je	Lj20161
	movl	-20(%ebp),%eax
	cmpl	$16,%eax
	jnae	Lj20161
	movl	%ebx,%eax
	leal	-16(%ebp),%edx
	movl	$16,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj20183:
	movl	$0,%ecx
	movb	$1,-32(%ebp)
	jmp	Lj20189
	.balign 4,0x90
Lj20188:
	movb	-16(%ebp,%ecx,1),%dl
	movb	%dl,%al
	andb	$15,%al
	movb	%al,-28(%ebp)
	movb	%dl,%al
	andb	$240,%al
	movb	%al,%bl
	testb	%al,%al
	je	Lj20202
	subb	$32,%al
	je	Lj20199
	subb	$16,%al
	je	Lj20199
	subb	$48,%al
	je	Lj20200
	subb	$144,%al
	je	Lj20201
	jmp	Lj20198
Lj20199:
	movb	-28(%ebp),%al
	andl	$7,%eax
	cmpl	$6,%eax
	seteb	-32(%ebp)
	jmp	Lj20197
Lj20200:
	movb	-28(%ebp),%al
	andl	$12,%eax
	cmpl	$4,%eax
	seteb	-32(%ebp)
	jmp	Lj20197
Lj20201:
	movzbl	-28(%ebp),%eax
	testl	%eax,%eax
	stc
	je	Lj20209
	subl	$2,%eax
	cmpl	$2,%eax
Lj20209:
	setcb	-32(%ebp)
	jmp	Lj20197
Lj20202:
	movzbl	-28(%ebp),%eax
	cmpl	$15,%eax
	jne	Lj20211
	movl	%ecx,%eax
	incl	%eax
	movzbl	-16(%ebp,%eax,1),%eax
	cmpl	$13,%eax
	je	Lj20210
	cmpl	$24,%eax
Lj20213:
	jne	Lj20211
Lj20210:
	movb	$1,-36(%ebp)
	jmp	Lj20161
Lj20211:
	movb	$0,-36(%ebp)
	jmp	Lj20161
Lj20198:
	movb	$0,-32(%ebp)
Lj20197:
	incl	%ecx
Lj20189:
	movb	-32(%ebp),%al
	testb	%al,%al
	je	Lj20190
	cmpl	$15,%ecx
	jl	Lj20188
Lj20190:
Lj20161:
	movb	-36(%ebp),%al
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_JUMPTOHANDLEERRORFRAME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	(%ebp),%eax
	movl	%eax,-8(%ebp)
	movzbl	TC_SYSTEM_EXCEPTLEVEL,%eax
	testl	%eax,%eax
	jng	Lj20221
	decb	TC_SYSTEM_EXCEPTLEVEL
Lj20221:
	movzbl	TC_SYSTEM_EXCEPTLEVEL,%eax
	movl	U_SYSTEM_EXCEPTEIP(,%eax,4),%eax
	movl	%eax,-4(%ebp)
	movzbl	TC_SYSTEM_EXCEPTLEVEL,%eax
	movzbl	U_SYSTEM_EXCEPTERROR(%eax),%eax
	movl	%eax,-12(%ebp)
	movzbl	TC_SYSTEM_EXCEPTLEVEL,%eax
	cmpb	$0,U_SYSTEM_RESETFPU(%eax)
	je	Lj20227
	call	SYSTEM_SYSRESETFPU
Lj20227:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	pushl	-4(%ebp)
	movl	-8(%ebp),%ebp
	jmp	SYSTEM_HANDLEERRORADDRFRAME$LONGINT$POINTER$POINTER
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSTEM_EXCEPTION_HANDLER$crc1651982D:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	16(%ebp),%esi
	movl	20(%ebp),%eax
	movl	$0,-4(%ebp)
	movl	172(%esi),%eax
	cmpl	U_SYSTEM__SS,%eax
	jne	Lj20233
	movb	$0,-12(%ebp)
	movb	$1,%bl
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	cmpl	$-2147418111,%edx
	jb	Lj20239
	subl	$-2147418111,%edx
	je	Lj20242
	subl	$1073676292,%edx
	je	Lj20248
	subl	$23,%edx
	je	Lj20247
	subl	$119,%edx
	je	Lj20241
	decl	%edx
	je	Lj20244
	decl	%edx
	je	Lj20240
	decl	%edx
	jb	Lj20239
	subl	$1,%edx
	jbe	Lj20245
	decl	%edx
	je	Lj20243
	decl	%edx
	je	Lj20245
	decl	%edx
	je	Lj20244
	decl	%edx
	je	Lj20240
	decl	%edx
	je	Lj20246
	decl	%edx
	je	Lj20250
	subl	$65382,%edx
	je	Lj20249
	jmp	Lj20239
Lj20240:
	movb	$200,-12(%ebp)
	jmp	Lj20238
Lj20241:
	movb	$201,-12(%ebp)
	movb	$0,%bl
	jmp	Lj20238
Lj20242:
	movb	$202,-12(%ebp)
	movb	$0,%bl
	jmp	Lj20238
Lj20243:
	movb	$205,-12(%ebp)
	jmp	Lj20238
Lj20244:
	movb	$206,-12(%ebp)
	jmp	Lj20238
Lj20245:
	movb	$207,-12(%ebp)
	jmp	Lj20238
Lj20246:
	movb	$215,-12(%ebp)
	movb	$0,%bl
	jmp	Lj20238
Lj20247:
	cmpb	$0,U_SYSTEM_SSE_CHECK
	je	Lj20272
	movb	$0,U_SYSTEM_OS_SUPPORTS_SSE
	addl	$3,156(%esi)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	$-1,-4(%ebp)
	jmp	Lj20238
Lj20272:
	movb	$216,-12(%ebp)
	jmp	Lj20238
Lj20248:
	movl	156(%esi),%eax
	call	SYSTEM_IS_PREFETCH$POINTER$$BOOLEAN
	testb	%al,%al
	je	Lj20283
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	$-1,-4(%ebp)
	jmp	Lj20238
Lj20283:
	movb	$216,-12(%ebp)
	jmp	Lj20238
Lj20249:
	movl	-8(%ebp),%eax
	movl	20(%eax),%edx
	cmpl	$1,%edx
	jb	Lj20238
	decl	%edx
	je	Lj20296
	subl	$2,%edx
	je	Lj20295
	decl	%edx
	je	Lj20296
	jmp	Lj20238
Lj20295:
	movb	$217,-12(%ebp)
	jmp	Lj20238
Lj20296:
	cmpl	$0,TC_SYSTEM_CTRLBREAKHANDLER
	je	Lj20238
	movl	-8(%ebp),%edx
	movl	20(%edx),%eax
	cmpl	$4,%eax
	seteb	%al
	movl	TC_SYSTEM_CTRLBREAKHANDLER,%edx
	call	*%edx
	testb	%al,%al
	je	Lj20302
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	$-1,-4(%ebp)
	movl	-8(%ebp),%eax
	pushl	20(%eax)
	call	_$dll$doscalls$_index_418
	popl	%edi
	jmp	Lj20238
Lj20302:
	movb	$217,-12(%ebp)
	jmp	Lj20238
	jmp	Lj20238
Lj20250:
	movb	$218,-12(%ebp)
	movb	$0,%bl
	jmp	Lj20238
Lj20239:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	andl	$-1073741824,%edx
	cmpl	$-1073741824,%edx
	jne	Lj20319
	movb	$217,-12(%ebp)
	jmp	Lj20322
Lj20319:
	movb	$255,-12(%ebp)
Lj20322:
Lj20238:
	movzbl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj20341
	movzbl	TC_SYSTEM_EXCEPTLEVEL,%eax
	cmpl	$16,%eax
	jnl	Lj20341
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	cmpl	$-1073676287,%edx
	jnb	Lj20341
	movzbl	TC_SYSTEM_EXCEPTLEVEL,%eax
	movl	156(%esi),%edx
	movl	%edx,U_SYSTEM_EXCEPTEIP(,%eax,4)
	movzbl	TC_SYSTEM_EXCEPTLEVEL,%edx
	movb	-12(%ebp),%al
	movb	%al,U_SYSTEM_EXCEPTERROR(%edx)
	movzbl	TC_SYSTEM_EXCEPTLEVEL,%eax
	movb	%bl,U_SYSTEM_RESETFPU(%eax)
	incb	TC_SYSTEM_EXCEPTLEVEL
	movl	$SYSTEM_JUMPTOHANDLEERRORFRAME,%eax
	movl	%eax,156(%esi)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	$-1,-4(%ebp)
	jmp	Lj20341
Lj20233:
	movl	-8(%ebp),%edx
	movl	(%edx),%eax
	cmpl	$-1073676285,%eax
	jne	Lj20343
	movl	-8(%ebp),%eax
	movl	20(%eax),%edx
	andl	$5,%edx
	je	Lj20343
	cmpl	$0,TC_SYSTEM_CTRLBREAKHANDLER
	je	Lj20343
	movl	-8(%ebp),%eax
	movl	20(%eax),%edx
	cmpl	$4,%edx
	seteb	%al
	movl	TC_SYSTEM_CTRLBREAKHANDLER,%edx
	call	*%edx
	testb	%al,%al
	je	Lj20347
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	$-1,-4(%ebp)
	movl	-8(%ebp),%eax
	pushl	20(%eax)
	call	_$dll$doscalls$_index_418
	popl	%ebx
	jmp	Lj20356
Lj20347:
	movb	$217,-12(%ebp)
Lj20356:
Lj20343:
Lj20341:
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INSTALL_EXCEPTION_HANDLER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	_excptregptr,%eax
	movl	$0,(%eax)
	movl	$SYSTEM_SYSTEM_EXCEPTION_HANDLER$crc1651982D,%edx
	movl	%edx,4(%eax)
	pushl	$2
	call	_$dll$doscalls$_index_212
	popl	%ebx
	movl	_excptregptr,%eax
	pushl	%eax
	call	_$dll$doscalls$_index_354
	popl	%ebx
	cmpb	$0,operatingsystem_isconsole
	je	Lj20374
	leal	-4(%ebp),%eax
	pushl	%eax
	pushl	$1
	call	_$dll$doscalls$_index_378
	addl	$8,%esp
	pushl	$1
	call	_$dll$doscalls$_index_418
	popl	%ebx
	pushl	$4
	call	_$dll$doscalls$_index_418
	popl	%ebx
Lj20374:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_REMOVE_EXCEPTION_HANDLERS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	_excptregptr,%eax
	pushl	%eax
	call	_$dll$doscalls$_index_355
	popl	%ebx
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSTEM_EXIT:
	pushl	%ebp
	movl	%esp,%ebp
	call	SYSTEM_REMOVE_EXCEPTION_HANDLERS
	pushl	operatingsystem_result
	pushl	$1
	call	_$dll$doscalls$_index_234
	addl	$8,%esp
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_PARAMCOUNT$$LONGINT
SYSTEM_PARAMCOUNT$$LONGINT:
	subl	$4,%esp
	movl	U_SYSTEM_ARGC,%eax
	decl	%eax
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_PARAMSTR$LONGINT$$SHORTSTRING
SYSTEM_PARAMSTR$LONGINT$$SHORTSTRING:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	%eax,%ebx
	movl	%edx,%esi
	testl	%ebx,%ebx
	jnge	Lj20398
	call	SYSTEM_PARAMCOUNT$$LONGINT
	cmpl	%ebx,%eax
	jnge	Lj20398
	movl	U_SYSTEM_ARGV,%eax
	leal	(%eax,%ebx,4),%eax
	movl	(%eax),%ecx
	movl	%esi,%eax
	movl	$255,%edx
	call	FPC_PCHAR_TO_SHORTSTR
	jmp	Lj20410
Lj20398:
	movb	$0,(%esi)
Lj20410:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_RANDOMIZE
SYSTEM_RANDOMIZE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	leal	-12(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_230
	popl	%ebx
	movzbl	-11(%ebp),%eax
	shll	$8,%eax
	movzbl	-12(%ebp),%edx
	addl	%edx,%eax
	movzbl	-10(%ebp),%edx
	shll	$16,%edx
	addl	%edx,%eax
	movzbl	-9(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,U_SYSTEM_RANDSEED
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_ERRORWRITE$TEXTREC$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jng	Lj20422
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	U_SYSTEM_ERRORLEN,%eax
	addl	%eax,%edx
	cmpl	$1024,%edx
	jng	Lj20424
	movl	U_SYSTEM_ERRORLEN,%ebx
	movl	$1024,%eax
	subl	%ebx,%eax
	movl	%eax,%ebx
	jmp	Lj20427
Lj20424:
	movl	-4(%ebp),%eax
	movl	16(%eax),%ebx
Lj20427:
	movl	U_SYSTEM_ERRORLEN,%eax
	leal	U_SYSTEM_ERRORBUF(%eax),%edx
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	movl	%ebx,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	addl	%ebx,U_SYSTEM_ERRORLEN
	movl	U_SYSTEM_ERRORLEN,%eax
	movb	$0,U_SYSTEM_ERRORBUF(%eax)
Lj20422:
	movl	U_SYSTEM_ERRORLEN,%eax
	cmpl	$3,%eax
	jng	Lj20439
	movl	U_SYSTEM_ERRORLEN,%eax
	leal	U_SYSTEM_ERRORBUF(%eax),%eax
	movl	$1,%ebx
	decl	%ebx
	.balign 4,0x90
Lj20444:
	incl	%ebx
	decl	%eax
	movzbl	(%eax),%edx
	cmpl	$10,%edx
	je	Lj20446
	cmpl	$13,%edx
Lj20447:
	jne	Lj20443
Lj20446:
	cmpl	$4,%ebx
	jl	Lj20444
Lj20443:
Lj20439:
	movl	U_SYSTEM_ERRORLEN,%eax
	cmpl	$1024,%eax
	jne	Lj20449
	movl	$4,%ebx
Lj20449:
	cmpl	$4,%ebx
	jne	Lj20453
	pushl	$16448
	pushl	$0
	movl	$_$SYSTEM$_Ld42,%eax
	pushl	%eax
	movl	$U_SYSTEM_ERRORBUF,%eax
	pushl	%eax
	pushl	$0
	pushl	$0
	movl	TC_SYSTEM_WINMESSAGEBOX,%eax
	call	*%eax
	addl	$24,%esp
	movl	$0,U_SYSTEM_ERRORLEN
Lj20453:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movw	$0,%ax
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_ERRORCLOSE$TEXTREC$$SMALLINT:
	pushl	%ebp
	movl	%esp,%ebp
	movl	U_SYSTEM_ERRORLEN,%eax
	testl	%eax,%eax
	jng	Lj20475
	pushl	$16448
	pushl	$0
	movl	$_$SYSTEM$_Ld42,%eax
	pushl	%eax
	movl	$U_SYSTEM_ERRORBUF,%eax
	pushl	%eax
	pushl	$0
	pushl	$0
	movl	TC_SYSTEM_WINMESSAGEBOX,%eax
	call	*%eax
	addl	$24,%esp
	movl	$0,U_SYSTEM_ERRORLEN
Lj20475:
	movl	$0,U_SYSTEM_ERRORLEN
	movw	$0,%ax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_ERROROPEN$TEXTREC$$SMALLINT:
	subl	$4,%esp
	movl	%eax,(%esp)
	movl	$SYSTEM_ERRORWRITE$TEXTREC$$SMALLINT,%eax
	movl	(%esp),%edx
	movl	%eax,32(%edx)
	movl	$SYSTEM_ERRORWRITE$TEXTREC$$SMALLINT,%eax
	movl	(%esp),%edx
	movl	%eax,36(%edx)
	movl	$SYSTEM_ERRORCLOSE$TEXTREC$$SMALLINT,%eax
	movl	(%esp),%edx
	movl	%eax,40(%edx)
	movw	$0,%ax
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_ASSIGNERROR$TEXT:
	subl	$4,%esp
	movl	%ebx,(%esp)
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	$_$SYSTEM$_Ld1,%edx
	call	SYSTEM_ASSIGN$TEXT$SHORTSTRING
	movl	$SYSTEM_ERROROPEN$TEXTREC$$SMALLINT,%eax
	movl	%eax,28(%ebx)
	movl	%ebx,%eax
	call	SYSTEM_REWRITE$TEXT
	movl	(%esp),%ebx
	addl	$4,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SYSINITSTDIO
SYSTEM_SYSINITSTDIO:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20518
	movl	U_SYSTEM_INPUT,%eax
	call	*%edx
	jmp	Lj20519
Lj20518:
	movl	$U_SYSTEM_INPUT+4,%eax
Lj20519:
	movl	$0,%ecx
	movl	$55217,%edx
	call	SYSTEM_OPENSTDIO$TEXT$LONGINT$LONGINT
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20526
	movl	U_SYSTEM_OUTPUT,%eax
	call	*%edx
	jmp	Lj20527
Lj20526:
	movl	$U_SYSTEM_OUTPUT+4,%eax
Lj20527:
	movl	$1,%ecx
	movl	$55218,%edx
	call	SYSTEM_OPENSTDIO$TEXT$LONGINT$LONGINT
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20534
	movl	U_SYSTEM_ERROUTPUT,%eax
	call	*%edx
	jmp	Lj20535
Lj20534:
	movl	$U_SYSTEM_ERROUTPUT+4,%eax
Lj20535:
	movl	$2,%ecx
	movl	$55218,%edx
	call	SYSTEM_OPENSTDIO$TEXT$LONGINT$LONGINT
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20542
	movl	U_SYSTEM_STDOUT,%eax
	call	*%edx
	jmp	Lj20543
Lj20542:
	movl	$U_SYSTEM_STDOUT+4,%eax
Lj20543:
	movl	$1,%ecx
	movl	$55218,%edx
	call	SYSTEM_OPENSTDIO$TEXT$LONGINT$LONGINT
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20550
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj20551
Lj20550:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj20551:
	movl	$2,%ecx
	movl	$55218,%edx
	call	SYSTEM_OPENSTDIO$TEXT$LONGINT$LONGINT
	ret

.text
	.balign 4,0x90
SYSTEM_STRCOPY$PCHAR$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%edi,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,%edi
	testl	%edi,%edi
	jz	Lj20558
	leal	3(%edi),%ecx
	andl	$-4,%ecx
	movl	%edi,%esi
	subl	%edi,%ecx
	movl	%eax,%edi
	jz	Lj20559
Lj20560:
	movb	(%esi),%al
	incl	%edi
	incl	%esi
	testb	%al,%al
	movb	%al,-1(%edi)
	jz	Lj20558
	decl	%ecx
	jnz	Lj20560
	.balign 16,0x90
Lj20559:
	movl	(%esi),%eax
	movl	%eax,%edx
	leal	-16843009(%eax),%ecx
	notl	%edx
	addl	$4,%esi
	andl	%edx,%ecx
	andl	$-2139062144,%ecx
	jnz	Lj20561
	movl	%eax,(%edi)
	addl	$4,%edi
	jmp	Lj20559
Lj20561:
	testl	$255,%eax
	jz	Lj20562
	testl	$65280,%eax
	jz	Lj20563
	testl	$16711680,%eax
	jz	Lj20564
	movl	%eax,(%edi)
	jmp	Lj20558
Lj20564:
	xorb	%dl,%dl
	movw	%ax,(%edi)
	movb	%dl,2(%edi)
	jmp	Lj20558
Lj20563:
	movw	%ax,(%edi)
	jmp	Lj20558
Lj20562:
	movb	%al,(%edi)
Lj20558:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edi
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETDEFAULTOS2FILETYPE$SHORTSTRING
SYSTEM_SETDEFAULTOS2FILETYPE$SHORTSTRING:
	subl	$260,%esp
	movl	%eax,(%esp)
	movl	(%esp),%edx
	leal	4(%esp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20569
	movl	U_SYSTEM_DEFAULTFILETYPE,%eax
	call	*%edx
	jmp	Lj20570
Lj20569:
	movl	$U_SYSTEM_DEFAULTFILETYPE+4,%eax
Lj20570:
	leal	4(%esp),%ecx
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	addl	$260,%esp
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_SETDEFAULTOS2CREATOR$SHORTSTRING
SYSTEM_SETDEFAULTOS2CREATOR$SHORTSTRING:
	subl	$260,%esp
	movl	%eax,(%esp)
	movl	(%esp),%edx
	leal	4(%esp),%ecx
	movl	$255,%eax
	call	FPC_SHORTSTR_ASSIGN
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20579
	movl	U_SYSTEM_DEFAULTCREATOR,%eax
	call	*%edx
	jmp	Lj20580
Lj20579:
	movl	$U_SYSTEM_DEFAULTCREATOR+4,%eax
Lj20580:
	leal	4(%esp),%ecx
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	addl	$260,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_INITENVIRONMENT:
	subl	$8,%esp
	movl	%ebx,(%esp)
	movl	%esi,4(%esp)
	movl	$0,%ebx
	movl	U_SYSTEM_ENVIRONMENT,%eax
	jmp	Lj20592
	.balign 4,0x90
Lj20591:
	incl	%ebx
	jmp	Lj20595
	.balign 4,0x90
Lj20594:
	incl	%eax
Lj20595:
	movb	(%eax),%dl
	testb	%dl,%dl
	jne	Lj20594
Lj20596:
	incl	%eax
Lj20592:
	movb	(%eax),%dl
	testb	%dl,%dl
	jne	Lj20591
Lj20593:
	movl	%ebx,%eax
	incl	%eax
	shll	$2,%eax
	call	SYSTEM_SYSGETMEM$LONGWORD$$POINTER
	movl	%eax,U_SYSTEM_ENVP
	movl	%ebx,U_SYSTEM_ENVC
	movl	U_SYSTEM_ENVP,%eax
	testl	%eax,%eax
	je	Lj20585
	movl	U_SYSTEM_ENVIRONMENT,%ebx
	movl	$0,%esi
	jmp	Lj20610
	.balign 4,0x90
Lj20609:
	movl	%ebx,%eax
	call	FPC_PCHAR_LENGTH
	incl	%eax
	call	SYSTEM_SYSGETMEM$LONGWORD$$POINTER
	movl	U_SYSTEM_ENVP,%edx
	movl	%eax,(%edx,%esi,4)
	movl	U_SYSTEM_ENVP,%eax
	movl	(%eax,%esi,4),%eax
	movl	%ebx,%edx
	call	SYSTEM_STRCOPY$PCHAR$PCHAR$$PCHAR
	incl	%esi
	jmp	Lj20623
	.balign 4,0x90
Lj20622:
	incl	%ebx
Lj20623:
	movb	(%ebx),%al
	testb	%al,%al
	jne	Lj20622
Lj20624:
	incl	%ebx
Lj20610:
	movb	(%ebx),%al
	testb	%al,%al
	jne	Lj20609
Lj20611:
	movl	U_SYSTEM_ENVP,%eax
	movl	$0,(%eax,%esi,4)
Lj20585:
	movl	(%esp),%ebx
	movl	4(%esp),%esi
	addl	$8,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_INITARGUMENTS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	$260,%eax
	call	SYSTEM_SYSALLOCMEM$LONGWORD$$POINTER
	movl	%eax,TC_SYSTEM_CMDLINE
	movl	$32,%eax
	call	SYSTEM_SYSALLOCMEM$LONGWORD$$POINTER
	movl	%eax,U_SYSTEM_ARGV
	movl	U_SYSTEM_PIB,%eax
	movl	12(%eax),%eax
	call	FPC_PCHAR_LENGTH
	movl	%eax,%ebx
	incl	%ebx
	pushl	TC_SYSTEM_CMDLINE
	pushl	$260
	movl	U_SYSTEM_PIB,%eax
	pushl	8(%eax)
	call	_$dll$doscalls$_index_320
	addl	$12,%esp
	testl	%eax,%eax
	jne	Lj20644
	movl	TC_SYSTEM_CMDLINE,%eax
	call	FPC_PCHAR_LENGTH
	incl	%eax
	movl	%eax,-4(%ebp)
	jmp	Lj20655
Lj20644:
	movl	U_SYSTEM_PIB,%eax
	movl	12(%eax),%eax
	movl	%ebx,%ecx
	movl	$TC_SYSTEM_CMDLINE,%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	%ebx,-4(%ebp)
Lj20655:
	movl	-4(%ebp),%eax
	call	SYSTEM_SYSALLOCMEM$LONGWORD$$POINTER
	movl	U_SYSTEM_ARGV,%edx
	movl	%eax,(%edx)
	movl	U_SYSTEM_ARGV,%eax
	movl	(%eax),%edx
	movl	TC_SYSTEM_CMDLINE,%eax
	movl	-4(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	$1,-16(%ebp)
	movl	U_SYSTEM_PIB,%eax
	movl	12(%eax),%eax
	addl	%ebx,%eax
	movl	%eax,%ebx
	call	FPC_PCHAR_LENGTH
	incl	%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	addl	-12(%ebp),%edx
	movl	$TC_SYSTEM_CMDLINE,%eax
	call	SYSTEM_SYSREALLOCMEM$POINTER$LONGWORD$$POINTER
	movl	TC_SYSTEM_CMDLINE,%edx
	movl	-4(%ebp),%eax
	leal	(%edx,%eax,1),%edx
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,%ecx
	movl	%ebx,%edi
	movl	%edi,%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	$8,-4(%ebp)
	jmp	Lj20695
	.balign 4,0x90
	jmp	Lj20698
	.balign 4,0x90
Lj20697:
	incl	%edi
Lj20698:
	movzbl	(%edi),%eax
	decl	%eax
	cmpl	$32,%eax
Lj20700:
	jc	Lj20697
Lj20699:
	movb	(%edi),%al
	testb	%al,%al
	je	Lj20696
	movb	$32,-8(%ebp)
	movl	%edi,%ebx
	movl	$0,-12(%ebp)
	jmp	Lj20710
	.balign 4,0x90
Lj20709:
	movb	(%edi),%al
	cmpb	$1,%al
	jb	Lj20713
	subb	$32,%al
	jbe	Lj20714
	subb	$2,%al
	je	Lj20715
	subb	$5,%al
	je	Lj20716
	jmp	Lj20713
Lj20714:
	cmpb	$32,-8(%ebp)
	je	Lj20711
	incl	-12(%ebp)
Lj20719:
	jmp	Lj20712
Lj20715:
	cmpb	$39,-8(%ebp)
	je	Lj20721
	movl	%edi,%eax
	incl	%eax
	movb	(%eax),%al
	cmpb	$34,%al
	je	Lj20723
	cmpb	$34,-8(%ebp)
	jne	Lj20725
	movb	$32,-8(%ebp)
	jmp	Lj20712
Lj20725:
	movb	$34,-8(%ebp)
	jmp	Lj20712
Lj20723:
	incl	%edi
	jmp	Lj20712
Lj20721:
	incl	-12(%ebp)
	jmp	Lj20712
Lj20716:
	cmpb	$34,-8(%ebp)
	je	Lj20734
	movl	%edi,%eax
	incl	%eax
	movb	(%eax),%al
	cmpb	$39,%al
	je	Lj20736
	cmpb	$39,-8(%ebp)
	jne	Lj20738
	movb	$32,-8(%ebp)
	jmp	Lj20712
Lj20738:
	movb	$39,-8(%ebp)
	jmp	Lj20712
Lj20736:
	incl	%edi
	jmp	Lj20712
Lj20734:
	incl	-12(%ebp)
	jmp	Lj20712
Lj20713:
	incl	-12(%ebp)
Lj20712:
	incl	%edi
Lj20710:
	movb	(%edi),%al
	testb	%al,%al
	jne	Lj20709
Lj20711:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj20747
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	%ebp,%eax
	call	SYSTEM_INITARGUMENTS_ALLOCARG$LONGINT$LONGINT
	movb	$32,-8(%ebp)
	movl	%ebx,%edi
	movl	U_SYSTEM_ARGV,%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%esi
	jmp	Lj20761
	.balign 4,0x90
Lj20760:
	movb	(%edi),%al
	cmpb	$1,%al
	jb	Lj20764
	subb	$32,%al
	jbe	Lj20765
	subb	$2,%al
	je	Lj20766
	subb	$5,%al
	je	Lj20767
	jmp	Lj20764
Lj20765:
	cmpb	$32,-8(%ebp)
	je	Lj20762
	movb	(%edi),%al
	movb	%al,(%esi)
	incl	%esi
Lj20772:
	jmp	Lj20763
Lj20766:
	cmpb	$39,-8(%ebp)
	je	Lj20774
	movl	%edi,%eax
	incl	%eax
	movb	(%eax),%al
	cmpb	$34,%al
	je	Lj20776
	cmpb	$34,-8(%ebp)
	jne	Lj20778
	movb	$32,-8(%ebp)
	jmp	Lj20763
Lj20778:
	movb	$34,-8(%ebp)
	jmp	Lj20763
Lj20776:
	incl	%edi
	jmp	Lj20763
Lj20774:
	movb	(%edi),%al
	movb	%al,(%esi)
	incl	%esi
	jmp	Lj20763
Lj20767:
	cmpb	$34,-8(%ebp)
	je	Lj20789
	movl	%edi,%eax
	incl	%eax
	movb	(%eax),%al
	cmpb	$39,%al
	je	Lj20791
	cmpb	$39,-8(%ebp)
	jne	Lj20793
	movb	$32,-8(%ebp)
	jmp	Lj20763
Lj20793:
	movb	$39,-8(%ebp)
	jmp	Lj20763
Lj20791:
	incl	%edi
	jmp	Lj20763
Lj20789:
	movb	(%edi),%al
	movb	%al,(%esi)
	incl	%esi
	jmp	Lj20763
Lj20764:
	movb	(%edi),%al
	movb	%al,(%esi)
	incl	%esi
Lj20763:
	incl	%edi
Lj20761:
	movb	(%edi),%al
	testb	%al,%al
	jne	Lj20760
Lj20762:
	movb	$0,(%esi)
Lj20747:
	incl	-16(%ebp)
Lj20695:
	movb	(%edi),%al
	testb	%al,%al
	jne	Lj20698
Lj20696:
	movl	-16(%ebp),%edx
	movl	%edx,U_SYSTEM_ARGC
	movl	%ebp,%eax
	movl	$0,%ecx
	call	SYSTEM_INITARGUMENTS_ALLOCARG$LONGINT$LONGINT
	movl	U_SYSTEM_ARGC,%edx
	incl	%edx
	shll	$2,%edx
	movl	$U_SYSTEM_ARGV,%eax
	call	SYSTEM_SYSREALLOCMEM$POINTER$LONGWORD$$POINTER
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INITARGUMENTS_ALLOCARG$LONGINT$LONGINT:
	subl	$12,%esp
	movl	%ebx,4(%esp)
	movl	%esi,8(%esp)
	movl	%eax,(%esp)
	movl	%edx,%ebx
	movl	%ecx,%esi
	movl	(%esp),%eax
	movl	-4(%eax),%eax
	cmpl	%ebx,%eax
	jnle	Lj20820
	movl	(%esp),%edx
	movl	-4(%edx),%eax
	movl	%ebx,%eax
	addl	$8,%eax
	andl	$-8,%eax
	movl	(%esp),%edx
	movl	%eax,-4(%edx)
	movl	(%esp),%eax
	movl	-4(%eax),%edx
	shll	$2,%edx
	movl	$U_SYSTEM_ARGV,%eax
	call	SYSTEM_SYSREALLOCMEM$POINTER$LONGWORD$$POINTER
Lj20820:
	movl	%esi,%eax
	incl	%eax
	call	SYSTEM_SYSALLOCMEM$LONGWORD$$POINTER
	movl	U_SYSTEM_ARGV,%edx
	movl	%eax,(%edx,%ebx,4)
	movl	4(%esp),%ebx
	movl	8(%esp),%esi
	addl	$12,%esp
	ret

.text
	.balign 4,0x90
SYSTEM_GETFILEHANDLECOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$0,-4(%ebp)
	leal	-8(%ebp),%eax
	pushl	%eax
	leal	-4(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_382
	addl	$8,%esp
	testl	%eax,%eax
	je	Lj20838
	movl	$50,%eax
	jmp	Lj20845
Lj20838:
	movl	-8(%ebp),%eax
Lj20845:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_CHECKINITIALSTKLEN$LONGWORD$$LONGWORD:
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
	xorl	%eax,%eax
	movw	%ss,%ax
	movl	%eax,U_SYSTEM__SS
	call	SYSTEM_SYSRESETFPU
	movl	$U_SYSTEM_PIB,%eax
	pushl	%eax
	movl	$U_SYSTEM_TIB,%eax
	pushl	%eax
	call	_$dll$doscalls$_index_312
	addl	$8,%esp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20858
	movl	U_SYSTEM_STACKBOTTOM,%eax
	call	*%edx
	jmp	Lj20859
Lj20858:
	movl	$U_SYSTEM_STACKBOTTOM+4,%eax
Lj20859:
	movl	U_SYSTEM_TIB,%edx
	movl	4(%edx),%edx
	movl	%edx,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20862
	movl	U_SYSTEM_STACKTOP,%eax
	call	*%edx
	jmp	Lj20863
Lj20862:
	movl	$U_SYSTEM_STACKTOP+4,%eax
Lj20863:
	movl	U_SYSTEM_TIB,%edx
	movl	8(%edx),%edx
	movl	%edx,(%eax)
	movl	__stklen,%eax
	call	SYSTEM_CHECKINITIALSTKLEN$LONGWORD$$LONGWORD
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20868
	movl	U_SYSTEM_STACKLENGTH,%eax
	call	*%edx
	jmp	Lj20869
Lj20868:
	movl	$U_SYSTEM_STACKLENGTH+4,%eax
Lj20869:
	movl	%ebx,(%eax)
	movl	U_SYSTEM_PIB,%eax
	movl	24(%eax),%eax
	movl	%eax,U_SYSTEM_APPLICATIONTYPE
	movl	U_SYSTEM_PIB,%eax
	movl	(%eax),%eax
	movl	%eax,U_SYSTEM_PROCESSID
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20876
	movl	U_SYSTEM_THREADID,%eax
	call	*%edx
	jmp	Lj20877
Lj20876:
	movl	$U_SYSTEM_THREADID+4,%eax
Lj20877:
	movl	U_SYSTEM_TIB,%edx
	movl	12(%edx),%edx
	movl	(%edx),%edx
	movl	%edx,(%eax)
	movl	U_SYSTEM_APPLICATIONTYPE,%eax
	cmpl	$3,%eax
	setneb	operatingsystem_isconsole
	movl	$0,TC_SYSTEM_EXITPROC
	call	SYSTEM_INSTALL_EXCEPTION_HANDLER
	call	SYSTEM_GETFILEHANDLECOUNT$$LONGINT
	movl	%eax,TC_SYSTEM_FILEHANDLECOUNT
	call	SYSTEM_INITHEAP
	pushl	$U_SYSTEM_DOSCALLSHANDLE
	movl	$TC_SYSTEM_DOSCALLSNAME,%eax
	pushl	%eax
	call	_$dll$doscalls$_index_319
	addl	$8,%esp
	testl	%eax,%eax
	jne	Lj20885
	pushl	$U_SYSTEM_P
	pushl	$0
	pushl	$981
	pushl	U_SYSTEM_DOSCALLSHANDLE
	call	_$dll$doscalls$_index_321
	addl	$16,%esp
	testl	%eax,%eax
	jne	Lj20891
	movl	U_SYSTEM_P,%eax
	movl	%eax,TC_SYSTEM_SYS_DOSOPENL
	pushl	$U_SYSTEM_P
	pushl	$0
	pushl	$988
	pushl	U_SYSTEM_DOSCALLSHANDLE
	call	_$dll$doscalls$_index_321
	addl	$16,%esp
	testl	%eax,%eax
	jne	Lj20903
	movl	U_SYSTEM_P,%eax
	movl	%eax,TC_SYSTEM_SYS_DOSSETFILEPTRL
	pushl	$U_SYSTEM_P
	pushl	$0
	pushl	$989
	pushl	U_SYSTEM_DOSCALLSHANDLE
	call	_$dll$doscalls$_index_321
	addl	$16,%esp
	testl	%eax,%eax
	jne	Lj20915
	movl	U_SYSTEM_P,%eax
	movl	%eax,TC_SYSTEM_SYS_DOSSETFILESIZEL
	movb	$1,TC_SYSTEM_FSAPI64
Lj20915:
Lj20903:
Lj20891:
Lj20885:
	call	SYSTEM_SYSINITEXCEPTIONS
	call	SYSTEM_FPC_CPUCODEINIT
	call	SYSTEM_SYSINITSTDIO
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20930
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj20931
Lj20930:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj20931:
	movw	$0,(%eax)
	movl	U_SYSTEM_PIB,%eax
	movl	16(%eax),%eax
	movl	%eax,U_SYSTEM_ENVIRONMENT
	call	SYSTEM_INITENVIRONMENT
	call	SYSTEM_INITARGUMENTS
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20936
	movl	U_SYSTEM_DEFAULTCREATOR,%eax
	call	*%edx
	jmp	Lj20937
Lj20936:
	movl	$U_SYSTEM_DEFAULTCREATOR+4,%eax
Lj20937:
	movb	$0,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20940
	movl	U_SYSTEM_DEFAULTFILETYPE,%eax
	call	*%edx
	jmp	Lj20941
Lj20940:
	movl	$U_SYSTEM_DEFAULTFILETYPE+4,%eax
Lj20941:
	movb	$0,(%eax)
	call	SYSTEM_INITSYSTEMTHREADS
	call	SYSTEM_INITVARIANTMANAGER
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
	.globl U_SYSTEM_ARGC
U_SYSTEM_ARGC:
	.zero 4

.bss
	.balign 4
	.globl U_SYSTEM_ARGV
U_SYSTEM_ARGV:
	.zero 4

.bss
	.balign 4
	.globl U_SYSTEM_ENVP
U_SYSTEM_ENVP:
	.zero 4

.bss
	.balign 4
	.globl U_SYSTEM_ENVC
U_SYSTEM_ENVC:
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
U_SYSTEM_OS2THREADMANAGER:
	.zero 152

.bss
	.balign 4
U_SYSTEM_READWRITESTRTEXT:
	.zero 596

.bss
	.balign 4
U_SYSTEM__SS:
	.zero 4

.bss
	.balign 4
U_SYSTEM_EXCEPTEIP:
	.zero 64

.bss
U_SYSTEM_EXCEPTERROR:
	.zero 16

.bss
U_SYSTEM_RESETFPU:
	.zero 16

.bss
	.balign 4
	.globl _excptregptr
_excptregptr:
	.zero 4

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
U_SYSTEM_PIB:
	.zero 4

.bss
	.balign 4
U_SYSTEM_TIB:
	.zero 4

.bss
	.balign 4
U_SYSTEM_RC:
	.zero 4

.bss
U_SYSTEM_ERRSTR:
	.zero 256

.bss
	.balign 4
U_SYSTEM_P:
	.zero 4

.bss
	.balign 4
U_SYSTEM_DOSCALLSHANDLE:
	.zero 4

.data
	.balign 4
.globl	_$SYSTEM$_Ld43
_$SYSTEM$_Ld43:
	.byte	7
	.ascii	"TObject"

.data
	.balign 4
.globl	VMT_SYSTEM_TOBJECT
VMT_SYSTEM_TOBJECT:
	.long	4,-4,0
	.long	_$SYSTEM$_Ld43
	.long	0,0
	.long	_$SYSTEM$_Ld44
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
.globl	_$SYSTEM$_Ld47
_$SYSTEM$_Ld47:
	.long	1
	.long	_$SYSTEM$_Ld48
	.long	VTBL_SYSTEM_TINTERFACEDOBJECT_$_IUNKNOWN
	.long	8
	.long	_$SYSTEM$_Ld49
	.long	0

.data
	.balign 4
.globl	VTBL_SYSTEM_TINTERFACEDOBJECT_$_IUNKNOWN
VTBL_SYSTEM_TINTERFACEDOBJECT_$_IUNKNOWN:
	.long	WRPR_SYSTEM_TINTERFACEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM_TINTERFACEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT
	.long	WRPR_SYSTEM_TINTERFACEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM_TINTERFACEDOBJECT_$___ADDREF$$LONGINT
	.long	WRPR_SYSTEM_TINTERFACEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM_TINTERFACEDOBJECT_$___RELEASE$$LONGINT
	.balign 4
.globl	_$SYSTEM$_Ld48
_$SYSTEM$_Ld48:
	.long	0
	.short	0,0
	.byte	192,0,0,0,0,0,0,70
	.balign 4
.globl	_$SYSTEM$_Ld49
_$SYSTEM$_Ld49:
	.byte	38
	.ascii	"{00000000-0000-0000-C000-000000000046}"
.globl	_$SYSTEM$_Ld46
_$SYSTEM$_Ld46:
	.byte	17
	.ascii	"TInterfacedObject"

.data
	.balign 4
.globl	VMT_SYSTEM_TINTERFACEDOBJECT
VMT_SYSTEM_TINTERFACEDOBJECT:
	.long	12,-12
	.long	VMT_SYSTEM_TOBJECT
	.long	_$SYSTEM$_Ld46
	.long	0,0
	.long	_$SYSTEM$_Ld50
	.long	RTTI_SYSTEM_TINTERFACEDOBJECT
	.long	0,0
	.long	_$SYSTEM$_Ld47
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
.globl	_$SYSTEM$_Ld52
_$SYSTEM$_Ld52:
	.byte	17
	.ascii	"TAggregatedObject"

.data
	.balign 4
.globl	VMT_SYSTEM_TAGGREGATEDOBJECT
VMT_SYSTEM_TAGGREGATEDOBJECT:
	.long	8,-8
	.long	VMT_SYSTEM_TOBJECT
	.long	_$SYSTEM$_Ld52
	.long	0,0
	.long	_$SYSTEM$_Ld53
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
.globl	_$SYSTEM$_Ld56
_$SYSTEM$_Ld56:
	.long	1
	.long	_$SYSTEM$_Ld57
	.long	VTBL_SYSTEM_TCONTAINEDOBJECT_$_IUNKNOWN
	.long	8
	.long	_$SYSTEM$_Ld58
	.long	0

.data
	.balign 4
.globl	VTBL_SYSTEM_TCONTAINEDOBJECT_$_IUNKNOWN
VTBL_SYSTEM_TCONTAINEDOBJECT_$_IUNKNOWN:
	.long	WRPR_SYSTEM_TCONTAINEDOBJECT_$_IUNKNOWN_$_0_$_SYSTEM_TCONTAINEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT
	.long	WRPR_SYSTEM_TCONTAINEDOBJECT_$_IUNKNOWN_$_1_$_SYSTEM_TAGGREGATEDOBJECT_$___ADDREF$$LONGINT
	.long	WRPR_SYSTEM_TCONTAINEDOBJECT_$_IUNKNOWN_$_2_$_SYSTEM_TAGGREGATEDOBJECT_$___RELEASE$$LONGINT
	.balign 4
.globl	_$SYSTEM$_Ld57
_$SYSTEM$_Ld57:
	.long	0
	.short	0,0
	.byte	192,0,0,0,0,0,0,70
	.balign 4
.globl	_$SYSTEM$_Ld58
_$SYSTEM$_Ld58:
	.byte	38
	.ascii	"{00000000-0000-0000-C000-000000000046}"
.globl	_$SYSTEM$_Ld55
_$SYSTEM$_Ld55:
	.byte	16
	.ascii	"TContainedObject"

.data
	.balign 4
.globl	VMT_SYSTEM_TCONTAINEDOBJECT
VMT_SYSTEM_TCONTAINEDOBJECT:
	.long	12,-12
	.long	VMT_SYSTEM_TAGGREGATEDOBJECT
	.long	_$SYSTEM$_Ld55
	.long	0,0
	.long	_$SYSTEM$_Ld59
	.long	RTTI_SYSTEM_TCONTAINEDOBJECT
	.long	0,0
	.long	_$SYSTEM$_Ld56
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
	.balign 4
.globl	TC_SYSTEM_OS_MODE
TC_SYSTEM_OS_MODE:
	.long	1

.data
	.balign 4
.globl	TC_SYSTEM_FIRST_MEG
TC_SYSTEM_FIRST_MEG:
	.long	0

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
	.balign 4
.globl	TC_SYSTEM_DEFAULTTEXTLINEBREAKSTYLE
TC_SYSTEM_DEFAULTTEXTLINEBREAKSTYLE:
	.long	1

.data
	.balign 4
.globl	TC_SYSTEM_HEAPALLOCFLAGS
TC_SYSTEM_HEAPALLOCFLAGS:
	.long	83

.data
.globl	TC_SYSTEM_FSAPI64
TC_SYSTEM_FSAPI64:
	.byte	0

.data
	.balign 4
.globl	TC_SYSTEM_SYS_DOSOPENL
TC_SYSTEM_SYS_DOSOPENL:
	.long	SYSTEM_DUMMYDOSOPENL$crc5CEF2B0C

.data
	.balign 4
.globl	TC_SYSTEM_SYS_DOSSETFILEPTRL
TC_SYSTEM_SYS_DOSSETFILEPTRL:
	.long	SYSTEM_DUMMYDOSSETFILEPTRL$LONGINT$INT64$LONGWORD$INT64$$LONGWORD

.data
	.balign 4
.globl	TC_SYSTEM_SYS_DOSSETFILESIZEL
TC_SYSTEM_SYS_DOSSETFILESIZEL:
	.long	SYSTEM_DUMMYDOSSETFILESIZEL$LONGINT$INT64$$LONGWORD

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
TC_SYSTEM_THREADVARBLOCKSIZE:
	.long	0

.data
	.balign 4
TC_SYSTEM_DATAINDEX:
	.long	0

.data
	.balign 4
	.short	0,1
	.long	-1,7
.globl	_$SYSTEM$_Ld36
_$SYSTEM$_Ld36:
	.ascii	"\\SEM32\\\000"

.data
	.balign 4
TC_SYSTEM_FILEHANDLECOUNT:
	.long	20

.data
	.balign 4
.globl	_$SYSTEM$_Ld37
_$SYSTEM$_Ld37:
	.ascii	"\002\015\012\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld38
_$SYSTEM$_Ld38:
	.ascii	"\004true\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld39
_$SYSTEM$_Ld39:
	.ascii	"\005false\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld40
_$SYSTEM$_Ld40:
	.ascii	"\004fpc_\000"

.data
	.balign 4
.globl	_$SYSTEM$_Ld41
_$SYSTEM$_Ld41:
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
TC_SYSTEM_EXCEPTLEVEL:
	.byte	0

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
.globl	_$SYSTEM$_Ld42
_$SYSTEM$_Ld42:
	.ascii	"Error\000"

.data
TC_SYSTEM_DOSCALLSNAME:
	.byte	68,79,83,67,65,76,76,83,0
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
	.ascii	"system"

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
	.ascii	"system"

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
	.ascii	"system"
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
	.ascii	"system"
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
	.ascii	"system"

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
	.ascii	"system"

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
	.ascii	"system"
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
	.ascii	"system"
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
.globl	_$SYSTEM$_Ld44
_$SYSTEM$_Ld44:
	.short	0
	.long	_$SYSTEM$_Ld45
	.balign 4
.globl	_$SYSTEM$_Ld45
_$SYSTEM$_Ld45:
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
	.ascii	"system"
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
	.ascii	"system"
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
	.ascii	"system"
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
	.ascii	"system"
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
	.ascii	"system"
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
	.ascii	"system"
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
	.ascii	"system"
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
	.ascii	"system"
	.byte	38
	.ascii	"{00020400-0000-0000-C000-000000000046}"

.data
	.balign 4
.globl	_$SYSTEM$_Ld50
_$SYSTEM$_Ld50:
	.short	0
	.long	_$SYSTEM$_Ld51
	.balign 4
.globl	_$SYSTEM$_Ld51
_$SYSTEM$_Ld51:
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
	.ascii	"system"
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
.globl	_$SYSTEM$_Ld53
_$SYSTEM$_Ld53:
	.short	0
	.long	_$SYSTEM$_Ld54
	.balign 4
.globl	_$SYSTEM$_Ld54
_$SYSTEM$_Ld54:
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
	.ascii	"system"
	.short	0

.data
	.balign 4
.globl	_$SYSTEM$_Ld59
_$SYSTEM$_Ld59:
	.short	0
	.long	_$SYSTEM$_Ld60
	.balign 4
.globl	_$SYSTEM$_Ld60
_$SYSTEM$_Ld60:
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
	.ascii	"system"
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
	.ascii	"system"
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
	.ascii	"system"
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
	.ascii	"system"
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
	.ascii	"system"
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
.globl	INIT_SYSTEM_TDOSOPENL
INIT_SYSTEM_TDOSOPENL:
	.byte	23,9
	.ascii	"TDosOpenL"

.data
	.balign 4
.globl	RTTI_SYSTEM_TDOSOPENL
RTTI_SYSTEM_TDOSOPENL:
	.byte	23,9
	.ascii	"TDosOpenL"

.data
	.balign 4
.globl	INIT_SYSTEM_TDOSSETFILEPTRL
INIT_SYSTEM_TDOSSETFILEPTRL:
	.byte	23,15
	.ascii	"TDosSetFilePtrL"

.data
	.balign 4
.globl	RTTI_SYSTEM_TDOSSETFILEPTRL
RTTI_SYSTEM_TDOSSETFILEPTRL:
	.byte	23,15
	.ascii	"TDosSetFilePtrL"

.data
	.balign 4
.globl	INIT_SYSTEM_TDOSSETFILESIZEL
INIT_SYSTEM_TDOSSETFILESIZEL:
	.byte	23,16
	.ascii	"TDosSetFileSizeL"

.data
	.balign 4
.globl	RTTI_SYSTEM_TDOSSETFILESIZEL
RTTI_SYSTEM_TDOSSETFILESIZEL:
	.byte	23,16
	.ascii	"TDosSetFileSizeL"
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

