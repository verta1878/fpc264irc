# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_STRINGS_STRCOPY$PCHAR$PCHAR$$PCHAR
_STRINGS_STRCOPY$PCHAR$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%edi,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,%edi
	testl	%edi,%edi
	jz	Lj5
	leal	3(%edi),%ecx
	andl	$-4,%ecx
	movl	%edi,%esi
	subl	%edi,%ecx
	movl	%eax,%edi
	jz	Lj6
Lj7:
	movb	(%esi),%al
	incl	%edi
	incl	%esi
	testb	%al,%al
	movb	%al,-1(%edi)
	jz	Lj5
	decl	%ecx
	jnz	Lj7
	.align 4
Lj6:
	movl	(%esi),%eax
	movl	%eax,%edx
	leal	-16843009(%eax),%ecx
	notl	%edx
	addl	$4,%esi
	andl	%edx,%ecx
	andl	$-2139062144,%ecx
	jnz	Lj8
	movl	%eax,(%edi)
	addl	$4,%edi
	jmp	Lj6
Lj8:
	testl	$255,%eax
	jz	Lj9
	testl	$65280,%eax
	jz	Lj10
	testl	$16711680,%eax
	jz	Lj11
	movl	%eax,(%edi)
	jmp	Lj5
Lj11:
	xorb	%dl,%dl
	movw	%ax,(%edi)
	movb	%dl,2(%edi)
	jmp	Lj5
Lj10:
	movw	%ax,(%edi)
	jmp	Lj5
Lj9:
	movb	%al,(%edi)
Lj5:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edi
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRECOPY$PCHAR$PCHAR$$PCHAR
_STRINGS_STRECOPY$PCHAR$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%edi,-12(%ebp)
	movl	%esi,-8(%ebp)
	cld
	movl	%eax,%esi
	movl	%edx,%edi
	movl	$-1,%ecx
	xorl	%eax,%eax
	repne
	scasb
	notl	%ecx
	movl	%esi,%edi
	movl	%edx,%esi
	movl	%ecx,%eax
	shrl	$2,%ecx
	rep
	movsl
	movl	%eax,%ecx
	andl	$3,%ecx
	rep
	movsb
	decl	%edi
	movl	%edi,%eax
	movl	-12(%ebp),%edi
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRLCOPY$PCHAR$PCHAR$LONGINT$$PCHAR
_STRINGS_STRLCOPY$PCHAR$PCHAR$LONGINT$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%edi,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edx,%esi
	movl	%eax,%edi
	movl	%edi,-8(%ebp)
	orl	%ecx,%ecx
	jz	Lj16
	cld
Lj17:
	lodsb
	stosb
	decl	%ecx
	jz	Lj16
	orb	%al,%al
	jnz	Lj17
	jmp	Lj18
Lj16:
	xorb	%al,%al
	stosb
Lj18:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edi
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STREND$PCHAR$$PCHAR
_STRINGS_STREND$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%edi,-8(%ebp)
	cld
	movl	%eax,%edi
	xorl	%eax,%eax
	orl	%edi,%edi
	jz	Lj21
	movl	$-1,%ecx
	xorl	%eax,%eax
	repne
	scasb
	movl	%edi,%eax
	decl	%eax
Lj21:
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT
_STRINGS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%edi,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-16(%ebp)
	movl	%edx,%edi
	movl	$-1,%ecx
	cld
	xorl	%eax,%eax
	repne
	scasb
	notl	%ecx
	cmpl	-16(%ebp),%ecx
	jl	Lj24
	movl	-16(%ebp),%ecx
Lj24:
	movl	-12(%ebp),%edi
	movl	-8(%ebp),%esi
	repe
	cmpsb
	movb	-1(%esi),%al
	movzbl	-1(%edi),%ecx
	subl	%ecx,%eax
	movl	-24(%ebp),%edi
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRICOMP$PCHAR$PCHAR$$LONGINT
_STRINGS_STRICOMP$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%edi,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-12(%ebp)
	movl	%edx,%edi
	movl	$-1,%ecx
	cld
	xorl	%eax,%eax
	repne
	scasb
	notl	%ecx
	movl	-12(%ebp),%edi
	movl	-8(%ebp),%esi
Lj27:
	repe
	cmpsb
	jz	Lj28
	movzbl	-1(%esi),%eax
	movzbl	-1(%edi),%edx
	cmpb	$97,%al
	jb	Lj29
	cmpb	$122,%al
	ja	Lj29
	subb	$32,%al
