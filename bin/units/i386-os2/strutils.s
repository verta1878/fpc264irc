	.file "strutils.pp"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
.globl	STRUTILS_HEX2DEC$ANSISTRING$$LONGINT
STRUTILS_HEX2DEC$ANSISTRING$$LONGINT:
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
	jne	Lj5
	movl	-4(%ebp),%edx
	movb	$36,%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	testl	%eax,%eax
	je	Lj8
	jmp	Lj9
Lj8:
	movl	-4(%ebp),%ecx
	leal	-12(%ebp),%eax
	movl	$_$STRUTILS$_Ld1,%edx
	call	fpc_ansistr_concat
	jmp	Lj20
Lj9:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-12(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj20:
	movl	-12(%ebp),%eax
	call	SYSUTILS_STRTOINT$ANSISTRING$$LONGINT
	movl	%eax,-8(%ebp)
Lj5:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6
	call	FPC_RERAISE
Lj6:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ANSIRESEMBLESTEXT$ANSISTRING$ANSISTRING$$BOOLEAN
STRUTILS_ANSIRESEMBLESTEXT$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpl	$0,TC_STRUTILS_ANSIRESEMBLESPROC
	jne	Lj35
	jmp	Lj36
Lj35:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	TC_STRUTILS_ANSIRESEMBLESPROC,%ecx
	call	*%ecx
	movb	%al,-9(%ebp)
	jmp	Lj43
Lj36:
	movb	$0,-9(%ebp)
Lj43:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ANSICONTAINSTEXT$ANSISTRING$ANSISTRING$$BOOLEAN
STRUTILS_ANSICONTAINSTEXT$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+32,%ecx
	call	*%ecx
	movl	-16(%ebp),%ebx
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+32,%ecx
	call	*%ecx
	movl	-20(%ebp),%eax
	movl	%ebx,%edx
	call	SYSUTILS_ANSIPOS$ANSISTRING$ANSISTRING$$LONGINT
	cmpl	$0,%eax
	setgb	-9(%ebp)
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-16(%ebp)
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ANSISTARTSTEXT$ANSISTRING$ANSISTRING$$BOOLEAN
STRUTILS_ANSISTARTSTEXT$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj67
	movl	-4(%edx),%edx
Lj67:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj68
	movl	-4(%eax),%eax
Lj68:
	cmpl	%eax,%edx
	jge	Lj66
	jmp	Lj65
Lj66:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj64
	jmp	Lj65
Lj64:
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj73
	movl	-4(%ecx),%ecx
Lj73:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj76
	movl	$FPC_EMPTYCHAR,%edx
Lj76:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj79
	movl	$FPC_EMPTYCHAR,%eax
Lj79:
	call	SYSUTILS_ANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$LONGINT
	testl	%eax,%eax
	seteb	-9(%ebp)
	jmp	Lj80
Lj65:
	movb	$0,-9(%ebp)
Lj80:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ANSIENDSTEXT$ANSISTRING$ANSISTRING$$BOOLEAN
STRUTILS_ANSIENDSTEXT$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj87
	movl	-4(%edx),%edx
Lj87:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj88
	movl	-4(%eax),%eax
Lj88:
	cmpl	%eax,%edx
	jge	Lj85
	jmp	Lj86
Lj85:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj93
	movl	$FPC_EMPTYCHAR,%edx
Lj93:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj94
	movl	-4(%eax),%eax
Lj94:
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj95
	movl	-4(%eax),%eax
Lj95:
	subl	%eax,%edx
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj98
	movl	-4(%ecx),%ecx
Lj98:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj101
	movl	$FPC_EMPTYCHAR,%eax
Lj101:
	call	SYSUTILS_ANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$LONGINT
	testl	%eax,%eax
	seteb	-9(%ebp)
	jmp	Lj102
Lj86:
	movb	$0,-9(%ebp)
Lj102:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ANSIREPLACETEXT$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING
STRUTILS_ANSIREPLACETEXT$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	$3
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	STRUTILS_ANSIMATCHTEXT$ANSISTRING$array_of_ANSISTRING$$BOOLEAN
STRUTILS_ANSIMATCHTEXT$ANSISTRING$array_of_ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	STRUTILS_ANSIINDEXTEXT$ANSISTRING$array_of_ANSISTRING$$LONGINT
	cmpl	$-1,%eax
	setneb	-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ANSIINDEXTEXT$ANSISTRING$array_of_ANSISTRING$$LONGINT
STRUTILS_ANSIINDEXTEXT$ANSISTRING$array_of_ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$-1,-16(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj131
	jmp	Lj132
Lj131:
	jmp	Lj127
Lj132:
	movl	-12(%ebp),%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj134
	decl	-20(%ebp)
	.balign 4,0x90
Lj135:
	incl	-20(%ebp)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	-4(%ebp),%edx
	call	SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
	testl	%eax,%eax
	je	Lj136
	jmp	Lj137
Lj136:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj127
Lj137:
	cmpl	-20(%ebp),%ebx
	jg	Lj135
Lj134:
Lj127:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ANSICONTAINSSTR$ANSISTRING$ANSISTRING$$BOOLEAN
STRUTILS_ANSICONTAINSSTR$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSUTILS_ANSIPOS$ANSISTRING$ANSISTRING$$LONGINT
	cmpl	$0,%eax
	setgb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ANSISTARTSSTR$ANSISTRING$ANSISTRING$$BOOLEAN
STRUTILS_ANSISTARTSSTR$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj157
	movl	-4(%edx),%edx
Lj157:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj158
	movl	-4(%eax),%eax
Lj158:
	cmpl	%eax,%edx
	jge	Lj156
	jmp	Lj155
Lj156:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj154
	jmp	Lj155
Lj154:
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj163
	movl	-4(%ecx),%ecx
Lj163:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj166
	movl	$FPC_EMPTYCHAR,%edx
Lj166:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj169
	movl	$FPC_EMPTYCHAR,%eax
Lj169:
	call	SYSUTILS_ANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$LONGINT
	testl	%eax,%eax
	seteb	-9(%ebp)
	jmp	Lj170
Lj155:
	movb	$0,-9(%ebp)
Lj170:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ANSIENDSSTR$ANSISTRING$ANSISTRING$$BOOLEAN
STRUTILS_ANSIENDSSTR$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj177
	movl	-4(%edx),%edx
Lj177:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj178
	movl	-4(%eax),%eax
Lj178:
	cmpl	%eax,%edx
	jge	Lj175
	jmp	Lj176
Lj175:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj183
	movl	$FPC_EMPTYCHAR,%edx
Lj183:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj184
	movl	-4(%eax),%eax
Lj184:
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj185
	movl	-4(%eax),%eax
Lj185:
	subl	%eax,%edx
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj188
	movl	-4(%ecx),%ecx
Lj188:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj191
	movl	$FPC_EMPTYCHAR,%eax
Lj191:
	call	SYSUTILS_ANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$LONGINT
	testl	%eax,%eax
	seteb	-9(%ebp)
	jmp	Lj192
Lj176:
	movb	$0,-9(%ebp)
Lj192:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ANSIREPLACESTR$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING
STRUTILS_ANSIREPLACESTR$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	$1
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	STRUTILS_ANSIMATCHSTR$ANSISTRING$array_of_ANSISTRING$$BOOLEAN
STRUTILS_ANSIMATCHSTR$ANSISTRING$array_of_ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	STRUTILS_ANSIINDEXSTR$ANSISTRING$array_of_ANSISTRING$$LONGINT
	cmpl	$-1,%eax
	setneb	-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ANSIINDEXSTR$ANSISTRING$array_of_ANSISTRING$$LONGINT
STRUTILS_ANSIINDEXSTR$ANSISTRING$array_of_ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$-1,-16(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj221
	jmp	Lj222
Lj221:
	jmp	Lj217
Lj222:
	movl	-12(%ebp),%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj224
	decl	-20(%ebp)
	.balign 4,0x90
Lj225:
	incl	-20(%ebp)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	-4(%ebp),%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	je	Lj226
	jmp	Lj227
Lj226:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj217
Lj227:
	cmpl	-20(%ebp),%ebx
	jg	Lj225
Lj224:
Lj217:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_DUPESTRING$ANSISTRING$LONGINT$$ANSISTRING
STRUTILS_DUPESTRING$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj238
	jmp	Lj239
Lj238:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj242
	movl	-4(%eax),%eax
Lj242:
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	imull	%eax,%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-8(%ebp),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj248
	decl	-16(%ebp)
	.balign 4,0x90
Lj249:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%ecx
	imull	%ecx,%edx
	incl	%edx
	leal	-1(%eax,%edx,1),%edx
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	cmpl	-16(%ebp),%ebx
	jg	Lj249
Lj248:
Lj239:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_REVERSESTRING$ANSISTRING$$ANSISTRING
STRUTILS_REVERSESTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj262
	movl	-4(%edx),%edx
Lj262:
	movl	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	$1,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj269
	movl	-4(%eax),%eax
Lj269:
	movl	%eax,-16(%ebp)
	jmp	Lj271
	.balign 4,0x90
Lj270:
	movl	-8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-12(%ebp),%ebx
	movl	-4(%ebp),%esi
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	subl	%ecx,%edx
	incl	%edx
	movb	-1(%esi,%edx,1),%dl
	movb	%dl,-1(%eax,%ebx,1)
	incl	-12(%ebp)
Lj271:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj270
	jmp	Lj272
Lj272:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ANSIREVERSESTRING$ANSISTRING$$ANSISTRING
STRUTILS_ANSIREVERSESTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	STRUTILS_REVERSESTRING$ANSISTRING$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_STUFFSTRING$ANSISTRING$LONGWORD$LONGWORD$ANSISTRING$$ANSISTRING
STRUTILS_STUFFSTRING$ANSISTRING$LONGWORD$LONGWORD$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	12(%ebp),%eax
	testl	%eax,%eax
	je	Lj287
	movl	-4(%eax),%eax
Lj287:
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj290
	movl	-4(%eax),%eax
Lj290:
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj291
	jmp	Lj292
Lj291:
	movl	-16(%ebp),%eax
	incl	%eax
	movl	%eax,-8(%ebp)
Lj292:
	movl	-16(%ebp),%eax
	incl	%eax
	movl	-8(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-24(%ebp),%eax
	ja	Lj297
	jmp	Lj298
Lj297:
	movl	-24(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj298:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	%eax,%edx
	movl	-8(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-8(%ebp),%edx
	leal	-1(%eax,%edx,1),%edx
	movl	-20(%ebp),%ecx
	movl	12(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%ecx
	addl	%ecx,%edx
	leal	-1(%eax,%edx,1),%edx
	movl	-16(%ebp),%ecx
	incl	%ecx
	movl	-8(%ebp),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	movl	-4(%ebp),%esi
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	addl	%ebx,%eax
	leal	-1(%esi,%eax,1),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	STRUTILS_RANDOMFROM$array_of_ANSISTRING$$ANSISTRING
STRUTILS_RANDOMFROM$array_of_ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj331
	jmp	Lj332
Lj331:
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj329
Lj332:
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	incl	%eax
	call	SYSTEM_RANDOM$LONGINT$$LONGINT
	movl	%eax,%esi
	movl	(%ebx,%esi,4),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	(%ebx,%esi,4),%eax
	movl	%eax,(%edi)
Lj329:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_IFTHEN$BOOLEAN$ANSISTRING$ANSISTRING$$ANSISTRING
STRUTILS_IFTHEN$BOOLEAN$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj341
	jmp	Lj342
Lj341:
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj345
Lj342:
	movl	-12(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-12(%ebp),%eax
	movl	%eax,(%ebx)
Lj345:
	movl	-16(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	STRUTILS_LEFTSTR$ANSISTRING$LONGINT$$ANSISTRING
STRUTILS_LEFTSTR$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_RIGHTSTR$ANSISTRING$LONGINT$$ANSISTRING
STRUTILS_RIGHTSTR$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj362
	movl	-4(%eax),%eax
Lj362:
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj365
	jmp	Lj366
Lj365:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj366:
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_copy
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_MIDSTR$ANSISTRING$LONGINT$LONGINT$$ANSISTRING
STRUTILS_MIDSTR$ANSISTRING$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj379
	jmp	Lj381
Lj381:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj382
	movl	-4(%eax),%eax
Lj382:
	cmpl	-8(%ebp),%eax
	jl	Lj379
	jmp	Lj380
Lj379:
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj377
Lj380:
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_copy
Lj377:
	movl	-16(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	STRUTILS_LEFTBSTR$ANSISTRING$LONGINT$$ANSISTRING
STRUTILS_LEFTBSTR$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_RIGHTBSTR$ANSISTRING$LONGINT$$ANSISTRING
STRUTILS_RIGHTBSTR$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	STRUTILS_RIGHTSTR$ANSISTRING$LONGINT$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_MIDBSTR$ANSISTRING$LONGINT$LONGINT$$ANSISTRING
STRUTILS_MIDBSTR$ANSISTRING$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj414
	jmp	Lj416
Lj416:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj417
	movl	-4(%eax),%eax
Lj417:
	cmpl	-8(%ebp),%eax
	jl	Lj414
	jmp	Lj415
Lj414:
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj413
Lj415:
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_copy
Lj413:
	movl	8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	STRUTILS_ANSILEFTSTR$ANSISTRING$LONGINT$$ANSISTRING
STRUTILS_ANSILEFTSTR$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ANSIRIGHTSTR$ANSISTRING$LONGINT$$ANSISTRING
STRUTILS_ANSIRIGHTSTR$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj444
	movl	-4(%edx),%edx
Lj444:
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_copy
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ANSIMIDSTR$ANSISTRING$LONGINT$LONGINT$$ANSISTRING
STRUTILS_ANSIMIDSTR$ANSISTRING$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_copy
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	STRUTILS_LEFTSTR$WIDESTRING$LONGINT$$WIDESTRING
STRUTILS_LEFTSTR$WIDESTRING$LONGINT$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_unicodestr_copy
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_RIGHTSTR$WIDESTRING$LONGINT$$WIDESTRING
STRUTILS_RIGHTSTR$WIDESTRING$LONGINT$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj473
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj473:
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj476
	jmp	Lj477
Lj476:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj477:
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_copy
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_MIDSTR$WIDESTRING$LONGINT$LONGINT$$WIDESTRING
STRUTILS_MIDSTR$WIDESTRING$LONGINT$LONGINT$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_copy
	leave
	ret	$4

.text
	.balign 4,0x90
STRUTILS_EQUALWITHCASE$CHAR$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movb	%al,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-4(%ebp),%al
	cmpb	-8(%ebp),%al
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
STRUTILS_EQUALWITHOUTCASE$CHAR$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movb	%al,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-4(%ebp),%al
	call	SYSTEM_LOWERCASE$CHAR$$CHAR
	movb	%al,%bl
	movb	-8(%ebp),%al
	call	SYSTEM_LOWERCASE$CHAR$$CHAR
	cmpb	%al,%bl
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
STRUTILS_ISWHOLEWORD$PCHAR$PCHAR$PCHAR$PCHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-4(%ebp),%eax
	je	Lj514
	jmp	Lj515
Lj515:
	movl	-12(%ebp),%eax
	decl	%eax
	movzbl	(%eax),%eax
	btl	%eax,TC_STRUTILS_WORDDELIMITERS
	jc	Lj514
	jmp	Lj513
Lj514:
	movl	8(%ebp),%eax
	cmpl	-8(%ebp),%eax
	je	Lj512
	jmp	Lj516
Lj516:
	movl	8(%ebp),%eax
	incl	%eax
	movzbl	(%eax),%eax
	btl	%eax,TC_STRUTILS_WORDDELIMITERS
	jc	Lj512
	jmp	Lj513
Lj512:
	movb	$1,-13(%ebp)
	jmp	Lj517
Lj513:
	movb	$0,-13(%ebp)
Lj517:
	movb	-13(%ebp),%al
	leave
	ret	$4

.text
	.balign 4,0x90
STRUTILS_SEARCHDOWN$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	16(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movb	$0,-17(%ebp)
	jmp	Lj525
	.balign 4,0x90
Lj524:
	jmp	Lj528
	.balign 4,0x90
Lj527:
	incl	-16(%ebp)
Lj528:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jbe	Lj530
	jmp	Lj529
Lj530:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	movl	16(%ebp),%edx
	movb	(%edx),%dl
	movl	12(%ebp),%ecx
	call	*%ecx
	testb	%al,%al
	je	Lj527
	jmp	Lj529
Lj529:
	movl	-16(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-24(%ebp)
	movb	$1,-17(%ebp)
	jmp	Lj542
	.balign 4,0x90
Lj541:
	movl	-24(%ebp),%eax
	movb	(%eax),%dl
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	movl	12(%ebp),%ecx
	call	*%ecx
	movb	%al,-17(%ebp)
	incl	-28(%ebp)
	incl	-24(%ebp)
Lj542:
	movl	-28(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jbe	Lj551
	jmp	Lj543
Lj551:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj550
	jmp	Lj543
Lj550:
	cmpb	$0,-17(%ebp)
	jne	Lj541
	jmp	Lj543
Lj543:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj552
	jmp	Lj553
Lj552:
	movb	$0,-17(%ebp)
Lj553:
	cmpb	$0,-17(%ebp)
	jne	Lj558
	jmp	Lj557
Lj558:
	cmpb	$0,8(%ebp)
	jne	Lj556
	jmp	Lj557
Lj556:
	movl	-28(%ebp),%eax
	decl	%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	STRUTILS_ISWHOLEWORD$PCHAR$PCHAR$PCHAR$PCHAR$$BOOLEAN
	movb	%al,-17(%ebp)
Lj557:
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj569
	jmp	Lj570
Lj569:
	incl	-16(%ebp)
Lj570:
Lj525:
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj571
	jmp	Lj526
Lj571:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jbe	Lj524
	jmp	Lj526
Lj526:
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj572
	jmp	Lj573
Lj572:
	movl	$0,-16(%ebp)
Lj573:
	leal	16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-16(%ebp),%eax
	leave
	ret	$12

.text
	.balign 4,0x90
STRUTILS_SEARCHUP$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	16(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movb	$0,-17(%ebp)
	movl	16(%ebp),%edx
	movl	16(%ebp),%eax
	testl	%eax,%eax
	je	Lj584
	movl	-4(%eax),%eax
Lj584:
	leal	-1(%edx,%eax,1),%eax
	movl	%eax,-32(%ebp)
	jmp	Lj586
	.balign 4,0x90
Lj585:
	jmp	Lj589
	.balign 4,0x90
Lj588:
	decl	-16(%ebp)
Lj589:
	movl	-16(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jae	Lj591
	jmp	Lj590
Lj591:
	movl	-32(%ebp),%eax
	movb	(%eax),%dl
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	movl	12(%ebp),%ecx
	call	*%ecx
	testb	%al,%al
	je	Lj588
	jmp	Lj590
Lj590:
	movl	-16(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-24(%ebp)
	movb	$1,-17(%ebp)
	jmp	Lj603
	.balign 4,0x90
Lj602:
	movl	-24(%ebp),%eax
	movb	(%eax),%dl
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	movl	12(%ebp),%ecx
	call	*%ecx
	movb	%al,-17(%ebp)
	decl	-28(%ebp)
	decl	-24(%ebp)
Lj603:
	movl	-28(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jae	Lj612
	jmp	Lj604
Lj612:
	movl	16(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jbe	Lj611
	jmp	Lj604
Lj611:
	cmpb	$0,-17(%ebp)
	jne	Lj602
	jmp	Lj604
Lj604:
	movl	16(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jbe	Lj613
	jmp	Lj614
Lj613:
	movb	$0,-17(%ebp)
Lj614:
	cmpb	$0,-17(%ebp)
	jne	Lj619
	jmp	Lj618
Lj619:
	cmpb	$0,8(%ebp)
	jne	Lj617
	jmp	Lj618
Lj617:
	pushl	-16(%ebp)
	movl	-28(%ebp),%ecx
	incl	%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	STRUTILS_ISWHOLEWORD$PCHAR$PCHAR$PCHAR$PCHAR$$BOOLEAN
	movb	%al,-17(%ebp)
Lj618:
	cmpb	$0,-17(%ebp)
	jne	Lj630
	jmp	Lj631
Lj630:
	movl	-28(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	jmp	Lj634
Lj631:
	decl	-16(%ebp)
Lj634:
Lj586:
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj635
	jmp	Lj587
Lj635:
	movl	-16(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jae	Lj585
	jmp	Lj587
Lj587:
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj636
	jmp	Lj637
Lj636:
	movl	$0,-16(%ebp)
Lj637:
	leal	16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-16(%ebp),%eax
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	STRUTILS_SEARCHBUF$crc48FA91CD
STRUTILS_SEARCHBUF$crc48FA91CD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	12(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%edx
	movl	16(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	12(%ebp),%eax
	testl	%eax,%eax
	je	Lj644
	jmp	Lj647
Lj647:
	movl	-12(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj644
	jmp	Lj646
Lj646:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj644
	jmp	Lj645
Lj644:
	movl	$0,-16(%ebp)
	jmp	Lj650
Lj645:
	testl	$2,8(%ebp)
	jne	Lj651
	jmp	Lj652
Lj651:
	movl	$STRUTILS_EQUALWITHCASE$CHAR$CHAR$$BOOLEAN,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj655
Lj652:
	movl	$STRUTILS_EQUALWITHOUTCASE$CHAR$CHAR$$BOOLEAN,%eax
	movl	%eax,-20(%ebp)
Lj655:
	testl	$1,8(%ebp)
	jne	Lj658
	jmp	Lj659
Lj658:
	pushl	12(%ebp)
	pushl	-20(%ebp)
	testl	$4,8(%ebp)
	setneb	%al
	pushl	%eax
	movl	-8(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	addl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	STRUTILS_SEARCHDOWN$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR
	movl	%eax,-16(%ebp)
	jmp	Lj674
Lj659:
	pushl	12(%ebp)
	pushl	-20(%ebp)
	testl	$4,8(%ebp)
	setneb	%al
	pushl	%eax
	movl	-8(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	addl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	STRUTILS_SEARCHUP$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR
	movl	%eax,-16(%ebp)
Lj674:
Lj650:
	leal	12(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-16(%ebp),%eax
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	STRUTILS_SEARCHBUF$PCHAR$LONGINT$LONGINT$LONGINT$ANSISTRING$$PCHAR
STRUTILS_SEARCHBUF$PCHAR$LONGINT$LONGINT$LONGINT$ANSISTRING$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$1
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	STRUTILS_SEARCHBUF$crc48FA91CD
	movl	%eax,-16(%ebp)
	leal	8(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-16(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	STRUTILS_POSEX$ANSISTRING$ANSISTRING$LONGWORD$$LONGINT
STRUTILS_POSEX$ANSISTRING$ANSISTRING$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj711
	movl	-4(%eax),%eax
Lj711:
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj715
	jmp	Lj713
Lj715:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj714
	jmp	Lj713
Lj714:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj716
	movl	-4(%eax),%eax
Lj716:
	cmpl	-12(%ebp),%eax
	jae	Lj712
	jmp	Lj713
Lj712:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj719
	movl	-4(%eax),%eax
Lj719:
	movl	-28(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-29(%ebp)
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj726
	movl	-4(%edx),%edx
Lj726:
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ecx
	leal	-1(%eax,%ecx,1),%eax
	movb	-29(%ebp),%cl
	call	SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
	movl	%eax,-20(%ebp)
	jmp	Lj732
	.balign 4,0x90
Lj731:
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	leal	-1(%ecx,%eax,1),%eax
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%edx
	movl	-28(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj736
	jmp	Lj737
Lj736:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	jmp	Lj705
Lj737:
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	incl	%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj752
	movl	-4(%edx),%edx
Lj752:
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ecx
	leal	-1(%eax,%ecx,1),%eax
	movb	-29(%ebp),%cl
	call	SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
	movl	%eax,-20(%ebp)
Lj732:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj757
	jmp	Lj733
Lj757:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	decl	%edx
	cmpl	-24(%ebp),%edx
	jle	Lj731
	jmp	Lj733
Lj733:
Lj713:
Lj705:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_POSEX$CHAR$ANSISTRING$LONGWORD$$LONGINT
STRUTILS_POSEX$CHAR$ANSISTRING$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj762
	movl	-4(%eax),%eax
Lj762:
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj763
	jmp	Lj765
Lj765:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj766
	movl	-4(%eax),%eax
Lj766:
	cmpl	-12(%ebp),%eax
	jb	Lj763
	jmp	Lj764
Lj763:
	movl	$0,-16(%ebp)
	jmp	Lj758
Lj764:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj771
	movl	-4(%eax),%eax
Lj771:
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	leal	-1(%ecx,%eax,1),%eax
	movb	-4(%ebp),%cl
	call	SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj780
	jmp	Lj781
Lj780:
	movl	$0,-16(%ebp)
	jmp	Lj784
Lj781:
	movl	-24(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-16(%ebp)
Lj784:
Lj758:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_POSEX$ANSISTRING$ANSISTRING$$LONGINT
STRUTILS_POSEX$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	STRUTILS_POSEX$ANSISTRING$ANSISTRING$LONGWORD$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_STRINGSREPLACE$crc5492ED1B
STRUTILS_STRINGSREPLACE$crc5492ED1B:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%esi
	movl	-12(%ebp),%edi
	incl	%edi
	movl	%edi,%ecx
	shll	$2,%edi
	subl	%edi,%esp
	andl	$-12,%esp
	movl	%esp,%edi
	rep
	movsl
	movl	%esp,%eax
	movl	%eax,-8(%ebp)
	movl	20(%ebp),%esi
	movl	16(%ebp),%edi
	incl	%edi
	movl	%edi,%ecx
	shll	$2,%edi
	subl	%edi,%esp
	andl	$-12,%esp
	movl	%esp,%edi
	rep
	movsl
	movl	%esp,%eax
	movl	%eax,20(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ecx
	incl	%ecx
	movl	$INIT_SYSTEM_ANSISTRING,%edx
	call	FPC_ADDREF_ARRAY
	movl	20(%ebp),%eax
	movl	16(%ebp),%ecx
	incl	%ecx
	movl	$INIT_SYSTEM_ANSISTRING,%edx
	call	FPC_ADDREF_ARRAY
	movl	$0,-32(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-48(%ebp)
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-44(%ebp)
	movl	16(%ebp),%eax
	incl	%eax
	cmpl	-44(%ebp),%eax
	jne	Lj801
	jmp	Lj802
Lj801:
	movl	RESSTR_STRUTILS_SERRAMOUNTSTRINGS+4,%ecx
	movl	$VMT_SYSUTILS_EXCEPTION,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La1:
	movl	%ebp,%ecx
	movl	$La1,%edx
	call	FPC_RAISEEXCEPTION
Lj802:
	decl	-44(%ebp)
	testl	$2,12(%ebp)
	jne	Lj809
	jmp	Lj810
Lj809:
	leal	-36(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+32,%ecx
	call	*%ecx
	movl	-44(%ebp),%ebx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj816
	decl	-28(%ebp)
	.balign 4,0x90
Lj817:
	incl	-28(%ebp)
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	leal	(%edx,%eax,4),%eax
	movl	%eax,-52(%ebp)
	leal	-48(%ebp),%edx
	movl	-52(%ebp),%eax
	movl	(%eax),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+32,%ecx
	call	*%ecx
	movl	-48(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%edi
	movl	-28(%ebp),%esi
	leal	(%edi,%esi,4),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-48(%ebp),%eax
	movl	%eax,(%edi,%esi,4)
	cmpl	-28(%ebp),%ebx
	jg	Lj817
Lj816:
	jmp	Lj826
Lj810:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-36(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,-36(%ebp)
Lj826:
	leal	-32(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-32(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj837
	movl	-4(%eax),%eax
Lj837:
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-24(%ebp)
	jmp	Lj839
	.balign 4,0x90
Lj838:
	movb	$0,-37(%ebp)
	movl	-44(%ebp),%ebx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj844
	decl	-28(%ebp)
	.balign 4,0x90
Lj845:
	incl	-28(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj851
	movl	-4(%eax),%eax
Lj851:
	cmpl	$0,%eax
	jg	Lj850
	jmp	Lj847
Lj850:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	-16(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	je	Lj849
	jmp	Lj847
Lj849:
	movl	-24(%ebp),%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	testl	%eax,%eax
	je	Lj852
	movl	-4(%eax),%eax
Lj852:
	cmpl	%eax,%ecx
	jge	Lj848
	jmp	Lj847
Lj848:
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	(%edx,%eax,4),%ecx
	testl	%ecx,%ecx
	je	Lj855
	movl	-4(%ecx),%ecx
Lj855:
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%esi
	movl	(%eax,%esi,4),%eax
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj846
	jmp	Lj847
Lj846:
	movl	20(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%eax,%edx,4),%ecx
	movl	-32(%ebp),%edx
	leal	-32(%ebp),%eax
	call	fpc_ansistr_concat
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	testl	%edx,%edx
	je	Lj868
	movl	-4(%edx),%edx
Lj868:
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	testl	%edx,%edx
	je	Lj871
	movl	-4(%edx),%edx
Lj871:
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movb	$1,-37(%ebp)
Lj847:
	cmpl	-28(%ebp),%ebx
	jg	Lj845
Lj844:
	movb	-37(%ebp),%al
	testb	%al,%al
	je	Lj874
	jmp	Lj875
Lj874:
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	leal	-48(%ebp),%edx
	call	fpc_char_to_ansistr
	movl	-48(%ebp),%ecx
	movl	-32(%ebp),%edx
	leal	-32(%ebp),%eax
	call	fpc_ansistr_concat
	incl	-16(%ebp)
	incl	-20(%ebp)
	jmp	Lj886
Lj875:
	testl	$1,12(%ebp)
	je	Lj887
	jmp	Lj888
Lj887:
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSUTILS_STRPAS$PCHAR$$ANSISTRING
	movl	-48(%ebp),%ecx
	movl	-32(%ebp),%edx
	leal	-32(%ebp),%eax
	call	fpc_ansistr_concat
	jmp	Lj840
Lj888:
Lj886:
Lj839:
	movl	-16(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj838
	jmp	Lj840
Lj840:
	movl	-32(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-32(%ebp),%eax
	movl	%eax,(%ebx)
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-32(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-32(%ebp)
	leal	-36(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ecx
	incl	%ecx
	movl	$INIT_SYSTEM_ANSISTRING,%edx
	call	FPC_DECREF_ARRAY
	movl	20(%ebp),%eax
	movl	16(%ebp),%ecx
	incl	%ecx
	movl	$INIT_SYSTEM_ANSISTRING,%edx
	call	FPC_DECREF_ARRAY
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	STRUTILS_REPLACESTR$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING
STRUTILS_REPLACESTR$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	$1
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
	movl	8(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	STRUTILS_REPLACETEXT$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING
STRUTILS_REPLACETEXT$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	$3
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
	movl	8(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-60(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movb	$0,-14(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj945
	movl	-4(%eax),%eax
Lj945:
	cmpl	$0,%eax
	jg	Lj943
	jmp	Lj944
Lj943:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	movl	-12(%ebp),%edx
	call	fpc_char_to_ansistr
	movl	$2,-20(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj956
	movl	-4(%eax),%eax
Lj956:
	movl	%eax,-24(%ebp)
	jmp	Lj958
	.balign 4,0x90
Lj957:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	movb	TC_STRUTILS_SSCORE-1(,%eax,1),%al
	movb	%al,-13(%ebp)
	pushl	$32
	movl	$_$STRUTILS$_Ld2,%eax
	movzbl	-14(%ebp),%ecx
	leal	-56(%ebp),%edx
	call	fpc_varset_set
	movzbl	-13(%ebp),%eax
	btl	%eax,-56(%ebp)
	jnc	Lj962
	jmp	Lj963
Lj962:
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movb	-13(%ebp),%al
	call	fpc_char_to_ansistr
	movl	-60(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_concat
Lj963:
	movb	-13(%ebp),%al
	cmpb	$105,%al
	jne	Lj982
	jmp	Lj983
Lj982:
	movb	-13(%ebp),%al
	movb	%al,-14(%ebp)
Lj983:
	incl	-20(%ebp)
Lj958:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj986
	jmp	Lj959
Lj986:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj987
	movl	-4(%eax),%eax
Lj987:
	cmpl	-8(%ebp),%eax
	jl	Lj957
	jmp	Lj959
Lj959:
Lj944:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj990
	movl	-4(%eax),%eax
Lj990:
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj991
	jmp	Lj992
Lj991:
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	subl	%eax,%edx
	leal	-60(%ebp),%ecx
	movb	$48,%al
	call	SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
	movl	-60(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_concat
Lj992:
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_SOUNDEX$ANSISTRING$$ANSISTRING
STRUTILS_SOUNDEX$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$4,%edx
	call	STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_SOUNDEXINT$ANSISTRING$TSOUNDEXINTLENGTH$$LONGINT
STRUTILS_SOUNDEXINT$ANSISTRING$TSOUNDEXINTLENGTH$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$-1,-12(%ebp)
	leal	-16(%ebp),%ecx
	movzbl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1025
	movl	-4(%eax),%eax
Lj1025:
	cmpl	$0,%eax
	jg	Lj1023
	jmp	Lj1024
Lj1023:
	movl	-16(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$65,%eax
	movl	%eax,-12(%ebp)
	movzbl	-8(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj1028
	jmp	Lj1029
Lj1028:
	movl	-12(%ebp),%edx
	imull	$26,%edx
	movl	-16(%ebp),%eax
	movzbl	1(%eax),%eax
	subl	$48,%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	movzbl	-8(%ebp),%eax
	movl	$3,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj1033
	decl	-20(%ebp)
	.balign 4,0x90
Lj1034:
	incl	-20(%ebp)
	movl	-12(%ebp),%ebx
	imull	$7,%ebx
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movzbl	-1(%ecx,%edx,1),%edx
	subl	$48,%edx
	addl	%edx,%ebx
	movl	%ebx,-12(%ebp)
	cmpl	-20(%ebp),%eax
	jg	Lj1034
Lj1033:
Lj1029:
	movl	-12(%ebp),%edx
	imull	$9,%edx
	movzbl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
Lj1024:
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_SOUNDEXINT$ANSISTRING$$LONGINT
STRUTILS_SOUNDEXINT$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$4,%dl
	call	STRUTILS_SOUNDEXINT$ANSISTRING$TSOUNDEXINTLENGTH$$LONGINT
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_DECODESOUNDEXINT$LONGINT$$ANSISTRING
STRUTILS_DECODESOUNDEXINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	cltd
	movl	$9,%ecx
	idivl	%ecx
	movl	%edx,-16(%ebp)
	movl	-4(%ebp),%ecx
	movl	$954437177,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$1,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-4(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	cmpl	$3,-12(%ebp)
	jl	Lj1062
	incl	-12(%ebp)
	.balign 4,0x90
Lj1063:
	decl	-12(%ebp)
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	cltd
	movl	$7,%ecx
	idivl	%ecx
	movl	%edx,%eax
	addl	$48,%eax
	leal	-20(%ebp),%edx
	call	fpc_char_to_ansistr
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_concat
	movl	-4(%ebp),%ecx
	movl	$-1840700269,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-4(%ebp)
	cmpl	$3,-12(%ebp)
	jg	Lj1063
Lj1062:
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj1076
	jmp	Lj1077
Lj1076:
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	cltd
	movl	$26,%ecx
	idivl	%ecx
	movl	%edx,%eax
	addl	$48,%eax
	leal	-20(%ebp),%edx
	call	fpc_char_to_ansistr
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_concat
	movl	-4(%ebp),%ecx
	movl	$1321528399,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$3,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-4(%ebp)
Lj1077:
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	addl	$65,%eax
	leal	-20(%ebp),%edx
	call	fpc_char_to_ansistr
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_concat
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_SOUNDEXWORD$ANSISTRING$$WORD
STRUTILS_SOUNDEXWORD$ANSISTRING$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$4,%edx
	call	STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$65,%eax
	movw	%ax,-6(%ebp)
	movzwl	-6(%ebp),%eax
	imull	$26,%eax
	movl	-12(%ebp),%edx
	movzbl	1(%edx),%edx
	addl	%edx,%eax
	subl	$48,%eax
	movw	%ax,-6(%ebp)
	movzwl	-6(%ebp),%eax
	imull	$7,%eax
	movl	-12(%ebp),%edx
	movzbl	2(%edx),%edx
	addl	%edx,%eax
	subl	$48,%eax
	movw	%ax,-6(%ebp)
	movzwl	-6(%ebp),%eax
	imull	$7,%eax
	movl	-12(%ebp),%edx
	movzbl	3(%edx),%edx
	addl	%edx,%eax
	subl	$48,%eax
	movw	%ax,-6(%ebp)
	leal	-12(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-12(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_DECODESOUNDEXWORD$WORD$$ANSISTRING
STRUTILS_DECODESOUNDEXWORD$WORD$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movzwl	-4(%ebp),%eax
	cltd
	movl	$7,%ecx
	idivl	%ecx
	movl	%edx,%eax
	addl	$48,%eax
	movl	-8(%ebp),%edx
	call	fpc_char_to_ansistr
	movzwl	-4(%ebp),%ecx
	movl	$-1840700269,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movw	%dx,-4(%ebp)
	leal	-12(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-12(%ebp)
	movzwl	-4(%ebp),%eax
	cltd
	movl	$7,%ecx
	idivl	%ecx
	movl	%edx,%eax
	addl	$48,%eax
	leal	-12(%ebp),%edx
	call	fpc_char_to_ansistr
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_concat
	movzwl	-4(%ebp),%ecx
	movl	$-1840700269,%eax
	imull	%ecx
	movl	%ecx,%eax
	addl	%eax,%edx
	sarl	$2,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movw	%dx,-4(%ebp)
	leal	-12(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-12(%ebp)
	movzwl	-4(%ebp),%eax
	cltd
	movl	$26,%ecx
	idivl	%ecx
	movl	%edx,%eax
	leal	-12(%ebp),%edx
	call	SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_concat
	movzwl	-4(%ebp),%ecx
	movl	$1321528399,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$3,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movw	%dx,-4(%ebp)
	leal	-12(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-12(%ebp)
	movzwl	-4(%ebp),%eax
	addl	$65,%eax
	leal	-12(%ebp),%edx
	call	fpc_char_to_ansistr
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_concat
	leal	-12(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_SOUNDEXSIMILAR$ANSISTRING$ANSISTRING$TSOUNDEXLENGTH$$BOOLEAN
STRUTILS_SOUNDEXSIMILAR$ANSISTRING$ANSISTRING$TSOUNDEXLENGTH$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
	movl	-20(%ebp),%ebx
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-24(%ebp)
	leal	-24(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
	movl	-24(%ebp),%eax
	movl	%ebx,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	seteb	-13(%ebp)
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-24(%ebp)
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	movb	-13(%ebp),%al
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_SOUNDEXSIMILAR$ANSISTRING$ANSISTRING$$BOOLEAN
STRUTILS_SOUNDEXSIMILAR$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$4,%edx
	call	STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
	movl	-16(%ebp),%ebx
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$4,%edx
	call	STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
	movl	-20(%ebp),%eax
	movl	%ebx,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	seteb	%al
	movb	%al,-9(%ebp)
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-16(%ebp)
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_SOUNDEXCOMPARE$ANSISTRING$ANSISTRING$TSOUNDEXLENGTH$$LONGINT
STRUTILS_SOUNDEXCOMPARE$ANSISTRING$ANSISTRING$TSOUNDEXLENGTH$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-24(%ebp)
	leal	-24(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
	movl	-24(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-24(%ebp)
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-28(%ebp)
	leal	-28(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
	movl	-28(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-28(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+40,%ecx
	call	*%ecx
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-28(%ebp)
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-24(%ebp)
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_SOUNDEXCOMPARE$ANSISTRING$ANSISTRING$$LONGINT
STRUTILS_SOUNDEXCOMPARE$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$4,%edx
	call	STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
	movl	-20(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-24(%ebp)
	leal	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$4,%edx
	call	STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
	movl	-24(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+40,%ecx
	call	*%ecx
	movl	%eax,-12(%ebp)
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-24(%ebp)
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_SOUNDEXPROC$ANSISTRING$ANSISTRING$$BOOLEAN
STRUTILS_SOUNDEXPROC$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$4,%edx
	call	STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
	movl	-16(%ebp),%ebx
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$4,%edx
	call	STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
	movl	-20(%ebp),%eax
	movl	%ebx,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	seteb	%al
	movb	%al,-9(%ebp)
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-16(%ebp)
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ISEMPTYSTR$ANSISTRING$TSYSCHARSET$$BOOLEAN
STRUTILS_ISEMPTYSTR$ANSISTRING$TSYSCHARSET$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1288
	movl	-4(%eax),%eax
Lj1288:
	movl	%eax,-20(%ebp)
	movl	$1,-16(%ebp)
	movb	$1,-9(%ebp)
	jmp	Lj1294
	.balign 4,0x90
Lj1293:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ecx
	movzbl	-1(%eax,%edx,1),%eax
	btl	%eax,(%ecx)
	setcb	-9(%ebp)
	incl	-16(%ebp)
Lj1294:
	cmpb	$0,-9(%ebp)
	jne	Lj1298
	jmp	Lj1295
Lj1298:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj1293
	jmp	Lj1295
Lj1295:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_DELSPACE$ANSISTRING$$ANSISTRING
STRUTILS_DELSPACE$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$32,%dl
	call	STRUTILS_DELCHARS$ANSISTRING$CHAR$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_DELCHARS$ANSISTRING$CHAR$$ANSISTRING
STRUTILS_DELCHARS$ANSISTRING$CHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1313
	movl	-4(%eax),%eax
Lj1313:
	movl	%eax,-16(%ebp)
	jmp	Lj1315
	.balign 4,0x90
Lj1314:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	-8(%ebp),%al
	je	Lj1317
	jmp	Lj1318
Lj1317:
	movl	-16(%ebp),%eax
	decl	%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1322
	.balign 4,0x90
Lj1321:
	decl	-20(%ebp)
Lj1322:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1324
	jmp	Lj1323
Lj1324:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	-8(%ebp),%al
	je	Lj1321
	jmp	Lj1323
Lj1323:
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	movl	-20(%ebp),%edx
	incl	%edx
	movl	-12(%ebp),%eax
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	movl	-20(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj1318:
	decl	-16(%ebp)
Lj1315:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1314
	jmp	Lj1316
Lj1316:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_DELSPACE1$ANSISTRING$$ANSISTRING
STRUTILS_DELSPACE1$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1340
	movl	-4(%eax),%eax
Lj1340:
	movl	%eax,-12(%ebp)
	cmpl	$2,-12(%ebp)
	jl	Lj1338
	incl	-12(%ebp)
	.balign 4,0x90
Lj1339:
	decl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$32,%al
	je	Lj1343
	jmp	Lj1342
Lj1343:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$32,%al
	je	Lj1341
	jmp	Lj1342
Lj1341:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj1342:
	cmpl	$2,-12(%ebp)
	jg	Lj1339
Lj1338:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_TAB2SPACE$ANSISTRING$BYTE$$ANSISTRING
STRUTILS_TAB2SPACE$ANSISTRING$BYTE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	$1,-16(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj1357
	.balign 4,0x90
Lj1356:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$9,%al
	jne	Lj1359
	jmp	Lj1360
Lj1359:
	incl	-16(%ebp)
	jmp	Lj1361
Lj1360:
	movl	-12(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-16(%ebp),%edx
	movb	$32,-1(%eax,%edx,1)
	movzbl	-8(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj1366
	jmp	Lj1367
Lj1366:
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	movzbl	-8(%ebp),%edx
	decl	%edx
	leal	-20(%ebp),%ecx
	movb	$32,%al
	call	SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	call	SYSTEM_INSERT$ANSISTRING$ANSISTRING$LONGINT
Lj1367:
	movzbl	-8(%ebp),%eax
	addl	%eax,-16(%ebp)
Lj1361:
Lj1357:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1380
	movl	-4(%eax),%eax
Lj1380:
	cmpl	-16(%ebp),%eax
	jge	Lj1356
	jmp	Lj1358
Lj1358:
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_NPOS$ANSISTRING$ANSISTRING$LONGINT$$LONGINT
STRUTILS_NPOS$ANSISTRING$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj1385
	jmp	Lj1386
Lj1385:
	jmp	Lj1381
Lj1386:
	movl	$0,-28(%ebp)
	movl	$1,-20(%ebp)
	.balign 4,0x90
Lj1391:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	addl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1400
	jmp	Lj1401
Lj1400:
	movl	-24(%ebp),%ecx
	leal	-8(%ebp),%eax
	movl	$1,%edx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj1401:
	incl	-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj1393
	jmp	Lj1408
Lj1408:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj1393
	jmp	Lj1391
Lj1393:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1409
	jmp	Lj1410
Lj1409:
	movl	-28(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1410:
Lj1381:
	leal	-8(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ADDCHAR$CHAR$ANSISTRING$LONGINT$$ANSISTRING
STRUTILS_ADDCHAR$CHAR$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1419
	movl	-4(%eax),%eax
Lj1419:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj1420
	jmp	Lj1421
Lj1420:
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	leal	-20(%ebp),%ecx
	movb	-4(%ebp),%al
	call	SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
	movl	-20(%ebp),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%ecx
	movl	8(%ebp),%eax
	call	fpc_ansistr_concat
Lj1421:
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	movl	-24(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	STRUTILS_ADDCHARR$CHAR$ANSISTRING$LONGINT$$ANSISTRING
STRUTILS_ADDCHARR$CHAR$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1440
	movl	-4(%eax),%eax
Lj1440:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj1441
	jmp	Lj1442
Lj1441:
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	leal	-20(%ebp),%ecx
	movb	-4(%ebp),%al
	call	SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
	movl	-20(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_concat
Lj1442:
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	movl	-24(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	STRUTILS_PADRIGHT$ANSISTRING$LONGINT$$ANSISTRING
STRUTILS_PADRIGHT$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movb	$32,%al
	call	STRUTILS_ADDCHARR$CHAR$ANSISTRING$LONGINT$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_PADLEFT$ANSISTRING$LONGINT$$ANSISTRING
STRUTILS_PADLEFT$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movb	$32,%al
	call	STRUTILS_ADDCHAR$CHAR$ANSISTRING$LONGINT$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_COPY2SYMB$ANSISTRING$CHAR$$ANSISTRING
STRUTILS_COPY2SYMB$ANSISTRING$CHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movb	-8(%ebp),%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1483
	jmp	Lj1484
Lj1483:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1487
	movl	-4(%eax),%eax
Lj1487:
	incl	%eax
	movl	%eax,-16(%ebp)
Lj1484:
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_COPY2SYMBDEL$ANSISTRING$CHAR$$ANSISTRING
STRUTILS_COPY2SYMBDEL$ANSISTRING$CHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movb	-8(%ebp),%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1504
	jmp	Lj1505
Lj1504:
	movl	-4(%ebp),%esi
	movl	(%esi),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	(%esi),%eax
	movl	%eax,(%ebx)
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj1510
Lj1505:
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj1510:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_COPY2SPACE$ANSISTRING$$ANSISTRING
STRUTILS_COPY2SPACE$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$32,%dl
	call	STRUTILS_COPY2SYMB$ANSISTRING$CHAR$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_COPY2SPACEDEL$ANSISTRING$$ANSISTRING
STRUTILS_COPY2SPACEDEL$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$32,%dl
	call	STRUTILS_COPY2SYMBDEL$ANSISTRING$CHAR$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ANSIPROPERCASE$ANSISTRING$TSYSCHARSET$$ANSISTRING
STRUTILS_ANSIPROPERCASE$ANSISTRING$TSYSCHARSET$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+36,%ecx
	call	*%ecx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1551
	movl	-4(%eax),%eax
Lj1551:
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1553
	.balign 4,0x90
Lj1552:
	jmp	Lj1556
	.balign 4,0x90
Lj1555:
	incl	-16(%ebp)
Lj1556:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj1558
	jmp	Lj1557
Lj1558:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	movzbl	(%eax),%eax
	btl	%eax,(%edx)
	jc	Lj1555
	jmp	Lj1557
Lj1557:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj1559
	jmp	Lj1560
Lj1559:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	movl	-16(%ebp),%edx
	movb	%al,(%edx)
Lj1560:
	jmp	Lj1566
	.balign 4,0x90
Lj1565:
	incl	-16(%ebp)
Lj1566:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj1568
	jmp	Lj1567
Lj1568:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	movzbl	(%eax),%eax
	btl	%eax,(%edx)
	jnc	Lj1565
	jmp	Lj1567
Lj1567:
Lj1553:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj1552
	jmp	Lj1554
Lj1554:
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_WORDCOUNT$ANSISTRING$TSYSCHARSET$$LONGINT
STRUTILS_WORDCOUNT$ANSISTRING$TSYSCHARSET$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1577
	movl	-4(%eax),%eax
Lj1577:
	movl	-16(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1579
	.balign 4,0x90
Lj1578:
	jmp	Lj1582
	.balign 4,0x90
Lj1581:
	incl	-16(%ebp)
Lj1582:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj1584
	jmp	Lj1583
Lj1584:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	movzbl	(%eax),%eax
	btl	%eax,(%edx)
	jc	Lj1581
	jmp	Lj1583
Lj1583:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj1585
	jmp	Lj1586
Lj1585:
	incl	-12(%ebp)
Lj1586:
	jmp	Lj1588
	.balign 4,0x90
Lj1587:
	incl	-16(%ebp)
Lj1588:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj1590
	jmp	Lj1589
Lj1590:
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%edx
	movzbl	(%eax),%eax
	btl	%eax,(%edx)
	jnc	Lj1587
	jmp	Lj1589
Lj1589:
Lj1579:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	Lj1578
	jmp	Lj1580
Lj1580:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_WORDPOSITION$LONGINT$ANSISTRING$TSYSCHARSET$$LONGINT
STRUTILS_WORDPOSITION$LONGINT$ANSISTRING$TSYSCHARSET$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj1601
	movl	-4(%edx),%edx
Lj1601:
	movl	-20(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-28(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj1605
	.balign 4,0x90
Lj1604:
	jmp	Lj1608
	.balign 4,0x90
Lj1607:
	incl	-24(%ebp)
Lj1608:
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jb	Lj1610
	jmp	Lj1609
Lj1610:
	movl	-24(%ebp),%eax
	movl	-12(%ebp),%edx
	movzbl	(%eax),%eax
	btl	%eax,(%edx)
	jc	Lj1607
	jmp	Lj1609
Lj1609:
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jb	Lj1611
	jmp	Lj1612
Lj1611:
	incl	-32(%ebp)
Lj1612:
	movl	-32(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj1613
	jmp	Lj1614
Lj1613:
	jmp	Lj1616
	.balign 4,0x90
Lj1615:
	incl	-24(%ebp)
Lj1616:
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jb	Lj1618
	jmp	Lj1617
Lj1618:
	movl	-24(%ebp),%eax
	movl	-12(%ebp),%edx
	movzbl	(%eax),%eax
	btl	%eax,(%edx)
	jnc	Lj1615
	jmp	Lj1617
Lj1617:
	jmp	Lj1619
Lj1614:
	movl	-24(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj1619:
Lj1605:
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jb	Lj1622
	jmp	Lj1606
Lj1622:
	movl	-32(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj1604
	jmp	Lj1606
Lj1606:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_EXTRACTWORD$LONGINT$ANSISTRING$TSYSCHARSET$$ANSISTRING
STRUTILS_EXTRACTWORD$LONGINT$ANSISTRING$TSYSCHARSET$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	STRUTILS_EXTRACTWORDPOS$LONGINT$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	STRUTILS_EXTRACTWORDPOS$LONGINT$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING
STRUTILS_EXTRACTWORDPOS$LONGINT$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	STRUTILS_WORDPOSITION$LONGINT$ANSISTRING$TSYSCHARSET$$LONGINT
	movl	%eax,-16(%ebp)
	movl	12(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1649
	jmp	Lj1650
Lj1649:
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1655
	movl	-4(%eax),%eax
Lj1655:
	movl	%eax,-24(%ebp)
	jmp	Lj1657
	.balign 4,0x90
Lj1656:
	incl	-20(%ebp)
Lj1657:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj1659
	jmp	Lj1658
Lj1659:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%ecx
	movzbl	-1(%eax,%edx,1),%eax
	btl	%eax,(%ecx)
	jnc	Lj1656
	jmp	Lj1658
Lj1658:
Lj1650:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	cmpl	$0,%eax
	jg	Lj1664
	jmp	Lj1665
Lj1664:
	movl	8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	%eax,%edx
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leal	-1(%eax,%ebx,1),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj1665:
	movl	-28(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	STRUTILS_EXTRACTDELIMITED$LONGINT$ANSISTRING$TSYSCHARSET$$ANSISTRING
STRUTILS_EXTRACTDELIMITED$LONGINT$ANSISTRING$TSYSCHARSET$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$1,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1684
	movl	-4(%eax),%eax
Lj1684:
	movl	%eax,-28(%ebp)
	movl	8(%ebp),%eax
	movl	$0,%edx
	call	fpc_ansistr_setlength
	jmp	Lj1690
	.balign 4,0x90
Lj1689:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%ecx
	movzbl	-1(%eax,%edx,1),%eax
	btl	%eax,(%ecx)
	jc	Lj1692
	jmp	Lj1693
Lj1692:
	incl	-16(%ebp)
	jmp	Lj1694
Lj1693:
	movl	-4(%ebp),%eax
	decl	%eax
	cmpl	-16(%ebp),%eax
	je	Lj1695
	jmp	Lj1696
Lj1695:
	incl	-24(%ebp)
	movl	-24(%ebp),%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-24(%ebp),%ebx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%ecx
	movb	-1(%edx,%ecx,1),%dl
	movb	%dl,-1(%eax,%ebx,1)
Lj1696:
Lj1694:
	incl	-20(%ebp)
Lj1690:
	movl	-20(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jle	Lj1705
	jmp	Lj1691
Lj1705:
	movl	-16(%ebp),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj1689
	jmp	Lj1691
Lj1691:
	movl	-32(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	STRUTILS_EXTRACTSUBSTR$ANSISTRING$LONGINT$TSYSCHARSET$$ANSISTRING
STRUTILS_EXTRACTSUBSTR$ANSISTRING$LONGINT$TSYSCHARSET$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1712
	movl	-4(%eax),%eax
Lj1712:
	movl	%eax,-20(%ebp)
	jmp	Lj1714
	.balign 4,0x90
Lj1713:
	incl	-16(%ebp)
Lj1714:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj1716
	jmp	Lj1715
Lj1716:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%ecx
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,(%ecx)
	jnc	Lj1713
	jmp	Lj1715
Lj1715:
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%eax),%eax
	subl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_copy
	jmp	Lj1726
	.balign 4,0x90
Lj1725:
	incl	-16(%ebp)
Lj1726:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj1728
	jmp	Lj1727
Lj1728:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%ecx
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,(%ecx)
	jc	Lj1725
	jmp	Lj1727
Lj1727:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	STRUTILS_ISWORDPRESENT$ANSISTRING$ANSISTRING$TSYSCHARSET$$BOOLEAN
STRUTILS_ISWORDPRESENT$ANSISTRING$ANSISTRING$TSYSCHARSET$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-28(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	STRUTILS_WORDCOUNT$ANSISTRING$TSYSCHARSET$$LONGINT
	movl	%eax,-24(%ebp)
	movl	$1,-20(%ebp)
	jmp	Lj1744
	.balign 4,0x90
Lj1743:
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-28(%ebp)
	leal	-32(%ebp),%eax
	pushl	%eax
	leal	-28(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	STRUTILS_EXTRACTWORDPOS$LONGINT$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING
	movl	-28(%ebp),%eax
	movl	-4(%ebp),%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	seteb	-13(%ebp)
	incl	-20(%ebp)
Lj1744:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj1762
	jmp	Lj1745
Lj1762:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj1743
	jmp	Lj1745
Lj1745:
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-28(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_NUMB2USA$ANSISTRING$$ANSISTRING
STRUTILS_NUMB2USA$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1767
	movl	-4(%eax),%eax
Lj1767:
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	movl	$0,-16(%ebp)
	jmp	Lj1773
	.balign 4,0x90
Lj1772:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1778
	movl	-4(%eax),%eax
Lj1778:
	movl	-12(%ebp),%edx
	subl	%edx,%eax
	incl	%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	cltd
	movl	$3,%ecx
	idivl	%ecx
	testl	%edx,%edx
	je	Lj1777
	jmp	Lj1776
Lj1777:
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj1775
	jmp	Lj1776
Lj1775:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	$_$STRUTILS$_Ld3,%eax
	call	SYSTEM_INSERT$ANSISTRING$ANSISTRING$LONGINT
	incl	-16(%ebp)
Lj1776:
	decl	-12(%ebp)
Lj1773:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1772
	jmp	Lj1774
Lj1774:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_PADCENTER$ANSISTRING$LONGINT$$ANSISTRING
STRUTILS_PADCENTER$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1789
	movl	-4(%eax),%eax
Lj1789:
	cmpl	-8(%ebp),%eax
	jl	Lj1787
	jmp	Lj1788
Lj1787:
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj1794
	movl	-4(%edx),%edx
Lj1794:
	movl	%edx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%edx
	sarl	$1,%edx
	movl	-8(%ebp),%ecx
	movl	%ecx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%ecx
	sarl	$1,%ecx
	subl	%edx,%ecx
	movl	%ecx,%edx
	leal	-16(%ebp),%ecx
	movb	$32,%al
	call	SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_concat
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj1807
	movl	-4(%edx),%edx
Lj1807:
	movl	-8(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	leal	-16(%ebp),%ecx
	movb	$32,%al
	call	SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_concat
	jmp	Lj1816
Lj1788:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
Lj1816:
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-16(%ebp)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_DEC2NUMB$LONGINT$BYTE$BYTE$$ANSISTRING
STRUTILS_DEC2NUMB$LONGINT$BYTE$BYTE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$0,-24(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1821
	jmp	Lj1822
Lj1821:
	movl	$_$STRUTILS$_Ld4,%esi
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%esi,(%ebx)
	jmp	Lj1825
Lj1822:
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj1831
	.balign 4,0x90
Lj1830:
	movzbl	-12(%ebp),%ecx
	movl	-20(%ebp),%eax
	cltd
	idivl	%ecx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$9,%eax
	jg	Lj1835
	jmp	Lj1836
Lj1835:
	movl	-16(%ebp),%eax
	addl	$55,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1839
Lj1836:
	movl	-16(%ebp),%eax
	addl	$48,%eax
	movl	%eax,-16(%ebp)
Lj1839:
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-24(%ebp)
	leal	-24(%ebp),%edx
	movb	-16(%ebp),%al
	call	fpc_char_to_ansistr
	movl	-24(%ebp),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%ecx
	movl	8(%ebp),%eax
	call	fpc_ansistr_concat
	movzbl	-12(%ebp),%ecx
	movl	-20(%ebp),%eax
	cltd
	idivl	%ecx
	movl	%eax,-20(%ebp)
Lj1831:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1830
	jmp	Lj1832
Lj1832:
Lj1825:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj1854
	jmp	Lj1855
Lj1854:
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-24(%ebp)
	leal	-24(%ebp),%eax
	pushl	%eax
	movzbl	-8(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movb	$48,%al
	call	STRUTILS_ADDCHAR$CHAR$ANSISTRING$LONGINT$$ANSISTRING
	movl	-24(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-24(%ebp),%eax
	movl	%eax,(%ebx)
Lj1855:
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-24(%ebp)
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	STRUTILS_NUMB2DEC$ANSISTRING$BYTE$$LONGINT
STRUTILS_NUMB2DEC$ANSISTRING$BYTE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	$0,-24(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1870
	movl	-4(%eax),%eax
Lj1870:
	movl	%eax,-16(%ebp)
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-24(%ebp)
	leal	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING
	movl	-24(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-24(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$1,-20(%ebp)
	jmp	Lj1882
	.balign 4,0x90
Lj1881:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$64,%al
	ja	Lj1884
	jmp	Lj1885
Lj1884:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%edx
	subl	$55,%edx
	movl	-20(%ebp),%eax
	imull	%eax,%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
	jmp	Lj1888
Lj1885:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%edx
	subl	$48,%edx
	movl	-20(%ebp),%eax
	imull	%eax,%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-12(%ebp)
Lj1888:
	decl	-16(%ebp)
	movzbl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	imull	%eax,%edx
	movl	%edx,-20(%ebp)
Lj1882:
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jge	Lj1881
	jmp	Lj1883
Lj1883:
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-24(%ebp)
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$21,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1902
	movl	-4(%eax),%eax
Lj1902:
	cmpl	$0,%eax
	jg	Lj1901
	jmp	Lj1900
Lj1901:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$45,%al
	je	Lj1899
	jmp	Lj1900
Lj1899:
	movb	$1,-21(%ebp)
	jmp	Lj1903
Lj1900:
	movb	$0,-21(%ebp)
Lj1903:
	cmpb	$0,-21(%ebp)
	jne	Lj1904
	jmp	Lj1905
Lj1904:
	incl	-16(%ebp)
Lj1905:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1908
	movl	-4(%eax),%eax
Lj1908:
	movl	%eax,-20(%ebp)
	jmp	Lj1910
	.balign 4,0x90
Lj1909:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	movb	%al,-9(%ebp)
	movzbl	-9(%ebp),%eax
	subl	$67,%eax
	cmpl	$2,%eax
	jb	Lj1918
	cmpl	$6,%eax
	stc
	je	Lj1918
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj1918
	cmpl	$10,%eax
	stc
	je	Lj1918
	cmpl	$12,%eax
	stc
	je	Lj1918
	clc
Lj1918:
	jc	Lj1916
	jmp	Lj1917
Lj1916:
	movl	-16(%ebp),%eax
	incl	%eax
	cmpl	-20(%ebp),%eax
	jle	Lj1919
	jmp	Lj1920
Lj1919:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	movb	%al,-10(%ebp)
	jmp	Lj1925
Lj1920:
	movb	$0,-10(%ebp)
Lj1925:
	movzbl	-10(%ebp),%eax
	subl	$67,%eax
	cmpl	$2,%eax
	jb	Lj1931
	cmpl	$6,%eax
	stc
	je	Lj1931
	subl	$9,%eax
	cmpl	$2,%eax
	jb	Lj1931
	cmpl	$10,%eax
	stc
	je	Lj1931
	cmpl	$12,%eax
	stc
	je	Lj1931
	clc
Lj1931:
	jc	Lj1930
	jmp	Lj1929
Lj1930:
	movzbl	-9(%ebp),%eax
	movzbl	-10(%ebp),%edx
	movw	TC_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_ROMANVALUES-134(,%eax,2),%ax
	cmpw	TC_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_ROMANVALUES-134(,%edx,2),%ax
	jb	Lj1928
	jmp	Lj1929
Lj1928:
	movzbl	-10(%ebp),%eax
	movzwl	TC_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_ROMANVALUES-134(,%eax,2),%eax
	addl	%eax,-8(%ebp)
	movzbl	-9(%ebp),%eax
	movzwl	TC_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_ROMANVALUES-134(,%eax,2),%eax
	subl	%eax,-8(%ebp)
	incl	-16(%ebp)
	jmp	Lj1932
Lj1929:
	movzbl	-9(%ebp),%eax
	movzwl	TC_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_ROMANVALUES-134(,%eax,2),%eax
	addl	%eax,-8(%ebp)
Lj1932:
	jmp	Lj1933
Lj1917:
	movl	$0,-8(%ebp)
	jmp	Lj1893
Lj1933:
Lj1910:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj1909
	jmp	Lj1911
Lj1911:
	cmpb	$0,-21(%ebp)
	jne	Lj1936
	jmp	Lj1937
Lj1936:
	movl	-8(%ebp),%eax
	negl	%eax
	movl	%eax,-8(%ebp)
Lj1937:
Lj1893:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_TRYROMANTOINT$ANSISTRING$LONGINT$TROMANCONVERSIONSTRICTNESS$$BOOLEAN
STRUTILS_TRYROMANTOINT$ANSISTRING$LONGINT$TROMANCONVERSIONSTRICTNESS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	$0,-32(%ebp)
	movb	$0,-13(%ebp)
	leal	-32(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-32(%ebp)
	leal	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING
	movl	-32(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-32(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1952
	movl	-4(%eax),%eax
Lj1952:
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$2,%eax
	je	Lj1953
	jmp	Lj1954
Lj1953:
	movl	-4(%ebp),%eax
	call	STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1959
	jmp	Lj1960
Lj1959:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	seteb	-13(%ebp)
	jmp	Lj1963
Lj1960:
	movb	$1,-13(%ebp)
Lj1963:
	jmp	Lj1940
Lj1954:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj1966
	jmp	Lj1967
Lj1966:
	jmp	Lj1940
Lj1967:
	movl	$1,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movb	$0,-25(%ebp)
	jmp	Lj1975
	.balign 4,0x90
Lj1974:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	addl	$1000,%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
Lj1975:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj1980
	jmp	Lj1976
Lj1980:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1979
	jmp	Lj1981
Lj1981:
	movl	-20(%ebp),%eax
	cmpl	$4,%eax
	jl	Lj1979
	jmp	Lj1976
Lj1979:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$77,%al
	je	Lj1974
	jmp	Lj1976
Lj1976:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj1984
	jmp	Lj1983
Lj1984:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$68,%al
	je	Lj1982
	jmp	Lj1983
Lj1982:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	addl	$500,%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj1987
Lj1983:
	movl	-20(%ebp),%eax
	incl	%eax
	cmpl	-24(%ebp),%eax
	jle	Lj1990
	jmp	Lj1989
Lj1990:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$67,%al
	je	Lj1988
	jmp	Lj1989
Lj1988:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$77,%al
	je	Lj1991
	jmp	Lj1992
Lj1991:
	addl	$2,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	addl	$900,%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	jmp	Lj1995
Lj1992:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$68,%al
	je	Lj1996
	jmp	Lj1997
Lj1996:
	addl	$2,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	addl	$400,%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
Lj1997:
Lj1995:
Lj1989:
Lj1987:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj2002
	jmp	Lj2001
Lj2002:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$67,%al
	je	Lj2000
	jmp	Lj2001
Lj2000:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	addl	$100,%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj2007
	jmp	Lj2006
Lj2007:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$67,%al
	je	Lj2005
	jmp	Lj2006
Lj2005:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	addl	$100,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
Lj2006:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj2012
	jmp	Lj2011
Lj2012:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$67,%al
	je	Lj2010
	jmp	Lj2011
Lj2010:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	addl	$100,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
Lj2011:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2018
	jmp	Lj2016
Lj2018:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj2017
	jmp	Lj2016
Lj2017:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$67,%al
	je	Lj2015
	jmp	Lj2016
Lj2015:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	addl	$100,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
Lj2016:
Lj2001:
	movl	-20(%ebp),%eax
	incl	%eax
	cmpl	-24(%ebp),%eax
	jle	Lj2023
	jmp	Lj2022
Lj2023:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$88,%al
	je	Lj2021
	jmp	Lj2022
Lj2021:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$67,%al
	je	Lj2024
	jmp	Lj2025
Lj2024:
	addl	$2,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	addl	$90,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
	jmp	Lj2028
Lj2025:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$76,%al
	je	Lj2029
	jmp	Lj2030
Lj2029:
	addl	$2,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	addl	$40,%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
Lj2030:
Lj2028:
Lj2022:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj2035
	jmp	Lj2034
Lj2035:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$76,%al
	je	Lj2033
	jmp	Lj2034
Lj2033:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	addl	$50,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
Lj2034:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj2040
	jmp	Lj2039
Lj2040:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$88,%al
	je	Lj2038
	jmp	Lj2039
Lj2038:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	addl	$10,%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj2045
	jmp	Lj2044
Lj2045:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$88,%al
	je	Lj2043
	jmp	Lj2044
Lj2043:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	addl	$10,%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
Lj2044:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj2050
	jmp	Lj2049
Lj2050:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$88,%al
	je	Lj2048
	jmp	Lj2049
Lj2048:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	addl	$10,%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
Lj2049:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2056
	jmp	Lj2054
Lj2056:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj2055
	jmp	Lj2054
Lj2055:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$88,%al
	je	Lj2053
	jmp	Lj2054
Lj2053:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	addl	$10,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
Lj2054:
Lj2039:
	movl	-20(%ebp),%eax
	incl	%eax
	cmpl	-24(%ebp),%eax
	jle	Lj2061
	jmp	Lj2060
Lj2061:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$73,%al
	je	Lj2059
	jmp	Lj2060
Lj2059:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$88,%al
	je	Lj2062
	jmp	Lj2063
Lj2062:
	movb	$1,-25(%ebp)
	addl	$2,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	addl	$9,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
	jmp	Lj2068
Lj2063:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$86,%al
	je	Lj2069
	jmp	Lj2070
Lj2069:
	movb	$1,-25(%ebp)
	addl	$2,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	addl	$4,%edx
	movl	-8(%ebp),%eax
	movl	%edx,(%eax)
Lj2070:
Lj2068:
Lj2060:
	movb	-25(%ebp),%al
	testb	%al,%al
	je	Lj2078
	jmp	Lj2076
Lj2078:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj2077
	jmp	Lj2076
Lj2077:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$86,%al
	je	Lj2075
	jmp	Lj2076
Lj2075:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	addl	$5,%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
Lj2076:
	movb	-25(%ebp),%al
	testb	%al,%al
	je	Lj2084
	jmp	Lj2082
Lj2084:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj2083
	jmp	Lj2082
Lj2083:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$73,%al
	je	Lj2081
	jmp	Lj2082
Lj2081:
	movb	$1,-25(%ebp)
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	incl	%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj2091
	jmp	Lj2090
Lj2091:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$73,%al
	je	Lj2089
	jmp	Lj2090
Lj2089:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	incl	%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
Lj2090:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj2096
	jmp	Lj2095
Lj2096:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$73,%al
	je	Lj2094
	jmp	Lj2095
Lj2094:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	incl	%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
Lj2095:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2102
	jmp	Lj2100
Lj2102:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj2101
	jmp	Lj2100
Lj2101:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$73,%al
	je	Lj2099
	jmp	Lj2100
Lj2099:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	incl	%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
Lj2100:
Lj2082:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	setgb	-13(%ebp)
Lj1940:
	leal	-32(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-32(%ebp)
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ROMANTOINT$ANSISTRING$TROMANCONVERSIONSTRICTNESS$$LONGINT
STRUTILS_ROMANTOINT$ANSISTRING$TROMANCONVERSIONSTRICTNESS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	STRUTILS_TRYROMANTOINT$ANSISTRING$LONGINT$TROMANCONVERSIONSTRICTNESS$$BOOLEAN
	testb	%al,%al
	je	Lj2109
	jmp	Lj2110
Lj2109:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$11,-20(%ebp)
	leal	-20(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_STRUTILS_SINVALIDROMANNUMERAL+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La2:
	movl	%ebp,%ecx
	movl	$La2,%edx
	call	FPC_RAISEEXCEPTION
Lj2110:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ROMANTOINTDEF$ANSISTRING$LONGINT$TROMANCONVERSIONSTRICTNESS$$LONGINT
STRUTILS_ROMANTOINTDEF$ANSISTRING$LONGINT$TROMANCONVERSIONSTRICTNESS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	STRUTILS_TRYROMANTOINT$ANSISTRING$LONGINT$TROMANCONVERSIONSTRICTNESS$$BOOLEAN
	testb	%al,%al
	je	Lj2129
	jmp	Lj2130
Lj2129:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj2130:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING
STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING:
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
	movl	$13,-12(%ebp)
	incl	-12(%ebp)
	.balign 4,0x90
Lj2145:
	decl	-12(%ebp)
	jmp	Lj2147
	.balign 4,0x90
Lj2146:
	movl	-12(%ebp),%eax
	movl	TC_STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING_ARABICS-4(,%eax,4),%edx
	movl	-4(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-4(%ebp)
	movl	-12(%ebp),%eax
	movl	TC_STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING_ROMANS-4(,%eax,4),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_concat
Lj2147:
	movl	-12(%ebp),%eax
	movl	TC_STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING_ARABICS-4(,%eax,4),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj2146
	jmp	Lj2148
Lj2148:
	cmpl	$1,-12(%ebp)
	jg	Lj2145
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_INTTOBIN$LONGINT$LONGINT$LONGINT$$ANSISTRING
STRUTILS_INTTOBIN$LONGINT$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-32(%ebp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-8(%ebp),%eax
	cmpl	$32,%eax
	jg	Lj2161
	jmp	Lj2162
Lj2161:
	movl	$32,-8(%ebp)
Lj2162:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2165
	jmp	Lj2166
Lj2165:
	leal	-32(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-32(%ebp)
	leal	-32(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	STRUTILS_INTTOBIN$LONGINT$LONGINT$$ANSISTRING
	movl	-32(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-32(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj2157
Lj2166:
	movl	-8(%ebp),%eax
	decl	%eax
	cltd
	idivl	-12(%ebp)
	movl	-8(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	leal	-1(%eax,%edx,1),%eax
	movl	%eax,-20(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj2188
	.balign 4,0x90
Lj2187:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj2190
	jmp	Lj2191
Lj2190:
	movl	-20(%ebp),%eax
	movb	$32,(%eax)
	decl	-20(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj2191:
	movl	-4(%ebp),%eax
	andl	$1,%eax
	addl	$48,%eax
	movl	-20(%ebp),%edx
	movb	%al,(%edx)
	movl	-4(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-4(%ebp)
	decl	-20(%ebp)
	decl	-28(%ebp)
Lj2188:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jae	Lj2187
	jmp	Lj2189
Lj2189:
Lj2157:
	leal	-32(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-32(%ebp)
	movl	-36(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	STRUTILS_INTTOBIN$LONGINT$LONGINT$$ANSISTRING
STRUTILS_INTTOBIN$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj2204
	jmp	Lj2205
Lj2204:
	jmp	Lj2200
Lj2205:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	leal	-1(%eax,%edx,1),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj2215
	.balign 4,0x90
Lj2214:
	movl	-4(%ebp),%eax
	andl	$1,%eax
	addl	$48,%eax
	movl	-16(%ebp),%edx
	movb	%al,(%edx)
	movl	-4(%ebp),%eax
	shrl	$1,%eax
	movl	%eax,-4(%ebp)
	decl	-16(%ebp)
Lj2215:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jae	Lj2221
	jmp	Lj2216
Lj2221:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj2214
	jmp	Lj2216
Lj2216:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	incl	%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2224
	jmp	Lj2225
Lj2224:
	movl	-12(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-8(%ebp),%edx
	movb	$48,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$CHAR
Lj2225:
Lj2200:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_INTTOBIN$INT64$LONGINT$$ANSISTRING
STRUTILS_INTTOBIN$INT64$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj2238
	jmp	Lj2239
Lj2238:
	jmp	Lj2234
Lj2239:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	leal	-1(%eax,%edx,1),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj2249
	.balign 4,0x90
Lj2248:
	movl	8(%ebp),%eax
	andl	$1,%eax
	addl	$48,%eax
	movl	-12(%ebp),%edx
	movb	%al,(%edx)
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	shrdl	$1,%eax,%edx
	shrl	$1,%eax
	movl	%edx,8(%ebp)
	movl	%eax,12(%ebp)
	decl	-12(%ebp)
Lj2249:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jae	Lj2255
	jmp	Lj2250
Lj2255:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	ja	Lj2248
	jb	Lj2250
	cmpl	$0,%eax
	ja	Lj2248
	jmp	Lj2250
Lj2250:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	incl	%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2258
	jmp	Lj2259
Lj2258:
	movl	-8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-4(%ebp),%edx
	movb	$48,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$CHAR
Lj2259:
Lj2234:
	movl	-20(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	STRUTILS_FINDPART$ANSISTRING$ANSISTRING$$LONGINT
STRUTILS_FINDPART$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%edx
	movb	$63,%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj2278
	jmp	Lj2279
Lj2278:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
	movl	%eax,-12(%ebp)
	jmp	Lj2286
Lj2279:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2289
	movl	-4(%eax),%eax
Lj2289:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj2290
	movl	-4(%edx),%edx
Lj2290:
	subl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj2292
	decl	-16(%ebp)
	.balign 4,0x90
Lj2293:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2297
	movl	-4(%eax),%eax
Lj2297:
	movl	$1,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj2295
	decl	-20(%ebp)
	.balign 4,0x90
Lj2296:
	incl	-20(%ebp)
	movl	-8(%ebp),%edi
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%ecx
	addl	%ecx,%edx
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%esi
	movb	-1(%edi,%edx,1),%dl
	cmpb	-1(%ecx,%esi,1),%dl
	je	Lj2298
	jmp	Lj2300
Lj2300:
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	movb	-1(%ecx,%edx,1),%dl
	cmpb	$63,%dl
	je	Lj2298
	jmp	Lj2299
Lj2298:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj2303
	movl	-4(%edx),%edx
Lj2303:
	cmpl	-20(%ebp),%edx
	je	Lj2301
	jmp	Lj2302
Lj2301:
	movl	-16(%ebp),%edx
	incl	%edx
	movl	%edx,-12(%ebp)
	jmp	Lj2268
Lj2302:
	jmp	Lj2306
Lj2299:
	jmp	Lj2295
Lj2306:
	cmpl	-20(%ebp),%eax
	jg	Lj2296
Lj2295:
	cmpl	-16(%ebp),%ebx
	jg	Lj2293
Lj2292:
Lj2286:
Lj2268:
	movl	-12(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_ISWILD$ANSISTRING$ANSISTRING$BOOLEAN$$BOOLEAN
STRUTILS_ISWILD$ANSISTRING$ANSISTRING$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$76,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	$0,-44(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	je	Lj2311
	jmp	Lj2312
Lj2311:
	movb	$1,-13(%ebp)
	jmp	Lj2307
Lj2312:
	.balign 4,0x90
Lj2319:
	movl	-8(%ebp),%edx
	movl	$_$STRUTILS$_Ld18,%eax
	call	SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2328
	jmp	Lj2329
Lj2328:
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	pushl	%eax
	movl	-28(%ebp),%ecx
	decl	%ecx
	movl	-8(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-60(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$_$STRUTILS$_Ld19,%eax
	movl	%eax,-52(%ebp)
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	pushl	%eax
	movl	-28(%ebp),%edx
	addl	$2,%edx
	movl	-8(%ebp),%eax
	movl	$2147483647,%ecx
	call	fpc_ansistr_copy
	movl	-64(%ebp),%eax
	movl	%eax,-48(%ebp)
	leal	-56(%ebp),%edx
	leal	-8(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
Lj2329:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj2321
	jmp	Lj2319
Lj2321:
	movl	-8(%ebp),%eax
	movl	$_$STRUTILS$_Ld19,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	je	Lj2352
	jmp	Lj2353
Lj2352:
	movb	$1,-13(%ebp)
	jmp	Lj2307
Lj2353:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2362
	movl	-4(%eax),%eax
Lj2362:
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2365
	movl	-4(%eax),%eax
Lj2365:
	movl	%eax,-40(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj2366
	jmp	Lj2367
Lj2366:
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+32,%ecx
	call	*%ecx
	movl	-64(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-64(%ebp),%eax
	movl	%eax,-4(%ebp)
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+32,%ecx
	call	*%ecx
	movl	-64(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-8(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-64(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj2367:
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj2380
	jmp	Lj2382
Lj2382:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj2380
	jmp	Lj2381
Lj2380:
	movb	$0,-13(%ebp)
	jmp	Lj2307
Lj2381:
	movl	$1,-24(%ebp)
	movl	$1,-20(%ebp)
	movb	$1,-13(%ebp)
	.balign 4,0x90
Lj2391:
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%ebx
	movb	-1(%eax,%edx,1),%al
	cmpb	-1(%ecx,%ebx,1),%al
	je	Lj2394
	jmp	Lj2395
Lj2394:
	incl	-20(%ebp)
	incl	-24(%ebp)
	jmp	Lj2392
Lj2395:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$63,%al
	je	Lj2396
	jmp	Lj2397
Lj2396:
	incl	-20(%ebp)
	incl	-24(%ebp)
	jmp	Lj2392
Lj2397:
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$42,%al
	je	Lj2398
	jmp	Lj2399
Lj2398:
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	pushl	%eax
	movl	-20(%ebp),%edx
	incl	%edx
	movl	-40(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_copy
	movl	-64(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-44(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-64(%ebp),%eax
	movl	%eax,-44(%ebp)
	leal	-44(%ebp),%edx
	movl	%ebp,%eax
	call	STRUTILS_ISWILD$crc615EB9FF_SEARCHNEXT$ANSISTRING$$LONGINT
	movl	%eax,-28(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj2418
	movl	-4(%eax),%eax
Lj2418:
	movl	%eax,-32(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj2419
	jmp	Lj2420
Lj2419:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj2421
	jmp	Lj2422
Lj2421:
	jmp	Lj2307
Lj2422:
	movl	-32(%ebp),%eax
	decl	%eax
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj2424
	decl	-28(%ebp)
	.balign 4,0x90
Lj2425:
	incl	-28(%ebp)
	movl	-44(%ebp),%esi
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%ecx
	subl	%ecx,%edx
	movl	-4(%ebp),%ecx
	movl	-36(%ebp),%ebx
	movl	-28(%ebp),%edi
	subl	%edi,%ebx
	movb	-1(%esi,%edx,1),%dl
	cmpb	-1(%ecx,%ebx,1),%dl
	jne	Lj2428
	jmp	Lj2427
Lj2428:
	movl	-44(%ebp),%ebx
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%ecx
	subl	%ecx,%edx
	movb	-1(%ebx,%edx,1),%dl
	cmpb	$63,%dl
	jne	Lj2426
	jmp	Lj2427
Lj2426:
	movb	$0,-13(%ebp)
	jmp	Lj2307
Lj2427:
	cmpl	-28(%ebp),%eax
	jg	Lj2425
Lj2424:
	jmp	Lj2307
Lj2420:
	movl	-32(%ebp),%eax
	incl	%eax
	addl	%eax,-20(%ebp)
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	pushl	%eax
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2147483647,%ecx
	call	fpc_ansistr_copy
	movl	-64(%ebp),%edx
	movl	-44(%ebp),%eax
	call	STRUTILS_FINDPART$ANSISTRING$ANSISTRING$$LONGINT
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj2445
	jmp	Lj2446
Lj2445:
	movb	$0,-13(%ebp)
	jmp	Lj2307
Lj2446:
	movl	-28(%ebp),%edx
	movl	-32(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
	jmp	Lj2392
Lj2399:
	movb	$0,-13(%ebp)
	jmp	Lj2307
Lj2392:
	movl	-24(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jg	Lj2393
	jmp	Lj2453
Lj2453:
	movl	-20(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jg	Lj2393
	jmp	Lj2391
Lj2393:
	movl	-24(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jle	Lj2454
	jmp	Lj2455
Lj2454:
	movb	$0,-13(%ebp)
Lj2455:
	movl	-20(%ebp),%eax
	cmpl	-40(%ebp),%eax
	jle	Lj2460
	jmp	Lj2459
Lj2460:
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$42,%al
	jne	Lj2458
	jmp	Lj2459
Lj2458:
	movb	$0,-13(%ebp)
Lj2459:
Lj2307:
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	leal	-44(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-44(%ebp)
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-8(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movb	-13(%ebp),%al
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
STRUTILS_ISWILD$crc615EB9FF_SEARCHNEXT$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movb	$42,%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2475
	jmp	Lj2476
Lj2475:
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-16(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-16(%ebp),%eax
	movl	%eax,(%ebx)
Lj2476:
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_XORSTRING$SHORTSTRING$SHORTSTRING$$SHORTSTRING
STRUTILS_XORSTRING$SHORTSTRING$SHORTSTRING$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$0,%eax
	jg	Lj2495
	jmp	Lj2496
Lj2495:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%ecx
	jl	Lj2498
	decl	-16(%ebp)
	.balign 4,0x90
Lj2499:
	incl	-16(%ebp)
	movl	-4(%ebp),%esi
	movl	-16(%ebp),%eax
	decl	%eax
	movl	-4(%ebp),%edx
	movzbl	(%edx),%ebx
	cltd
	idivl	%ebx
	incl	%edx
	movzbl	%dl,%edx
	movl	-8(%ebp),%edi
	movzbl	-16(%ebp),%ebx
	movb	(%esi,%edx,1),%al
	movb	(%edi,%ebx,1),%dl
	xorb	%dl,%al
	movl	-12(%ebp),%ebx
	movzbl	-16(%ebp),%edx
	movb	%al,(%ebx,%edx,1)
	cmpl	-16(%ebp),%ecx
	jg	Lj2499
Lj2498:
Lj2496:
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	movl	-20(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_XORENCODE$ANSISTRING$ANSISTRING$$ANSISTRING
STRUTILS_XORENCODE$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$44,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-24(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-8(%ebp),%ebx
	testl	%ebx,%ebx
	je	Lj2509
	movl	-4(%ebx),%ebx
Lj2509:
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj2507
	decl	-16(%ebp)
	.balign 4,0x90
Lj2508:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2512
	movl	-4(%eax),%eax
Lj2512:
	cmpl	$0,%eax
	jg	Lj2510
	jmp	Lj2511
Lj2510:
	movl	-4(%ebp),%esi
	movl	-16(%ebp),%eax
	decl	%eax
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj2515
	movl	-4(%ecx),%ecx
Lj2515:
	cltd
	idivl	%ecx
	incl	%edx
	movl	-8(%ebp),%edi
	movl	-16(%ebp),%ecx
	movb	-1(%esi,%edx,1),%al
	movb	-1(%edi,%ecx,1),%dl
	xorb	%dl,%al
	movb	%al,-17(%ebp)
	jmp	Lj2516
Lj2511:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	movb	%al,-17(%ebp)
Lj2516:
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-24(%ebp)
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-28(%ebp)
	leal	-32(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-32(%ebp)
	leal	-32(%ebp),%ecx
	movzbl	-17(%ebp),%eax
	movl	$2,%edx
	call	SYSUTILS_INTTOHEX$LONGINT$LONGINT$$ANSISTRING
	movl	-32(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-32(%ebp),%eax
	movl	%eax,-28(%ebp)
	leal	-24(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+36,%ecx
	call	*%ecx
	movl	-24(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_concat
	cmpl	-16(%ebp),%ebx
	jg	Lj2508
Lj2507:
	leal	-32(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-32(%ebp)
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-28(%ebp)
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-24(%ebp)
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_XORDECODE$ANSISTRING$ANSISTRING$$ANSISTRING
STRUTILS_XORDECODE$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-24(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-8(%ebp),%ebx
	testl	%ebx,%ebx
	je	Lj2544
	movl	-4(%ebx),%ebx
Lj2544:
	movl	%ebx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%ebx
	sarl	$1,%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj2542
	decl	-16(%ebp)
	.balign 4,0x90
Lj2543:
	incl	-16(%ebp)
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-24(%ebp)
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-28(%ebp)
	leal	-28(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%edx
	shll	$1,%edx
	incl	%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_copy
	movl	-28(%ebp),%ecx
	leal	-24(%ebp),%eax
	movl	$_$STRUTILS$_Ld1,%edx
	call	fpc_ansistr_concat
	movl	-24(%ebp),%eax
	movl	$32,%edx
	call	SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT
	movb	%al,-17(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2567
	movl	-4(%eax),%eax
Lj2567:
	cmpl	$0,%eax
	jg	Lj2565
	jmp	Lj2566
Lj2565:
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%esi
	testl	%esi,%esi
	je	Lj2570
	movl	-4(%esi),%esi
Lj2570:
	movl	-16(%ebp),%eax
	cltd
	idivl	%esi
	incl	%edx
	movb	-1(%ecx,%edx,1),%dl
	movb	-17(%ebp),%al
	xorb	%al,%dl
	movb	%dl,-17(%ebp)
Lj2566:
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-28(%ebp)
	leal	-28(%ebp),%edx
	movb	-17(%ebp),%al
	call	fpc_char_to_ansistr
	movl	-28(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_concat
	cmpl	-16(%ebp),%ebx
	jg	Lj2543
Lj2542:
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-28(%ebp)
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-24(%ebp)
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_GETCMDLINEARG$ANSISTRING$TSYSCHARSET$$ANSISTRING
STRUTILS_GETCMDLINEARG$ANSISTRING$TSYSCHARSET$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	movl	%edi,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%esi
	leal	-52(%ebp),%edi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	$0,-20(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	movl	$1,-16(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj2588
	.balign 4,0x90
Lj2587:
	leal	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	OBJPAS_PARAMSTR$LONGINT$$ANSISTRING
	movl	$_$STRUTILS$_Ld20,%edx
	leal	-52(%ebp),%eax
	movl	$32,%ecx
	call	fpc_varset_comp_sets
	testb	%al,%al
	jne	Lj2594
	jmp	Lj2596
Lj2596:
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	btl	%eax,-52(%ebp)
	jc	Lj2604
	jmp	Lj2595
Lj2604:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj2605
	movl	-4(%eax),%eax
Lj2605:
	cmpl	$1,%eax
	jg	Lj2603
	jmp	Lj2595
Lj2603:
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	pushl	%eax
	movl	-20(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj2612
	movl	-4(%ecx),%ecx
Lj2612:
	decl	%ecx
	movl	-20(%ebp),%eax
	movl	$2,%edx
	call	fpc_ansistr_copy
	movl	-60(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-60(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-4(%ebp),%edx
	movl	-56(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+44,%ecx
	call	*%ecx
	testl	%eax,%eax
	je	Lj2594
	jmp	Lj2595
Lj2594:
	incl	-16(%ebp)
	call	SYSTEM_PARAMCOUNT$$LONGINT
	cmpl	-16(%ebp),%eax
	jge	Lj2623
	jmp	Lj2624
Lj2623:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	call	OBJPAS_PARAMSTR$LONGINT$$ANSISTRING
Lj2624:
Lj2595:
	incl	-16(%ebp)
Lj2588:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj2629
	jmp	Lj2589
Lj2629:
	call	SYSTEM_PARAMCOUNT$$LONGINT
	cmpl	-16(%ebp),%eax
	jge	Lj2587
	jmp	Lj2589
Lj2589:
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	movl	-64(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_RPOSEX$CHAR$ANSISTRING$LONGWORD$$LONGINT
STRUTILS_RPOSEX$CHAR$ANSISTRING$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2640
	movl	-4(%eax),%eax
Lj2640:
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2643
	jmp	Lj2642
Lj2643:
	movl	-12(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jbe	Lj2641
	jmp	Lj2642
Lj2641:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leal	-1(%edx,%eax,1),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj2649
	.balign 4,0x90
Lj2648:
	decl	-24(%ebp)
Lj2649:
	movl	-28(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jbe	Lj2651
	jmp	Lj2650
Lj2651:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	-4(%ebp),%al
	jne	Lj2648
	jmp	Lj2650
Lj2650:
	movl	-24(%ebp),%edx
	movl	-28(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	%edx,-16(%ebp)
	jmp	Lj2654
Lj2642:
	movl	$0,-16(%ebp)
Lj2654:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_RPOS$CHAR$ANSISTRING$$LONGINT
STRUTILS_RPOS$CHAR$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2661
	movl	-4(%eax),%eax
Lj2661:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2662
	jmp	Lj2663
Lj2662:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	leal	-1(%edx,%eax,1),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj2669
	.balign 4,0x90
Lj2668:
	decl	-20(%ebp)
Lj2669:
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jbe	Lj2671
	jmp	Lj2670
Lj2671:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	cmpb	-4(%ebp),%al
	jne	Lj2668
	jmp	Lj2670
Lj2670:
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	%edx,-16(%ebp)
Lj2663:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_RPOS$ANSISTRING$ANSISTRING$$LONGINT
STRUTILS_RPOS$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2682
	movl	-4(%eax),%eax
Lj2682:
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2685
	movl	-4(%eax),%eax
Lj2685:
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2689
	jmp	Lj2687
Lj2689:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2688
	jmp	Lj2687
Lj2688:
	movl	-20(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj2686
	jmp	Lj2687
Lj2686:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	leal	-1(%edx,%eax,1),%eax
	movl	%eax,-28(%ebp)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	decl	%eax
	leal	-1(%edx,%eax,1),%eax
	movl	%eax,-32(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	movb	%al,-21(%ebp)
	jmp	Lj2697
	.balign 4,0x90
Lj2696:
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	cmpb	-21(%ebp),%al
	je	Lj2701
	jmp	Lj2700
Lj2701:
	movl	-28(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj2706
	movl	-4(%ecx),%ecx
Lj2706:
	movl	-4(%ebp),%eax
	call	SYSTEM_COMPARECHAR$formal$formal$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj2699
	jmp	Lj2700
Lj2699:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	-20(%ebp),%ecx
	subl	%ecx,%edx
	incl	%edx
	subl	%eax,%edx
	movl	%edx,%eax
	incl	%eax
	movl	%eax,-12(%ebp)
	jmp	Lj2676
Lj2700:
	decl	-28(%ebp)
Lj2697:
	movl	-28(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jae	Lj2696
	jmp	Lj2698
Lj2698:
Lj2687:
Lj2676:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_RPOSEX$ANSISTRING$ANSISTRING$LONGWORD$$LONGINT
STRUTILS_RPOSEX$ANSISTRING$ANSISTRING$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2717
	movl	-4(%eax),%eax
Lj2717:
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2720
	movl	-4(%eax),%eax
Lj2720:
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj2721
	jmp	Lj2722
Lj2721:
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj2722:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2728
	jmp	Lj2726
Lj2728:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2727
	jmp	Lj2726
Lj2727:
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj2725
	jmp	Lj2726
Lj2725:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	-1(%edx,%eax,1),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	decl	%eax
	leal	-1(%edx,%eax,1),%eax
	movl	%eax,-36(%ebp)
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	movb	%al,-25(%ebp)
	jmp	Lj2736
	.balign 4,0x90
Lj2735:
	movl	-32(%ebp),%eax
	movb	(%eax),%al
	cmpb	-25(%ebp),%al
	je	Lj2740
	jmp	Lj2739
Lj2740:
	movl	-32(%ebp),%edx
	movl	-24(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj2745
	movl	-4(%ecx),%ecx
Lj2745:
	movl	-4(%ebp),%eax
	call	SYSTEM_COMPARECHAR$formal$formal$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj2738
	jmp	Lj2739
Lj2738:
	movl	-8(%ebp),%eax
	movl	-32(%ebp),%edx
	movl	-24(%ebp),%ecx
	subl	%ecx,%edx
	incl	%edx
	subl	%eax,%edx
	movl	%edx,%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	jmp	Lj2711
Lj2739:
	decl	-32(%ebp)
Lj2736:
	movl	-32(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jae	Lj2735
	jmp	Lj2737
Lj2737:
Lj2726:
Lj2711:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_BINTOHEX$PCHAR$PCHAR$LONGINT
STRUTILS_BINTOHEX$PCHAR$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj2753
	decl	-16(%ebp)
	.balign 4,0x90
Lj2754:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movzbl	(%edx),%edx
	shrl	$4,%edx
	incl	%edx
	movzbl	%dl,%edx
	movl	-8(%ebp),%ecx
	movb	_$STRUTILS$_Ld21(,%edx,1),%dl
	movb	%dl,(%ecx)
	movl	-4(%ebp),%edx
	movb	(%edx),%dl
	andb	$15,%dl
	movzbl	%dl,%edx
	incl	%edx
	movzbl	%dl,%edx
	movl	-8(%ebp),%ecx
	movb	_$STRUTILS$_Ld21(,%edx,1),%dl
	movb	%dl,1(%ecx)
	addl	$2,-8(%ebp)
	incl	-4(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj2754
Lj2753:
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_HEXTOBIN$PCHAR$PCHAR$LONGINT$$LONGINT
STRUTILS_HEXTOBIN$PCHAR$PCHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj2764
	.balign 4,0x90
Lj2763:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$65,%eax
	cmpl	$6,%eax
	jb	Lj2768
	subl	$32,%eax
	cmpl	$6,%eax
	jb	Lj2768
Lj2768:
	jc	Lj2766
	jmp	Lj2767
Lj2766:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	addl	$9,%eax
	andl	$15,%eax
	movl	%eax,-28(%ebp)
	jmp	Lj2771
Lj2767:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj2774
Lj2774:
	jc	Lj2772
	jmp	Lj2773
Lj2772:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	andb	$15,%al
	movzbl	%al,%eax
	movl	%eax,-28(%ebp)
	jmp	Lj2777
Lj2773:
	jmp	Lj2765
Lj2777:
Lj2771:
	incl	-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$65,%eax
	cmpl	$6,%eax
	jb	Lj2780
	subl	$32,%eax
	cmpl	$6,%eax
	jb	Lj2780
Lj2780:
	jc	Lj2778
	jmp	Lj2779
Lj2778:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	addl	$9,%eax
	andl	$15,%eax
	movl	%eax,-32(%ebp)
	jmp	Lj2783
Lj2779:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj2786
Lj2786:
	jc	Lj2784
	jmp	Lj2785
Lj2784:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	andb	$15,%al
	movzbl	%al,%eax
	movl	%eax,-32(%ebp)
	jmp	Lj2789
Lj2785:
	jmp	Lj2765
Lj2789:
Lj2783:
	movl	-28(%ebp),%eax
	shll	$4,%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-24(%ebp)
	incl	-4(%ebp)
	movl	-8(%ebp),%eax
	movb	-24(%ebp),%dl
	movb	%dl,(%eax)
	incl	-8(%ebp)
	decl	-20(%ebp)
Lj2764:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2763
	jmp	Lj2765
Lj2765:
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_POSSETEX$TSYSCHARSET$ANSISTRING$LONGINT$$LONGINT
STRUTILS_POSSETEX$TSYSCHARSET$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2798
	jmp	Lj2799
Lj2798:
	movl	$0,-24(%ebp)
	jmp	Lj2802
Lj2799:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2805
	movl	-4(%eax),%eax
Lj2805:
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj2808
	jmp	Lj2809
Lj2808:
	movl	$0,-16(%ebp)
	jmp	Lj2796
Lj2809:
	jmp	Lj2813
	.balign 4,0x90
Lj2812:
	incl	-24(%ebp)
Lj2813:
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj2815
	jmp	Lj2814
Lj2815:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%ecx
	movzbl	-1(%eax,%edx,1),%eax
	btl	%eax,(%ecx)
	jnc	Lj2812
	jmp	Lj2814
Lj2814:
	movl	-24(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj2816
	jmp	Lj2817
Lj2816:
	movl	$0,-24(%ebp)
Lj2817:
Lj2802:
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj2796:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_POSSET$TSYSCHARSET$ANSISTRING$$LONGINT
STRUTILS_POSSET$TSYSCHARSET$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	STRUTILS_POSSETEX$TSYSCHARSET$ANSISTRING$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_POSSETEX$ANSISTRING$ANSISTRING$LONGINT$$LONGINT
STRUTILS_POSSETEX$ANSISTRING$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-48(%ebp),%edi
	movl	$_$STRUTILS$_Ld20,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2838
	movl	-4(%eax),%eax
Lj2838:
	cmpl	$0,%eax
	jg	Lj2836
	jmp	Lj2837
Lj2836:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2842
	movl	-4(%eax),%eax
Lj2842:
	movl	$1,-52(%ebp)
	cmpl	-52(%ebp),%eax
	jl	Lj2840
	decl	-52(%ebp)
	.balign 4,0x90
Lj2841:
	incl	-52(%ebp)
	movl	-4(%ebp),%ecx
	movl	-52(%ebp),%edx
	movzbl	-1(%ecx,%edx,1),%edx
	btsl	%edx,-48(%ebp)
	cmpl	-52(%ebp),%eax
	jg	Lj2841
Lj2840:
Lj2837:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	leal	-48(%ebp),%eax
	call	STRUTILS_POSSETEX$TSYSCHARSET$ANSISTRING$LONGINT$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_POSSET$ANSISTRING$ANSISTRING$$LONGINT
STRUTILS_POSSET$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-44(%ebp),%edi
	movl	$_$STRUTILS$_Ld20,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2857
	movl	-4(%eax),%eax
Lj2857:
	cmpl	$0,%eax
	jg	Lj2855
	jmp	Lj2856
Lj2855:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2861
	movl	-4(%eax),%eax
Lj2861:
	movl	$1,-48(%ebp)
	cmpl	-48(%ebp),%eax
	jl	Lj2859
	decl	-48(%ebp)
	.balign 4,0x90
Lj2860:
	incl	-48(%ebp)
	movl	-4(%ebp),%ecx
	movl	-48(%ebp),%edx
	movzbl	-1(%ecx,%edx,1),%edx
	btsl	%edx,-44(%ebp)
	cmpl	-48(%ebp),%eax
	jg	Lj2860
Lj2859:
Lj2856:
	movl	-8(%ebp),%edx
	leal	-44(%ebp),%eax
	movl	$1,%ecx
	call	STRUTILS_POSSETEX$TSYSCHARSET$ANSISTRING$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_REMOVELEADINGCHARS$ANSISTRING$TSYSCHARSET
STRUTILS_REMOVELEADINGCHARS$ANSISTRING$TSYSCHARSET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj2874
	movl	-4(%eax),%eax
Lj2874:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2875
	jmp	Lj2876
Lj2875:
	movl	$1,-16(%ebp)
	jmp	Lj2880
	.balign 4,0x90
Lj2879:
	incl	-16(%ebp)
Lj2880:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jle	Lj2882
	jmp	Lj2881
Lj2882:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ecx
	movzbl	-1(%eax,%edx,1),%eax
	btl	%eax,(%ecx)
	jc	Lj2879
	jmp	Lj2881
Lj2881:
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj2883
	jmp	Lj2884
Lj2883:
	movl	-16(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj2884:
Lj2876:
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_TRIMLEFTSET$ANSISTRING$TSYSCHARSET$$ANSISTRING
STRUTILS_TRIMLEFTSET$ANSISTRING$TSYSCHARSET$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	STRUTILS_REMOVELEADINGCHARS$ANSISTRING$TSYSCHARSET
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_REMOVETRAILINGCHARS$ANSISTRING$TSYSCHARSET
STRUTILS_REMOVETRAILINGCHARS$ANSISTRING$TSYSCHARSET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj2903
	movl	-4(%eax),%eax
Lj2903:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2904
	jmp	Lj2905
Lj2904:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj2909
	.balign 4,0x90
Lj2908:
	decl	-16(%ebp)
Lj2909:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2911
	jmp	Lj2910
Lj2911:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ecx
	movzbl	-1(%eax,%edx,1),%eax
	btl	%eax,(%ecx)
	jc	Lj2908
	jmp	Lj2910
Lj2910:
	movl	-16(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jne	Lj2912
	jmp	Lj2913
Lj2912:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
Lj2913:
Lj2905:
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_TRIMRIGHTSET$ANSISTRING$TSYSCHARSET$$ANSISTRING
STRUTILS_TRIMRIGHTSET$ANSISTRING$TSYSCHARSET$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	STRUTILS_REMOVETRAILINGCHARS$ANSISTRING$TSYSCHARSET
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_REMOVEPADCHARS$ANSISTRING$TSYSCHARSET
STRUTILS_REMOVEPADCHARS$ANSISTRING$TSYSCHARSET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj2930
	movl	-4(%eax),%eax
Lj2930:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2931
	jmp	Lj2932
Lj2931:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj2936
	.balign 4,0x90
Lj2935:
	decl	-16(%ebp)
Lj2936:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2938
	jmp	Lj2937
Lj2938:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-8(%ebp),%ecx
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,(%ecx)
	jc	Lj2935
	jmp	Lj2937
Lj2937:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj2939
	jmp	Lj2940
Lj2939:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj2926
Lj2940:
	movl	$1,-20(%ebp)
	jmp	Lj2946
	.balign 4,0x90
Lj2945:
	incl	-20(%ebp)
Lj2946:
	movl	-20(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jle	Lj2948
	jmp	Lj2947
Lj2948:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	movl	-8(%ebp),%ecx
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,(%ecx)
	jc	Lj2945
	jmp	Lj2947
Lj2947:
	movl	-20(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj2949
	jmp	Lj2950
Lj2949:
	movl	-4(%ebp),%eax
	call	fpc_ansistr_unique
	movl	%eax,%edx
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%ebx
	movl	-20(%ebp),%eax
	leal	-1(%ebx,%eax,1),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
	jmp	Lj2963
Lj2950:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_setlength
Lj2963:
Lj2932:
Lj2926:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	STRUTILS_TRIMSET$ANSISTRING$TSYSCHARSET$$ANSISTRING
STRUTILS_TRIMSET$ANSISTRING$TSYSCHARSET$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	STRUTILS_REMOVEPADCHARS$ANSISTRING$TSYSCHARSET
	movl	-16(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	THREADVARLIST_STRUTILS
THREADVARLIST_STRUTILS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$STRUTILS$_Ld5
_$STRUTILS$_Ld5:
	.ascii	"I\000"

.data
	.balign 4
	.short	0,1
	.long	-1,2
.globl	_$STRUTILS$_Ld6
_$STRUTILS$_Ld6:
	.ascii	"IV\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$STRUTILS$_Ld7
_$STRUTILS$_Ld7:
	.ascii	"V\000"

.data
	.balign 4
	.short	0,1
	.long	-1,2
.globl	_$STRUTILS$_Ld8
_$STRUTILS$_Ld8:
	.ascii	"IX\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$STRUTILS$_Ld9
_$STRUTILS$_Ld9:
	.ascii	"X\000"

.data
	.balign 4
	.short	0,1
	.long	-1,2
.globl	_$STRUTILS$_Ld10
_$STRUTILS$_Ld10:
	.ascii	"XL\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$STRUTILS$_Ld11
_$STRUTILS$_Ld11:
	.ascii	"L\000"

.data
	.balign 4
	.short	0,1
	.long	-1,2
.globl	_$STRUTILS$_Ld12
_$STRUTILS$_Ld12:
	.ascii	"XC\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$STRUTILS$_Ld13
_$STRUTILS$_Ld13:
	.ascii	"C\000"

.data
	.balign 4
	.short	0,1
	.long	-1,2
.globl	_$STRUTILS$_Ld14
_$STRUTILS$_Ld14:
	.ascii	"CD\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$STRUTILS$_Ld15
_$STRUTILS$_Ld15:
	.ascii	"D\000"

.data
	.balign 4
	.short	0,1
	.long	-1,2
.globl	_$STRUTILS$_Ld16
_$STRUTILS$_Ld16:
	.ascii	"CM\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$STRUTILS$_Ld17
_$STRUTILS$_Ld17:
	.ascii	"M\000"

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$STRUTILS$_Ld22
_$STRUTILS$_Ld22:
	.ascii	"STRUTILS\000"

.data
	.balign 4
	.short	0,1
	.long	-1,48
.globl	_$STRUTILS$_Ld23
_$STRUTILS$_Ld23:
	.ascii	"Amount of search and replace strings don't match\000"
	.balign 4
	.short	0,1
	.long	-1,26
.globl	_$STRUTILS$_Ld24
_$STRUTILS$_Ld24:
	.ascii	"strutils.serramountstrings\000"

.data
	.balign 4
	.short	0,1
	.long	-1,31
.globl	_$STRUTILS$_Ld25
_$STRUTILS$_Ld25:
	.ascii	"%s is not a valid Roman numeral\000"
	.balign 4
	.short	0,1
	.long	-1,29
.globl	_$STRUTILS$_Ld26
_$STRUTILS$_Ld26:
	.ascii	"strutils.sinvalidromannumeral\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 4
.globl	TC_STRUTILS_WORDDELIMITERS
TC_STRUTILS_WORDDELIMITERS:
	.byte	255,255,255,255,255,255,0,252,1,0,0,248,1,0,0,248,255,255,255,255,255,255,255,255,255,255,255,255,255
	.byte	255,255,255

.data
	.balign 4
.globl	TC_STRUTILS_ANSIRESEMBLESPROC
TC_STRUTILS_ANSIRESEMBLESPROC:
	.long	STRUTILS_SOUNDEXPROC$ANSISTRING$ANSISTRING$$BOOLEAN

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$STRUTILS$_Ld1
_$STRUTILS$_Ld1:
	.ascii	"$\000"

.data
TC_STRUTILS_SSCORE:
	.byte	48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48
	.byte	48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,49,50,51,48,49,50,105
	.byte	48,50,50,52,53,53,48,49,50,54,50,51,48,49,105,50,105,50,48,48,48,48,48,48,48,49,50,51,48,49,50,105,48,50
	.byte	50,52,53,53,48,49,50,54,50,51,48,49,105,50,105,50,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48
	.byte	48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48
	.byte	48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48
	.byte	48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48
	.byte	48,48,48,48,48,48

.data
	.balign 4
.globl	_$STRUTILS$_Ld2
_$STRUTILS$_Ld2:
	.byte	0,0,0,0,0,0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$STRUTILS$_Ld3
_$STRUTILS$_Ld3:
	.ascii	",\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$STRUTILS$_Ld4
_$STRUTILS$_Ld4:
	.ascii	"0\000"

.data
	.balign 2
TC_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_ROMANVALUES:
	.short	100,500,0,0,0,0,1,0,0,50,1000,0,0,0,0,0,0,0,0,5,0,10

.data
	.balign 4
TC_STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING_ARABICS:
	.long	1,4,5,9,10,40,50,90,100,400,500,900,1000

.data
	.balign 4
TC_STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING_ROMANS:
	.long	_$STRUTILS$_Ld5
	.long	_$STRUTILS$_Ld6
	.long	_$STRUTILS$_Ld7
	.long	_$STRUTILS$_Ld8
	.long	_$STRUTILS$_Ld9
	.long	_$STRUTILS$_Ld10
	.long	_$STRUTILS$_Ld11
	.long	_$STRUTILS$_Ld12
	.long	_$STRUTILS$_Ld13
	.long	_$STRUTILS$_Ld14
	.long	_$STRUTILS$_Ld15
	.long	_$STRUTILS$_Ld16
	.long	_$STRUTILS$_Ld17

.data
	.balign 4
	.short	0,1
	.long	-1,2
.globl	_$STRUTILS$_Ld18
_$STRUTILS$_Ld18:
	.ascii	"**\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$STRUTILS$_Ld19
_$STRUTILS$_Ld19:
	.ascii	"*\000"

.data
	.balign 4
.globl	_$STRUTILS$_Ld20
_$STRUTILS$_Ld20:
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.balign 4
.globl	_$STRUTILS$_Ld21
_$STRUTILS$_Ld21:
	.ascii	"\0200123456789ABCDEF\000"
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
.globl	INIT_STRUTILS_DEF6
INIT_STRUTILS_DEF6:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_STRUTILS_DEF8
INIT_STRUTILS_DEF8:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_STRUTILS_DEF14
INIT_STRUTILS_DEF14:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_STRUTILS_DEF16
INIT_STRUTILS_DEF16:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_STRUTILS_DEF22
INIT_STRUTILS_DEF22:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_STRUTILS_TSTRINGSEARCHOPTION
INIT_STRUTILS_TSTRINGSEARCHOPTION:
	.byte	3,19
	.ascii	"TStringSearchOption"
	.byte	5
	.long	0,2,0
	.byte	6
	.ascii	"soDown"
	.byte	11
	.ascii	"soMatchCase"
	.byte	11
	.ascii	"soWholeWord"
	.byte	8
	.ascii	"strutils"
	.byte	0

.data
	.balign 4
.globl	RTTI_STRUTILS_TSTRINGSEARCHOPTION
RTTI_STRUTILS_TSTRINGSEARCHOPTION:
	.byte	3,19
	.ascii	"TStringSearchOption"
	.byte	5
	.long	0,2,0
	.byte	6
	.ascii	"soDown"
	.byte	11
	.ascii	"soMatchCase"
	.byte	11
	.ascii	"soWholeWord"
	.byte	8
	.ascii	"strutils"
	.byte	0

.data
	.balign 4
.globl	RTTI_STRUTILS_TSTRINGSEARCHOPTION_s2o
RTTI_STRUTILS_TSTRINGSEARCHOPTION_s2o:
	.long	3,0
	.long	RTTI_STRUTILS_TSTRINGSEARCHOPTION+34
	.long	1
	.long	RTTI_STRUTILS_TSTRINGSEARCHOPTION+41
	.long	2
	.long	RTTI_STRUTILS_TSTRINGSEARCHOPTION+53

.data
	.balign 4
.globl	RTTI_STRUTILS_TSTRINGSEARCHOPTION_o2s
RTTI_STRUTILS_TSTRINGSEARCHOPTION_o2s:
	.long	0
	.long	RTTI_STRUTILS_TSTRINGSEARCHOPTION+34
	.long	RTTI_STRUTILS_TSTRINGSEARCHOPTION+41
	.long	RTTI_STRUTILS_TSTRINGSEARCHOPTION+53

.data
	.balign 4
.globl	INIT_STRUTILS_TSTRINGSEARCHOPTIONS
INIT_STRUTILS_TSTRINGSEARCHOPTIONS:
	.byte	5,20
	.ascii	"TStringSearchOptions"
	.byte	5
	.long	INIT_STRUTILS_TSTRINGSEARCHOPTION

.data
	.balign 4
.globl	RTTI_STRUTILS_TSTRINGSEARCHOPTIONS
RTTI_STRUTILS_TSTRINGSEARCHOPTIONS:
	.byte	5,20
	.ascii	"TStringSearchOptions"
	.byte	5
	.long	RTTI_STRUTILS_TSTRINGSEARCHOPTION

.data
	.balign 4
.globl	INIT_STRUTILS_DEF49
INIT_STRUTILS_DEF49:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_STRUTILS_TSOUNDEXLENGTH
INIT_STRUTILS_TSOUNDEXLENGTH:
	.byte	1,14
	.ascii	"TSoundexLength"
	.byte	4
	.long	1,2147483647

.data
	.balign 4
.globl	RTTI_STRUTILS_TSOUNDEXLENGTH
RTTI_STRUTILS_TSOUNDEXLENGTH:
	.byte	1,14
	.ascii	"TSoundexLength"
	.byte	4
	.long	1,2147483647

.data
	.balign 4
.globl	INIT_STRUTILS_TSOUNDEXINTLENGTH
INIT_STRUTILS_TSOUNDEXINTLENGTH:
	.byte	1,17
	.ascii	"TSoundexIntLength"
	.byte	0
	.long	1,8

.data
	.balign 4
.globl	RTTI_STRUTILS_TSOUNDEXINTLENGTH
RTTI_STRUTILS_TSOUNDEXINTLENGTH:
	.byte	1,17
	.ascii	"TSoundexIntLength"
	.byte	0
	.long	1,8

.data
	.balign 4
.globl	INIT_STRUTILS_TCOMPARETEXTPROC
INIT_STRUTILS_TCOMPARETEXTPROC:
	.byte	23,16
	.ascii	"TCompareTextProc"

.data
	.balign 4
.globl	RTTI_STRUTILS_TCOMPARETEXTPROC
RTTI_STRUTILS_TCOMPARETEXTPROC:
	.byte	23,16
	.ascii	"TCompareTextProc"

.data
	.balign 4
.globl	INIT_STRUTILS_TROMANCONVERSIONSTRICTNESS
INIT_STRUTILS_TROMANCONVERSIONSTRICTNESS:
	.byte	3,26
	.ascii	"TRomanConversionStrictness"
	.byte	5
	.long	0,2,0
	.byte	9
	.ascii	"rcsStrict"
	.byte	10
	.ascii	"rcsRelaxed"
	.byte	11
	.ascii	"rcsDontCare"
	.byte	8
	.ascii	"strutils"
	.byte	0

.data
	.balign 4
.globl	RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS
RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS:
	.byte	3,26
	.ascii	"TRomanConversionStrictness"
	.byte	5
	.long	0,2,0
	.byte	9
	.ascii	"rcsStrict"
	.byte	10
	.ascii	"rcsRelaxed"
	.byte	11
	.ascii	"rcsDontCare"
	.byte	8
	.ascii	"strutils"
	.byte	0

.data
	.balign 4
.globl	RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS_s2o
RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS_s2o:
	.long	3,2
	.long	RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS+62
	.long	1
	.long	RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS+51
	.long	0
	.long	RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS+41

.data
	.balign 4
.globl	RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS_o2s
RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS_o2s:
	.long	0
	.long	RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS+41
	.long	RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS+51
	.long	RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS+62

.data
	.balign 4
.globl	INIT_STRUTILS_DEF288
INIT_STRUTILS_DEF288:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_STRUTILS_DEF266
INIT_STRUTILS_DEF266:
	.byte	12
	.ascii	"\000"
	.long	4,13
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_STRUTILS_DEF262
INIT_STRUTILS_DEF262:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256
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

.data
	.balign 4
.globl	RESSTR_STRUTILS_START
RESSTR_STRUTILS_START:
	.long	_$STRUTILS$_Ld22
	.long	0,0,0

.data
	.balign 4
.globl	RESSTR_STRUTILS_SERRAMOUNTSTRINGS
RESSTR_STRUTILS_SERRAMOUNTSTRINGS:
	.long	_$STRUTILS$_Ld24
	.long	_$STRUTILS$_Ld23
	.long	_$STRUTILS$_Ld23
	.long	62435464

.data
	.balign 4
.globl	RESSTR_STRUTILS_SINVALIDROMANNUMERAL
RESSTR_STRUTILS_SINVALIDROMANNUMERAL:
	.long	_$STRUTILS$_Ld26
	.long	_$STRUTILS$_Ld25
	.long	_$STRUTILS$_Ld25
	.long	196294748

.data
	.balign 4
.globl	RESSTR_STRUTILS_END
RESSTR_STRUTILS_END:
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end

