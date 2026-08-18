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
.globl	SYSTEM_DUMMYDOSOPENL$crc5CEF2B0C
SYSTEM_DUMMYDOSOPENL$crc5CEF2B0C:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	pushl	40(%ebp)
	pushl	36(%ebp)
	pushl	32(%ebp)
	pushl	28(%ebp)
	pushl	20(%ebp)
	movl	16(%ebp),%eax
	pushl	%eax
	movl	12(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	_$dll$doscalls$_index_273
	addl	$32,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DUMMYDOSSETFILEPTRL$LONGINT$INT64$LONGWORD$INT64$$LONGWORD
SYSTEM_DUMMYDOSSETFILEPTRL$LONGINT$INT64$LONGWORD$INT64$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	leal	-8(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	_$dll$doscalls$_index_256
	addl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	24(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	$0,%ecx
	movl	%edx,(%eax)
	movl	%ecx,4(%eax)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_DUMMYDOSSETFILESIZEL$LONGINT$INT64$$LONGWORD
SYSTEM_DUMMYDOSSETFILESIZEL$LONGINT$INT64$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	_$dll$doscalls$_index_272
	addl	$8,%esp
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
	subw	$19,%ax
	subw	$12,%ax
	jbe	Lj57
	decw	%ax
	subw	$1,%ax
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
	jmp	Lj55
Lj56:
Lj55:
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
	jne	Lj110
	jmp	Lj111
Lj110:
	pushl	%ebx
	movl	$1,%eax
	cpuid
	movl	%edx,-8(%ebp)
	popl	%ebx
	movl	-8(%ebp),%eax
	andl	$33554432,%eax
	testl	%eax,%eax
	jne	Lj114
	jmp	Lj113
Lj114:
	cmpb	$0,U_SYSTEM_OS_SUPPORTS_SSE
	jne	Lj112
	jmp	Lj113
Lj112:
	movb	$1,-1(%ebp)
	jmp	Lj115
Lj113:
	movb	$0,-1(%ebp)
Lj115:
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
	jne	Lj121
	jmp	Lj122
Lj121:
	pushl	%ebx
	movl	$1,%eax
	cpuid
	movl	%edx,-8(%ebp)
	popl	%ebx
	movl	-8(%ebp),%eax
	andl	$8388608,%eax
	testl	%eax,%eax
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
	pushl	%ebp
	movl	%esp,%ebp
	cmpb	$0,__fpc_valgrind
	jne	Lj263
	jmp	Lj264
Lj263:
	movl	$SYSTEM_FORWARDS_VALGRIND,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_FORWARD
	movl	$SYSTEM_BACKWARDS_VALGRIND,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_BACKWARD
	jmp	Lj269
Lj264:
	cmpb	$0,TC_SYSTEM_HAS_SSE_SUPPORT
	jne	Lj270
	jmp	Lj271
Lj270:
	movl	$SYSTEM_FORWARDS_SSE_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_FORWARD
	movl	$SYSTEM_BACKWARDS_SSE_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_BACKWARD
	jmp	Lj276
Lj271:
	cmpb	$0,TC_SYSTEM_HAS_MMX_SUPPORT
	jne	Lj277
	jmp	Lj278
Lj277:
	movl	$SYSTEM_FORWARDS_MMX_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_FORWARD
	movl	$SYSTEM_BACKWARDS_MMX_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_BACKWARD
Lj278:
Lj276:
Lj269:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_FPC_CPUINIT:
	pushl	%ebp
	movl	%esp,%ebp
	movb	$0,U_SYSTEM_OS_SUPPORTS_SSE
	cmpb	$0,operatingsystem_islibrary
	jne	Lj287
	jmp	Lj288
Lj287:
	call	SYSTEM_GET8087CW$$WORD
	movw	%ax,TC_SYSTEM_DEFAULT8087CW
Lj288:
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
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj390
	jmp	Lj391
Lj390:
	movl	-4(%ebp),%eax
	decl	(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	seteb	-5(%ebp)
	jmp	Lj394
Lj391:
	movl	-4(%ebp),%eax
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,-5(%ebp)
Lj394:
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
	je	Lj401
	jmp	Lj402
Lj401:
	movl	-4(%ebp),%eax
	incl	(%eax)
	jmp	Lj403
Lj402:
	movl	-4(%ebp),%eax
	call	SYSTEM_CPUINCLOCKED$LONGINT
Lj403:
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
	jne	Lj422
	jmp	Lj423
Lj422:
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
	jne	Lj434
	jmp	Lj435
Lj434:
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
	cmpb	$0,U_SYSTEM_OS_SUPPORTS_SSE
	jne	Lj448
	jmp	Lj449
Lj448:
	movb	$1,U_SYSTEM_SSE_CHECK
	movaps	%xmm7,%xmm6
	movb	$0,U_SYSTEM_SSE_CHECK
Lj449:
	movb	U_SYSTEM_OS_SUPPORTS_SSE,%al
	movb	%al,TC_SYSTEM_HAS_SSE_SUPPORT
	cmpb	$0,TC_SYSTEM_HAS_SSE_SUPPORT
	jne	Lj458
	jmp	Lj457
Lj458:
	cmpb	$0,operatingsystem_islibrary
	jne	Lj456
	jmp	Lj457
Lj456:
	call	SYSTEM_GETSSECSR$$LONGWORD
	movl	%eax,TC_SYSTEM_MXCSR
Lj457:
	call	SYSTEM_MMX_SUPPORT$$BOOLEAN
	movb	%al,TC_SYSTEM_HAS_MMX_SUPPORT
	call	SYSTEM_SYSRESETFPU
	movb	operatingsystem_islibrary,%al
	testb	%al,%al
	je	Lj463
	jmp	Lj464
Lj463:
	call	SYSTEM_SYSINITFPU
Lj464:
	cmpb	$0,__fpc_valgrind
	jne	Lj465
	jmp	Lj466
Lj465:
	movl	$SYSTEM_FORWARDS_VALGRIND,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_FORWARD
	movl	$SYSTEM_BACKWARDS_VALGRIND,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_BACKWARD
	jmp	Lj471
Lj466:
	cmpb	$0,TC_SYSTEM_HAS_SSE_SUPPORT
	jne	Lj472
	jmp	Lj473
Lj472:
	movl	$SYSTEM_FORWARDS_SSE_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_FORWARD
	movl	$SYSTEM_BACKWARDS_SSE_3,%eax
	movl	%eax,TC_SYSTEM_FASTMOVEPROC_BACKWARD
	jmp	Lj478
Lj473:
	cmpb	$0,TC_SYSTEM_HAS_MMX_SUPPORT
	jne	Lj479
	jmp	Lj480
Lj479:
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
	jle	Lj563
	jmp	Lj564
Lj563:
	jmp	Lj561
Lj564:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	shll	$3,%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj570
	.balign 4,0x90
Lj569:
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,(%edx)
	movl	12(%ebp),%eax
	movl	%eax,4(%edx)
	addl	$8,-12(%ebp)
Lj570:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jb	Lj569
	jmp	Lj571
Lj571:
Lj561:
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
	jl	Lj578
	jmp	Lj581
Lj581:
	movl	-8(%ebp),%eax
	cmpl	$536870911,%eax
	jg	Lj578
	jmp	Lj580
Lj580:
	movl	-8(%ebp),%eax
	shll	$3,%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	cmpl	-16(%ebp),%eax
	jb	Lj578
	jmp	Lj579
Lj578:
	movl	$-9,-20(%ebp)
	jmp	Lj584
Lj579:
	movl	-8(%ebp),%eax
	shll	$3,%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
Lj584:
	jmp	Lj588
	.balign 4,0x90
Lj587:
	movl	-16(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	12(%ebp),%eax
	jne	Lj591
	cmpl	8(%ebp),%edx
	jne	Lj591
	jmp	Lj590
	jmp	Lj591
Lj590:
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
	jmp	Lj574
Lj591:
	addl	$8,-16(%ebp)
Lj588:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj587
	jmp	Lj589
Lj589:
	movl	$-1,-12(%ebp)
Lj574:
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
	je	Lj598
	jmp	Lj599
Lj598:
	jmp	Lj596
Lj599:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj608
	jmp	Lj609
Lj608:
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj616
Lj609:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj616:
Lj596:
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
	jmp	Lj634
	.balign 4,0x90
Lj633:
	movl	-20(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-32(%ebp)
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj638
	jmp	Lj639
Lj638:
	movl	$-1,-16(%ebp)
	jmp	Lj623
	jmp	Lj642
Lj639:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj643
	jmp	Lj644
Lj643:
	movl	$1,-16(%ebp)
	jmp	Lj623
Lj644:
Lj642:
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	je	Lj647
	jmp	Lj649
Lj649:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	je	Lj647
	jmp	Lj648
Lj647:
	movl	$0,-16(%ebp)
	jmp	Lj623
Lj648:
	incl	-24(%ebp)
	incl	-20(%ebp)
Lj634:
	movl	-20(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jb	Lj633
	jmp	Lj635
Lj635:
	movl	$0,-16(%ebp)
Lj623:
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
	je	Lj656
	jmp	Lj657
Lj656:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj654
Lj657:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj664
	jmp	Lj663
Lj664:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	ja	Lj662
	jmp	Lj663
Lj662:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%edx
	leal	-4(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-8(%ebp),%eax
	movl	$-1,(%eax)
Lj663:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj671
	jmp	Lj672
Lj671:
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
Lj672:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj654:
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
	je	Lj685
	jmp	Lj688
Lj688:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj685
	jmp	Lj687
Lj687:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj685
	jmp	Lj686
Lj685:
	jmp	Lj683
Lj686:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj689
	jmp	Lj691
Lj691:
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
	jne	Lj689
	jmp	Lj690
Lj689:
	movw	$210,%ax
	call	SYSTEM_RUNERROR$WORD
Lj690:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj683:
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
	je	Lj700
	jmp	Lj702
Lj702:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj700
	jmp	Lj701
Lj700:
	jmp	Lj698
Lj701:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$-1,%eax
	je	Lj703
	jmp	Lj704
Lj703:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj705
	jmp	Lj707
Lj707:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj705
	jmp	Lj706
Lj705:
	movl	$210,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj710
Lj706:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
Lj710:
	jmp	Lj717
Lj704:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	$0,(%eax)
Lj717:
Lj698:
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
	je	Lj722
	jmp	Lj725
Lj725:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj722
	jmp	Lj724
Lj724:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%eax),%edx
	movl	4(%ecx),%eax
	addl	%eax,%edx
	testl	%edx,%edx
	jne	Lj722
	jmp	Lj723
Lj722:
	movw	$210,%ax
	call	SYSTEM_RUNERROR$WORD
Lj723:
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
	je	Lj730
	jmp	Lj733
Lj733:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj730
	jmp	Lj732
Lj732:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%eax),%ecx
	movl	4(%edx),%eax
	addl	%eax,%ecx
	testl	%ecx,%ecx
	jne	Lj730
	jmp	Lj731
Lj730:
	movw	$210,%ax
	call	SYSTEM_RUNERROR$WORD
Lj731:
	jmp	Lj737
	.balign 4,0x90
Lj736:
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj739
	jmp	Lj740
Lj739:
	jmp	Lj728
	jmp	Lj741
Lj740:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-4(%ebp)
Lj741:
Lj737:
	cmpl	$0,-4(%ebp)
	jne	Lj736
	jmp	Lj738
Lj738:
	movw	$219,%ax
	call	SYSTEM_RUNERROR$WORD
Lj728:
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
	jg	Lj752
	jmp	Lj753
Lj752:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj754
	jmp	Lj755
Lj754:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj755:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-20(%ebp)
Lj753:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	cmpl	%edx,%eax
	je	Lj760
	jmp	Lj761
Lj760:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	movzbl	%al,%eax
	leal	(%edx,%eax,1),%edx
	movl	-20(%ebp),%ecx
	movl	8(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj768
Lj761:
	movl	-4(%ebp),%eax
	movl	8(%ebp),%edx
	cmpl	%edx,%eax
	je	Lj769
	jmp	Lj770
Lj769:
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
	jmp	Lj783
Lj770:
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
Lj783:
Lj768:
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
	je	Lj800
	jmp	Lj801
Lj800:
	movl	-4(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj798
Lj801:
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%ecx
	cmpl	(%edx,%ecx,4),%eax
	je	Lj806
	jmp	Lj807
Lj806:
	incl	-20(%ebp)
Lj807:
	movb	$0,-33(%ebp)
	movl	8(%ebp),%ebx
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj811
	decl	-24(%ebp)
	.balign 4,0x90
Lj812:
	incl	-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-24(%ebp),%edx
	cmpl	(%ecx,%edx,4),%eax
	je	Lj813
	jmp	Lj814
Lj813:
	movb	$1,-33(%ebp)
	jmp	Lj811
Lj814:
	cmpl	-24(%ebp),%ebx
	jg	Lj812
Lj811:
	cmpb	$0,-33(%ebp)
	jne	Lj817
	jmp	Lj818
Lj817:
	movl	$0,-20(%ebp)
	movb	$0,-289(%ebp)
	leal	-289(%ebp),%eax
	movl	%eax,-300(%ebp)
	jmp	Lj825
Lj818:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj826
	jmp	Lj827
Lj826:
	movl	-4(%ebp),%eax
	movb	$0,(%eax)
Lj827:
	movl	-4(%ebp),%eax
	movl	%eax,-300(%ebp)
Lj825:
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
	jl	Lj837
	decl	-24(%ebp)
	.balign 4,0x90
Lj838:
	incl	-24(%ebp)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-296(%ebp)
	cmpl	$0,-296(%ebp)
	jne	Lj841
	jmp	Lj842
Lj841:
	movl	-296(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-13(%ebp)
	movzbl	-13(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	%edx,%eax
	cmpl	-12(%ebp),%eax
	jg	Lj845
	jmp	Lj846
Lj845:
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%edx
	subl	%edx,%eax
	movb	%al,-13(%ebp)
Lj846:
	movl	-32(%ebp),%edx
	movl	-296(%ebp),%eax
	leal	1(%eax),%eax
	movzbl	-13(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movzbl	-13(%ebp),%eax
	addl	%eax,-32(%ebp)
	movzbl	-13(%ebp),%eax
	addl	%eax,-28(%ebp)
Lj842:
	cmpl	-24(%ebp),%ebx
	jg	Lj838
Lj837:
	movl	-300(%ebp),%eax
	movb	-28(%ebp),%dl
	movb	%dl,(%eax)
	cmpb	$0,-33(%ebp)
	jne	Lj857
	jmp	Lj858
Lj857:
	leal	-289(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj858:
Lj798:
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
	jg	Lj871
	jmp	Lj872
Lj871:
	movswl	-14(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%edx,%eax
	movw	%ax,-16(%ebp)
Lj872:
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
	je	Lj887
	jmp	Lj888
Lj887:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-8(%ebp),%eax
	leal	1(%eax),%edx
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
Lj888:
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
	jle	Lj909
	jmp	Lj910
Lj909:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj913
Lj910:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj914
	jmp	Lj915
Lj914:
	movl	$0,-16(%ebp)
Lj915:
Lj913:
	cmpb	$0,8(%ebp)
	jne	Lj918
	jmp	Lj919
Lj918:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj928
	jmp	Lj929
Lj928:
	movb	-16(%ebp),%al
	movb	%al,-21(%ebp)
	jmp	Lj932
Lj929:
	movb	-20(%ebp),%al
	movb	%al,-21(%ebp)
Lj932:
	jmp	Lj935
Lj919:
	movb	-16(%ebp),%al
	movb	%al,-21(%ebp)
Lj935:
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
	jl	Lj950
	jmp	Lj951
Lj950:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj951:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj954
	jmp	Lj955
Lj954:
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj955:
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
	jne	Lj972
	jmp	Lj973
Lj972:
	jmp	Lj975
	.balign 4,0x90
Lj974:
	incl	-12(%ebp)
Lj975:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movw	(%eax,%edx,2),%ax
	testw	%ax,%ax
	jne	Lj974
	jmp	Lj976
Lj976:
Lj973:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj968
Lj968:
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
	jl	Lj983
	jmp	Lj984
Lj983:
	movb	-15(%ebp),%al
	testb	%al,%al
	seteb	-15(%ebp)
	movswl	-4(%ebp),%eax
	negl	%eax
	movw	%ax,-18(%ebp)
	jmp	Lj989
Lj984:
	movw	-4(%ebp),%ax
	movw	%ax,-18(%ebp)
Lj989:
	movw	-8(%ebp),%ax
	cmpw	$0,%ax
	jl	Lj992
	jmp	Lj993
Lj992:
	movb	-15(%ebp),%al
	testb	%al,%al
	seteb	-15(%ebp)
	movswl	-8(%ebp),%eax
	negl	%eax
	movw	%ax,-20(%ebp)
	jmp	Lj998
Lj993:
	movw	-8(%ebp),%ax
	movw	%ax,-20(%ebp)
Lj998:
	movzwl	-18(%ebp),%edx
	movzwl	-20(%ebp),%eax
	mull	%edx
	movw	%ax,-22(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj1007
	jmp	Lj1004
Lj1007:
	movzwl	-18(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1006
	jmp	Lj1004
Lj1006:
	movzwl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1005
	jmp	Lj1004
Lj1005:
	movw	-18(%ebp),%ax
	cmpw	-22(%ebp),%ax
	ja	Lj1003
	jmp	Lj1009
Lj1009:
	movw	-20(%ebp),%ax
	cmpw	-22(%ebp),%ax
	ja	Lj1003
	jmp	Lj1008
Lj1008:
	movzwl	-22(%ebp),%eax
	shrl	$15,%eax
	testl	%eax,%eax
	jne	Lj1010
	jmp	Lj1004
Lj1010:
	movw	-22(%ebp),%ax
	cmpw	$32768,%ax
	jne	Lj1003
	jmp	Lj1011
Lj1011:
	movb	-15(%ebp),%al
	testb	%al,%al
	je	Lj1003
	jmp	Lj1004
Lj1003:
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj1004:
	cmpb	$0,-15(%ebp)
	jne	Lj1016
	jmp	Lj1017
Lj1016:
	movzwl	-22(%ebp),%eax
	negl	%eax
	movw	%ax,-14(%ebp)
	jmp	Lj1020
Lj1017:
	movw	-22(%ebp),%ax
	movw	%ax,-14(%ebp)
Lj1020:
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
Lj1033:
	incb	-19(%ebp)
	movw	-8(%ebp),%ax
	movw	-18(%ebp),%dx
	andw	%dx,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj1034
	jmp	Lj1035
Lj1034:
	movw	-14(%ebp),%ax
	movw	%ax,-16(%ebp)
	movzwl	-14(%ebp),%eax
	movzwl	-4(%ebp),%edx
	addl	%edx,%eax
	movw	%ax,-14(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj1042
	jmp	Lj1041
Lj1042:
	cmpb	$0,-20(%ebp)
	jne	Lj1040
	jmp	Lj1043
Lj1043:
	movzwl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1045
	jmp	Lj1041
Lj1045:
	movzwl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1044
	jmp	Lj1041
Lj1044:
	movw	-16(%ebp),%ax
	cmpw	-14(%ebp),%ax
	ja	Lj1040
	jmp	Lj1046
Lj1046:
	movw	-4(%ebp),%ax
	cmpw	-14(%ebp),%ax
	ja	Lj1040
	jmp	Lj1041
Lj1040:
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj1041:
Lj1035:
	cmpb	$0,-20(%ebp)
	jne	Lj1051
	jmp	Lj1053
Lj1053:
	movw	-4(%ebp),%ax
	andw	$32768,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj1051
	jmp	Lj1052
Lj1051:
	movb	$1,-20(%ebp)
	jmp	Lj1054
Lj1052:
	movb	$0,-20(%ebp)
Lj1054:
	movzwl	-4(%ebp),%eax
	shll	$1,%eax
	movw	%ax,-4(%ebp)
	movzwl	-18(%ebp),%eax
	shll	$1,%eax
	movw	%ax,-18(%ebp)
	cmpb	$15,-19(%ebp)
	jb	Lj1033
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
	jl	Lj1063
	jmp	Lj1064
Lj1063:
	movb	-17(%ebp),%al
	testb	%al,%al
	seteb	-17(%ebp)
	movl	-4(%ebp),%eax
	negl	%eax
	movl	%eax,-24(%ebp)
	jmp	Lj1069
Lj1064:
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj1069:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1072
	jmp	Lj1073
Lj1072:
	movb	-17(%ebp),%al
	testb	%al,%al
	seteb	-17(%ebp)
	movl	-8(%ebp),%eax
	negl	%eax
	movl	%eax,-28(%ebp)
	jmp	Lj1078
Lj1073:
	movl	-8(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj1078:
	movl	-28(%ebp),%eax
	mull	-24(%ebp)
	movl	%eax,-32(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj1087
	jmp	Lj1084
Lj1087:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1086
	jmp	Lj1084
Lj1086:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1085
	jmp	Lj1084
Lj1085:
	movl	-24(%ebp),%eax
	cmpl	-32(%ebp),%eax
	ja	Lj1083
	jmp	Lj1089
Lj1089:
	movl	-28(%ebp),%eax
	cmpl	-32(%ebp),%eax
	ja	Lj1083
	jmp	Lj1088
Lj1088:
	movl	-32(%ebp),%eax
	shrl	$15,%eax
	testl	%eax,%eax
	jne	Lj1090
	jmp	Lj1084
Lj1090:
	movl	-32(%ebp),%eax
	cmpl	$-2147483648,%eax
	jne	Lj1083
	jmp	Lj1091
Lj1091:
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj1083
	jmp	Lj1084
Lj1083:
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj1084:
	cmpb	$0,-17(%ebp)
	jne	Lj1096
	jmp	Lj1097
Lj1096:
	movl	-32(%ebp),%eax
	negl	%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1100
Lj1097:
	movl	-32(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1100:
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
Lj1113:
	incb	-25(%ebp)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	andl	%edx,%eax
	testl	%eax,%eax
	jne	Lj1114
	jmp	Lj1115
Lj1114:
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj1122
	jmp	Lj1121
Lj1122:
	cmpb	$0,-26(%ebp)
	jne	Lj1120
	jmp	Lj1123
Lj1123:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1125
	jmp	Lj1121
Lj1125:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1124
	jmp	Lj1121
Lj1124:
	movl	-20(%ebp),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj1120
	jmp	Lj1126
Lj1126:
	movl	-4(%ebp),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj1120
	jmp	Lj1121
Lj1120:
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj1121:
Lj1115:
	cmpb	$0,-26(%ebp)
	jne	Lj1131
	jmp	Lj1133
Lj1133:
	movl	-4(%ebp),%eax
	andl	$-2147483648,%eax
	testl	%eax,%eax
	jne	Lj1131
	jmp	Lj1132
Lj1131:
	movb	$1,-26(%ebp)
	jmp	Lj1134
Lj1132:
	movb	$0,-26(%ebp)
Lj1134:
	movl	-4(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-4(%ebp)
	movl	-24(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-24(%ebp)
	cmpb	$31,-25(%ebp)
	jb	Lj1113
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
	jl	Lj1169
	jg	Lj1170
	cmpl	$0,%eax
	jb	Lj1169
	jmp	Lj1170
Lj1169:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	jmp	Lj1173
Lj1170:
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj1173:
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
	jne	Lj1199
	cmpl	$0,%edx
	jne	Lj1199
	jmp	Lj1198
Lj1198:
	movb	$1,-5(%ebp)
	jmp	Lj1200
Lj1199:
	movb	$0,-5(%ebp)
Lj1200:
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
	jl	Lj1221
	jmp	Lj1222
Lj1221:
	movl	-36(%ebp),%eax
	movb	$45,(%eax)
	incl	-36(%ebp)
	movl	-4(%ebp),%eax
	negl	%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1227
Lj1222:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1227:
	leal	-69(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-32(%ebp)
	.balign 4,0x90
Lj1234:
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
	je	Lj1236
	jmp	Lj1234
Lj1236:
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
	jg	Lj1245
	jmp	Lj1246
Lj1245:
	movl	-76(%ebp),%eax
	addl	%eax,-24(%ebp)
Lj1246:
	jmp	Lj1248
	.balign 4,0x90
Lj1247:
	movl	-36(%ebp),%edx
	movl	-32(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-36(%ebp)
	decl	-32(%ebp)
Lj1248:
	movl	-32(%ebp),%eax
	cmpl	-24(%ebp),%eax
	ja	Lj1247
	jmp	Lj1249
Lj1249:
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
Lj1264:
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
	je	Lj1266
	jmp	Lj1264
Lj1266:
	movl	-28(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-72(%ebp)
	movl	-72(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1275
	jmp	Lj1276
Lj1275:
	movl	-72(%ebp),%eax
	addl	%eax,-20(%ebp)
Lj1276:
	jmp	Lj1278
	.balign 4,0x90
Lj1277:
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-32(%ebp)
	decl	-28(%ebp)
Lj1278:
	movl	-28(%ebp),%eax
	cmpl	-20(%ebp),%eax
	ja	Lj1277
	jmp	Lj1279
Lj1279:
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
	jl	Lj1290
	jg	Lj1291
	cmpl	$0,%edx
	jb	Lj1290
	jmp	Lj1291
Lj1290:
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
	jmp	Lj1296
Lj1291:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj1296:
	leal	-73(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-36(%ebp)
	.balign 4,0x90
Lj1303:
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
	jne	Lj1303
	cmpl	$0,%eax
	jne	Lj1303
	jmp	Lj1305
Lj1305:
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
	jg	Lj1324
	jmp	Lj1325
Lj1324:
	movl	-80(%ebp),%eax
	addl	%eax,-28(%ebp)
Lj1325:
	jmp	Lj1327
	.balign 4,0x90
Lj1326:
	movl	-40(%ebp),%edx
	movl	-36(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-40(%ebp)
	decl	-36(%ebp)
Lj1327:
	movl	-36(%ebp),%eax
	cmpl	-28(%ebp),%eax
	ja	Lj1326
	jmp	Lj1328
Lj1328:
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
Lj1343:
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
	jne	Lj1343
	cmpl	$0,%edx
	jne	Lj1343
	jmp	Lj1345
Lj1345:
	movl	-28(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-104(%ebp)
	movl	-104(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1364
	jmp	Lj1365
Lj1364:
	movl	-104(%ebp),%eax
	addl	%eax,-20(%ebp)
Lj1365:
	jmp	Lj1367
	.balign 4,0x90
Lj1366:
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-32(%ebp)
	decl	-28(%ebp)
Lj1367:
	movl	-28(%ebp),%eax
	cmpl	-20(%ebp),%eax
	ja	Lj1366
	jmp	Lj1368
Lj1368:
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
	jl	Lj1525
	xorl	%edx,%edx
	xorl	%eax,%eax
	jmp	Lj1527
Lj1525:
	cmpl	$32,%ecx
	jl	Lj1526
	subl	$32,%ecx
	shll	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj1527
Lj1526:
	shldl	%cl,%edx,%eax
	shll	%cl,%edx
Lj1527:
	movb	-4(%ebp),%cl
	andb	$63,%cl
	movzbl	%cl,%ecx
	movl	8(%ebp),%ebx
	movl	12(%ebp),%esi
	cmpl	$64,%ecx
	jl	Lj1528
	xorl	%ebx,%ebx
	xorl	%esi,%esi
	jmp	Lj1530
Lj1528:
	cmpl	$32,%ecx
	jl	Lj1529
	subl	$32,%ecx
	shrl	%cl,%esi
	movl	%esi,%ebx
	xorl	%esi,%esi
	jmp	Lj1530
Lj1529:
	shrdl	%cl,%esi,%ebx
	shrl	%cl,%esi
Lj1530:
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
	jl	Lj1539
	xorl	%eax,%eax
	xorl	%edx,%edx
	jmp	Lj1541
Lj1539:
	cmpl	$32,%ecx
	jl	Lj1540
	subl	$32,%ecx
	shrl	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj1541
Lj1540:
	shrdl	%cl,%edx,%eax
	shrl	%cl,%edx
Lj1541:
	movb	-4(%ebp),%cl
	andb	$63,%cl
	movzbl	%cl,%ecx
	movl	8(%ebp),%esi
	movl	12(%ebp),%ebx
	cmpl	$64,%ecx
	jl	Lj1542
	xorl	%esi,%esi
	xorl	%ebx,%ebx
	jmp	Lj1544
Lj1542:
	cmpl	$32,%ecx
	jl	Lj1543
	subl	$32,%ecx
	shll	%cl,%esi
	movl	%esi,%ebx
	xorl	%esi,%esi
	jmp	Lj1544
Lj1543:
	shldl	%cl,%esi,%ebx
	shll	%cl,%esi
Lj1544:
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
	jl	Lj1551
	xorl	%eax,%eax
	xorl	%edx,%edx
	jmp	Lj1553
Lj1551:
	cmpl	$32,%ecx
	jl	Lj1552
	subl	$32,%ecx
	shll	%cl,%eax
	movl	%eax,%edx
	xorl	%eax,%eax
	jmp	Lj1553
Lj1552:
	shldl	%cl,%eax,%edx
	shll	%cl,%eax
Lj1553:
	movb	-4(%ebp),%cl
	andb	$63,%cl
	movzbl	%cl,%ecx
	movl	8(%ebp),%ebx
	movl	12(%ebp),%esi
	cmpl	$64,%ecx
	jl	Lj1554
	xorl	%ebx,%ebx
	xorl	%esi,%esi
	jmp	Lj1556
Lj1554:
	cmpl	$32,%ecx
	jl	Lj1555
	subl	$32,%ecx
	shrl	%cl,%esi
	movl	%esi,%ebx
	xorl	%esi,%esi
	jmp	Lj1556
Lj1555:
	shrdl	%cl,%esi,%ebx
	shrl	%cl,%esi
Lj1556:
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
	jg	Lj1563
	jmp	Lj1564
Lj1563:
	movl	-20(%ebp),%eax
	movl	8(%ebp),%edx
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	8(%ebp),%eax
	addl	%eax,-20(%ebp)
	movl	8(%ebp),%eax
	subl	%eax,12(%ebp)
	jmp	Lj1571
Lj1564:
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj1572
	jmp	Lj1573
Lj1572:
	movl	8(%ebp),%eax
	subl	%eax,-16(%ebp)
	movl	8(%ebp),%eax
	addl	%eax,-8(%ebp)
Lj1573:
Lj1571:
	movl	-8(%ebp),%eax
	cmpl	12(%ebp),%eax
	jg	Lj1574
	jmp	Lj1575
Lj1574:
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj1575:
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
	jl	Lj1629
	decl	-16(%ebp)
	.balign 4,0x90
Lj1630:
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
	jg	Lj1630
Lj1629:
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
	jl	Lj1636
	decl	-16(%ebp)
	.balign 4,0x90
Lj1637:
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
	jg	Lj1637
Lj1636:
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
	jl	Lj1643
	decl	-16(%ebp)
	.balign 4,0x90
Lj1644:
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
	jg	Lj1644
Lj1643:
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
	jl	Lj1650
	decl	-16(%ebp)
	.balign 4,0x90
Lj1651:
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
	jg	Lj1651
Lj1650:
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
	jl	Lj1657
	decl	-16(%ebp)
	.balign 4,0x90
Lj1658:
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
	jg	Lj1658
Lj1657:
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
	jl	Lj1666
	decl	-20(%ebp)
	.balign 4,0x90
Lj1667:
	incl	-20(%ebp)
	movl	-4(%ebp),%esi
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%ebx
	movb	(%esi,%edx,1),%dl
	cmpb	(%ecx,%ebx,1),%dl
	jne	Lj1668
	jmp	Lj1669
Lj1668:
	jmp	Lj1661
Lj1669:
	cmpl	-20(%ebp),%eax
	jg	Lj1667
Lj1666:
	movb	$1,-13(%ebp)
Lj1661:
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
	jl	Lj1677
	decl	-20(%ebp)
	.balign 4,0x90
Lj1678:
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
	jne	Lj1679
	jmp	Lj1680
Lj1679:
	jmp	Lj1672
Lj1680:
	cmpl	-20(%ebp),%eax
	jg	Lj1678
Lj1677:
	movb	$1,-13(%ebp)
Lj1672:
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
	je	Lj1805
	jmp	Lj1806
Lj1805:
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jne	Lj1807
	jmp	Lj1808
Lj1807:
	fldz
	fstpt	-12(%ebp)
	jmp	Lj1811
Lj1808:
	movl	$207,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj1811:
	jmp	Lj1814
Lj1806:
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	je	Lj1815
	jmp	Lj1816
Lj1815:
	fld1
	fstpt	-12(%ebp)
	jmp	Lj1819
Lj1816:
	fldz
	fldt	20(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1822
	jmp	Lj1821
Lj1822:
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	fpc_frac_real
	fldz
	fcompp
	fnstsw	%ax
	sahf
	jne	Lj1820
	jmp	Lj1821
Lj1820:
	movl	$207,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj1827
Lj1821:
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
	jb	Lj1834
	jmp	Lj1833
Lj1834:
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
	jne	Lj1832
	jmp	Lj1833
Lj1832:
	fldt	-12(%ebp)
	fchs
	fstpt	-12(%ebp)
Lj1833:
Lj1827:
Lj1819:
Lj1814:
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
	je	Lj1847
	movl	U_SYSTEM_SOFTFLOAT_EXCEPTION_FLAGS,%eax
	call	*%edx
	jmp	Lj1848
Lj1847:
	movl	$U_SYSTEM_SOFTFLOAT_EXCEPTION_FLAGS+4,%eax
Lj1848:
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movsbl	-4(%ebp),%edx
	orl	%edx,%eax
	movl	-8(%ebp),%edx
	movb	%al,(%edx)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj1853
	movl	U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK,%eax
	call	*%edx
	jmp	Lj1854
Lj1853:
	movl	$U_SYSTEM_SOFTFLOAT_EXCEPTION_MASK+4,%eax
Lj1854:
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
	jne	Lj1855
	jmp	Lj1856
Lj1855:
	movl	$207,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj1859
Lj1856:
	movb	-9(%ebp),%al
	andb	$4,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj1860
	jmp	Lj1861
Lj1860:
	movl	$200,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj1864
Lj1861:
	movb	-9(%ebp),%al
	andb	$8,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj1865
	jmp	Lj1866
Lj1865:
	movl	$205,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj1869
Lj1866:
	movb	-9(%ebp),%al
	andb	$16,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj1870
	jmp	Lj1871
Lj1870:
	movl	$206,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
	jmp	Lj1874
Lj1871:
	movb	-9(%ebp),%al
	andb	$32,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj1875
	jmp	Lj1876
Lj1875:
	movl	$207,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj1876:
Lj1874:
Lj1869:
Lj1864:
Lj1859:
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
	ja	Lj1883
	jmp	Lj1884
Lj1883:
	jmp	Lj1886
	.balign 4,0x90
Lj1885:
	fldl	_$SYSTEM$_Ld3
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fstpl	8(%ebp)
	movl	-4(%ebp),%eax
	decw	(%eax)
Lj1886:
	fldl	8(%ebp)
	fabs
	fldt	_$SYSTEM$_Ld2
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj1885
	jmp	Lj1887
Lj1887:
	jmp	Lj1890
Lj1884:
	jmp	Lj1892
	.balign 4,0x90
Lj1891:
	fldl	_$SYSTEM$_Ld3
	fldl	8(%ebp)
	fdivp	%st,%st(1)
	fstpl	8(%ebp)
	movl	-4(%ebp),%eax
	incw	(%eax)
Lj1892:
	fldl	8(%ebp)
	fabs
	fld1
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj1891
	jmp	Lj1893
Lj1893:
Lj1890:
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
	jg	Lj1902
	jmp	Lj1903
Lj1902:
	jmp	Lj1905
	.balign 4,0x90
Lj1904:
	fldl	_$SYSTEM$_Ld3
	fldl	-20(%ebp)
	fmulp	%st,%st(1)
	fstpl	-20(%ebp)
	decw	-4(%ebp)
Lj1905:
	movw	-4(%ebp),%ax
	cmpw	$0,%ax
	jg	Lj1904
	jmp	Lj1906
Lj1906:
	jmp	Lj1909
Lj1903:
	jmp	Lj1911
	.balign 4,0x90
Lj1910:
	fldl	_$SYSTEM$_Ld3
	fldl	-20(%ebp)
	fdivp	%st,%st(1)
	fstpl	-20(%ebp)
	incw	-4(%ebp)
Lj1911:
	movw	-4(%ebp),%ax
	cmpw	$0,%ax
	jl	Lj1910
	jmp	Lj1912
Lj1912:
Lj1909:
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
	jl	Lj1922
	decw	-30(%ebp)
	.balign 4,0x90
Lj1923:
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
	jg	Lj1923
Lj1922:
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
	jl	Lj1933
	decw	-30(%ebp)
	.balign 4,0x90
Lj1934:
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
	jg	Lj1934
Lj1933:
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
	je	Lj1941
	jmp	Lj1942
Lj1941:
	fldz
	fstpl	-12(%ebp)
	jmp	Lj1939
Lj1942:
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
Lj1939:
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
	jl	Lj1971
	jmp	Lj1972
Lj1971:
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
	jne	Lj1979
	jmp	Lj1980
Lj1979:
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
	jne	Lj1985
	jmp	Lj1986
Lj1985:
	movl	-4(%ebp),%eax
	cmpl	$9,%eax
	jle	Lj1987
	jmp	Lj1988
Lj1987:
	movl	-4(%ebp),%eax
	imull	$10,%eax
	fldt	-16(%ebp)
	fldt	TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_NEGPOW4096(,%eax)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	jmp	Lj1991
Lj1988:
	movl	_$SYSTEM$_Ld4,%eax
	movl	%eax,-16(%ebp)
	movl	_$SYSTEM$_Ld4+4,%eax
	movl	%eax,-12(%ebp)
	movw	_$SYSTEM$_Ld4+8,%ax
	movw	%ax,-8(%ebp)
Lj1991:
Lj1986:
Lj1980:
	jmp	Lj1994
Lj1972:
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
	jne	Lj1999
	jmp	Lj2000
Lj1999:
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
	jne	Lj2005
	jmp	Lj2006
Lj2005:
	movl	-4(%ebp),%eax
	cmpl	$9,%eax
	jle	Lj2007
	jmp	Lj2008
Lj2007:
	movl	-4(%ebp),%eax
	imull	$10,%eax
	fldt	-16(%ebp)
	fldt	TC_SYSTEM_FPOWER10$EXTENDED$LONGINT$$EXTENDED_POW4096(,%eax)
	fmulp	%st,%st(1)
	fstpt	-16(%ebp)
	jmp	Lj2011
Lj2008:
	movl	_$SYSTEM$_Ld4,%eax
	movl	%eax,-16(%ebp)
	movl	_$SYSTEM$_Ld4+4,%eax
	movl	%eax,-12(%ebp)
	movw	_$SYSTEM$_Ld4+8,%ax
	movw	%ax,-8(%ebp)
Lj2011:
Lj2006:
Lj2000:
Lj1994:
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
	jg	Lj2020
	jmp	Lj2021
Lj2020:
	movl	$255,-8(%ebp)
Lj2021:
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
	jl	Lj2028
	jmp	Lj2029
Lj2028:
	movl	$0,-12(%ebp)
Lj2029:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj2032
	jmp	Lj2033
Lj2032:
	decl	-8(%ebp)
	jmp	Lj2034
Lj2033:
	movl	$0,-8(%ebp)
Lj2034:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj2037
	jmp	Lj2038
Lj2037:
	movl	$0,-12(%ebp)
	jmp	Lj2041
Lj2038:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	cmpl	-12(%ebp),%edx
	jl	Lj2042
	jmp	Lj2043
Lj2042:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
Lj2043:
Lj2041:
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
	jle	Lj2056
	jmp	Lj2057
Lj2056:
	jmp	Lj2054
Lj2057:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj2060
	jmp	Lj2059
Lj2060:
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2058
	jmp	Lj2059
Lj2058:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	cmpl	8(%ebp),%eax
	jl	Lj2061
	jmp	Lj2062
Lj2061:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	incl	%eax
	movl	%eax,8(%ebp)
Lj2062:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	8(%ebp),%edx
	subl	%edx,%eax
	movl	-4(%ebp),%edx
	movb	%al,(%edx)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	jge	Lj2067
	jmp	Lj2068
Lj2067:
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
Lj2068:
Lj2059:
Lj2054:
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
	jl	Lj2077
	jmp	Lj2078
Lj2077:
	movl	$1,8(%ebp)
Lj2078:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	8(%ebp),%eax
	jl	Lj2081
	jmp	Lj2082
Lj2081:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	incl	%eax
	movl	%eax,8(%ebp)
	movl	8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj2085
	jmp	Lj2086
Lj2085:
	jmp	Lj2075
Lj2086:
Lj2082:
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
	jge	Lj2091
	jmp	Lj2092
Lj2091:
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
	jg	Lj2095
	jmp	Lj2096
Lj2095:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	subl	%eax,-20(%ebp)
	movl	$0,-24(%ebp)
	jmp	Lj2099
Lj2096:
	movl	-16(%ebp),%eax
	subl	%eax,-24(%ebp)
Lj2099:
Lj2092:
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
Lj2075:
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
	jl	Lj2116
	jmp	Lj2117
Lj2116:
	movl	$1,8(%ebp)
Lj2117:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	8(%ebp),%eax
	jl	Lj2120
	jmp	Lj2121
Lj2120:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	incl	%eax
	movl	%eax,8(%ebp)
	movl	8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj2124
	jmp	Lj2125
Lj2124:
	jmp	Lj2114
Lj2125:
Lj2121:
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
	je	Lj2130
	jmp	Lj2129
Lj2130:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2128
	jmp	Lj2129
Lj2128:
	decl	-16(%ebp)
Lj2129:
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
Lj2114:
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
	jg	Lj2145
	jmp	Lj2146
Lj2145:
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
	jmp	Lj2154
	.balign 4,0x90
Lj2153:
	incl	-16(%ebp)
	movl	-24(%ebp),%eax
	movl	-4(%ebp),%edx
	movb	(%eax),%al
	cmpb	1(%edx),%al
	je	Lj2158
	jmp	Lj2157
Lj2158:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_COMPARECHAR$formal$formal$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj2156
	jmp	Lj2157
Lj2156:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj2141
Lj2157:
	incl	-24(%ebp)
Lj2154:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj2153
	jmp	Lj2155
Lj2155:
Lj2146:
Lj2141:
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
	jl	Lj2172
	decl	-16(%ebp)
	.balign 4,0x90
Lj2173:
	incl	-16(%ebp)
	movl	-20(%ebp),%edx
	movb	(%edx),%dl
	cmpb	-4(%ebp),%dl
	je	Lj2174
	jmp	Lj2175
Lj2174:
	movl	-16(%ebp),%edx
	movl	%edx,-12(%ebp)
	jmp	Lj2167
Lj2175:
	incl	-20(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj2173
Lj2172:
	movl	$0,-12(%ebp)
Lj2167:
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
	je	Lj2184
	jmp	Lj2183
Lj2184:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2182
	jmp	Lj2183
Lj2182:
	movl	8(%ebp),%eax
	movb	$1,(%eax)
	movb	-4(%ebp),%dl
	movb	%dl,1(%eax)
	jmp	Lj2187
Lj2183:
	movl	8(%ebp),%eax
	movb	$0,(%eax)
Lj2187:
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
	je	Lj2194
	jmp	Lj2193
Lj2194:
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	cmpb	-8(%ebp),%al
	je	Lj2192
	jmp	Lj2193
Lj2192:
	movl	$1,-12(%ebp)
	jmp	Lj2197
Lj2193:
	movl	$0,-12(%ebp)
Lj2197:
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
	jb	Lj2204
Lj2204:
	jc	Lj2202
	jmp	Lj2203
Lj2202:
	movzbl	-4(%ebp),%eax
	subl	$32,%eax
	movb	%al,-5(%ebp)
	jmp	Lj2207
Lj2203:
	movb	-4(%ebp),%al
	movb	%al,-5(%ebp)
Lj2207:
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
	jl	Lj2215
	decl	-12(%ebp)
	.balign 4,0x90
Lj2216:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movzbl	-12(%ebp),%edx
	movb	(%eax,%edx,1),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	movl	-8(%ebp),%edx
	movzbl	-12(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	cmpl	-12(%ebp),%ebx
	jg	Lj2216
Lj2215:
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
	jb	Lj2225
Lj2225:
	jc	Lj2223
	jmp	Lj2224
Lj2223:
	movzbl	-4(%ebp),%eax
	addl	$32,%eax
	movb	%al,-5(%ebp)
	jmp	Lj2228
Lj2224:
	movb	-4(%ebp),%al
	movb	%al,-5(%ebp)
Lj2228:
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
	jl	Lj2236
	decl	-12(%ebp)
	.balign 4,0x90
Lj2237:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movzbl	-12(%ebp),%edx
	movb	(%eax,%edx,1),%al
	call	SYSTEM_LOWERCASE$CHAR$$CHAR
	movl	-8(%ebp),%edx
	movzbl	-12(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	cmpl	-12(%ebp),%ebx
	jg	Lj2237
Lj2236:
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
	jl	Lj2247
	incl	-16(%ebp)
	.balign 4,0x90
Lj2248:
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
	jg	Lj2248
Lj2247:
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
	jl	Lj2258
	incl	-16(%ebp)
	.balign 4,0x90
Lj2259:
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
	jg	Lj2259
Lj2258:
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
	jl	Lj2269
	incl	-16(%ebp)
	.balign 4,0x90
Lj2270:
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
	jg	Lj2270
Lj2269:
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
	jl	Lj2280
	incl	-12(%ebp)
	.balign 4,0x90
Lj2281:
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
	jg	Lj2281
Lj2280:
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
	jl	Lj2291
	incl	-12(%ebp)
	.balign 4,0x90
Lj2292:
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
	jg	Lj2292
Lj2291:
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
	jl	Lj2302
	incl	-12(%ebp)
	.balign 4,0x90
Lj2303:
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
	jg	Lj2303
Lj2302:
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
Lj2340:
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
	jg	Lj2340
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
	jl	Lj2363
	jmp	Lj2364
Lj2363:
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
Lj2364:
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
	jl	Lj2391
	jmp	Lj2392
Lj2391:
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
Lj2392:
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
	jl	Lj2419
	jmp	Lj2420
Lj2419:
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
Lj2420:
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
	jl	Lj2447
	jmp	Lj2448
Lj2447:
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
Lj2448:
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
	je	Lj2475
	decl	%eax
	je	Lj2476
	decl	%eax
	jb	Lj2474
	subl	$1,%eax
	jbe	Lj2477
	decl	%eax
	je	Lj2478
	decl	%eax
	je	Lj2479
	decl	%eax
	je	Lj2480
	jmp	Lj2474
Lj2475:
	movl	$16,-344(%ebp)
	movl	$8,-348(%ebp)
	movl	$4,-352(%ebp)
	movl	_$SYSTEM$_Ld5,%eax
	movl	%eax,-24(%ebp)
	movl	_$SYSTEM$_Ld5+4,%eax
	movl	%eax,-20(%ebp)
	movw	_$SYSTEM$_Ld5+8,%ax
	movw	%ax,-16(%ebp)
	jmp	Lj2473
Lj2476:
	movl	$22,-344(%ebp)
	movl	_$SYSTEM$_Ld6,%eax
	movl	%eax,-24(%ebp)
	movl	_$SYSTEM$_Ld6+4,%eax
	movl	%eax,-20(%ebp)
	movw	_$SYSTEM$_Ld6+8,%ax
	movw	%ax,-16(%ebp)
	movl	$9,-348(%ebp)
	movl	$5,-352(%ebp)
	jmp	Lj2473
Lj2477:
	movl	$25,-344(%ebp)
	movl	$10,-348(%ebp)
	movl	$6,-352(%ebp)
	movl	_$SYSTEM$_Ld7,%eax
	movl	%eax,-24(%ebp)
	movl	_$SYSTEM$_Ld7+4,%eax
	movl	%eax,-20(%ebp)
	movw	_$SYSTEM$_Ld7+8,%ax
	movw	%ax,-16(%ebp)
	jmp	Lj2473
Lj2478:
	movl	$23,-344(%ebp)
	movl	$10,-348(%ebp)
	movl	$6,-352(%ebp)
	movl	_$SYSTEM$_Ld6,%eax
	movl	%eax,-24(%ebp)
	movl	_$SYSTEM$_Ld6+4,%eax
	movl	%eax,-20(%ebp)
	movw	_$SYSTEM$_Ld6+8,%ax
	movw	%ax,-16(%ebp)
	jmp	Lj2473
Lj2479:
	movl	$25,-344(%ebp)
	movl	$10,-348(%ebp)
	movl	$0,-352(%ebp)
	movl	_$SYSTEM$_Ld7,%eax
	movl	%eax,-24(%ebp)
	movl	_$SYSTEM$_Ld7+4,%eax
	movl	%eax,-20(%ebp)
	movw	_$SYSTEM$_Ld7+8,%ax
	movw	%ax,-16(%ebp)
	jmp	Lj2473
Lj2480:
	movl	$25,-344(%ebp)
	movl	$10,-348(%ebp)
	movl	$6,-352(%ebp)
	movl	_$SYSTEM$_Ld7,%eax
	movl	%eax,-24(%ebp)
	movl	_$SYSTEM$_Ld7+4,%eax
	movl	%eax,-20(%ebp)
	movw	_$SYSTEM$_Ld7+8,%ax
	movw	%ax,-16(%ebp)
	jmp	Lj2473
Lj2474:
Lj2473:
	movl	-4(%ebp),%eax
	cmpl	$-32767,%eax
	je	Lj2529
	jmp	Lj2530
Lj2529:
	movl	-344(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj2530:
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
	je	Lj2539
	jmp	Lj2538
Lj2539:
	movl	20(%ebp),%eax
	andl	$2147483647,%eax
	testl	%eax,%eax
	je	Lj2537
	jmp	Lj2538
Lj2537:
	movb	$1,-338(%ebp)
	jmp	Lj2540
Lj2538:
	movb	$0,-338(%ebp)
Lj2540:
	cmpb	$0,-339(%ebp)
	jne	Lj2541
	jmp	Lj2542
Lj2541:
	cmpb	$0,-338(%ebp)
	jne	Lj2543
	jmp	Lj2544
Lj2543:
	cmpb	$0,-336(%ebp)
	jne	Lj2545
	jmp	Lj2546
Lj2545:
	leal	-324(%ebp),%eax
	movl	$_$SYSTEM$_Ld8,%ecx
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	jmp	Lj2553
Lj2546:
	leal	-324(%ebp),%eax
	movl	$_$SYSTEM$_Ld9,%ecx
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
Lj2553:
	jmp	Lj2560
Lj2544:
	leal	-324(%ebp),%eax
	movl	$_$SYSTEM$_Ld10,%ecx
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
Lj2560:
	jmp	Lj2567
Lj2542:
	cmpb	$0,-336(%ebp)
	jne	Lj2568
	jmp	Lj2569
Lj2568:
	fldt	16(%ebp)
	fchs
	fstpt	16(%ebp)
Lj2569:
	movl	-344(%ebp),%edx
	movl	-352(%ebp),%eax
	subl	%eax,%edx
	subl	$2,%edx
	movl	%edx,-68(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-68(%ebp),%eax
	jg	Lj2574
	jmp	Lj2575
Lj2574:
	movl	-68(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj2575:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj2578
	jmp	Lj2579
Lj2578:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj2582
	jmp	Lj2581
Lj2582:
	movl	-4(%ebp),%eax
	cmpl	-348(%ebp),%eax
	jl	Lj2580
	jmp	Lj2581
Lj2580:
	movl	-348(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj2581:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2587
	jmp	Lj2586
Lj2587:
	movl	-4(%ebp),%eax
	cmpl	-344(%ebp),%eax
	jl	Lj2585
	jmp	Lj2586
Lj2585:
	movl	-4(%ebp),%edx
	movl	-352(%ebp),%eax
	subl	%eax,%edx
	subl	$2,%edx
	movl	%edx,-68(%ebp)
Lj2586:
Lj2579:
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
	ja	Lj2604
	jmp	Lj2605
Lj2604:
	movzwl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	16(%ebp)
	call	fpc_frac_real
	fstpt	16(%ebp)
Lj2605:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj2612
	jmp	Lj2611
Lj2612:
	movl	-68(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj2610
	jmp	Lj2611
Lj2610:
	movl	-8(%ebp),%eax
	movl	%eax,-68(%ebp)
Lj2611:
	movl	-52(%ebp),%eax
	cmpl	$2,%eax
	je	Lj2617
	jmp	Lj2616
Lj2617:
	fldz
	fldt	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jne	Lj2615
	jmp	Lj2616
Lj2615:
	jmp	Lj2619
	.balign 4,0x90
Lj2618:
	fldt	_$SYSTEM$_Ld12
	fldt	16(%ebp)
	fmulp	%st,%st(1)
	fstpt	16(%ebp)
	decl	-64(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj2623
	jmp	Lj2624
Lj2623:
	decl	-68(%ebp)
Lj2624:
Lj2619:
	fldt	-24(%ebp)
	fldt	_$SYSTEM$_Ld13
	fsubp	%st,%st(1)
	fldt	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj2618
	jmp	Lj2620
Lj2620:
	decl	-64(%ebp)
Lj2616:
	movl	-52(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-68(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj2627
	jmp	Lj2628
Lj2627:
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
	jl	Lj2634
	decl	-60(%ebp)
	.balign 4,0x90
Lj2635:
	incl	-60(%ebp)
	fldt	_$SYSTEM$_Ld12
	fldt	-48(%ebp)
	fmulp	%st,%st(1)
	fstpt	-48(%ebp)
	cmpl	-60(%ebp),%eax
	jg	Lj2635
Lj2634:
	fldt	-48(%ebp)
	fldt	-36(%ebp)
	fdivp	%st,%st(1)
	fstpt	-36(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2640
	jmp	Lj2641
Lj2640:
	fldt	-24(%ebp)
	fldt	16(%ebp)
	fmulp	%st,%st(1)
	fldt	16(%ebp)
	faddp	%st,%st(1)
	fstpt	16(%ebp)
Lj2641:
	fldt	-36(%ebp)
	fldt	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jae	Lj2644
	jmp	Lj2645
Lj2644:
	fldt	-36(%ebp)
	fldt	16(%ebp)
	faddp	%st,%st(1)
	fstpt	16(%ebp)
Lj2645:
	movzwl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	16(%ebp)
	call	fpc_int_real
	fld1
	fcompp
	fnstsw	%ax
	sahf
	je	Lj2648
	jmp	Lj2649
Lj2648:
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
Lj2649:
	movl	-68(%ebp),%ebx
	movl	$1,-60(%ebp)
	cmpl	-60(%ebp),%ebx
	jl	Lj2665
	decl	-60(%ebp)
	.balign 4,0x90
Lj2666:
	incl	-60(%ebp)
	fld1
	fldt	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj2667
	jmp	Lj2668
Lj2667:
	movzwl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	16(%ebp)
	call	fpc_frac_real
	fldt	_$SYSTEM$_Ld12
	fmulp	%st,%st(1)
	fstpt	16(%ebp)
	jmp	Lj2673
Lj2668:
	fldt	_$SYSTEM$_Ld12
	fldt	16(%ebp)
	fmulp	%st,%st(1)
	fstpt	16(%ebp)
Lj2673:
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
	ja	Lj2678
	jmp	Lj2679
Lj2678:
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
Lj2679:
	cmpl	-60(%ebp),%ebx
	jg	Lj2666
Lj2665:
	movl	-52(%ebp),%eax
	movl	%eax,-56(%ebp)
Lj2628:
	movl	-56(%ebp),%ecx
	leal	-324(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
	movb	-322(%ebp),%al
	cmpb	$48,%al
	je	Lj2698
	jmp	Lj2699
Lj2698:
	pushl	$1
	leal	-324(%ebp),%eax
	movl	$2,%ecx
	movl	$255,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	jmp	Lj2708
Lj2699:
	incl	-64(%ebp)
Lj2708:
	cmpb	$0,-336(%ebp)
	jne	Lj2709
	jmp	Lj2710
Lj2709:
	movb	$45,-323(%ebp)
Lj2710:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj2713
	jmp	Lj2715
Lj2715:
	movl	-64(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	cmpl	$0,%eax
	jg	Lj2713
	jl	Lj2714
	cmpl	$35,%edx
	ja	Lj2713
	jmp	Lj2714
Lj2713:
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
	jg	Lj2732
	jmp	Lj2733
Lj2732:
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
Lj2733:
	movl	-64(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj2756
	jmp	Lj2757
Lj2756:
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
	jmp	Lj2772
Lj2757:
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
Lj2772:
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
	jmp	Lj2801
Lj2714:
	movb	-336(%ebp),%al
	testb	%al,%al
	je	Lj2802
	jmp	Lj2803
Lj2802:
	pushl	$1
	leal	-324(%ebp),%eax
	movl	$1,%ecx
	movl	$255,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	movb	$2,-337(%ebp)
	jmp	Lj2814
Lj2803:
	movb	$3,-337(%ebp)
Lj2814:
	movl	-64(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj2817
	jmp	Lj2818
Lj2817:
	movzbl	-337(%ebp),%eax
	movl	-64(%ebp),%edx
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	decl	%edx
	movzbl	-324(%ebp),%eax
	cmpl	%eax,%edx
	jg	Lj2819
	jmp	Lj2820
Lj2819:
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
Lj2820:
	movzbl	-337(%ebp),%edx
	movl	-64(%ebp),%eax
	addl	%edx,%eax
	pushl	%eax
	leal	-324(%ebp),%edx
	movl	$255,%ecx
	movb	$46,%al
	call	SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT
	jmp	Lj2845
Lj2818:
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
Lj2845:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2872
	jmp	Lj2873
Lj2872:
	leal	-324(%ebp),%edx
	movb	$46,%al
	call	SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
	movl	%eax,%ecx
	movl	-8(%ebp),%eax
	addl	%eax,%ecx
	leal	-324(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
	jmp	Lj2884
Lj2873:
	leal	-324(%ebp),%edx
	movb	$46,%al
	call	SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
	movl	%eax,%ecx
	decl	%ecx
	leal	-324(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
Lj2884:
Lj2801:
Lj2567:
	movzbl	-324(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj2895
	jmp	Lj2896
Lj2895:
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
	jmp	Lj2915
Lj2896:
	leal	-324(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj2915:
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
	jmp	Lj2929
	.balign 4,0x90
Lj2928:
	incl	-192(%ebp)
	incl	-200(%ebp)
	movl	-192(%ebp),%eax
	cmpl	$18,%eax
	jg	Lj2931
	jmp	Lj2932
Lj2931:
	movl	$1,-192(%ebp)
	movb	$1,-201(%ebp)
Lj2932:
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
Lj2929:
	movl	-4(%ebp),%eax
	fld1
	fldt	-24(%eax)
	fsubrp	%st,%st(1)
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj2928
	jmp	Lj2930
Lj2930:
	movl	-200(%ebp),%eax
	testl	%eax,%eax
	je	Lj2941
	jmp	Lj2942
Lj2941:
	jmp	Lj2471
Lj2942:
	movl	-192(%ebp),%eax
	incl	%eax
	movl	%eax,-196(%ebp)
	movl	-196(%ebp),%eax
	cmpl	$18,%eax
	jg	Lj2945
	jmp	Lj2946
Lj2945:
	movl	$1,-196(%ebp)
Lj2946:
	movl	-4(%ebp),%eax
	fldz
	fstpt	-36(%eax)
	movl	-200(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%eax
	movl	%edx,-64(%eax)
	.balign 4,0x90
Lj2953:
	movl	-4(%ebp),%eax
	movl	-68(%eax),%eax
	cmpl	$0,%eax
	jg	Lj2956
	jmp	Lj2957
Lj2956:
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
	ja	Lj2962
	jmp	Lj2963
Lj2962:
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
Lj2963:
Lj2957:
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
	je	Lj2978
	jmp	Lj2979
Lj2978:
	movl	$18,-192(%ebp)
Lj2979:
	cmpb	$0,-201(%ebp)
	jne	Lj2984
	jmp	Lj2983
Lj2984:
	movl	-192(%ebp),%eax
	cmpl	-196(%ebp),%eax
	je	Lj2955
	jmp	Lj2983
Lj2983:
	movb	-201(%ebp),%al
	testb	%al,%al
	je	Lj2985
	jmp	Lj2982
Lj2985:
	movl	-192(%ebp),%eax
	cmpl	$18,%eax
	je	Lj2955
	jmp	Lj2982
Lj2982:
	movl	-4(%ebp),%eax
	movl	-68(%eax),%eax
	testl	%eax,%eax
	je	Lj2955
	jmp	Lj2953
Lj2955:
	cmpb	$0,-201(%ebp)
	jne	Lj2986
	jmp	Lj2988
Lj2988:
	movl	-192(%ebp),%eax
	cmpl	$18,%eax
	jl	Lj2986
	jmp	Lj2987
Lj2986:
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
	jbe	Lj2991
	jmp	Lj2992
Lj2991:
	movl	-4(%ebp),%eax
	movzbl	-52(%eax),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	leal	-324(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_STR_REAL$crcC5C66959_ROUNDSTR$OPENSTRING$BYTE
Lj2992:
Lj2987:
Lj2471:
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
Lj3005:
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
	ja	Lj3012
	jmp	Lj3013
Lj3012:
	movl	-4(%ebp),%eax
	movzbl	8(%ebp),%edx
	movb	$48,(%eax,%edx,1)
	movl	$1,-16(%ebp)
Lj3013:
	decb	8(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj3007
	jmp	Lj3005
Lj3007:
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
	jl	Lj3033
	decw	-14(%ebp)
	.balign 4,0x90
Lj3034:
	incw	-14(%ebp)
	movl	12(%ebp),%edx
	movzbl	-14(%ebp),%ecx
	movb	(%edx,%ecx,1),%dl
	cmpb	$69,%dl
	je	Lj3035
	jmp	Lj3036
Lj3035:
	movl	12(%ebp),%ecx
	movzbl	-14(%ebp),%edx
	movb	$101,(%ecx,%edx,1)
Lj3036:
	cmpw	-14(%ebp),%ax
	jg	Lj3034
Lj3033:
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
	je	Lj3059
	jmp	Lj3060
Lj3059:
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
	jl	Lj3074
	jmp	Lj3076
Lj3076:
	movl	-4(%ebp),%edx
	cmpl	4(%eax),%edx
	jg	Lj3074
	jmp	Lj3075
Lj3074:
	jmp	Lj3053
Lj3075:
	movl	(%eax),%edx
	subl	%edx,-4(%ebp)
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%edx,%eax,4),%eax
	movl	%eax,-32(%ebp)
	cmpl	$0,-32(%ebp)
	jne	Lj3080
	jmp	Lj3079
Lj3079:
	jmp	Lj3053
Lj3080:
	movl	-32(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	call	fpc_shortstr_to_shortstr
	jmp	Lj3087
Lj3060:
	movl	-20(%ebp),%eax
	leal	8(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	$0,-56(%ebp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	decl	%eax
	movl	%eax,-52(%ebp)
	.balign 4,0x90
Lj3094:
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
	jl	Lj3099
	jmp	Lj3100
Lj3099:
	movl	-48(%ebp),%eax
	incl	%eax
	movl	%eax,-56(%ebp)
	jmp	Lj3103
Lj3100:
	movl	-36(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	(%eax,%edx,8),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj3104
	jmp	Lj3105
Lj3104:
	movl	-48(%ebp),%eax
	decl	%eax
	movl	%eax,-52(%ebp)
	jmp	Lj3108
Lj3105:
	jmp	Lj3096
Lj3108:
Lj3103:
	movl	-56(%ebp),%eax
	cmpl	-52(%ebp),%eax
	jg	Lj3109
	jmp	Lj3110
Lj3109:
	jmp	Lj3053
Lj3110:
	jmp	Lj3094
Lj3096:
	movl	-36(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	4(%eax,%edx,8),%ecx
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj3087:
	movl	12(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj3117
	jmp	Lj3118
Lj3117:
	movl	12(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-40(%ebp)
	movl	-40(%ebp),%edx
	movl	$1,-44(%ebp)
	cmpl	-44(%ebp),%edx
	jl	Lj3122
	decl	-44(%ebp)
	.balign 4,0x90
Lj3123:
	incl	-44(%ebp)
	movl	12(%ebp),%ecx
	movl	12(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-44(%ebp),%ebx
	addl	%ebx,%eax
	movzbl	%al,%eax
	movb	$32,(%ecx,%eax,1)
	cmpl	-44(%ebp),%edx
	jg	Lj3123
Lj3122:
	movl	12(%ebp),%eax
	movb	-40(%ebp),%dl
	addb	%dl,(%eax)
Lj3118:
	movl	$0,-16(%ebp)
Lj3053:
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
	jne	Lj3144
	jmp	Lj3145
Lj3144:
	movw	$107,%ax
	call	SYSTEM_RUNERROR$WORD
Lj3145:
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
	jne	Lj3150
	jmp	Lj3151
Lj3150:
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$_$SYSTEM$_Ld19,%ecx
	call	fpc_shortstr_to_shortstr
	jmp	Lj3158
Lj3151:
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$_$SYSTEM$_Ld20,%ecx
	call	fpc_shortstr_to_shortstr
Lj3158:
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj3165
	jmp	Lj3166
Lj3165:
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
Lj3166:
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
	je	Lj3193
	jmp	Lj3194
Lj3193:
	movl	$25,-4(%ebp)
Lj3194:
	leal	12(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jg	Lj3197
	jl	Lj3198
	cmpl	$0,%edx
	jae	Lj3197
	jmp	Lj3198
Lj3197:
	leal	12(%ebp),%eax
	movl	(%eax),%edx
	movl	%edx,-72(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	$0,-56(%ebp)
	jmp	Lj3203
Lj3198:
	movl	$1,-56(%ebp)
	leal	12(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	notl	%eax
	negl	%edx
	sbbl	$-1,%eax
	movl	%edx,-72(%ebp)
	movl	%eax,-68(%ebp)
Lj3203:
	movl	$0,-52(%ebp)
	.balign 4,0x90
Lj3210:
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
	jne	Lj3210
	cmpl	$0,%eax
	jne	Lj3210
	jmp	Lj3212
Lj3212:
	movl	-52(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3227
	jmp	Lj3228
Lj3227:
	incl	-48(%ebp)
Lj3228:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3229
	jmp	Lj3230
Lj3229:
	addl	$5,-48(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj3231
	jmp	Lj3232
Lj3231:
	movl	$8,-4(%ebp)
Lj3232:
	movl	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-60(%ebp)
	movl	-48(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj3237
	jmp	Lj3238
Lj3237:
	movl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
Lj3238:
	movl	-60(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3241
	jmp	Lj3242
Lj3241:
	movl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	-52(%ebp),%edx
	movl	-60(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-64(%ebp)
	jmp	Lj3247
Lj3242:
	movl	-52(%ebp),%eax
	movl	%eax,-64(%ebp)
Lj3247:
	jmp	Lj3250
Lj3230:
	movl	-56(%ebp),%eax
	addl	%eax,-48(%ebp)
	jmp	Lj3252
	.balign 4,0x90
Lj3251:
	incl	-48(%ebp)
	incl	-52(%ebp)
	movl	-52(%ebp),%eax
	movb	$48,-32(%ebp,%eax,1)
Lj3252:
	movl	-52(%ebp),%eax
	cmpl	$5,%eax
	jl	Lj3251
	jmp	Lj3253
Lj3253:
	movl	-8(%ebp),%edx
	movl	$4,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-60(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3260
	jmp	Lj3261
Lj3260:
	movl	-64(%ebp),%eax
	cmpl	$4,%eax
	jg	Lj3262
	jmp	Lj3263
Lj3262:
	movl	$4,-64(%ebp)
Lj3263:
	incl	-64(%ebp)
Lj3261:
	movl	-60(%ebp),%eax
	subl	%eax,-48(%ebp)
Lj3250:
	movl	-60(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3266
	jmp	Lj3267
Lj3266:
	movl	$1,-36(%ebp)
	movl	$0,-44(%ebp)
	movl	-60(%ebp),%edx
	movl	$0,-40(%ebp)
	cmpl	-40(%ebp),%edx
	jl	Lj3273
	decl	-40(%ebp)
	.balign 4,0x90
Lj3274:
	incl	-40(%ebp)
	movl	-44(%ebp),%eax
	cmpl	$1,%eax
	je	Lj3277
	jmp	Lj3276
Lj3277:
	movl	-36(%ebp),%eax
	movb	-32(%ebp,%eax,1),%al
	cmpb	$57,%al
	je	Lj3275
	jmp	Lj3276
Lj3275:
	movl	-36(%ebp),%eax
	movb	$48,-32(%ebp,%eax,1)
	jmp	Lj3280
Lj3276:
	movl	-36(%ebp),%eax
	movzbl	-32(%ebp,%eax,1),%eax
	movl	-44(%ebp),%ecx
	addl	%ecx,%eax
	movl	-36(%ebp),%ecx
	movb	%al,-32(%ebp,%ecx,1)
	movl	-36(%ebp),%eax
	movb	-32(%ebp,%eax,1),%al
	cmpb	$53,%al
	jae	Lj3283
	jmp	Lj3284
Lj3283:
	movl	$1,-44(%ebp)
	jmp	Lj3287
Lj3284:
	movl	$0,-44(%ebp)
Lj3287:
Lj3280:
	incl	-36(%ebp)
	movl	-36(%ebp),%eax
	cmpl	-52(%ebp),%eax
	jg	Lj3290
	jmp	Lj3291
Lj3290:
	jmp	Lj3273
Lj3291:
	cmpl	-40(%ebp),%edx
	jg	Lj3274
Lj3273:
	movl	-44(%ebp),%eax
	cmpl	$1,%eax
	je	Lj3294
	jmp	Lj3293
Lj3294:
	movl	-36(%ebp),%eax
	decl	%eax
	movb	-32(%ebp,%eax,1),%al
	cmpb	$48,%al
	je	Lj3292
	jmp	Lj3293
Lj3292:
	jmp	Lj3296
	.balign 4,0x90
Lj3295:
	movl	-36(%ebp),%eax
	movb	$48,-32(%ebp,%eax,1)
	incl	-36(%ebp)
Lj3296:
	movl	-36(%ebp),%eax
	movb	-32(%ebp,%eax,1),%al
	cmpb	$57,%al
	je	Lj3295
	jmp	Lj3297
Lj3297:
	movl	-36(%ebp),%eax
	movzbl	-32(%ebp,%eax,1),%eax
	incl	%eax
	movl	-36(%ebp),%edx
	movb	%al,-32(%ebp,%edx,1)
	movl	-36(%ebp),%eax
	cmpl	-48(%ebp),%eax
	jg	Lj3302
	jmp	Lj3303
Lj3302:
	incl	-48(%ebp)
	incl	-52(%ebp)
Lj3303:
Lj3293:
Lj3267:
	movl	-48(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj3304
	jmp	Lj3305
Lj3304:
	movl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
Lj3305:
	movl	-48(%ebp),%eax
	cmpl	8(%ebp),%eax
	jg	Lj3308
	jmp	Lj3309
Lj3308:
	movl	-60(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3310
	jmp	Lj3311
Lj3310:
	movl	-48(%ebp),%eax
	movl	8(%ebp),%edx
	subl	%edx,%eax
	addl	%eax,-60(%ebp)
Lj3311:
	movl	8(%ebp),%eax
	movl	%eax,-48(%ebp)
Lj3309:
	movl	-48(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_shortstr_setlength
	movl	-48(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3322
	jmp	Lj3323
Lj3322:
	leal	12(%ebp),%eax
	movl	(%eax),%edx
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jne	Lj3325
	cmpl	$0,%edx
	jne	Lj3325
	jmp	Lj3324
Lj3324:
	movl	$0,-44(%ebp)
	jmp	Lj3328
Lj3325:
	movl	-52(%ebp),%eax
	subl	$5,%eax
	movl	%eax,-44(%ebp)
Lj3328:
	movl	-44(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj3331
	jmp	Lj3332
Lj3331:
	movl	-12(%ebp),%edx
	movl	-40(%ebp),%eax
	subl	$2,%eax
	movzbl	%al,%eax
	movb	$43,(%edx,%eax,1)
	jmp	Lj3335
Lj3332:
	movl	-12(%ebp),%edx
	movl	-40(%ebp),%eax
	subl	$2,%eax
	movzbl	%al,%eax
	movb	$45,(%edx,%eax,1)
	movl	-44(%ebp),%eax
	negl	%eax
	movl	%eax,-44(%ebp)
Lj3335:
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
Lj3323:
	jmp	Lj3347
	.balign 4,0x90
Lj3346:
	movl	-12(%ebp),%edx
	movzbl	-40(%ebp),%eax
	movb	$48,(%edx,%eax,1)
	decl	-40(%ebp)
	incl	-60(%ebp)
Lj3347:
	movl	-60(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj3346
	jmp	Lj3348
Lj3348:
	movl	-52(%ebp),%ecx
	movl	-60(%ebp),%eax
	incl	%eax
	movl	%eax,-36(%ebp)
	cmpl	-36(%ebp),%ecx
	jl	Lj3352
	decl	-36(%ebp)
	.balign 4,0x90
Lj3353:
	incl	-36(%ebp)
	decl	-64(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj3354
	jmp	Lj3355
Lj3354:
	movl	-12(%ebp),%eax
	movzbl	-40(%ebp),%edx
	movb	$46,(%eax,%edx,1)
	decl	-40(%ebp)
Lj3355:
	movl	-12(%ebp),%edx
	movzbl	-40(%ebp),%ebx
	movl	-36(%ebp),%eax
	movb	-32(%ebp,%eax,1),%al
	movb	%al,(%edx,%ebx,1)
	decl	-40(%ebp)
	cmpl	-36(%ebp),%ecx
	jg	Lj3353
Lj3352:
	movl	-56(%ebp),%eax
	cmpl	$1,%eax
	je	Lj3360
	jmp	Lj3361
Lj3360:
	movl	-12(%ebp),%eax
	movzbl	-40(%ebp),%edx
	movb	$45,(%eax,%edx,1)
	decl	-40(%ebp)
Lj3361:
	jmp	Lj3365
	.balign 4,0x90
Lj3364:
	movl	-12(%ebp),%eax
	movzbl	-40(%ebp),%edx
	movb	$32,(%eax,%edx,1)
	decl	-40(%ebp)
Lj3365:
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3364
	jmp	Lj3366
Lj3366:
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
	jl	Lj3377
	jmp	Lj3378
Lj3377:
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
Lj3378:
	movl	8(%ebp),%eax
	incl	%eax
	movzbl	-268(%ebp),%edx
	cmpl	%edx,%eax
	jg	Lj3391
	jmp	Lj3392
Lj3391:
	movzbl	-268(%ebp),%eax
	movl	%eax,-272(%ebp)
	jmp	Lj3395
Lj3392:
	movl	8(%ebp),%eax
	incl	%eax
	movl	%eax,-272(%ebp)
Lj3395:
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
	jl	Lj3412
	jmp	Lj3413
Lj3412:
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
Lj3413:
	movl	8(%ebp),%eax
	incl	%eax
	movzbl	-268(%ebp),%edx
	cmpl	%edx,%eax
	jg	Lj3426
	jmp	Lj3427
Lj3426:
	movzbl	-268(%ebp),%eax
	movl	%eax,-272(%ebp)
	jmp	Lj3430
Lj3427:
	movl	8(%ebp),%eax
	incl	%eax
	movl	%eax,-272(%ebp)
Lj3430:
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
	jl	Lj3447
	jmp	Lj3448
Lj3447:
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
Lj3448:
	movl	-12(%ebp),%eax
	incl	%eax
	movzbl	-268(%ebp),%edx
	cmpl	%edx,%eax
	jg	Lj3461
	jmp	Lj3462
Lj3461:
	movzbl	-268(%ebp),%eax
	movl	%eax,-272(%ebp)
	jmp	Lj3465
Lj3462:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-272(%ebp)
Lj3465:
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
	jl	Lj3482
	jmp	Lj3483
Lj3482:
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
Lj3483:
	movl	-12(%ebp),%eax
	incl	%eax
	movzbl	-268(%ebp),%edx
	cmpl	%edx,%eax
	jg	Lj3496
	jmp	Lj3497
Lj3496:
	movzbl	-268(%ebp),%eax
	movl	%eax,-272(%ebp)
	jmp	Lj3500
Lj3497:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-272(%ebp)
Lj3500:
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
	jg	Lj3523
	jmp	Lj3524
Lj3523:
	movzbl	-268(%ebp),%eax
	movl	%eax,-272(%ebp)
	jmp	Lj3527
Lj3524:
	movl	8(%ebp),%eax
	incl	%eax
	movl	%eax,-272(%ebp)
Lj3527:
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
	jg	Lj3550
	jmp	Lj3551
Lj3550:
	movzbl	-268(%ebp),%eax
	movl	%eax,-272(%ebp)
	jmp	Lj3554
Lj3551:
	movl	8(%ebp),%eax
	incl	%eax
	movl	%eax,-272(%ebp)
Lj3554:
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
	jg	Lj3573
	jmp	Lj3574
Lj3573:
	movzbl	-268(%ebp),%eax
	movl	%eax,-272(%ebp)
	jmp	Lj3577
Lj3574:
	movl	8(%ebp),%eax
	incl	%eax
	movl	%eax,-272(%ebp)
Lj3577:
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
	jg	Lj3598
	jmp	Lj3599
Lj3598:
	movzbl	-268(%ebp),%eax
	movl	%eax,-272(%ebp)
	jmp	Lj3602
Lj3599:
	movl	8(%ebp),%eax
	incl	%eax
	movl	%eax,-272(%ebp)
Lj3602:
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
	je	Lj3619
	jmp	Lj3620
Lj3619:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj3611
Lj3620:
	jmp	Lj3624
	.balign 4,0x90
Lj3623:
	incl	-20(%ebp)
Lj3624:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-20(%ebp),%eax
	jge	Lj3626
	jmp	Lj3625
Lj3626:
	movl	-4(%ebp),%edx
	movzbl	-20(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	cmpl	$9,%eax
	je	Lj3627
	cmpl	$32,%eax
	je	Lj3627
Lj3627:
	je	Lj3623
	jmp	Lj3625
Lj3625:
	movl	-4(%ebp),%eax
	movzbl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$43,%al
	jb	Lj3629
	subb	$43,%al
	je	Lj3631
	subb	$2,%al
	je	Lj3630
	jmp	Lj3629
Lj3630:
	movl	-8(%ebp),%eax
	movb	$1,(%eax)
	incl	-20(%ebp)
	jmp	Lj3628
Lj3631:
	incl	-20(%ebp)
	jmp	Lj3628
Lj3629:
Lj3628:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-20(%ebp),%eax
	jge	Lj3634
	jmp	Lj3635
Lj3634:
	movl	-4(%ebp),%eax
	movzbl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$36,%al
	jb	Lj3637
	subb	$36,%al
	je	Lj3638
	decb	%al
	je	Lj3639
	decb	%al
	je	Lj3640
	subb	$10,%al
	je	Lj3641
	subb	$40,%al
	je	Lj3638
	subb	$32,%al
	je	Lj3638
	jmp	Lj3637
Lj3638:
	movl	-12(%ebp),%eax
	movb	$16,(%eax)
	incl	-20(%ebp)
	jmp	Lj3636
Lj3639:
	movl	-12(%ebp),%eax
	movb	$2,(%eax)
	incl	-20(%ebp)
	jmp	Lj3636
Lj3640:
	movl	-12(%ebp),%eax
	movb	$8,(%eax)
	incl	-20(%ebp)
	jmp	Lj3636
Lj3641:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj3650
	jmp	Lj3649
Lj3650:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movzbl	%al,%eax
	movzbl	(%edx,%eax,1),%eax
	cmpl	$88,%eax
	je	Lj3651
	cmpl	$120,%eax
	je	Lj3651
Lj3651:
	je	Lj3648
	jmp	Lj3649
Lj3648:
	addl	$2,-20(%ebp)
	movl	-12(%ebp),%eax
	movb	$16,(%eax)
Lj3649:
	jmp	Lj3636
Lj3637:
Lj3636:
Lj3635:
	jmp	Lj3655
	.balign 4,0x90
Lj3654:
	incl	-20(%ebp)
Lj3655:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj3657
	jmp	Lj3656
Lj3657:
	movl	-4(%ebp),%edx
	movzbl	-20(%ebp),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$48,%al
	je	Lj3654
	jmp	Lj3656
Lj3656:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj3611:
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
	jl	Lj3674
	jmp	Lj3675
Lj3674:
	jmp	Lj3660
Lj3675:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj3676
	jmp	Lj3677
Lj3676:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	jg	Lj3680
	jmp	Lj3679
Lj3680:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	decl	%eax
	movzbl	%al,%eax
	movb	(%edx,%eax,1),%al
	cmpb	$48,%al
	je	Lj3678
	jmp	Lj3679
Lj3678:
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
Lj3679:
	jmp	Lj3660
Lj3677:
	movzbl	-33(%ebp),%ecx
	movl	$-1,%eax
	xorl	%edx,%edx
	divl	%ecx
	movl	%eax,-28(%ebp)
	movzbl	-33(%ebp),%eax
	cmpl	$10,%eax
	je	Lj3685
	jmp	Lj3686
Lj3685:
	movzbl	-35(%ebp),%eax
	addl	$2147483647,%eax
	movl	%eax,-32(%ebp)
	jmp	Lj3691
Lj3686:
	movl	$-1,-32(%ebp)
Lj3691:
	jmp	Lj3695
	.balign 4,0x90
Lj3694:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj3702
	subb	$48,%al
	jb	Lj3698
	subb	$9,%al
	jbe	Lj3699
	subb	$8,%al
	jb	Lj3698
	subb	$5,%al
	jbe	Lj3700
	subb	$27,%al
	jb	Lj3698
	subb	$5,%al
	jbe	Lj3701
	jmp	Lj3698
Lj3699:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	movb	%al,-34(%ebp)
	jmp	Lj3697
Lj3700:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$55,%eax
	movb	%al,-34(%ebp)
	jmp	Lj3697
Lj3701:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$87,%eax
	movb	%al,-34(%ebp)
	jmp	Lj3697
Lj3702:
	jmp	Lj3696
	jmp	Lj3697
Lj3698:
	movb	$16,-34(%ebp)
Lj3697:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	movzbl	-33(%ebp),%eax
	mull	-20(%ebp)
	movl	%eax,-20(%ebp)
	movb	-34(%ebp),%al
	cmpb	-33(%ebp),%al
	jae	Lj3715
	jmp	Lj3718
Lj3718:
	movzbl	-34(%ebp),%edx
	movl	-32(%ebp),%eax
	subl	%edx,%eax
	cmpl	-20(%ebp),%eax
	jb	Lj3715
	jmp	Lj3717
Lj3717:
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	ja	Lj3715
	jmp	Lj3716
Lj3715:
	movl	$0,-16(%ebp)
	jmp	Lj3660
Lj3716:
	movzbl	-34(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	incl	(%eax)
Lj3695:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-12(%ebp),%eax
	cmpl	(%eax),%edx
	jge	Lj3694
	jmp	Lj3696
Lj3696:
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpb	$0,-35(%ebp)
	jne	Lj3727
	jmp	Lj3728
Lj3727:
	movl	-16(%ebp),%eax
	negl	%eax
	movl	%eax,-16(%ebp)
Lj3728:
	movb	-35(%ebp),%al
	testb	%al,%al
	je	Lj3733
	jmp	Lj3732
Lj3733:
	movzbl	-33(%ebp),%eax
	cmpl	$10,%eax
	jne	Lj3731
	jmp	Lj3732
Lj3731:
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj3735
	decl	%eax
	je	Lj3736
	decl	%eax
	je	Lj3737
	jmp	Lj3735
Lj3736:
	movsbl	-16(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj3734
Lj3737:
	movswl	-16(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj3734
Lj3735:
Lj3734:
Lj3732:
Lj3660:
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
	jne	Lj3754
	jmp	Lj3756
Lj3756:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jl	Lj3754
	jmp	Lj3755
Lj3754:
	jmp	Lj3742
Lj3755:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj3757
	jmp	Lj3758
Lj3757:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	jg	Lj3761
	jmp	Lj3760
Lj3761:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	decl	%eax
	movzbl	%al,%eax
	movb	(%edx,%eax,1),%al
	cmpb	$48,%al
	je	Lj3759
	jmp	Lj3760
Lj3759:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
Lj3760:
	jmp	Lj3742
Lj3758:
	jmp	Lj3765
	.balign 4,0x90
Lj3764:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj3772
	subb	$48,%al
	jb	Lj3768
	subb	$9,%al
	jbe	Lj3769
	subb	$8,%al
	jb	Lj3768
	subb	$5,%al
	jbe	Lj3770
	subb	$27,%al
	jb	Lj3768
	subb	$5,%al
	jbe	Lj3771
	jmp	Lj3768
Lj3769:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	movb	%al,-18(%ebp)
	jmp	Lj3767
Lj3770:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$55,%eax
	movb	%al,-18(%ebp)
	jmp	Lj3767
Lj3771:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$87,%eax
	movb	%al,-18(%ebp)
	jmp	Lj3767
Lj3772:
	jmp	Lj3766
	jmp	Lj3767
Lj3768:
	movb	$16,-18(%ebp)
Lj3767:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movb	-18(%ebp),%al
	cmpb	-17(%ebp),%al
	jae	Lj3783
	jmp	Lj3785
Lj3785:
	movzbl	-18(%ebp),%eax
	movl	$-1,%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movzbl	-17(%ebp),%ecx
	xorl	%edx,%edx
	divl	%ecx
	cmpl	-16(%ebp),%eax
	jb	Lj3783
	jmp	Lj3784
Lj3783:
	movl	$0,-12(%ebp)
	jmp	Lj3742
Lj3784:
	movzbl	-17(%ebp),%eax
	mull	-12(%ebp)
	movzbl	-18(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
Lj3765:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jge	Lj3764
	jmp	Lj3766
Lj3766:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
Lj3742:
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
	jl	Lj3806
	jmp	Lj3807
Lj3806:
	jmp	Lj3792
Lj3807:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj3808
	jmp	Lj3809
Lj3808:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	jg	Lj3812
	jmp	Lj3811
Lj3812:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	decl	%eax
	movzbl	%al,%eax
	movb	(%edx,%eax,1),%al
	cmpb	$48,%al
	je	Lj3810
	jmp	Lj3811
Lj3810:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
Lj3811:
	jmp	Lj3792
Lj3809:
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
	je	Lj3821
	jmp	Lj3822
Lj3821:
	movzbl	-58(%ebp),%edx
	movl	$0,%eax
	addl	$-1,%edx
	adcl	$2147483647,%eax
	movl	%edx,-56(%ebp)
	movl	%eax,-52(%ebp)
	jmp	Lj3827
Lj3822:
	movl	$-1,-56(%ebp)
	movl	$-1,-52(%ebp)
Lj3827:
	jmp	Lj3831
	.balign 4,0x90
Lj3830:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj3838
	subb	$48,%al
	jb	Lj3834
	subb	$9,%al
	jbe	Lj3835
	subb	$8,%al
	jb	Lj3834
	subb	$5,%al
	jbe	Lj3836
	subb	$27,%al
	jb	Lj3834
	subb	$5,%al
	jbe	Lj3837
	jmp	Lj3834
Lj3835:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%edx
	subl	$48,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-24(%ebp)
	movl	%eax,-20(%ebp)
	jmp	Lj3833
Lj3836:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%edx
	subl	$55,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-24(%ebp)
	movl	%eax,-20(%ebp)
	jmp	Lj3833
Lj3837:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%edx
	subl	$87,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-24(%ebp)
	movl	%eax,-20(%ebp)
	jmp	Lj3833
Lj3838:
	jmp	Lj3832
	jmp	Lj3833
Lj3834:
	movl	$16,-24(%ebp)
	movl	$0,-20(%ebp)
Lj3833:
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
	jb	Lj3857
	ja	Lj3860
	cmpl	-24(%ebp),%eax
	jbe	Lj3857
	jmp	Lj3860
	jmp	Lj3860
Lj3860:
	movl	-56(%ebp),%edx
	movl	-52(%ebp),%eax
	subl	-24(%ebp),%edx
	sbbl	-20(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jb	Lj3857
	ja	Lj3859
	cmpl	-32(%ebp),%edx
	jb	Lj3857
	jmp	Lj3859
	jmp	Lj3859
Lj3859:
	movl	-40(%ebp),%eax
	movl	-36(%ebp),%edx
	cmpl	-44(%ebp),%edx
	ja	Lj3857
	jb	Lj3858
	cmpl	-48(%ebp),%eax
	ja	Lj3857
	jmp	Lj3858
	jmp	Lj3858
Lj3857:
	movl	$0,-16(%ebp)
	movl	$0,-12(%ebp)
	jmp	Lj3792
Lj3858:
	movl	-32(%ebp),%eax
	movl	-28(%ebp),%edx
	addl	-24(%ebp),%eax
	adcl	-20(%ebp),%edx
	movl	%eax,-32(%ebp)
	movl	%edx,-28(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
Lj3831:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	cmpl	(%eax),%edx
	jge	Lj3830
	jmp	Lj3832
Lj3832:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movl	-32(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-12(%ebp)
	cmpb	$0,-58(%ebp)
	jne	Lj3869
	jmp	Lj3870
Lj3869:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
Lj3870:
Lj3792:
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
	jne	Lj3885
	jmp	Lj3887
Lj3887:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jl	Lj3885
	jmp	Lj3886
Lj3885:
	jmp	Lj3873
Lj3886:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj3888
	jmp	Lj3889
Lj3888:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	jg	Lj3892
	jmp	Lj3891
Lj3892:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	decl	%eax
	movzbl	%al,%eax
	movb	(%edx,%eax,1),%al
	cmpb	$48,%al
	je	Lj3890
	jmp	Lj3891
Lj3890:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
Lj3891:
	jmp	Lj3873
Lj3889:
	jmp	Lj3896
	.balign 4,0x90
Lj3895:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj3903
	subb	$48,%al
	jb	Lj3899
	subb	$9,%al
	jbe	Lj3900
	subb	$8,%al
	jb	Lj3899
	subb	$5,%al
	jbe	Lj3901
	subb	$27,%al
	jb	Lj3899
	subb	$5,%al
	jbe	Lj3902
	jmp	Lj3899
Lj3900:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%edx
	subl	$48,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-24(%ebp)
	movl	%eax,-20(%ebp)
	jmp	Lj3898
Lj3901:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%edx
	subl	$55,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-24(%ebp)
	movl	%eax,-20(%ebp)
	jmp	Lj3898
Lj3902:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%edx
	subl	$87,%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-24(%ebp)
	movl	%eax,-20(%ebp)
	jmp	Lj3898
Lj3903:
	jmp	Lj3897
	jmp	Lj3898
Lj3899:
	movl	$16,-24(%ebp)
	movl	$0,-20(%ebp)
Lj3898:
	movl	-16(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-28(%ebp)
	movzbl	-33(%ebp),%edx
	movl	$0,%eax
	cmpl	-20(%ebp),%eax
	jb	Lj3914
	ja	Lj3916
	cmpl	-24(%ebp),%edx
	jbe	Lj3914
	jmp	Lj3916
	jmp	Lj3916
Lj3916:
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
	jb	Lj3914
	ja	Lj3915
	cmpl	-32(%ebp),%eax
	jb	Lj3914
	jmp	Lj3915
	jmp	Lj3915
Lj3914:
	movl	$0,-16(%ebp)
	movl	$0,-12(%ebp)
	jmp	Lj3873
Lj3915:
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
Lj3896:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jge	Lj3895
	jmp	Lj3897
Lj3897:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
Lj3873:
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
	jmp	Lj3950
	.balign 4,0x90
Lj3949:
	movl	-8(%ebp),%eax
	incl	(%eax)
Lj3950:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	cmpl	(%eax),%edx
	jge	Lj3952
	jmp	Lj3951
Lj3952:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	cmpl	$9,%eax
	je	Lj3953
	cmpl	$32,%eax
	je	Lj3953
Lj3953:
	je	Lj3949
	jmp	Lj3951
Lj3951:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jge	Lj3954
	jmp	Lj3955
Lj3954:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$43,%al
	jb	Lj3957
	subb	$43,%al
	je	Lj3958
	subb	$2,%al
	je	Lj3959
	jmp	Lj3957
Lj3958:
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj3956
Lj3959:
	movl	_$SYSTEM$_Ld21,%eax
	movl	%eax,-56(%ebp)
	movl	_$SYSTEM$_Ld21+4,%eax
	movl	%eax,-52(%ebp)
	movw	_$SYSTEM$_Ld21+8,%ax
	movw	%ax,-48(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj3956
Lj3957:
Lj3956:
Lj3955:
	jmp	Lj3963
	.balign 4,0x90
Lj3962:
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
Lj3963:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	cmpl	(%eax),%edx
	jge	Lj3969
	jmp	Lj3964
Lj3969:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj3970
Lj3970:
	jc	Lj3962
	jmp	Lj3964
Lj3964:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	cmpl	(%eax),%edx
	jge	Lj3973
	jmp	Lj3972
Lj3973:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$46,%al
	je	Lj3971
	jmp	Lj3972
Lj3971:
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj3975
	.balign 4,0x90
Lj3974:
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
Lj3975:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	cmpl	(%eax),%edx
	jge	Lj3981
	jmp	Lj3976
Lj3981:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj3982
Lj3982:
	jc	Lj3974
	jmp	Lj3976
Lj3976:
Lj3972:
	movzbl	-69(%ebp),%eax
	testl	%eax,%eax
	je	Lj3983
	jmp	Lj3984
Lj3983:
	fldz
	fstpt	-20(%ebp)
	jmp	Lj3933
Lj3984:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jge	Lj3989
	jmp	Lj3988
Lj3989:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	cmpl	$69,%eax
	je	Lj3990
	cmpl	$101,%eax
	je	Lj3990
Lj3990:
	je	Lj3987
	jmp	Lj3988
Lj3987:
	movl	-8(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jge	Lj3991
	jmp	Lj3992
Lj3991:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$43,%al
	je	Lj3993
	jmp	Lj3994
Lj3993:
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj3995
Lj3994:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$45,%al
	je	Lj3996
	jmp	Lj3997
Lj3996:
	movl	_$SYSTEM$_Ld21,%eax
	movl	%eax,-44(%ebp)
	movl	_$SYSTEM$_Ld21+4,%eax
	movl	%eax,-40(%ebp)
	movw	_$SYSTEM$_Ld21+8,%ax
	movw	%ax,-36(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
Lj3997:
Lj3995:
Lj3992:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jl	Lj4000
	jmp	Lj4002
Lj4002:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj4003
Lj4003:
	jnc	Lj4000
	jmp	Lj4001
Lj4000:
	fldz
	fstpt	-20(%ebp)
	jmp	Lj3933
Lj4001:
	jmp	Lj4007
	.balign 4,0x90
Lj4006:
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
Lj4007:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	cmpl	(%eax),%edx
	jge	Lj4013
	jmp	Lj4008
Lj4013:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj4014
Lj4014:
	jc	Lj4006
	jmp	Lj4008
Lj4008:
Lj3988:
	fldz
	fldt	-44(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj4015
	jmp	Lj4016
Lj4015:
	movl	-64(%ebp),%eax
	subl	%eax,-60(%ebp)
	movl	-60(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj4017
	jmp	Lj4018
Lj4017:
	movl	_$SYSTEM$_Ld21,%eax
	movl	%eax,-44(%ebp)
	movl	_$SYSTEM$_Ld21+4,%eax
	movl	%eax,-40(%ebp)
	movw	_$SYSTEM$_Ld21+8,%ax
	movw	%ax,-36(%ebp)
	movl	-60(%ebp),%eax
	negl	%eax
	movl	%eax,-60(%ebp)
Lj4018:
	jmp	Lj4023
Lj4016:
	movl	-64(%ebp),%eax
	addl	%eax,-60(%ebp)
Lj4023:
	fldt	-56(%ebp)
	fldt	-20(%ebp)
	fmulp	%st,%st(1)
	fstpt	-20(%ebp)
	fld1
	fstpt	-32(%ebp)
	movl	-60(%ebp),%eax
	cmpl	$4930,%eax
	jg	Lj4028
	jmp	Lj4029
Lj4028:
	movl	$1,-68(%ebp)
	decl	-68(%ebp)
	.balign 4,0x90
Lj4032:
	incl	-68(%ebp)
	fldt	_$SYSTEM$_Ld12
	fldt	-32(%ebp)
	fmulp	%st,%st(1)
	fstpt	-32(%ebp)
	cmpl	$4930,-68(%ebp)
	jl	Lj4032
	fldz
	fldt	-44(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj4035
	jmp	Lj4036
Lj4035:
	fldt	-32(%ebp)
	fldt	-20(%ebp)
	fmulp	%st,%st(1)
	fstpt	-20(%ebp)
	jmp	Lj4039
Lj4036:
	fldt	-32(%ebp)
	fldt	-20(%ebp)
	fdivp	%st,%st(1)
	fstpt	-20(%ebp)
Lj4039:
	subl	$4930,-60(%ebp)
	fld1
	fstpt	-32(%ebp)
Lj4029:
	movl	-60(%ebp),%eax
	movl	$1,-68(%ebp)
	cmpl	-68(%ebp),%eax
	jl	Lj4045
	decl	-68(%ebp)
	.balign 4,0x90
Lj4046:
	incl	-68(%ebp)
	fldt	_$SYSTEM$_Ld12
	fldt	-32(%ebp)
	fmulp	%st,%st(1)
	fstpt	-32(%ebp)
	cmpl	-68(%ebp),%eax
	jg	Lj4046
Lj4045:
	fldz
	fldt	-44(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj4049
	jmp	Lj4050
Lj4049:
	fldt	-32(%ebp)
	fldt	-20(%ebp)
	fmulp	%st,%st(1)
	fstpt	-20(%ebp)
	jmp	Lj4053
Lj4050:
	fldt	-32(%ebp)
	fldt	-20(%ebp)
	fdivp	%st,%st(1)
	fstpt	-20(%ebp)
Lj4053:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-8(%ebp),%edx
	cmpl	(%edx),%eax
	jge	Lj4056
	jmp	Lj4057
Lj4056:
	fldz
	fstpt	-20(%ebp)
	jmp	Lj3933
Lj4057:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
Lj3933:
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
	jmp	Lj4071
	.balign 4,0x90
Lj4070:
	incb	-37(%ebp)
Lj4071:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	cmpb	-37(%ebp),%al
	jae	Lj4073
	jmp	Lj4072
Lj4073:
	movl	-8(%ebp),%edx
	movzbl	-37(%ebp),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$32,%al
	je	Lj4070
	jmp	Lj4072
Lj4072:
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
Lj4098:
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
	jg	Lj4115
	jmp	Lj4116
Lj4115:
	movl	-28(%ebp),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj4119
Lj4116:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj4120
	jmp	Lj4121
Lj4120:
	movl	-28(%ebp),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
	jmp	Lj4124
Lj4121:
	jmp	Lj4100
Lj4124:
Lj4119:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	ja	Lj4125
	jmp	Lj4126
Lj4125:
	movzbl	-37(%ebp),%eax
	decl	%eax
	movl	-12(%ebp),%edx
	addl	%eax,(%edx)
	jmp	Lj4062
Lj4126:
	jmp	Lj4098
Lj4100:
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	-36(%ebp),%edx
	movl	-28(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,8),%eax
	movl	%eax,-16(%ebp)
Lj4062:
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
	ja	Lj4133
	jmp	Lj4134
Lj4133:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-18(%ebp)
Lj4134:
	movb	$1,-17(%ebp)
	jmp	Lj4140
	.balign 4,0x90
Lj4139:
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
	jne	Lj4146
	jmp	Lj4147
Lj4146:
	jmp	Lj4141
Lj4147:
	incb	-17(%ebp)
Lj4140:
	movb	-17(%ebp),%al
	cmpb	-18(%ebp),%al
	jbe	Lj4139
	jmp	Lj4141
Lj4141:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%edx
	movzbl	-17(%ebp),%eax
	cmpl	(%edx),%eax
	jg	Lj4148
	jmp	Lj4149
Lj4148:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movzbl	-17(%ebp),%edx
	movl	%edx,(%eax)
Lj4149:
	movb	-17(%ebp),%al
	cmpb	-18(%ebp),%al
	jbe	Lj4152
	jmp	Lj4153
Lj4152:
	movzbl	-19(%ebp),%eax
	movzbl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj4156
Lj4153:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-16(%ebp)
Lj4156:
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
	jmp	Lj4174
	.balign 4,0x90
Lj4173:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-44(%ebp),%eax
	jg	Lj4176
	jmp	Lj4177
Lj4176:
	jmp	Lj4159
	jmp	Lj4178
Lj4177:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	cmpl	$9,%eax
	je	Lj4181
	cmpl	$32,%eax
	je	Lj4181
Lj4181:
	je	Lj4179
	jmp	Lj4180
Lj4179:
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj4182
Lj4180:
	jmp	Lj4175
Lj4182:
Lj4178:
Lj4174:
	jmp	Lj4173
Lj4175:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$43,%al
	jb	Lj4184
	subb	$43,%al
	je	Lj4185
	subb	$2,%al
	je	Lj4186
	jmp	Lj4184
Lj4185:
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj4183
Lj4186:
	movl	$-1,-40(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj4183
Lj4184:
Lj4183:
	movb	$0,-45(%ebp)
	movl	$0,-28(%ebp)
	jmp	Lj4194
	.balign 4,0x90
Lj4193:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$46,%al
	jb	Lj4197
	subb	$46,%al
	je	Lj4199
	subb	$2,%al
	jb	Lj4197
	subb	$9,%al
	jbe	Lj4198
	jmp	Lj4197
Lj4198:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	movl	%eax,-32(%ebp)
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	cmpl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_INT64EDGE+4,%eax
	jl	Lj4202
	jg	Lj4204
	cmpl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_INT64EDGE,%edx
	jbe	Lj4202
	jmp	Lj4204
	jmp	Lj4204
Lj4204:
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
	jg	Lj4202
	jl	Lj4203
	cmpl	-24(%ebp),%eax
	jae	Lj4202
	jmp	Lj4203
	jmp	Lj4203
Lj4202:
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
	jmp	Lj4217
Lj4203:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj4218
	jmp	Lj4219
Lj4218:
	jmp	Lj4159
	jmp	Lj4220
Lj4219:
	movb	-45(%ebp),%al
	testb	%al,%al
	je	Lj4224
	jmp	Lj4222
Lj4224:
	movl	-32(%ebp),%eax
	cmpl	$5,%eax
	jge	Lj4223
	jmp	Lj4222
Lj4223:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_MAXINT64+4,%edx
	jl	Lj4221
	jg	Lj4222
	cmpl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_MAXINT64,%eax
	jb	Lj4221
	jmp	Lj4222
	jmp	Lj4222
Lj4221:
	addl	$1,-24(%ebp)
	adcl	$0,-20(%ebp)
Lj4222:
	movb	$1,-45(%ebp)
Lj4220:
Lj4217:
	jmp	Lj4196
Lj4199:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj4227
	jmp	Lj4228
Lj4227:
	movl	$1,-36(%ebp)
	movl	$0,-28(%ebp)
	jmp	Lj4233
Lj4228:
	jmp	Lj4159
Lj4233:
	jmp	Lj4196
Lj4197:
	jmp	Lj4195
Lj4196:
	movl	-8(%ebp),%eax
	incl	(%eax)
Lj4194:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-44(%ebp),%eax
	jle	Lj4193
	jmp	Lj4195
Lj4195:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj4236
	jmp	Lj4235
Lj4236:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj4234
	jmp	Lj4235
Lj4234:
	jmp	Lj4159
Lj4235:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4237
	jmp	Lj4238
Lj4237:
	movl	-28(%ebp),%eax
	movl	%eax,-36(%ebp)
Lj4238:
	movl	-36(%ebp),%edx
	movl	$4,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-44(%ebp),%eax
	jle	Lj4243
	jmp	Lj4244
Lj4243:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	cmpl	$69,%eax
	je	Lj4247
	cmpl	$101,%eax
	je	Lj4247
Lj4247:
	je	Lj4245
	jmp	Lj4246
Lj4245:
	movl	-8(%ebp),%eax
	incl	(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-44(%ebp),%eax
	jg	Lj4248
	jmp	Lj4249
Lj4248:
	jmp	Lj4159
Lj4249:
	movl	$1,-28(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$43,%al
	jb	Lj4253
	subb	$43,%al
	je	Lj4254
	subb	$2,%al
	je	Lj4255
	jmp	Lj4253
Lj4254:
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj4252
Lj4255:
	movl	$-1,-28(%ebp)
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj4252
Lj4253:
Lj4252:
	movl	$0,-32(%ebp)
	jmp	Lj4261
	.balign 4,0x90
Lj4260:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj4265
Lj4265:
	jc	Lj4263
	jmp	Lj4264
Lj4263:
	movl	-32(%ebp),%eax
	cmpl	$4951,%eax
	jg	Lj4266
	jmp	Lj4267
Lj4266:
	jmp	Lj4159
Lj4267:
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
	jmp	Lj4270
Lj4264:
	jmp	Lj4159
Lj4270:
Lj4261:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-44(%ebp),%eax
	jle	Lj4260
	jmp	Lj4262
Lj4262:
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%eax
	imull	%eax,%edx
	movl	-36(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-36(%ebp)
	jmp	Lj4273
Lj4246:
	jmp	Lj4159
Lj4273:
Lj4244:
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4274
	jmp	Lj4275
Lj4274:
	movl	-36(%ebp),%ebx
	movl	$1,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj4277
	decl	-28(%ebp)
	.balign 4,0x90
Lj4278:
	incl	-28(%ebp)
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	cmpl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_INT64EDGE2+4,%eax
	jl	Lj4279
	jg	Lj4280
	cmpl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_INT64EDGE2,%edx
	jbe	Lj4279
	jmp	Lj4280
	jmp	Lj4280
Lj4279:
	pushl	-20(%ebp)
	pushl	-24(%ebp)
	pushl	$0
	pushl	$10
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	jmp	Lj4289
Lj4280:
	jmp	Lj4159
Lj4289:
	cmpl	-28(%ebp),%ebx
	jg	Lj4278
Lj4277:
	jmp	Lj4290
Lj4275:
	movl	-36(%ebp),%ebx
	negl	%ebx
	movl	$1,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj4292
	decl	-28(%ebp)
	.balign 4,0x90
Lj4293:
	incl	-28(%ebp)
	movl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_MAXINT64,%edx
	movl	TC_SYSTEM_fpc_val_currency_shortstr$SHORTSTRING$LONGINT$$CURRENCY_MAXINT64+4,%eax
	subl	$5,%edx
	sbbl	$0,%eax
	cmpl	-20(%ebp),%eax
	jg	Lj4294
	jl	Lj4295
	cmpl	-24(%ebp),%edx
	jae	Lj4294
	jmp	Lj4295
	jmp	Lj4295
Lj4294:
	addl	$5,-24(%ebp)
	adcl	$0,-20(%ebp)
Lj4295:
	pushl	$0
	pushl	$10
	pushl	-20(%ebp)
	pushl	-24(%ebp)
	call	fpc_div_int64
	movl	%eax,-24(%ebp)
	movl	%edx,-20(%ebp)
	cmpl	-28(%ebp),%ebx
	jg	Lj4293
Lj4292:
Lj4290:
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
Lj4159:
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
	jg	Lj4316
	jmp	Lj4317
Lj4316:
	movl	-12(%ebp),%eax
	movl	%eax,8(%ebp)
Lj4317:
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_shortstr_setlength
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4326
	jmp	Lj4327
Lj4326:
	movl	-8(%ebp),%eax
	movl	8(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	1(%edx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj4327:
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
	jg	Lj4340
	jmp	Lj4341
Lj4340:
	movl	-24(%ebp),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj4344
Lj4341:
	movl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj4344:
	movw	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj4354
	.balign 4,0x90
Lj4353:
	movl	-32(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-13(%ebp)
	movl	-36(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-14(%ebp)
	movb	-13(%ebp),%al
	cmpb	-14(%ebp),%al
	jne	Lj4360
	jmp	Lj4361
Lj4360:
	movzbl	-13(%ebp),%eax
	subl	$97,%eax
	cmpl	$26,%eax
	jb	Lj4364
Lj4364:
	jc	Lj4362
	jmp	Lj4363
Lj4362:
	subb	$32,-13(%ebp)
Lj4363:
	movzbl	-14(%ebp),%eax
	subl	$97,%eax
	cmpl	$26,%eax
	jb	Lj4367
Lj4367:
	jc	Lj4365
	jmp	Lj4366
Lj4365:
	subb	$32,-14(%ebp)
Lj4366:
	movb	-13(%ebp),%al
	cmpb	-14(%ebp),%al
	jne	Lj4368
	jmp	Lj4369
Lj4368:
	jmp	Lj4355
Lj4369:
Lj4361:
	incl	-32(%ebp)
	incl	-36(%ebp)
	incw	-16(%ebp)
Lj4354:
	movswl	-16(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj4353
	jmp	Lj4355
Lj4355:
	movswl	-16(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj4370
	jmp	Lj4371
Lj4370:
	movzbl	-13(%ebp),%edx
	movzbl	-14(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
	jmp	Lj4374
Lj4371:
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
Lj4374:
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
	jnz	Lj4379
	movl	%ebp,%edx
	movl	$200,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
	jmp	Lj4380
Lj4379:
	movl	12(%ebp),%edx
	movl	8(%ebp),%eax
	testl	%ecx,%ecx
	jnz	Lj4381
	cmpl	%ebx,%edx
	jae	Lj4382
	divl	%ebx
	movl	%ecx,%edx
	jmp	Lj4380
Lj4382:
	movl	%eax,%ecx
	movl	%edx,%eax
	xorl	%edx,%edx
	divl	%ebx
	xchgl	%ecx,%eax
	divl	%ebx
	movl	%ecx,%edx
	jmp	Lj4380
Lj4381:
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
Lj4380:
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
	jnz	Lj4385
	movl	%ebp,%edx
	movl	$200,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
	jmp	Lj4386
Lj4385:
	movl	12(%ebp),%edx
	movl	8(%ebp),%eax
	testl	%ecx,%ecx
	jnz	Lj4387
	cmpl	%ebx,%edx
	jae	Lj4388
	divl	%ebx
	movl	%edx,%eax
	movl	%ecx,%edx
	jmp	Lj4386
Lj4388:
	movl	%eax,%ecx
	movl	%edx,%eax
	xorl	%edx,%edx
	divl	%ebx
	movl	%ecx,%eax
	divl	%ebx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj4386
Lj4387:
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
Lj4386:
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
	jnz	Lj4391
	orl	%ecx,%edx
	movl	8(%ebp),%edx
	movl	16(%ebp),%eax
	jnz	Lj4392
	mull	%edx
	jmp	Lj4393
Lj4392:
	imull	20(%ebp),%edx
	imull	%eax,%ecx
	addl	%edx,%ecx
	mull	8(%ebp)
	addl	%ecx,%edx
Lj4393:
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	jmp	Lj4394
Lj4391:
	orl	%ecx,%ecx
	jz	Lj4395
	orl	%edx,%edx
	jnz	Lj4396
Lj4395:
	orl	%ecx,%edx
	movl	8(%ebp),%edi
	movl	16(%ebp),%esi
	jnz	Lj4397
	movl	%edi,%eax
	mull	%esi
	movl	%eax,%esi
	movl	%edx,%edi
	jmp	Lj4398
Lj4397:
	movl	20(%ebp),%eax
	mull	%edi
	movl	%eax,%edi
	jc	Lj4396
	movl	%esi,%eax
	mull	%ecx
	movl	%eax,%ecx
	jc	Lj4396
	addl	%edi,%ecx
	jc	Lj4396
	movl	8(%ebp),%eax
	mull	%esi
	movl	%eax,%esi
	movl	%edx,%edi
	addl	%ecx,%edi
	jc	Lj4396
Lj4398:
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	jmp	Lj4394
Lj4396:
	movb	$1,-21(%ebp)
Lj4394:
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	cmpb	$0,-21(%ebp)
	jne	Lj4403
	jmp	Lj4404
Lj4403:
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj4404:
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
Lj4415:
	incl	-12(%ebp)
	movl	$-2147483648,%eax
	movl	-12(%ebp),%ecx
	shrl	%cl,%eax
	movl	12(%ebp),%edx
	andl	%edx,%eax
	testl	%eax,%eax
	jne	Lj4416
	jmp	Lj4417
Lj4416:
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj4409
Lj4417:
	incl	-8(%ebp)
	cmpl	$31,-12(%ebp)
	jl	Lj4415
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.balign 4,0x90
Lj4422:
	incl	-12(%ebp)
	movl	$-2147483648,%eax
	movl	-12(%ebp),%ecx
	shrl	%cl,%eax
	movl	8(%ebp),%edx
	andl	%edx,%eax
	testl	%eax,%eax
	jne	Lj4423
	jmp	Lj4424
Lj4423:
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj4409
Lj4424:
	incl	-8(%ebp)
	cmpl	$31,-12(%ebp)
	jl	Lj4422
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj4409:
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
	jne	Lj4432
	cmpl	$0,%edx
	jne	Lj4432
	jmp	Lj4431
Lj4431:
	movl	%ebp,%edx
	movl	$200,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj4432:
	movb	$0,-9(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj4439
	jg	Lj4440
	cmpl	$0,%eax
	jb	Lj4439
	jmp	Lj4440
Lj4439:
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
	jmp	Lj4445
Lj4440:
	movl	8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj4445:
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj4448
	jg	Lj4449
	cmpl	$0,%eax
	jb	Lj4448
	jmp	Lj4449
Lj4448:
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
	jmp	Lj4454
Lj4449:
	movl	16(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj4454:
	cmpb	$0,-9(%ebp)
	jne	Lj4457
	jmp	Lj4458
Lj4457:
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
	jmp	Lj4465
Lj4458:
	pushl	-24(%ebp)
	pushl	-28(%ebp)
	pushl	-16(%ebp)
	pushl	-20(%ebp)
	call	fpc_div_qword
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
Lj4465:
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
	jne	Lj4475
	cmpl	$0,%eax
	jne	Lj4475
	jmp	Lj4474
Lj4474:
	movl	%ebp,%edx
	movl	$200,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj4475:
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj4480
	jg	Lj4481
	cmpl	$0,%eax
	jb	Lj4480
	jmp	Lj4481
Lj4480:
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-28(%ebp)
	movl	%edx,-24(%ebp)
	jmp	Lj4484
Lj4481:
	movl	16(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj4484:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj4487
	jg	Lj4488
	cmpl	$0,%eax
	jb	Lj4487
	jmp	Lj4488
Lj4487:
	movb	$1,-9(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	jmp	Lj4493
Lj4488:
	movb	$0,-9(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj4493:
	pushl	-24(%ebp)
	pushl	-28(%ebp)
	pushl	-32(%ebp)
	pushl	-36(%ebp)
	call	fpc_mod_qword
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj4504
	jmp	Lj4505
Lj4504:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	jmp	Lj4508
Lj4505:
	movl	-20(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj4508:
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
	jl	Lj4515
	jg	Lj4516
	cmpl	$0,%edx
	jb	Lj4515
	jmp	Lj4516
Lj4515:
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
	jmp	Lj4521
Lj4516:
	movl	16(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	20(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj4521:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj4524
	jg	Lj4525
	cmpl	$0,%eax
	jb	Lj4524
	jmp	Lj4525
Lj4524:
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
	jmp	Lj4530
Lj4525:
	movl	8(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj4530:
	pushl	-20(%ebp)
	pushl	-24(%ebp)
	pushl	-28(%ebp)
	pushl	-32(%ebp)
	movl	$0,%eax
	call	fpc_mul_qword
	movl	%eax,-40(%ebp)
	movl	%edx,-36(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj4545
	jmp	Lj4542
Lj4545:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	$0,%edx
	jne	Lj4546
	cmpl	$0,%eax
	jne	Lj4546
	jmp	Lj4547
Lj4546:
	movl	$-1,%eax
	jmp	Lj4548
Lj4547:
	movl	$0,%eax
Lj4548:
	testl	%eax,%eax
	jne	Lj4544
	jmp	Lj4542
Lj4544:
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jne	Lj4549
	cmpl	$0,%edx
	jne	Lj4549
	jmp	Lj4550
Lj4549:
	movl	$-1,%eax
	jmp	Lj4551
Lj4550:
	movl	$0,%eax
Lj4551:
	testl	%eax,%eax
	jne	Lj4543
	jmp	Lj4542
Lj4543:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	cmpl	-36(%ebp),%edx
	ja	Lj4552
	jb	Lj4555
	cmpl	-40(%ebp),%eax
	ja	Lj4552
	jmp	Lj4555
	jmp	Lj4555
Lj4555:
	movl	-32(%ebp),%eax
	movl	-28(%ebp),%edx
	cmpl	-36(%ebp),%edx
	ja	Lj4552
	jb	Lj4554
	cmpl	-40(%ebp),%eax
	ja	Lj4552
	jmp	Lj4554
	jmp	Lj4554
Lj4554:
	movl	-40(%ebp),%edx
	movl	-36(%ebp),%eax
	xorl	%edx,%edx
	shrl	$31,%eax
	cmpl	$0,%edx
	jne	Lj4556
	cmpl	$0,%eax
	jne	Lj4556
	jmp	Lj4553
Lj4556:
	movl	-40(%ebp),%eax
	movl	-36(%ebp),%edx
	cmpl	$-2147483648,%edx
	jne	Lj4552
	cmpl	$0,%eax
	jne	Lj4552
	jmp	Lj4557
Lj4557:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj4552
	jmp	Lj4553
Lj4552:
	movl	$-1,%eax
	jmp	Lj4558
Lj4553:
	movl	$0,%eax
Lj4558:
	testl	%eax,%eax
	jne	Lj4541
	jmp	Lj4542
Lj4541:
	movl	%ebp,%edx
	movl	$215,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj4542:
	cmpb	$0,-13(%ebp)
	jne	Lj4563
	jmp	Lj4564
Lj4563:
	movl	-40(%ebp),%eax
	movl	-36(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj4567
Lj4564:
	movl	-40(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj4567:
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
	jbe	Lj4576
	jmp	Lj4575
Lj4576:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	movw	%ax,-6(%ebp)
	jmp	Lj4574
Lj4575:
Lj4574:
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
	jne	Lj4609
	jmp	Lj4610
Lj4609:
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
Lj4610:
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
	je	Lj4625
	jmp	Lj4626
Lj4625:
	jmp	Lj4623
Lj4626:
	movl	-4(%ebp),%eax
	subl	$12,%eax
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jl	Lj4627
	jmp	Lj4628
Lj4627:
	jmp	Lj4623
Lj4628:
	movl	-4(%ebp),%eax
	subl	$12,%eax
	leal	4(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj4631
	jmp	Lj4632
Lj4631:
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj4633
Lj4632:
	movl	-8(%ebp),%eax
	call	SYSTEM_CPUINCLOCKED$LONGINT
Lj4633:
Lj4623:
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
	je	Lj4638
	jmp	Lj4639
Lj4638:
	jmp	Lj4636
Lj4639:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4640
	jmp	Lj4641
Lj4640:
	movl	-8(%ebp),%eax
	subl	$12,%eax
	movl	4(%eax),%eax
	cmpl	$0,%eax
	jg	Lj4642
	jmp	Lj4643
Lj4642:
	movl	-8(%ebp),%eax
	subl	$12,%eax
	leal	4(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj4646
	jmp	Lj4647
Lj4646:
	movl	-12(%ebp),%eax
	incl	(%eax)
	jmp	Lj4648
Lj4647:
	movl	-12(%ebp),%eax
	call	SYSTEM_CPUINCLOCKED$LONGINT
Lj4648:
Lj4643:
Lj4641:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
Lj4636:
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
	jne	Lj4657
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
	je	Lj4676
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj4676:
	pushl	%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
Lj4657:
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
	je	Lj4658
	call	FPC_RERAISE
Lj4658:
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
	jbe	Lj4702
	jmp	Lj4701
Lj4702:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	jmp	Lj4700
Lj4701:
Lj4700:
	movw	%ax,-28(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4705
	jmp	Lj4706
Lj4705:
	movw	-28(%ebp),%ax
	movw	%ax,-24(%ebp)
	jmp	Lj4709
Lj4706:
	movl	-8(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-24(%ebp)
Lj4709:
	movw	-24(%ebp),%ax
	movw	-24(%ebp),%dx
	subw	$1,%dx
	jbe	Lj4721
	jmp	Lj4720
Lj4721:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	jmp	Lj4719
Lj4720:
Lj4719:
	movw	%ax,-24(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4724
	jmp	Lj4725
Lj4724:
	movw	-28(%ebp),%ax
	movw	%ax,-26(%ebp)
	jmp	Lj4728
Lj4725:
	movl	-12(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-26(%ebp)
Lj4728:
	movw	-26(%ebp),%ax
	movw	-26(%ebp),%dx
	subw	$1,%dx
	jbe	Lj4740
	jmp	Lj4739
Lj4740:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	jmp	Lj4738
Lj4739:
Lj4738:
	movw	%ax,-26(%ebp)
	movw	-24(%ebp),%ax
	cmpw	-28(%ebp),%ax
	jne	Lj4743
	jmp	Lj4745
Lj4745:
	movw	-26(%ebp),%ax
	cmpw	-28(%ebp),%ax
	jne	Lj4743
	jmp	Lj4744
Lj4743:
	movzwl	-28(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ANSISTR_CONCAT_COMPLEX$ANSISTRING$ANSISTRING$ANSISTRING$WORD
	jmp	Lj4689
Lj4744:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4754
	jmp	Lj4755
Lj4754:
	movl	-12(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-12(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj4689
Lj4755:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4758
	jmp	Lj4759
Lj4758:
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj4689
Lj4759:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4764
	movl	-4(%eax),%eax
Lj4764:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4767
	movl	-4(%eax),%eax
Lj4767:
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj4768
	jmp	Lj4769
Lj4768:
	movl	-8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	seteb	-21(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	cmpb	$0,-21(%ebp)
	jne	Lj4776
	jmp	Lj4777
Lj4776:
	pushl	-16(%ebp)
	pushl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj4784
	movl	$FPC_EMPTYCHAR,%eax
Lj4784:
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
	jmp	Lj4789
Lj4777:
	pushl	-16(%ebp)
	movl	-20(%ebp),%eax
	incl	%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4796
	movl	$FPC_EMPTYCHAR,%eax
Lj4796:
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
Lj4789:
	jmp	Lj4801
Lj4769:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj4802
	jmp	Lj4803
Lj4802:
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
	jne	Lj4814
	movl	$FPC_EMPTYCHAR,%eax
Lj4814:
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
	pushl	$0
	pushl	-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4825
	movl	$FPC_EMPTYCHAR,%eax
Lj4825:
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
	jmp	Lj4830
Lj4803:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	pushl	$0
	pushl	-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4841
	movl	$FPC_EMPTYCHAR,%eax
Lj4841:
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
	pushl	-16(%ebp)
	movl	-20(%ebp),%eax
	incl	%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4852
	movl	$FPC_EMPTYCHAR,%eax
Lj4852:
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
Lj4830:
Lj4801:
	movw	-28(%ebp),%dx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
Lj4689:
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
	jne	Lj4865
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj4868
	jmp	Lj4869
Lj4868:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj4865
Lj4869:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-54(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj4879
	.balign 4,0x90
Lj4878:
	incl	-16(%ebp)
Lj4879:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jle	Lj4881
	jmp	Lj4880
Lj4881:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj4878
	jmp	Lj4880
Lj4880:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj4882
	jmp	Lj4883
Lj4882:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj4865
Lj4883:
	movw	-54(%ebp),%dx
	movw	-54(%ebp),%ax
	subw	$1,%ax
	jbe	Lj4893
	jmp	Lj4892
Lj4893:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	jmp	Lj4891
Lj4892:
Lj4891:
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
	jbe	Lj4909
	jmp	Lj4908
Lj4909:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	jmp	Lj4907
Lj4908:
Lj4907:
	movw	%ax,-56(%ebp)
	movl	-12(%ebp),%ebx
	movl	-16(%ebp),%eax
	incl	%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj4913
	decl	-24(%ebp)
	.balign 4,0x90
Lj4914:
	incl	-24(%ebp)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	jne	Lj4917
	jmp	Lj4916
Lj4917:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-102(%ebp)
	movw	-102(%ebp),%ax
	movw	-102(%ebp),%dx
	subw	$1,%dx
	jbe	Lj4927
	jmp	Lj4926
Lj4927:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	jmp	Lj4925
Lj4926:
Lj4925:
	cmpw	-56(%ebp),%ax
	jne	Lj4915
	jmp	Lj4916
Lj4915:
	movb	$0,-57(%ebp)
	jmp	Lj4913
Lj4916:
	cmpl	-24(%ebp),%ebx
	jg	Lj4914
Lj4913:
	movb	-57(%ebp),%al
	testb	%al,%al
	je	Lj4932
	jmp	Lj4933
Lj4932:
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	movl	-12(%ebp),%ebx
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj4937
	decl	-24(%ebp)
	.balign 4,0x90
Lj4938:
	incl	-24(%ebp)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	jne	Lj4939
	jmp	Lj4940
Lj4939:
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
Lj4940:
	cmpl	-24(%ebp),%ebx
	jg	Lj4938
Lj4937:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj4955
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj4955:
	pushl	%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-4(%ebp),%edx
	movl	-52(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
	jmp	Lj4865
Lj4933:
	movl	$0,-48(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj4966
	jmp	Lj4967
Lj4966:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%edx,%eax,4),%eax
	cmpl	(%ecx),%eax
	je	Lj4968
	jmp	Lj4969
Lj4968:
	incl	-16(%ebp)
Lj4969:
	movl	-12(%ebp),%ebx
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj4971
	decl	-24(%ebp)
	.balign 4,0x90
Lj4972:
	incl	-24(%ebp)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	(%eax,%edx,4),%eax
	cmpl	(%ecx),%eax
	je	Lj4973
	jmp	Lj4974
Lj4973:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-48(%ebp)
	movl	-48(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj4971
Lj4974:
	cmpl	-24(%ebp),%ebx
	jg	Lj4972
Lj4971:
Lj4967:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	je	Lj4981
	jmp	Lj4982
Lj4981:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
Lj4982:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj4987
	movl	-4(%eax),%eax
Lj4987:
	movl	%eax,-44(%ebp)
	movl	$0,-40(%ebp)
	movl	-12(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%ecx
	jl	Lj4991
	decl	-24(%ebp)
	.balign 4,0x90
Lj4992:
	incl	-24(%ebp)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj4993
	movl	-4(%eax),%eax
Lj4993:
	addl	%eax,-40(%ebp)
	cmpl	-24(%ebp),%ecx
	jg	Lj4992
Lj4991:
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
	jl	Lj5001
	decl	-24(%ebp)
	.balign 4,0x90
Lj5002:
	incl	-24(%ebp)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-28(%ebp)
	cmpl	$0,-28(%ebp)
	jne	Lj5005
	jmp	Lj5006
Lj5005:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj5009
	movl	-4(%eax),%eax
Lj5009:
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%ecx
	incl	%ecx
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-36(%ebp),%eax
	addl	%eax,-32(%ebp)
Lj5006:
	cmpl	-24(%ebp),%ebx
	jg	Lj5002
Lj5001:
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
Lj4865:
	call	FPC_POPADDRSTACK
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-52(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj4866
	call	FPC_RERAISE
Lj4866:
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
	je	Lj5038
	jmp	Lj5039
Lj5038:
	movl	-4(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj5042
Lj5039:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5045
	movl	-4(%eax),%eax
Lj5045:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj5046
	jmp	Lj5047
Lj5046:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj5047:
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	leal	1(%eax),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	movb	-16(%ebp),%dl
	movb	%dl,(%eax)
Lj5042:
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
	jg	Lj5068
	jmp	Lj5069
Lj5068:
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
Lj5069:
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
	jne	Lj5092
	movl	$FPC_EMPTYCHAR,%eax
Lj5092:
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
	jne	Lj5103
	jmp	Lj5101
Lj5103:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj5101
	jmp	Lj5102
Lj5101:
	movl	$0,-12(%ebp)
	jmp	Lj5106
Lj5102:
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$-1,%edx
	call	SYSTEM_INDEXCHAR$formal$LONGINT$CHAR$$LONGINT
	movl	%eax,-12(%ebp)
Lj5106:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5119
	jmp	Lj5120
Lj5119:
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
Lj5120:
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
	jne	Lj5137
	jmp	Lj5138
Lj5137:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj5139
	jmp	Lj5140
Lj5139:
	movl	$0,-16(%ebp)
	jmp	Lj5143
Lj5140:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_INDEXCHAR$formal$LONGINT$CHAR$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj5152
	jmp	Lj5153
Lj5152:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj5153:
Lj5143:
	jmp	Lj5156
Lj5138:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj5156:
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5163
	jmp	Lj5164
Lj5163:
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
Lj5164:
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
	je	Lj5185
	movl	-4(%eax),%eax
Lj5185:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jl	Lj5186
	jmp	Lj5187
Lj5186:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj5187:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5190
	jmp	Lj5191
Lj5190:
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj5191:
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
	jne	Lj5206
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj5209
	jmp	Lj5210
Lj5209:
	movl	$0,-12(%ebp)
	jmp	Lj5206
Lj5210:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5213
	jmp	Lj5214
Lj5213:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5217
	movl	-4(%eax),%eax
Lj5217:
	negl	%eax
	movl	%eax,-12(%ebp)
	jmp	Lj5206
Lj5214:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5218
	jmp	Lj5219
Lj5218:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5222
	movl	-4(%eax),%eax
Lj5222:
	movl	%eax,-12(%ebp)
	jmp	Lj5206
Lj5219:
	movl	-4(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-74(%ebp)
	movw	-74(%ebp),%dx
	movw	-74(%ebp),%ax
	subw	$1,%ax
	jbe	Lj5234
	jmp	Lj5233
Lj5234:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	jmp	Lj5232
Lj5233:
Lj5232:
	movw	%dx,-22(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-74(%ebp)
	movw	-74(%ebp),%ax
	movw	-74(%ebp),%dx
	subw	$1,%dx
	jbe	Lj5248
	jmp	Lj5247
Lj5248:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	jmp	Lj5246
Lj5247:
Lj5246:
	movw	%ax,-24(%ebp)
	movw	-22(%ebp),%ax
	cmpw	-24(%ebp),%ax
	je	Lj5251
	jmp	Lj5252
Lj5251:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5255
	movl	-4(%eax),%eax
Lj5255:
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5258
	movl	-4(%eax),%eax
Lj5258:
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj5259
	jmp	Lj5260
Lj5259:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj5260:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5263
	jmp	Lj5264
Lj5263:
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj5273
	jmp	Lj5274
Lj5273:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj5277
	movl	-4(%edx),%edx
Lj5277:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5278
	movl	-4(%eax),%eax
Lj5278:
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
Lj5274:
	jmp	Lj5279
Lj5264:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5282
	movl	-4(%eax),%eax
Lj5282:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj5283
	movl	-4(%edx),%edx
Lj5283:
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
Lj5279:
	jmp	Lj5284
Lj5252:
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
Lj5284:
Lj5206:
	call	FPC_POPADDRSTACK
	leal	-28(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-28(%ebp)
	leal	-32(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-32(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5207
	call	FPC_RERAISE
Lj5207:
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
	jne	Lj5321
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj5324
	jmp	Lj5325
Lj5324:
	movl	$0,-12(%ebp)
	jmp	Lj5321
Lj5325:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5328
	jmp	Lj5329
Lj5328:
	movl	$-1,-12(%ebp)
	jmp	Lj5321
Lj5329:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5332
	jmp	Lj5333
Lj5332:
	movl	$1,-12(%ebp)
	jmp	Lj5321
Lj5333:
	movl	-4(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-74(%ebp)
	movw	-74(%ebp),%ax
	movw	-74(%ebp),%dx
	subw	$1,%dx
	jbe	Lj5347
	jmp	Lj5346
Lj5347:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	jmp	Lj5345
Lj5346:
Lj5345:
	movw	%ax,-22(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-74(%ebp)
	movw	-74(%ebp),%dx
	movw	-74(%ebp),%ax
	subw	$1,%ax
	jbe	Lj5361
	jmp	Lj5360
Lj5361:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	jmp	Lj5359
Lj5360:
Lj5359:
	movw	%dx,-24(%ebp)
	movw	-22(%ebp),%ax
	cmpw	-24(%ebp),%ax
	je	Lj5364
	jmp	Lj5365
Lj5364:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5368
	movl	-4(%eax),%eax
Lj5368:
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5371
	movl	-4(%eax),%eax
Lj5371:
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj5374
	jmp	Lj5375
Lj5374:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5376
	jmp	Lj5377
Lj5376:
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
Lj5377:
Lj5375:
	jmp	Lj5386
Lj5365:
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
	je	Lj5405
	movl	-4(%eax),%eax
Lj5405:
	movl	%eax,-16(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj5408
	movl	-4(%eax),%eax
Lj5408:
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj5411
	jmp	Lj5412
Lj5411:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5413
	jmp	Lj5414
Lj5413:
	movl	-16(%ebp),%ecx
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
Lj5414:
Lj5412:
Lj5386:
Lj5321:
	call	FPC_POPADDRSTACK
	leal	-28(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-28(%ebp)
	leal	-32(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-32(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5322
	call	FPC_RERAISE
Lj5322:
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
	je	Lj5437
	jmp	Lj5440
Lj5440:
	movl	-4(%ebp),%eax
	subl	$12,%eax
	movl	8(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj5437
	jmp	Lj5439
Lj5439:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj5437
	jmp	Lj5438
Lj5437:
	call	SYSTEM_GET_PC_ADDR$$POINTER
	movl	%eax,%edx
	movl	%ebp,%ecx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORADDRFRAMEIND$LONGINT$POINTER$POINTER
Lj5438:
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
	jg	Lj5449
	jmp	Lj5450
Lj5449:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj5451
	jmp	Lj5452
Lj5451:
	movl	-8(%ebp),%eax
	call	SYSTEM_NEWANSISTRING$LONGINT$$POINTER
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movw	%dx,(%eax)
	jmp	Lj5459
Lj5452:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movl	4(%eax),%eax
	cmpl	$1,%eax
	je	Lj5460
	jmp	Lj5461
Lj5460:
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
	jg	Lj5470
	jmp	Lj5472
Lj5472:
	movl	-16(%ebp),%eax
	cmpl	$32,%eax
	jg	Lj5473
	jmp	Lj5471
Lj5473:
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	cmpl	-20(%ebp),%edx
	jge	Lj5470
	jmp	Lj5471
Lj5470:
	movl	-20(%ebp),%edx
	leal	-12(%ebp),%eax
	call	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
	movl	-12(%ebp),%edx
	addl	$12,%edx
	movl	-4(%ebp),%eax
	movl	%edx,(%eax)
Lj5471:
	jmp	Lj5480
Lj5461:
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
	je	Lj5489
	movl	-4(%eax),%eax
Lj5489:
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jl	Lj5490
	jmp	Lj5491
Lj5490:
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj5494
Lj5491:
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj5494:
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
Lj5480:
Lj5459:
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
	jmp	Lj5511
Lj5450:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
Lj5511:
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
	jl	Lj5542
	jmp	Lj5543
Lj5542:
	movl	$0,-8(%ebp)
Lj5543:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5549
	movl	-4(%eax),%eax
Lj5549:
	cmpl	-12(%ebp),%eax
	jl	Lj5546
	jmp	Lj5548
Lj5548:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5550
	movl	-4(%eax),%eax
Lj5550:
	cmpl	%eax,%edx
	jg	Lj5546
	jmp	Lj5547
Lj5546:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj5553
	movl	-4(%eax),%eax
Lj5553:
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
Lj5547:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj5554
	jmp	Lj5555
Lj5554:
	movl	-12(%ebp),%eax
	call	SYSTEM_NEWANSISTRING$LONGINT$$POINTER
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5560
	jmp	Lj5561
Lj5560:
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
Lj5561:
Lj5555:
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
	jg	Lj5582
	jmp	Lj5583
Lj5582:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj5586
	movl	-4(%edx),%edx
Lj5586:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj5592
	.balign 4,0x90
Lj5591:
	incl	-16(%ebp)
	movl	-24(%ebp),%eax
	movl	-4(%ebp),%edx
	movb	(%eax),%al
	cmpb	1(%edx),%al
	je	Lj5596
	jmp	Lj5595
Lj5596:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj5594
	jmp	Lj5595
Lj5594:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj5578
Lj5595:
	incl	-24(%ebp)
Lj5592:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj5591
	jmp	Lj5593
Lj5593:
Lj5583:
Lj5578:
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
	je	Lj5611
	movl	-4(%eax),%eax
Lj5611:
	cmpl	$0,%eax
	jg	Lj5609
	jmp	Lj5610
Lj5609:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj5614
	movl	-4(%eax),%eax
Lj5614:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj5615
	movl	-4(%edx),%edx
Lj5615:
	subl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj5621
	.balign 4,0x90
Lj5620:
	incl	-16(%ebp)
	movl	-24(%ebp),%eax
	movl	-4(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	je	Lj5625
	jmp	Lj5624
Lj5625:
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj5628
	movl	-4(%ecx),%ecx
Lj5628:
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj5623
	jmp	Lj5624
Lj5623:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj5605
Lj5624:
	incl	-24(%ebp)
Lj5621:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj5620
	jmp	Lj5622
Lj5622:
Lj5610:
Lj5605:
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
	je	Lj5642
	movl	-4(%eax),%eax
Lj5642:
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj5640
	decl	-16(%ebp)
	.balign 4,0x90
Lj5641:
	incl	-16(%ebp)
	movl	-20(%ebp),%edx
	movb	(%edx),%dl
	cmpb	-4(%ebp),%dl
	je	Lj5643
	jmp	Lj5644
Lj5643:
	movl	-16(%ebp),%edx
	movl	%edx,-12(%ebp)
	jmp	Lj5635
Lj5644:
	incl	-20(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj5641
Lj5640:
	movl	$0,-12(%ebp)
Lj5635:
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
	je	Lj5655
	movl	-4(%eax),%eax
Lj5655:
	cmpl	$255,%eax
	jg	Lj5653
	jmp	Lj5654
Lj5653:
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj5658
Lj5654:
	movl	-4(%ebp),%ecx
	leal	-276(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	-8(%ebp),%edx
	leal	-276(%ebp),%eax
	call	fpc_val_real_shortstr
	fstpt	-20(%ebp)
Lj5658:
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
	je	Lj5675
	movl	-4(%eax),%eax
Lj5675:
	cmpl	$255,%eax
	jg	Lj5673
	jmp	Lj5674
Lj5673:
	fldz
	fistpq	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj5680
Lj5674:
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
Lj5680:
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
	je	Lj5699
	movl	-4(%eax),%eax
Lj5699:
	cmpl	$255,%eax
	jg	Lj5697
	jmp	Lj5698
Lj5697:
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj5702
Lj5698:
	movl	-4(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	-8(%ebp),%edx
	leal	-268(%ebp),%eax
	call	fpc_val_uint_shortstr
	movl	%eax,-12(%ebp)
Lj5702:
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
	je	Lj5721
	movl	-4(%eax),%eax
Lj5721:
	cmpl	$255,%eax
	jg	Lj5719
	jmp	Lj5720
Lj5719:
	movl	-12(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj5724
Lj5720:
	movl	-8(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	-12(%ebp),%ecx
	leal	-272(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_VAL_SINT_SHORTSTR
	movl	%eax,-16(%ebp)
Lj5724:
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
	je	Lj5745
	movl	-4(%eax),%eax
Lj5745:
	cmpl	$255,%eax
	jg	Lj5743
	jmp	Lj5744
Lj5743:
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj5748
Lj5744:
	movl	-4(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	-8(%ebp),%edx
	leal	-272(%ebp),%eax
	call	fpc_val_qword_shortstr
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
Lj5748:
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
	je	Lj5767
	movl	-4(%eax),%eax
Lj5767:
	cmpl	$255,%eax
	jg	Lj5765
	jmp	Lj5766
Lj5765:
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj5770
Lj5766:
	movl	-4(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	movl	-8(%ebp),%edx
	leal	-272(%ebp),%eax
	call	fpc_val_int64_shortstr
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
Lj5770:
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
	jne	Lj5785
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
Lj5785:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5786
	call	FPC_RERAISE
Lj5786:
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
	jne	Lj5808
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
Lj5808:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5809
	call	FPC_RERAISE
Lj5809:
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
	jne	Lj5831
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
Lj5831:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5832
	call	FPC_RERAISE
Lj5832:
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
	jne	Lj5866
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
Lj5866:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5867
	call	FPC_RERAISE
Lj5867:
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
	jne	Lj5887
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
Lj5887:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5888
	call	FPC_RERAISE
Lj5888:
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
	jne	Lj5906
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
Lj5906:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5907
	call	FPC_RERAISE
Lj5907:
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
	jne	Lj5925
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
Lj5925:
	call	FPC_POPADDRSTACK
	leal	-308(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-308(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5926
	call	FPC_RERAISE
Lj5926:
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
	jne	Lj5944
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
Lj5944:
	call	FPC_POPADDRSTACK
	leal	-308(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-308(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5945
	call	FPC_RERAISE
Lj5945:
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
	je	Lj5965
	movl	-4(%eax),%eax
Lj5965:
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj5966
	jmp	Lj5969
Lj5969:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj5966
	jmp	Lj5968
Lj5968:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj5966
	jmp	Lj5967
Lj5966:
	jmp	Lj5961
Lj5967:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_UNIQUE
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	cmpl	-12(%ebp),%eax
	jl	Lj5972
	jmp	Lj5973
Lj5972:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	incl	%eax
	movl	%eax,-12(%ebp)
Lj5973:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	cmpl	-12(%ebp),%eax
	jge	Lj5976
	jmp	Lj5977
Lj5976:
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
	jne	Lj5986
	movl	$FPC_EMPTYCHAR,%eax
Lj5986:
	movl	-4(%ebp),%ecx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
Lj5977:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
Lj5961:
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
	jne	Lj5995
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6000
	movl	-4(%eax),%eax
Lj6000:
	testl	%eax,%eax
	je	Lj5998
	jmp	Lj5999
Lj5998:
	jmp	Lj5995
Lj5999:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj6001
	jmp	Lj6002
Lj6001:
	movl	$1,-12(%ebp)
Lj6002:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj6007
	movl	-4(%eax),%eax
Lj6007:
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj6008
	jmp	Lj6009
Lj6008:
	movl	-20(%ebp),%eax
	incl	%eax
	movl	%eax,-12(%ebp)
Lj6009:
	decl	-12(%ebp)
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj6014
	movl	-4(%edx),%edx
Lj6014:
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	leal	-16(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj6019
	movl	-4(%eax),%eax
Lj6019:
	testl	%eax,%eax
	jne	Lj6017
	jmp	Lj6018
Lj6017:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-66(%ebp)
	movw	-66(%ebp),%ax
	movw	-66(%ebp),%dx
	subw	$1,%dx
	jbe	Lj6031
	jmp	Lj6030
Lj6031:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	jmp	Lj6029
Lj6030:
Lj6029:
	movw	%ax,-22(%ebp)
	jmp	Lj6034
Lj6018:
	movl	-4(%ebp),%eax
	call	SYSTEM_STRINGCODEPAGE$ANSISTRING$$WORD
	movw	%ax,-66(%ebp)
	movw	-66(%ebp),%dx
	movw	-66(%ebp),%ax
	subw	$1,%ax
	jbe	Lj6046
	jmp	Lj6045
Lj6046:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	jmp	Lj6044
Lj6045:
Lj6044:
	movw	%dx,-22(%ebp)
Lj6034:
	movw	-22(%ebp),%dx
	leal	-16(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_SETCODEPAGE$ANSISTRING$WORD$BOOLEAN
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6055
	jmp	Lj6056
Lj6055:
	pushl	$0
	pushl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj6063
	movl	$FPC_EMPTYCHAR,%eax
Lj6063:
	leal	-16(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
Lj6056:
	pushl	-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6072
	movl	-4(%eax),%eax
Lj6072:
	pushl	%eax
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj6075
	movl	$FPC_EMPTYCHAR,%eax
Lj6075:
	leal	-16(%ebp),%ecx
	movl	$0,%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	subl	%edx,%eax
	cmpl	$0,%eax
	jg	Lj6080
	jmp	Lj6081
Lj6080:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj6084
	movl	-4(%edx),%edx
Lj6084:
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
	jne	Lj6089
	movl	$FPC_EMPTYCHAR,%eax
Lj6089:
	leal	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	call	SYSTEM_FPC_PCHAR_ANSISTR_INTERN_CHARMOVE$PCHAR$LONGINT$ANSISTRING$LONGINT$LONGINT
Lj6081:
	movl	-16(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-16(%ebp),%eax
	movl	%eax,(%ebx)
Lj5995:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5996
	call	FPC_RERAISE
Lj5996:
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
	je	Lj6110
	movl	-4(%edx),%edx
Lj6110:
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
	jne	Lj6121
	jmp	Lj6122
Lj6121:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj6122:
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
	jne	Lj6133
	jmp	Lj6132
Lj6133:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6131
	jmp	Lj6132
Lj6131:
	pushl	-12(%ebp)
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER,%ebx
	call	*%ebx
	jmp	Lj6142
Lj6132:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
Lj6142:
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
	je	Lj6151
	movl	-4(%edx),%edx
Lj6151:
	movl	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	je	Lj6157
	movl	-4(%ebx),%ebx
Lj6157:
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj6155
	decl	-12(%ebp)
	.balign 4,0x90
Lj6156:
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
	jg	Lj6156
Lj6155:
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
	je	Lj6168
	movl	-4(%edx),%edx
Lj6168:
	movl	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	je	Lj6174
	movl	-4(%ebx),%ebx
Lj6174:
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj6172
	decl	-12(%ebp)
	.balign 4,0x90
Lj6173:
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
	jg	Lj6173
Lj6172:
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
	jne	Lj6183
	jmp	Lj6184
Lj6183:
	movl	-4(%ebp),%eax
	subl	$12,%eax
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj6187
Lj6184:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	movw	%ax,-6(%ebp)
Lj6187:
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
	jne	Lj6192
	jmp	Lj6193
Lj6192:
	movl	-4(%ebp),%eax
	subl	$12,%eax
	movw	2(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj6196
Lj6193:
	movw	$1,-6(%ebp)
Lj6196:
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
	jne	Lj6201
	jmp	Lj6202
Lj6201:
	movl	-4(%ebp),%eax
	subl	$12,%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj6205
Lj6202:
	movl	$0,-8(%ebp)
Lj6205:
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
	jne	Lj6210
	jmp	Lj6211
Lj6210:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_UNIQUE
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	subl	$12,%edx
	movw	-8(%ebp),%ax
	movw	%ax,(%edx)
	jmp	Lj6216
Lj6211:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_UNIQUE
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movw	-8(%ebp),%dx
	movw	%dx,(%eax)
Lj6216:
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
	je	Lj6223
	jmp	Lj6224
Lj6223:
	jmp	Lj6221
Lj6224:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movw	(%eax),%ax
	movw	%ax,-14(%ebp)
	movw	-14(%ebp),%ax
	cmpw	-8(%ebp),%ax
	je	Lj6227
	jmp	Lj6228
Lj6227:
	jmp	Lj6221
Lj6228:
	movw	-14(%ebp),%ax
	movw	-14(%ebp),%dx
	subw	$1,%dx
	jbe	Lj6236
	jmp	Lj6235
Lj6236:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%ax
	jmp	Lj6234
Lj6235:
Lj6234:
	movw	%ax,-18(%ebp)
	movw	-8(%ebp),%dx
	movw	-8(%ebp),%ax
	subw	$1,%ax
	jbe	Lj6246
	jmp	Lj6245
Lj6246:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	jmp	Lj6244
Lj6245:
Lj6244:
	movw	%dx,-16(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj6251
	jmp	Lj6250
Lj6251:
	movw	-18(%ebp),%ax
	cmpw	-16(%ebp),%ax
	jne	Lj6249
	jmp	Lj6250
Lj6249:
	movb	$1,-12(%ebp)
	jmp	Lj6252
Lj6250:
	movb	$0,-12(%ebp)
Lj6252:
	movb	-12(%ebp),%al
	testb	%al,%al
	je	Lj6255
	jmp	Lj6254
Lj6255:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movl	4(%eax),%eax
	cmpl	$1,%eax
	je	Lj6253
	jmp	Lj6254
Lj6253:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	subl	$12,%edx
	movw	-8(%ebp),%ax
	movw	%ax,(%edx)
	jmp	Lj6258
Lj6254:
	movb	-12(%ebp),%cl
	movw	-8(%ebp),%dx
	movl	-4(%ebp),%eax
	call	SYSTEM_INTERNALSETCODEPAGE$ANSISTRING$WORD$BOOLEAN
Lj6258:
Lj6221:
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
	je	Lj6281
	movl	-4(%edx),%edx
Lj6281:
	incl	%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj6286
	movl	-4(%edx),%edx
Lj6286:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	decl	%edx
	movb	-8(%ebp),%al
	movb	%al,(%edx)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj6289
	movl	-4(%edx),%edx
Lj6289:
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
	je	Lj6292
	jmp	Lj6293
Lj6292:
	jmp	Lj6290
Lj6293:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj6296
	movl	-4(%eax),%eax
Lj6296:
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
	je	Lj6309
	movl	-4(%edx),%edx
Lj6309:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	movb	$0,(%edx)
Lj6290:
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
	je	Lj6312
	jmp	Lj6313
Lj6312:
	jmp	Lj6310
Lj6313:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	seteb	-17(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj6318
	movl	-4(%eax),%eax
Lj6318:
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj6321
	movl	-4(%eax),%eax
Lj6321:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj6326
	jmp	Lj6327
Lj6326:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-16(%ebp),%ecx
	incl	%ecx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj6334
Lj6327:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-16(%ebp),%ecx
	incl	%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj6334:
Lj6310:
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
	jl	Lj6350
	decl	-16(%ebp)
	.balign 4,0x90
Lj6351:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$256,%eax
	jl	Lj6352
	jmp	Lj6353
Lj6352:
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%ecx)
	jmp	Lj6356
Lj6353:
	movl	-20(%ebp),%eax
	movb	$63,(%eax)
Lj6356:
	addl	$2,-4(%ebp)
	incl	-20(%ebp)
	cmpl	-16(%ebp),%edx
	jg	Lj6351
Lj6350:
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
	jl	Lj6368
	decl	-16(%ebp)
	.balign 4,0x90
Lj6369:
	incl	-16(%ebp)
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	movzbw	(%eax),%ax
	movw	%ax,(%ecx)
	incl	-4(%ebp)
	addl	$2,-20(%ebp)
	cmpl	-16(%ebp),%edx
	jg	Lj6369
Lj6368:
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
	jne	Lj6380
	jmp	Lj6381
Lj6380:
	movl	$1,-12(%ebp)
	jmp	Lj6384
Lj6381:
	movl	$0,-12(%ebp)
Lj6384:
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
	jne	Lj6427
	jmp	Lj6428
Lj6427:
	movl	-4(%ebp),%eax
	shll	$1,%eax
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	$1,(%eax)
	movl	-12(%ebp),%eax
	movw	$0,8(%eax)
	addl	$8,-12(%ebp)
	jmp	Lj6435
Lj6428:
	call	SYSTEM_UNICODESTRINGERROR
Lj6435:
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
	je	Lj6440
	jmp	Lj6441
Lj6440:
	jmp	Lj6438
Lj6441:
	movl	-4(%ebp),%eax
	subl	$8,(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj6438:
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
	je	Lj6448
	jmp	Lj6449
Lj6448:
	jmp	Lj6446
Lj6449:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$8,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	jl	Lj6452
	jmp	Lj6453
Lj6452:
	jmp	Lj6446
Lj6453:
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj6458
	jmp	Lj6459
Lj6458:
	movl	-12(%ebp),%eax
	decl	(%eax)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	seteb	%bl
	jmp	Lj6462
Lj6459:
	movl	-12(%ebp),%eax
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj6462:
	testb	%bl,%bl
	jne	Lj6454
	jmp	Lj6455
Lj6454:
	movl	-4(%ebp),%eax
	call	SYSTEM_DISPOSEUNICODESTRING$POINTER
Lj6455:
Lj6446:
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
	je	Lj6471
	jmp	Lj6472
Lj6471:
	jmp	Lj6469
Lj6472:
	movl	-4(%ebp),%eax
	subl	$8,%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	jl	Lj6473
	jmp	Lj6474
Lj6473:
	jmp	Lj6469
Lj6474:
	movl	-4(%ebp),%eax
	subl	$8,%eax
	movl	%eax,-8(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj6477
	jmp	Lj6478
Lj6477:
	movl	-8(%ebp),%eax
	incl	(%eax)
	jmp	Lj6479
Lj6478:
	movl	-8(%ebp),%eax
	call	SYSTEM_CPUINCLOCKED$LONGINT
Lj6479:
Lj6469:
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
	jne	Lj6484
	movl	-4(%ebp),%eax
	movb	$0,(%eax)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj6491
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6491:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6492
	jmp	Lj6493
Lj6492:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj6494
	jmp	Lj6495
Lj6494:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj6495:
	pushl	-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj6502
	movl	$FPC_EMPTYCHAR,%eax
Lj6502:
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-20(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_to_shortstr
Lj6493:
Lj6484:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6485
	call	FPC_RERAISE
Lj6485:
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
	jg	Lj6525
	jmp	Lj6526
Lj6525:
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
Lj6526:
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
	je	Lj6543
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6543:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6544
	jmp	Lj6545
Lj6544:
	pushl	-12(%ebp)
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
Lj6545:
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
	je	Lj6560
	movl	-4(%eax),%eax
Lj6560:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6561
	jmp	Lj6562
Lj6561:
	pushl	-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj6567
	movl	$FPC_EMPTYCHAR,%eax
Lj6567:
	movl	-8(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
Lj6562:
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
	je	Lj6576
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj6576:
	movl	-8(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj6581
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj6581:
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
	je	Lj6590
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj6590:
	movl	-8(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj6595
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj6595:
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
	je	Lj6604
	jmp	Lj6605
Lj6604:
	jmp	Lj6600
Lj6605:
	movl	-4(%ebp),%eax
	movw	$0,%cx
	movl	$-1,%edx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6614
	jmp	Lj6615
Lj6614:
	pushl	-12(%ebp)
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
Lj6615:
Lj6600:
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
	je	Lj6628
	jmp	Lj6629
Lj6628:
	jmp	Lj6624
Lj6629:
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
	jg	Lj6642
	jmp	Lj6643
Lj6642:
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
Lj6643:
Lj6624:
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
	je	Lj6656
	jmp	Lj6657
Lj6656:
	jmp	Lj6652
Lj6657:
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
	jg	Lj6670
	jmp	Lj6671
Lj6670:
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
Lj6671:
Lj6652:
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
	jne	Lj6682
	movl	-4(%ebp),%eax
	movb	$0,(%eax)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj6687
	jmp	Lj6688
Lj6687:
	jmp	Lj6682
Lj6688:
	movl	-8(%ebp),%eax
	movw	$0,%cx
	movl	$2147483647,%edx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6697
	jmp	Lj6698
Lj6697:
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
Lj6698:
Lj6682:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6683
	call	FPC_RERAISE
Lj6683:
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
	je	Lj6723
	jmp	Lj6724
Lj6723:
	jmp	Lj6719
Lj6724:
	movl	-4(%ebp),%eax
	movw	$0,%cx
	movl	$-1,%edx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6733
	jmp	Lj6734
Lj6733:
	pushl	-12(%ebp)
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER,%ebx
	call	*%ebx
Lj6734:
Lj6719:
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
	jne	Lj6745
	movl	-4(%ebp),%eax
	movb	$0,(%eax)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj6750
	jmp	Lj6751
Lj6750:
	jmp	Lj6745
Lj6751:
	movl	-8(%ebp),%eax
	movw	$0,%cx
	movl	$2147483647,%edx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6760
	jmp	Lj6761
Lj6760:
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
Lj6761:
Lj6745:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6746
	call	FPC_RERAISE
Lj6746:
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
	jne	Lj6784
	jmp	Lj6785
Lj6784:
	movl	-8(%ebp),%eax
	subl	$8,%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	jg	Lj6786
	jmp	Lj6787
Lj6786:
	movl	-8(%ebp),%eax
	subl	$8,%eax
	movl	%eax,-12(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj6790
	jmp	Lj6791
Lj6790:
	movl	-12(%ebp),%eax
	incl	(%eax)
	jmp	Lj6792
Lj6791:
	movl	-12(%ebp),%eax
	call	SYSTEM_CPUINCLOCKED$LONGINT
Lj6792:
Lj6787:
Lj6785:
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
	je	Lj6801
	jmp	Lj6802
Lj6801:
	movl	-12(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-12(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj6799
Lj6802:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj6805
	jmp	Lj6806
Lj6805:
	movl	-8(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj6799
Lj6806:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj6811
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6811:
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj6814
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6814:
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj6815
	jmp	Lj6816
Lj6815:
	movl	-8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	seteb	-21(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
	cmpb	$0,-21(%ebp)
	jne	Lj6823
	jmp	Lj6824
Lj6823:
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
	jmp	Lj6831
Lj6824:
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
Lj6831:
	jmp	Lj6838
Lj6816:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj6839
	jmp	Lj6840
Lj6839:
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
	jmp	Lj6857
Lj6840:
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
Lj6857:
Lj6838:
Lj6799:
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
	je	Lj6878
	jmp	Lj6879
Lj6878:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj6876
Lj6879:
	movl	$0,-40(%ebp)
	movl	$0,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	(%eax,%edx,4),%eax
	cmpl	(%ecx),%eax
	je	Lj6886
	jmp	Lj6887
Lj6886:
	incl	-36(%ebp)
Lj6887:
	movl	-12(%ebp),%ebx
	movl	-36(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj6889
	decl	-16(%ebp)
	.balign 4,0x90
Lj6890:
	incl	-16(%ebp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%edx,%eax,4),%eax
	cmpl	(%ecx),%eax
	je	Lj6891
	jmp	Lj6892
Lj6891:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-40(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	$0,-36(%ebp)
	jmp	Lj6889
Lj6892:
	cmpl	-16(%ebp),%ebx
	jg	Lj6890
Lj6889:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj6899
	jmp	Lj6900
Lj6899:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
Lj6900:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj6905
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6905:
	movl	%eax,-44(%ebp)
	movl	$0,-32(%ebp)
	movl	-12(%ebp),%ecx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ecx
	jl	Lj6909
	decl	-16(%ebp)
	.balign 4,0x90
Lj6910:
	incl	-16(%ebp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj6911
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6911:
	addl	%eax,-32(%ebp)
	cmpl	-16(%ebp),%ecx
	jg	Lj6910
Lj6909:
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
	jl	Lj6919
	decl	-16(%ebp)
	.balign 4,0x90
Lj6920:
	incl	-16(%ebp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj6923
	jmp	Lj6924
Lj6923:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj6927
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj6927:
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
Lj6924:
	cmpl	-16(%ebp),%ebx
	jg	Lj6920
Lj6919:
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
Lj6876:
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
	jne	Lj6938
	pushl	$1
	leal	-4(%ebp),%eax
	leal	-12(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
Lj6938:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6939
	call	FPC_RERAISE
Lj6939:
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
	jne	Lj6973
	pushl	$1
	leal	-4(%ebp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-12(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj6986
	movl	-4(%eax),%eax
Lj6986:
	cmpl	$1,%eax
	je	Lj6984
	jmp	Lj6985
Lj6984:
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj6989
Lj6985:
	movb	$63,-5(%ebp)
Lj6989:
Lj6973:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6974
	call	FPC_RERAISE
Lj6974:
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
	jne	Lj7010
	pushl	$1
	leal	-4(%ebp),%eax
	leal	-12(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+4,%ebx
	call	*%ebx
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
Lj7010:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7011
	call	FPC_RERAISE
Lj7011:
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
	jne	Lj7031
	pushl	$1
	leal	-4(%ebp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-12(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER,%ebx
	call	*%ebx
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj7044
	movl	-4(%eax),%eax
Lj7044:
	cmpl	$1,%eax
	je	Lj7042
	jmp	Lj7043
Lj7042:
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-5(%ebp)
	jmp	Lj7047
Lj7043:
	movb	$63,-5(%ebp)
Lj7047:
Lj7031:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7032
	call	FPC_RERAISE
Lj7032:
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
	jne	Lj7058
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
Lj7058:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7059
	call	FPC_RERAISE
Lj7059:
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
	jne	Lj7103
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
Lj7103:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7104
	call	FPC_RERAISE
Lj7104:
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
	jne	Lj7130
	jmp	Lj7128
Lj7130:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj7128
	jmp	Lj7129
Lj7128:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj7126
Lj7129:
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
Lj7126:
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
	jne	Lj7151
	jmp	Lj7152
Lj7151:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj7153
	jmp	Lj7154
Lj7153:
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj7149
Lj7154:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_INDEXCHAR$formal$LONGINT$CHAR$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj7165
	jmp	Lj7166
Lj7165:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7166:
	jmp	Lj7169
Lj7152:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7169:
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	call	fpc_unicodestr_setlength
	pushl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
Lj7149:
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
	jne	Lj7186
	movl	12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jle	Lj7191
	jmp	Lj7192
Lj7191:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj7195
Lj7192:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj7196
	jmp	Lj7197
Lj7196:
	movl	$0,-16(%ebp)
Lj7197:
Lj7195:
	cmpb	$0,8(%ebp)
	jne	Lj7200
	jmp	Lj7201
Lj7200:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj7210
	jmp	Lj7211
Lj7210:
	movb	-16(%ebp),%al
	movb	%al,-21(%ebp)
	jmp	Lj7214
Lj7211:
	movb	-20(%ebp),%al
	movb	%al,-21(%ebp)
Lj7214:
	jmp	Lj7217
Lj7201:
	movb	-16(%ebp),%al
	movb	%al,-21(%ebp)
Lj7217:
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
Lj7186:
	call	FPC_POPADDRSTACK
	leal	-28(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-28(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7187
	call	FPC_RERAISE
Lj7187:
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
	jne	Lj7242
	jmp	Lj7243
Lj7242:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj7252
	jmp	Lj7253
Lj7252:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7253:
	jmp	Lj7256
Lj7243:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7256:
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
	jne	Lj7273
	jmp	Lj7274
Lj7273:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj7283
	jmp	Lj7284
Lj7283:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7284:
	jmp	Lj7287
Lj7274:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7287:
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
	jne	Lj7302
	jmp	Lj7303
Lj7302:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj7312
	jmp	Lj7313
Lj7312:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7313:
	jmp	Lj7316
Lj7303:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7316:
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
	jne	Lj7331
	movl	12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jle	Lj7336
	jmp	Lj7337
Lj7336:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj7340
Lj7337:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj7341
	jmp	Lj7342
Lj7341:
	movl	$0,-16(%ebp)
Lj7342:
Lj7340:
	cmpb	$0,8(%ebp)
	jne	Lj7345
	jmp	Lj7346
Lj7345:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj7355
	jmp	Lj7356
Lj7355:
	movb	-16(%ebp),%al
	movb	%al,-21(%ebp)
	jmp	Lj7359
Lj7356:
	movb	-20(%ebp),%al
	movb	%al,-21(%ebp)
Lj7359:
	jmp	Lj7362
Lj7346:
	movb	-16(%ebp),%al
	movb	%al,-21(%ebp)
Lj7362:
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
Lj7331:
	call	FPC_POPADDRSTACK
	leal	-28(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-28(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7332
	call	FPC_RERAISE
Lj7332:
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
	jne	Lj7387
	jmp	Lj7388
Lj7387:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj7397
	jmp	Lj7398
Lj7397:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7398:
	jmp	Lj7401
Lj7388:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7401:
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
	jne	Lj7418
	jmp	Lj7419
Lj7418:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movw	$0,%cx
	call	SYSTEM_INDEXWORD$formal$LONGINT$WORD$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj7428
	jmp	Lj7429
Lj7428:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7429:
	jmp	Lj7432
Lj7419:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7432:
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
	jne	Lj7447
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7452
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7452:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj7453
	jmp	Lj7454
Lj7453:
	pushl	-16(%ebp)
	movl	-8(%ebp),%eax
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%cx
	leal	-20(%ebp),%edx
	movl	U_SYSTEM_WIDESTRINGMANAGER+80,%ebx
	call	*%ebx
Lj7454:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj7465
	movl	-4(%eax),%eax
Lj7465:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jl	Lj7466
	jmp	Lj7467
Lj7466:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7467:
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
Lj7447:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7448
	call	FPC_RERAISE
Lj7448:
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
	je	Lj7492
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7492:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jl	Lj7493
	jmp	Lj7494
Lj7493:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7494:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj7497
	jmp	Lj7498
Lj7497:
	movl	-16(%ebp),%ecx
	shll	$1,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj7498:
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
	jne	Lj7513
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7518
	movl	-4(%eax),%eax
Lj7518:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj7519
	jmp	Lj7520
Lj7519:
	pushl	-16(%ebp)
	movl	-8(%ebp),%eax
	leal	-20(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
Lj7520:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj7531
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7531:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jl	Lj7532
	jmp	Lj7533
Lj7532:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7533:
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
Lj7513:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7514
	call	FPC_RERAISE
Lj7514:
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
	jne	Lj7556
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj7561
	jmp	Lj7562
Lj7561:
	pushl	-16(%ebp)
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	leal	-20(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
Lj7562:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj7573
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7573:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jl	Lj7574
	jmp	Lj7575
Lj7574:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7575:
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
Lj7556:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7557
	call	FPC_RERAISE
Lj7557:
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
	jne	Lj7598
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7603
	movl	-4(%eax),%eax
Lj7603:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj7604
	jmp	Lj7605
Lj7604:
	pushl	-16(%ebp)
	movl	-8(%ebp),%eax
	leal	-20(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+4,%ebx
	call	*%ebx
Lj7605:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj7616
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7616:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jl	Lj7617
	jmp	Lj7618
Lj7617:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7618:
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
Lj7598:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7599
	call	FPC_RERAISE
Lj7599:
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
	jne	Lj7641
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj7646
	jmp	Lj7647
Lj7646:
	pushl	-16(%ebp)
	movl	-8(%ebp),%eax
	leal	1(%eax),%eax
	leal	-20(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+4,%ebx
	call	*%ebx
Lj7647:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj7658
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7658:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jl	Lj7659
	jmp	Lj7660
Lj7659:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7660:
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
Lj7641:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7642
	call	FPC_RERAISE
Lj7642:
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
	je	Lj7685
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7685:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	cmpl	-16(%ebp),%eax
	jl	Lj7686
	jmp	Lj7687
Lj7686:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7687:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj7690
	jmp	Lj7691
Lj7690:
	movl	-16(%ebp),%ecx
	shll	$1,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj7691:
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
	je	Lj7706
	jmp	Lj7707
Lj7706:
	movl	$0,-12(%ebp)
	jmp	Lj7704
Lj7707:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7712
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7712:
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7715
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7715:
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj7716
	jmp	Lj7717
Lj7716:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj7717:
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj7728
	jmp	Lj7729
Lj7728:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj7732
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj7732:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7733
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7733:
	subl	%eax,%edx
	movl	%edx,-20(%ebp)
Lj7729:
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj7704:
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
	je	Lj7738
	jmp	Lj7739
Lj7738:
	movl	$0,-12(%ebp)
	jmp	Lj7736
Lj7739:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7744
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7744:
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj7747
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7747:
	cmpl	-16(%ebp),%eax
	jne	Lj7745
	jmp	Lj7746
Lj7745:
	movl	$-1,-12(%ebp)
	jmp	Lj7736
	jmp	Lj7750
Lj7746:
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
	jmp	Lj7736
Lj7750:
Lj7736:
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
	je	Lj7761
	jmp	Lj7764
Lj7764:
	movl	-4(%ebp),%eax
	subl	$8,%eax
	movl	4(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	cmpl	-8(%ebp),%edx
	jl	Lj7761
	jmp	Lj7763
Lj7763:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj7761
	jmp	Lj7762
Lj7761:
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj7762:
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
	jg	Lj7771
	jmp	Lj7772
Lj7771:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj7773
	jmp	Lj7774
Lj7773:
	movl	-8(%ebp),%eax
	call	SYSTEM_NEWUNICODESTRING$LONGINT$$POINTER
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj7779
Lj7774:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$8,%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj7780
	jmp	Lj7781
Lj7780:
	movl	-4(%ebp),%eax
	subl	$8,(%eax)
	movl	-8(%ebp),%ebx
	shll	$1,%ebx
	addl	$10,%ebx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_MEMSIZE$POINTER$$LONGWORD
	cmpl	%eax,%ebx
	ja	Lj7782
	jmp	Lj7783
Lj7782:
	movl	-8(%ebp),%edx
	shll	$1,%edx
	addl	$10,%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
Lj7783:
	movl	-4(%ebp),%eax
	addl	$8,(%eax)
	jmp	Lj7790
Lj7781:
	movl	-8(%ebp),%eax
	call	SYSTEM_NEWUNICODESTRING$LONGINT$$POINTER
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj7797
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7797:
	cmpl	$0,%eax
	jg	Lj7795
	jmp	Lj7796
Lj7795:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj7800
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7800:
	incl	%eax
	cmpl	-8(%ebp),%eax
	jg	Lj7798
	jmp	Lj7799
Lj7798:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj7803
Lj7799:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj7806
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7806:
	incl	%eax
	movl	%eax,-16(%ebp)
Lj7803:
	movl	-16(%ebp),%ecx
	shll	$1,%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj7796:
	movl	-4(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,(%edx)
Lj7790:
Lj7779:
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
	jmp	Lj7821
Lj7772:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj7822
	jmp	Lj7823
Lj7822:
	movl	-4(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
Lj7823:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj7821:
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
	jne	Lj7830
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_pwidechar_to_unicodestr
	movl	-52(%ebp),%edx
	testl	%edx,%edx
	je	Lj7839
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj7839:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_UNICODECHARLENTOSTRING$PUNICODECHAR$LONGINT$$ANSISTRING
Lj7830:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7831
	call	FPC_RERAISE
Lj7831:
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
	jne	Lj7846
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7851
	movl	-4(%eax),%eax
Lj7851:
	pushl	%eax
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj7854
	movl	$FPC_EMPTYCHAR,%eax
Lj7854:
	leal	-20(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj7861
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7861:
	cmpl	-12(%ebp),%eax
	jl	Lj7859
	jmp	Lj7860
Lj7859:
	movl	-20(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj7864
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj7864:
	shll	$1,%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj7869
Lj7860:
	movl	-12(%ebp),%ecx
	decl	%ecx
	shll	$1,%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj7869:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movw	$0,(%edx,%eax,2)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj7846:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7847
	call	FPC_RERAISE
Lj7847:
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
	jne	Lj7888
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_pwidechar_to_unicodestr
	movl	-52(%ebp),%edx
	testl	%edx,%edx
	je	Lj7897
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj7897:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_WIDECHARLENTOSTRING$PWIDECHAR$LONGINT$$ANSISTRING
Lj7888:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7889
	call	FPC_RERAISE
Lj7889:
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
	jne	Lj7904
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7909
	movl	-4(%eax),%eax
Lj7909:
	pushl	%eax
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj7912
	movl	$FPC_EMPTYCHAR,%eax
Lj7912:
	leal	-20(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	U_SYSTEM_WIDESTRINGMANAGER+4,%ebx
	call	*%ebx
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj7919
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj7919:
	cmpl	-12(%ebp),%eax
	jl	Lj7917
	jmp	Lj7918
Lj7917:
	movl	-20(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj7922
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj7922:
	shll	$1,%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj7927
Lj7918:
	movl	-12(%ebp),%ecx
	decl	%ecx
	shll	$1,%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj7927:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movw	$0,(%edx,%eax,2)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj7904:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7905
	call	FPC_RERAISE
Lj7905:
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
	jne	Lj7956
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
Lj7956:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7957
	call	FPC_RERAISE
Lj7957:
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
	jne	Lj7969
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
Lj7969:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7970
	call	FPC_RERAISE
Lj7970:
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
	jne	Lj7990
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
Lj7990:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7991
	call	FPC_RERAISE
Lj7991:
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
	jne	Lj8003
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
Lj8003:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8004
	call	FPC_RERAISE
Lj8004:
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
	je	Lj8016
	jmp	Lj8017
Lj8016:
	jmp	Lj8012
Lj8017:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$8,%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	jne	Lj8018
	jmp	Lj8019
Lj8018:
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
Lj8019:
Lj8012:
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
	jl	Lj8044
	jmp	Lj8045
Lj8044:
	movl	$0,-8(%ebp)
Lj8045:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8051
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8051:
	cmpl	-12(%ebp),%eax
	jl	Lj8048
	jmp	Lj8050
Lj8050:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8052
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8052:
	cmpl	%eax,%edx
	jg	Lj8048
	jmp	Lj8049
Lj8048:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj8055
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj8055:
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
Lj8049:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj8056
	jmp	Lj8057
Lj8056:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj8058
	jmp	Lj8059
Lj8058:
	movl	$0,-8(%ebp)
Lj8059:
	movl	-12(%ebp),%eax
	call	SYSTEM_NEWUNICODESTRING$LONGINT$$POINTER
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8066
	jmp	Lj8067
Lj8066:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8070
	movl	$FPC_EMPTYCHAR,%eax
Lj8070:
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
Lj8067:
Lj8057:
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
	je	Lj8089
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8089:
	cmpl	$0,%eax
	jg	Lj8087
	jmp	Lj8088
Lj8087:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj8092
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8092:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj8093
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj8093:
	subl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj8099
	.balign 4,0x90
Lj8098:
	incl	-16(%ebp)
	movl	-24(%ebp),%eax
	movl	-4(%ebp),%edx
	movw	(%eax),%ax
	cmpw	(%edx),%ax
	je	Lj8103
	jmp	Lj8102
Lj8103:
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj8106
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj8106:
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_COMPAREWORD$formal$formal$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj8101
	jmp	Lj8102
Lj8101:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj8083
Lj8102:
	addl	$2,-24(%ebp)
Lj8099:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj8098
	jmp	Lj8100
Lj8100:
Lj8088:
Lj8083:
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
	je	Lj8120
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8120:
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj8118
	decl	-16(%ebp)
	.balign 4,0x90
Lj8119:
	incl	-16(%ebp)
	movl	-20(%ebp),%edx
	movw	(%edx),%dx
	cmpw	-4(%ebp),%dx
	je	Lj8121
	jmp	Lj8122
Lj8121:
	movl	-16(%ebp),%edx
	movl	%edx,-12(%ebp)
	jmp	Lj8113
Lj8122:
	addl	$2,-20(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj8119
Lj8118:
	movl	$0,-12(%ebp)
Lj8113:
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
	jne	Lj8129
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
Lj8129:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj8130
	call	FPC_RERAISE
Lj8130:
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
	jne	Lj8144
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
Lj8144:
	call	FPC_POPADDRSTACK
	leal	-308(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-308(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8145
	call	FPC_RERAISE
Lj8145:
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
	jne	Lj8159
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
Lj8159:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-4(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj8160
	call	FPC_RERAISE
Lj8160:
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
	je	Lj8183
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8183:
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj8181
	decl	-16(%ebp)
	.balign 4,0x90
Lj8182:
	incl	-16(%ebp)
	movl	-24(%ebp),%edx
	movw	(%edx),%dx
	cmpw	-18(%ebp),%dx
	je	Lj8184
	jmp	Lj8185
Lj8184:
	movl	-16(%ebp),%edx
	movl	%edx,-12(%ebp)
	jmp	Lj8172
Lj8185:
	addl	$2,-24(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj8182
Lj8181:
	movl	$0,-12(%ebp)
Lj8172:
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
	je	Lj8194
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8194:
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj8195
	jmp	Lj8198
Lj8198:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj8195
	jmp	Lj8197
Lj8197:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj8195
	jmp	Lj8196
Lj8195:
	jmp	Lj8190
Lj8196:
	movl	-4(%ebp),%eax
	call	FPC_UNICODESTR_UNIQUE
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	cmpl	-12(%ebp),%eax
	jl	Lj8201
	jmp	Lj8202
Lj8201:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	incl	%eax
	movl	%eax,-12(%ebp)
Lj8202:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	cmpl	-12(%ebp),%eax
	jge	Lj8205
	jmp	Lj8206
Lj8205:
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
	jne	Lj8211
	movl	$FPC_EMPTYCHAR,%ebx
Lj8211:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	leal	(%ebx,%eax,2),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%ebx
	testl	%ebx,%ebx
	jne	Lj8214
	movl	$FPC_EMPTYCHAR,%ebx
Lj8214:
	movl	-8(%ebp),%edx
	leal	(%ebx,%edx,2),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj8206:
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_setlength
Lj8190:
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
	jne	Lj8221
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8226
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8226:
	testl	%eax,%eax
	je	Lj8224
	jmp	Lj8225
Lj8224:
	jmp	Lj8221
Lj8225:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj8227
	jmp	Lj8228
Lj8227:
	movl	$1,-12(%ebp)
Lj8228:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj8233
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8233:
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj8234
	jmp	Lj8235
Lj8234:
	movl	-20(%ebp),%eax
	incl	%eax
	movl	%eax,-12(%ebp)
Lj8235:
	decl	-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8242
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8242:
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	call	SYSTEM_NEWUNICODESTRING$LONGINT$$POINTER
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj8245
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj8245:
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	leal	-16(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj8248
	jmp	Lj8249
Lj8248:
	movl	-12(%ebp),%ecx
	shll	$1,%ecx
	movl	-16(%ebp),%edx
	testl	%edx,%edx
	jne	Lj8254
	movl	$FPC_EMPTYCHAR,%edx
Lj8254:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj8257
	movl	$FPC_EMPTYCHAR,%eax
Lj8257:
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj8249:
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj8260
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj8260:
	shll	$1,%ecx
	movl	-16(%ebp),%edx
	testl	%edx,%edx
	jne	Lj8263
	movl	$FPC_EMPTYCHAR,%edx
Lj8263:
	movl	-12(%ebp),%eax
	leal	(%edx,%eax,2),%edx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8266
	movl	$FPC_EMPTYCHAR,%eax
Lj8266:
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	cmpl	$0,%edx
	jg	Lj8267
	jmp	Lj8268
Lj8267:
	movl	-16(%ebp),%ecx
	testl	%ecx,%ecx
	jne	Lj8271
	movl	$FPC_EMPTYCHAR,%ecx
Lj8271:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8272
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8272:
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
	jne	Lj8277
	movl	$FPC_EMPTYCHAR,%ebx
Lj8277:
	movl	-12(%ebp),%eax
	leal	(%ebx,%eax,2),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj8268:
	movl	-16(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-16(%ebp),%eax
	movl	%eax,(%ebx)
Lj8221:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8222
	call	FPC_RERAISE
Lj8222:
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
	jne	Lj8288
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
Lj8288:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-12(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8289
	call	FPC_RERAISE
Lj8289:
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
	jne	Lj8321
	jmp	Lj8320
Lj8321:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj8319
	jmp	Lj8320
Lj8319:
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_unique
	movl	%eax,%edx
	movl	-12(%ebp),%ecx
	shll	$1,%ecx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj8320:
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
	jne	Lj8338
	jmp	Lj8337
Lj8338:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj8336
	jmp	Lj8337
Lj8336:
	pushl	-12(%ebp)
	movl	-4(%ebp),%ecx
	movw	U_SYSTEM_DEFAULTSYSTEMCODEPAGE,%dx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+84,%ebx
	call	*%ebx
Lj8337:
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
	je	Lj8353
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8353:
	cmpl	$255,%eax
	jg	Lj8351
	jmp	Lj8352
Lj8351:
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj8356
Lj8352:
	movl	-4(%ebp),%ecx
	leal	-276(%ebp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	-8(%ebp),%edx
	leal	-276(%ebp),%eax
	call	fpc_val_real_shortstr
	fstpt	-20(%ebp)
Lj8356:
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
	je	Lj8373
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8373:
	cmpl	$255,%eax
	jg	Lj8371
	jmp	Lj8372
Lj8371:
	movl	-12(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj8376
Lj8372:
	movl	-8(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	-12(%ebp),%ecx
	leal	-272(%ebp),%edx
	movl	$4,%eax
	call	fpc_val_sint_shortstr
	movl	%eax,-16(%ebp)
Lj8376:
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
	je	Lj8395
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8395:
	cmpl	$255,%eax
	jg	Lj8393
	jmp	Lj8394
Lj8393:
	fldz
	fistpq	-16(%ebp)
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj8400
Lj8394:
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
Lj8400:
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
	je	Lj8419
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8419:
	cmpl	$255,%eax
	jg	Lj8417
	jmp	Lj8418
Lj8417:
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj8422
Lj8418:
	movl	-4(%ebp),%ecx
	leal	-268(%ebp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	-8(%ebp),%edx
	leal	-268(%ebp),%eax
	call	fpc_val_uint_shortstr
	movl	%eax,-12(%ebp)
Lj8422:
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
	je	Lj8441
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8441:
	cmpl	$255,%eax
	jg	Lj8439
	jmp	Lj8440
Lj8439:
	movl	-12(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj8444
Lj8440:
	movl	-8(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	-12(%ebp),%ecx
	leal	-272(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_VAL_SINT_SHORTSTR
	movl	%eax,-16(%ebp)
Lj8444:
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
	je	Lj8465
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8465:
	cmpl	$255,%eax
	jg	Lj8463
	jmp	Lj8464
Lj8463:
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj8468
Lj8464:
	movl	-4(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	-8(%ebp),%edx
	leal	-272(%ebp),%eax
	call	fpc_val_qword_shortstr
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
Lj8468:
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
	je	Lj8487
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8487:
	cmpl	$255,%eax
	jg	Lj8485
	jmp	Lj8486
Lj8485:
	movl	-8(%ebp),%eax
	movl	$256,(%eax)
	jmp	Lj8490
Lj8486:
	movl	-4(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	fpc_unicodestr_to_shortstr
	movl	-8(%ebp),%edx
	leal	-272(%ebp),%eax
	call	fpc_val_int64_shortstr
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
Lj8490:
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
	jne	Lj8505
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
Lj8505:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8506
	call	FPC_RERAISE
Lj8506:
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
	jne	Lj8528
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
Lj8528:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8529
	call	FPC_RERAISE
Lj8529:
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
	jne	Lj8551
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
Lj8551:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8552
	call	FPC_RERAISE
Lj8552:
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
	jne	Lj8570
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
Lj8570:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8571
	call	FPC_RERAISE
Lj8571:
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
	jne	Lj8591
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
Lj8591:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8592
	call	FPC_RERAISE
Lj8592:
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
	jne	Lj8610
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
Lj8610:
	call	FPC_POPADDRSTACK
	leal	-312(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-312(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8611
	call	FPC_RERAISE
Lj8611:
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
	jne	Lj8629
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
Lj8629:
	call	FPC_POPADDRSTACK
	leal	-308(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-308(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8630
	call	FPC_RERAISE
Lj8630:
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
	jne	Lj8648
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
Lj8648:
	call	FPC_POPADDRSTACK
	leal	-308(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-308(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8649
	call	FPC_RERAISE
Lj8649:
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
	jbe	Lj8669
	jmp	Lj8671
Lj8671:
	movw	-18(%ebp),%ax
	cmpw	$57344,%ax
	jae	Lj8669
	jmp	Lj8670
Lj8669:
	movzwl	-18(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	$1,(%eax)
	jmp	Lj8676
Lj8670:
	movw	-18(%ebp),%ax
	cmpw	$56319,%ax
	jbe	Lj8681
	jmp	Lj8678
Lj8681:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8682
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj8682:
	cmpl	-8(%ebp),%eax
	jg	Lj8680
	jmp	Lj8678
Lj8680:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	incl	%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$56320,%ax
	jae	Lj8679
	jmp	Lj8678
Lj8679:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	incl	%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$57343,%ax
	jbe	Lj8677
	jmp	Lj8678
Lj8677:
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
	jmp	Lj8687
Lj8678:
	movzwl	-18(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	$1,(%eax)
Lj8687:
Lj8676:
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
	jne	Lj8694
	jmp	Lj8695
Lj8694:
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
	jmp	Lj8712
Lj8695:
	movl	$0,-16(%ebp)
Lj8712:
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
	jne	Lj8717
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj8722
	jmp	Lj8723
Lj8722:
	jmp	Lj8717
Lj8723:
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj8728
	jmp	Lj8729
Lj8728:
	jmp	Lj8731
	.balign 4,0x90
Lj8730:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movw	(%eax,%edx,2),%ax
	movw	%ax,-26(%ebp)
	movw	-26(%ebp),%ax
	subw	$127,%ax
	jbe	Lj8737
	decw	%ax
	subw	$1919,%ax
	jbe	Lj8738
	decw	%ax
	subw	$53247,%ax
	jbe	Lj8739
	decw	%ax
	subw	$1023,%ax
	jbe	Lj8740
	subw	$1025,%ax
	jb	Lj8736
	subw	$8191,%ax
	jbe	Lj8739
	jmp	Lj8736
Lj8737:
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	-26(%ebp),%cl
	movb	%cl,(%eax,%edx,1)
	incl	-24(%ebp)
	jmp	Lj8735
Lj8738:
	movl	-24(%ebp),%eax
	incl	%eax
	cmpl	-8(%ebp),%eax
	jae	Lj8743
	jmp	Lj8744
Lj8743:
	jmp	Lj8732
Lj8744:
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
	jmp	Lj8735
Lj8739:
	movl	-24(%ebp),%eax
	addl	$2,%eax
	cmpl	-8(%ebp),%eax
	jae	Lj8749
	jmp	Lj8750
Lj8749:
	jmp	Lj8732
Lj8750:
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
	jmp	Lj8735
Lj8740:
	movl	-24(%ebp),%eax
	addl	$3,%eax
	cmpl	-8(%ebp),%eax
	jae	Lj8757
	jmp	Lj8758
Lj8757:
	jmp	Lj8732
Lj8758:
	movl	8(%ebp),%ebx
	movl	$0,%edx
	subl	$1,%ebx
	sbbl	$0,%edx
	movl	-20(%ebp),%ecx
	movl	$0,%eax
	cmpl	%eax,%edx
	jg	Lj8762
	jl	Lj8760
	cmpl	%ecx,%ebx
	ja	Lj8762
	jmp	Lj8760
Lj8762:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movw	(%edx,%eax,2),%ax
	cmpw	$56320,%ax
	jae	Lj8761
	jmp	Lj8760
Lj8761:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movw	(%edx,%eax,2),%ax
	cmpw	$57343,%ax
	jbe	Lj8759
	jmp	Lj8760
Lj8759:
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
Lj8760:
	jmp	Lj8735
Lj8736:
Lj8735:
	incl	-20(%ebp)
Lj8731:
	movl	-20(%ebp),%eax
	cmpl	8(%ebp),%eax
	jb	Lj8793
	jmp	Lj8732
Lj8793:
	movl	-24(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jb	Lj8730
	jmp	Lj8732
Lj8732:
	movl	-8(%ebp),%eax
	decl	%eax
	cmpl	-24(%ebp),%eax
	jb	Lj8794
	jmp	Lj8795
Lj8794:
	movl	-8(%ebp),%eax
	decl	%eax
	movl	%eax,-24(%ebp)
Lj8795:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movb	$0,(%edx,%eax,1)
	jmp	Lj8800
Lj8729:
	jmp	Lj8802
	.balign 4,0x90
Lj8801:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movw	(%edx,%eax,2),%ax
	subw	$127,%ax
	jbe	Lj8806
	decw	%ax
	subw	$1919,%ax
	jbe	Lj8807
	decw	%ax
	subw	$53247,%ax
	jbe	Lj8808
	decw	%ax
	subw	$1023,%ax
	jbe	Lj8809
	subw	$1025,%ax
	jb	Lj8805
	subw	$8191,%ax
	jbe	Lj8808
	jmp	Lj8805
Lj8806:
	incl	-24(%ebp)
	jmp	Lj8804
Lj8807:
	addl	$2,-24(%ebp)
	jmp	Lj8804
Lj8808:
	addl	$3,-24(%ebp)
	jmp	Lj8804
Lj8809:
	movl	8(%ebp),%eax
	movl	$0,%edx
	subl	$1,%eax
	sbbl	$0,%edx
	movl	-20(%ebp),%ecx
	movl	$0,%ebx
	cmpl	%ebx,%edx
	jg	Lj8813
	jl	Lj8811
	cmpl	%ecx,%eax
	ja	Lj8813
	jmp	Lj8811
Lj8813:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movw	(%edx,%eax,2),%ax
	cmpw	$56320,%ax
	jae	Lj8812
	jmp	Lj8811
Lj8812:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movw	(%edx,%eax,2),%ax
	cmpw	$57343,%ax
	jbe	Lj8810
	jmp	Lj8811
Lj8810:
	addl	$4,-24(%ebp)
	incl	-20(%ebp)
Lj8811:
	jmp	Lj8804
Lj8805:
Lj8804:
	incl	-20(%ebp)
Lj8802:
	movl	-20(%ebp),%eax
	cmpl	8(%ebp),%eax
	jb	Lj8801
	jmp	Lj8803
Lj8803:
Lj8800:
	movl	-24(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj8717:
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
	je	Lj8718
	call	FPC_RERAISE
Lj8718:
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
	jne	Lj8818
	jmp	Lj8819
Lj8818:
	movl	-8(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_UTF8TOUNICODE$PUNICODECHAR$LONGWORD$PCHAR$LONGWORD$$LONGWORD
	movl	%eax,-16(%ebp)
	jmp	Lj8832
Lj8819:
	movl	$0,-16(%ebp)
Lj8832:
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
	jne	Lj8838
	jmp	Lj8837
Lj8837:
	movl	$0,-16(%ebp)
	jmp	Lj8835
Lj8838:
	movl	$-1,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-32(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj8849
	jmp	Lj8850
Lj8849:
	jmp	Lj8852
	.balign 4,0x90
Lj8851:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-21(%ebp)
	movb	-21(%ebp),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	je	Lj8856
	jmp	Lj8857
Lj8856:
	movzbl	-21(%ebp),%eax
	cmpl	$10,%eax
	je	Lj8858
	jmp	Lj8859
Lj8858:
	movl	-32(%ebp),%eax
	cmpl	$13,%eax
	jne	Lj8862
	jmp	Lj8861
Lj8862:
	jmp	Lj8861
	movl	-28(%ebp),%eax
	incl	%eax
	cmpl	-8(%ebp),%eax
	jb	Lj8863
	jmp	Lj8864
Lj8863:
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movw	$13,(%eax,%edx,2)
	incl	-28(%ebp)
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movw	$10,(%eax,%edx,2)
	incl	-28(%ebp)
	movl	$10,-32(%ebp)
	jmp	Lj8871
Lj8864:
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movw	$13,(%eax,%edx,2)
	incl	-28(%ebp)
Lj8871:
	jmp	Lj8874
Lj8861:
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%ecx
	movzbw	-21(%ebp),%dx
	movw	%dx,(%eax,%ecx,2)
	incl	-28(%ebp)
	movzbl	-21(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj8874:
	jmp	Lj8879
Lj8859:
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movzbw	-21(%ebp),%cx
	movw	%cx,(%eax,%edx,2)
	incl	-28(%ebp)
	movzbl	-21(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj8879:
	incl	-20(%ebp)
	jmp	Lj8884
Lj8857:
	movb	-21(%ebp),%al
	movb	%al,-33(%ebp)
	movl	$0,-40(%ebp)
	jmp	Lj8890
	.balign 4,0x90
Lj8889:
	movzbl	-33(%ebp),%eax
	shll	$1,%eax
	andl	$254,%eax
	movb	%al,-33(%ebp)
	incl	-40(%ebp)
Lj8890:
	movb	-33(%ebp),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj8889
	jmp	Lj8891
Lj8891:
	movl	-20(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	%eax,%edx
	decl	%edx
	cmpl	8(%ebp),%edx
	ja	Lj8894
	jmp	Lj8895
Lj8894:
	movl	$1,-40(%ebp)
Lj8895:
	movl	-40(%ebp),%eax
	decl	%eax
	movl	$1,-44(%ebp)
	cmpl	-44(%ebp),%eax
	jb	Lj8899
	decl	-44(%ebp)
	.balign 4,0x90
Lj8900:
	incl	-44(%ebp)
	movl	-12(%ebp),%ebx
	movl	-20(%ebp),%edx
	movl	-44(%ebp),%ecx
	addl	%ecx,%edx
	movb	(%ebx,%edx,1),%dl
	andb	$128,%dl
	cmpb	$128,%dl
	jne	Lj8901
	jmp	Lj8903
Lj8903:
	movl	-12(%ebp),%ebx
	movl	-20(%ebp),%edx
	movl	-44(%ebp),%ecx
	addl	%ecx,%edx
	movb	(%ebx,%edx,1),%dl
	andb	$64,%dl
	movzbl	%dl,%edx
	testl	%edx,%edx
	jne	Lj8901
	jmp	Lj8902
Lj8901:
	movl	-44(%ebp),%edx
	movl	%edx,-40(%ebp)
	jmp	Lj8899
Lj8902:
	cmpl	-44(%ebp),%eax
	ja	Lj8900
Lj8899:
	movl	$65535,-48(%ebp)
	movl	-40(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj8909
	decl	%eax
	je	Lj8910
	decl	%eax
	je	Lj8911
	decl	%eax
	je	Lj8912
	decl	%eax
	je	Lj8913
	decl	%eax
	jb	Lj8909
	subl	$2,%eax
	jbe	Lj8914
	jmp	Lj8909
Lj8910:
	movl	$63,-48(%ebp)
	jmp	Lj8908
Lj8911:
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
	jbe	Lj8921
	jmp	Lj8922
Lj8921:
	movl	$63,-48(%ebp)
Lj8922:
	jmp	Lj8908
Lj8912:
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
	jbe	Lj8931
	jmp	Lj8934
Lj8934:
	movl	-48(%ebp),%eax
	cmpl	$65534,%eax
	jae	Lj8931
	jmp	Lj8933
Lj8933:
	movl	-48(%ebp),%eax
	cmpl	$55296,%eax
	jae	Lj8935
	jmp	Lj8932
Lj8935:
	movl	-48(%ebp),%eax
	cmpl	$57343,%eax
	jbe	Lj8931
	jmp	Lj8932
Lj8931:
	movl	$63,-48(%ebp)
Lj8932:
	jmp	Lj8908
Lj8913:
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
	jb	Lj8946
	jmp	Lj8948
Lj8948:
	movl	-48(%ebp),%eax
	cmpl	$1114111,%eax
	ja	Lj8946
	jmp	Lj8947
Lj8946:
	movl	$63,-48(%ebp)
	jmp	Lj8951
Lj8947:
	subl	$65536,-48(%ebp)
	movl	-8(%ebp),%edx
	movl	$0,%ebx
	subl	$1,%edx
	sbbl	$0,%ebx
	movl	-28(%ebp),%ecx
	movl	$0,%eax
	cmpl	%eax,%ebx
	jg	Lj8952
	jl	Lj8953
	cmpl	%ecx,%edx
	ja	Lj8952
	jmp	Lj8953
Lj8952:
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
	jmp	Lj8958
Lj8953:
	movl	-20(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
	movl	$0,-40(%ebp)
Lj8958:
Lj8951:
	jmp	Lj8908
Lj8914:
	movl	$63,-48(%ebp)
	jmp	Lj8908
Lj8909:
Lj8908:
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj8965
	jmp	Lj8966
Lj8965:
	movl	-48(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%ecx
	movw	-48(%ebp),%ax
	movw	%ax,(%edx,%ecx,2)
	incl	-28(%ebp)
Lj8966:
	movl	-20(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
Lj8884:
Lj8852:
	movl	-28(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jb	Lj8973
	jmp	Lj8853
Lj8973:
	movl	-20(%ebp),%eax
	cmpl	8(%ebp),%eax
	jb	Lj8851
	jmp	Lj8853
Lj8853:
	movl	-28(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	jmp	Lj8976
Lj8850:
	jmp	Lj8978
	.balign 4,0x90
Lj8977:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,-21(%ebp)
	movb	-21(%ebp),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	je	Lj8982
	jmp	Lj8983
Lj8982:
	movzbl	-21(%ebp),%eax
	cmpl	$10,%eax
	je	Lj8984
	jmp	Lj8985
Lj8984:
	movl	-32(%ebp),%eax
	cmpl	$13,%eax
	jne	Lj8988
	jmp	Lj8987
Lj8988:
	jmp	Lj8987
	addl	$2,-28(%ebp)
	movl	$10,-32(%ebp)
	jmp	Lj8991
Lj8987:
	incl	-28(%ebp)
	movzbl	-21(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj8991:
	jmp	Lj8994
Lj8985:
	incl	-28(%ebp)
	movzbl	-21(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj8994:
	incl	-20(%ebp)
	jmp	Lj8997
Lj8983:
	movb	-21(%ebp),%al
	movb	%al,-33(%ebp)
	movl	$0,-40(%ebp)
	jmp	Lj9003
	.balign 4,0x90
Lj9002:
	movzbl	-33(%ebp),%eax
	shll	$1,%eax
	andl	$254,%eax
	movb	%al,-33(%ebp)
	incl	-40(%ebp)
Lj9003:
	movb	-33(%ebp),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj9002
	jmp	Lj9004
Lj9004:
	movl	-20(%ebp),%eax
	movl	-40(%ebp),%edx
	addl	%edx,%eax
	decl	%eax
	cmpl	8(%ebp),%eax
	ja	Lj9007
	jmp	Lj9008
Lj9007:
	movl	$1,-40(%ebp)
Lj9008:
	movl	-40(%ebp),%eax
	decl	%eax
	movl	$1,-44(%ebp)
	cmpl	-44(%ebp),%eax
	jb	Lj9012
	decl	-44(%ebp)
	.balign 4,0x90
Lj9013:
	incl	-44(%ebp)
	movl	-12(%ebp),%ebx
	movl	-20(%ebp),%edx
	movl	-44(%ebp),%ecx
	addl	%ecx,%edx
	movb	(%ebx,%edx,1),%dl
	andb	$128,%dl
	cmpb	$128,%dl
	jne	Lj9014
	jmp	Lj9016
Lj9016:
	movl	-12(%ebp),%ebx
	movl	-20(%ebp),%edx
	movl	-44(%ebp),%ecx
	addl	%ecx,%edx
	movb	(%ebx,%edx,1),%dl
	andb	$64,%dl
	movzbl	%dl,%edx
	testl	%edx,%edx
	jne	Lj9014
	jmp	Lj9015
Lj9014:
	movl	-44(%ebp),%edx
	movl	%edx,-40(%ebp)
	jmp	Lj9012
Lj9015:
	cmpl	-44(%ebp),%eax
	ja	Lj9013
Lj9012:
	movl	$65535,-48(%ebp)
	movl	-40(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj9022
	decl	%eax
	je	Lj9023
	decl	%eax
	je	Lj9024
	decl	%eax
	je	Lj9025
	decl	%eax
	je	Lj9026
	decl	%eax
	jb	Lj9022
	subl	$2,%eax
	jbe	Lj9027
	jmp	Lj9022
Lj9023:
	movl	$63,-48(%ebp)
	jmp	Lj9021
Lj9024:
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
	jbe	Lj9034
	jmp	Lj9035
Lj9034:
	movl	$63,-48(%ebp)
Lj9035:
	jmp	Lj9021
Lj9025:
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
	jbe	Lj9044
	jmp	Lj9047
Lj9047:
	movl	-48(%ebp),%eax
	cmpl	$65534,%eax
	jae	Lj9044
	jmp	Lj9046
Lj9046:
	movl	-48(%ebp),%eax
	cmpl	$55296,%eax
	jae	Lj9048
	jmp	Lj9045
Lj9048:
	movl	-48(%ebp),%eax
	cmpl	$57343,%eax
	jbe	Lj9044
	jmp	Lj9045
Lj9044:
	movl	$63,-48(%ebp)
Lj9045:
	jmp	Lj9021
Lj9026:
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
	jb	Lj9059
	jmp	Lj9061
Lj9061:
	movl	-48(%ebp),%eax
	cmpl	$1114111,%eax
	ja	Lj9059
	jmp	Lj9060
Lj9059:
	movl	$63,-48(%ebp)
	jmp	Lj9064
Lj9060:
	incl	-28(%ebp)
Lj9064:
	jmp	Lj9021
Lj9027:
	movl	$63,-48(%ebp)
	jmp	Lj9021
Lj9022:
Lj9021:
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj9067
	jmp	Lj9068
Lj9067:
	movl	-48(%ebp),%eax
	movl	%eax,-32(%ebp)
	incl	-28(%ebp)
Lj9068:
	movl	-20(%ebp),%edx
	movl	-40(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
Lj8997:
Lj8978:
	movl	-20(%ebp),%eax
	cmpl	8(%ebp),%eax
	jb	Lj8977
	jmp	Lj8979
Lj8979:
	movl	-28(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj8976:
Lj8835:
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
	jne	Lj9077
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_to_unicodestr
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_UTF8ENCODE$UNICODESTRING$$UTF8STRING
Lj9077:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9078
	call	FPC_RERAISE
Lj9078:
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
	jne	Lj9090
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9095
	jmp	Lj9096
Lj9095:
	jmp	Lj9090
Lj9096:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj9099
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9099:
	imull	$3,%edx
	leal	-16(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9106
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9106:
	pushl	%eax
	movl	-16(%ebp),%edx
	testl	%edx,%edx
	je	Lj9109
	movl	-4(%edx),%edx
Lj9109:
	incl	%edx
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	jne	Lj9112
	movl	$FPC_EMPTYCHAR,%ecx
Lj9112:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj9115
	movl	$FPC_EMPTYCHAR,%eax
Lj9115:
	call	SYSTEM_UNICODETOUTF8$PCHAR$LONGWORD$PUNICODECHAR$LONGWORD$$LONGWORD
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj9116
	jmp	Lj9117
Lj9116:
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
Lj9117:
Lj9090:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9091
	call	FPC_RERAISE
Lj9091:
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
	jne	Lj9132
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9137
	jmp	Lj9138
Lj9137:
	jmp	Lj9132
Lj9138:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj9141
	movl	-4(%edx),%edx
Lj9141:
	leal	-16(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9148
	movl	-4(%eax),%eax
Lj9148:
	pushl	%eax
	movl	-16(%ebp),%edx
	testl	%edx,%edx
	je	Lj9151
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9151:
	incl	%edx
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	jne	Lj9154
	movl	$FPC_EMPTYCHAR,%ecx
Lj9154:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj9157
	movl	$FPC_EMPTYCHAR,%eax
Lj9157:
	call	SYSTEM_UTF8TOUNICODE$PUNICODECHAR$LONGWORD$PCHAR$LONGWORD$$LONGWORD
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj9158
	jmp	Lj9159
Lj9158:
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
Lj9159:
Lj9132:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9133
	call	FPC_RERAISE
Lj9133:
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
	jne	Lj9174
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
Lj9174:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9175
	call	FPC_RERAISE
Lj9175:
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
	jne	Lj9187
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_UTF8DECODE$UTF8STRING$$UNICODESTRING
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
Lj9187:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9188
	call	FPC_RERAISE
Lj9188:
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
	jne	Lj9200
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9205
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9205:
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
	jmp	Lj9221
	.balign 4,0x90
Lj9220:
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
Lj9221:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj9220
	jmp	Lj9222
Lj9222:
	movl	-20(%ebp),%eax
	incl	%eax
	movl	%eax,-68(%ebp)
	leal	-68(%ebp),%eax
	pushl	%eax
	movl	$INIT_SYSTEM_UCS4STRING,%edx
	leal	-8(%ebp),%eax
	movl	$1,%ecx
	call	fpc_dynarray_setlength
Lj9200:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj9201
	movl	$INIT_SYSTEM_UCS4STRING,%edx
	leal	-8(%ebp),%eax
	call	fpc_finalize
	call	FPC_RERAISE
Lj9201:
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
	je	Lj9253
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9253:
	cmpl	%edx,%eax
	jg	Lj9249
	jmp	Lj9250
Lj9249:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9256
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9256:
	cmpl	$2560,%eax
	jl	Lj9254
	jmp	Lj9255
Lj9254:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj9259
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9259:
	addl	$10,%edx
	movl	-8(%ebp),%eax
	call	fpc_unicodestr_setlength
	jmp	Lj9262
Lj9255:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj9265
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9265:
	shrl	$8,%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9266
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9266:
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	call	fpc_unicodestr_setlength
Lj9262:
Lj9250:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	leal	-2(%edx,%eax,2),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$65535,%eax
	jb	Lj9271
	jmp	Lj9272
Lj9271:
	movl	-16(%ebp),%edx
	movw	-4(%ebp),%ax
	movw	%ax,(%edx)
	movl	-12(%ebp),%eax
	incl	(%eax)
	jmp	Lj9275
Lj9272:
	movl	-4(%ebp),%eax
	cmpl	$1114111,%eax
	jbe	Lj9276
	jmp	Lj9277
Lj9276:
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
	jmp	Lj9282
Lj9277:
	movl	-16(%ebp),%eax
	movw	$63,(%eax)
	movl	-12(%ebp),%eax
	incl	(%eax)
Lj9282:
Lj9275:
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
	jl	Lj9296
	decl	-8(%ebp)
	.balign 4,0x90
Lj9297:
	incl	-8(%ebp)
	movl	8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	SYSTEM_CONCATUTF32TOUNICODESTR$UCS4CHAR$UNICODESTRING$LONGINT
	cmpl	-8(%ebp),%ebx
	jg	Lj9297
Lj9296:
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
	jne	Lj9312
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9317
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9317:
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
	jmp	Lj9333
	.balign 4,0x90
Lj9332:
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
Lj9333:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj9332
	jmp	Lj9334
Lj9334:
	movl	-20(%ebp),%eax
	incl	%eax
	movl	%eax,-68(%ebp)
	leal	-68(%ebp),%eax
	pushl	%eax
	movl	$INIT_SYSTEM_UCS4STRING,%edx
	leal	-8(%ebp),%eax
	movl	$1,%ecx
	call	fpc_dynarray_setlength
Lj9312:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj9313
	movl	$INIT_SYSTEM_UCS4STRING,%edx
	leal	-8(%ebp),%eax
	call	fpc_finalize
	call	FPC_RERAISE
Lj9313:
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
	je	Lj9365
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9365:
	cmpl	%edx,%eax
	jg	Lj9361
	jmp	Lj9362
Lj9361:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9368
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9368:
	cmpl	$2560,%eax
	jl	Lj9366
	jmp	Lj9367
Lj9366:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj9371
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9371:
	addl	$10,%edx
	movl	-8(%ebp),%eax
	call	fpc_unicodestr_setlength
	jmp	Lj9374
Lj9367:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj9377
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj9377:
	shrl	$8,%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9378
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj9378:
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	call	fpc_unicodestr_setlength
Lj9374:
Lj9362:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	leal	-2(%edx,%eax,2),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$65535,%eax
	jb	Lj9383
	jmp	Lj9384
Lj9383:
	movl	-16(%ebp),%edx
	movw	-4(%ebp),%ax
	movw	%ax,(%edx)
	movl	-12(%ebp),%eax
	incl	(%eax)
	jmp	Lj9387
Lj9384:
	movl	-4(%ebp),%eax
	cmpl	$1114111,%eax
	jbe	Lj9388
	jmp	Lj9389
Lj9388:
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
	jmp	Lj9394
Lj9389:
	movl	-16(%ebp),%eax
	movw	$63,(%eax)
	movl	-12(%ebp),%eax
	incl	(%eax)
Lj9394:
Lj9387:
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
	jl	Lj9408
	decl	-8(%ebp)
	.balign 4,0x90
Lj9409:
	incl	-8(%ebp)
	movl	8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	SYSTEM_CONCATUTF32TOWIDESTR$UCS4CHAR$WIDESTRING$LONGINT
	cmpl	-8(%ebp),%ebx
	jg	Lj9409
Lj9408:
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
	jne	Lj9424
	jmp	Lj9425
Lj9424:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj9428
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj9429
Lj9428:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj9429:
	movl	$_$SYSTEM$_Ld23,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj9436
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj9437
Lj9436:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj9437:
	call	fpc_writeln_end
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj9440
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj9441
Lj9440:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj9441:
	movl	$_$SYSTEM$_Ld24,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj9448
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj9449
Lj9448:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj9449:
	call	fpc_writeln_end
Lj9425:
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
	jne	Lj9495
	jmp	Lj9492
Lj9495:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj9492
	jmp	Lj9494
Lj9494:
	movl	-4(%ebp),%eax
	subl	$8,%eax
	movl	4(%eax),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj9492
	jmp	Lj9493
Lj9492:
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9493:
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
	jne	Lj9502
	jmp	Lj9503
Lj9502:
	movl	-4(%ebp),%eax
	subl	$8,%eax
	movl	4(%eax),%eax
	incl	%eax
	movl	%eax,-8(%ebp)
	jmp	Lj9506
Lj9503:
	movl	$0,-8(%ebp)
Lj9506:
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
	jne	Lj9511
	jmp	Lj9512
Lj9511:
	movl	-4(%ebp),%eax
	subl	$8,%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj9515
Lj9512:
	movl	$-1,-8(%ebp)
Lj9515:
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
	je	Lj9520
	jmp	Lj9521
Lj9520:
	jmp	Lj9518
Lj9521:
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
Lj9518:
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
	je	Lj9538
	jmp	Lj9539
Lj9538:
	jmp	Lj9536
Lj9539:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$8,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj9546
	jmp	Lj9547
Lj9546:
	movl	-16(%ebp),%eax
	decl	(%eax)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	seteb	%bl
	jmp	Lj9550
Lj9547:
	movl	-16(%ebp),%eax
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj9550:
	testb	%bl,%bl
	jne	Lj9542
	jmp	Lj9543
Lj9542:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$8,%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_FPC_DYNARRAY_CLEAR_INTERNAL$POINTER$POINTER
Lj9543:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj9536:
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
	je	Lj9563
	jmp	Lj9564
Lj9563:
	jmp	Lj9561
Lj9564:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$8,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9567
	jmp	Lj9568
Lj9567:
	movl	%ebp,%edx
	movl	$204,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9568:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj9577
	jmp	Lj9578
Lj9577:
	movl	-16(%ebp),%eax
	decl	(%eax)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	seteb	%bl
	jmp	Lj9581
Lj9578:
	movl	-16(%ebp),%eax
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj9581:
	testb	%bl,%bl
	jne	Lj9573
	jmp	Lj9574
Lj9573:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_FPC_DYNARRAY_CLEAR_INTERNAL$POINTER$POINTER
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj9574:
Lj9561:
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
	je	Lj9594
	jmp	Lj9595
Lj9594:
	jmp	Lj9592
Lj9595:
	movl	-4(%ebp),%eax
	subl	$8,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9598
	jmp	Lj9599
Lj9598:
	movl	%ebp,%edx
	movl	$204,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9599:
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj9606
	jmp	Lj9607
Lj9606:
	movl	-12(%ebp),%eax
	incl	(%eax)
	jmp	Lj9608
Lj9607:
	movl	-12(%ebp),%eax
	call	SYSTEM_CPUINCLOCKED$LONGINT
Lj9608:
Lj9592:
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
	jne	Lj9628
	jmp	Lj9627
Lj9627:
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	cmpl	$0,%eax
	jl	Lj9629
	jmp	Lj9630
Lj9629:
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9630:
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj9635
	jmp	Lj9636
Lj9635:
	jmp	Lj9611
Lj9636:
	movl	-24(%ebp),%edx
	leal	-32(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-32(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movb	$1,-37(%ebp)
	jmp	Lj9649
Lj9628:
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
	jle	Lj9654
	jmp	Lj9655
Lj9654:
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	cmpl	$0,%eax
	jl	Lj9656
	jmp	Lj9657
Lj9656:
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9657:
	movl	-28(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj9666
	jmp	Lj9667
Lj9666:
	movl	-52(%ebp),%eax
	decl	(%eax)
	movl	-52(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	seteb	%bl
	jmp	Lj9670
Lj9667:
	movl	-52(%ebp),%eax
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj9670:
	testb	%bl,%bl
	jne	Lj9662
	jmp	Lj9663
Lj9662:
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	call	SYSTEM_FPC_DYNARRAY_CLEAR_INTERNAL$POINTER$POINTER
Lj9663:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj9611
Lj9655:
	movl	-28(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	jne	Lj9681
	jmp	Lj9682
Lj9681:
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
	jg	Lj9695
	jmp	Lj9696
Lj9695:
	movl	-28(%ebp),%eax
	movl	4(%eax),%eax
	incl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj9699
Lj9696:
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-20(%ebp)
Lj9699:
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
	jl	Lj9709
	decl	-16(%ebp)
	.balign 4,0x90
Lj9710:
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
	jg	Lj9710
Lj9709:
	movl	-28(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	TC_SYSTEM_ISMULTITHREAD,%eax
	testl	%eax,%eax
	je	Lj9719
	jmp	Lj9720
Lj9719:
	movl	-52(%ebp),%eax
	decl	(%eax)
	movl	-52(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	seteb	%bl
	jmp	Lj9723
Lj9720:
	movl	-52(%ebp),%eax
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj9723:
	testb	%bl,%bl
	jne	Lj9715
	jmp	Lj9716
Lj9715:
	movl	-36(%ebp),%edx
	movl	-28(%ebp),%eax
	call	SYSTEM_FPC_DYNARRAY_CLEAR_INTERNAL$POINTER$POINTER
Lj9716:
	jmp	Lj9732
Lj9682:
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	-28(%ebp),%edx
	movl	4(%edx),%edx
	incl	%edx
	cmpl	(%ecx,%eax,4),%edx
	jne	Lj9733
	jmp	Lj9734
Lj9733:
	movl	-24(%ebp),%eax
	cmpl	$8,%eax
	jl	Lj9735
	jmp	Lj9737
Lj9737:
	movl	-44(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj9738
	jmp	Lj9736
Lj9738:
	movl	-24(%ebp),%eax
	cmpl	-44(%ebp),%eax
	jl	Lj9735
	jmp	Lj9736
Lj9735:
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9736:
	movl	-28(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	je	Lj9743
	jmp	Lj9744
Lj9743:
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	-28(%ebp),%edx
	movl	4(%edx),%edx
	incl	%edx
	cmpl	(%ecx,%eax,4),%edx
	jg	Lj9745
	jmp	Lj9746
Lj9745:
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
	jmp	Lj9757
Lj9746:
	movl	8(%ebp),%ecx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	-28(%ebp),%edx
	movl	4(%edx),%edx
	incl	%edx
	cmpl	(%ecx,%eax,4),%edx
	jl	Lj9758
	jmp	Lj9759
Lj9758:
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
Lj9759:
Lj9757:
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
	movb	$1,-37(%ebp)
Lj9744:
Lj9734:
Lj9732:
Lj9649:
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj9774
	jmp	Lj9775
Lj9774:
	movl	8(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj9777
	decl	-16(%ebp)
	.balign 4,0x90
Lj9778:
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
	jg	Lj9778
Lj9777:
Lj9775:
	cmpb	$0,-37(%ebp)
	jne	Lj9787
	jmp	Lj9788
Lj9787:
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
Lj9788:
Lj9611:
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
	je	Lj9803
	jmp	Lj9804
Lj9803:
	jmp	Lj9795
Lj9804:
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
	je	Lj9817
	jmp	Lj9816
Lj9817:
	movl	-40(%ebp),%eax
	cmpl	$-3,%eax
	je	Lj9815
	jmp	Lj9816
Lj9815:
	movl	$0,-12(%ebp)
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-40(%ebp)
Lj9816:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj9822
	jmp	Lj9825
Lj9825:
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj9822
	jmp	Lj9824
Lj9824:
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj9822
	jmp	Lj9823
Lj9822:
	movl	%ebp,%edx
	movl	$201,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9823:
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
	jl	Lj9832
	jmp	Lj9833
Lj9832:
	movl	-24(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	%edx,-28(%ebp)
Lj9833:
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
	jb	Lj9856
	cmpl	$7,%eax
	stc
	je	Lj9856
	cmpl	$12,%eax
	stc
	je	Lj9856
	cmpl	$15,%eax
	stc
	je	Lj9856
	clc
Lj9856:
	jc	Lj9854
	jmp	Lj9855
Lj9854:
	movl	-28(%ebp),%ebx
	decl	%ebx
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%ebx
	jl	Lj9858
	decl	-32(%ebp)
	.balign 4,0x90
Lj9859:
	incl	-32(%ebp)
	movl	-44(%ebp),%eax
	movl	-32(%ebp),%edx
	imull	%edx,%eax
	movl	-52(%ebp),%edx
	addl	%edx,%eax
	movl	-48(%ebp),%edx
	call	FPC_ADDREF
	cmpl	-32(%ebp),%ebx
	jg	Lj9859
Lj9858:
Lj9855:
	movl	-52(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj9795:
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
	jle	Lj9868
	jmp	Lj9869
Lj9868:
	leal	-56(%ebp),%eax
	movl	%eax,-64(%ebp)
	jmp	Lj9872
Lj9869:
	movl	-12(%ebp),%edx
	shll	$2,%edx
	leal	-64(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
Lj9872:
	movl	-12(%ebp),%eax
	decl	%eax
	movl	$0,-60(%ebp)
	cmpl	-60(%ebp),%eax
	jl	Lj9878
	decl	-60(%ebp)
	.balign 4,0x90
Lj9879:
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
	jg	Lj9879
Lj9878:
	pushl	-64(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_DYNARR_SETLENGTH
	leal	-56(%ebp),%eax
	cmpl	-64(%ebp),%eax
	jne	Lj9890
	jmp	Lj9891
Lj9890:
	movl	-64(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj9891:
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
	jne	Lj9915
	jmp	Lj9913
Lj9915:
	cmpl	$0,-4(%ebp)
	jne	Lj9914
	jmp	Lj9913
Lj9914:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	jne	Lj9912
	jmp	Lj9913
Lj9912:
	movb	$1,-9(%ebp)
	jmp	Lj9920
Lj9913:
	movb	$0,-9(%ebp)
Lj9920:
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
	jne	Lj9925
	jmp	Lj9924
Lj9925:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	je	Lj9923
	jmp	Lj9924
Lj9923:
	movl	%ebp,%edx
	movl	$219,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj9924:
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
	jne	Lj9938
	jmp	Lj9939
Lj9938:
	movl	-4(%ebp),%eax
	pushl	(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	call	*8(%eax)
	popl	%ebx
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj9939:
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
	jne	Lj9946
	jmp	Lj9947
Lj9946:
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*4(%eax)
	popl	%ebx
Lj9947:
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
	jne	Lj9952
	jmp	Lj9953
Lj9952:
	pushl	-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	*4(%eax)
	popl	%ebx
Lj9953:
	movl	-4(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj9956
	jmp	Lj9957
Lj9956:
	movl	-4(%ebp),%eax
	pushl	(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	call	*8(%eax)
	popl	%ebx
Lj9957:
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
	jne	Lj9968
	jmp	Lj9967
Lj9968:
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
	je	Lj9966
	jmp	Lj9967
Lj9966:
	movb	$1,-9(%ebp)
	jmp	Lj9975
Lj9967:
	movb	$0,-9(%ebp)
Lj9975:
	cmpl	$0,-16(%ebp)
	jne	Lj9976
	jmp	Lj9977
Lj9976:
	pushl	-16(%ebp)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	call	*8(%eax)
	popl	%ebx
Lj9977:
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
	jne	Lj9985
	jmp	Lj9983
Lj9985:
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	$TC_SYSTEM_IOBJECTINSTANCE
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj9984
	jmp	Lj9983
Lj9984:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	jne	Lj9982
	jmp	Lj9983
Lj9982:
	movb	$1,-9(%ebp)
	jmp	Lj9996
Lj9983:
	movb	$0,-9(%ebp)
Lj9996:
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
	jne	Lj10005
	jmp	Lj10004
Lj10005:
	movl	$_$SYSTEM$_Ld25,%edx
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj10007
	jmp	Lj10006
Lj10007:
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
	je	Lj10003
	jmp	Lj10006
Lj10006:
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj10003
	jmp	Lj10004
Lj10003:
	movb	$1,-9(%ebp)
	jmp	Lj10026
Lj10004:
	movb	$0,-9(%ebp)
Lj10026:
	cmpl	$0,-16(%ebp)
	jne	Lj10027
	jmp	Lj10028
Lj10027:
	pushl	-16(%ebp)
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	call	*8(%eax)
	popl	%ebx
Lj10028:
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
	jne	Lj10035
	jmp	Lj10034
Lj10035:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY
	testl	%eax,%eax
	jne	Lj10033
	jmp	Lj10034
Lj10033:
	movb	$1,-9(%ebp)
	jmp	Lj10040
Lj10034:
	movb	$0,-9(%ebp)
Lj10040:
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
	jne	Lj10047
	jmp	Lj10046
Lj10047:
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
	je	Lj10045
	jmp	Lj10046
Lj10045:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj10056
Lj10046:
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_INTF_DECR_REF
	movl	$0,(%ebx)
Lj10056:
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
	jne	Lj10064
	jmp	Lj10062
Lj10064:
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	$TC_SYSTEM_IOBJECTINSTANCE
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj10063
	jmp	Lj10062
Lj10063:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	jne	Lj10061
	jmp	Lj10062
Lj10061:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj10077
Lj10062:
	movl	$0,-12(%ebp)
Lj10077:
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
	jne	Lj10088
	jmp	Lj10087
Lj10088:
	movl	$_$SYSTEM$_Ld26,%edx
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj10090
	jmp	Lj10089
Lj10090:
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
	je	Lj10086
	jmp	Lj10089
Lj10089:
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj10086
	jmp	Lj10087
Lj10086:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj10111
Lj10087:
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_INTF_DECR_REF
	movl	$0,(%ebx)
Lj10111:
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
	jne	Lj10118
	jmp	Lj10117
Lj10118:
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj10116
	jmp	Lj10117
Lj10116:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj10127
Lj10117:
	movl	$0,-12(%ebp)
Lj10127:
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
	jne	Lj10132
	jmp	Lj10133
Lj10132:
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
	jne	Lj10136
	jmp	Lj10137
Lj10136:
	movl	$219,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj10137:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj10148
Lj10133:
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_INTF_DECR_REF
	movl	$0,(%ebx)
Lj10148:
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
	jne	Lj10153
	jmp	Lj10154
Lj10153:
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	$TC_SYSTEM_IOBJECTINSTANCE
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj10157
	jmp	Lj10155
Lj10157:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	jne	Lj10156
	jmp	Lj10155
Lj10155:
	movl	$219,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj10156:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj10172
Lj10154:
	movl	$0,-12(%ebp)
Lj10172:
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
	jne	Lj10177
	jmp	Lj10178
Lj10177:
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$_$SYSTEM$_Ld27,%edx
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj10186
	jmp	Lj10185
Lj10186:
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
	je	Lj10184
	jmp	Lj10185
Lj10185:
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj10184
	jmp	Lj10183
Lj10183:
	movl	$219,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj10184:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj10209
Lj10178:
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_INTF_DECR_REF
	movl	$0,(%ebx)
Lj10209:
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
	jne	Lj10214
	jmp	Lj10215
Lj10214:
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN
	testb	%al,%al
	je	Lj10218
	jmp	Lj10219
Lj10218:
	movl	$219,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj10219:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj10230
Lj10215:
	movl	$0,-12(%ebp)
Lj10230:
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
	ja	Lj10235
	jmp	Lj10236
Lj10235:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj10236:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj10241
	jmp	Lj10242
Lj10241:
	jmp	Lj10233
Lj10242:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj10245
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10251
	jmp	Lj10250
Lj10251:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10249
	jmp	Lj10250
Lj10249:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj10250:
Lj10245:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj10247
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj10255
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10256
	jmp	Lj10257
Lj10256:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj10257:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj10255:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj10254
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj10254:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj10247
Lj10247:
Lj10233:
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
	jg	Lj10264
	jmp	Lj10265
Lj10264:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj10265:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10270
	jmp	Lj10269
Lj10270:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10268
	jmp	Lj10269
Lj10268:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj10269:
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
	jne	Lj10275
	jmp	Lj10276
Lj10275:
	movl	-4(%ebp),%eax
	movl	$1,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj10276:
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
	jmp	Lj10290
	.balign 4,0x90
Lj10289:
	movl	-12(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj10294
	jmp	Lj10295
Lj10294:
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	leal	4(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj10301
	.balign 4,0x90
Lj10300:
	movl	-24(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj10303
	jmp	Lj10304
Lj10303:
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	8(%eax),%eax
	leal	(%edx,%eax,1),%edx
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,(%edx)
Lj10304:
	addl	$20,-24(%ebp)
	decl	-16(%ebp)
Lj10301:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj10300
	jmp	Lj10302
Lj10302:
Lj10295:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
Lj10290:
	cmpl	$0,-12(%ebp)
	jne	Lj10309
	jmp	Lj10291
Lj10309:
	movl	$FPC_EMPTYINTF,%eax
	movl	-12(%ebp),%edx
	cmpl	40(%edx),%eax
	jne	Lj10289
	jmp	Lj10291
Lj10291:
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
	jne	Lj10322
	jmp	Lj10323
Lj10322:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_INITINTERFACEPOINTERS$TCLASS$POINTER
Lj10323:
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
	jne	Lj10342
	jmp	Lj10343
Lj10342:
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
	jne	Lj10355
	jmp	Lj10356
Lj10355:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_INITINTERFACEPOINTERS$TCLASS$POINTER
Lj10356:
	movl	-12(%ebp),%eax
Lj10343:
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
	jmp	Lj10380
	.balign 4,0x90
Lj10379:
	movl	-24(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj10384
	jmp	Lj10385
Lj10384:
	movl	-16(%ebp),%eax
	movl	(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jb	Lj10387
	decl	-20(%ebp)
	.balign 4,0x90
Lj10388:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	-4(%ebp),%edx
	call	SYSTEM_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$LONGINT
	testl	%eax,%eax
	je	Lj10389
	jmp	Lj10390
Lj10389:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	8(%edx,%eax,8),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj10375
Lj10390:
	cmpl	-20(%ebp),%ebx
	ja	Lj10388
Lj10387:
Lj10385:
	movl	-24(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
Lj10380:
	cmpl	$0,-24(%ebp)
	jne	Lj10379
	jmp	Lj10381
Lj10381:
	movl	$0,-12(%ebp)
Lj10375:
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
	jmp	Lj10406
	.balign 4,0x90
Lj10405:
	movl	-24(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj10410
	jmp	Lj10411
Lj10410:
	movl	-16(%ebp),%eax
	movl	(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jb	Lj10413
	decl	-20(%ebp)
	.balign 4,0x90
Lj10414:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	8(%eax,%edx,8),%eax
	cmpl	-4(%ebp),%eax
	je	Lj10415
	jmp	Lj10416
Lj10415:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	4(%edx,%eax,8),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	jmp	Lj10401
Lj10416:
	cmpl	-20(%ebp),%ebx
	ja	Lj10414
Lj10413:
Lj10411:
	movl	-24(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
Lj10406:
	cmpl	$0,-24(%ebp)
	jne	Lj10405
	jmp	Lj10407
Lj10407:
	movl	-12(%ebp),%eax
	movb	$0,(%eax)
Lj10401:
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
	jg	Lj10429
	jmp	Lj10430
Lj10429:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj10438
	.balign 4,0x90
Lj10437:
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10442
	jmp	Lj10443
Lj10442:
	movl	-20(%ebp),%eax
	leal	6(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movzwl	(%eax),%ebx
	decl	%ebx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj10447
	decl	-28(%ebp)
	.balign 4,0x90
Lj10448:
	incl	-28(%ebp)
	movl	-24(%ebp),%eax
	leal	6(%eax),%eax
	movl	-4(%ebp),%edx
	call	SYSTEM_SHORTCOMPARETEXT$SHORTSTRING$SHORTSTRING$$LONGINT
	testl	%eax,%eax
	je	Lj10449
	jmp	Lj10450
Lj10449:
	movl	-24(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	jmp	Lj10427
Lj10450:
	movl	-24(%ebp),%eax
	leal	6(%eax),%edx
	incl	%edx
	movl	-24(%ebp),%eax
	movzbl	6(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
	cmpl	-28(%ebp),%ebx
	jg	Lj10448
Lj10447:
Lj10443:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
Lj10438:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10437
	jmp	Lj10439
Lj10439:
Lj10430:
	movl	$0,-12(%ebp)
Lj10427:
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
	jne	Lj10489
	jmp	Lj10490
Lj10489:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj10494
	.balign 4,0x90
Lj10493:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
Lj10494:
	cmpl	$0,-16(%ebp)
	jne	Lj10498
	jmp	Lj10495
Lj10498:
	movl	-16(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj10493
	jmp	Lj10495
Lj10495:
	movl	-16(%ebp),%eax
	cmpl	-4(%ebp),%eax
	seteb	-9(%ebp)
	jmp	Lj10501
Lj10490:
	movb	$0,-9(%ebp)
Lj10501:
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
	jmp	Lj10519
	.balign 4,0x90
Lj10518:
	movl	-32(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-28(%ebp)
	cmpl	$0,-28(%ebp)
	jne	Lj10523
	jmp	Lj10524
Lj10523:
	movl	-28(%ebp),%eax
	leal	4(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-28(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj10529
Lj10524:
	movl	$0,-16(%ebp)
Lj10529:
	movl	-16(%ebp),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj10533
	decl	-20(%ebp)
	.balign 4,0x90
Lj10534:
	incl	-20(%ebp)
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,8),%eax
	cmpl	-12(%ebp),%eax
	je	Lj10535
	jmp	Lj10536
Lj10535:
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
	jmp	Lj10508
Lj10536:
	cmpl	-20(%ebp),%ebx
	jg	Lj10534
Lj10533:
	movl	-32(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-32(%ebp)
Lj10519:
	cmpl	$0,-32(%ebp)
	jne	Lj10518
	jmp	Lj10520
Lj10520:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*64(%ecx)
Lj10508:
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
	jmp	Lj10566
	.balign 4,0x90
Lj10565:
	movl	-284(%ebp),%eax
	movl	44(%eax),%eax
	movl	%eax,-280(%ebp)
	movl	-280(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10572
	jmp	Lj10571
Lj10572:
	movl	-280(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj10570
	jmp	Lj10571
Lj10570:
	movl	-280(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-268(%ebp)
	movl	-280(%ebp),%eax
	leal	4(%eax),%eax
	movl	%eax,-276(%ebp)
	jmp	Lj10577
Lj10571:
	movl	$0,-268(%ebp)
Lj10577:
	movl	-268(%ebp),%ebx
	decl	%ebx
	movl	$0,-272(%ebp)
	cmpl	-272(%ebp),%ebx
	jl	Lj10581
	decl	-272(%ebp)
	.balign 4,0x90
Lj10582:
	incl	-272(%ebp)
	movl	-276(%ebp),%edx
	movl	-272(%ebp),%eax
	movl	(%edx,%eax,8),%edx
	leal	-264(%ebp),%eax
	call	fpc_shortstr_compare_equal
	testl	%eax,%eax
	je	Lj10583
	jmp	Lj10584
Lj10583:
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
	jmp	Lj10551
Lj10584:
	cmpl	-272(%ebp),%ebx
	jg	Lj10582
Lj10581:
	movl	-284(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-284(%ebp)
Lj10566:
	cmpl	$0,-284(%ebp)
	jne	Lj10565
	jmp	Lj10567
Lj10567:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*76(%ecx)
Lj10551:
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
	jmp	Lj10616
	.balign 4,0x90
Lj10615:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj10620
	jmp	Lj10621
Lj10620:
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
	jl	Lj10631
	decl	-20(%ebp)
	.balign 4,0x90
Lj10632:
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
	jg	Lj10632
Lj10631:
Lj10621:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
Lj10616:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10615
	jmp	Lj10617
Lj10617:
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
	je	Lj10651
	jmp	Lj10648
Lj10651:
	movl	-4(%ebp),%eax
	leal	4(%eax),%ecx
	movl	-8(%ebp),%eax
	leal	4(%eax),%edx
	movl	(%ecx),%eax
	cmpl	(%edx),%eax
	je	Lj10650
	jmp	Lj10648
Lj10650:
	movl	-4(%ebp),%eax
	leal	8(%eax),%edx
	movl	-8(%ebp),%eax
	leal	8(%eax),%ecx
	movl	(%edx),%eax
	cmpl	(%ecx),%eax
	je	Lj10649
	jmp	Lj10648
Lj10649:
	movl	-4(%ebp),%eax
	leal	12(%eax),%edx
	movl	-8(%ebp),%eax
	leal	12(%eax),%ecx
	movl	(%edx),%eax
	cmpl	(%ecx),%eax
	je	Lj10647
	jmp	Lj10648
Lj10647:
	movb	$1,-9(%ebp)
	jmp	Lj10652
Lj10648:
	movb	$0,-9(%ebp)
Lj10652:
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
	jne	Lj10661
	jmp	Lj10660
Lj10661:
	cmpl	$0,-4(%ebp)
	jne	Lj10659
	jmp	Lj10660
Lj10659:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj10664
	decl	%eax
	je	Lj10666
	decl	%eax
	je	Lj10668
	decl	%eax
	je	Lj10665
	decl	%eax
	je	Lj10667
	decl	%eax
	je	Lj10669
	decl	%eax
	je	Lj10665
	jmp	Lj10663
Lj10664:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	%edx,(%eax)
	jmp	Lj10662
Lj10665:
	movl	-8(%ebp),%eax
	movl	8(%eax),%ecx
	movl	-4(%ebp),%eax
	addl	%eax,%ecx
	movl	-12(%ebp),%edx
	movl	(%ecx),%eax
	movl	%eax,(%edx)
	jmp	Lj10662
Lj10666:
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
	jmp	Lj10662
Lj10667:
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
	jmp	Lj10662
Lj10668:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%ecx
	call	*%ecx
	jmp	Lj10662
Lj10669:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	call	*%edx
	movl	-12(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj10662
Lj10663:
Lj10662:
Lj10660:
	movl	-12(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj10698
	jmp	Lj10699
Lj10698:
	movb	$1,-13(%ebp)
	jmp	Lj10700
Lj10699:
	movb	$0,-13(%ebp)
Lj10700:
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
	jne	Lj10703
	jmp	Lj10704
Lj10703:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,(%edx)
	movb	$1,-13(%ebp)
	jmp	Lj10701
Lj10704:
	movl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	.balign 4,0x90
Lj10715:
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
	je	Lj10732
	jmp	Lj10734
Lj10734:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$4,%eax
	jb	Lj10735
Lj10735:
	jc	Lj10732
	jmp	Lj10733
Lj10732:
	jmp	Lj10717
Lj10733:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj10715
Lj10717:
	cmpb	$0,-13(%ebp)
	jne	Lj10740
	jmp	Lj10739
Lj10740:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	je	Lj10741
	cmpl	$3,%eax
	je	Lj10741
Lj10741:
	je	Lj10738
	jmp	Lj10739
Lj10738:
	movl	-8(%ebp),%eax
	pushl	(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	call	*4(%eax)
	popl	%ebx
Lj10739:
Lj10701:
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
	jne	Lj10746
	jmp	Lj10747
Lj10746:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,(%edx)
	movb	$1,-13(%ebp)
	jmp	Lj10744
Lj10747:
	movl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	.balign 4,0x90
Lj10758:
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
	je	Lj10775
	jmp	Lj10777
Lj10777:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$4,%eax
	jb	Lj10778
Lj10778:
	jc	Lj10775
	jmp	Lj10776
Lj10775:
	jmp	Lj10760
Lj10776:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj10758
Lj10760:
	cmpb	$0,-13(%ebp)
	jne	Lj10783
	jmp	Lj10782
Lj10783:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	je	Lj10784
	cmpl	$3,%eax
	je	Lj10784
Lj10784:
	jne	Lj10781
	jmp	Lj10782
Lj10781:
	movl	-8(%ebp),%eax
	pushl	(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	call	*8(%eax)
	popl	%ebx
Lj10782:
Lj10744:
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
Lj10791:
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
	je	Lj10808
	jmp	Lj10810
Lj10810:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$4,%eax
	jb	Lj10811
Lj10811:
	jc	Lj10808
	jmp	Lj10809
Lj10808:
	jmp	Lj10793
Lj10809:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj10791
Lj10793:
	cmpb	$0,-13(%ebp)
	jne	Lj10817
	jmp	Lj10815
Lj10817:
	movl	-20(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj10816
	jmp	Lj10815
Lj10816:
	movl	-20(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	je	Lj10818
	cmpl	$3,%eax
	je	Lj10818
Lj10818:
	je	Lj10814
	jmp	Lj10815
Lj10814:
	movl	-8(%ebp),%eax
	pushl	(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	call	*4(%eax)
	popl	%ebx
Lj10815:
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
	jmp	Lj10836
	.balign 4,0x90
Lj10835:
	movl	-24(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj10840
	jmp	Lj10841
Lj10840:
	movl	-20(%ebp),%eax
	movl	(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj10843
	decl	-16(%ebp)
	.balign 4,0x90
Lj10844:
	incl	-16(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	imull	$20,%eax
	leal	4(%edx,%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj10849
	jmp	Lj10848
Lj10849:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	call	SYSTEM_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
	testb	%al,%al
	jne	Lj10847
	jmp	Lj10848
Lj10847:
	jmp	Lj10831
Lj10848:
	cmpl	-16(%ebp),%ebx
	jg	Lj10844
Lj10843:
Lj10841:
	movl	-24(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
Lj10836:
	cmpl	$0,-24(%ebp)
	jne	Lj10856
	jmp	Lj10837
Lj10856:
	movl	$FPC_EMPTYINTF,%eax
	movl	-24(%ebp),%edx
	cmpl	40(%edx),%eax
	jne	Lj10835
	jmp	Lj10837
Lj10837:
	movl	$0,-12(%ebp)
Lj10831:
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
	jmp	Lj10864
	.balign 4,0x90
Lj10863:
	movl	-24(%ebp),%eax
	movl	40(%eax),%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj10868
	jmp	Lj10869
Lj10868:
	movl	-20(%ebp),%eax
	movl	(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj10871
	decl	-16(%ebp)
	.balign 4,0x90
Lj10872:
	incl	-16(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	imull	$20,%eax
	leal	4(%edx,%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj10877
	jmp	Lj10876
Lj10877:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	call	fpc_shortstr_compare_equal
	testl	%eax,%eax
	je	Lj10875
	jmp	Lj10876
Lj10875:
	jmp	Lj10859
Lj10876:
	cmpl	-16(%ebp),%ebx
	jg	Lj10872
Lj10871:
Lj10869:
	movl	-24(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-24(%ebp)
Lj10864:
	cmpl	$0,-24(%ebp)
	jne	Lj10884
	jmp	Lj10865
Lj10884:
	movl	$FPC_EMPTYINTF,%eax
	movl	-24(%ebp),%edx
	cmpl	40(%edx),%eax
	jne	Lj10863
	jmp	Lj10865
Lj10865:
	movl	$0,-12(%ebp)
Lj10859:
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
	jne	Lj10897
	jmp	Lj10898
Lj10897:
	movl	-12(%ebp),%eax
	incl	%eax
	movzbl	(%eax),%eax
	addl	$2,%eax
	addl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leal	10(%eax),%eax
	movl	-8(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	jmp	Lj10903
Lj10898:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
Lj10903:
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
	jne	Lj10926
	jmp	Lj10927
Lj10926:
	movl	$0,-4(%ebp)
	jmp	Lj10936
Lj10927:
	movl	$-2147467262,-4(%ebp)
Lj10936:
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
	je	Lj10951
	jmp	Lj10952
Lj10951:
	movl	8(%ebp),%eax
	movl	$1,%edx
	movl	8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj10952:
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
	je	Lj10961
	jmp	Lj10962
Lj10961:
	movl	-8(%ebp),%eax
	decl	(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	seteb	%bl
	jmp	Lj10965
Lj10962:
	movl	-8(%ebp),%eax
	call	SYSTEM_CPUDECLOCKED$LONGINT$$BOOLEAN
	movb	%al,%bl
Lj10965:
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
	jne	Lj10972
	jmp	Lj10973
Lj10972:
	movl	$204,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj10973:
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
	jne	Lj10982
	jmp	Lj10983
Lj10982:
	movl	-8(%ebp),%eax
	movl	$1,4(%eax)
Lj10983:
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
	ja	Lj10988
	jmp	Lj10989
Lj10988:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj10989:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj10994
	jmp	Lj10995
Lj10994:
	jmp	Lj10986
Lj10995:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj10998
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj11002
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,4(%edx)
Lj11002:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj11003
	call	FPC_RERAISE
Lj11003:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj11013
	jmp	Lj11012
Lj11013:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj11011
	jmp	Lj11012
Lj11011:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj11012:
Lj10998:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj11000
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj11017
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj11018
	jmp	Lj11019
Lj11018:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj11019:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj11017:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj11016
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj11016:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj11000
Lj11000:
Lj10986:
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
	jne	Lj11052
	jmp	Lj11053
Lj11052:
	movl	$0,-4(%ebp)
	jmp	Lj11062
Lj11053:
	movl	$-2147467262,-4(%ebp)
Lj11062:
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
	je	Lj11069
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11070
Lj11069:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11070:
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
	je	Lj11075
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11076
Lj11075:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11076:
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj11077
	jmp	Lj11078
Lj11077:
	movl	-8(%ebp),%eax
	incl	12(%eax)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj11081
Lj11078:
	movw	$231,%ax
	call	SYSTEM_RUNERROR$WORD
Lj11081:
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
	je	Lj11088
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11089
Lj11088:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11089:
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj11090
	jmp	Lj11091
Lj11090:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$0,%eax
	jg	Lj11092
	jmp	Lj11093
Lj11092:
	movl	-4(%ebp),%eax
	decl	12(%eax)
Lj11093:
	jmp	Lj11094
Lj11091:
	movw	$231,%ax
	call	SYSTEM_RUNERROR$WORD
Lj11094:
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
	je	Lj11101
	movl	U_SYSTEM_EXCEPTADDRSTACK,%eax
	call	*%edx
	jmp	Lj11102
Lj11101:
	movl	$U_SYSTEM_EXCEPTADDRSTACK+4,%eax
Lj11102:
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
	je	Lj11117
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11118
Lj11117:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11118:
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj11119
	jmp	Lj11120
Lj11119:
	movl	$24,%eax
	call	fpc_getmem
	movl	-20(%ebp),%edx
	movl	%eax,(%edx)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	movl	$0,8(%eax)
	jmp	Lj11129
Lj11120:
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
Lj11129:
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
	jmp	Lj11159
	.balign 4,0x90
Lj11158:
	movl	-40(%ebp),%eax
	call	SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
	movl	%eax,-48(%ebp)
	movl	-40(%ebp),%eax
	call	SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER
	movl	%eax,-44(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj11169
	jmp	Lj11171
Lj11171:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj11169
	jmp	Lj11170
Lj11169:
	jmp	Lj11160
Lj11170:
	movl	-28(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jge	Lj11172
	jmp	Lj11173
Lj11172:
	addl	$16,-24(%ebp)
	movl	-24(%ebp),%edx
	shll	$2,%edx
	leal	-32(%ebp),%eax
	call	SYSTEM_REALLOCMEM$POINTER$LONGWORD$$POINTER
Lj11173:
	movl	-32(%ebp),%ecx
	movl	-28(%ebp),%eax
	movl	-48(%ebp),%edx
	movl	%edx,(%ecx,%eax,4)
	incl	-28(%ebp)
	movl	-40(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-44(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj11159:
	movl	-28(%ebp),%eax
	cmpl	TC_SYSTEM_RAISEMAXFRAMECOUNT,%eax
	jl	Lj11185
	jmp	Lj11160
Lj11185:
	movl	-40(%ebp),%eax
	cmpl	-36(%ebp),%eax
	ja	Lj11184
	jmp	Lj11160
Lj11184:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11186
	movl	U_SYSTEM_STACKBOTTOM,%eax
	call	*%edx
	movl	%eax,%ebx
	jmp	Lj11187
Lj11186:
	movl	$U_SYSTEM_STACKBOTTOM+4,%ebx
Lj11187:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11188
	movl	U_SYSTEM_STACKLENGTH,%eax
	call	*%edx
	jmp	Lj11189
Lj11188:
	movl	$U_SYSTEM_STACKLENGTH+4,%eax
Lj11189:
	movl	(%ebx),%edx
	movl	(%eax),%eax
	addl	%eax,%edx
	cmpl	-40(%ebp),%edx
	ja	Lj11158
	jmp	Lj11160
Lj11160:
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
	je	Lj11198
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11199
Lj11198:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11199:
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	TC_SYSTEM_EXCEPTPROC,%eax
	testl	%eax,%eax
	jne	Lj11202
	jmp	Lj11201
Lj11202:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj11200
	jmp	Lj11201
Lj11200:
	movl	-4(%ebp),%ebx
	pushl	20(%ebx)
	movl	16(%ebx),%ecx
	movl	4(%ebx),%edx
	movl	(%ebx),%eax
	movl	TC_SYSTEM_EXCEPTPROC,%esi
	call	*%esi
	movl	$217,%eax
	call	SYSTEM_HALT$LONGINT
Lj11201:
	movl	TC_SYSTEM_ERRORADDR,%eax
	testl	%eax,%eax
	je	Lj11215
	jmp	Lj11216
Lj11215:
	movw	$217,%ax
	call	SYSTEM_RUNERROR$WORD
	jmp	Lj11219
Lj11216:
	movzwl	TC_SYSTEM_ERRORCODE,%eax
	call	SYSTEM_HALT$LONGINT
Lj11219:
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
	je	Lj11234
	movl	U_SYSTEM_EXCEPTADDRSTACK,%eax
	call	*%edx
	jmp	Lj11235
Lj11234:
	movl	$U_SYSTEM_EXCEPTADDRSTACK+4,%eax
Lj11235:
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj11236
	jmp	Lj11237
Lj11236:
	call	SYSTEM_DOUNHANDLEDEXCEPTION
Lj11237:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11240
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11241
Lj11240:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11241:
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	TC_SYSTEM_RAISEPROC,%eax
	testl	%eax,%eax
	jne	Lj11244
	jmp	Lj11243
Lj11244:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj11242
	jmp	Lj11243
Lj11242:
	movl	-20(%ebp),%ebx
	pushl	20(%ebx)
	movl	16(%ebx),%ecx
	movl	4(%ebx),%edx
	movl	(%ebx),%eax
	movl	TC_SYSTEM_RAISEPROC,%esi
	call	*%esi
Lj11243:
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
	je	Lj11263
	movl	U_SYSTEM_EXCEPTADDRSTACK,%eax
	call	*%edx
	jmp	Lj11264
Lj11263:
	movl	$U_SYSTEM_EXCEPTADDRSTACK+4,%eax
Lj11264:
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj11265
	jmp	Lj11266
Lj11265:
	movl	$255,%eax
	call	SYSTEM_HALT$LONGINT
	jmp	Lj11269
Lj11266:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%eax),%eax
	movl	%eax,(%edx)
Lj11269:
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
	je	Lj11276
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11277
Lj11276:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11277:
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj11278
	jmp	Lj11279
Lj11278:
	movl	$1,%eax
	call	SYSTEM_HALT$LONGINT
	jmp	Lj11282
Lj11279:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj11283
	jmp	Lj11284
Lj11283:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj11287
Lj11284:
	movl	$0,-4(%ebp)
Lj11287:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11294
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11295
Lj11294:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11295:
	movl	-12(%ebp),%edx
	movl	8(%edx),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	cmpl	$0,20(%eax)
	jne	Lj11296
	jmp	Lj11297
Lj11296:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj11297:
	movl	-8(%ebp),%eax
	call	fpc_freemem
	movl	$0,TC_SYSTEM_ERRORADDR
Lj11282:
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
	je	Lj11308
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11309
Lj11308:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11309:
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj11312
	jmp	Lj11310
Lj11312:
	movl	-12(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj11311
	jmp	Lj11310
Lj11310:
	movl	$1,%eax
	call	SYSTEM_HALT$LONGINT
	jmp	Lj11315
Lj11311:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj11316
	jmp	Lj11317
Lj11316:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj11320
Lj11317:
	movl	$0,-4(%ebp)
Lj11320:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
	movl	-8(%ebp),%eax
	cmpl	$0,20(%eax)
	jne	Lj11327
	jmp	Lj11328
Lj11327:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
Lj11328:
	movl	-8(%ebp),%eax
	call	fpc_freemem
Lj11315:
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
	je	Lj11337
	movl	U_SYSTEM_EXCEPTADDRSTACK,%eax
	call	*%edx
	jmp	Lj11338
Lj11337:
	movl	$U_SYSTEM_EXCEPTADDRSTACK+4,%eax
Lj11338:
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj11339
	jmp	Lj11340
Lj11339:
	call	SYSTEM_DOUNHANDLEDEXCEPTION
Lj11340:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11343
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11344
Lj11343:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11344:
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
	je	Lj11353
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11354
Lj11353:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11354:
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj11355
	jmp	Lj11356
Lj11355:
	movl	$255,%eax
	call	SYSTEM_HALT$LONGINT
Lj11356:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	TC_SYSTEM_CATCHALLEXCEPTIONS,%eax
	je	Lj11362
	jmp	Lj11363
Lj11363:
	movl	-16(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	fpc_do_is
	testb	%al,%al
	jne	Lj11362
	jmp	Lj11361
Lj11361:
	movl	$0,-8(%ebp)
	jmp	Lj11370
Lj11362:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
Lj11370:
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
	je	Lj11381
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11382
Lj11381:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11382:
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj11383
	jmp	Lj11384
Lj11383:
	movl	$0,-4(%ebp)
	jmp	Lj11387
Lj11384:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-4(%ebp)
Lj11387:
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
	je	Lj11394
	movl	U_SYSTEM_EXCEPTOBJECTSTACK,%eax
	call	*%edx
	jmp	Lj11395
Lj11394:
	movl	$U_SYSTEM_EXCEPTOBJECTSTACK+4,%eax
Lj11395:
	movl	$0,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11398
	movl	U_SYSTEM_EXCEPTADDRSTACK,%eax
	call	*%edx
	jmp	Lj11399
Lj11398:
	movl	$U_SYSTEM_EXCEPTADDRSTACK+4,%eax
Lj11399:
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
	jne	Lj11410
	jmp	Lj11411
Lj11410:
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_VARCLEARPROC,%edx
	call	*%edx
Lj11411:
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
	jne	Lj11416
	jmp	Lj11417
Lj11416:
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_VARADDREFPROC,%edx
	call	*%edx
Lj11417:
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
	jne	Lj11422
	jmp	Lj11423
Lj11422:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_VARCOPYPROC,%ecx
	call	*%ecx
Lj11423:
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
	jne	Lj11432
	jmp	Lj11433
Lj11432:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	TC_SYSTEM_VARCOPYPROC,%ecx
	call	*%ecx
Lj11433:
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
	je	Lj11442
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj11443
Lj11442:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj11443:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj11440
	jmp	Lj11441
Lj11440:
	jmp	Lj11438
Lj11441:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj11445
	subl	$55217,%eax
	je	Lj11447
	decl	%eax
	je	Lj11446
	jmp	Lj11445
Lj11446:
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj11448
	jmp	Lj11449
Lj11448:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+180,%ecx
	call	*%ecx
	jmp	Lj11454
Lj11449:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+176,%ebx
	call	*%ebx
Lj11454:
	jmp	Lj11444
Lj11447:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11463
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj11464
Lj11463:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj11464:
	movw	$105,(%eax)
	jmp	Lj11444
Lj11445:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj11467
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj11468
Lj11467:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj11468:
	movw	$103,(%eax)
Lj11444:
Lj11438:
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
	jne	Lj11471
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
Lj11471:
	call	FPC_POPADDRSTACK
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-68(%ebp),%eax
	call	FPC_FINALIZE
	popl	%eax
	testl	%eax,%eax
	je	Lj11472
	call	FPC_RERAISE
Lj11472:
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
	jne	Lj11664
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
Lj11664:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj11665
	call	FPC_RERAISE
Lj11665:
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
	jne	Lj11677
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
Lj11677:
	call	FPC_POPADDRSTACK
	leal	-48(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-48(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj11678
	call	FPC_RERAISE
Lj11678:
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
	jg	Lj11814
	jmp	Lj11815
Lj11814:
	movb	-260(%ebp),%al
	movb	%al,-5(%ebp)
Lj11815:
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
	jne	Lj11844
	movl	-4(%ebp),%edx
	leal	-12(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+36,%ecx
	call	*%ecx
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_UTF8ENCODE$UNICODESTRING$$UTF8STRING
Lj11844:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj11845
	call	FPC_RERAISE
Lj11845:
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
	jg	Lj12133
	jmp	Lj12134
Lj12133:
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
	jmp	Lj12143
Lj12134:
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
Lj12143:
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
	jg	Lj12154
	jmp	Lj12155
Lj12154:
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
	jmp	Lj12164
Lj12155:
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
Lj12164:
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
	jg	Lj12257
	jmp	Lj12258
Lj12257:
	movb	-260(%ebp),%al
	movb	%al,-5(%ebp)
	jmp	Lj12261
Lj12258:
	movb	$0,-5(%ebp)
Lj12261:
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
	jne	Lj12266
	movl	-4(%ebp),%edx
	leal	-12(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+36,%ecx
	call	*%ecx
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj12275
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj12275:
	cmpl	$0,%eax
	jg	Lj12273
	jmp	Lj12274
Lj12273:
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
	jmp	Lj12278
Lj12274:
	movw	$0,-6(%ebp)
Lj12278:
Lj12266:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj12267
	call	FPC_RERAISE
Lj12267:
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
	jne	Lj12447
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
Lj12447:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj12448
	call	FPC_RERAISE
Lj12448:
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
	jne	Lj12574
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
Lj12574:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj12575
	call	FPC_RERAISE
Lj12575:
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
	jne	Lj12589
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
Lj12589:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-4(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj12590
	call	FPC_RERAISE
Lj12590:
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
	jne	Lj12604
	leal	-28(%ebp),%edx
	leal	-320(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+28,%ecx
	call	*%ecx
	leal	-320(%ebp),%eax
	movb	-8(%ebp),%dl
	call	SYSTEM_POS$SHORTSTRING$CHAR$$LONGINT
	movl	%eax,-12(%ebp)
Lj12604:
	call	FPC_POPADDRSTACK
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-28(%ebp),%eax
	call	FPC_DECREF
	popl	%eax
	testl	%eax,%eax
	je	Lj12605
	call	FPC_RERAISE
Lj12605:
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
	jne	Lj12619
	leal	-28(%ebp),%edx
	leal	-320(%ebp),%eax
	movl	U_SYSTEM_VARIANTMANAGER+28,%ecx
	call	*%ecx
	leal	-320(%ebp),%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT
	movl	%eax,-12(%ebp)
Lj12619:
	call	FPC_POPADDRSTACK
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-28(%ebp),%eax
	call	FPC_DECREF
	popl	%eax
	testl	%eax,%eax
	je	Lj12620
	call	FPC_RERAISE
Lj12620:
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
	jne	Lj12634
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
Lj12634:
	call	FPC_POPADDRSTACK
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-28(%ebp),%eax
	call	FPC_DECREF
	popl	%eax
	testl	%eax,%eax
	je	Lj12635
	call	FPC_RERAISE
Lj12635:
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
	jne	Lj12649
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
Lj12649:
	call	FPC_POPADDRSTACK
	leal	-68(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-68(%ebp)
	movl	$INIT_SYSTEM_VARIANT,%edx
	leal	-28(%ebp),%eax
	call	FPC_DECREF
	popl	%eax
	testl	%eax,%eax
	je	Lj12650
	call	FPC_RERAISE
Lj12650:
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
	jne	Lj12664
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
Lj12664:
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
	je	Lj12665
	call	FPC_RERAISE
Lj12665:
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
	jb	Lj12704
	subb	$9,%al
	subb	$1,%al
	jbe	Lj12705
	decb	%al
	je	Lj12706
	decb	%al
	je	Lj12707
	decb	%al
	je	Lj12708
	decb	%al
	je	Lj12705
	subb	$2,%al
	je	Lj12708
	subb	$5,%al
	je	Lj12705
	subb	$3,%al
	je	Lj12705
	jmp	Lj12704
Lj12705:
	movl	$4,-8(%ebp)
	jmp	Lj12703
Lj12706:
	movl	$16,-8(%ebp)
	jmp	Lj12703
Lj12707:
	movl	-4(%ebp),%eax
	call	SYSTEM_RTTIARRAYSIZE$POINTER$$LONGINT
	movl	%eax,-8(%ebp)
	jmp	Lj12703
Lj12708:
	movl	-4(%ebp),%eax
	call	SYSTEM_RTTIRECORDSIZE$POINTER$$LONGINT
	movl	%eax,-8(%ebp)
	jmp	Lj12703
Lj12704:
	movl	$-1,-8(%ebp)
Lj12703:
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
	jl	Lj12734
	decl	-20(%ebp)
	.balign 4,0x90
Lj12735:
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
	jg	Lj12735
Lj12734:
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
	jl	Lj12749
	decl	-16(%ebp)
	.balign 4,0x90
Lj12750:
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
	jg	Lj12750
Lj12749:
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
	jb	Lj12758
	subb	$9,%al
	subb	$1,%al
	jbe	Lj12759
	decb	%al
	je	Lj12762
	decb	%al
	je	Lj12760
	decb	%al
	je	Lj12761
	decb	%al
	je	Lj12759
	subb	$2,%al
	je	Lj12761
	subb	$5,%al
	je	Lj12759
	subb	$3,%al
	je	Lj12759
	jmp	Lj12758
Lj12759:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj12757
Lj12760:
	movl	$FPC_INITIALIZE,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12757
Lj12761:
	movl	$FPC_INITIALIZE,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_RECORDRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12757
Lj12762:
	movl	-4(%ebp),%eax
	call	SYSTEM_VARIANT_INIT$TVARDATA
	jmp	Lj12757
Lj12758:
Lj12757:
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
	jb	Lj12782
	subb	$9,%al
	je	Lj12783
	subb	$2,%al
	je	Lj12789
	decb	%al
	je	Lj12785
	decb	%al
	je	Lj12786
	decb	%al
	je	Lj12787
	subb	$2,%al
	je	Lj12786
	subb	$5,%al
	je	Lj12788
	subb	$3,%al
	je	Lj12784
	jmp	Lj12782
Lj12783:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj12781
Lj12784:
	movl	-4(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj12781
Lj12785:
	movl	$FPC_FINALIZE,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12781
Lj12786:
	movl	$FPC_FINALIZE,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_RECORDRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12781
Lj12787:
	movl	-4(%ebp),%eax
	call	FPC_INTF_DECR_REF
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj12781
Lj12788:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	call	FPC_DYNARRAY_DECR_REF
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj12781
Lj12789:
	movl	-4(%ebp),%eax
	call	SYSTEM_VARIANT_CLEAR$TVARDATA
	jmp	Lj12781
Lj12782:
Lj12781:
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
	jb	Lj12825
	subb	$9,%al
	je	Lj12826
	subb	$2,%al
	je	Lj12832
	decb	%al
	je	Lj12828
	decb	%al
	je	Lj12829
	decb	%al
	je	Lj12831
	subb	$2,%al
	je	Lj12829
	subb	$5,%al
	je	Lj12830
	subb	$3,%al
	je	Lj12827
	jmp	Lj12825
Lj12826:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	FPC_ANSISTR_INCR_REF
	jmp	Lj12824
Lj12827:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	FPC_UNICODESTR_INCR_REF
	jmp	Lj12824
Lj12828:
	movl	$FPC_ADDREF,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12824
Lj12829:
	movl	$FPC_ADDREF,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_RECORDRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12824
Lj12830:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	FPC_DYNARRAY_INCR_REF
	jmp	Lj12824
Lj12831:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	FPC_INTF_INCR_REF
	jmp	Lj12824
Lj12832:
	movl	-4(%ebp),%eax
	call	SYSTEM_VARIANT_ADDREF$TVARDATA
	jmp	Lj12824
Lj12825:
Lj12824:
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
	jb	Lj12858
	subb	$9,%al
	je	Lj12859
	subb	$2,%al
	je	Lj12865
	decb	%al
	je	Lj12861
	decb	%al
	je	Lj12862
	decb	%al
	je	Lj12864
	subb	$2,%al
	je	Lj12862
	subb	$5,%al
	je	Lj12863
	subb	$3,%al
	je	Lj12860
	jmp	Lj12858
Lj12859:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	jmp	Lj12857
Lj12860:
	movl	-4(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	jmp	Lj12857
Lj12861:
	movl	$FPC_DECREF,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_ARRAYRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12857
Lj12862:
	movl	$FPC_DECREF,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_RECORDRTTI$POINTER$POINTER$TRTTIPROC
	jmp	Lj12857
Lj12863:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	call	FPC_DYNARRAY_DECR_REF
	jmp	Lj12857
Lj12864:
	movl	-4(%ebp),%eax
	call	FPC_INTF_DECR_REF
	jmp	Lj12857
Lj12865:
	movl	-4(%ebp),%eax
	call	SYSTEM_VARIANT_CLEAR$TVARDATA
	jmp	Lj12857
Lj12858:
Lj12857:
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
	jb	Lj12895
	subb	$9,%al
	je	Lj12896
	subb	$2,%al
	je	Lj12902
	decb	%al
	je	Lj12898
	decb	%al
	je	Lj12899
	decb	%al
	je	Lj12901
	subb	$2,%al
	je	Lj12899
	subb	$5,%al
	je	Lj12900
	subb	$3,%al
	je	Lj12897
	jmp	Lj12895
Lj12896:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	jmp	Lj12894
Lj12897:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	FPC_UNICODESTR_ASSIGN
	jmp	Lj12894
Lj12898:
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
	jl	Lj12920
	decl	-44(%ebp)
	.balign 4,0x90
Lj12921:
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
	jg	Lj12921
Lj12920:
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax),%ecx
	movl	4(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-16(%ebp)
	jmp	Lj12894
Lj12899:
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
	jl	Lj12943
	decl	-44(%ebp)
	.balign 4,0x90
Lj12944:
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
	jg	Lj12949
	jmp	Lj12950
Lj12949:
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
Lj12950:
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
	jg	Lj12944
Lj12943:
	movl	-16(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jg	Lj12967
	jmp	Lj12968
Lj12967:
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
Lj12968:
	jmp	Lj12894
Lj12900:
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
	jmp	Lj12894
Lj12901:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	FPC_INTF_INCR_REF
	movl	-8(%ebp),%eax
	call	FPC_INTF_DECR_REF
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	jmp	Lj12894
Lj12902:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	TC_SYSTEM_VARCOPYPROC,%ecx
	call	*%ecx
	movl	$16,-16(%ebp)
	jmp	Lj12894
Lj12895:
Lj12894:
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
	jg	Lj13009
	jmp	Lj13010
Lj13009:
	movl	-12(%ebp),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj13012
	decl	-16(%ebp)
	.balign 4,0x90
Lj13013:
	incl	-16(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	call	FPC_INITIALIZE
	cmpl	-16(%ebp),%ebx
	jg	Lj13013
Lj13012:
Lj13010:
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
	jg	Lj13024
	jmp	Lj13025
Lj13024:
	movl	-12(%ebp),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj13027
	decl	-16(%ebp)
	.balign 4,0x90
Lj13028:
	incl	-16(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	call	FPC_FINALIZE
	cmpl	-16(%ebp),%ebx
	jg	Lj13028
Lj13027:
Lj13025:
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
	jg	Lj13039
	jmp	Lj13040
Lj13039:
	movl	-12(%ebp),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj13042
	decl	-16(%ebp)
	.balign 4,0x90
Lj13043:
	incl	-16(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	call	FPC_ADDREF
	cmpl	-16(%ebp),%ebx
	jg	Lj13043
Lj13042:
Lj13040:
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
	jg	Lj13054
	jmp	Lj13055
Lj13054:
	movl	-12(%ebp),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj13057
	decl	-16(%ebp)
	.balign 4,0x90
Lj13058:
	incl	-16(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	-8(%ebp),%edx
	call	FPC_DECREF
	cmpl	-16(%ebp),%ebx
	jg	Lj13058
Lj13057:
Lj13055:
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
Lj13069:
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
	jl	Lj13069
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
	jne	Lj13076
	jmp	Lj13077
Lj13076:
	movl	$625,TC_SYSTEM_MTI
Lj13077:
	movl	TC_SYSTEM_MTI,%eax
	cmpl	$624,%eax
	jge	Lj13080
	jmp	Lj13081
Lj13080:
	movl	TC_SYSTEM_MTI,%eax
	cmpl	$625,%eax
	je	Lj13082
	jmp	Lj13083
Lj13082:
	movl	U_SYSTEM_RANDSEED,%eax
	call	SYSTEM_SGENRAND_MT19937$LONGINT
	movl	U_SYSTEM_RANDSEED,%eax
	notl	%eax
	movl	%eax,U_SYSTEM_RANDSEED
	movl	U_SYSTEM_RANDSEED,%eax
	movl	%eax,TC_SYSTEM_OLDRANDSEED
Lj13083:
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.balign 4,0x90
Lj13092:
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
	jl	Lj13092
	movl	$227,-12(%ebp)
	decl	-12(%ebp)
	.balign 4,0x90
Lj13099:
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
	jl	Lj13099
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
Lj13081:
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
	jl	Lj13124
	jmp	Lj13125
Lj13124:
	incl	-4(%ebp)
Lj13125:
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
	jne	Lj13138
	cmpl	$0,%edx
	jne	Lj13138
	jmp	Lj13139
Lj13138:
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	-4(%ebp)
	pushl	-8(%ebp)
	call	fpc_mod_int64
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	jmp	Lj13146
Lj13139:
	movl	$0,-8(%ebp)
	movl	$0,-4(%ebp)
Lj13146:
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
	je	Lj13197
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj13198
Lj13197:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj13198:
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj13199
	jmp	Lj13200
Lj13199:
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-8(%ebp),%eax
	movw	$0,(%eax)
	movl	%ebp,%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj13200:
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
	je	Lj13213
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj13214
Lj13213:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj13214:
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
	je	Lj13223
	movl	U_SYSTEM_THREADID,%eax
	call	*%edx
	jmp	Lj13224
Lj13223:
	movl	$U_SYSTEM_THREADID+4,%eax
Lj13224:
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
	jl	Lj13227
	jmp	Lj13228
Lj13227:
	cmpl	$0,TC_SYSTEM_SAFECALLERRORPROC
	jne	Lj13229
	jmp	Lj13230
Lj13229:
	movl	%ebp,%edx
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_SAFECALLERRORPROC,%ecx
	call	*%ecx
Lj13230:
	movl	%ebp,%edx
	movl	$229,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj13228:
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
	jne	Lj13243
	jmp	Lj13244
Lj13243:
	jmp	Lj13241
Lj13244:
	call	SYSTEM_SPTR$$POINTER
	subl	$16384,%eax
	movl	%eax,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13249
	movl	U_SYSTEM_STACKBOTTOM,%eax
	call	*%edx
	jmp	Lj13250
Lj13249:
	movl	$U_SYSTEM_STACKBOTTOM+4,%eax
Lj13250:
	movl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	jae	Lj13247
	jmp	Lj13248
Lj13247:
	movb	$1,TC_SYSTEM_STACKERROR
	movl	$202,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj13248:
Lj13241:
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
	jl	Lj13258
	decl	-4(%ebp)
	.balign 4,0x90
Lj13259:
	incl	-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,INITFINAL(,%eax,8)
	jne	Lj13260
	jmp	Lj13261
Lj13260:
	movl	-4(%ebp),%eax
	movl	INITFINAL(,%eax,8),%eax
	call	*%eax
Lj13261:
	movl	-4(%ebp),%eax
	movl	%eax,INITFINAL+4
	cmpl	-4(%ebp),%ebx
	jg	Lj13259
Lj13258:
	cmpl	$0,TC_SYSTEM_INITPROC
	jne	Lj13264
	jmp	Lj13265
Lj13264:
	movl	TC_SYSTEM_INITPROC,%eax
	call	*%eax
Lj13265:
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
	jmp	Lj13275
	.balign 4,0x90
Lj13274:
	decl	INITFINAL+4
	movl	INITFINAL+4,%eax
	incl	%eax
	cmpl	$0,INITFINAL+4(,%eax,8)
	jne	Lj13277
	jmp	Lj13278
Lj13277:
	movl	INITFINAL+4,%eax
	incl	%eax
	movl	INITFINAL+4(,%eax,8),%eax
	call	*%eax
Lj13278:
Lj13275:
	movl	INITFINAL+4,%eax
	cmpl	$0,%eax
	jg	Lj13274
	jmp	Lj13276
Lj13276:
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
	je	Lj13283
	movl	U_SYSTEM_OUTPUT,%eax
	call	*%edx
	jmp	Lj13284
Lj13283:
	movl	$U_SYSTEM_OUTPUT+4,%eax
Lj13284:
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj13281
	jmp	Lj13282
Lj13281:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13287
	movl	U_SYSTEM_OUTPUT,%eax
	call	*%edx
	jmp	Lj13288
Lj13287:
	movl	$U_SYSTEM_OUTPUT+4,%eax
Lj13288:
	call	SYSTEM_FLUSH$TEXT
Lj13282:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13291
	movl	U_SYSTEM_ERROUTPUT,%eax
	call	*%edx
	jmp	Lj13292
Lj13291:
	movl	$U_SYSTEM_ERROUTPUT+4,%eax
Lj13292:
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj13289
	jmp	Lj13290
Lj13289:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13295
	movl	U_SYSTEM_ERROUTPUT,%eax
	call	*%edx
	jmp	Lj13296
Lj13295:
	movl	$U_SYSTEM_ERROUTPUT+4,%eax
Lj13296:
	call	SYSTEM_FLUSH$TEXT
Lj13290:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13299
	movl	U_SYSTEM_STDOUT,%eax
	call	*%edx
	jmp	Lj13300
Lj13299:
	movl	$U_SYSTEM_STDOUT+4,%eax
Lj13300:
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj13297
	jmp	Lj13298
Lj13297:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13303
	movl	U_SYSTEM_STDOUT,%eax
	call	*%edx
	jmp	Lj13304
Lj13303:
	movl	$U_SYSTEM_STDOUT+4,%eax
Lj13304:
	call	SYSTEM_FLUSH$TEXT
Lj13298:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13307
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj13308
Lj13307:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj13308:
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj13305
	jmp	Lj13306
Lj13305:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13311
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj13312
Lj13311:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj13312:
	call	SYSTEM_FLUSH$TEXT
Lj13306:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INTERNALEXIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$272,%esp
	movl	%ebx,-272(%ebp)
	jmp	Lj13316
	.balign 4,0x90
Lj13315:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13320
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj13321
Lj13320:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj13321:
	movw	$0,(%eax)
	movl	TC_SYSTEM_EXITPROC,%eax
	movl	%eax,-4(%ebp)
	movl	$0,TC_SYSTEM_EXITPROC
	movl	-4(%ebp),%eax
	call	*%eax
Lj13316:
	movl	TC_SYSTEM_EXITPROC,%eax
	testl	%eax,%eax
	jne	Lj13315
	jmp	Lj13317
Lj13317:
	call	SYSTEM_FINALIZEUNITS
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13328
	movl	U_SYSTEM_STDOUT,%eax
	call	*%edx
	jmp	Lj13329
Lj13328:
	movl	$U_SYSTEM_STDOUT+4,%eax
Lj13329:
	movl	%eax,-8(%ebp)
	movl	TC_SYSTEM_ERRORADDR,%eax
	testl	%eax,%eax
	jne	Lj13330
	jmp	Lj13331
Lj13330:
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
Lj13331:
	call	SYSTEM_SYSFLUSHSTDIO
	cmpl	$0,U_SYSTEM_ARGV
	jne	Lj13392
	jmp	Lj13393
Lj13392:
	movl	U_SYSTEM_ARGC,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj13395
	decl	-12(%ebp)
	.balign 4,0x90
Lj13396:
	incl	-12(%ebp)
	movl	U_SYSTEM_ARGV,%edx
	movl	-12(%ebp),%eax
	cmpl	$0,(%edx,%eax,4)
	jne	Lj13397
	jmp	Lj13398
Lj13397:
	movl	U_SYSTEM_ARGV,%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	call	SYSTEM_SYSFREEMEM$POINTER$$LONGWORD
	movl	U_SYSTEM_ARGV,%eax
	movl	-12(%ebp),%edx
	movl	$0,(%eax,%edx,4)
Lj13398:
	cmpl	-12(%ebp),%ebx
	jg	Lj13396
Lj13395:
	movl	U_SYSTEM_ARGV,%eax
	call	SYSTEM_SYSFREEMEM$POINTER$$LONGWORD
	movl	$0,U_SYSTEM_ARGV
Lj13393:
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
	jne	Lj13431
	jmp	Lj13432
Lj13431:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_ERRORPROC,%ebx
	call	*%ebx
Lj13432:
	movw	-4(%ebp),%ax
	movw	%ax,TC_SYSTEM_ERRORCODE
	movl	-8(%ebp),%eax
	movl	%eax,TC_SYSTEM_ERRORADDR
	movl	-12(%ebp),%eax
	movl	%eax,TC_SYSTEM_ERRORBASE
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13447
	movl	U_SYSTEM_EXCEPTADDRSTACK,%eax
	call	*%edx
	jmp	Lj13448
Lj13447:
	movl	$U_SYSTEM_EXCEPTADDRSTACK+4,%eax
Lj13448:
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj13445
	jmp	Lj13446
Lj13445:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	$0,%eax
	call	FPC_RAISEEXCEPTION
Lj13446:
	movzwl	TC_SYSTEM_ERRORCODE,%eax
	call	SYSTEM_HALT$LONGINT
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
	movzwl	TC_SYSTEM_ERRORCODE,%eax
	call	SYSTEM_HALT$LONGINT
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
	jne	Lj13511
	movl	-8(%ebp),%eax
	decl	%eax
	movl	%eax,-16(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_ISDEVICE$LONGINT$$BOOLEAN
	movb	%al,-17(%ebp)
	jmp	Lj13524
	.balign 4,0x90
Lj13523:
	movl	-8(%ebp),%eax
	call	SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER
	movl	%eax,-24(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj13534
	jmp	Lj13535
Lj13534:
	jmp	Lj13525
Lj13535:
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
	je	Lj13548
	jmp	Lj13549
Lj13548:
	jmp	Lj13525
Lj13549:
	incl	-12(%ebp)
	movzwl	TC_SYSTEM_MAX_FRAME_DUMP,%eax
	cmpl	-12(%ebp),%eax
	jl	Lj13553
	jmp	Lj13552
Lj13553:
	cmpb	$0,-17(%ebp)
	jne	Lj13550
	jmp	Lj13552
Lj13552:
	movl	-12(%ebp),%eax
	cmpl	$256,%eax
	jg	Lj13550
	jmp	Lj13551
Lj13550:
	jmp	Lj13525
Lj13551:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj13524:
	movl	-8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj13523
	jmp	Lj13525
Lj13525:
Lj13511:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj13513
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj13513
Lj13513:
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
	je	Lj13560
	jmp	Lj13561
Lj13560:
	jmp	Lj13558
Lj13561:
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
	jl	Lj13579
	decl	-8(%ebp)
	.balign 4,0x90
Lj13580:
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
	jg	Lj13580
Lj13579:
Lj13558:
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
	jl	Lj13625
	jmp	Lj13626
Lj13625:
	movl	$0,-16(%ebp)
	jmp	Lj13623
Lj13626:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	addl	$2,%edx
	shll	$2,%edx
	leal	-20(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj13633
	jmp	Lj13634
Lj13633:
	movl	$0,-16(%ebp)
	jmp	Lj13623
Lj13634:
	movl	-12(%ebp),%ecx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ecx
	jl	Lj13638
	decl	-24(%ebp)
	.balign 4,0x90
Lj13639:
	incl	-24(%ebp)
	movl	-20(%ebp),%ebx
	movl	-24(%ebp),%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%esi
	movl	(%edx,%esi,4),%edx
	testl	%edx,%edx
	jne	Lj13642
	movl	$FPC_EMPTYCHAR,%edx
Lj13642:
	movl	%edx,(%ebx,%eax,4)
	cmpl	-24(%ebp),%ecx
	jg	Lj13639
Lj13638:
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%eax
	incl	%eax
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movl	$0,(%ecx,%eax,4)
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj13623:
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
	jne	Lj13653
	movl	$FPC_EMPTYCHAR,%eax
Lj13653:
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
	jmp	Lj13663
	.balign 4,0x90
Lj13662:
	jmp	Lj13666
	.balign 4,0x90
Lj13665:
	incl	-24(%ebp)
Lj13666:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj13668
	cmpl	$23,%eax
	stc
	je	Lj13668
	clc
Lj13668:
	jc	Lj13665
	jmp	Lj13667
Lj13667:
	incl	-20(%ebp)
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	$34,%al
	je	Lj13669
	jmp	Lj13670
Lj13669:
	incl	-24(%ebp)
	jmp	Lj13672
	.balign 4,0x90
Lj13671:
	incl	-24(%ebp)
Lj13672:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$0,%eax
	je	Lj13674
	cmpl	$34,%eax
	je	Lj13674
Lj13674:
	je	Lj13673
	jmp	Lj13671
Lj13673:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	$34,%al
	je	Lj13675
	jmp	Lj13676
Lj13675:
	incl	-24(%ebp)
Lj13676:
	jmp	Lj13677
Lj13670:
	jmp	Lj13679
	.balign 4,0x90
Lj13678:
	incl	-24(%ebp)
Lj13679:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$0,%eax
	stc
	je	Lj13681
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj13681
	cmpl	$23,%eax
	stc
	je	Lj13681
	clc
Lj13681:
	jc	Lj13680
	jmp	Lj13678
Lj13680:
Lj13677:
Lj13663:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj13662
	jmp	Lj13664
Lj13664:
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
	je	Lj13688
	jmp	Lj13689
Lj13688:
	jmp	Lj13656
Lj13689:
	movswl	-8(%ebp),%eax
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj13691
	decl	-16(%ebp)
	.balign 4,0x90
Lj13692:
	incl	-16(%ebp)
	addl	$4,-28(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj13692
Lj13691:
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj13696
	.balign 4,0x90
Lj13695:
	jmp	Lj13699
	.balign 4,0x90
Lj13698:
	movl	-24(%ebp),%eax
	movb	$0,(%eax)
	incl	-24(%ebp)
Lj13699:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj13703
	cmpl	$23,%eax
	stc
	je	Lj13703
	clc
Lj13703:
	jc	Lj13698
	jmp	Lj13700
Lj13700:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	$34,%al
	je	Lj13704
	jmp	Lj13705
Lj13704:
	incl	-24(%ebp)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,(%eax)
	addl	$4,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj13711
	.balign 4,0x90
Lj13710:
	incl	-24(%ebp)
Lj13711:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$0,%eax
	je	Lj13713
	cmpl	$34,%eax
	je	Lj13713
Lj13713:
	je	Lj13712
	jmp	Lj13710
Lj13712:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	$34,%al
	je	Lj13714
	jmp	Lj13715
Lj13714:
	movl	-24(%ebp),%eax
	movb	$0,(%eax)
	incl	-24(%ebp)
Lj13715:
	jmp	Lj13718
Lj13705:
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,(%eax)
	addl	$4,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj13724
	.balign 4,0x90
Lj13723:
	incl	-24(%ebp)
Lj13724:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$0,%eax
	stc
	je	Lj13726
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj13726
	cmpl	$23,%eax
	stc
	je	Lj13726
	clc
Lj13726:
	jc	Lj13725
	jmp	Lj13723
Lj13725:
Lj13718:
Lj13696:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj13695
	jmp	Lj13697
Lj13697:
Lj13656:
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
	jne	Lj13729
	jmp	Lj13730
Lj13729:
	movl	TC_SYSTEM_ABSTRACTERRORPROC,%eax
	call	*%eax
Lj13730:
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
	jne	Lj13737
	jmp	Lj13738
Lj13737:
	pushl	8(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_SYSTEM_ASSERTERRORPROC,%ebx
	call	*%ebx
	jmp	Lj13747
Lj13738:
	movl	%ebp,%edx
	movl	$227,%eax
	call	SYSTEM_HANDLEERRORFRAME$LONGINT$POINTER
Lj13747:
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
	je	Lj13754
	jmp	Lj13755
Lj13754:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13758
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13759
Lj13758:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13759:
	movl	$_$SYSTEM$_Ld32,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13766
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj13767
Lj13766:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj13767:
	call	fpc_write_end
	jmp	Lj13768
Lj13755:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13771
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13772
Lj13771:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13772:
	movl	-4(%ebp),%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13779
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj13780
Lj13779:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj13780:
	call	fpc_write_end
Lj13768:
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
	movl	$_$SYSTEM$_Ld33,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13791
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13792
Lj13791:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13792:
	movl	-8(%ebp),%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13799
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13800
Lj13799:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13800:
	movl	$_$SYSTEM$_Ld34,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13807
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13808
Lj13807:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13808:
	movl	-12(%ebp),%ecx
	movl	$0,%eax
	call	fpc_write_text_sint
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13815
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13816
Lj13815:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13816:
	movl	$_$SYSTEM$_Ld35,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13823
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj13824
Lj13823:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj13824:
	call	fpc_writeln_end
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13827
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	movl	%eax,%edx
	jmp	Lj13828
Lj13827:
	movl	$U_SYSTEM_STDERR+4,%edx
Lj13828:
	movl	$_$SYSTEM$_Ld1,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj13835
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj13836
Lj13835:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj13836:
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
SYSTEM_SYSOSALLOC$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	pushl	TC_SYSTEM_HEAPALLOCFLAGS
	pushl	-4(%ebp)
	leal	-12(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_299
	addl	$12,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj13853
	jmp	Lj13854
Lj13853:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj13857
Lj13854:
	movl	$0,-8(%ebp)
Lj13857:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSOSFREE$POINTER$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_304
	popl	%ebx
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_READUSEHIGHMEM$$BOOLEAN
SYSTEM_READUSEHIGHMEM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	movl	TC_SYSTEM_HEAPALLOCFLAGS,%eax
	andl	$1024,%eax
	cmpl	$1024,%eax
	seteb	-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_WRITEUSEHIGHMEM$BOOLEAN
SYSTEM_WRITEUSEHIGHMEM$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movb	%al,-4(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj13870
	jmp	Lj13871
Lj13870:
	movl	TC_SYSTEM_HEAPALLOCFLAGS,%eax
	orl	$1024,%eax
	movl	%eax,TC_SYSTEM_HEAPALLOCFLAGS
	jmp	Lj13874
Lj13871:
	movl	TC_SYSTEM_HEAPALLOCFLAGS,%eax
	andl	$-1025,%eax
	movl	%eax,TC_SYSTEM_HEAPALLOCFLAGS
Lj13874:
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
	jne	Lj13887
	jmp	Lj13889
Lj13889:
	movl	$SYSTEM_SYSFREEMEM$POINTER$$LONGWORD,%eax
	cmpl	TC_SYSTEM_MEMORYMANAGER+8,%eax
	jne	Lj13887
	jmp	Lj13888
Lj13887:
	movb	$1,-1(%ebp)
	jmp	Lj13890
Lj13888:
	movb	$0,-1(%ebp)
Lj13890:
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
	je	Lj13989
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj13990
Lj13989:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj13990:
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
	je	Lj13999
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj14000
Lj13999:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj14000:
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
	jne	Lj14031
	jmp	Lj14032
Lj14031:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%edx,16(%eax)
Lj14032:
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
	jne	Lj14039
	jmp	Lj14040
Lj14039:
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
Lj14040:
	movl	-4(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj14043
	jmp	Lj14044
Lj14043:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	jmp	Lj14047
Lj14044:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,(%edx)
Lj14047:
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
	jne	Lj14052
	jmp	Lj14053
Lj14052:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,16(%edx)
Lj14053:
	movl	-4(%ebp),%eax
	cmpl	$0,16(%eax)
	jne	Lj14056
	jmp	Lj14057
Lj14056:
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	jmp	Lj14060
Lj14057:
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,152(%edx)
Lj14060:
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
	jl	Lj14065
	jmp	Lj14066
Lj14065:
	jmp	Lj14063
Lj14066:
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
Lj14075:
	movl	-8(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj14079
	jmp	Lj14080
Lj14079:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
Lj14080:
	movl	-8(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj14083
	jmp	Lj14084
Lj14083:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
	jmp	Lj14087
Lj14084:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,(%edx)
Lj14087:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	ja	Lj14077
	jmp	Lj14075
Lj14077:
Lj14063:
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
	jne	Lj14096
	jmp	Lj14097
Lj14096:
	movl	-8(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	jmp	Lj14100
Lj14097:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,148(%edx)
Lj14100:
	movl	-8(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj14103
	jmp	Lj14104
Lj14103:
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
Lj14104:
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jge	Lj14107
	jmp	Lj14108
Lj14107:
	movl	-4(%ebp),%eax
	decl	140(%eax)
Lj14108:
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
	jne	Lj14119
	jmp	Lj14120
Lj14119:
	movl	-8(%ebp),%eax
	incl	136(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	andl	$-2,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj14115
Lj14120:
	movl	-8(%ebp),%eax
	movl	136(%eax),%eax
	cmpl	TC_SYSTEM_MAXKEPTOSCHUNKS,%eax
	jae	Lj14123
	jmp	Lj14125
Lj14125:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	andl	$-16,%eax
	cmpl	TC_SYSTEM_GROWHEAPSIZE2,%eax
	ja	Lj14123
	jmp	Lj14124
Lj14123:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FREE_OSCHUNK$PFREELISTS$POSCHUNK
	jmp	Lj14130
Lj14124:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,4(%edx)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	incl	136(%eax)
Lj14130:
Lj14115:
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
	jne	Lj14140
	jmp	Lj14141
Lj14140:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,16(%edx)
Lj14141:
	movl	-4(%ebp),%eax
	cmpl	$0,16(%eax)
	jne	Lj14144
	jmp	Lj14145
Lj14144:
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	jmp	Lj14148
Lj14145:
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,152(%edx)
Lj14148:
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
	jne	Lj14157
	jmp	Lj14158
Lj14157:
	jmp	Lj14153
Lj14158:
	movl	-4(%ebp),%eax
	addl	$36,%eax
	movl	%eax,-12(%ebp)
	.balign 4,0x90
Lj14161:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	andl	$4,%eax
	testl	%eax,%eax
	jne	Lj14166
	jmp	Lj14167
Lj14166:
	jmp	Lj14163
Lj14167:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	andl	$-16,%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj14161
Lj14163:
Lj14153:
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
	jne	Lj14174
	jmp	Lj14175
Lj14174:
	.balign 4,0x90
Lj14176:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	SYSTEM_MODIFY_OSCHUNK_FREELISTS$POSCHUNK$PFREELISTS
	movl	-16(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj14184
	jmp	Lj14183
Lj14183:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj14170
Lj14184:
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj14176
Lj14175:
	movl	$0,-12(%ebp)
Lj14170:
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
	jae	Lj14199
	jmp	Lj14200
Lj14199:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-20(%ebp),%eax
	andl	$4,%eax
	testl	%eax,%eax
	je	Lj14203
	jmp	Lj14204
Lj14203:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	-28(%ebp),%eax
	movl	%eax,(%edx)
Lj14204:
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
	jne	Lj14222
	jmp	Lj14223
Lj14222:
	movl	-32(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movl	%edx,16(%eax)
Lj14223:
	movl	-32(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj14230
Lj14200:
	movl	-24(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj14230:
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
	jne	Lj14235
	jmp	Lj14236
Lj14235:
	movl	$204,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj14236:
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
	jne	Lj14241
	jmp	Lj14242
Lj14241:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	orl	$4,%eax
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	jmp	Lj14245
Lj14242:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	andl	$-16,%edx
	movl	-12(%ebp),%eax
	movl	%edx,(%eax)
Lj14245:
	movl	-8(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj14251
	jmp	Lj14252
Lj14251:
	movl	-8(%ebp),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,16(%edx)
Lj14252:
	movl	-8(%ebp),%eax
	cmpl	$0,16(%eax)
	jne	Lj14255
	jmp	Lj14256
Lj14255:
	movl	-8(%ebp),%eax
	movl	16(%eax),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	jmp	Lj14259
Lj14256:
	movl	-8(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,152(%edx)
Lj14259:
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
	je	Lj14266
	jmp	Lj14267
Lj14266:
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
	je	Lj14270
	jmp	Lj14271
Lj14270:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_CONCAT_TWO_BLOCKS$PMEMCHUNK_VAR$PMEMCHUNK_VAR
	movb	$1,-5(%ebp)
Lj14271:
Lj14267:
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
	je	Lj14282
	jmp	Lj14283
Lj14282:
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
	je	Lj14286
	jmp	Lj14287
Lj14286:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_CONCAT_TWO_BLOCKS$PMEMCHUNK_VAR$PMEMCHUNK_VAR
	movl	-12(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj14287:
Lj14283:
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
	jmp	Lj14303
	.balign 4,0x90
Lj14302:
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	andl	$1,%eax
	testl	%eax,%eax
	jne	Lj14305
	jmp	Lj14306
Lj14305:
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
	je	Lj14311
	jmp	Lj14312
Lj14311:
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,(%eax)
	jmp	Lj14315
Lj14312:
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,4(%edx)
Lj14315:
	jmp	Lj14303
Lj14306:
	movl	-24(%ebp),%eax
	movl	(%eax),%eax
	andl	$-16,%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jae	Lj14322
	jmp	Lj14321
Lj14322:
	movl	-28(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jbe	Lj14320
	jmp	Lj14321
Lj14320:
	movl	8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,(%eax)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj14325
	jmp	Lj14326
Lj14325:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,(%edx)
	jmp	Lj14329
Lj14326:
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%edx)
Lj14329:
	movl	-4(%ebp),%eax
	decl	136(%eax)
	movl	-24(%ebp),%eax
	call	SYSTEM_REMOVE_FREED_FIXED_CHUNKS$POSCHUNK
	jmp	Lj14304
Lj14321:
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
Lj14303:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14302
	jmp	Lj14304
Lj14304:
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
	jne	Lj14344
	jmp	Lj14345
Lj14344:
	movl	$1048576,-40(%ebp)
	jmp	Lj14348
Lj14345:
	movl	$-1,-40(%ebp)
Lj14348:
	movl	$0,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	136(%eax),%eax
	cmpl	TC_SYSTEM_MAXKEPTOSCHUNKS,%eax
	jae	Lj14353
	jmp	Lj14354
Lj14353:
	leal	-12(%ebp),%eax
	pushl	%eax
	movl	-40(%ebp),%ecx
	movl	-36(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_FIND_FREE_OSCHUNK$PFREELISTS$LONGWORD$LONGWORD$LONGWORD$$POSCHUNK
	movl	%eax,-32(%ebp)
Lj14354:
	cmpl	$0,-32(%ebp)
	jne	Lj14366
	jmp	Lj14367
Lj14367:
	cmpl	$0,U_SYSTEM_ORPHANED_FREELISTS+156
	jne	Lj14365
	jmp	Lj14369
Lj14369:
	cmpl	$0,U_SYSTEM_ORPHANED_FREELISTS+160
	jne	Lj14365
	jmp	Lj14368
Lj14368:
	movl	U_SYSTEM_ORPHANED_FREELISTS+136,%eax
	cmpl	$0,%eax
	ja	Lj14365
	jmp	Lj14366
Lj14365:
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	movl	$U_SYSTEM_ORPHANED_FREELISTS,%eax
	call	SYSTEM_FINISH_WAITFIXEDLIST$PFREELISTS
	movl	$U_SYSTEM_ORPHANED_FREELISTS,%eax
	call	SYSTEM_FINISH_WAITVARLIST$PFREELISTS
	movl	U_SYSTEM_ORPHANED_FREELISTS+136,%eax
	cmpl	$0,%eax
	ja	Lj14376
	jmp	Lj14377
Lj14376:
	leal	-12(%ebp),%eax
	pushl	%eax
	movl	$U_SYSTEM_ORPHANED_FREELISTS,%eax
	movl	-40(%ebp),%ecx
	movl	-36(%ebp),%edx
	call	SYSTEM_FIND_FREE_OSCHUNK$PFREELISTS$LONGWORD$LONGWORD$LONGWORD$$POSCHUNK
	movl	%eax,-32(%ebp)
	cmpl	$0,-32(%ebp)
	jne	Lj14388
	jmp	Lj14389
Lj14388:
	movl	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,20(%edx)
	movl	-32(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	Lj14392
	jmp	Lj14393
Lj14392:
	movl	-32(%ebp),%eax
	movl	8(%eax),%edx
	movl	-32(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	jmp	Lj14396
Lj14393:
	movl	-32(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,U_SYSTEM_ORPHANED_FREELISTS+148
Lj14396:
	movl	-32(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj14399
	jmp	Lj14400
Lj14399:
	movl	-32(%ebp),%eax
	movl	12(%eax),%edx
	movl	-32(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%edx)
Lj14400:
	movl	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	148(%eax),%eax
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	cmpl	$0,148(%eax)
	jne	Lj14405
	jmp	Lj14406
Lj14405:
	movl	-4(%ebp),%eax
	movl	148(%eax),%eax
	movl	-32(%ebp),%edx
	movl	%edx,8(%eax)
Lj14406:
	movl	-32(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%edx
	movl	-32(%ebp),%eax
	movl	%eax,148(%edx)
Lj14389:
Lj14377:
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
Lj14366:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj14415
	jmp	Lj14416
Lj14415:
	movl	-12(%ebp),%eax
	addl	$36,%eax
	addl	$65535,%eax
	andl	$-65536,%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14419
	jmp	Lj14420
Lj14419:
	movl	-4(%ebp),%eax
	movl	144(%eax),%eax
	call	SYSTEM_SYSOSALLOC$LONGWORD$$POINTER
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14425
	jmp	Lj14426
Lj14425:
	movl	-4(%ebp),%eax
	movl	144(%eax),%eax
	movl	%eax,-12(%ebp)
Lj14426:
	jmp	Lj14429
Lj14420:
	movl	-12(%ebp),%eax
	cmpl	TC_SYSTEM_GROWHEAPSIZE1,%eax
	jbe	Lj14430
	jmp	Lj14431
Lj14430:
	movl	TC_SYSTEM_GROWHEAPSIZE1,%eax
	call	SYSTEM_SYSOSALLOC$LONGWORD$$POINTER
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14436
	jmp	Lj14437
Lj14436:
	movl	TC_SYSTEM_GROWHEAPSIZE1,%eax
	movl	%eax,-12(%ebp)
Lj14437:
	jmp	Lj14440
Lj14431:
	movl	-12(%ebp),%eax
	cmpl	TC_SYSTEM_GROWHEAPSIZE2,%eax
	jbe	Lj14441
	jmp	Lj14442
Lj14441:
	movl	TC_SYSTEM_GROWHEAPSIZE2,%eax
	call	SYSTEM_SYSOSALLOC$LONGWORD$$POINTER
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14447
	jmp	Lj14448
Lj14447:
	movl	TC_SYSTEM_GROWHEAPSIZE2,%eax
	movl	%eax,-12(%ebp)
Lj14448:
	jmp	Lj14451
Lj14442:
	movl	-12(%ebp),%eax
	call	SYSTEM_SYSOSALLOC$LONGWORD$$POINTER
	movl	%eax,-32(%ebp)
Lj14451:
Lj14440:
Lj14429:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj14456
	jmp	Lj14457
Lj14456:
	movl	-12(%ebp),%eax
	call	SYSTEM_SYSOSALLOC$LONGWORD$$POINTER
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj14462
	jmp	Lj14463
Lj14462:
	cmpb	$0,U_SYSTEM_RETURNNILIFGROWHEAPFAILS
	jne	Lj14464
	jmp	Lj14465
Lj14464:
	movl	$0,-16(%ebp)
	jmp	Lj14340
	jmp	Lj14468
Lj14465:
	movl	$203,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj14468:
Lj14463:
Lj14457:
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
	jne	Lj14477
	jmp	Lj14478
Lj14477:
	movl	-4(%ebp),%eax
	movl	148(%eax),%eax
	movl	-32(%ebp),%edx
	movl	%edx,8(%eax)
Lj14478:
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
	ja	Lj14485
	jmp	Lj14486
Lj14485:
	movl	-52(%ebp),%edx
	movl	-52(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,(%edx)
Lj14486:
Lj14416:
	movl	-32(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14491
	jmp	Lj14492
Lj14491:
	movl	-32(%ebp),%eax
	movl	$0,16(%eax)
	movl	-8(%ebp),%eax
	shll	$4,%eax
	movl	%eax,-48(%ebp)
	movl	-12(%ebp),%eax
	movl	-48(%ebp),%edx
	subl	%edx,%eax
	cmpl	-40(%ebp),%eax
	ja	Lj14497
	jmp	Lj14498
Lj14497:
	movl	$204,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj14498:
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
Lj14509:
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
	jb	Lj14514
	jmp	Lj14515
Lj14514:
	jmp	Lj14511
Lj14515:
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
	jmp	Lj14509
Lj14511:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14528
	jmp	Lj14529
Lj14528:
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,8(%edx)
Lj14529:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	%edx,(%eax,%ecx,4)
	movl	-4(%ebp),%eax
	incl	140(%eax)
	movl	-4(%ebp),%eax
	movl	140(%eax),%eax
	cmpl	$264,%eax
	ja	Lj14534
	jmp	Lj14535
Lj14534:
	movl	-4(%ebp),%eax
	movl	144(%eax),%eax
	cmpl	$262144,%eax
	jb	Lj14536
	jmp	Lj14537
Lj14536:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	144(%eax),%eax
	addl	%eax,144(%edx)
Lj14537:
	movl	-4(%ebp),%eax
	movl	$0,140(%eax)
Lj14535:
	jmp	Lj14540
Lj14492:
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
	jne	Lj14560
	jmp	Lj14561
Lj14560:
	movl	-56(%ebp),%eax
	movl	(%eax),%edx
	movl	-28(%ebp),%eax
	movl	%eax,16(%edx)
Lj14561:
	movl	-56(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,(%eax)
Lj14540:
Lj14340:
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
	je	Lj14572
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj14573
Lj14572:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj14573:
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj14576
	jmp	Lj14577
Lj14576:
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
	je	Lj14580
	jmp	Lj14581
Lj14580:
	movl	-20(%ebp),%eax
	movl	(%eax),%edx
	orl	$1,%edx
	movl	-20(%ebp),%eax
	movl	%edx,(%eax)
	movl	-28(%ebp),%eax
	decl	136(%eax)
Lj14581:
	jmp	Lj14584
Lj14577:
	movl	-28(%ebp),%eax
	call	SYSTEM_TRY_FINISH_WAITFIXEDLIST$PFREELISTS$$BOOLEAN
	testb	%al,%al
	jne	Lj14585
	jmp	Lj14586
Lj14585:
	movl	-4(%ebp),%eax
	call	SYSTEM_SYSGETMEM_FIXED$LONGWORD$$POINTER
	movl	%eax,-8(%ebp)
	jmp	Lj14566
	jmp	Lj14593
Lj14586:
	movl	-4(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-28(%ebp),%eax
	call	SYSTEM_ALLOC_OSCHUNK$PFREELISTS$LONGWORD$LONGWORD$$POINTER
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj14603
	jmp	Lj14602
Lj14602:
	movl	$0,-8(%ebp)
	jmp	Lj14566
Lj14603:
	movl	-12(%ebp),%eax
	subl	$28,%eax
	movl	%eax,-20(%ebp)
Lj14593:
Lj14584:
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
	jne	Lj14614
	jmp	Lj14615
Lj14614:
	movl	-16(%ebp),%eax
	movl	$0,8(%eax)
Lj14615:
	movl	-28(%ebp),%eax
	leal	164(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,12(%eax)
	movl	12(%eax),%edx
	cmpl	4(%eax),%edx
	ja	Lj14620
	jmp	Lj14621
Lj14620:
	movl	12(%eax),%edx
	movl	%edx,4(%eax)
Lj14621:
	movl	-20(%ebp),%eax
	incl	16(%eax)
Lj14566:
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
	ja	Lj14628
	jmp	Lj14629
Lj14628:
	cmpb	$0,U_SYSTEM_RETURNNILIFGROWHEAPFAILS
	jne	Lj14630
	jmp	Lj14631
Lj14630:
	jmp	Lj14624
	jmp	Lj14632
Lj14631:
	movl	$204,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj14632:
Lj14629:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj14637
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj14638
Lj14637:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj14638:
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	call	SYSTEM_TRY_FINISH_WAITVARLIST$PFREELISTS
	movl	$0,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	152(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	$-1,-24(%ebp)
	jmp	Lj14648
	.balign 4,0x90
Lj14647:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	jae	Lj14650
	jmp	Lj14651
Lj14650:
	cmpl	$0,-16(%ebp)
	jne	Lj14654
	jmp	Lj14652
Lj14654:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	8(%edx),%eax
	jb	Lj14652
	jmp	Lj14653
Lj14652:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj14657
	jmp	Lj14658
Lj14657:
	jmp	Lj14649
Lj14658:
	movl	$10,-24(%ebp)
Lj14653:
Lj14651:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-12(%ebp)
	decl	-24(%ebp)
Lj14648:
	cmpl	$0,-12(%ebp)
	jne	Lj14663
	jmp	Lj14649
Lj14663:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj14647
	jmp	Lj14649
Lj14649:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj14667
	jmp	Lj14666
Lj14666:
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	$0,%edx
	call	SYSTEM_ALLOC_OSCHUNK$PFREELISTS$LONGWORD$LONGWORD$$POINTER
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj14677
	jmp	Lj14676
Lj14676:
	jmp	Lj14624
Lj14677:
Lj14667:
	movl	-12(%ebp),%eax
	addl	$12,%eax
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,12(%eax)
	jne	Lj14681
	jmp	Lj14682
Lj14681:
	movl	-12(%ebp),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,16(%edx)
Lj14682:
	movl	-12(%ebp),%eax
	cmpl	$0,16(%eax)
	jne	Lj14685
	jmp	Lj14686
Lj14685:
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,12(%edx)
	jmp	Lj14689
Lj14686:
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,152(%edx)
Lj14689:
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
	ja	Lj14702
	jmp	Lj14703
Lj14702:
	movl	12(%eax),%edx
	movl	%edx,4(%eax)
Lj14703:
Lj14624:
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
	je	Lj14708
	jmp	Lj14709
Lj14708:
	movl	$1,-4(%ebp)
Lj14709:
	movl	-4(%ebp),%eax
	cmpl	$524,%eax
	jbe	Lj14712
	jmp	Lj14713
Lj14712:
	movl	-4(%ebp),%eax
	addl	$19,%eax
	andl	$4080,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_SYSGETMEM_FIXED$LONGWORD$$POINTER
	movl	%eax,-8(%ebp)
	jmp	Lj14720
Lj14713:
	movl	-4(%ebp),%eax
	cmpl	$-28,%eax
	jb	Lj14721
	jmp	Lj14722
Lj14721:
	movl	-4(%ebp),%eax
	addl	$27,%eax
	andl	$-16,%eax
	movl	%eax,-4(%ebp)
Lj14722:
	movl	-4(%ebp),%eax
	call	SYSTEM_SYSGETMEM_VAR$LONGWORD$$POINTER
	movl	%eax,-8(%ebp)
Lj14720:
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
	je	Lj14757
	jmp	Lj14758
Lj14757:
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
	jne	Lj14767
	jmp	Lj14768
Lj14767:
	movl	-28(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,8(%eax)
Lj14768:
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
	jle	Lj14773
	jmp	Lj14774
Lj14773:
	movl	-24(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jl	Lj14775
	jmp	Lj14776
Lj14775:
	movl	$204,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj14776:
	movl	-24(%ebp),%eax
	call	SYSTEM_APPEND_TO_OSLIST$POSCHUNK
Lj14774:
	jmp	Lj14781
Lj14758:
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_WAITFREE_FIXED$PMEMCHUNK_FIXED$POSCHUNK
Lj14781:
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
	jne	Lj14792
	jmp	Lj14793
Lj14792:
	movl	-8(%ebp),%eax
	call	SYSTEM_WAITFREE_VAR$PMEMCHUNK_VAR
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj14788
Lj14793:
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
	jne	Lj14807
	jmp	Lj14808
Lj14807:
	movl	-20(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	%eax,16(%edx)
Lj14808:
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
	je	Lj14817
	jmp	Lj14818
Lj14817:
	movl	-8(%ebp),%eax
	call	SYSTEM_APPEND_TO_OSLIST_VAR$PMEMCHUNK_VAR
Lj14818:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,176(%eax)
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj14788:
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
	je	Lj14827
	jmp	Lj14828
Lj14827:
	movl	$0,-8(%ebp)
	jmp	Lj14823
Lj14828:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj14833
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj14834
Lj14833:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj14834:
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj14835
	jmp	Lj14836
Lj14835:
	movl	-4(%ebp),%edx
	subl	$12,%edx
	movl	-16(%ebp),%eax
	call	SYSTEM_SYSFREEMEM_VAR$PFREELISTS$PMEMCHUNK_VAR$$LONGWORD
	movl	%eax,-8(%ebp)
	jmp	Lj14843
Lj14836:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	call	SYSTEM_SYSFREEMEM_FIXED$PFREELISTS$PMEMCHUNK_FIXED$$LONGWORD
	movl	%eax,-8(%ebp)
Lj14843:
Lj14823:
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
	jmp	Lj14853
	.balign 4,0x90
Lj14852:
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
Lj14853:
	movl	-4(%ebp),%eax
	movl	156(%eax),%eax
	testl	%eax,%eax
	jne	Lj14852
	jmp	Lj14854
Lj14854:
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
	je	Lj14865
	jmp	Lj14866
Lj14865:
	movb	$0,-5(%ebp)
	jmp	Lj14863
Lj14866:
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	movl	-4(%ebp),%eax
	call	SYSTEM_FINISH_WAITFIXEDLIST$PFREELISTS
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
	movb	$1,-5(%ebp)
Lj14863:
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
	jmp	Lj14880
	.balign 4,0x90
Lj14879:
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
Lj14880:
	movl	-4(%ebp),%eax
	movl	160(%eax),%eax
	testl	%eax,%eax
	jne	Lj14879
	jmp	Lj14881
Lj14881:
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
	je	Lj14892
	jmp	Lj14893
Lj14892:
	jmp	Lj14890
Lj14893:
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	movl	-4(%ebp),%eax
	call	SYSTEM_FINISH_WAITVARLIST$PFREELISTS
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
Lj14890:
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
	je	Lj14902
	jmp	Lj14903
Lj14902:
	movl	$0,-12(%ebp)
	jmp	Lj14900
Lj14903:
	movl	-4(%ebp),%eax
	call	SYSTEM_SYSFREEMEM$POINTER$$LONGWORD
	movl	%eax,-12(%ebp)
Lj14900:
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
	je	Lj14914
	jmp	Lj14915
Lj14914:
	movl	-8(%ebp),%eax
	andl	$-16,%eax
	movl	%eax,-8(%ebp)
	subl	$12,-8(%ebp)
	jmp	Lj14918
Lj14915:
	movl	-8(%ebp),%eax
	andl	$4080,%eax
	movl	%eax,-8(%ebp)
	subl	$4,-8(%ebp)
Lj14918:
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
	jne	Lj14927
	jmp	Lj14928
Lj14927:
	movl	-8(%ebp),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+24,%edx
	call	*%edx
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
Lj14928:
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
	jne	Lj14943
	jmp	Lj14944
Lj14943:
	movl	-16(%ebp),%eax
	andl	$4080,%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$524,%eax
	jbe	Lj14949
	jmp	Lj14948
Lj14949:
	movl	-8(%ebp),%eax
	addl	$19,%eax
	andl	$-16,%eax
	cmpl	-24(%ebp),%eax
	jbe	Lj14947
	jmp	Lj14948
Lj14947:
	movb	$1,-9(%ebp)
	jmp	Lj14937
Lj14948:
	jmp	Lj14937
Lj14944:
	movl	-8(%ebp),%eax
	cmpl	$264,%eax
	jb	Lj14952
	jmp	Lj14953
Lj14952:
	movb	$0,-9(%ebp)
	jmp	Lj14937
Lj14953:
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
	jae	Lj14962
	jmp	Lj14961
Lj14962:
	movl	-24(%ebp),%eax
	subl	$16,%eax
	cmpl	-8(%ebp),%eax
	jb	Lj14960
	jmp	Lj14961
Lj14960:
	movb	$1,-9(%ebp)
	jmp	Lj14937
Lj14961:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj14967
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj14968
Lj14967:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj14968:
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	subl	$12,%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	-32(%ebp),%eax
	jne	Lj14971
	jmp	Lj14972
Lj14971:
	jmp	Lj14937
Lj14972:
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-28(%ebp),%eax
	call	SYSTEM_TRY_CONCAT_FREE_CHUNK_FORWARD$PMEMCHUNK_VAR$$BOOLEAN
	testb	%al,%al
	jne	Lj14975
	jmp	Lj14976
Lj14975:
	movl	-28(%ebp),%eax
	movl	8(%eax),%eax
	andl	$-16,%eax
	movl	%eax,-24(%ebp)
Lj14976:
	movl	-8(%ebp),%eax
	cmpl	-24(%ebp),%eax
	ja	Lj14981
	jmp	Lj14982
Lj14981:
	movl	-32(%ebp),%eax
	leal	164(%eax),%eax
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%ecx
	subl	%ecx,%edx
	addl	%edx,12(%eax)
	movl	12(%eax),%edx
	cmpl	4(%eax),%edx
	ja	Lj14985
	jmp	Lj14986
Lj14985:
	movl	12(%eax),%edx
	movl	%edx,4(%eax)
Lj14986:
	jmp	Lj14937
	jmp	Lj14989
Lj14982:
	movl	-24(%ebp),%eax
	cmpl	-8(%ebp),%eax
	ja	Lj14990
	jmp	Lj14991
Lj14990:
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	call	SYSTEM_SPLIT_BLOCK$PMEMCHUNK_VAR$LONGWORD$$LONGWORD
	movl	%eax,-24(%ebp)
Lj14991:
Lj14989:
	movl	-32(%ebp),%eax
	leal	164(%eax),%eax
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%ecx
	subl	%ecx,%edx
	addl	%edx,12(%eax)
	movl	12(%eax),%edx
	cmpl	4(%eax),%edx
	ja	Lj15000
	jmp	Lj15001
Lj15000:
	movl	12(%eax),%edx
	movl	%edx,4(%eax)
Lj15001:
	movb	$1,-9(%ebp)
Lj14937:
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
	je	Lj15008
	jmp	Lj15009
Lj15008:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj15010
	jmp	Lj15011
Lj15010:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+8,%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
Lj15011:
	jmp	Lj15016
Lj15009:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj15017
	jmp	Lj15018
Lj15017:
	movl	-8(%ebp),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+4,%edx
	call	*%edx
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj15023
Lj15018:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_SYSTRYRESIZEMEM$POINTER$LONGWORD$$BOOLEAN
	testb	%al,%al
	je	Lj15024
	jmp	Lj15025
Lj15024:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+24,%edx
	call	*%edx
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$528,%eax
	jb	Lj15034
	jmp	Lj15035
Lj15034:
	movl	-20(%ebp),%eax
	shll	$1,%eax
	addl	$16,%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj15038
	jmp	Lj15039
Lj15038:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj15039:
	jmp	Lj15042
Lj15035:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj15042:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj15047
	jmp	Lj15048
Lj15047:
	movl	-16(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj15048:
	movl	-16(%ebp),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+4,%edx
	call	*%edx
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj15055
	jmp	Lj15056
Lj15055:
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-24(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj15056:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	TC_SYSTEM_MEMORYMANAGER+8,%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,(%eax)
Lj15025:
Lj15023:
Lj15016:
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
	jg	Lj15071
	jmp	Lj15072
Lj15071:
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	incw	U_SYSTEM_HEAP_LOCK_USE
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
Lj15072:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15079
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj15080
Lj15079:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj15080:
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
	je	Lj15095
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj15096
Lj15095:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj15096:
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
	jg	Lj15113
	jmp	Lj15114
Lj15113:
	jmp	Lj15111
Lj15114:
	movw	$1,U_SYSTEM_HEAP_LOCK_USE
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_INITCRITICALSECTION$TRTLCRITICALSECTION
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15121
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj15122
Lj15121:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj15122:
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_MODIFY_FREELISTS$PFREELISTS$PFREELISTS$$POSCHUNK
	movl	TC_SYSTEM_MEMORYMANAGER+36,%eax
	testl	%eax,%eax
	jne	Lj15127
	jmp	Lj15128
Lj15127:
	movl	TC_SYSTEM_MEMORYMANAGER+36,%eax
	call	*%eax
Lj15128:
Lj15111:
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
	je	Lj15133
	movl	U_SYSTEM_FREELISTS,%eax
	call	*%edx
	jmp	Lj15134
Lj15133:
	movl	$U_SYSTEM_FREELISTS+4,%eax
Lj15134:
	movl	%eax,-12(%ebp)
	movw	U_SYSTEM_HEAP_LOCK_USE,%ax
	cmpw	$0,%ax
	jg	Lj15135
	jmp	Lj15136
Lj15135:
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	movl	-12(%ebp),%eax
	call	SYSTEM_FINISH_WAITFIXEDLIST$PFREELISTS
	movl	-12(%ebp),%eax
	call	SYSTEM_FINISH_WAITVARLIST$PFREELISTS
Lj15136:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	jmp	Lj15146
	.balign 4,0x90
Lj15145:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	andl	$1,%eax
	testl	%eax,%eax
	je	Lj15150
	jmp	Lj15151
Lj15150:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_FREE_OSCHUNK$PFREELISTS$POSCHUNK
	jmp	Lj15156
Lj15151:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	andl	$-2,%edx
	movl	-4(%ebp),%eax
	movl	%edx,(%eax)
Lj15156:
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj15146:
	cmpl	$0,-4(%ebp)
	jne	Lj15145
	jmp	Lj15147
Lj15147:
	movl	-12(%ebp),%eax
	movl	$0,(%eax)
	movl	-12(%ebp),%eax
	movl	$0,136(%eax)
	movw	U_SYSTEM_HEAP_LOCK_USE,%ax
	cmpw	$0,%ax
	jg	Lj15165
	jmp	Lj15166
Lj15165:
	movl	$U_SYSTEM_ORPHANED_FREELISTS,%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_MODIFY_FREELISTS$PFREELISTS$PFREELISTS$$POSCHUNK
	movl	%eax,-4(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj15173
	jmp	Lj15174
Lj15173:
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_ORPHANED_FREELISTS+148,%edx
	movl	%edx,12(%eax)
	cmpl	$0,U_SYSTEM_ORPHANED_FREELISTS+148
	jne	Lj15177
	jmp	Lj15178
Lj15177:
	movl	U_SYSTEM_ORPHANED_FREELISTS+148,%edx
	movl	-4(%ebp),%eax
	movl	%eax,8(%edx)
Lj15178:
	movl	-12(%ebp),%eax
	movl	148(%eax),%eax
	movl	%eax,U_SYSTEM_ORPHANED_FREELISTS+148
Lj15174:
	decw	U_SYSTEM_HEAP_LOCK_USE
	movw	U_SYSTEM_HEAP_LOCK_USE,%ax
	testw	%ax,%ax
	seteb	-13(%ebp)
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
	cmpb	$0,-13(%ebp)
	jne	Lj15187
	jmp	Lj15188
Lj15187:
	movl	$U_SYSTEM_HEAP_LOCK,%eax
	call	SYSTEM_DONECRITICALSECTION$TRTLCRITICALSECTION
Lj15188:
Lj15166:
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
	jne	Lj15193
	jmp	Lj15194
Lj15193:
	movl	TC_SYSTEM_MEMORYMANAGER+28,%eax
	call	*%eax
Lj15194:
	cmpl	$0,U_SYSTEM_WIDESTRINGMANAGER+72
	jne	Lj15195
	jmp	Lj15196
Lj15195:
	movl	U_SYSTEM_WIDESTRINGMANAGER+72,%eax
	call	*%eax
Lj15196:
	call	SYSTEM_SYSINITEXCEPTIONS
	call	SYSTEM_SYSINITSTDIO
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15199
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj15200
Lj15199:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj15200:
	movw	$0,(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKINITIALSTKLEN$LONGWORD$$LONGWORD
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15205
	movl	U_SYSTEM_STACKLENGTH,%eax
	call	*%edx
	jmp	Lj15206
Lj15205:
	movl	$U_SYSTEM_STACKLENGTH+4,%eax
Lj15206:
	movl	%ebx,(%eax)
	call	SYSTEM_SPTR$$POINTER
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15209
	movl	U_SYSTEM_STACKLENGTH,%eax
	call	*%edx
	jmp	Lj15210
Lj15209:
	movl	$U_SYSTEM_STACKLENGTH+4,%eax
Lj15210:
	movl	(%eax),%eax
	subl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15211
	movl	U_SYSTEM_STACKBOTTOM,%eax
	call	*%edx
	jmp	Lj15212
Lj15211:
	movl	$U_SYSTEM_STACKBOTTOM+4,%eax
Lj15212:
	movl	%ebx,(%eax)
	movl	U_SYSTEM_CURRENTTM+48,%eax
	call	*%eax
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15215
	movl	U_SYSTEM_THREADID,%eax
	call	*%edx
	jmp	Lj15216
Lj15215:
	movl	$U_SYSTEM_THREADID+4,%eax
Lj15216:
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
	jne	Lj15219
	jmp	Lj15220
Lj15219:
	movl	U_SYSTEM_WIDESTRINGMANAGER+76,%eax
	call	*%eax
Lj15220:
	call	SYSTEM_FINALIZEHEAP
	movl	TC_SYSTEM_MEMORYMANAGER+32,%eax
	testl	%eax,%eax
	jne	Lj15221
	jmp	Lj15222
Lj15221:
	movl	TC_SYSTEM_MEMORYMANAGER+32,%eax
	call	*%eax
Lj15222:
	call	SYSTEM_SYSFLUSHSTDIO
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15225
	movl	U_SYSTEM_THREADID,%eax
	call	*%edx
	jmp	Lj15226
Lj15225:
	movl	$U_SYSTEM_THREADID+4,%eax
Lj15226:
	movl	$0,(%eax)
	cmpl	$0,U_SYSTEM_CURRENTTM+84
	jne	Lj15227
	jmp	Lj15228
Lj15227:
	movl	U_SYSTEM_CURRENTTM+84,%eax
	call	*%eax
Lj15228:
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
	jne	Lj15411
	jmp	Lj15412
Lj15411:
	movl	U_SYSTEM_CURRENTTM+4,%eax
	call	*%eax
	movb	%al,-5(%ebp)
Lj15412:
	cmpb	$0,-5(%ebp)
	jne	Lj15415
	jmp	Lj15416
Lj15415:
	movl	-4(%ebp),%esi
	movl	$U_SYSTEM_CURRENTTM,%edi
	cld
	movl	$38,%ecx
	rep
	movsl
	cmpl	$0,U_SYSTEM_CURRENTTM
	jne	Lj15419
	jmp	Lj15420
Lj15419:
	movl	U_SYSTEM_CURRENTTM,%eax
	call	*%eax
	movb	%al,-5(%ebp)
Lj15420:
Lj15416:
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
SYSTEM_INIT_UNIT_THREADVARS$PLTVINITENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	jmp	Lj15490
	.balign 4,0x90
Lj15489:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	movl	U_SYSTEM_CURRENTTM+72,%ecx
	call	*%ecx
	addl	$8,-4(%ebp)
Lj15490:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj15489
	jmp	Lj15491
Lj15491:
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
	jl	Lj15499
	decw	-2(%ebp)
	.balign 4,0x90
Lj15500:
	incw	-2(%ebp)
	movzwl	-2(%ebp),%eax
	movl	FPC_THREADVARTABLES(,%eax,4),%eax
	call	SYSTEM_INIT_UNIT_THREADVARS$PLTVINITENTRY
	cmpw	-2(%ebp),%bx
	jg	Lj15500
Lj15499:
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
	jmp	Lj15506
	.balign 4,0x90
Lj15505:
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
Lj15506:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj15505
	jmp	Lj15507
Lj15507:
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
	jl	Lj15523
	decw	-2(%ebp)
	.balign 4,0x90
Lj15524:
	incw	-2(%ebp)
	movzwl	-2(%ebp),%eax
	movl	FPC_THREADVARTABLES(,%eax,4),%eax
	call	SYSTEM_COPY_UNIT_THREADVARS$PLTVINITENTRY
	cmpw	-2(%ebp),%bx
	jg	Lj15524
Lj15523:
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
SYSTEM_SYSINITTHREADVAR$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	TC_SYSTEM_THREADVARBLOCKSIZE,%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	addl	%eax,TC_SYSTEM_THREADVARBLOCKSIZE
	leave
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
	jne	Lj15537
	jmp	Lj15538
Lj15537:
	movl	$8,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj15538:
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
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	TC_SYSTEM_DATAINDEX,%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj15555
	jmp	Lj15556
Lj15555:
	call	SYSTEM_SYSALLOCATETHREADVARS
	movl	$16777216,%eax
	call	SYSTEM_INITTHREAD$LONGWORD
Lj15556:
	movl	TC_SYSTEM_DATAINDEX,%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSINITMULTITHREADING:
	pushl	%ebp
	movl	%esp,%ebp
	movl	TC_SYSTEM_DATAINDEX,%eax
	testl	%eax,%eax
	je	Lj15563
	jmp	Lj15564
Lj15563:
	pushl	$TC_SYSTEM_DATAINDEX
	pushl	$1
	call	_$dll$doscalls$_index_454
	addl	$8,%esp
	testl	%eax,%eax
	jne	Lj15565
	jmp	Lj15566
Lj15565:
	movw	$8,%ax
	call	SYSTEM_RUNERROR$WORD
Lj15566:
	movl	$SYSTEM_SYSRELOCATETHREADVAR$LONGWORD$$POINTER,%eax
	call	SYSTEM_INITTHREADVARS$POINTER
	movl	$-1,TC_SYSTEM_ISMULTITHREAD
Lj15564:
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
	jne	Lj15579
	jmp	Lj15580
Lj15579:
	pushl	TC_SYSTEM_DATAINDEX
	call	_$dll$doscalls$_index_455
	popl	%ebx
	testl	%eax,%eax
	jne	Lj15581
	jmp	Lj15582
Lj15581:
Lj15582:
	movl	$0,TC_SYSTEM_DATAINDEX
Lj15580:
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
	call	SYSTEM_SYSALLOCATETHREADVARS
	movl	8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	8(%edx),%eax
	movl	%eax,-8(%ebp)
	movl	8(%ebp),%eax
	call	fpc_freemem
	movl	-8(%ebp),%eax
	call	SYSTEM_INITTHREAD$LONGWORD
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	call	*%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSBEGINTHREAD$crc81B914C6:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	call	SYSTEM_SYSINITMULTITHREADING
	movl	$12,%eax
	call	fpc_getmem
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,(%eax)
	movl	-20(%ebp),%edx
	movl	16(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,8(%edx)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	pushl	-8(%ebp)
	pushl	12(%ebp)
	pushl	-20(%ebp)
	movl	$SYSTEM_THREADMAIN$POINTER$$POINTER,%eax
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_311
	addl	$20,%esp
	testl	%eax,%eax
	je	Lj15621
	jmp	Lj15622
Lj15621:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj15635
Lj15622:
	movl	$0,-16(%ebp)
	movl	-20(%ebp),%eax
	call	fpc_freemem
Lj15635:
	movl	-16(%ebp),%eax
	leave
	ret	$12

.text
	.balign 4,0x90
SYSTEM_SYSENDTHREAD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	call	SYSTEM_DONETHREAD
	pushl	-4(%ebp)
	pushl	$0
	call	_$dll$doscalls$_index_234
	addl	$8,%esp
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
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_238
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSRESUMETHREAD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_237
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSKILLTHREAD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_111
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSCLOSETHREAD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSWAITFORTHREADTERMINATE$LONGWORD$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj15672
	jmp	Lj15673
Lj15672:
	pushl	$0
	leal	-4(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_349
	addl	$8,%esp
	movl	%eax,-16(%ebp)
	jmp	Lj15680
Lj15673:
	.balign 4,0x90
Lj15681:
	pushl	$1
	leal	-4(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_349
	addl	$8,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$294,%eax
	je	Lj15690
	jmp	Lj15691
Lj15690:
	movl	-8(%ebp),%eax
	cmpl	$100,%eax
	jg	Lj15692
	jmp	Lj15693
Lj15692:
	pushl	$100
	call	_$dll$doscalls$_index_229
	popl	%ebx
	jmp	Lj15696
Lj15693:
	pushl	-8(%ebp)
	call	_$dll$doscalls$_index_229
	popl	%ebx
	pushl	$1
	leal	-4(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_349
	addl	$8,%esp
Lj15696:
	subl	$100,-8(%ebp)
Lj15691:
	movl	-16(%ebp),%eax
	cmpl	$294,%eax
	jne	Lj15683
	jmp	Lj15703
Lj15703:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj15683
	jmp	Lj15681
Lj15683:
Lj15680:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_GETOS2THREADPRIORITY$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$-1,-8(%ebp)
	leal	-12(%ebp),%eax
	movl	$32768,%edx
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj15714
	jmp	Lj15715
Lj15714:
	movl	-12(%ebp),%eax
	movl	$32768,%edx
	call	SYSTEM_FREEMEM$POINTER$LONGWORD
	call	SYSTEM_FPC_THREADERROR
	jmp	Lj15720
Lj15715:
	pushl	$32768
	movl	-12(%ebp),%eax
	pushl	%eax
	pushl	$0
	pushl	U_SYSTEM_PROCESSID
	pushl	$0
	pushl	$1
	call	_$dll$doscalls$_index_368
	addl	$24,%esp
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj15738
	jmp	Lj15736
Lj15738:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj15737
	jmp	Lj15736
Lj15737:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj15735
	jmp	Lj15736
Lj15735:
	movl	-12(%ebp),%eax
	addl	$32768,%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj15744
	.balign 4,0x90
Lj15743:
	addl	$28,-16(%ebp)
Lj15744:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$256,%eax
	je	Lj15747
	jmp	Lj15745
Lj15747:
	movl	-16(%ebp),%eax
	movzwl	4(%eax),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj15746
	jmp	Lj15745
Lj15746:
	movl	-16(%ebp),%eax
	addl	$28,%eax
	cmpl	-20(%ebp),%eax
	jb	Lj15743
	jmp	Lj15745
Lj15745:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$256,%eax
	je	Lj15750
	jmp	Lj15749
Lj15750:
	movl	-16(%ebp),%eax
	movzwl	4(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj15748
	jmp	Lj15749
Lj15748:
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
Lj15749:
Lj15736:
	movl	-12(%ebp),%eax
	movl	$32768,%edx
	call	SYSTEM_FREEMEM$POINTER$LONGWORD
Lj15720:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSTHREADSETPRIORITY$LONGWORD$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_GETOS2THREADPRIORITY$LONGWORD$$LONGWORD
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$65535,%eax
	ja	Lj15763
	jmp	Lj15764
Lj15763:
	movb	$0,-9(%ebp)
	jmp	Lj15767
Lj15764:
	movl	-8(%ebp),%eax
	shll	$1,%eax
	movl	%eax,-16(%ebp)
	movzbl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%eax,%edx
	cmpl	$0,%edx
	jl	Lj15770
	jmp	Lj15771
Lj15770:
	movzbl	-20(%ebp),%eax
	negl	%eax
	movl	%eax,-16(%ebp)
	jmp	Lj15774
Lj15771:
	movzbl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	addl	%eax,%edx
	cmpl	$31,%edx
	jg	Lj15775
	jmp	Lj15776
Lj15775:
	movzbl	-20(%ebp),%edx
	movl	$31,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-16(%ebp)
Lj15776:
Lj15774:
	pushl	-4(%ebp)
	pushl	-16(%ebp)
	pushl	$0
	pushl	$2
	call	_$dll$doscalls$_index_236
	addl	$16,%esp
	testl	%eax,%eax
	seteb	-9(%ebp)
Lj15767:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSTHREADGETPRIORITY$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_GETOS2THREADPRIORITY$LONGWORD$$LONGWORD
	movl	%eax,-12(%ebp)
	movzbl	-11(%ebp),%eax
	cmpl	$1,%eax
	je	Lj15795
	jmp	Lj15796
Lj15795:
	movzbl	-12(%ebp),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	subl	$15,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj15799
Lj15796:
	movzbl	-12(%ebp),%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-8(%ebp)
Lj15799:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSGETCURRENTTHREADID$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	pushl	$0
	leal	-8(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_312
	addl	$8,%esp
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSINITCRITICALSECTION$formal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	pushl	$0
	pushl	$0
	movl	-4(%ebp),%eax
	pushl	%eax
	pushl	$0
	call	_$dll$doscalls$_index_331
	addl	$16,%esp
	testl	%eax,%eax
	jne	Lj15812
	jmp	Lj15813
Lj15812:
	call	SYSTEM_FPC_THREADERROR
Lj15813:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSDONECRITICALSECTION$formal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	.balign 4,0x90
Lj15824:
	movl	-4(%ebp),%eax
	pushl	(%eax)
	call	_$dll$doscalls$_index_335
	popl	%ebx
	testl	%eax,%eax
	jne	Lj15826
	jmp	Lj15824
Lj15826:
	movl	-4(%ebp),%eax
	pushl	(%eax)
	call	_$dll$doscalls$_index_333
	popl	%ebx
	testl	%eax,%eax
	jne	Lj15829
	jmp	Lj15830
Lj15829:
	call	SYSTEM_FPC_THREADERROR
Lj15830:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSENTERCRITICALSECTION$formal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	pushl	$-1
	movl	-4(%ebp),%eax
	pushl	(%eax)
	call	_$dll$doscalls$_index_334
	addl	$8,%esp
	testl	%eax,%eax
	jne	Lj15835
	jmp	Lj15836
Lj15835:
	call	SYSTEM_FPC_THREADERROR
Lj15836:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSTRYENTERCRITICALSECTION$formal$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	pushl	$0
	movl	-4(%ebp),%eax
	pushl	(%eax)
	call	_$dll$doscalls$_index_334
	addl	$8,%esp
	testl	%eax,%eax
	je	Lj15843
	jmp	Lj15844
Lj15843:
	movl	$1,-8(%ebp)
	jmp	Lj15851
Lj15844:
	movl	$0,-8(%ebp)
Lj15851:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSLEAVECRITICALSECTION$formal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	pushl	(%eax)
	call	_$dll$doscalls$_index_335
	popl	%ebx
	testl	%eax,%eax
	jne	Lj15856
	jmp	Lj15857
Lj15856:
	call	SYSTEM_FPC_THREADERROR
Lj15857:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSBASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$76,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-76(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj15862
	movl	$8,%eax
	call	fpc_getmem
	movl	%eax,-16(%ebp)
	movl	8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj15873
	jmp	Lj15872
Lj15873:
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	movl	$7,%ecx
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-76(%ebp),%eax
	leal	-72(%ebp),%edx
	call	SYSTEM_UPCASE$ANSISTRING$$ANSISTRING
	movl	-72(%ebp),%eax
	movl	$_$SYSTEM$_Ld36,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	jne	Lj15871
	jmp	Lj15872
Lj15871:
	movl	8(%ebp),%ecx
	leal	-24(%ebp),%eax
	movl	$_$SYSTEM$_Ld36,%edx
	call	fpc_ansistr_concat
	jmp	Lj15896
Lj15872:
	movl	8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	8(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj15896:
	cmpb	$0,-8(%ebp)
	jne	Lj15899
	jmp	Lj15900
Lj15899:
	movl	$0,-28(%ebp)
	jmp	Lj15903
Lj15900:
	movl	$4096,-28(%ebp)
Lj15903:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj15906
	jmp	Lj15907
Lj15906:
	movzbl	-12(%ebp),%eax
	pushl	%eax
	pushl	-28(%ebp)
	movl	-16(%ebp),%eax
	pushl	%eax
	pushl	$0
	call	_$dll$doscalls$_index_324
	addl	$16,%esp
	movl	%eax,-20(%ebp)
	jmp	Lj15920
Lj15907:
	movzbl	-12(%ebp),%eax
	pushl	%eax
	pushl	-28(%ebp)
	movl	-16(%ebp),%eax
	pushl	%eax
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj15933
	movl	$FPC_EMPTYCHAR,%eax
Lj15933:
	pushl	%eax
	call	_$dll$doscalls$_index_324
	addl	$16,%esp
	movl	%eax,-20(%ebp)
Lj15920:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj15934
	jmp	Lj15935
Lj15934:
	movl	-16(%ebp),%eax
	call	fpc_freemem
	call	SYSTEM_FPC_THREADERROR
Lj15935:
Lj15862:
	call	FPC_POPADDRSTACK
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-24(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-24(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj15863
	call	FPC_RERAISE
Lj15863:
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
SYSTEM_SYSBASICEVENTDESTROY$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj15946
	jmp	Lj15947
Lj15946:
	call	SYSTEM_FPC_THREADERROR
	jmp	Lj15948
Lj15947:
	movl	-4(%ebp),%eax
	pushl	(%eax)
	call	_$dll$doscalls$_index_326
	popl	%ebx
	movl	-4(%ebp),%eax
	call	fpc_freemem
Lj15948:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSBASICEVENTRESETEVENT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj15955
	jmp	Lj15956
Lj15955:
	call	SYSTEM_FPC_THREADERROR
	jmp	Lj15957
Lj15956:
	leal	-8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	pushl	(%eax)
	call	_$dll$doscalls$_index_327
	addl	$8,%esp
Lj15957:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSBASICEVENTSETEVENT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj15964
	jmp	Lj15965
Lj15964:
	call	SYSTEM_FPC_THREADERROR
	jmp	Lj15966
Lj15965:
	movl	-4(%ebp),%eax
	pushl	(%eax)
	call	_$dll$doscalls$_index_328
	popl	%ebx
Lj15966:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSBASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj15971
	jmp	Lj15972
Lj15971:
	call	SYSTEM_FPC_THREADERROR
	jmp	Lj15973
Lj15972:
	pushl	-4(%ebp)
	movl	-8(%ebp),%eax
	pushl	(%eax)
	call	_$dll$doscalls$_index_329
	addl	$8,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj15982
	subl	$640,%eax
	je	Lj15983
	jmp	Lj15981
Lj15982:
	movl	$0,-12(%ebp)
	jmp	Lj15980
Lj15983:
	movl	$1,-12(%ebp)
	jmp	Lj15980
Lj15981:
	movl	$3,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,4(%eax)
Lj15980:
Lj15973:
	movl	-12(%ebp),%eax
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
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_326
	popl	%ebx
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSRTLEVENTSETEVENT$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_328
	popl	%ebx
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSRTLEVENTWAITFOR$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	pushl	$-1
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_329
	addl	$8,%esp
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSRTLEVENTWAITFORTIMEOUT$PRTLEVENT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_329
	addl	$8,%esp
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_SYSRTLEVENTRESETEVENT$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	leal	-8(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
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
	movl	$1,-4(%ebp)
	pushl	$4
	leal	-8(%ebp),%eax
	pushl	%eax
	pushl	$26
	pushl	$26
	call	_$dll$doscalls$_index_348
	addl	$16,%esp
	testl	%eax,%eax
	je	Lj16034
	jmp	Lj16035
Lj16034:
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj16035:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INITSYSTEMTHREADS:
	pushl	%ebp
	movl	%esp,%ebp
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
	jl	Lj16119
	decl	-8(%ebp)
	.balign 4,0x90
Lj16120:
	incl	-8(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movzbl	(%ecx,%edx,1),%edx
	btl	%edx,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj16123
	jmp	Lj16124
Lj16123:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movb	$92,(%edx,%ecx,1)
Lj16124:
	cmpl	-8(%ebp),%eax
	jg	Lj16120
Lj16119:
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
	jl	Lj16130
	decl	-12(%ebp)
	.balign 4,0x90
Lj16131:
	incl	-12(%ebp)
	movl	-4(%ebp),%ecx
	movzbl	-12(%ebp),%edx
	movzbl	(%ecx,%edx,1),%edx
	btl	%edx,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj16132
	jmp	Lj16133
Lj16132:
	movl	-4(%ebp),%edx
	movzbl	-12(%ebp),%ecx
	movb	$92,(%edx,%ecx,1)
Lj16133:
	cmpl	-12(%ebp),%eax
	jg	Lj16131
Lj16130:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_CLOSE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj16138
	jmp	Lj16139
Lj16138:
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_257
	popl	%ebx
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16144
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16145
Lj16144:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16145:
	movw	%bx,(%eax)
Lj16139:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_ERASE$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_259
	popl	%ebx
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16154
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16155
Lj16154:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16155:
	movw	%bx,(%eax)
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_RENAME$PCHAR$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	movl	-8(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_271
	addl	$8,%esp
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16168
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16169
Lj16168:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16169:
	movw	%bx,(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_READ$LONGINT$POINTER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-20(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_281
	addl	$16,%esp
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16182
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16183
Lj16182:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16183:
	movw	%bx,(%eax)
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_WRITE$LONGINT$POINTER$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-20(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_282
	addl	$16,%esp
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16198
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16199
Lj16198:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16199:
	movw	%bx,(%eax)
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_FILEPOS$LONGINT$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	leal	-20(%ebp),%eax
	pushl	%eax
	pushl	$1
	pushl	$0
	pushl	$0
	pushl	-4(%ebp)
	movl	TC_SYSTEM_SYS_DOSSETFILEPTRL,%eax
	call	*%eax
	addl	$20,%esp
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16214
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16215
Lj16214:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16215:
	movw	%bx,(%eax)
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_SEEK$LONGINT$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%eax
	pushl	%eax
	pushl	$0
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	-4(%ebp)
	movl	TC_SYSTEM_SYS_DOSSETFILEPTRL,%eax
	call	*%eax
	addl	$20,%esp
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16230
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16231
Lj16230:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16231:
	movw	%bx,(%eax)
	movl	-16(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_DO_SEEKEND$LONGINT$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	leal	-20(%ebp),%eax
	pushl	%eax
	pushl	$2
	pushl	$0
	pushl	$0
	pushl	-4(%ebp)
	movl	TC_SYSTEM_SYS_DOSSETFILEPTRL,%eax
	call	*%eax
	addl	$20,%esp
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16244
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16245
Lj16244:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16245:
	movw	%bx,(%eax)
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_FILESIZE$LONGINT$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_DO_FILEPOS$LONGINT$$INT64
	movl	%eax,-20(%ebp)
	movl	%edx,-16(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_DO_SEEKEND$LONGINT$$INT64
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	pushl	-16(%ebp)
	pushl	-20(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_DO_SEEK$LONGINT$INT64
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_TRUNCATE$LONGINT$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	-4(%ebp)
	movl	TC_SYSTEM_SYS_DOSSETFILESIZEL,%eax
	call	*%eax
	addl	$12,%esp
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16270
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16271
Lj16270:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16271:
	movw	%bx,(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_DO_SEEKEND$LONGINT$$INT64
	movl	-8(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
SYSTEM_INCREASE_FILE_HANDLE_COUNT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	$10,-8(%ebp)
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-8(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_382
	addl	$8,%esp
	testl	%eax,%eax
	jne	Lj16278
	jmp	Lj16279
Lj16278:
	movb	$0,-1(%ebp)
	jmp	Lj16286
Lj16279:
	movl	-12(%ebp),%eax
	cmpl	TC_SYSTEM_FILEHANDLECOUNT,%eax
	ja	Lj16287
	jmp	Lj16288
Lj16287:
	movl	-12(%ebp),%eax
	movl	%eax,TC_SYSTEM_FILEHANDLECOUNT
	movb	$1,-1(%ebp)
	jmp	Lj16293
Lj16288:
	movb	$0,-1(%ebp)
Lj16293:
Lj16286:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_OPEN$formal$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	movl	-12(%ebp),%eax
	andl	$65536,%eax
	testl	%eax,%eax
	je	Lj16300
	jmp	Lj16301
Lj16300:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	jl	Lj16303
	subl	$55216,%eax
	je	Lj16305
	decl	%eax
	jl	Lj16303
	subl	$2,%eax
	jle	Lj16304
	jmp	Lj16303
Lj16304:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_CLOSE$LONGINT
	jmp	Lj16302
Lj16305:
	jmp	Lj16302
Lj16303:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16310
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16311
Lj16310:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16311:
	movw	$102,(%eax)
	jmp	Lj16296
Lj16302:
Lj16301:
	movl	-4(%ebp),%eax
	movl	$-1,(%eax)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	-12(%ebp),%eax
	andl	$255,%eax
	andl	$-9,%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	andl	$112,%eax
	testl	%eax,%eax
	je	Lj16320
	jmp	Lj16321
Lj16320:
	movl	-28(%ebp),%eax
	orl	$64,%eax
	movl	%eax,-28(%ebp)
Lj16321:
	movl	-28(%ebp),%eax
	andl	$3,%eax
	testl	%eax,%eax
	je	Lj16326
	decl	%eax
	je	Lj16327
	decl	%eax
	je	Lj16328
	jmp	Lj16325
Lj16326:
	movl	-4(%ebp),%eax
	movl	$55217,4(%eax)
	jmp	Lj16324
Lj16327:
	movl	-4(%ebp),%eax
	movl	$55218,4(%eax)
	jmp	Lj16324
Lj16328:
	movl	-4(%ebp),%eax
	movl	$55219,4(%eax)
	jmp	Lj16324
Lj16325:
Lj16324:
	movl	-12(%ebp),%eax
	andl	$4096,%eax
	testl	%eax,%eax
	jne	Lj16335
	jmp	Lj16336
Lj16335:
	movl	-24(%ebp),%eax
	orl	$2,%eax
	orl	$16,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj16339
Lj16336:
	movl	-24(%ebp),%eax
	orl	$1,%eax
	movl	%eax,-24(%ebp)
Lj16339:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj16342
	jmp	Lj16343
Lj16342:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj16345
	subl	$55217,%eax
	je	Lj16346
	decl	%eax
	jl	Lj16345
	subl	$1,%eax
	jle	Lj16347
	decl	%eax
	je	Lj16348
	jmp	Lj16345
Lj16346:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj16344
Lj16347:
	movl	-4(%ebp),%eax
	movl	$1,(%eax)
	jmp	Lj16344
Lj16348:
	movl	-4(%ebp),%eax
	movl	$1,(%eax)
	movl	-4(%ebp),%eax
	movl	$55218,4(%eax)
	jmp	Lj16344
Lj16345:
Lj16344:
	jmp	Lj16296
Lj16343:
	movl	$32,-20(%ebp)
	pushl	$0
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	-20(%ebp)
	pushl	$0
	pushl	$0
	leal	-16(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	pushl	%eax
	pushl	-8(%ebp)
	movl	TC_SYSTEM_SYS_DOSOPENL,%eax
	call	*%eax
	addl	$36,%esp
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16377
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16378
Lj16377:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16378:
	movw	%bx,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16381
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16382
Lj16381:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16382:
	movzwl	(%eax),%eax
	cmpl	$4,%eax
	je	Lj16379
	jmp	Lj16380
Lj16379:
	call	SYSTEM_INCREASE_FILE_HANDLE_COUNT$$BOOLEAN
	testb	%al,%al
	jne	Lj16383
	jmp	Lj16384
Lj16383:
	pushl	$0
	pushl	-28(%ebp)
	pushl	-24(%ebp)
	pushl	-20(%ebp)
	pushl	$0
	pushl	$0
	leal	-16(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	pushl	%eax
	pushl	-8(%ebp)
	movl	TC_SYSTEM_SYS_DOSOPENL,%eax
	call	*%eax
	addl	$36,%esp
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16403
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16404
Lj16403:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16404:
	movw	%bx,(%eax)
Lj16384:
Lj16380:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16407
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16408
Lj16407:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16408:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16405
	jmp	Lj16406
Lj16405:
	movl	-4(%ebp),%eax
	movl	$-1,(%eax)
Lj16406:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj16411
	jmp	Lj16412
Lj16411:
	movl	-12(%ebp),%eax
	andl	$256,%eax
	testl	%eax,%eax
	jne	Lj16413
	jmp	Lj16414
Lj16413:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_SEEKEND$LONGINT$$INT64
	movl	-4(%ebp),%eax
	movl	$55218,4(%eax)
Lj16414:
Lj16412:
Lj16296:
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_DO_ISDEVICE$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	leal	-12(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_224
	addl	$12,%esp
	testl	%eax,%eax
	jne	Lj16423
	jmp	Lj16424
Lj16423:
	jmp	Lj16419
Lj16424:
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	je	Lj16431
	jmp	Lj16432
Lj16431:
	movb	$1,-5(%ebp)
Lj16432:
Lj16419:
	movb	-5(%ebp),%al
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
	je	Lj16455
	jmp	Lj16456
Lj16455:
	jmp	Lj16453
Lj16456:
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
	jne	Lj16465
	jmp	Lj16466
Lj16465:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16469
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16470
Lj16469:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16470:
	movw	$101,(%eax)
Lj16466:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
Lj16453:
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
	jl	Lj16476
	subl	$55217,%eax
	je	Lj16477
	decl	%eax
	je	Lj16478
	subl	$2,%eax
	je	Lj16479
	jmp	Lj16476
Lj16477:
	movl	$65536,-8(%ebp)
	jmp	Lj16475
Lj16478:
	movl	$69633,-8(%ebp)
	jmp	Lj16475
Lj16479:
	movl	$65793,-8(%ebp)
	jmp	Lj16475
Lj16476:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16488
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16489
Lj16488:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16489:
	movw	$102,(%eax)
	jmp	Lj16473
Lj16475:
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
	je	Lj16500
	jmp	Lj16501
Lj16500:
	movl	$SYSTEM_FILEREADFUNC$TEXTREC,%eax
	movl	-4(%ebp),%edx
	movl	%eax,32(%edx)
	jmp	Lj16504
Lj16501:
	movl	$SYSTEM_FILEWRITEFUNC$TEXTREC,%edx
	movl	-4(%ebp),%eax
	movl	%edx,32(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16510
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16511
Lj16510:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16511:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj16509
	jmp	Lj16508
Lj16509:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_ISDEVICE$LONGINT$$BOOLEAN
	testb	%al,%al
	jne	Lj16507
	jmp	Lj16508
Lj16507:
	movl	$SYSTEM_FILEWRITEFUNC$TEXTREC,%eax
	movl	-4(%ebp),%edx
	movl	%eax,36(%edx)
Lj16508:
Lj16504:
Lj16473:
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
	je	Lj16536
	decl	%eax
	je	Lj16537
	decl	%eax
	je	Lj16538
	jmp	Lj16535
Lj16536:
	movl	-4(%ebp),%eax
	movw	$2561,332(%eax)
	jmp	Lj16534
Lj16537:
	movl	-4(%ebp),%eax
	leal	332(%eax),%eax
	movl	$_$SYSTEM$_Ld37,%ecx
	movl	$3,%edx
	call	fpc_shortstr_to_shortstr
	jmp	Lj16534
Lj16538:
	movl	-4(%ebp),%eax
	movw	$3329,332(%eax)
	jmp	Lj16534
Lj16535:
Lj16534:
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
	je	Lj16577
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16578
Lj16577:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16578:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16575
	jmp	Lj16576
Lj16575:
	jmp	Lj16573
Lj16576:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj16580
	subl	$55217,%eax
	subl	$1,%eax
	jle	Lj16581
	subl	$2,%eax
	je	Lj16581
	jmp	Lj16580
Lj16581:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj16582
	jmp	Lj16583
Lj16582:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
Lj16583:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16589
	jmp	Lj16587
Lj16589:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	jne	Lj16588
	jmp	Lj16587
Lj16588:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$2,%eax
	jne	Lj16586
	jmp	Lj16587
Lj16586:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	40(%edx),%edx
	call	*%edx
Lj16587:
	movl	-4(%ebp),%eax
	movl	$55216,4(%eax)
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	jmp	Lj16579
Lj16580:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16600
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16601
Lj16600:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16601:
	movw	$103,(%eax)
Lj16579:
Lj16573:
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
	jl	Lj16605
	subl	$55216,%eax
	je	Lj16607
	decl	%eax
	jl	Lj16605
	subl	$2,%eax
	jle	Lj16606
	jmp	Lj16605
Lj16606:
	movl	-4(%ebp),%eax
	call	SYSTEM_CLOSE$TEXT
	jmp	Lj16604
Lj16607:
	jmp	Lj16604
Lj16605:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16612
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16613
Lj16612:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16613:
	movw	$102,(%eax)
	jmp	Lj16602
Lj16604:
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
	je	Lj16624
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16625
Lj16624:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16625:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16622
	jmp	Lj16623
Lj16622:
	movl	-4(%ebp),%eax
	movl	$55216,4(%eax)
Lj16623:
Lj16602:
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
	je	Lj16632
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16633
Lj16632:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16633:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16630
	jmp	Lj16631
Lj16630:
	jmp	Lj16628
Lj16631:
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	$55218,%edx
	call	SYSTEM_OPENTEXT$TEXT$LONGINT$LONGINT
Lj16628:
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
	je	Lj16644
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16645
Lj16644:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16645:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16642
	jmp	Lj16643
Lj16642:
	jmp	Lj16640
Lj16643:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movl	$55217,%edx
	call	SYSTEM_OPENTEXT$TEXT$LONGINT$LONGINT
Lj16640:
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
	je	Lj16656
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16657
Lj16656:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16657:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16654
	jmp	Lj16655
Lj16654:
	jmp	Lj16652
Lj16655:
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	$55220,%edx
	call	SYSTEM_OPENTEXT$TEXT$LONGINT$LONGINT
Lj16652:
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
	je	Lj16668
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16669
Lj16668:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16669:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16666
	jmp	Lj16667
Lj16666:
	jmp	Lj16664
Lj16667:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jne	Lj16670
	jmp	Lj16671
Lj16670:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	je	Lj16672
	jmp	Lj16673
Lj16672:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16676
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16677
Lj16676:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16677:
	movw	$105,(%eax)
	jmp	Lj16678
Lj16673:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16681
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16682
Lj16681:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16682:
	movw	$103,(%eax)
Lj16678:
	jmp	Lj16664
Lj16671:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
Lj16664:
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
	je	Lj16689
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16690
Lj16689:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16690:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16687
	jmp	Lj16688
Lj16687:
	jmp	Lj16685
Lj16688:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	je	Lj16691
	jmp	Lj16692
Lj16691:
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	call	SYSTEM_DO_ERASE$PCHAR
Lj16692:
Lj16685:
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
	je	Lj16699
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16700
Lj16699:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16700:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16697
	jmp	Lj16698
Lj16697:
	jmp	Lj16695
Lj16698:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	je	Lj16701
	jmp	Lj16702
Lj16701:
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_DO_RENAME$PCHAR$PCHAR
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16709
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16710
Lj16709:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16710:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj16707
	jmp	Lj16708
Lj16707:
	movl	-8(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	movl	%eax,%ecx
	incl	%ecx
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	leal	76(%edx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj16708:
Lj16702:
Lj16695:
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
	je	Lj16723
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16724
Lj16723:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16724:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16721
	jmp	Lj16722
Lj16721:
	jmp	Lj16719
Lj16722:
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
Lj16719:
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
	je	Lj16741
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16742
Lj16741:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16742:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16739
	jmp	Lj16740
Lj16739:
	jmp	Lj16737
Lj16740:
	movb	-8(%ebp),%al
	movb	%al,-10(%ebp)
	movb	$0,-9(%ebp)
	leal	-10(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_RENAME$TEXT$PCHAR
Lj16737:
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
	je	Lj16755
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16756
Lj16755:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16756:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16753
	jmp	Lj16754
Lj16753:
	movb	$1,-5(%ebp)
	jmp	Lj16751
Lj16754:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jne	Lj16759
	jmp	Lj16760
Lj16759:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj16761
	jmp	Lj16762
Lj16761:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16765
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16766
Lj16765:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16766:
	movw	$104,(%eax)
	jmp	Lj16767
Lj16762:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16770
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16771
Lj16770:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16771:
	movw	$103,(%eax)
Lj16767:
	movb	$1,-5(%ebp)
	jmp	Lj16751
Lj16760:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj16774
	jmp	Lj16775
Lj16774:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj16778
	jmp	Lj16779
Lj16778:
	movb	$1,-5(%ebp)
	jmp	Lj16751
Lj16779:
Lj16775:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj16784
	jmp	Lj16783
Lj16784:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj16782
	jmp	Lj16783
Lj16782:
	movb	$1,-5(%ebp)
	jmp	Lj16785
Lj16783:
	movb	$0,-5(%ebp)
Lj16785:
Lj16751:
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
	je	Lj16792
	movl	U_SYSTEM_INPUT,%eax
	call	*%edx
	jmp	Lj16793
Lj16792:
	movl	$U_SYSTEM_INPUT+4,%eax
Lj16793:
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
	subl	$36,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-4(%ebp)
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
	jne	Lj16796
	jmp	Lj16797
Lj16796:
	movb	$1,-5(%ebp)
	jmp	Lj16794
Lj16797:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jne	Lj16802
	jmp	Lj16803
Lj16802:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj16804
	jmp	Lj16805
Lj16804:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16808
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16809
Lj16808:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16809:
	movw	$104,(%eax)
	jmp	Lj16810
Lj16805:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16813
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16814
Lj16813:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16814:
	movw	$103,(%eax)
Lj16810:
	movb	$1,-5(%ebp)
	jmp	Lj16794
Lj16803:
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
Lj16829:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj16832
	jmp	Lj16833
Lj16832:
	incl	-28(%ebp)
	movb	-29(%ebp),%al
	testb	%al,%al
	je	Lj16836
	jmp	Lj16835
Lj16836:
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	je	Lj16834
	jmp	Lj16835
Lj16834:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_FILEPOS$LONGINT$$INT64
	movl	-4(%ebp),%ecx
	movl	20(%ecx),%ebx
	movl	%ebx,%ecx
	sarl	$31,%ecx
	subl	%ebx,%eax
	sbbl	%ecx,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16843
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16844
Lj16843:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16844:
	movw	$0,(%eax)
Lj16835:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj16847
	jmp	Lj16848
Lj16847:
	decl	-28(%ebp)
	movb	$1,-5(%ebp)
	jmp	Lj16831
Lj16848:
Lj16833:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$9,%al
	jb	Lj16852
	subb	$9,%al
	subb	$1,%al
	jbe	Lj16854
	subb	$3,%al
	je	Lj16854
	subb	$13,%al
	je	Lj16853
	subb	$6,%al
	je	Lj16854
	jmp	Lj16852
Lj16853:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj16855
	jmp	Lj16856
Lj16855:
	movb	$1,-5(%ebp)
	jmp	Lj16831
Lj16856:
	jmp	Lj16851
Lj16854:
	jmp	Lj16851
Lj16852:
	movb	$0,-5(%ebp)
	jmp	Lj16831
Lj16851:
	movl	-4(%ebp),%eax
	incl	16(%eax)
	jmp	Lj16829
Lj16831:
	movb	-29(%ebp),%al
	testb	%al,%al
	je	Lj16861
	jmp	Lj16862
Lj16861:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj16863
	jmp	Lj16864
Lj16863:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,16(%edx)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,20(%eax)
	jmp	Lj16869
Lj16864:
	pushl	-12(%ebp)
	pushl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_SEEK$LONGINT$INT64
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16876
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16877
Lj16876:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16877:
	movw	$0,(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	%eax,16(%edx)
Lj16869:
Lj16862:
Lj16794:
	movb	-5(%ebp),%al
	movl	-36(%ebp),%ebx
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
	je	Lj16888
	movl	U_SYSTEM_INPUT,%eax
	call	*%edx
	jmp	Lj16889
Lj16888:
	movl	$U_SYSTEM_INPUT+4,%eax
Lj16889:
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
	je	Lj16894
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16895
Lj16894:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16895:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16892
	jmp	Lj16893
Lj16892:
	movb	$1,-5(%ebp)
	jmp	Lj16890
Lj16893:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jne	Lj16898
	jmp	Lj16899
Lj16898:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj16900
	jmp	Lj16901
Lj16900:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16904
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16905
Lj16904:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16905:
	movw	$104,(%eax)
	jmp	Lj16906
Lj16901:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16909
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16910
Lj16909:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16910:
	movw	$103,(%eax)
Lj16906:
	movb	$1,-5(%ebp)
	jmp	Lj16890
Lj16899:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj16913
	jmp	Lj16914
Lj16913:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj16917
	jmp	Lj16918
Lj16917:
	movb	$1,-5(%ebp)
	jmp	Lj16890
Lj16918:
Lj16914:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj16923
	jmp	Lj16922
Lj16923:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj16921
	jmp	Lj16922
Lj16921:
	movb	$1,-5(%ebp)
	jmp	Lj16890
Lj16922:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movzbl	(%edx,%eax,1),%eax
	cmpl	$10,%eax
	je	Lj16928
	cmpl	$13,%eax
	je	Lj16928
Lj16928:
	seteb	-5(%ebp)
Lj16890:
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
	je	Lj16935
	movl	U_SYSTEM_INPUT,%eax
	call	*%edx
	jmp	Lj16936
Lj16935:
	movl	$U_SYSTEM_INPUT+4,%eax
Lj16936:
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
	je	Lj16941
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16942
Lj16941:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16942:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16939
	jmp	Lj16940
Lj16939:
	movb	$1,-5(%ebp)
	jmp	Lj16937
Lj16940:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jne	Lj16945
	jmp	Lj16946
Lj16945:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	je	Lj16947
	jmp	Lj16948
Lj16947:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16951
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16952
Lj16951:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16952:
	movw	$104,(%eax)
	jmp	Lj16953
Lj16948:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16956
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj16957
Lj16956:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj16957:
	movw	$103,(%eax)
Lj16953:
	movb	$1,-5(%ebp)
	jmp	Lj16937
Lj16946:
	.balign 4,0x90
Lj16960:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj16963
	jmp	Lj16964
Lj16963:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj16967
	jmp	Lj16968
Lj16967:
	movb	$1,-5(%ebp)
	jmp	Lj16937
Lj16968:
Lj16964:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$9,%al
	jb	Lj16972
	subb	$9,%al
	je	Lj16975
	decb	%al
	je	Lj16974
	subb	$3,%al
	je	Lj16974
	subb	$13,%al
	je	Lj16973
	subb	$6,%al
	je	Lj16975
	jmp	Lj16972
Lj16973:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj16976
	jmp	Lj16977
Lj16976:
	movb	$1,-5(%ebp)
	jmp	Lj16937
Lj16977:
	jmp	Lj16971
Lj16974:
	movb	$1,-5(%ebp)
	jmp	Lj16937
	jmp	Lj16971
Lj16975:
	jmp	Lj16971
Lj16972:
	movb	$0,-5(%ebp)
	jmp	Lj16937
Lj16971:
	movl	-4(%ebp),%eax
	incl	16(%eax)
	jmp	Lj16960
Lj16937:
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
	je	Lj16990
	movl	U_SYSTEM_INPUT,%eax
	call	*%edx
	jmp	Lj16991
Lj16990:
	movl	$U_SYSTEM_INPUT+4,%eax
Lj16991:
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
	je	Lj17014
	movl	U_SYSTEM_INPUT,%eax
	call	*%edx
	jmp	Lj17015
Lj17014:
	movl	$U_SYSTEM_INPUT+4,%eax
Lj17015:
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
	je	Lj17020
	movl	U_SYSTEM_OUTPUT,%eax
	call	*%edx
	jmp	Lj17021
Lj17020:
	movl	$U_SYSTEM_OUTPUT+4,%eax
Lj17021:
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
	jmp	Lj17031
	.balign 4,0x90
Lj17030:
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
Lj17031:
	movl	-12(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj17030
	jmp	Lj17032
Lj17032:
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
	jmp	Lj17054
	.balign 4,0x90
Lj17053:
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
Lj17054:
	movl	-8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj17053
	jmp	Lj17055
Lj17055:
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
	jne	Lj17074
	jmp	Lj17075
Lj17074:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	36(%edx),%edx
	call	*%edx
Lj17075:
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
	je	Lj17082
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17083
Lj17082:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17083:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17080
	jmp	Lj17081
Lj17080:
	jmp	Lj17078
Lj17081:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj17085
	subl	$55217,%eax
	je	Lj17087
	decl	%eax
	je	Lj17086
	jmp	Lj17085
Lj17086:
	movl	-4(%ebp),%eax
	movzbl	332(%eax),%ecx
	movl	-4(%ebp),%eax
	leal	333(%eax),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	jne	Lj17094
	jmp	Lj17095
Lj17094:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	36(%edx),%edx
	call	*%edx
Lj17095:
	jmp	Lj17084
Lj17087:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17100
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17101
Lj17100:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17101:
	movw	$105,(%eax)
	jmp	Lj17084
Lj17085:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17104
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17105
Lj17104:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17105:
	movw	$103,(%eax)
Lj17084:
Lj17078:
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
	je	Lj17110
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17111
Lj17110:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17111:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17108
	jmp	Lj17109
Lj17108:
	jmp	Lj17106
Lj17109:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj17113
	subl	$55217,%eax
	je	Lj17115
	decl	%eax
	je	Lj17114
	jmp	Lj17113
Lj17114:
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj17116
	jmp	Lj17117
Lj17116:
	movl	-12(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-4(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj17117:
	movl	-12(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-12(%ebp),%eax
	leal	1(%eax),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj17112
Lj17115:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17130
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17131
Lj17130:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17131:
	movw	$105,(%eax)
	jmp	Lj17112
Lj17113:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17134
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17135
Lj17134:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17135:
	movw	$103,(%eax)
Lj17112:
Lj17106:
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
	je	Lj17140
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17141
Lj17140:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17141:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17138
	jmp	Lj17139
Lj17138:
	jmp	Lj17136
Lj17139:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj17143
	subl	$55217,%eax
	je	Lj17145
	decl	%eax
	je	Lj17144
	jmp	Lj17143
Lj17144:
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj17146
	jmp	Lj17147
Lj17146:
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	movl	%eax,-4(%ebp)
Lj17147:
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj17150
	jmp	Lj17151
Lj17150:
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
	jmp	Lj17162
Lj17151:
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	leal	1(%eax),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
Lj17162:
	jmp	Lj17142
Lj17145:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17171
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17172
Lj17171:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17172:
	movw	$105,(%eax)
	jmp	Lj17142
Lj17143:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17175
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17176
Lj17175:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17176:
	movw	$103,(%eax)
Lj17142:
Lj17136:
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
	je	Lj17181
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17182
Lj17181:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17182:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17179
	jmp	Lj17180
Lj17179:
	jmp	Lj17177
Lj17180:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj17184
	subl	$55217,%eax
	je	Lj17186
	decl	%eax
	je	Lj17185
	jmp	Lj17184
Lj17185:
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpb	$0,8(%ebp)
	jne	Lj17189
	jmp	Lj17190
Lj17189:
	movl	12(%ebp),%edx
	incl	%edx
	movl	-20(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj17199
	jmp	Lj17200
Lj17199:
	movl	12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj17200:
	jmp	Lj17203
Lj17190:
	movl	12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj17203:
	movl	-4(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj17206
	jmp	Lj17207
Lj17206:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj17207:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj17183
Lj17186:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17220
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17221
Lj17220:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17221:
	movw	$105,(%eax)
	jmp	Lj17183
Lj17184:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17224
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17225
Lj17224:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17225:
	movw	$103,(%eax)
Lj17183:
Lj17177:
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
	je	Lj17230
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17231
Lj17230:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17231:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17228
	jmp	Lj17229
Lj17228:
	jmp	Lj17226
Lj17229:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj17233
	subl	$55217,%eax
	je	Lj17235
	decl	%eax
	je	Lj17234
	jmp	Lj17233
Lj17234:
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpb	$0,8(%ebp)
	jne	Lj17238
	jmp	Lj17239
Lj17238:
	movl	12(%ebp),%edx
	incl	%edx
	movl	-20(%ebp),%eax
	movb	$0,%cl
	call	SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj17248
	jmp	Lj17249
Lj17248:
	movl	12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj17249:
	jmp	Lj17252
Lj17239:
	movl	12(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj17252:
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj17255
	jmp	Lj17256
Lj17255:
	movl	-16(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj17256:
	movl	-4(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj17259
	jmp	Lj17260
Lj17259:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj17271
Lj17260:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
Lj17271:
	jmp	Lj17232
Lj17235:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17280
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17281
Lj17280:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17281:
	movw	$105,(%eax)
	jmp	Lj17232
Lj17233:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17284
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17285
Lj17284:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17285:
	movw	$103,(%eax)
Lj17232:
Lj17226:
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
	je	Lj17288
	jmp	Lj17290
Lj17290:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17291
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17292
Lj17291:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17292:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17288
	jmp	Lj17289
Lj17288:
	jmp	Lj17286
Lj17289:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj17294
	subl	$55217,%eax
	je	Lj17296
	decl	%eax
	je	Lj17295
	jmp	Lj17294
Lj17295:
	movl	-12(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj17301
	jmp	Lj17302
Lj17301:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj17302:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj17293
Lj17296:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17315
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17316
Lj17315:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17316:
	movw	$105,(%eax)
	jmp	Lj17293
Lj17294:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17319
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17320
Lj17319:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17320:
	movw	$103,(%eax)
Lj17293:
Lj17286:
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
	jmp	Lj17321
Lj17324:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj17328
	subl	$55217,%eax
	je	Lj17330
	decl	%eax
	je	Lj17329
	jmp	Lj17328
Lj17329:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj17333
	movl	-4(%eax),%eax
Lj17333:
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj17334
	jmp	Lj17335
Lj17334:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj17335:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj17340
	jmp	Lj17341
Lj17340:
	movl	-12(%ebp),%edx
	testl	%edx,%edx
	jne	Lj17344
	movl	$FPC_EMPTYCHAR,%edx
Lj17344:
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
Lj17341:
	jmp	Lj17327
Lj17330:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17351
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17352
Lj17351:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17352:
	movw	$105,(%eax)
	jmp	Lj17327
Lj17328:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17355
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17356
Lj17355:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17356:
	movw	$103,(%eax)
Lj17327:
Lj17321:
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
	jne	Lj17359
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj17362
	jmp	Lj17364
Lj17364:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17365
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17366
Lj17365:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17366:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17362
	jmp	Lj17363
Lj17362:
	jmp	Lj17359
Lj17363:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj17368
	subl	$55217,%eax
	je	Lj17370
	decl	%eax
	je	Lj17369
	jmp	Lj17368
Lj17369:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj17373
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj17373:
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj17374
	jmp	Lj17375
Lj17374:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj17375:
	leal	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_unicodestr_to_ansistr
	movl	-20(%ebp),%edx
	testl	%edx,%edx
	jne	Lj17386
	movl	$FPC_EMPTYCHAR,%edx
Lj17386:
	movl	-20(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj17389
	movl	-4(%ecx),%ecx
Lj17389:
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
	jmp	Lj17367
Lj17370:
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
	jmp	Lj17367
Lj17368:
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
Lj17367:
Lj17359:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj17360
	call	FPC_RERAISE
Lj17360:
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
	je	Lj17410
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17411
Lj17410:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17411:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17408
	jmp	Lj17409
Lj17408:
	jmp	Lj17406
Lj17409:
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	call	fpc_shortstr_sint
	leal	-268(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR
Lj17406:
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
	je	Lj17430
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17431
Lj17430:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17431:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17428
	jmp	Lj17429
Lj17428:
	jmp	Lj17426
Lj17429:
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	call	fpc_shortstr_uint
	leal	-268(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR
Lj17426:
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
	je	Lj17450
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17451
Lj17450:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17451:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17448
	jmp	Lj17449
Lj17448:
	jmp	Lj17446
Lj17449:
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	call	fpc_shortstr_sint
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj17460
	jmp	Lj17461
Lj17460:
	movl	$11,-4(%ebp)
	jmp	Lj17464
Lj17461:
	movzbl	-268(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj17465
	jmp	Lj17466
Lj17465:
	movzbl	-268(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj17466:
Lj17464:
	leal	-268(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR_ISO
Lj17446:
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
	je	Lj17479
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17480
Lj17479:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17480:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17477
	jmp	Lj17478
Lj17477:
	jmp	Lj17475
Lj17478:
	pushl	$255
	leal	-268(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	call	fpc_shortstr_uint
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj17489
	jmp	Lj17490
Lj17489:
	movl	$11,-4(%ebp)
	jmp	Lj17493
Lj17490:
	movzbl	-268(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj17494
	jmp	Lj17495
Lj17494:
	movzbl	-268(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj17495:
Lj17493:
	leal	-268(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR_ISO
Lj17475:
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
	je	Lj17508
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17509
Lj17508:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17509:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17506
	jmp	Lj17507
Lj17506:
	jmp	Lj17504
Lj17507:
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
Lj17504:
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
	je	Lj17528
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17529
Lj17528:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17529:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17526
	jmp	Lj17527
Lj17526:
	jmp	Lj17524
Lj17527:
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
Lj17524:
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
	je	Lj17548
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17549
Lj17548:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17549:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17546
	jmp	Lj17547
Lj17546:
	jmp	Lj17544
Lj17547:
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-264(%ebp),%edx
	movl	$255,%ecx
	movl	$-1,%eax
	call	fpc_shortstr_qword
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj17558
	jmp	Lj17559
Lj17558:
	movl	$20,-4(%ebp)
	jmp	Lj17562
Lj17559:
	movzbl	-264(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj17563
	jmp	Lj17564
Lj17563:
	movzbl	-264(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj17564:
Lj17562:
	leal	-264(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR_ISO
Lj17544:
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
	je	Lj17577
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17578
Lj17577:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17578:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17575
	jmp	Lj17576
Lj17575:
	jmp	Lj17573
Lj17576:
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-264(%ebp),%edx
	movl	$255,%ecx
	movl	$-1,%eax
	call	fpc_shortstr_int64
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj17587
	jmp	Lj17588
Lj17587:
	movl	$20,-4(%ebp)
	jmp	Lj17591
Lj17588:
	movzbl	-264(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jg	Lj17592
	jmp	Lj17593
Lj17592:
	movzbl	-264(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj17593:
Lj17591:
	leal	-264(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_WRITE_TEXT_SHORTSTR_ISO
Lj17573:
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
	je	Lj17606
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17607
Lj17606:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17607:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17604
	jmp	Lj17605
Lj17604:
	jmp	Lj17602
Lj17605:
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
Lj17602:
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
	je	Lj17630
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17631
Lj17630:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17631:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17628
	jmp	Lj17629
Lj17628:
	jmp	Lj17626
Lj17629:
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
Lj17626:
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
	jne	Lj17652
	jmp	Lj17653
Lj17652:
	movl	12(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	je	Lj17654
	jmp	Lj17655
Lj17654:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17658
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17659
Lj17658:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17659:
	movw	$105,(%eax)
	jmp	Lj17660
Lj17655:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17663
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17664
Lj17663:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17664:
	movw	$103,(%eax)
Lj17660:
	jmp	Lj17650
Lj17653:
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
	je	Lj17679
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17680
Lj17679:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17680:
	movw	%bx,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17683
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17684
Lj17683:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17684:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17681
	jmp	Lj17682
Lj17681:
	jmp	Lj17650
Lj17682:
	movzbl	-268(%ebp),%ecx
	leal	-267(%ebp),%edx
	movl	12(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
Lj17650:
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
	je	Lj17695
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17696
Lj17695:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17696:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17693
	jmp	Lj17694
Lj17693:
	jmp	Lj17691
Lj17694:
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
Lj17691:
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
	je	Lj17717
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17718
Lj17717:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17718:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17715
	jmp	Lj17716
Lj17715:
	jmp	Lj17713
Lj17716:
	cmpb	$0,-12(%ebp)
	jne	Lj17719
	jmp	Lj17720
Lj17719:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$_$SYSTEM$_Ld19,%ecx
	call	FPC_WRITE_TEXT_SHORTSTR
	jmp	Lj17727
Lj17720:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$_$SYSTEM$_Ld20,%ecx
	call	FPC_WRITE_TEXT_SHORTSTR
Lj17727:
Lj17713:
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
	je	Lj17738
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17739
Lj17738:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17739:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17736
	jmp	Lj17737
Lj17736:
	jmp	Lj17734
Lj17737:
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj17740
	jmp	Lj17741
Lj17740:
	movl	$5,-4(%ebp)
Lj17741:
	cmpb	$0,-12(%ebp)
	jne	Lj17744
	jmp	Lj17745
Lj17744:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$_$SYSTEM$_Ld38,%ecx
	call	FPC_WRITE_TEXT_SHORTSTR_ISO
	jmp	Lj17752
Lj17745:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$_$SYSTEM$_Ld39,%ecx
	call	FPC_WRITE_TEXT_SHORTSTR_ISO
Lj17752:
Lj17734:
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
	je	Lj17763
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17764
Lj17763:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17764:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17761
	jmp	Lj17762
Lj17761:
	jmp	Lj17759
Lj17762:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jne	Lj17765
	jmp	Lj17766
Lj17765:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	je	Lj17767
	jmp	Lj17768
Lj17767:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17771
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17772
Lj17771:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17772:
	movw	$103,(%eax)
	jmp	Lj17773
Lj17768:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17776
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17777
Lj17776:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17777:
	movw	$105,(%eax)
Lj17773:
	jmp	Lj17759
Lj17766:
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj17778
	jmp	Lj17779
Lj17778:
	movl	-4(%ebp),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj17779:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	8(%edx),%eax
	jge	Lj17784
	jmp	Lj17785
Lj17784:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
Lj17785:
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movb	-12(%ebp),%cl
	movb	%cl,(%edx,%eax,1)
	movl	-8(%ebp),%eax
	incl	16(%eax)
Lj17759:
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
	je	Lj17794
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17795
Lj17794:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17795:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17792
	jmp	Lj17793
Lj17792:
	jmp	Lj17790
Lj17793:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jne	Lj17796
	jmp	Lj17797
Lj17796:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	je	Lj17798
	jmp	Lj17799
Lj17798:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17802
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17803
Lj17802:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17803:
	movw	$103,(%eax)
	jmp	Lj17804
Lj17799:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17807
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17808
Lj17807:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17808:
	movw	$105,(%eax)
Lj17804:
	jmp	Lj17790
Lj17797:
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj17809
	jmp	Lj17810
Lj17809:
	movl	$1,-4(%ebp)
Lj17810:
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj17813
	jmp	Lj17814
Lj17813:
	movl	-4(%ebp),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
	jmp	Lj17819
Lj17814:
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj17820
	jmp	Lj17821
Lj17820:
	jmp	Lj17790
Lj17821:
Lj17819:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	8(%edx),%eax
	jge	Lj17822
	jmp	Lj17823
Lj17822:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
Lj17823:
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
	movb	-12(%ebp),%cl
	movb	%cl,(%edx,%eax,1)
	movl	-8(%ebp),%eax
	incl	16(%eax)
Lj17790:
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
	jne	Lj17830
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17835
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17836
Lj17835:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17836:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17833
	jmp	Lj17834
Lj17833:
	jmp	Lj17830
Lj17834:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jne	Lj17837
	jmp	Lj17838
Lj17837:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	je	Lj17839
	jmp	Lj17840
Lj17839:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17843
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17844
Lj17843:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17844:
	movw	$103,(%eax)
	jmp	Lj17845
Lj17840:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17848
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17849
Lj17848:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17849:
	movw	$105,(%eax)
Lj17845:
	jmp	Lj17830
Lj17838:
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj17850
	jmp	Lj17851
Lj17850:
	movl	-4(%ebp),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBLANKS$TEXT$LONGINT
Lj17851:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	8(%edx),%eax
	jge	Lj17856
	jmp	Lj17857
Lj17856:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
Lj17857:
	leal	-16(%ebp),%edx
	movw	-12(%ebp),%ax
	call	fpc_uchar_to_ansistr
	movl	-16(%ebp),%edx
	testl	%edx,%edx
	jne	Lj17866
	movl	$FPC_EMPTYCHAR,%edx
Lj17866:
	movl	-16(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj17869
	movl	-4(%ecx),%ecx
Lj17869:
	movl	-8(%ebp),%eax
	call	SYSTEM_FPC_WRITEBUFFER$TEXT$formal$LONGINT
Lj17830:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj17831
	call	FPC_RERAISE
Lj17831:
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
	jl	Lj17882
	jmp	Lj17883
Lj17882:
	movb	TC_SYSTEM_CTRLZMARKSEOF,%al
	testb	%al,%al
	je	Lj17884
	jmp	Lj17886
Lj17886:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	jne	Lj17884
	jmp	Lj17885
Lj17884:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj17887
	jmp	Lj17888
Lj17887:
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
Lj17888:
	movl	-4(%ebp),%eax
	incl	16(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17891
	jmp	Lj17892
Lj17891:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
Lj17892:
	movb	$1,-13(%ebp)
Lj17885:
Lj17883:
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
	jge	Lj17903
	jmp	Lj17904
Lj17903:
	jmp	Lj17897
Lj17904:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj17907
	jmp	Lj17906
Lj17907:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj17905
	jmp	Lj17906
Lj17905:
	jmp	Lj17897
Lj17906:
	jmp	Lj17909
	.balign 4,0x90
Lj17908:
	leal	-261(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
	testb	%al,%al
	je	Lj17911
	jmp	Lj17912
Lj17911:
	jmp	Lj17897
Lj17912:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17919
	jmp	Lj17920
Lj17919:
	jmp	Lj17910
Lj17920:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj17923
	jmp	Lj17922
Lj17923:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj17921
	jmp	Lj17922
Lj17921:
	jmp	Lj17910
Lj17922:
Lj17909:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$32,%al
	jbe	Lj17908
	jmp	Lj17910
Lj17910:
	movb	$1,-5(%ebp)
Lj17897:
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
Lj17928:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_NEXTCHAR$TEXT$OPENSTRING$$BOOLEAN
	testb	%al,%al
	je	Lj17931
	jmp	Lj17932
Lj17931:
	jmp	Lj17926
Lj17932:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	-12(%ebp),%eax
	je	Lj17930
	jmp	Lj17939
Lj17939:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$32,%al
	jbe	Lj17930
	jmp	Lj17928
Lj17930:
Lj17926:
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
	je	Lj17946
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17947
Lj17946:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17947:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj17944
	jmp	Lj17945
Lj17944:
	jmp	Lj17940
Lj17945:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jne	Lj17948
	jmp	Lj17949
Lj17948:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jl	Lj17951
	subl	$55218,%eax
	je	Lj17952
	subl	$2,%eax
	je	Lj17952
	jmp	Lj17951
Lj17952:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17955
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17956
Lj17955:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17956:
	movw	$104,(%eax)
	jmp	Lj17950
Lj17951:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj17959
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj17960
Lj17959:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj17960:
	movw	$103,(%eax)
Lj17950:
	jmp	Lj17940
Lj17949:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17961
	jmp	Lj17962
Lj17961:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
Lj17962:
	movb	$1,-5(%ebp)
Lj17940:
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
	jne	Lj17969
	jmp	Lj17970
Lj17969:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	36(%edx),%edx
	call	*%edx
Lj17970:
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
	je	Lj17975
	jmp	Lj17976
Lj17975:
	jmp	Lj17973
Lj17976:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17979
	jmp	Lj17980
Lj17979:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	jne	Lj17981
	jmp	Lj17982
Lj17981:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	36(%edx),%edx
	call	*%edx
Lj17982:
	jmp	Lj17973
Lj17980:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj17987
	jmp	Lj17986
Lj17987:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj17985
	jmp	Lj17986
Lj17985:
	jmp	Lj17973
Lj17986:
	.balign 4,0x90
Lj17988:
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
	je	Lj17993
	jmp	Lj17994
Lj17993:
	jmp	Lj17973
Lj17994:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17995
	jmp	Lj17996
Lj17995:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj17999
	jmp	Lj18000
Lj17999:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	jne	Lj18001
	jmp	Lj18002
Lj18001:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	36(%edx),%edx
	call	*%edx
Lj18002:
	jmp	Lj17973
Lj18000:
Lj17996:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj18007
	jmp	Lj18006
Lj18007:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj18005
	jmp	Lj18006
Lj18005:
	jmp	Lj17973
Lj18006:
	movb	-5(%ebp),%al
	cmpb	$13,%al
	je	Lj18008
	jmp	Lj18009
Lj18008:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$10,%al
	je	Lj18010
	jmp	Lj18011
Lj18010:
	movl	-4(%ebp),%eax
	incl	16(%eax)
Lj18011:
	jmp	Lj17973
Lj18009:
	jmp	Lj17988
Lj17973:
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
	je	Lj18014
	jmp	Lj18015
Lj18014:
	jmp	Lj18012
Lj18015:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj18018
	jmp	Lj18019
Lj18018:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	jne	Lj18020
	jmp	Lj18021
Lj18020:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	36(%edx),%edx
	call	*%edx
Lj18021:
	jmp	Lj18012
Lj18019:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj18024
	jmp	Lj18025
Lj18024:
	movl	-4(%ebp),%eax
	incl	16(%eax)
	jmp	Lj18012
Lj18025:
	.balign 4,0x90
Lj18026:
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
	je	Lj18031
	jmp	Lj18032
Lj18031:
	jmp	Lj18012
Lj18032:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj18033
	jmp	Lj18034
Lj18033:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj18037
	jmp	Lj18038
Lj18037:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	testl	%eax,%eax
	jne	Lj18039
	jmp	Lj18040
Lj18039:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	36(%edx),%edx
	call	*%edx
Lj18040:
	jmp	Lj18012
Lj18038:
Lj18034:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj18043
	jmp	Lj18044
Lj18043:
	movl	-4(%ebp),%eax
	incl	16(%eax)
	jmp	Lj18012
Lj18044:
	movb	-5(%ebp),%al
	cmpb	$13,%al
	je	Lj18045
	jmp	Lj18046
Lj18045:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$10,%al
	je	Lj18047
	jmp	Lj18048
Lj18047:
	movl	-4(%ebp),%eax
	incl	16(%eax)
Lj18048:
	jmp	Lj18012
Lj18046:
	jmp	Lj18026
Lj18012:
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
	je	Lj18053
	jmp	Lj18054
Lj18053:
	jmp	Lj18049
Lj18054:
	movl	$0,-20(%ebp)
	movb	$0,-37(%ebp)
	.balign 4,0x90
Lj18061:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj18064
	jmp	Lj18065
Lj18064:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj18068
	jmp	Lj18069
Lj18068:
	jmp	Lj18063
Lj18069:
Lj18065:
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
	jg	Lj18072
	jmp	Lj18073
Lj18072:
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
	jmp	Lj18076
Lj18073:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	leal	(%edx,%eax,1),%eax
	movl	%eax,-36(%ebp)
Lj18076:
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp)
	jmp	Lj18082
	.balign 4,0x90
Lj18081:
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	cmpb	$32,%al
	jb	Lj18084
	jmp	Lj18085
Lj18084:
	movl	-28(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$10,%eax
	je	Lj18089
	cmpl	$13,%eax
	je	Lj18089
Lj18089:
	je	Lj18086
	jmp	Lj18088
Lj18088:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj18090
	jmp	Lj18087
Lj18090:
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	cmpb	$26,%al
	je	Lj18086
	jmp	Lj18087
Lj18086:
	movb	$1,-37(%ebp)
	jmp	Lj18083
Lj18087:
Lj18085:
	incl	-28(%ebp)
Lj18082:
	movl	-28(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jb	Lj18081
	jmp	Lj18083
Lj18083:
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
	je	Lj18063
	jmp	Lj18101
Lj18101:
	cmpb	$0,-37(%ebp)
	jne	Lj18063
	jmp	Lj18061
Lj18063:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj18049:
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
	jne	Lj18136
	jmp	Lj18135
Lj18136:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj18134
	jmp	Lj18135
Lj18134:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj18135:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jle	Lj18139
	jmp	Lj18140
Lj18139:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	$0,(%eax,%edx,1)
Lj18140:
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
Lj18147:
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
	jl	Lj18149
	jmp	Lj18147
Lj18149:
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
	jne	Lj18168
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
Lj18168:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-12(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj18169
	call	FPC_RERAISE
Lj18169:
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
	je	Lj18191
	jmp	Lj18192
Lj18191:
	jmp	Lj18187
Lj18192:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj18195
	jmp	Lj18196
Lj18195:
	movl	-8(%ebp),%eax
	movb	$26,(%eax)
	jmp	Lj18187
Lj18196:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	-8(%ebp),%ecx
	movb	(%edx,%eax,1),%al
	movb	%al,(%ecx)
	movl	-4(%ebp),%eax
	incl	16(%eax)
Lj18187:
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
	jne	Lj18203
	leal	-22(%ebp),%eax
	movb	$0,%cl
	movl	$6,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.balign 4,0x90
Lj18214:
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
	je	Lj18221
	testl	%eax,%eax
	je	Lj18222
	jmp	Lj18220
Lj18221:
	jmp	Lj18219
Lj18222:
	movl	-8(%ebp),%eax
	movw	$0,(%eax)
	jmp	Lj18203
	jmp	Lj18219
Lj18220:
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
	je	Lj18239
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj18239:
	cmpl	$1,%eax
	je	Lj18237
	jmp	Lj18238
Lj18237:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movw	(%eax),%ax
	movw	%ax,(%edx)
	jmp	Lj18203
	jmp	Lj18242
Lj18238:
	jmp	Lj18213
Lj18242:
Lj18219:
	cmpl	$5,-16(%ebp)
	jl	Lj18214
Lj18213:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18245
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18246
Lj18245:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18246:
	movw	$106,(%eax)
Lj18203:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj18204
	call	FPC_RERAISE
Lj18204:
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
	je	Lj18257
	jmp	Lj18258
Lj18257:
	jmp	Lj18253
Lj18258:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj18261
	jmp	Lj18262
Lj18261:
	movl	-8(%ebp),%eax
	movb	$32,(%eax)
	jmp	Lj18253
Lj18262:
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
	je	Lj18267
	jmp	Lj18268
Lj18267:
	movl	-8(%ebp),%eax
	movb	$32,(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18271
	jmp	Lj18273
Lj18273:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj18271
	jmp	Lj18272
Lj18271:
	jmp	Lj18253
Lj18272:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$10,%al
	je	Lj18276
	jmp	Lj18277
Lj18276:
	movl	-4(%ebp),%eax
	incl	16(%eax)
Lj18277:
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18278
	jmp	Lj18280
Lj18280:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj18278
	jmp	Lj18279
Lj18278:
	jmp	Lj18253
Lj18279:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj18283
	jmp	Lj18284
Lj18283:
	movl	-4(%ebp),%eax
	incl	16(%eax)
Lj18284:
	jmp	Lj18285
Lj18268:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	cmpb	$10,%al
	je	Lj18286
	jmp	Lj18287
Lj18286:
	movl	-8(%ebp),%eax
	movb	$32,(%eax)
	movl	-4(%ebp),%eax
	call	SYSTEM_CHECKREAD$TEXT$$BOOLEAN
	testb	%al,%al
	je	Lj18290
	jmp	Lj18292
Lj18292:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj18290
	jmp	Lj18291
Lj18290:
	jmp	Lj18253
Lj18291:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj18295
	jmp	Lj18296
Lj18295:
	movl	-4(%ebp),%eax
	incl	16(%eax)
Lj18296:
	jmp	Lj18297
Lj18287:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	cmpb	$26,%al
	je	Lj18298
	jmp	Lj18299
Lj18298:
	movl	-8(%ebp),%eax
	movb	$32,(%eax)
Lj18299:
Lj18297:
Lj18285:
Lj18253:
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
	je	Lj18306
	jmp	Lj18307
Lj18306:
	jmp	Lj18302
Lj18307:
	movb	$0,-264(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	jne	Lj18312
	jmp	Lj18313
Lj18312:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj18316
	jmp	Lj18317
Lj18316:
	jmp	Lj18302
Lj18317:
	cmpb	$0,TC_SYSTEM_CTRLZMARKSEOF
	jne	Lj18320
	jmp	Lj18319
Lj18320:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$26,%al
	je	Lj18318
	jmp	Lj18319
Lj18318:
	jmp	Lj18302
Lj18319:
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj18313:
	movzbl	-264(%ebp),%eax
	testl	%eax,%eax
	je	Lj18327
	jmp	Lj18328
Lj18327:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj18331
Lj18328:
	leal	-268(%ebp),%ecx
	leal	-264(%ebp),%edx
	movl	$4,%eax
	call	fpc_val_sint_shortstr
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-268(%ebp),%eax
	testl	%eax,%eax
	jne	Lj18340
	jmp	Lj18341
Lj18340:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18344
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18345
Lj18344:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18345:
	movw	$106,(%eax)
Lj18341:
Lj18331:
Lj18302:
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
	je	Lj18350
	jmp	Lj18351
Lj18350:
	jmp	Lj18346
Lj18351:
	movb	$0,-264(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	jne	Lj18356
	jmp	Lj18357
Lj18356:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj18360
	jmp	Lj18361
Lj18360:
	jmp	Lj18346
Lj18361:
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj18357:
	movzbl	-264(%ebp),%eax
	testl	%eax,%eax
	je	Lj18368
	jmp	Lj18369
Lj18368:
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	jmp	Lj18372
Lj18369:
	leal	-268(%ebp),%edx
	leal	-264(%ebp),%eax
	call	fpc_val_uint_shortstr
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-268(%ebp),%eax
	testl	%eax,%eax
	jne	Lj18379
	jmp	Lj18380
Lj18379:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18383
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18384
Lj18383:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18384:
	movw	$106,(%eax)
Lj18380:
Lj18372:
Lj18346:
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
	je	Lj18389
	jmp	Lj18390
Lj18389:
	jmp	Lj18385
Lj18390:
	movb	$0,-264(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	jne	Lj18395
	jmp	Lj18396
Lj18395:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj18399
	jmp	Lj18400
Lj18399:
	jmp	Lj18385
Lj18400:
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj18396:
	leal	-272(%ebp),%edx
	leal	-264(%ebp),%eax
	call	fpc_val_real_shortstr
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movw	-272(%ebp),%ax
	movw	%ax,-266(%ebp)
	movzwl	-266(%ebp),%eax
	testl	%eax,%eax
	jne	Lj18415
	jmp	Lj18416
Lj18415:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18419
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18420
Lj18419:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18420:
	movw	$106,(%eax)
Lj18416:
Lj18385:
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
	je	Lj18423
	jmp	Lj18424
Lj18423:
	jmp	Lj18421
Lj18424:
	movb	$0,-268(%ebp)
	movl	-8(%ebp),%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	jne	Lj18429
	jmp	Lj18430
Lj18429:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj18433
	jmp	Lj18434
Lj18433:
	jmp	Lj18421
Lj18434:
	leal	-268(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj18430:
	leal	-272(%ebp),%ecx
	leal	-268(%ebp),%edx
	movl	-4(%ebp),%eax
	call	FPC_VAL_ENUM_SHORTSTR
	movl	-12(%ebp),%edx
	movl	%eax,(%edx)
	movl	-272(%ebp),%eax
	testl	%eax,%eax
	jne	Lj18449
	jmp	Lj18450
Lj18449:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18453
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18454
Lj18453:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18454:
	movw	$106,(%eax)
Lj18450:
Lj18421:
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
	je	Lj18459
	jmp	Lj18460
Lj18459:
	jmp	Lj18455
Lj18460:
	movb	$0,-264(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	jne	Lj18465
	jmp	Lj18466
Lj18465:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj18469
	jmp	Lj18470
Lj18469:
	jmp	Lj18455
Lj18470:
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj18466:
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
	jne	Lj18485
	jmp	Lj18486
Lj18485:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18489
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18490
Lj18489:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18490:
	movw	$106,(%eax)
Lj18486:
Lj18455:
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
	je	Lj18495
	jmp	Lj18496
Lj18495:
	jmp	Lj18491
Lj18496:
	movb	$0,-264(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	jne	Lj18501
	jmp	Lj18502
Lj18501:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj18505
	jmp	Lj18506
Lj18505:
	jmp	Lj18491
Lj18506:
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj18502:
	leal	-268(%ebp),%edx
	leal	-264(%ebp),%eax
	call	fpc_val_qword_shortstr
	movl	-8(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	movl	-268(%ebp),%eax
	testl	%eax,%eax
	jne	Lj18519
	jmp	Lj18520
Lj18519:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18523
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18524
Lj18523:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18524:
	movw	$106,(%eax)
Lj18520:
Lj18491:
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
	je	Lj18529
	jmp	Lj18530
Lj18529:
	jmp	Lj18525
Lj18530:
	movb	$0,-264(%ebp)
	movl	-4(%ebp),%eax
	call	SYSTEM_IGNORESPACES$TEXT$$BOOLEAN
	testb	%al,%al
	jne	Lj18535
	jmp	Lj18536
Lj18535:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	16(%eax),%eax
	cmpl	20(%edx),%eax
	jge	Lj18539
	jmp	Lj18540
Lj18539:
	jmp	Lj18525
Lj18540:
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$255,%ecx
	call	SYSTEM_READNUMERIC$TEXT$OPENSTRING
Lj18536:
	leal	-268(%ebp),%edx
	leal	-264(%ebp),%eax
	call	fpc_val_int64_shortstr
	movl	-8(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	movl	-268(%ebp),%eax
	testl	%eax,%eax
	jne	Lj18553
	jmp	Lj18554
Lj18553:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18557
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18558
Lj18557:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18558:
	movw	$106,(%eax)
Lj18554:
Lj18525:
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
	je	Lj18561
	jmp	Lj18562
Lj18561:
	jmp	Lj18559
Lj18562:
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
	jg	Lj18569
	jmp	Lj18570
Lj18569:
	movl	-4(%ebp),%eax
	movzbl	60(%eax),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
Lj18570:
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
Lj18559:
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
	je	Lj18589
	jmp	Lj18590
Lj18589:
	jmp	Lj18587
Lj18590:
	movl	-4(%ebp),%eax
	leal	44(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj18595
	movl	-4(%eax),%eax
Lj18595:
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
Lj18587:
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
	jne	Lj18612
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj18615
	jmp	Lj18616
Lj18615:
	jmp	Lj18612
Lj18616:
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
Lj18612:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-8(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-8(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj18613
	call	FPC_RERAISE
Lj18613:
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
	je	Lj18665
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18666
Lj18665:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18666:
	call	SYSTEM_SETUPWRITESTRCOMMON$TEXTREC
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18669
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18670
Lj18669:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18670:
	leal	44(%eax),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18673
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18674
Lj18673:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18674:
	movb	-8(%ebp),%dl
	movb	%dl,60(%eax)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	fpc_shortstr_setlength
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18683
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18684
Lj18683:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18684:
	movl	$SYSTEM_WRITESTRSHORT$TEXTREC,%edx
	movl	%edx,32(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18687
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18688
Lj18687:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18688:
	movl	$SYSTEM_WRITESTRSHORT$TEXTREC,%edx
	movl	%edx,36(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18691
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18692
Lj18691:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18692:
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
	je	Lj18697
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18698
Lj18697:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18698:
	call	SYSTEM_SETUPWRITESTRCOMMON$TEXTREC
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18701
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18702
Lj18701:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18702:
	leal	44(%eax),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18705
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18706
Lj18705:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18706:
	movl	$SYSTEM_WRITESTRANSI$TEXTREC,%edx
	movl	%edx,32(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18709
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18710
Lj18709:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18710:
	movl	$SYSTEM_WRITESTRANSI$TEXTREC,%edx
	movl	%edx,36(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18713
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18714
Lj18713:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18714:
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
	je	Lj18719
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18720
Lj18719:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18720:
	call	SYSTEM_SETUPWRITESTRCOMMON$TEXTREC
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18723
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18724
Lj18723:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18724:
	leal	44(%eax),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18727
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18728
Lj18727:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18728:
	movl	$SYSTEM_WRITESTRUNICODE$TEXTREC,%edx
	movl	%edx,32(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18731
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18732
Lj18731:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18732:
	movl	$SYSTEM_WRITESTRUNICODE$TEXTREC,%edx
	movl	%edx,36(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18735
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18736
Lj18735:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18736:
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
	jle	Lj18745
	jmp	Lj18746
Lj18745:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-16(%ebp)
Lj18746:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj18749
	jmp	Lj18750
Lj18749:
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
Lj18750:
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
	je	Lj18769
	movl	-4(%ecx),%ecx
Lj18769:
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
	je	Lj18790
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18791
Lj18790:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18791:
	call	SYSTEM_SETUPREADSTRCOMMON$TEXTREC
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18794
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18795
Lj18794:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18795:
	leal	44(%eax),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18798
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18799
Lj18798:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18799:
	movl	$SYSTEM_READSTRANSI$TEXTREC,%edx
	movl	%edx,32(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18802
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18803
Lj18802:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18803:
	movl	$SYSTEM_READANSISTRFINAL$TEXTREC,%edx
	movl	%edx,36(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18806
	movl	U_SYSTEM_READWRITESTRTEXT,%eax
	call	*%edx
	jmp	Lj18807
Lj18806:
	movl	$U_SYSTEM_READWRITESTRTEXT+4,%eax
Lj18807:
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
	jne	Lj18810
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-52(%ebp),%eax
	call	FPC_SETUPREADSTR_ANSISTR
	movl	%eax,-8(%ebp)
Lj18810:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj18811
	call	FPC_RERAISE
Lj18811:
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
	jne	Lj18823
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_to_ansistr
	movl	-52(%ebp),%eax
	call	FPC_SETUPREADSTR_ANSISTR
	movl	%eax,-8(%ebp)
Lj18823:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj18824
	call	FPC_RERAISE
Lj18824:
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
	jl	Lj18847
	subl	$55217,%eax
	je	Lj18848
	decl	%eax
	je	Lj18849
	jmp	Lj18847
Lj18848:
	movl	$SYSTEM_FILEREADFUNC$TEXTREC,%eax
	movl	-4(%ebp),%edx
	movl	%eax,32(%edx)
	jmp	Lj18846
Lj18849:
	movl	$SYSTEM_FILEWRITEFUNC$TEXTREC,%eax
	movl	-4(%ebp),%edx
	movl	%eax,32(%edx)
	movl	-12(%ebp),%eax
	call	SYSTEM_DO_ISDEVICE$LONGINT$$BOOLEAN
	testb	%al,%al
	jne	Lj18854
	jmp	Lj18855
Lj18854:
	movl	$SYSTEM_FILEWRITEFUNC$TEXTREC,%eax
	movl	-4(%ebp),%edx
	movl	%eax,36(%edx)
Lj18855:
	jmp	Lj18846
Lj18847:
	movl	$102,%eax
	call	SYSTEM_HANDLEERROR$LONGINT
Lj18846:
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
	je	Lj18902
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18903
Lj18902:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18903:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18900
	jmp	Lj18901
Lj18900:
	jmp	Lj18898
Lj18901:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	jl	Lj18905
	subl	$55216,%eax
	je	Lj18907
	decl	%eax
	je	Lj18906
	decl	%eax
	jl	Lj18905
	subl	$1,%eax
	jle	Lj18906
	jmp	Lj18905
Lj18906:
	movl	-4(%ebp),%eax
	call	SYSTEM_CLOSE$file
	jmp	Lj18904
Lj18907:
	jmp	Lj18904
Lj18905:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18912
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18913
Lj18912:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18913:
	movw	$102,(%eax)
	jmp	Lj18898
Lj18904:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj18914
	jmp	Lj18915
Lj18914:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18918
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18919
Lj18918:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18919:
	movw	$2,(%eax)
	jmp	Lj18920
Lj18915:
	movl	-4(%ebp),%eax
	leal	76(%eax),%edx
	movl	-4(%ebp),%eax
	movl	$4098,%ecx
	call	SYSTEM_DO_OPEN$formal$PCHAR$LONGINT
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,8(%eax)
Lj18920:
Lj18898:
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
	je	Lj18933
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18934
Lj18933:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18934:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18931
	jmp	Lj18932
Lj18931:
	jmp	Lj18929
Lj18932:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	jl	Lj18936
	subl	$55216,%eax
	je	Lj18938
	decl	%eax
	je	Lj18937
	decl	%eax
	jl	Lj18936
	subl	$1,%eax
	jle	Lj18937
	jmp	Lj18936
Lj18937:
	movl	-4(%ebp),%eax
	call	SYSTEM_CLOSE$file
	jmp	Lj18935
Lj18938:
	jmp	Lj18935
Lj18936:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18943
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18944
Lj18943:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18944:
	movw	$102,(%eax)
	jmp	Lj18929
Lj18935:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj18945
	jmp	Lj18946
Lj18945:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj18949
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18950
Lj18949:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18950:
	movw	$2,(%eax)
	jmp	Lj18951
Lj18946:
	movl	-4(%ebp),%eax
	leal	76(%eax),%edx
	movzbl	TC_SYSTEM_FILEMODE,%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_DO_OPEN$formal$PCHAR$LONGINT
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,8(%eax)
Lj18951:
Lj18929:
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
	je	Lj18964
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18965
Lj18964:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18965:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18962
	jmp	Lj18963
Lj18962:
	jmp	Lj18960
Lj18963:
	movl	-4(%ebp),%eax
	movl	$128,%edx
	call	SYSTEM_REWRITE$file$LONGINT
Lj18960:
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
	je	Lj18974
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18975
Lj18974:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18975:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18972
	jmp	Lj18973
Lj18972:
	jmp	Lj18970
Lj18973:
	movl	-4(%ebp),%eax
	movl	$128,%edx
	call	SYSTEM_RESET$file$LONGINT
Lj18970:
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
	je	Lj18986
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj18987
Lj18986:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj18987:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj18984
	jmp	Lj18985
Lj18984:
	jmp	Lj18980
Lj18985:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj18989
	subl	$55217,%eax
	je	Lj18991
	decl	%eax
	jl	Lj18989
	subl	$1,%eax
	jle	Lj18990
	jmp	Lj18989
Lj18990:
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
	jmp	Lj18988
Lj18991:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19008
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19009
Lj19008:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19009:
	movw	$105,(%eax)
	jmp	Lj18988
Lj18989:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19012
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19013
Lj19012:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19013:
	movw	$103,(%eax)
Lj18988:
Lj18980:
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
	je	Lj19076
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19077
Lj19076:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19077:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj19075
	jmp	Lj19073
Lj19075:
	movl	-12(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	cmpl	-16(%ebp),%eax
	jg	Lj19074
	jl	Lj19073
	cmpl	-20(%ebp),%edx
	ja	Lj19074
	jmp	Lj19073
	jmp	Lj19073
Lj19074:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj19072
	jmp	Lj19073
Lj19072:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19080
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19081
Lj19080:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19081:
	movw	$101,(%eax)
Lj19073:
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
	je	Lj19088
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19089
Lj19088:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19089:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19086
	jmp	Lj19087
Lj19086:
	jmp	Lj19082
Lj19087:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj19091
	subl	$55217,%eax
	je	Lj19092
	decl	%eax
	je	Lj19093
	decl	%eax
	je	Lj19092
	jmp	Lj19091
Lj19092:
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
	jmp	Lj19090
Lj19093:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19110
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19111
Lj19110:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19111:
	movw	$104,(%eax)
	jmp	Lj19090
Lj19091:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19114
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19115
Lj19114:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19115:
	movw	$103,(%eax)
Lj19090:
Lj19082:
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
	je	Lj19178
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19179
Lj19178:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19179:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj19177
	jmp	Lj19175
Lj19177:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	cmpl	12(%ebp),%edx
	jl	Lj19176
	jg	Lj19175
	cmpl	8(%ebp),%eax
	jb	Lj19176
	jmp	Lj19175
	jmp	Lj19175
Lj19176:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jg	Lj19174
	jl	Lj19175
	cmpl	$0,%eax
	ja	Lj19174
	jmp	Lj19175
Lj19174:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19182
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19183
Lj19182:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19183:
	movw	$100,(%eax)
Lj19175:
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
	je	Lj19190
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19191
Lj19190:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19191:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19188
	jmp	Lj19189
Lj19188:
	jmp	Lj19184
Lj19189:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj19193
	subl	$55217,%eax
	je	Lj19194
	decl	%eax
	jl	Lj19193
	subl	$1,%eax
	jle	Lj19194
	jmp	Lj19193
Lj19194:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_FILEPOS$LONGINT$$INT64
	pushl	%edx
	pushl	%eax
	call	fpc_div_int64
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj19192
Lj19193:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19205
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19206
Lj19205:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19206:
	movw	$103,(%eax)
Lj19192:
Lj19184:
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
	je	Lj19213
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19214
Lj19213:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19214:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19211
	jmp	Lj19212
Lj19211:
	jmp	Lj19207
Lj19212:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj19216
	subl	$55217,%eax
	je	Lj19217
	decl	%eax
	jl	Lj19216
	subl	$1,%eax
	jle	Lj19217
	jmp	Lj19216
Lj19217:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$0,%eax
	jg	Lj19218
	jmp	Lj19219
Lj19218:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	pushl	%eax
	pushl	%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_FILESIZE$LONGINT$$INT64
	pushl	%edx
	pushl	%eax
	call	fpc_div_int64
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
Lj19219:
	jmp	Lj19215
Lj19216:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19230
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19231
Lj19230:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19231:
	movw	$103,(%eax)
Lj19215:
Lj19207:
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
	je	Lj19238
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19239
Lj19238:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19239:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19236
	jmp	Lj19237
Lj19236:
	jmp	Lj19232
Lj19237:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj19241
	subl	$55217,%eax
	je	Lj19242
	decl	%eax
	jl	Lj19241
	subl	$1,%eax
	jle	Lj19242
	jmp	Lj19241
Lj19242:
	movl	-4(%ebp),%eax
	call	SYSTEM_FILESIZE$file$$INT64
	movl	%eax,%ebx
	movl	%edx,%esi
	movl	-4(%ebp),%eax
	call	SYSTEM_FILEPOS$file$$INT64
	cmpl	%edx,%esi
	jl	Lj19243
	jg	Lj19244
	cmpl	%eax,%ebx
	jbe	Lj19243
	jmp	Lj19244
Lj19243:
	movb	$1,-5(%ebp)
	jmp	Lj19249
Lj19244:
	movb	$0,-5(%ebp)
Lj19249:
	jmp	Lj19240
Lj19241:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19252
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19253
Lj19252:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19253:
	movw	$103,(%eax)
Lj19240:
Lj19232:
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
	je	Lj19258
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19259
Lj19258:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19259:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19256
	jmp	Lj19257
Lj19256:
	jmp	Lj19254
Lj19257:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj19261
	subl	$55217,%eax
	je	Lj19262
	decl	%eax
	jl	Lj19261
	subl	$1,%eax
	jle	Lj19262
	jmp	Lj19261
Lj19262:
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
	pushl	%edx
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_SEEK$LONGINT$INT64
	jmp	Lj19260
Lj19261:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19275
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19276
Lj19275:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19276:
	movw	$103,(%eax)
Lj19260:
Lj19254:
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
	je	Lj19281
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19282
Lj19281:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19282:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19279
	jmp	Lj19280
Lj19279:
	jmp	Lj19277
Lj19280:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jl	Lj19284
	subl	$55218,%eax
	subl	$1,%eax
	jle	Lj19285
	jmp	Lj19284
Lj19285:
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
	pushl	%edx
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_TRUNCATE$LONGINT$INT64
	jmp	Lj19283
Lj19284:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19300
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19301
Lj19300:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19301:
	movw	$103,(%eax)
Lj19283:
Lj19277:
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
	je	Lj19306
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19307
Lj19306:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19307:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19304
	jmp	Lj19305
Lj19304:
	jmp	Lj19302
Lj19305:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj19309
	subl	$55217,%eax
	je	Lj19310
	decl	%eax
	jl	Lj19309
	subl	$1,%eax
	jle	Lj19310
	jmp	Lj19309
Lj19310:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_CLOSE$LONGINT
	movl	-4(%ebp),%eax
	movl	$55216,4(%eax)
	jmp	Lj19308
Lj19309:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19317
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19318
Lj19317:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19318:
	movw	$103,(%eax)
Lj19308:
Lj19302:
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
	je	Lj19323
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19324
Lj19323:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19324:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19321
	jmp	Lj19322
Lj19321:
	jmp	Lj19319
Lj19322:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	je	Lj19325
	jmp	Lj19326
Lj19325:
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	call	SYSTEM_DO_ERASE$PCHAR
Lj19326:
Lj19319:
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
	je	Lj19333
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19334
Lj19333:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19334:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19331
	jmp	Lj19332
Lj19331:
	jmp	Lj19329
Lj19332:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55216,%eax
	je	Lj19335
	jmp	Lj19336
Lj19335:
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	movl	-8(%ebp),%edx
	call	SYSTEM_DO_RENAME$PCHAR$PCHAR
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19343
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19344
Lj19343:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19344:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj19341
	jmp	Lj19342
Lj19341:
	movl	-8(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	movl	%eax,%ecx
	incl	%ecx
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	leal	76(%edx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj19342:
Lj19336:
Lj19329:
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
	je	Lj19357
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19358
Lj19357:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19358:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19355
	jmp	Lj19356
Lj19355:
	jmp	Lj19353
Lj19356:
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
Lj19353:
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
	je	Lj19375
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19376
Lj19375:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19376:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19373
	jmp	Lj19374
Lj19373:
	jmp	Lj19371
Lj19374:
	movb	-8(%ebp),%al
	movb	%al,-10(%ebp)
	movb	$0,-9(%ebp)
	leal	-10(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_RENAME$file$PCHAR
Lj19371:
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
	je	Lj19425
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19426
Lj19425:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19426:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19423
	jmp	Lj19424
Lj19423:
	jmp	Lj19421
Lj19424:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_RESET$file$LONGINT
Lj19421:
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
	je	Lj19435
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19436
Lj19435:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19436:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19433
	jmp	Lj19434
Lj19433:
	jmp	Lj19431
Lj19434:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_REWRITE$file$LONGINT
Lj19431:
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
	movl	$_$SYSTEM$_Ld40,%eax
	movl	%eax,-272(%ebp)
	movl	$1000000000,%eax
	call	SYSTEM_RANDOM$LONGINT$$LONGINT
	leal	-528(%ebp),%ecx
	movb	$8,%dl
	call	SYSTEM_HEXSTR$LONGINT$BYTE$$SHORTSTRING
	leal	-528(%ebp),%eax
	movl	%eax,-268(%ebp)
	movl	$_$SYSTEM$_Ld41,%eax
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
	je	Lj19467
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19468
Lj19467:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19468:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19465
	jmp	Lj19466
Lj19465:
	jmp	Lj19463
Lj19466:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj19469
	jmp	Lj19470
Lj19469:
	movl	-4(%ebp),%eax
	call	SYSTEM_DOASSIGN$TYPEDFILE
Lj19470:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_RESET$file$LONGINT
Lj19463:
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
	je	Lj19481
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19482
Lj19481:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19482:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19479
	jmp	Lj19480
Lj19479:
	jmp	Lj19477
Lj19480:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj19483
	jmp	Lj19484
Lj19483:
	movl	-4(%ebp),%eax
	call	SYSTEM_DOASSIGN$TYPEDFILE
Lj19484:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_REWRITE$file$LONGINT
Lj19477:
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
	je	Lj19495
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19496
Lj19495:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19496:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19493
	jmp	Lj19494
Lj19493:
	jmp	Lj19491
Lj19494:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj19498
	subl	$55217,%eax
	je	Lj19500
	decl	%eax
	jl	Lj19498
	subl	$1,%eax
	jle	Lj19499
	jmp	Lj19498
Lj19499:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_WRITE$LONGINT$POINTER$LONGINT$$LONGINT
	jmp	Lj19497
Lj19500:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19509
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19510
Lj19509:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19510:
	movw	$105,(%eax)
	jmp	Lj19497
Lj19498:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19513
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19514
Lj19513:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19514:
	movw	$103,(%eax)
Lj19497:
Lj19491:
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
	je	Lj19519
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19520
Lj19519:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19520:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19517
	jmp	Lj19518
Lj19517:
	jmp	Lj19515
Lj19518:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55217,%eax
	jl	Lj19522
	subl	$55217,%eax
	je	Lj19523
	decl	%eax
	je	Lj19524
	decl	%eax
	je	Lj19523
	jmp	Lj19522
Lj19523:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_DO_READ$LONGINT$POINTER$LONGINT$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj19533
	jmp	Lj19534
Lj19533:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19537
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19538
Lj19537:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19538:
	movw	$100,(%eax)
Lj19534:
	jmp	Lj19521
Lj19524:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19541
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19542
Lj19541:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19542:
	movw	$104,(%eax)
	jmp	Lj19521
Lj19522:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19545
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19546
Lj19545:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19546:
	movw	$103,(%eax)
Lj19521:
Lj19515:
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
	subl	$10,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj19552
	jmp	Lj19549
Lj19552:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj19549
	jmp	Lj19551
Lj19551:
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
	jmp	Lj19550
Lj19549:
	jmp	Lj19547
Lj19550:
	movl	-4(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	pushl	$0
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_270
	addl	$8,%esp
	movw	%ax,-10(%ebp)
	movzwl	-10(%ebp),%eax
	testl	%eax,%eax
	jne	Lj19563
	jmp	Lj19564
Lj19563:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19567
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19568
Lj19567:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19568:
	movw	-10(%ebp),%dx
	movw	%dx,(%eax)
	call	SYSTEM_ERRNO2INOUTRES
Lj19564:
Lj19547:
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
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj19573
	jmp	Lj19572
Lj19573:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$46,%al
	je	Lj19571
	jmp	Lj19572
Lj19571:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19576
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19577
Lj19576:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19577:
	movw	$16,(%eax)
Lj19572:
	cmpl	$0,-4(%ebp)
	jne	Lj19581
	jmp	Lj19578
Lj19581:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj19578
	jmp	Lj19580
Lj19580:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19582
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19583
Lj19582:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19583:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19578
	jmp	Lj19579
Lj19578:
	jmp	Lj19569
Lj19579:
	movl	-4(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_226
	popl	%ebx
	movw	%ax,-10(%ebp)
	movzwl	-10(%ebp),%eax
	testl	%eax,%eax
	jne	Lj19590
	jmp	Lj19591
Lj19590:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19594
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19595
Lj19594:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19595:
	movw	-10(%ebp),%dx
	movw	%dx,(%eax)
	call	SYSTEM_ERRNO2INOUTRES
Lj19591:
Lj19569:
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
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,-4(%ebp)
	jne	Lj19601
	jmp	Lj19598
Lj19601:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj19598
	jmp	Lj19600
Lj19600:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19602
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19603
Lj19602:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19603:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19598
	jmp	Lj19599
Lj19598:
	jmp	Lj19596
Lj19599:
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	jae	Lj19606
	jmp	Lj19605
Lj19606:
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$58,%al
	je	Lj19604
	jmp	Lj19605
Lj19604:
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
	jne	Lj19611
	jmp	Lj19612
Lj19611:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19615
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19616
Lj19615:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19616:
	movw	-12(%ebp),%dx
	movw	%dx,(%eax)
	jmp	Lj19617
Lj19612:
	movl	-8(%ebp),%eax
	cmpl	$2,%eax
	ja	Lj19618
	jmp	Lj19619
Lj19618:
	movl	-4(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	decl	%eax
	movb	(%edx,%eax,1),%al
	cmpb	$92,%al
	je	Lj19624
	jmp	Lj19623
Lj19624:
	movl	-8(%ebp),%eax
	cmpl	$3,%eax
	jne	Lj19622
	jmp	Lj19623
Lj19622:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	decl	%eax
	movb	$0,(%edx,%eax,1)
Lj19623:
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_255
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj19631
	jmp	Lj19632
Lj19631:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19635
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19636
Lj19635:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19636:
	movw	-12(%ebp),%dx
	movw	%dx,(%eax)
	call	SYSTEM_ERRNO2INOUTRES
Lj19632:
Lj19619:
Lj19617:
	jmp	Lj19637
Lj19605:
	movl	-4(%ebp),%eax
	call	SYSTEM_DODIRSEPARATORS$PCHAR
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj19642
	jmp	Lj19641
Lj19642:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	decl	%eax
	movb	(%edx,%eax,1),%al
	cmpb	$92,%al
	je	Lj19640
	jmp	Lj19641
Lj19640:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	decl	%eax
	movb	$0,(%edx,%eax,1)
Lj19641:
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_255
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj19649
	jmp	Lj19650
Lj19649:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19653
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19654
Lj19653:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19654:
	movw	-12(%ebp),%dx
	movw	%dx,(%eax)
	call	SYSTEM_ERRNO2INOUTRES
Lj19650:
Lj19637:
Lj19596:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSTEM_GETDIR$BYTE$OPENSTRING
SYSTEM_GETDIR$BYTE$OPENSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$288,%esp
	movl	%ebx,-288(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movb	$0,4(%eax)
	movl	-8(%ebp),%eax
	leal	4(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	$252,-24(%ebp)
	leal	-24(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%eax
	pushl	%eax
	movzbl	-4(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_274
	addl	$12,%esp
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19671
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19672
Lj19671:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19672:
	movw	%bx,(%eax)
	movl	-8(%ebp),%eax
	movb	$3,(%eax)
	movl	-8(%ebp),%eax
	movb	$58,2(%eax)
	movl	-8(%ebp),%eax
	movb	$92,3(%eax)
	movb	$4,-17(%ebp)
	jmp	Lj19682
	.balign 4,0x90
Lj19681:
	movl	-8(%ebp),%eax
	movzbl	-17(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj19684
	jmp	Lj19685
Lj19684:
	movl	-8(%ebp),%eax
	movzbl	-17(%ebp),%edx
	movb	$92,(%eax,%edx,1)
Lj19685:
	movl	-8(%ebp),%eax
	movb	-17(%ebp),%dl
	movb	%dl,(%eax)
	incb	-17(%ebp)
Lj19682:
	movl	-8(%ebp),%eax
	movzbl	-17(%ebp),%edx
	movb	(%eax,%edx,1),%al
	testb	%al,%al
	jne	Lj19681
	jmp	Lj19683
Lj19683:
	movzbl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj19690
	jmp	Lj19691
Lj19690:
	movzbl	-4(%ebp),%eax
	addl	$64,%eax
	movl	-8(%ebp),%edx
	movb	%al,1(%edx)
	jmp	Lj19694
Lj19691:
	leal	-28(%ebp),%eax
	pushl	%eax
	leal	-24(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_275
	addl	$8,%esp
	movl	-24(%ebp),%eax
	addl	$64,%eax
	movl	-8(%ebp),%edx
	movb	%al,1(%edx)
Lj19694:
	movb	TC_SYSTEM_FILENAMECASESENSITIVE,%al
	testb	%al,%al
	je	Lj19701
	jmp	Lj19702
Lj19701:
	leal	-284(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_UPCASE$SHORTSTRING$$SHORTSTRING
	leal	-284(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_shortstr_to_shortstr
Lj19702:
	movl	-288(%ebp),%ebx
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
	jne	Lj19715
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
Lj19715:
	call	FPC_POPADDRSTACK
	leal	-308(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-308(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj19716
	call	FPC_RERAISE
Lj19716:
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
	je	Lj19732
	jmp	Lj19734
Lj19734:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19735
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19736
Lj19735:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19736:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19732
	jmp	Lj19733
Lj19732:
	jmp	Lj19730
Lj19733:
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
Lj19730:
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
	je	Lj19751
	jmp	Lj19753
Lj19753:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19754
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19755
Lj19754:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19755:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19751
	jmp	Lj19752
Lj19751:
	jmp	Lj19749
Lj19752:
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
Lj19749:
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
	je	Lj19770
	jmp	Lj19772
Lj19772:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj19773
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj19774
Lj19773:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj19774:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj19770
	jmp	Lj19771
Lj19770:
	jmp	Lj19768
Lj19771:
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
Lj19768:
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
	jne	Lj19797
	movl	-12(%ebp),%ecx
	testl	%ecx,%ecx
	jne	Lj19804
	movl	$FPC_EMPTYCHAR,%ecx
Lj19804:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj19807
	movl	$FPC_EMPTYCHAR,%edx
Lj19807:
	movl	-4(%ebp),%eax
	call	SYSTEM_FINDRESOURCE$LONGWORD$PCHAR$PCHAR$$LONGWORD
	movl	%eax,-16(%ebp)
Lj19797:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-12(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj19798
	call	FPC_RERAISE
Lj19798:
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
	jne	Lj19812
	movzwl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	testl	%ecx,%ecx
	jne	Lj19821
	movl	$FPC_EMPTYCHAR,%ecx
Lj19821:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj19824
	movl	$FPC_EMPTYCHAR,%edx
Lj19824:
	movl	-4(%ebp),%eax
	call	SYSTEM_FINDRESOURCEEX$LONGWORD$PCHAR$PCHAR$WORD$$LONGWORD
	movl	%eax,-16(%ebp)
Lj19812:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-12(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj19813
	call	FPC_RERAISE
Lj19813:
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
SYSTEM_IS_PREFETCH$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	movl	$16,-36(%ebp)
	leal	-40(%ebp),%eax
	pushl	%eax
	leal	-36(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_306
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj19990
	jmp	Lj19988
Lj19990:
	movl	-40(%ebp),%eax
	andl	$16400,%eax
	testl	%eax,%eax
	jne	Lj19989
	jmp	Lj19988
Lj19989:
	movl	-36(%ebp),%eax
	cmpl	$16,%eax
	jae	Lj19987
	jmp	Lj19988
Lj19987:
	movl	-4(%ebp),%eax
	leal	-21(%ebp),%edx
	movl	$16,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	jmp	Lj20003
Lj19988:
	jmp	Lj19981
Lj20003:
	movl	$0,-32(%ebp)
	movb	$1,-22(%ebp)
	jmp	Lj20009
	.balign 4,0x90
Lj20008:
	movl	-32(%ebp),%eax
	movb	-21(%ebp,%eax,1),%al
	movb	%al,-25(%ebp)
	movb	-25(%ebp),%al
	andb	$15,%al
	movb	%al,-23(%ebp)
	movb	-25(%ebp),%al
	andb	$240,%al
	movb	%al,-24(%ebp)
	movb	-24(%ebp),%al
	testb	%al,%al
	je	Lj20022
	subb	$32,%al
	je	Lj20019
	subb	$16,%al
	je	Lj20019
	subb	$48,%al
	je	Lj20020
	subb	$144,%al
	je	Lj20021
	jmp	Lj20018
Lj20019:
	movb	-23(%ebp),%al
	andb	$7,%al
	movzbl	%al,%eax
	cmpl	$6,%eax
	seteb	-22(%ebp)
	jmp	Lj20017
Lj20020:
	movb	-23(%ebp),%al
	andb	$12,%al
	movzbl	%al,%eax
	cmpl	$4,%eax
	seteb	-22(%ebp)
	jmp	Lj20017
Lj20021:
	movzbl	-23(%ebp),%eax
	cmpl	$0,%eax
	stc
	je	Lj20029
	subl	$2,%eax
	cmpl	$2,%eax
	jb	Lj20029
Lj20029:
	setcb	-22(%ebp)
	jmp	Lj20017
Lj20022:
	movzbl	-23(%ebp),%eax
	cmpl	$15,%eax
	je	Lj20032
	jmp	Lj20031
Lj20032:
	movl	-32(%ebp),%eax
	incl	%eax
	movzbl	-21(%ebp,%eax,1),%eax
	cmpl	$13,%eax
	je	Lj20033
	cmpl	$24,%eax
	je	Lj20033
Lj20033:
	je	Lj20030
	jmp	Lj20031
Lj20030:
	movb	$1,-5(%ebp)
	jmp	Lj20034
Lj20031:
	movb	$0,-5(%ebp)
Lj20034:
	jmp	Lj19981
	jmp	Lj20017
Lj20018:
	movb	$0,-22(%ebp)
Lj20017:
	incl	-32(%ebp)
Lj20009:
	cmpb	$0,-22(%ebp)
	jne	Lj20037
	jmp	Lj20010
Lj20037:
	movl	-32(%ebp),%eax
	cmpl	$15,%eax
	jl	Lj20008
	jmp	Lj20010
Lj20010:
Lj19981:
	movb	-5(%ebp),%al
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
	cmpl	$0,%eax
	jg	Lj20040
	jmp	Lj20041
Lj20040:
	decb	TC_SYSTEM_EXCEPTLEVEL
Lj20041:
	movzbl	TC_SYSTEM_EXCEPTLEVEL,%eax
	movl	U_SYSTEM_EXCEPTEIP(,%eax,4),%eax
	movl	%eax,-4(%ebp)
	movzbl	TC_SYSTEM_EXCEPTLEVEL,%eax
	movzbl	U_SYSTEM_EXCEPTERROR(,%eax,1),%eax
	movl	%eax,-12(%ebp)
	movzbl	TC_SYSTEM_EXCEPTLEVEL,%eax
	cmpb	$0,U_SYSTEM_RESETFPU(,%eax,1)
	jne	Lj20046
	jmp	Lj20047
Lj20046:
	call	SYSTEM_SYSRESETFPU
Lj20047:
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
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	$0,-8(%ebp)
	movl	16(%ebp),%eax
	movl	172(%eax),%eax
	cmpl	U_SYSTEM__SS,%eax
	je	Lj20052
	jmp	Lj20053
Lj20052:
	movb	$0,-9(%ebp)
	movb	$1,-10(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$-2147418111,%eax
	jb	Lj20059
	subl	$-2147418111,%eax
	je	Lj20062
	subl	$1073676292,%eax
	je	Lj20068
	subl	$23,%eax
	je	Lj20067
	subl	$119,%eax
	je	Lj20061
	decl	%eax
	je	Lj20064
	decl	%eax
	je	Lj20060
	decl	%eax
	jb	Lj20059
	subl	$1,%eax
	jbe	Lj20065
	decl	%eax
	je	Lj20063
	decl	%eax
	je	Lj20065
	decl	%eax
	je	Lj20064
	decl	%eax
	je	Lj20060
	decl	%eax
	je	Lj20066
	decl	%eax
	je	Lj20070
	subl	$65382,%eax
	je	Lj20069
	jmp	Lj20059
Lj20060:
	movb	$200,-9(%ebp)
	jmp	Lj20058
Lj20061:
	movb	$201,-9(%ebp)
	movb	$0,-10(%ebp)
	jmp	Lj20058
Lj20062:
	movb	$202,-9(%ebp)
	movb	$0,-10(%ebp)
	jmp	Lj20058
Lj20063:
	movb	$205,-9(%ebp)
	jmp	Lj20058
Lj20064:
	movb	$206,-9(%ebp)
	jmp	Lj20058
Lj20065:
	movb	$207,-9(%ebp)
	jmp	Lj20058
Lj20066:
	movb	$215,-9(%ebp)
	movb	$0,-10(%ebp)
	jmp	Lj20058
Lj20067:
	cmpb	$0,U_SYSTEM_SSE_CHECK
	jne	Lj20091
	jmp	Lj20092
Lj20091:
	movb	$0,U_SYSTEM_OS_SUPPORTS_SSE
	movl	16(%ebp),%eax
	addl	$3,156(%eax)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	$-1,-8(%ebp)
	jmp	Lj20099
Lj20092:
	movb	$216,-9(%ebp)
Lj20099:
	jmp	Lj20058
Lj20068:
	movl	16(%ebp),%eax
	movl	156(%eax),%eax
	call	SYSTEM_IS_PREFETCH$POINTER$$BOOLEAN
	testb	%al,%al
	jne	Lj20102
	jmp	Lj20103
Lj20102:
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	$-1,-8(%ebp)
	jmp	Lj20110
Lj20103:
	movb	$216,-9(%ebp)
Lj20110:
	jmp	Lj20058
Lj20069:
	movl	8(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$1,%eax
	jb	Lj20114
	decl	%eax
	je	Lj20116
	subl	$2,%eax
	je	Lj20115
	decl	%eax
	je	Lj20116
	jmp	Lj20114
Lj20115:
	movb	$217,-9(%ebp)
	jmp	Lj20113
Lj20116:
	cmpl	$0,TC_SYSTEM_CTRLBREAKHANDLER
	jne	Lj20119
	jmp	Lj20120
Lj20119:
	movl	8(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$4,%eax
	seteb	%al
	movl	TC_SYSTEM_CTRLBREAKHANDLER,%edx
	call	*%edx
	testb	%al,%al
	jne	Lj20121
	jmp	Lj20122
Lj20121:
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	$-1,-8(%ebp)
	movl	8(%ebp),%eax
	pushl	20(%eax)
	call	_$dll$doscalls$_index_418
	popl	%ebx
	jmp	Lj20131
Lj20122:
	movb	$217,-9(%ebp)
Lj20131:
Lj20120:
	jmp	Lj20113
Lj20114:
Lj20113:
	jmp	Lj20058
Lj20070:
	movb	$218,-9(%ebp)
	movb	$0,-10(%ebp)
	jmp	Lj20058
Lj20059:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	andl	$-1073741824,%eax
	cmpl	$-1073741824,%eax
	je	Lj20138
	jmp	Lj20139
Lj20138:
	movb	$217,-9(%ebp)
	jmp	Lj20142
Lj20139:
	movb	$255,-9(%ebp)
Lj20142:
Lj20058:
	movzbl	-9(%ebp),%eax
	testl	%eax,%eax
	jne	Lj20148
	jmp	Lj20146
Lj20148:
	movzbl	TC_SYSTEM_EXCEPTLEVEL,%eax
	cmpl	$16,%eax
	jl	Lj20147
	jmp	Lj20146
Lj20147:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$-1073676287,%eax
	jb	Lj20145
	jmp	Lj20146
Lj20145:
	movzbl	TC_SYSTEM_EXCEPTLEVEL,%edx
	movl	16(%ebp),%eax
	movl	156(%eax),%eax
	movl	%eax,U_SYSTEM_EXCEPTEIP(,%edx,4)
	movzbl	TC_SYSTEM_EXCEPTLEVEL,%eax
	movb	-9(%ebp),%dl
	movb	%dl,U_SYSTEM_EXCEPTERROR(,%eax,1)
	movzbl	TC_SYSTEM_EXCEPTLEVEL,%eax
	movb	-10(%ebp),%dl
	movb	%dl,U_SYSTEM_RESETFPU(,%eax,1)
	incb	TC_SYSTEM_EXCEPTLEVEL
	movl	16(%ebp),%edx
	movl	$SYSTEM_JUMPTOHANDLEERRORFRAME,%eax
	movl	%eax,156(%edx)
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	$-1,-8(%ebp)
Lj20146:
	jmp	Lj20161
Lj20053:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$-1073676285,%eax
	je	Lj20165
	jmp	Lj20163
Lj20165:
	movl	8(%ebp),%eax
	movl	20(%eax),%eax
	andl	$5,%eax
	testl	%eax,%eax
	jne	Lj20164
	jmp	Lj20163
Lj20164:
	cmpl	$0,TC_SYSTEM_CTRLBREAKHANDLER
	jne	Lj20162
	jmp	Lj20163
Lj20162:
	movl	8(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$4,%eax
	seteb	%al
	movl	TC_SYSTEM_CTRLBREAKHANDLER,%edx
	call	*%edx
	testb	%al,%al
	jne	Lj20166
	jmp	Lj20167
Lj20166:
	movl	8(%ebp),%eax
	movl	$0,(%eax)
	movl	$-1,-8(%ebp)
	movl	8(%ebp),%eax
	pushl	20(%eax)
	call	_$dll$doscalls$_index_418
	popl	%ebx
	jmp	Lj20176
Lj20167:
	movb	$217,-9(%ebp)
Lj20176:
Lj20163:
Lj20161:
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%ebx
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
	jne	Lj20193
	jmp	Lj20194
Lj20193:
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
Lj20194:
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
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj20219
	jmp	Lj20218
Lj20219:
	call	SYSTEM_PARAMCOUNT$$LONGINT
	cmpl	-4(%ebp),%eax
	jge	Lj20217
	jmp	Lj20218
Lj20217:
	movl	U_SYSTEM_ARGV,%eax
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
	jmp	Lj20230
Lj20218:
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
Lj20230:
	leave
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
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	cmpl	$0,%eax
	jg	Lj20241
	jmp	Lj20242
Lj20241:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	U_SYSTEM_ERRORLEN,%edx
	addl	%edx,%eax
	cmpl	$1024,%eax
	jg	Lj20243
	jmp	Lj20244
Lj20243:
	movl	U_SYSTEM_ERRORLEN,%edx
	movl	$1024,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-16(%ebp)
	jmp	Lj20247
Lj20244:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-16(%ebp)
Lj20247:
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
Lj20242:
	movl	U_SYSTEM_ERRORLEN,%eax
	cmpl	$3,%eax
	jg	Lj20258
	jmp	Lj20259
Lj20258:
	movl	U_SYSTEM_ERRORLEN,%eax
	leal	U_SYSTEM_ERRORBUF(,%eax,1),%eax
	movl	%eax,-12(%ebp)
	movl	$1,-16(%ebp)
	decl	-16(%ebp)
	.balign 4,0x90
Lj20264:
	incl	-16(%ebp)
	decl	-12(%ebp)
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$10,%eax
	je	Lj20267
	cmpl	$13,%eax
	je	Lj20267
Lj20267:
	jne	Lj20265
	jmp	Lj20266
Lj20265:
	jmp	Lj20263
Lj20266:
	cmpl	$4,-16(%ebp)
	jl	Lj20264
Lj20263:
Lj20259:
	movl	U_SYSTEM_ERRORLEN,%eax
	cmpl	$1024,%eax
	je	Lj20268
	jmp	Lj20269
Lj20268:
	movl	$4,-16(%ebp)
Lj20269:
	movl	-16(%ebp),%eax
	cmpl	$4,%eax
	je	Lj20272
	jmp	Lj20273
Lj20272:
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
Lj20273:
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
	jg	Lj20294
	jmp	Lj20295
Lj20294:
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
Lj20295:
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
.globl	SYSTEM_SYSINITSTDIO
SYSTEM_SYSINITSTDIO:
	pushl	%ebp
	movl	%esp,%ebp
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20338
	movl	U_SYSTEM_INPUT,%eax
	call	*%edx
	jmp	Lj20339
Lj20338:
	movl	$U_SYSTEM_INPUT+4,%eax
Lj20339:
	movl	$0,%ecx
	movl	$55217,%edx
	call	SYSTEM_OPENSTDIO$TEXT$LONGINT$LONGINT
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20346
	movl	U_SYSTEM_OUTPUT,%eax
	call	*%edx
	jmp	Lj20347
Lj20346:
	movl	$U_SYSTEM_OUTPUT+4,%eax
Lj20347:
	movl	$1,%ecx
	movl	$55218,%edx
	call	SYSTEM_OPENSTDIO$TEXT$LONGINT$LONGINT
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20354
	movl	U_SYSTEM_ERROUTPUT,%eax
	call	*%edx
	jmp	Lj20355
Lj20354:
	movl	$U_SYSTEM_ERROUTPUT+4,%eax
Lj20355:
	movl	$2,%ecx
	movl	$55218,%edx
	call	SYSTEM_OPENSTDIO$TEXT$LONGINT$LONGINT
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20362
	movl	U_SYSTEM_STDOUT,%eax
	call	*%edx
	jmp	Lj20363
Lj20362:
	movl	$U_SYSTEM_STDOUT+4,%eax
Lj20363:
	movl	$1,%ecx
	movl	$55218,%edx
	call	SYSTEM_OPENSTDIO$TEXT$LONGINT$LONGINT
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20370
	movl	U_SYSTEM_STDERR,%eax
	call	*%edx
	jmp	Lj20371
Lj20370:
	movl	$U_SYSTEM_STDERR+4,%eax
Lj20371:
	movl	$2,%ecx
	movl	$55218,%edx
	call	SYSTEM_OPENSTDIO$TEXT$LONGINT$LONGINT
	leave
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
	jz	Lj20378
	leal	3(%edi),%ecx
	andl	$-4,%ecx
	movl	%edi,%esi
	subl	%edi,%ecx
	movl	%eax,%edi
	jz	Lj20379
Lj20380:
	movb	(%esi),%al
	incl	%edi
	incl	%esi
	testb	%al,%al
	movb	%al,-1(%edi)
	jz	Lj20378
	decl	%ecx
	jnz	Lj20380
	.balign 16,0x90
Lj20379:
	movl	(%esi),%eax
	movl	%eax,%edx
	leal	-16843009(%eax),%ecx
	notl	%edx
	addl	$4,%esi
	andl	%edx,%ecx
	andl	$-2139062144,%ecx
	jnz	Lj20381
	movl	%eax,(%edi)
	addl	$4,%edi
	jmp	Lj20379
Lj20381:
	testl	$255,%eax
	jz	Lj20382
	testl	$65280,%eax
	jz	Lj20383
	testl	$16711680,%eax
	jz	Lj20384
	movl	%eax,(%edi)
	jmp	Lj20378
Lj20384:
	xorb	%dl,%dl
	movw	%ax,(%edi)
	movb	%dl,2(%edi)
	jmp	Lj20378
Lj20383:
	movw	%ax,(%edi)
	jmp	Lj20378
Lj20382:
	movb	%al,(%edi)
Lj20378:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edi
	movl	-12(%ebp),%esi
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
	je	Lj20389
	movl	U_SYSTEM_DEFAULTFILETYPE,%eax
	call	*%edx
	jmp	Lj20390
Lj20389:
	movl	$U_SYSTEM_DEFAULTFILETYPE+4,%eax
Lj20390:
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
	je	Lj20399
	movl	U_SYSTEM_DEFAULTCREATOR,%eax
	call	*%edx
	jmp	Lj20400
Lj20399:
	movl	$U_SYSTEM_DEFAULTCREATOR+4,%eax
Lj20400:
	leal	-260(%ebp),%ecx
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INITENVIRONMENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	$0,-4(%ebp)
	movl	U_SYSTEM_ENVIRONMENT,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj20412
	.balign 4,0x90
Lj20411:
	incl	-4(%ebp)
	jmp	Lj20415
	.balign 4,0x90
Lj20414:
	incl	-12(%ebp)
Lj20415:
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj20414
	jmp	Lj20416
Lj20416:
	incl	-12(%ebp)
Lj20412:
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj20411
	jmp	Lj20413
Lj20413:
	movl	-4(%ebp),%eax
	incl	%eax
	shll	$2,%eax
	call	SYSTEM_SYSGETMEM$LONGWORD$$POINTER
	movl	%eax,U_SYSTEM_ENVP
	movl	-4(%ebp),%eax
	movl	%eax,U_SYSTEM_ENVC
	movl	U_SYSTEM_ENVP,%eax
	testl	%eax,%eax
	je	Lj20423
	jmp	Lj20424
Lj20423:
	jmp	Lj20405
Lj20424:
	movl	U_SYSTEM_ENVIRONMENT,%eax
	movl	%eax,-12(%ebp)
	movl	$0,-4(%ebp)
	jmp	Lj20430
	.balign 4,0x90
Lj20429:
	movl	-12(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	incl	%eax
	call	SYSTEM_SYSGETMEM$LONGWORD$$POINTER
	movl	U_SYSTEM_ENVP,%edx
	movl	-4(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
	movl	U_SYSTEM_ENVP,%eax
	movl	-4(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	-12(%ebp),%edx
	call	SYSTEM_STRCOPY$PCHAR$PCHAR$$PCHAR
	incl	-4(%ebp)
	jmp	Lj20443
	.balign 4,0x90
Lj20442:
	incl	-12(%ebp)
Lj20443:
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj20442
	jmp	Lj20444
Lj20444:
	incl	-12(%ebp)
Lj20430:
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj20429
	jmp	Lj20431
Lj20431:
	movl	U_SYSTEM_ENVP,%edx
	movl	-4(%ebp),%eax
	movl	$0,(%edx,%eax,4)
Lj20405:
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INITARGUMENTS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	$260,%eax
	call	SYSTEM_SYSALLOCMEM$LONGWORD$$POINTER
	movl	%eax,TC_SYSTEM_CMDLINE
	movl	$32,%eax
	call	SYSTEM_SYSALLOCMEM$LONGWORD$$POINTER
	movl	%eax,U_SYSTEM_ARGV
	movl	U_SYSTEM_PIB,%eax
	movl	12(%eax),%eax
	call	FPC_PCHAR_LENGTH
	movl	%eax,-4(%ebp)
	incl	-4(%ebp)
	pushl	TC_SYSTEM_CMDLINE
	pushl	$260
	movl	U_SYSTEM_PIB,%eax
	pushl	8(%eax)
	call	_$dll$doscalls$_index_320
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj20463
	jmp	Lj20464
Lj20463:
	movl	TC_SYSTEM_CMDLINE,%eax
	call	FPC_PCHAR_LENGTH
	incl	%eax
	movl	%eax,-28(%ebp)
	jmp	Lj20475
Lj20464:
	movl	U_SYSTEM_PIB,%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	$TC_SYSTEM_CMDLINE,%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj20475:
	movl	-28(%ebp),%eax
	call	SYSTEM_SYSALLOCMEM$LONGWORD$$POINTER
	movl	U_SYSTEM_ARGV,%edx
	movl	%eax,(%edx)
	movl	U_SYSTEM_ARGV,%eax
	movl	(%eax),%edx
	movl	TC_SYSTEM_CMDLINE,%eax
	movl	-28(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	$1,-8(%ebp)
	movl	U_SYSTEM_PIB,%eax
	movl	12(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	incl	%eax
	movl	%eax,-4(%ebp)
	movl	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	$TC_SYSTEM_CMDLINE,%eax
	call	SYSTEM_SYSREALLOCMEM$POINTER$LONGWORD$$POINTER
	movl	TC_SYSTEM_CMDLINE,%eax
	movl	-28(%ebp),%edx
	leal	(%eax,%edx,1),%edx
	movl	-4(%ebp),%ecx
	incl	%ecx
	movl	-16(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	$8,-28(%ebp)
	jmp	Lj20515
	.balign 4,0x90
Lj20514:
	jmp	Lj20518
	.balign 4,0x90
Lj20517:
	incl	-16(%ebp)
Lj20518:
	movl	-16(%ebp),%eax
	movzbl	(%eax),%eax
	decl	%eax
	cmpl	$32,%eax
	jb	Lj20520
Lj20520:
	jc	Lj20517
	jmp	Lj20519
Lj20519:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj20521
	jmp	Lj20522
Lj20521:
	jmp	Lj20516
Lj20522:
	movb	$32,-21(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-4(%ebp)
	jmp	Lj20530
	.balign 4,0x90
Lj20529:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$1,%al
	jb	Lj20533
	decb	%al
	subb	$31,%al
	jbe	Lj20534
	subb	$2,%al
	je	Lj20535
	subb	$5,%al
	je	Lj20536
	jmp	Lj20533
Lj20534:
	movb	-21(%ebp),%al
	cmpb	$32,%al
	jne	Lj20537
	jmp	Lj20538
Lj20537:
	incl	-4(%ebp)
	jmp	Lj20539
Lj20538:
	jmp	Lj20531
Lj20539:
	jmp	Lj20532
Lj20535:
	movb	-21(%ebp),%al
	cmpb	$39,%al
	jne	Lj20540
	jmp	Lj20541
Lj20540:
	movl	-16(%ebp),%eax
	incl	%eax
	movb	(%eax),%al
	cmpb	$34,%al
	jne	Lj20542
	jmp	Lj20543
Lj20542:
	movb	-21(%ebp),%al
	cmpb	$34,%al
	je	Lj20544
	jmp	Lj20545
Lj20544:
	movb	$32,-21(%ebp)
	jmp	Lj20548
Lj20545:
	movb	$34,-21(%ebp)
Lj20548:
	jmp	Lj20551
Lj20543:
	incl	-16(%ebp)
Lj20551:
	jmp	Lj20552
Lj20541:
	incl	-4(%ebp)
Lj20552:
	jmp	Lj20532
Lj20536:
	movb	-21(%ebp),%al
	cmpb	$34,%al
	jne	Lj20553
	jmp	Lj20554
Lj20553:
	movl	-16(%ebp),%eax
	incl	%eax
	movb	(%eax),%al
	cmpb	$39,%al
	jne	Lj20555
	jmp	Lj20556
Lj20555:
	movb	-21(%ebp),%al
	cmpb	$39,%al
	je	Lj20557
	jmp	Lj20558
Lj20557:
	movb	$32,-21(%ebp)
	jmp	Lj20561
Lj20558:
	movb	$39,-21(%ebp)
Lj20561:
	jmp	Lj20564
Lj20556:
	incl	-16(%ebp)
Lj20564:
	jmp	Lj20565
Lj20554:
	incl	-4(%ebp)
Lj20565:
	jmp	Lj20532
Lj20533:
	incl	-4(%ebp)
Lj20532:
	incl	-16(%ebp)
Lj20530:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj20529
	jmp	Lj20531
Lj20531:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj20566
	jmp	Lj20567
Lj20566:
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	%ebp,%eax
	call	SYSTEM_INITARGUMENTS_ALLOCARG$LONGINT$LONGINT
	movb	$32,-21(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	U_SYSTEM_ARGV,%edx
	movl	-8(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj20581
	.balign 4,0x90
Lj20580:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$1,%al
	jb	Lj20584
	decb	%al
	subb	$31,%al
	jbe	Lj20585
	subb	$2,%al
	je	Lj20586
	subb	$5,%al
	je	Lj20587
	jmp	Lj20584
Lj20585:
	movb	-21(%ebp),%al
	cmpb	$32,%al
	jne	Lj20588
	jmp	Lj20589
Lj20588:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-20(%ebp)
	jmp	Lj20592
Lj20589:
	jmp	Lj20582
Lj20592:
	jmp	Lj20583
Lj20586:
	movb	-21(%ebp),%al
	cmpb	$39,%al
	jne	Lj20593
	jmp	Lj20594
Lj20593:
	movl	-16(%ebp),%eax
	incl	%eax
	movb	(%eax),%al
	cmpb	$34,%al
	jne	Lj20595
	jmp	Lj20596
Lj20595:
	movb	-21(%ebp),%al
	cmpb	$34,%al
	je	Lj20597
	jmp	Lj20598
Lj20597:
	movb	$32,-21(%ebp)
	jmp	Lj20601
Lj20598:
	movb	$34,-21(%ebp)
Lj20601:
	jmp	Lj20604
Lj20596:
	incl	-16(%ebp)
Lj20604:
	jmp	Lj20605
Lj20594:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-20(%ebp)
Lj20605:
	jmp	Lj20583
Lj20587:
	movb	-21(%ebp),%al
	cmpb	$34,%al
	jne	Lj20608
	jmp	Lj20609
Lj20608:
	movl	-16(%ebp),%eax
	incl	%eax
	movb	(%eax),%al
	cmpb	$39,%al
	jne	Lj20610
	jmp	Lj20611
Lj20610:
	movb	-21(%ebp),%al
	cmpb	$39,%al
	je	Lj20612
	jmp	Lj20613
Lj20612:
	movb	$32,-21(%ebp)
	jmp	Lj20616
Lj20613:
	movb	$39,-21(%ebp)
Lj20616:
	jmp	Lj20619
Lj20611:
	incl	-16(%ebp)
Lj20619:
	jmp	Lj20620
Lj20609:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-20(%ebp)
Lj20620:
	jmp	Lj20583
Lj20584:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-20(%ebp)
Lj20583:
	incl	-16(%ebp)
Lj20581:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj20580
	jmp	Lj20582
Lj20582:
	movl	-20(%ebp),%eax
	movb	$0,(%eax)
Lj20567:
	incl	-8(%ebp)
Lj20515:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj20514
	jmp	Lj20516
Lj20516:
	movl	-8(%ebp),%eax
	movl	%eax,U_SYSTEM_ARGC
	movl	U_SYSTEM_ARGC,%edx
	movl	%ebp,%eax
	movl	$0,%ecx
	call	SYSTEM_INITARGUMENTS_ALLOCARG$LONGINT$LONGINT
	movl	U_SYSTEM_ARGC,%edx
	incl	%edx
	shll	$2,%edx
	movl	$U_SYSTEM_ARGV,%eax
	call	SYSTEM_SYSREALLOCMEM$POINTER$LONGWORD$$POINTER
	leave
	ret

.text
	.balign 4,0x90
SYSTEM_INITARGUMENTS_ALLOCARG$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj20639
	jmp	Lj20640
Lj20639:
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	addl	$8,%eax
	andl	$-8,%eax
	movl	-12(%ebp),%edx
	movl	%eax,-28(%edx)
	movl	-12(%ebp),%eax
	movl	-28(%eax),%edx
	shll	$2,%edx
	movl	$U_SYSTEM_ARGV,%eax
	call	SYSTEM_SYSREALLOCMEM$POINTER$LONGWORD$$POINTER
Lj20640:
	movl	-8(%ebp),%eax
	incl	%eax
	call	SYSTEM_SYSALLOCMEM$LONGWORD$$POINTER
	movl	U_SYSTEM_ARGV,%edx
	movl	-4(%ebp),%ecx
	movl	%eax,(%edx,%ecx,4)
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
	jne	Lj20657
	jmp	Lj20658
Lj20657:
	movl	$50,-4(%ebp)
	jmp	Lj20665
Lj20658:
	movl	-12(%ebp),%eax
	movl	%eax,-4(%ebp)
Lj20665:
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
	je	Lj20678
	movl	U_SYSTEM_STACKBOTTOM,%eax
	call	*%edx
	jmp	Lj20679
Lj20678:
	movl	$U_SYSTEM_STACKBOTTOM+4,%eax
Lj20679:
	movl	U_SYSTEM_TIB,%edx
	movl	4(%edx),%edx
	movl	%edx,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20682
	movl	U_SYSTEM_STACKTOP,%eax
	call	*%edx
	jmp	Lj20683
Lj20682:
	movl	$U_SYSTEM_STACKTOP+4,%eax
Lj20683:
	movl	U_SYSTEM_TIB,%edx
	movl	8(%edx),%edx
	movl	%edx,(%eax)
	movl	__stklen,%eax
	call	SYSTEM_CHECKINITIALSTKLEN$LONGWORD$$LONGWORD
	movl	%eax,%ebx
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20688
	movl	U_SYSTEM_STACKLENGTH,%eax
	call	*%edx
	jmp	Lj20689
Lj20688:
	movl	$U_SYSTEM_STACKLENGTH+4,%eax
Lj20689:
	movl	%ebx,(%eax)
	movl	U_SYSTEM_PIB,%eax
	movl	24(%eax),%eax
	movl	%eax,U_SYSTEM_APPLICATIONTYPE
	movl	U_SYSTEM_PIB,%eax
	movl	(%eax),%eax
	movl	%eax,U_SYSTEM_PROCESSID
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20696
	movl	U_SYSTEM_THREADID,%eax
	call	*%edx
	jmp	Lj20697
Lj20696:
	movl	$U_SYSTEM_THREADID+4,%eax
Lj20697:
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
	je	Lj20704
	jmp	Lj20705
Lj20704:
	pushl	$U_SYSTEM_P
	pushl	$0
	pushl	$981
	pushl	U_SYSTEM_DOSCALLSHANDLE
	call	_$dll$doscalls$_index_321
	addl	$16,%esp
	testl	%eax,%eax
	je	Lj20710
	jmp	Lj20711
Lj20710:
	movl	U_SYSTEM_P,%eax
	movl	%eax,TC_SYSTEM_SYS_DOSOPENL
	pushl	$U_SYSTEM_P
	pushl	$0
	pushl	$988
	pushl	U_SYSTEM_DOSCALLSHANDLE
	call	_$dll$doscalls$_index_321
	addl	$16,%esp
	testl	%eax,%eax
	je	Lj20722
	jmp	Lj20723
Lj20722:
	movl	U_SYSTEM_P,%eax
	movl	%eax,TC_SYSTEM_SYS_DOSSETFILEPTRL
	pushl	$U_SYSTEM_P
	pushl	$0
	pushl	$989
	pushl	U_SYSTEM_DOSCALLSHANDLE
	call	_$dll$doscalls$_index_321
	addl	$16,%esp
	testl	%eax,%eax
	je	Lj20734
	jmp	Lj20735
Lj20734:
	movl	U_SYSTEM_P,%eax
	movl	%eax,TC_SYSTEM_SYS_DOSSETFILESIZEL
	movb	$1,TC_SYSTEM_FSAPI64
Lj20735:
Lj20723:
Lj20711:
Lj20705:
	call	SYSTEM_SYSINITEXCEPTIONS
	call	SYSTEM_FPC_CPUCODEINIT
	call	SYSTEM_SYSINITSTDIO
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20750
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj20751
Lj20750:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj20751:
	movw	$0,(%eax)
	movl	U_SYSTEM_PIB,%eax
	movl	16(%eax),%eax
	movl	%eax,U_SYSTEM_ENVIRONMENT
	call	SYSTEM_INITENVIRONMENT
	call	SYSTEM_INITARGUMENTS
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20756
	movl	U_SYSTEM_DEFAULTCREATOR,%eax
	call	*%edx
	jmp	Lj20757
Lj20756:
	movl	$U_SYSTEM_DEFAULTCREATOR+4,%eax
Lj20757:
	movb	$0,(%eax)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj20760
	movl	U_SYSTEM_DEFAULTFILETYPE,%eax
	call	*%edx
	jmp	Lj20761
Lj20760:
	movl	$U_SYSTEM_DEFAULTFILETYPE+4,%eax
Lj20761:
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