Lj29:
	cmpb	$97,%dl
	jb	Lj30
	cmpb	$122,%dl
	ja	Lj30
	subb	$32,%dl
Lj30:
	subl	%edx,%eax
	jz	Lj27
Lj28:
	movl	-20(%ebp),%edi
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRLICOMP$PCHAR$PCHAR$LONGINT$$LONGINT
_STRINGS_STRLICOMP$PCHAR$PCHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%edi,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-12(%ebp)
	movl	%ecx,-16(%ebp)
	movl	%edx,%edi
	movl	$-1,%ecx
	cld
	xorl	%eax,%eax
	repne
	scasb
	notl	%ecx
	cmpl	-16(%ebp),%ecx
	jl	Lj33
	movl	-16(%ebp),%ecx
Lj33:
	movl	-12(%ebp),%edi
	movl	-8(%ebp),%esi
Lj34:
	repe
	cmpsb
	jz	Lj35
	movzbl	-1(%esi),%eax
	movzbl	-1(%edi),%edx
	cmpb	$97,%al
	jb	Lj36
	cmpb	$122,%al
	ja	Lj36
	subb	$32,%al
Lj36:
	cmpb	$97,%dl
	jb	Lj37
	cmpb	$122,%dl
	ja	Lj37
	subb	$32,%dl
Lj37:
	subl	%edx,%eax
	jz	Lj34
Lj35:
	movl	-24(%ebp),%edi
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRSCAN$PCHAR$CHAR$$PCHAR
_STRINGS_STRSCAN$PCHAR$CHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%edi,-12(%ebp)
	movl	%esi,-8(%ebp)
	xorl	%ecx,%ecx
	testl	%eax,%eax
	jz	Lj40
	movb	%dl,%cl
	leal	3(%eax),%esi
	andl	$-4,%esi
	movl	%eax,%edi
	subl	%eax,%esi
	jz	Lj41
	xorl	%eax,%eax
Lj42:
	movb	(%edi),%al
	incl	%edi
	testb	%al,%al
	jz	Lj40
	cmpb	%cl,%al
	je	Lj43
	decl	%esi
	jnz	Lj42
Lj41:
	movl	%ecx,%eax
	shll	$8,%eax
	orl	%eax,%ecx
	movl	%ecx,%eax
	shll	$16,%eax
	orl	%eax,%ecx
	.align 4
Lj44:
	movl	(%edi),%edx
	movl	%edx,%eax
	movl	%edx,%esi
	notl	%esi
	addl	$-16843009,%edx
	xorl	%ecx,%eax
	andl	$-2139062144,%esi
	addl	$4,%edi
	andl	%esi,%edx
	movl	%eax,%esi
	notl	%esi
	jnz	Lj45
	addl	$-16843009,%eax
	andl	$-2139062144,%esi
	andl	%esi,%eax
	jz	Lj44
	shrl	$8,%eax
	jc	Lj46
	shrl	$8,%eax
	jc	Lj47
	shrl	$8,%eax
	jc	Lj48
	jmp	Lj43
Lj45:
	addl	$-16843009,%eax
	andl	$-2139062144,%esi
	andl	%esi,%eax
	shrl	$8,%eax
	jc	Lj46
	shrl	$8,%edx
	jc	Lj49
	shrl	$8,%eax
	jc	Lj47
	shrl	$8,%edx
	jc	Lj49
	shrl	$8,%eax
	jc	Lj48
	shrl	$8,%edx
	jc	Lj49
	shrl	$8,%eax
	jc	Lj43
	jmp	Lj49
Lj48:
	leal	-2(%edi),%eax
	jmp	Lj40
Lj47:
	leal	-3(%edi),%eax
	jmp	Lj40
Lj46:
	leal	-4(%edi),%eax
	jmp	Lj40
Lj43:
	leal	-1(%edi),%eax
	jmp	Lj40
Lj49:
	xorl	%eax,%eax
Lj40:
	movl	-12(%ebp),%edi
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRRSCAN$PCHAR$CHAR$$PCHAR
_STRINGS_STRRSCAN$PCHAR$CHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%edi,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%eax,%edi
	xorl	%eax,%eax
	orl	%edi,%edi
	jz	Lj52
	movl	$-1,%ecx
	cld
	xorb	%al,%al
	repne
	scasb
	notl	%ecx
	movb	%dl,%al
	movl	-8(%ebp),%edi
	addl	%ecx,%edi
	decl	%edi
	std
	repne
	scasb
	cld
	movl	$0,%eax
	jnz	Lj52
	movl	%edi,%eax
	incl	%eax
Lj52:
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRUPPER$PCHAR$$PCHAR
_STRINGS_STRUPPER$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%edi,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%eax,%esi
	orl	%esi,%esi
	jz	Lj55
	movl	%esi,%edi
Lj56:
	lodsb
	cmpb	$97,%al
	jb	Lj57
	cmpb	$122,%al
	ja	Lj57
	subb	$32,%al
Lj57:
	stosb
	orb	%al,%al
	jnz	Lj56
Lj55:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edi
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRLOWER$PCHAR$$PCHAR
_STRINGS_STRLOWER$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%esi,-12(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%eax,%esi
	orl	%esi,%esi
	jz	Lj60
	movl	%esi,%edi
Lj61:
	lodsb
	cmpb	$65,%al
	jb	Lj62
	cmpb	$90,%al
	ja	Lj62
	addb	$32,%al
Lj62:
	stosb
	orb	%al,%al
	jnz	Lj61
Lj60:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edi
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR
_STRINGS_STRPCOPY$PCHAR$SHORTSTRING$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%edi,-12(%ebp)
	movl	%esi,-8(%ebp)
	cld
	movl	%eax,%edi
	movl	%edx,%esi
	movzbl	(%esi),%ecx
	incl	%esi
	rep
	movsb
	movb	$0,(%edi)
	movl	-12(%ebp),%edi
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRISCAN$PCHAR$CHAR$$PCHAR
_STRINGS_STRISCAN$PCHAR$CHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-8(%ebp),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	movb	%al,-17(%ebp)
	movl	$0,-16(%ebp)
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj73
	jmp	Lj74
Lj73:
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	leal	(%ebx,%eax,1),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj65
Lj74:
	jmp	Lj80
	.align 2
Lj79:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%edx,%eax,1),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	cmpb	-17(%ebp),%al
	je	Lj82
	jmp	Lj83
Lj82:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj65
Lj83:
	incl	-16(%ebp)
Lj80:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	jne	Lj79
	jmp	Lj81
Lj81:
	movl	$0,-12(%ebp)
Lj65:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRRISCAN$PCHAR$CHAR$$PCHAR
_STRINGS_STRRISCAN$PCHAR$CHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-8(%ebp),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	movb	%al,-21(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-16(%ebp)
	movb	-21(%ebp),%al
	testb	%al,%al
	je	Lj100
	jmp	Lj101
Lj100:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	leal	(%edx,%eax,1),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj90
Lj101:
	decl	-16(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jl	Lj105
	incl	-20(%ebp)
	.align 2
Lj106:
	decl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	cmpb	-21(%ebp),%al
	je	Lj107
	jmp	Lj108
Lj107:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	(%edx,%eax,1),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj90
Lj108:
	cmpl	$0,-20(%ebp)
	jg	Lj106
Lj105:
	movl	$0,-12(%ebp)
Lj90:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRCOMP$PCHAR$PCHAR$$LONGINT
_STRINGS_STRCOMP$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj120
	.align 2
Lj119:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	(%eax,%edx,1),%al
	testb	%al,%al
	je	Lj122
	jmp	Lj124
Lj124:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj122
	jmp	Lj123
Lj122:
	jmp	Lj121
Lj123:
	incl	-16(%ebp)
Lj120:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%ebx
	movb	(%eax,%edx,1),%al
	cmpb	(%ecx,%ebx,1),%al
	je	Lj119
	jmp	Lj121
Lj121:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movzbl	(%eax,%edx,1),%ecx
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	%eax,%ecx
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRCAT$PCHAR$PCHAR$$PCHAR
_STRINGS_STRCAT$PCHAR$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	L_STRINGS_STREND$PCHAR$$PCHAR$stub
	movl	-8(%ebp),%edx
	call	L_STRINGS_STRCOPY$PCHAR$PCHAR$$PCHAR$stub
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRLCAT$PCHAR$PCHAR$LONGINT$$PCHAR
_STRINGS_STRLCAT$PCHAR$PCHAR$LONGINT$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	L_STRINGS_STREND$PCHAR$$PCHAR$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	-4(%ebp),%edx
	subl	%edx,%eax
	subl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj143
	jmp	Lj144
Lj143:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_STRINGS_STRLCOPY$PCHAR$PCHAR$LONGINT$$PCHAR$stub
Lj144:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRMOVE$PCHAR$PCHAR$LONGINT$$PCHAR
_STRINGS_STRMOVE$PCHAR$PCHAR$LONGINT$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRPOS$PCHAR$PCHAR$$PCHAR
_STRINGS_STRPOS$PCHAR$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj167
	jmp	Lj169
Lj169:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj167
	jmp	Lj168
Lj167:
	jmp	Lj163
Lj168:
	movl	-8(%ebp),%eax
	movb	(%eax),%dl
	movl	-4(%ebp),%eax
	call	L_STRINGS_STRSCAN$PCHAR$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj176
	jmp	Lj177
Lj176:
	jmp	Lj163
Lj177:
	movl	-8(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-20(%ebp)
	jmp	Lj183
	.align 2
Lj182:
	movl	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_STRINGS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj185
	jmp	Lj186
Lj185:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj163
Lj186:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%dl
	movl	-16(%ebp),%eax
	call	L_STRINGS_STRSCAN$PCHAR$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
Lj183:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj182
	jmp	Lj184
Lj184:
Lj163:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRIPOS$PCHAR$PCHAR$$PCHAR
_STRINGS_STRIPOS$PCHAR$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj205
	jmp	Lj207
Lj207:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj205
	jmp	Lj206
Lj205:
	jmp	Lj201
Lj206:
	movl	-8(%ebp),%eax
	movb	(%eax),%dl
	movl	-4(%ebp),%eax
	call	L_STRINGS_STRISCAN$PCHAR$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj214
	jmp	Lj215
Lj214:
	jmp	Lj201
Lj215:
	movl	-8(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	movl	%eax,-20(%ebp)
	jmp	Lj221
	.align 2
Lj220:
	movl	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_STRINGS_STRLICOMP$PCHAR$PCHAR$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj223
	jmp	Lj224
Lj223:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj201
Lj224:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%dl
	movl	-16(%ebp),%eax
	call	L_STRINGS_STRISCAN$PCHAR$CHAR$$PCHAR$stub
	movl	%eax,-16(%ebp)
Lj221:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj220
	jmp	Lj222
Lj222:
Lj201:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRPAS$PCHAR$$SHORTSTRING
_STRINGS_STRPAS$PCHAR$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	LFPC_PCHAR_TO_SHORTSTR$stub
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRALLOC$LONGINT$$PCHAR
_STRINGS_STRALLOC$LONGINT$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%edx
	leal	-8(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRNEW$PCHAR$$PCHAR
_STRINGS_STRNEW$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj259
	jmp	Lj261
Lj261:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj259
	jmp	Lj260
Lj259:
	jmp	Lj255
Lj260:
	movl	-4(%ebp),%eax
	call	LFPC_PCHAR_LENGTH$stub
	incl	%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	leal	-8(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj270
	jmp	Lj271
Lj270:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj271:
Lj255:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRINGS_STRDISPOSE$PCHAR
_STRINGS_STRDISPOSE$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj280
	jmp	Lj281
Lj280:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	$0,-4(%ebp)
Lj281:
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_STRINGS
_THREADVARLIST_STRINGS:
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

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_UPCASE$CHAR$$CHAR$stub:
.indirect_symbol _SYSTEM_UPCASE$CHAR$$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_PCHAR_LENGTH$stub:
.indirect_symbol FPC_PCHAR_LENGTH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRINGS_STREND$PCHAR$$PCHAR$stub:
.indirect_symbol _STRINGS_STREND$PCHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRINGS_STRCOPY$PCHAR$PCHAR$$PCHAR$stub:
.indirect_symbol _STRINGS_STRCOPY$PCHAR$PCHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRINGS_STRLCOPY$PCHAR$PCHAR$LONGINT$$PCHAR$stub:
.indirect_symbol _STRINGS_STRLCOPY$PCHAR$PCHAR$LONGINT$$PCHAR
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

L_STRINGS_STRSCAN$PCHAR$CHAR$$PCHAR$stub:
.indirect_symbol _STRINGS_STRSCAN$PCHAR$CHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRINGS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT$stub:
.indirect_symbol _STRINGS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRINGS_STRISCAN$PCHAR$CHAR$$PCHAR$stub:
.indirect_symbol _STRINGS_STRISCAN$PCHAR$CHAR$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRINGS_STRLICOMP$PCHAR$PCHAR$LONGINT$$LONGINT$stub:
.indirect_symbol _STRINGS_STRLICOMP$PCHAR$PCHAR$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_PCHAR_TO_SHORTSTR$stub:
.indirect_symbol FPC_PCHAR_TO_SHORTSTR
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

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
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
	.subsections_via_symbols

