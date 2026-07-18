# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_STRUTILS_HEX2DEC$ANSISTRING$$LONGINT
_STRUTILS_HEX2DEC$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj5
	movl	-4(%ebp),%edx
	movb	$36,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	je	Lj8
	jmp	Lj9
Lj8:
	movl	-4(%ebp),%ecx
	leal	-12(%ebp),%eax
	movl	L_$STRUTILS$_Ld1$non_lazy_ptr-Lj4(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	jmp	Lj20
Lj9:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj20:
	movl	-12(%ebp),%eax
	call	L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub
	movl	%eax,-8(%ebp)
Lj5:
	call	LFPC_POPADDRSTACK$stub
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj6
	call	LFPC_RERAISE$stub
Lj6:
	movl	-8(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ANSIRESEMBLESTEXT$ANSISTRING$ANSISTRING$$BOOLEAN
_STRUTILS_ANSIRESEMBLESTEXT$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj34
Lj34:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_TC_STRUTILS_ANSIRESEMBLESPROC$non_lazy_ptr-Lj34(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj35
	jmp	Lj36
Lj35:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	L_TC_STRUTILS_ANSIRESEMBLESPROC$non_lazy_ptr-Lj34(%ebx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
	movb	%al,-9(%ebp)
	jmp	Lj43
Lj36:
	movb	$0,-9(%ebp)
Lj43:
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ANSICONTAINSTEXT$ANSISTRING$ANSISTRING$$BOOLEAN
_STRUTILS_ANSICONTAINSTEXT$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj47
Lj47:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj47(%ebx),%ecx
	movl	32(%ecx),%ecx
	call	*%ecx
	movl	-16(%ebp),%esi
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj47(%ebx),%ecx
	movl	32(%ecx),%ecx
	call	*%ecx
	movl	-20(%ebp),%eax
	movl	%esi,%edx
	call	L_SYSUTILS_ANSIPOS$ANSISTRING$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	setgb	-9(%ebp)
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-16(%ebp)
	movb	-9(%ebp),%al
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ANSISTARTSTEXT$ANSISTRING$ANSISTRING$$BOOLEAN
_STRUTILS_ANSISTARTSTEXT$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj63
Lj63:
	popl	%esi
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
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj76
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj63(%esi),%edx
	movl	%edx,%eax
Lj76:
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	jne	Lj79
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj63(%esi),%edx
	movl	%edx,%ebx
Lj79:
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_SYSUTILS_ANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$LONGINT$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
	jmp	Lj80
Lj65:
	movb	$0,-9(%ebp)
Lj80:
	movb	-9(%ebp),%al
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ANSIENDSTEXT$ANSISTRING$ANSISTRING$$BOOLEAN
_STRUTILS_ANSIENDSTEXT$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj84
Lj84:
	popl	%esi
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
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj84(%esi),%eax
	movl	%eax,%edx
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
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj98
	movl	-4(%eax),%eax
Lj98:
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	jne	Lj101
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj84(%esi),%ecx
	movl	%ecx,%ebx
Lj101:
	movl	%eax,%ecx
	movl	%ebx,%eax
	call	L_SYSUTILS_ANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$LONGINT$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
	jmp	Lj102
Lj86:
	movb	$0,-9(%ebp)
Lj102:
	movb	-9(%ebp),%al
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ANSIREPLACETEXT$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING
_STRUTILS_ANSIREPLACETEXT$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	$3,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ANSIMATCHTEXT$ANSISTRING$array_of_ANSISTRING$$BOOLEAN
_STRUTILS_ANSIMATCHTEXT$ANSISTRING$array_of_ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STRUTILS_ANSIINDEXTEXT$ANSISTRING$array_of_ANSISTRING$$LONGINT$stub
	cmpl	$-1,%eax
	setneb	-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ANSIINDEXTEXT$ANSISTRING$array_of_ANSISTRING$$LONGINT
_STRUTILS_ANSIINDEXTEXT$ANSISTRING$array_of_ANSISTRING$$LONGINT:
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
	.align 2
Lj135:
	incl	-20(%ebp)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	-4(%ebp),%edx
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
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
	.align 4
.globl	_STRUTILS_ANSICONTAINSSTR$ANSISTRING$ANSISTRING$$BOOLEAN
_STRUTILS_ANSICONTAINSSTR$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_ANSIPOS$ANSISTRING$ANSISTRING$$LONGINT$stub
	cmpl	$0,%eax
	setgb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ANSISTARTSSTR$ANSISTRING$ANSISTRING$$BOOLEAN
_STRUTILS_ANSISTARTSSTR$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj153
Lj153:
	popl	%esi
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
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj166
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj153(%esi),%edx
	movl	%edx,%eax
Lj166:
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	jne	Lj169
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj153(%esi),%edx
	movl	%edx,%ebx
Lj169:
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_SYSUTILS_ANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$LONGINT$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
	jmp	Lj170
Lj155:
	movb	$0,-9(%ebp)
Lj170:
	movb	-9(%ebp),%al
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ANSIENDSSTR$ANSISTRING$ANSISTRING$$BOOLEAN
_STRUTILS_ANSIENDSSTR$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj174
Lj174:
	popl	%esi
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
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj174(%esi),%eax
	movl	%eax,%edx
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
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj188
	movl	-4(%eax),%eax
Lj188:
	movl	-4(%ebp),%ebx
	testl	%ebx,%ebx
	jne	Lj191
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj174(%esi),%ecx
	movl	%ecx,%ebx
Lj191:
	movl	%eax,%ecx
	movl	%ebx,%eax
	call	L_SYSUTILS_ANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$LONGINT$stub
	testl	%eax,%eax
	seteb	-9(%ebp)
	jmp	Lj192
Lj176:
	movb	$0,-9(%ebp)
Lj192:
	movb	-9(%ebp),%al
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ANSIREPLACESTR$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING
_STRUTILS_ANSIREPLACESTR$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	$1,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ANSIMATCHSTR$ANSISTRING$array_of_ANSISTRING$$BOOLEAN
_STRUTILS_ANSIMATCHSTR$ANSISTRING$array_of_ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STRUTILS_ANSIINDEXSTR$ANSISTRING$array_of_ANSISTRING$$LONGINT$stub
	cmpl	$-1,%eax
	setneb	-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ANSIINDEXSTR$ANSISTRING$array_of_ANSISTRING$$LONGINT
_STRUTILS_ANSIINDEXSTR$ANSISTRING$array_of_ANSISTRING$$LONGINT:
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
	.align 2
Lj225:
	incl	-20(%ebp)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
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
	.align 4
.globl	_STRUTILS_DUPESTRING$ANSISTRING$LONGINT$$ANSISTRING
_STRUTILS_DUPESTRING$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
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
	call	Lfpc_ansistr_setlength$stub
	movl	-8(%ebp),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj248
	decl	-16(%ebp)
	.align 2
Lj249:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%ecx
	imull	%ecx,%edx
	incl	%edx
	leal	-1(%eax,%edx,1),%edx
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj249
Lj248:
Lj239:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_REVERSESTRING$ANSISTRING$$ANSISTRING
_STRUTILS_REVERSESTRING$ANSISTRING$$ANSISTRING:
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
	call	Lfpc_ansistr_setlength$stub
	movl	$1,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj269
	movl	-4(%eax),%eax
Lj269:
	movl	%eax,-16(%ebp)
	jmp	Lj271
	.align 2
Lj270:
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
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
	.align 4
.globl	_STRUTILS_ANSIREVERSESTRING$ANSISTRING$$ANSISTRING
_STRUTILS_ANSIREVERSESTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STRUTILS_REVERSESTRING$ANSISTRING$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_STUFFSTRING$ANSISTRING$LONGWORD$LONGWORD$ANSISTRING$$ANSISTRING
_STRUTILS_STUFFSTRING$ANSISTRING$LONGWORD$LONGWORD$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
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
	call	Lfpc_ansistr_setlength$stub
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-8(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	-8(%ebp),%edx
	leal	-1(%eax,%edx,1),%edx
	movl	-20(%ebp),%ecx
	movl	12(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
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
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_RANDOMFROM$array_of_ANSISTRING$$ANSISTRING
_STRUTILS_RANDOMFROM$array_of_ANSISTRING$$ANSISTRING:
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	jmp	Lj329
Lj332:
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	incl	%eax
	call	L_SYSTEM_RANDOM$LONGINT$$LONGINT$stub
	movl	%eax,%esi
	movl	(%ebx,%esi,4),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	(%ebx,%esi,4),%eax
	movl	%eax,(%edi)
Lj329:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_IFTHEN$BOOLEAN$ANSISTRING$ANSISTRING$$ANSISTRING
_STRUTILS_IFTHEN$BOOLEAN$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj341
	jmp	Lj342
Lj341:
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj345
Lj342:
	movl	-12(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-12(%ebp),%eax
	movl	%eax,(%ebx)
Lj345:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_LEFTSTR$ANSISTRING$LONGINT$$ANSISTRING
_STRUTILS_LEFTSTR$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_RIGHTSTR$ANSISTRING$LONGINT$$ANSISTRING
_STRUTILS_RIGHTSTR$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_MIDSTR$ANSISTRING$LONGINT$LONGINT$$ANSISTRING
_STRUTILS_MIDSTR$ANSISTRING$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	jmp	Lj377
Lj380:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
Lj377:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_LEFTBSTR$ANSISTRING$LONGINT$$ANSISTRING
_STRUTILS_LEFTBSTR$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_RIGHTBSTR$ANSISTRING$LONGINT$$ANSISTRING
_STRUTILS_RIGHTBSTR$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STRUTILS_RIGHTSTR$ANSISTRING$LONGINT$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_MIDBSTR$ANSISTRING$LONGINT$LONGINT$$ANSISTRING
_STRUTILS_MIDBSTR$ANSISTRING$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	jmp	Lj413
Lj415:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
Lj413:
	movl	8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ANSILEFTSTR$ANSISTRING$LONGINT$$ANSISTRING
_STRUTILS_ANSILEFTSTR$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ANSIRIGHTSTR$ANSISTRING$LONGINT$$ANSISTRING
_STRUTILS_ANSIRIGHTSTR$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
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
	call	Lfpc_ansistr_copy$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ANSIMIDSTR$ANSISTRING$LONGINT$LONGINT$$ANSISTRING
_STRUTILS_ANSIMIDSTR$ANSISTRING$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_LEFTSTR$WIDESTRING$LONGINT$$WIDESTRING
_STRUTILS_LEFTSTR$WIDESTRING$LONGINT$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_unicodestr_copy$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_RIGHTSTR$WIDESTRING$LONGINT$$WIDESTRING
_STRUTILS_RIGHTSTR$WIDESTRING$LONGINT$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	Lfpc_unicodestr_copy$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_MIDSTR$WIDESTRING$LONGINT$LONGINT$$WIDESTRING
_STRUTILS_MIDSTR$WIDESTRING$LONGINT$LONGINT$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_unicodestr_copy$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_EQUALWITHCASE$CHAR$CHAR$$BOOLEAN
_STRUTILS_EQUALWITHCASE$CHAR$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movb	%al,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-4(%ebp),%al
	cmpb	-8(%ebp),%al
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_EQUALWITHOUTCASE$CHAR$CHAR$$BOOLEAN
_STRUTILS_EQUALWITHOUTCASE$CHAR$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movb	%al,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-4(%ebp),%al
	call	L_SYSTEM_LOWERCASE$CHAR$$CHAR$stub
	movb	%al,%bl
	movb	-8(%ebp),%al
	call	L_SYSTEM_LOWERCASE$CHAR$$CHAR$stub
	cmpb	%al,%bl
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ISWHOLEWORD$PCHAR$PCHAR$PCHAR$PCHAR$$BOOLEAN
_STRUTILS_ISWHOLEWORD$PCHAR$PCHAR$PCHAR$PCHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj511
Lj511:
	popl	%ebx
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
	movl	L_TC_STRUTILS_WORDDELIMITERS$non_lazy_ptr-Lj511(%ebx),%edx
	btl	%eax,(%edx)
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
	movl	L_TC_STRUTILS_WORDDELIMITERS$non_lazy_ptr-Lj511(%ebx),%edx
	btl	%eax,(%edx)
	jc	Lj512
	jmp	Lj513
Lj512:
	movb	$1,-13(%ebp)
	jmp	Lj517
Lj513:
	movb	$0,-13(%ebp)
Lj517:
	movb	-13(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_SEARCHDOWN$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR
_STRUTILS_SEARCHDOWN$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	16(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movb	$0,-17(%ebp)
	jmp	Lj525
	.align 2
Lj524:
	jmp	Lj528
	.align 2
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
	.align 2
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
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STRUTILS_ISWHOLEWORD$PCHAR$PCHAR$PCHAR$PCHAR$$BOOLEAN$stub
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_SEARCHUP$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR
_STRUTILS_SEARCHUP$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	16(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
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
	.align 2
Lj585:
	jmp	Lj589
	.align 2
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
	.align 2
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
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%ecx
	incl	%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STRUTILS_ISWHOLEWORD$PCHAR$PCHAR$PCHAR$PCHAR$$BOOLEAN$stub
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_SEARCHBUF$crc48FA91CD
_STRUTILS_SEARCHBUF$crc48FA91CD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj641
Lj641:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	12(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
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
	movl	L_STRUTILS_EQUALWITHCASE$CHAR$CHAR$$BOOLEAN$non_lazy_ptr-Lj641(%ebx),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj655
Lj652:
	movl	L_STRUTILS_EQUALWITHOUTCASE$CHAR$CHAR$$BOOLEAN$non_lazy_ptr-Lj641(%ebx),%eax
	movl	%eax,-20(%ebp)
Lj655:
	testl	$1,8(%ebp)
	jne	Lj658
	jmp	Lj659
Lj658:
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	testl	$4,8(%ebp)
	setneb	%al
	movb	%al,(%esp)
	movl	-8(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	addl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_STRUTILS_SEARCHDOWN$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR$stub
	movl	%eax,-16(%ebp)
	jmp	Lj674
Lj659:
	movl	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	testl	$4,8(%ebp)
	setneb	%al
	movb	%al,(%esp)
	movl	-8(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	addl	%eax,%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_STRUTILS_SEARCHUP$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR$stub
	movl	%eax,-16(%ebp)
Lj674:
Lj650:
	leal	12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_SEARCHBUF$PCHAR$LONGINT$LONGINT$LONGINT$ANSISTRING$$PCHAR
_STRUTILS_SEARCHBUF$PCHAR$LONGINT$LONGINT$LONGINT$ANSISTRING$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$1,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STRUTILS_SEARCHBUF$crc48FA91CD$stub
	movl	%eax,-16(%ebp)
	leal	8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_POSEX$ANSISTRING$ANSISTRING$LONGWORD$$LONGINT
_STRUTILS_POSEX$ANSISTRING$ANSISTRING$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
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
	call	L_SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT$stub
	movl	%eax,-20(%ebp)
	jmp	Lj732
	.align 2
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
	call	L_SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT$stub
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
	call	L_SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT$stub
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
	.align 4
.globl	_STRUTILS_POSEX$CHAR$ANSISTRING$LONGWORD$$LONGINT
_STRUTILS_POSEX$CHAR$ANSISTRING$LONGWORD$$LONGINT:
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
	call	L_SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT$stub
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
	.align 4
.globl	_STRUTILS_POSEX$ANSISTRING$ANSISTRING$$LONGINT
_STRUTILS_POSEX$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_STRUTILS_POSEX$ANSISTRING$ANSISTRING$LONGWORD$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_STRINGSREPLACE$crc5492ED1B
_STRUTILS_STRINGSREPLACE$crc5492ED1B:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%edi,-60(%ebp)
	call	Lj798
Lj798:
	popl	-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,%esi
	incl	%esi
	shll	$2,%esi
	movl	%edx,%ebx
	movl	%esi,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%esi,%ecx
	movl	%edi,%edx
	movl	%ebx,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-8(%ebp)
	movl	20(%ebp),%edx
	movl	16(%ebp),%eax
	movl	%eax,%esi
	incl	%esi
	shll	$2,%esi
	movl	%edx,%edi
	movl	%esi,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%ebx
	movl	%esi,%ecx
	movl	%ebx,%edx
	movl	%edi,%eax
	call	LFPC_MOVE$stub
	movl	%ebx,20(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ecx
	incl	%ecx
	movl	-56(%ebp),%ebx
	movl	L_INIT_SYSTEM_ANSISTRING$non_lazy_ptr-Lj798(%ebx),%esi
	movl	%esi,%edx
	call	LFPC_ADDREF_ARRAY$stub
	movl	20(%ebp),%eax
	movl	16(%ebp),%ecx
	incl	%ecx
	movl	-56(%ebp),%ebx
	movl	L_INIT_SYSTEM_ANSISTRING$non_lazy_ptr-Lj798(%ebx),%esi
	movl	%esi,%edx
	call	LFPC_ADDREF_ARRAY$stub
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
	movl	-56(%ebp),%edx
	movl	L_RESSTR_STRUTILS_SERRAMOUNTSTRINGS$non_lazy_ptr-Lj798(%edx),%eax
	movl	4(%eax),%ecx
	movl	-56(%ebp),%eax
	movl	L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr-Lj798(%eax),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	movl	-56(%ebp),%ebx
	leal	La1-Lj798(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj802:
	decl	-44(%ebp)
	testl	$2,12(%ebp)
	jne	Lj809
	jmp	Lj810
Lj809:
	leal	-36(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-56(%ebp),%ecx
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj798(%ecx),%ebx
	movl	32(%ebx),%ecx
	call	*%ecx
	movl	-44(%ebp),%ebx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%ebx
	jl	Lj816
	decl	-28(%ebp)
	.align 2
Lj817:
	incl	-28(%ebp)
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	leal	(%edx,%eax,4),%eax
	movl	%eax,-52(%ebp)
	leal	-48(%ebp),%edx
	movl	-52(%ebp),%eax
	movl	(%eax),%eax
	movl	-56(%ebp),%ecx
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj798(%ecx),%esi
	movl	32(%esi),%ecx
	call	*%ecx
	movl	-48(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%edi
	movl	-28(%ebp),%esi
	leal	(%edi,%esi,4),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	movl	%eax,(%edi,%esi,4)
	cmpl	-28(%ebp),%ebx
	jg	Lj817
Lj816:
	jmp	Lj826
Lj810:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-36(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,-36(%ebp)
Lj826:
	leal	-32(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
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
	.align 2
Lj838:
	movb	$0,-37(%ebp)
	movl	-44(%ebp),%esi
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%esi
	jl	Lj844
	decl	-28(%ebp)
	.align 2
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
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	-16(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	je	Lj849
	jmp	Lj847
Lj849:
	movl	-24(%ebp),%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj852
	movl	-4(%eax),%eax
Lj852:
	cmpl	%eax,%ecx
	jge	Lj848
	jmp	Lj847
Lj848:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%eax,%edx,4),%ecx
	testl	%ecx,%ecx
	je	Lj855
	movl	-4(%ecx),%ecx
Lj855:
	movl	-16(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%ebx,%edx
	call	L_SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj846
	jmp	Lj847
Lj846:
	movl	20(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	(%edx,%eax,4),%ecx
	movl	-32(%ebp),%edx
	leal	-32(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
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
	movl	(%eax,%edx,4),%eax
	testl	%eax,%eax
	je	Lj871
	movl	-4(%eax),%eax
Lj871:
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-20(%ebp)
	movb	$1,-37(%ebp)
Lj847:
	cmpl	-28(%ebp),%esi
	jg	Lj845
Lj844:
	movb	-37(%ebp),%al
	testb	%al,%al
	je	Lj874
	jmp	Lj875
Lj874:
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	leal	-48(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-48(%ebp),%ecx
	movl	-32(%ebp),%edx
	leal	-32(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	incl	-16(%ebp)
	incl	-20(%ebp)
	jmp	Lj886
Lj875:
	testl	$1,12(%ebp)
	je	Lj887
	jmp	Lj888
Lj887:
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_SYSUTILS_STRPAS$PCHAR$$ANSISTRING$stub
	movl	-48(%ebp),%ecx
	movl	-32(%ebp),%edx
	leal	-32(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
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
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-32(%ebp),%eax
	movl	%eax,(%ebx)
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	leal	-32(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-32(%ebp)
	leal	-36(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ecx
	incl	%ecx
	movl	-56(%ebp),%ebx
	movl	L_INIT_SYSTEM_ANSISTRING$non_lazy_ptr-Lj798(%ebx),%esi
	movl	%esi,%edx
	call	LFPC_DECREF_ARRAY$stub
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	20(%ebp),%eax
	movl	16(%ebp),%ecx
	incl	%ecx
	movl	-56(%ebp),%ebx
	movl	L_INIT_SYSTEM_ANSISTRING$non_lazy_ptr-Lj798(%ebx),%esi
	movl	%esi,%edx
	call	LFPC_DECREF_ARRAY$stub
	movl	20(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	movl	-60(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_REPLACESTR$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING
_STRUTILS_REPLACESTR$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	$1,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING$stub
	movl	8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_REPLACETEXT$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING
_STRUTILS_REPLACETEXT$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	$3,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING$stub
	movl	8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
_STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	call	Lj938
Lj938:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-60(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
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
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	movl	-12(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	$2,-20(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj956
	movl	-4(%eax),%eax
Lj956:
	movl	%eax,-24(%ebp)
	jmp	Lj958
	.align 2
Lj957:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	movl	L_TC_STRUTILS_SSCORE$non_lazy_ptr-Lj938(%esi),%edx
	movb	-1(%edx,%eax,1),%al
	movb	%al,-13(%ebp)
	movl	$32,(%esp)
	movl	L_$STRUTILS$_Ld3$non_lazy_ptr-Lj938(%esi),%eax
	movzbl	-14(%ebp),%ecx
	leal	-56(%ebp),%edx
	call	Lfpc_varset_set$stub
	movzbl	-13(%ebp),%eax
	btl	%eax,-56(%ebp)
	jnc	Lj962
	jmp	Lj963
Lj962:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movb	-13(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-60(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	subl	%eax,%edx
	leal	-60(%ebp),%ecx
	movb	$48,%al
	call	L_SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING$stub
	movl	-60(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj992:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_SOUNDEX$ANSISTRING$$ANSISTRING
_STRUTILS_SOUNDEX$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$4,%edx
	call	L_STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_SOUNDEXINT$ANSISTRING$TSOUNDEXINTLENGTH$$LONGINT
_STRUTILS_SOUNDEXINT$ANSISTRING$TSOUNDEXINTLENGTH$$LONGINT:
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
	call	L_STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING$stub
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
	.align 2
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
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_SOUNDEXINT$ANSISTRING$$LONGINT
_STRUTILS_SOUNDEXINT$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$4,%dl
	call	L_STRUTILS_SOUNDEXINT$ANSISTRING$TSOUNDEXINTLENGTH$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_DECODESOUNDEXINT$LONGINT$$ANSISTRING
_STRUTILS_DECODESOUNDEXINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
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
	.align 2
Lj1063:
	decl	-12(%ebp)
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	cltd
	movl	$7,%ecx
	idivl	%ecx
	movl	%edx,%eax
	addl	$48,%eax
	leal	-20(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	cltd
	movl	$26,%ecx
	idivl	%ecx
	movl	%edx,%eax
	addl	$48,%eax
	leal	-20(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	addl	$65,%eax
	leal	-20(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_SOUNDEXWORD$ANSISTRING$$WORD
_STRUTILS_SOUNDEXWORD$ANSISTRING$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	leal	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$4,%edx
	call	L_STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING$stub
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
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_DECODESOUNDEXWORD$WORD$$ANSISTRING
_STRUTILS_DECODESOUNDEXWORD$WORD$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	call	Lfpc_char_to_ansistr$stub
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-12(%ebp)
	movzwl	-4(%ebp),%eax
	cltd
	movl	$7,%ecx
	idivl	%ecx
	movl	%edx,%eax
	addl	$48,%eax
	leal	-12(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-12(%ebp)
	movzwl	-4(%ebp),%eax
	cltd
	movl	$26,%ecx
	idivl	%ecx
	movl	%edx,%eax
	leal	-12(%ebp),%edx
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	movzwl	-4(%ebp),%ecx
	movl	$1321528399,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$3,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movw	%dx,-4(%ebp)
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-12(%ebp)
	movzwl	-4(%ebp),%eax
	addl	$65,%eax
	leal	-12(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-12(%ebp)
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_SOUNDEXSIMILAR$ANSISTRING$ANSISTRING$TSOUNDEXLENGTH$$BOOLEAN
_STRUTILS_SOUNDEXSIMILAR$ANSISTRING$ANSISTRING$TSOUNDEXLENGTH$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING$stub
	movl	-20(%ebp),%ebx
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-24(%ebp)
	leal	-24(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING$stub
	movl	-24(%ebp),%eax
	movl	%ebx,%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	seteb	-13(%ebp)
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-24(%ebp)
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	movb	-13(%ebp),%al
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_SOUNDEXSIMILAR$ANSISTRING$ANSISTRING$$BOOLEAN
_STRUTILS_SOUNDEXSIMILAR$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$4,%edx
	call	L_STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING$stub
	movl	-16(%ebp),%ebx
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$4,%edx
	call	L_STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING$stub
	movl	-20(%ebp),%eax
	movl	%ebx,%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	seteb	%al
	movb	%al,-9(%ebp)
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-16(%ebp)
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_SOUNDEXCOMPARE$ANSISTRING$ANSISTRING$TSOUNDEXLENGTH$$LONGINT
_STRUTILS_SOUNDEXCOMPARE$ANSISTRING$ANSISTRING$TSOUNDEXLENGTH$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	call	Lj1207
Lj1207:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-24(%ebp)
	leal	-24(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING$stub
	movl	-24(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-24(%ebp)
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-28(%ebp)
	leal	-28(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING$stub
	movl	-28(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-28(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj1207(%ebx),%ecx
	movl	40(%ecx),%ecx
	call	*%ecx
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-28(%ebp)
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-24(%ebp)
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	-32(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_SOUNDEXCOMPARE$ANSISTRING$ANSISTRING$$LONGINT
_STRUTILS_SOUNDEXCOMPARE$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj1233
Lj1233:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$4,%edx
	call	L_STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING$stub
	movl	-20(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-24(%ebp)
	leal	-24(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$4,%edx
	call	L_STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING$stub
	movl	-24(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj1233(%ebx),%ecx
	movl	40(%ecx),%ecx
	call	*%ecx
	movl	%eax,-12(%ebp)
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-24(%ebp)
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_SOUNDEXPROC$ANSISTRING$ANSISTRING$$BOOLEAN
_STRUTILS_SOUNDEXPROC$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$4,%edx
	call	L_STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING$stub
	movl	-16(%ebp),%ebx
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$4,%edx
	call	L_STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING$stub
	movl	-20(%ebp),%eax
	movl	%ebx,%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	seteb	%al
	movb	%al,-9(%ebp)
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-16(%ebp)
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ISEMPTYSTR$ANSISTRING$TSYSCHARSET$$BOOLEAN
_STRUTILS_ISEMPTYSTR$ANSISTRING$TSYSCHARSET$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	.align 2
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
	.align 4
.globl	_STRUTILS_DELSPACE$ANSISTRING$$ANSISTRING
_STRUTILS_DELSPACE$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$32,%dl
	call	L_STRUTILS_DELCHARS$ANSISTRING$CHAR$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_DELCHARS$ANSISTRING$CHAR$$ANSISTRING
_STRUTILS_DELCHARS$ANSISTRING$CHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
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
	.align 2
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
	.align 2
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
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
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
	.align 4
.globl	_STRUTILS_DELSPACE1$ANSISTRING$$ANSISTRING
_STRUTILS_DELSPACE1$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
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
	.align 2
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
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
Lj1342:
	cmpl	$2,-12(%ebp)
	jg	Lj1339
Lj1338:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_TAB2SPACE$ANSISTRING$BYTE$$ANSISTRING
_STRUTILS_TAB2SPACE$ANSISTRING$BYTE$$ANSISTRING:
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
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj1357
	.align 2
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
	call	Lfpc_ansistr_unique$stub
	movl	-16(%ebp),%edx
	movb	$32,-1(%eax,%edx,1)
	movzbl	-8(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj1366
	jmp	Lj1367
Lj1366:
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	movzbl	-8(%ebp),%edx
	decl	%edx
	leal	-20(%ebp),%ecx
	movb	$32,%al
	call	L_SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING$stub
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	call	L_SYSTEM_INSERT$ANSISTRING$ANSISTRING$LONGINT$stub
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_NPOS$ANSISTRING$ANSISTRING$LONGINT$$LONGINT
_STRUTILS_NPOS$ANSISTRING$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
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
	.align 2
Lj1391:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT$stub
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
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ADDCHAR$CHAR$ANSISTRING$LONGINT$$ANSISTRING
_STRUTILS_ADDCHAR$CHAR$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	leal	-20(%ebp),%ecx
	movb	-4(%ebp),%al
	call	L_SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING$stub
	movl	-20(%ebp),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%ecx
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj1421:
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ADDCHARR$CHAR$ANSISTRING$LONGINT$$ANSISTRING
_STRUTILS_ADDCHARR$CHAR$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	leal	-20(%ebp),%ecx
	movb	-4(%ebp),%al
	call	L_SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING$stub
	movl	-20(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj1442:
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-20(%ebp)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_PADRIGHT$ANSISTRING$LONGINT$$ANSISTRING
_STRUTILS_PADRIGHT$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movb	$32,%al
	call	L_STRUTILS_ADDCHARR$CHAR$ANSISTRING$LONGINT$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_PADLEFT$ANSISTRING$LONGINT$$ANSISTRING
_STRUTILS_PADLEFT$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movb	$32,%al
	call	L_STRUTILS_ADDCHAR$CHAR$ANSISTRING$LONGINT$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_COPY2SYMB$ANSISTRING$CHAR$$ANSISTRING
_STRUTILS_COPY2SYMB$ANSISTRING$CHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movb	-8(%ebp),%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
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
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_COPY2SYMBDEL$ANSISTRING$CHAR$$ANSISTRING
_STRUTILS_COPY2SYMBDEL$ANSISTRING$CHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movb	-8(%ebp),%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1504
	jmp	Lj1505
Lj1504:
	movl	-4(%ebp),%esi
	movl	(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	(%esi),%eax
	movl	%eax,(%ebx)
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	jmp	Lj1510
Lj1505:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
Lj1510:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_COPY2SPACE$ANSISTRING$$ANSISTRING
_STRUTILS_COPY2SPACE$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$32,%dl
	call	L_STRUTILS_COPY2SYMB$ANSISTRING$CHAR$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_COPY2SPACEDEL$ANSISTRING$$ANSISTRING
_STRUTILS_COPY2SPACEDEL$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$32,%dl
	call	L_STRUTILS_COPY2SYMBDEL$ANSISTRING$CHAR$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ANSIPROPERCASE$ANSISTRING$TSYSCHARSET$$ANSISTRING
_STRUTILS_ANSIPROPERCASE$ANSISTRING$TSYSCHARSET$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj1542
Lj1542:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj1542(%ebx),%ecx
	movl	36(%ecx),%ecx
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
	.align 2
Lj1552:
	jmp	Lj1556
	.align 2
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
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	movl	-16(%ebp),%edx
	movb	%al,(%edx)
Lj1560:
	jmp	Lj1566
	.align 2
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
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_WORDCOUNT$ANSISTRING$TSYSCHARSET$$LONGINT
_STRUTILS_WORDCOUNT$ANSISTRING$TSYSCHARSET$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	.align 2
Lj1578:
	jmp	Lj1582
	.align 2
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
	.align 2
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
	.align 4
.globl	_STRUTILS_WORDPOSITION$LONGINT$ANSISTRING$TSYSCHARSET$$LONGINT
_STRUTILS_WORDPOSITION$LONGINT$ANSISTRING$TSYSCHARSET$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
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
	.align 2
Lj1604:
	jmp	Lj1608
	.align 2
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
	.align 2
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
	.align 4
.globl	_STRUTILS_EXTRACTWORD$LONGINT$ANSISTRING$TSYSCHARSET$$ANSISTRING
_STRUTILS_EXTRACTWORD$LONGINT$ANSISTRING$TSYSCHARSET$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STRUTILS_EXTRACTWORDPOS$LONGINT$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING$stub
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_EXTRACTWORDPOS$LONGINT$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING
_STRUTILS_EXTRACTWORDPOS$LONGINT$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STRUTILS_WORDPOSITION$LONGINT$ANSISTRING$TSYSCHARSET$$LONGINT$stub
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
	.align 2
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
	call	Lfpc_ansistr_setlength$stub
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	subl	%edx,%eax
	cmpl	$0,%eax
	jg	Lj1664
	jmp	Lj1665
Lj1664:
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leal	-1(%eax,%ebx,1),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
Lj1665:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_EXTRACTDELIMITED$LONGINT$ANSISTRING$TSYSCHARSET$$ANSISTRING
_STRUTILS_EXTRACTDELIMITED$LONGINT$ANSISTRING$TSYSCHARSET$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
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
	call	Lfpc_ansistr_setlength$stub
	jmp	Lj1690
	.align 2
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
	call	Lfpc_ansistr_setlength$stub
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
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
	ret

.text
	.align 4
.globl	_STRUTILS_EXTRACTSUBSTR$ANSISTRING$LONGINT$TSYSCHARSET$$ANSISTRING
_STRUTILS_EXTRACTSUBSTR$ANSISTRING$LONGINT$TSYSCHARSET$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	.align 2
Lj1713:
	incl	-16(%ebp)
Lj1714:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj1716
	jmp	Lj1715
Lj1716:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	movzbl	-1(%eax,%edx,1),%eax
	btl	%eax,(%ecx)
	jnc	Lj1713
	jmp	Lj1715
Lj1715:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%eax),%eax
	subl	%eax,%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	jmp	Lj1726
	.align 2
Lj1725:
	incl	-16(%ebp)
Lj1726:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj1728
	jmp	Lj1727
Lj1728:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	movzbl	-1(%eax,%edx,1),%eax
	btl	%eax,(%ecx)
	jc	Lj1725
	jmp	Lj1727
Lj1727:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ISWORDPRESENT$ANSISTRING$ANSISTRING$TSYSCHARSET$$BOOLEAN
_STRUTILS_ISWORDPRESENT$ANSISTRING$ANSISTRING$TSYSCHARSET$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-28(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_STRUTILS_WORDCOUNT$ANSISTRING$TSYSCHARSET$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	$1,-20(%ebp)
	jmp	Lj1744
	.align 2
Lj1743:
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	leal	-32(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_STRUTILS_EXTRACTWORDPOS$LONGINT$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING$stub
	movl	-28(%ebp),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-28(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_NUMB2USA$ANSISTRING$$ANSISTRING
_STRUTILS_NUMB2USA$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj1764
Lj1764:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1767
	movl	-4(%eax),%eax
Lj1767:
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	movl	$0,-16(%ebp)
	jmp	Lj1773
	.align 2
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
	movl	-8(%ebp),%eax
	movl	L_$STRUTILS$_Ld4$non_lazy_ptr-Lj1764(%esi),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_SYSTEM_INSERT$ANSISTRING$ANSISTRING$LONGINT$stub
	incl	-16(%ebp)
Lj1776:
	decl	-12(%ebp)
Lj1773:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1772
	jmp	Lj1774
Lj1774:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_PADCENTER$ANSISTRING$LONGINT$$ANSISTRING
_STRUTILS_PADCENTER$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	call	LFPC_ANSISTR_DECR_REF$stub
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
	call	L_SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING$stub
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
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
	call	L_SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING$stub
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	jmp	Lj1816
Lj1788:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
Lj1816:
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-16(%ebp)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_DEC2NUMB$LONGINT$BYTE$BYTE$$ANSISTRING
_STRUTILS_DEC2NUMB$LONGINT$BYTE$BYTE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	call	Lj1820
Lj1820:
	popl	%esi
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$0,-24(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1821
	jmp	Lj1822
Lj1821:
	movl	L_$STRUTILS$_Ld6$non_lazy_ptr-Lj1820(%esi),%ebx
	movl	8(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj1825
Lj1822:
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	jmp	Lj1831
	.align 2
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-24(%ebp)
	leal	-24(%ebp),%edx
	movb	-16(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-24(%ebp),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%ecx
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-24(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-8(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movb	$48,%al
	call	L_STRUTILS_ADDCHAR$CHAR$ANSISTRING$LONGINT$$ANSISTRING$stub
	movl	-24(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-24(%ebp),%eax
	movl	%eax,(%ebx)
Lj1855:
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-24(%ebp)
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_NUMB2DEC$ANSISTRING$BYTE$$LONGINT
_STRUTILS_NUMB2DEC$ANSISTRING$BYTE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-24(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1870
	movl	-4(%eax),%eax
Lj1870:
	movl	%eax,-16(%ebp)
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-24(%ebp)
	leal	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-24(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-24(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$1,-20(%ebp)
	jmp	Lj1882
	.align 2
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-24(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT
_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj1894
Lj1894:
	popl	%ebx
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
	.align 2
Lj1909:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
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
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
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
	movzbl	-10(%ebp),%ecx
	movl	L_TC_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_ROMANVALUES$non_lazy_ptr-Lj1894(%ebx),%edx
	movw	-134(%edx,%eax,2),%ax
	movl	L_TC_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_ROMANVALUES$non_lazy_ptr-Lj1894(%ebx),%edx
	cmpw	-134(%edx,%ecx,2),%ax
	jb	Lj1928
	jmp	Lj1929
Lj1928:
	movzbl	-10(%ebp),%edx
	movl	L_TC_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_ROMANVALUES$non_lazy_ptr-Lj1894(%ebx),%eax
	movzwl	-134(%eax,%edx,2),%eax
	addl	%eax,-8(%ebp)
	movzbl	-9(%ebp),%edx
	movl	L_TC_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_ROMANVALUES$non_lazy_ptr-Lj1894(%ebx),%eax
	movzwl	-134(%eax,%edx,2),%eax
	subl	%eax,-8(%ebp)
	incl	-16(%ebp)
	jmp	Lj1932
Lj1929:
	movzbl	-9(%ebp),%edx
	movl	L_TC_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_ROMANVALUES$non_lazy_ptr-Lj1894(%ebx),%eax
	movzwl	-134(%eax,%edx,2),%eax
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
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_TRYROMANTOINT$ANSISTRING$LONGINT$TROMANCONVERSIONSTRICTNESS$$BOOLEAN
_STRUTILS_TRYROMANTOINT$ANSISTRING$LONGINT$TROMANCONVERSIONSTRICTNESS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-32(%ebp)
	movb	$0,-13(%ebp)
	leal	-32(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-32(%ebp)
	leal	-32(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-32(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
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
	call	L_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT$stub
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
	.align 2
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-32(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ROMANTOINT$ANSISTRING$TROMANCONVERSIONSTRICTNESS$$LONGINT
_STRUTILS_ROMANTOINT$ANSISTRING$TROMANCONVERSIONSTRICTNESS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	call	Lj2108
Lj2108:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STRUTILS_TRYROMANTOINT$ANSISTRING$LONGINT$TROMANCONVERSIONSTRICTNESS$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2109
	jmp	Lj2110
Lj2109:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$11,-20(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STRUTILS_SINVALIDROMANNUMERAL$non_lazy_ptr-Lj2108(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr-Lj2108(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj2108(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2110:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ROMANTOINTDEF$ANSISTRING$LONGINT$TROMANCONVERSIONSTRICTNESS$$LONGINT
_STRUTILS_ROMANTOINTDEF$ANSISTRING$LONGINT$TROMANCONVERSIONSTRICTNESS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STRUTILS_TRYROMANTOINT$ANSISTRING$LONGINT$TROMANCONVERSIONSTRICTNESS$$BOOLEAN$stub
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
	.align 4
.globl	_STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING
_STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj2140
Lj2140:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	$13,-12(%ebp)
	incl	-12(%ebp)
	.align 2
Lj2145:
	decl	-12(%ebp)
	jmp	Lj2147
	.align 2
Lj2146:
	movl	-12(%ebp),%edx
	movl	L_TC_STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING_ARABICS$non_lazy_ptr-Lj2140(%esi),%eax
	movl	-4(%eax,%edx,4),%edx
	movl	-4(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-4(%ebp)
	movl	-12(%ebp),%edx
	movl	L_TC_STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING_ROMANS$non_lazy_ptr-Lj2140(%esi),%eax
	movl	-4(%eax,%edx,4),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
Lj2147:
	movl	-12(%ebp),%eax
	movl	L_TC_STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING_ARABICS$non_lazy_ptr-Lj2140(%esi),%edx
	movl	-4(%edx,%eax,4),%eax
	cmpl	-4(%ebp),%eax
	jle	Lj2146
	jmp	Lj2148
Lj2148:
	cmpl	$1,-12(%ebp)
	jg	Lj2145
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_INTTOBIN$LONGINT$LONGINT$LONGINT$$ANSISTRING
_STRUTILS_INTTOBIN$LONGINT$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-32(%ebp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-32(%ebp)
	leal	-32(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_STRUTILS_INTTOBIN$LONGINT$LONGINT$$ANSISTRING$stub
	movl	-32(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
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
	call	Lfpc_ansistr_setlength$stub
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
	.align 2
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-32(%ebp)
	movl	-36(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_INTTOBIN$LONGINT$LONGINT$$ANSISTRING
_STRUTILS_INTTOBIN$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
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
	call	Lfpc_ansistr_setlength$stub
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	leal	-1(%eax,%edx,1),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj2215
	.align 2
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
	call	Lfpc_ansistr_unique$stub
	movl	-8(%ebp),%edx
	movb	$48,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
Lj2225:
Lj2200:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_INTTOBIN$INT64$LONGINT$$ANSISTRING
_STRUTILS_INTTOBIN$INT64$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
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
	call	Lfpc_ansistr_setlength$stub
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	-4(%ebp),%edx
	leal	-1(%eax,%edx,1),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj2249
	.align 2
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
	call	Lfpc_ansistr_unique$stub
	movl	-4(%ebp),%edx
	movb	$48,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub
Lj2259:
Lj2234:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_FINDPART$ANSISTRING$ANSISTRING$$LONGINT
_STRUTILS_FINDPART$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%edx
	movb	$63,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj2278
	jmp	Lj2279
Lj2278:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT$stub
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
	.align 2
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
	.align 2
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
	.align 4
.globl	_STRUTILS_ISWILD$ANSISTRING$ANSISTRING$BOOLEAN$$BOOLEAN
_STRUTILS_ISWILD$ANSISTRING$ANSISTRING$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	call	Lj2308
Lj2308:
	popl	-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-44(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj2311
	jmp	Lj2312
Lj2311:
	movb	$1,-13(%ebp)
	jmp	Lj2307
Lj2312:
	.align 2
Lj2319:
	movl	-8(%ebp),%edx
	movl	-68(%ebp),%ecx
	movl	L_$STRUTILS$_Ld34$non_lazy_ptr-Lj2308(%ecx),%eax
	call	L_SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2328
	jmp	Lj2329
Lj2328:
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%ecx
	decl	%ecx
	movl	-8(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-60(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	-68(%ebp),%edx
	movl	L_$STRUTILS$_Ld36$non_lazy_ptr-Lj2308(%edx),%eax
	movl	%eax,-52(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%edx
	addl	$2,%edx
	movl	-8(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-64(%ebp),%eax
	movl	%eax,-48(%ebp)
	leal	-56(%ebp),%edx
	leal	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj2329:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj2321
	jmp	Lj2319
Lj2321:
	movl	-8(%ebp),%eax
	movl	-68(%ebp),%ecx
	movl	L_$STRUTILS$_Ld36$non_lazy_ptr-Lj2308(%ecx),%edx
	call	Lfpc_ansistr_compare_equal$stub
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-68(%ebp),%ecx
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2308(%ecx),%ebx
	movl	32(%ebx),%ecx
	call	*%ecx
	movl	-64(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	movl	%eax,-4(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-68(%ebp),%ecx
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2308(%ecx),%ebx
	movl	32(%ebx),%ecx
	call	*%ecx
	movl	-64(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
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
	.align 2
Lj2391:
	movl	-4(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%ebx
	movl	-20(%ebp),%ecx
	movb	-1(%eax,%edx,1),%al
	cmpb	-1(%ebx,%ecx,1),%al
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
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$42,%al
	je	Lj2398
	jmp	Lj2399
Lj2398:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	incl	%edx
	movl	-40(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-64(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	movl	%eax,-44(%ebp)
	leal	-44(%ebp),%edx
	movl	%ebp,%eax
	call	L_STRUTILS_ISWILD$crc615EB9FF_SEARCHNEXT$ANSISTRING$$LONGINT$stub
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
	movl	%eax,%ecx
	movl	$0,-28(%ebp)
	cmpl	-28(%ebp),%ecx
	jl	Lj2424
	decl	-28(%ebp)
	.align 2
Lj2425:
	incl	-28(%ebp)
	movl	-44(%ebp),%ebx
	movl	-32(%ebp),%eax
	movl	-28(%ebp),%edx
	subl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	-36(%ebp),%esi
	movl	-28(%ebp),%edi
	subl	%edi,%esi
	movb	-1(%ebx,%eax,1),%al
	cmpb	-1(%edx,%esi,1),%al
	jne	Lj2428
	jmp	Lj2427
Lj2428:
	movl	-44(%ebp),%ebx
	movl	-32(%ebp),%eax
	movl	-28(%ebp),%edx
	subl	%edx,%eax
	movb	-1(%ebx,%eax,1),%al
	cmpb	$63,%al
	jne	Lj2426
	jmp	Lj2427
Lj2426:
	movb	$0,-13(%ebp)
	jmp	Lj2307
Lj2427:
	cmpl	-28(%ebp),%ecx
	jg	Lj2425
Lj2424:
	jmp	Lj2307
Lj2420:
	movl	-32(%ebp),%eax
	incl	%eax
	addl	%eax,-20(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2147483647,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-64(%ebp),%edx
	movl	-44(%ebp),%eax
	call	L_STRUTILS_FINDPART$ANSISTRING$ANSISTRING$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj2445
	jmp	Lj2446
Lj2445:
	movb	$0,-13(%ebp)
	jmp	Lj2307
Lj2446:
	movl	-28(%ebp),%eax
	movl	-32(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-24(%ebp)
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
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$42,%al
	jne	Lj2458
	jmp	Lj2459
Lj2458:
	movb	$0,-13(%ebp)
Lj2459:
Lj2307:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-44(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-44(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movb	-13(%ebp),%al
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_ISWILD$crc615EB9FF_SEARCHNEXT$ANSISTRING$$LONGINT
_STRUTILS_ISWILD$crc615EB9FF_SEARCHNEXT$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movb	$42,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2475
	jmp	Lj2476
Lj2475:
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-16(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-16(%ebp),%eax
	movl	%eax,(%ebx)
Lj2476:
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_XORSTRING$SHORTSTRING$SHORTSTRING$$SHORTSTRING
_STRUTILS_XORSTRING$SHORTSTRING$SHORTSTRING$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	movl	%edi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
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
	.align 2
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
	.align 4
.globl	_STRUTILS_XORENCODE$ANSISTRING$ANSISTRING$$ANSISTRING
_STRUTILS_XORENCODE$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%edi,-36(%ebp)
	call	Lj2503
Lj2503:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-24(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2509
	movl	-4(%eax),%eax
Lj2509:
	movl	%eax,%ebx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj2507
	decl	-16(%ebp)
	.align 2
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
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%eax
	decl	%eax
	movl	-4(%ebp),%edi
	testl	%edi,%edi
	je	Lj2515
	movl	-4(%edi),%edi
Lj2515:
	cltd
	idivl	%edi
	movl	%edx,%eax
	incl	%eax
	movl	-8(%ebp),%edi
	movl	-16(%ebp),%edx
	movb	-1(%ecx,%eax,1),%al
	movb	-1(%edi,%edx,1),%dl
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-24(%ebp)
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-28(%ebp)
	leal	-32(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-32(%ebp)
	leal	-32(%ebp),%ecx
	movzbl	-17(%ebp),%eax
	movl	$2,%edx
	call	L_SYSUTILS_INTTOHEX$LONGINT$LONGINT$$ANSISTRING$stub
	movl	-32(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-32(%ebp),%eax
	movl	%eax,-28(%ebp)
	leal	-24(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2503(%esi),%ecx
	movl	36(%ecx),%ecx
	call	*%ecx
	movl	-24(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj2508
Lj2507:
	leal	-32(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-32(%ebp)
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-28(%ebp)
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-24(%ebp)
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	movl	-36(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_XORDECODE$ANSISTRING$ANSISTRING$$ANSISTRING
_STRUTILS_XORDECODE$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-40(%ebp)
	movl	%esi,-36(%ebp)
	movl	%edi,-32(%ebp)
	call	Lj2538
Lj2538:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-24(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2544
	movl	-4(%eax),%eax
Lj2544:
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj2542
	decl	-16(%ebp)
	.align 2
Lj2543:
	incl	-16(%ebp)
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-24(%ebp)
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-28(%ebp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%edx
	shll	$1,%edx
	incl	%edx
	movl	-8(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-28(%ebp),%ecx
	leal	-24(%ebp),%eax
	movl	L_$STRUTILS$_Ld1$non_lazy_ptr-Lj2538(%esi),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-24(%ebp),%eax
	movl	$32,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
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
	movl	-4(%ebp),%edi
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj2570
	movl	-4(%ecx),%ecx
Lj2570:
	movl	-16(%ebp),%eax
	cltd
	idivl	%ecx
	incl	%edx
	movb	-1(%edi,%edx,1),%al
	movb	-17(%ebp),%dl
	xorb	%dl,%al
	movb	%al,-17(%ebp)
Lj2566:
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-28(%ebp)
	leal	-28(%ebp),%edx
	movb	-17(%ebp),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-28(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_concat$stub
	cmpl	-16(%ebp),%ebx
	jg	Lj2543
Lj2542:
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-28(%ebp)
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-24(%ebp)
	movl	-40(%ebp),%ebx
	movl	-36(%ebp),%esi
	movl	-32(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_GETCMDLINEARG$ANSISTRING$TSYSCHARSET$$ANSISTRING
_STRUTILS_GETCMDLINEARG$ANSISTRING$TSYSCHARSET$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	movl	%edi,-68(%ebp)
	call	Lj2582
Lj2582:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%esi
	leal	-56(%ebp),%edi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	$0,-20(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	movl	$1,-16(%ebp)
	movl	-12(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%esi)
	jmp	Lj2588
	.align 2
Lj2587:
	leal	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_OBJPAS_PARAMSTR$LONGINT$$ANSISTRING$stub
	movl	L_$STRUTILS$_Ld38$non_lazy_ptr-Lj2582(%ebx),%edx
	leal	-56(%ebp),%eax
	movl	$32,%ecx
	call	Lfpc_varset_comp_sets$stub
	testb	%al,%al
	jne	Lj2594
	jmp	Lj2596
Lj2596:
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	btl	%eax,-56(%ebp)
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
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj2612
	movl	-4(%ecx),%ecx
Lj2612:
	decl	%ecx
	movl	-20(%ebp),%eax
	movl	$2,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-64(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	-4(%ebp),%edx
	movl	-60(%ebp),%eax
	movl	L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr-Lj2582(%ebx),%ecx
	movl	44(%ecx),%ecx
	call	*%ecx
	testl	%eax,%eax
	je	Lj2594
	jmp	Lj2595
Lj2594:
	incl	-16(%ebp)
	call	L_SYSTEM_PARAMCOUNT$$LONGINT$stub
	cmpl	-16(%ebp),%eax
	jge	Lj2623
	jmp	Lj2624
Lj2623:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_OBJPAS_PARAMSTR$LONGINT$$ANSISTRING$stub
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
	call	L_SYSTEM_PARAMCOUNT$$LONGINT$stub
	cmpl	-16(%ebp),%eax
	jge	Lj2587
	jmp	Lj2589
Lj2589:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	movl	-68(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_RPOSEX$CHAR$ANSISTRING$LONGWORD$$LONGINT
_STRUTILS_RPOSEX$CHAR$ANSISTRING$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
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
	.align 2
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
	.align 4
.globl	_STRUTILS_RPOS$CHAR$ANSISTRING$$LONGINT
_STRUTILS_RPOS$CHAR$ANSISTRING$$LONGINT:
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
	.align 2
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
	.align 4
.globl	_STRUTILS_RPOS$ANSISTRING$ANSISTRING$$LONGINT
_STRUTILS_RPOS$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
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
	.align 2
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
	call	L_SYSTEM_COMPARECHAR$formal$formal$LONGINT$$LONGINT$stub
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
	.align 4
.globl	_STRUTILS_RPOSEX$ANSISTRING$ANSISTRING$LONGWORD$$LONGINT
_STRUTILS_RPOSEX$ANSISTRING$ANSISTRING$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
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
	.align 2
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
	call	L_SYSTEM_COMPARECHAR$formal$formal$LONGINT$$LONGINT$stub
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
	.align 4
.globl	_STRUTILS_BINTOHEX$PCHAR$PCHAR$LONGINT
_STRUTILS_BINTOHEX$PCHAR$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	call	Lj2751
Lj2751:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj2753
	decl	-16(%ebp)
	.align 2
Lj2754:
	incl	-16(%ebp)
	movl	-4(%ebp),%edx
	movzbl	(%edx),%edx
	shrl	$4,%edx
	incl	%edx
	movzbl	%dl,%edx
	movl	-8(%ebp),%esi
	movl	L_$STRUTILS$_Ld39$non_lazy_ptr-Lj2751(%ebx),%ecx
	movb	(%ecx,%edx,1),%dl
	movb	%dl,(%esi)
	movl	-4(%ebp),%edx
	movb	(%edx),%dl
	andb	$15,%dl
	movzbl	%dl,%edx
	incl	%edx
	movzbl	%dl,%edx
	movl	-8(%ebp),%esi
	movl	L_$STRUTILS$_Ld39$non_lazy_ptr-Lj2751(%ebx),%ecx
	movb	(%ecx,%edx,1),%dl
	movb	%dl,1(%esi)
	addl	$2,-8(%ebp)
	incl	-4(%ebp)
	cmpl	-16(%ebp),%eax
	jg	Lj2754
Lj2753:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_HEXTOBIN$PCHAR$PCHAR$LONGINT$$LONGINT
_STRUTILS_HEXTOBIN$PCHAR$PCHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj2764
	.align 2
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
	.align 4
.globl	_STRUTILS_POSSETEX$TSYSCHARSET$ANSISTRING$LONGINT$$LONGINT
_STRUTILS_POSSETEX$TSYSCHARSET$ANSISTRING$LONGINT$$LONGINT:
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
	.align 2
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
	.align 4
.globl	_STRUTILS_POSSET$TSYSCHARSET$ANSISTRING$$LONGINT
_STRUTILS_POSSET$TSYSCHARSET$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	L_STRUTILS_POSSETEX$TSYSCHARSET$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_POSSETEX$ANSISTRING$ANSISTRING$LONGINT$$LONGINT
_STRUTILS_POSSETEX$ANSISTRING$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
	call	Lj2833
Lj2833:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	leal	-48(%ebp),%edi
	movl	L_$STRUTILS$_Ld38$non_lazy_ptr-Lj2833(%ebx),%eax
	movl	%eax,%esi
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
	.align 2
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
	call	L_STRUTILS_POSSETEX$TSYSCHARSET$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_POSSET$ANSISTRING$ANSISTRING$$LONGINT
_STRUTILS_POSSET$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%edi,-56(%ebp)
	call	Lj2852
Lj2852:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-48(%ebp),%edi
	movl	L_$STRUTILS$_Ld38$non_lazy_ptr-Lj2852(%ebx),%eax
	movl	%eax,%esi
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
	movl	$1,-52(%ebp)
	cmpl	-52(%ebp),%eax
	jl	Lj2859
	decl	-52(%ebp)
	.align 2
Lj2860:
	incl	-52(%ebp)
	movl	-4(%ebp),%ecx
	movl	-52(%ebp),%edx
	movzbl	-1(%ecx,%edx,1),%edx
	btsl	%edx,-48(%ebp)
	cmpl	-52(%ebp),%eax
	jg	Lj2860
Lj2859:
Lj2856:
	movl	-8(%ebp),%edx
	leal	-48(%ebp),%eax
	movl	$1,%ecx
	call	L_STRUTILS_POSSETEX$TSYSCHARSET$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	movl	-56(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_REMOVELEADINGCHARS$ANSISTRING$TSYSCHARSET
_STRUTILS_REMOVELEADINGCHARS$ANSISTRING$TSYSCHARSET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	.align 2
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
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
Lj2884:
Lj2876:
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_TRIMLEFTSET$ANSISTRING$TSYSCHARSET$$ANSISTRING
_STRUTILS_TRIMLEFTSET$ANSISTRING$TSYSCHARSET$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_STRUTILS_REMOVELEADINGCHARS$ANSISTRING$TSYSCHARSET$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_REMOVETRAILINGCHARS$ANSISTRING$TSYSCHARSET
_STRUTILS_REMOVETRAILINGCHARS$ANSISTRING$TSYSCHARSET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	.align 2
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
	call	Lfpc_ansistr_setlength$stub
Lj2913:
Lj2905:
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_TRIMRIGHTSET$ANSISTRING$TSYSCHARSET$$ANSISTRING
_STRUTILS_TRIMRIGHTSET$ANSISTRING$TSYSCHARSET$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_STRUTILS_REMOVETRAILINGCHARS$ANSISTRING$TSYSCHARSET$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_REMOVEPADCHARS$ANSISTRING$TSYSCHARSET
_STRUTILS_REMOVEPADCHARS$ANSISTRING$TSYSCHARSET:
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
	.align 2
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%ebx)
	jmp	Lj2926
Lj2940:
	movl	$1,-20(%ebp)
	jmp	Lj2946
	.align 2
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
	call	Lfpc_ansistr_unique$stub
	movl	%eax,%edx
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%ebx
	movl	-20(%ebp),%eax
	leal	-1(%ebx,%eax,1),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	jmp	Lj2963
Lj2950:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
Lj2963:
Lj2932:
Lj2926:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STRUTILS_TRIMSET$ANSISTRING$TSYSCHARSET$$ANSISTRING
_STRUTILS_TRIMSET$ANSISTRING$TSYSCHARSET$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_STRUTILS_REMOVEPADCHARS$ANSISTRING$TSYSCHARSET$stub
	movl	-16(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_STRUTILS
_THREADVARLIST_STRUTILS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.const_data
	.align 2
.globl	_$STRUTILS$_Ld9
_$STRUTILS$_Ld9:
	.short	0,1
	.long	0,-1,1
.reference _$STRUTILS$_Ld8
.globl	_$STRUTILS$_Ld8
_$STRUTILS$_Ld8:
.reference _$STRUTILS$_Ld9
	.ascii	"I\000"

.const_data
	.align 2
.globl	_$STRUTILS$_Ld11
_$STRUTILS$_Ld11:
	.short	0,1
	.long	0,-1,2
.reference _$STRUTILS$_Ld10
.globl	_$STRUTILS$_Ld10
_$STRUTILS$_Ld10:
.reference _$STRUTILS$_Ld11
	.ascii	"IV\000"

.const_data
	.align 2
.globl	_$STRUTILS$_Ld13
_$STRUTILS$_Ld13:
	.short	0,1
	.long	0,-1,1
.reference _$STRUTILS$_Ld12
.globl	_$STRUTILS$_Ld12
_$STRUTILS$_Ld12:
.reference _$STRUTILS$_Ld13
	.ascii	"V\000"

.const_data
	.align 2
.globl	_$STRUTILS$_Ld15
_$STRUTILS$_Ld15:
	.short	0,1
	.long	0,-1,2
.reference _$STRUTILS$_Ld14
.globl	_$STRUTILS$_Ld14
_$STRUTILS$_Ld14:
.reference _$STRUTILS$_Ld15
	.ascii	"IX\000"

.const_data
	.align 2
.globl	_$STRUTILS$_Ld17
_$STRUTILS$_Ld17:
	.short	0,1
	.long	0,-1,1
.reference _$STRUTILS$_Ld16
.globl	_$STRUTILS$_Ld16
_$STRUTILS$_Ld16:
.reference _$STRUTILS$_Ld17
	.ascii	"X\000"

.const_data
	.align 2
.globl	_$STRUTILS$_Ld19
_$STRUTILS$_Ld19:
	.short	0,1
	.long	0,-1,2
.reference _$STRUTILS$_Ld18
.globl	_$STRUTILS$_Ld18
_$STRUTILS$_Ld18:
.reference _$STRUTILS$_Ld19
	.ascii	"XL\000"

.const_data
	.align 2
.globl	_$STRUTILS$_Ld21
_$STRUTILS$_Ld21:
	.short	0,1
	.long	0,-1,1
.reference _$STRUTILS$_Ld20
.globl	_$STRUTILS$_Ld20
_$STRUTILS$_Ld20:
.reference _$STRUTILS$_Ld21
	.ascii	"L\000"

.const_data
	.align 2
.globl	_$STRUTILS$_Ld23
_$STRUTILS$_Ld23:
	.short	0,1
	.long	0,-1,2
.reference _$STRUTILS$_Ld22
.globl	_$STRUTILS$_Ld22
_$STRUTILS$_Ld22:
.reference _$STRUTILS$_Ld23
	.ascii	"XC\000"

.const_data
	.align 2
.globl	_$STRUTILS$_Ld25
_$STRUTILS$_Ld25:
	.short	0,1
	.long	0,-1,1
.reference _$STRUTILS$_Ld24
.globl	_$STRUTILS$_Ld24
_$STRUTILS$_Ld24:
.reference _$STRUTILS$_Ld25
	.ascii	"C\000"

.const_data
	.align 2
.globl	_$STRUTILS$_Ld27
_$STRUTILS$_Ld27:
	.short	0,1
	.long	0,-1,2
.reference _$STRUTILS$_Ld26
.globl	_$STRUTILS$_Ld26
_$STRUTILS$_Ld26:
.reference _$STRUTILS$_Ld27
	.ascii	"CD\000"

.const_data
	.align 2
.globl	_$STRUTILS$_Ld29
_$STRUTILS$_Ld29:
	.short	0,1
	.long	0,-1,1
.reference _$STRUTILS$_Ld28
.globl	_$STRUTILS$_Ld28
_$STRUTILS$_Ld28:
.reference _$STRUTILS$_Ld29
	.ascii	"D\000"

.const_data
	.align 2
.globl	_$STRUTILS$_Ld31
_$STRUTILS$_Ld31:
	.short	0,1
	.long	0,-1,2
.reference _$STRUTILS$_Ld30
.globl	_$STRUTILS$_Ld30
_$STRUTILS$_Ld30:
.reference _$STRUTILS$_Ld31
	.ascii	"CM\000"

.const_data
	.align 2
.globl	_$STRUTILS$_Ld33
_$STRUTILS$_Ld33:
	.short	0,1
	.long	0,-1,1
.reference _$STRUTILS$_Ld32
.globl	_$STRUTILS$_Ld32
_$STRUTILS$_Ld32:
.reference _$STRUTILS$_Ld33
	.ascii	"M\000"

.data
	.align 2
.globl	_$STRUTILS$_Ld41
_$STRUTILS$_Ld41:
	.short	0,1
	.long	0,-1,8
.reference _$STRUTILS$_Ld40
.globl	_$STRUTILS$_Ld40
_$STRUTILS$_Ld40:
.reference _$STRUTILS$_Ld41
	.ascii	"STRUTILS\000"

.const_data
	.align 2
.globl	_$STRUTILS$_Ld43
_$STRUTILS$_Ld43:
	.short	0,1
	.long	0,-1,48
.reference _$STRUTILS$_Ld42
.globl	_$STRUTILS$_Ld42
_$STRUTILS$_Ld42:
.reference _$STRUTILS$_Ld43
	.ascii	"Amount of search and replace strings don't match\000"
	.align 2
.globl	_$STRUTILS$_Ld45
_$STRUTILS$_Ld45:
	.short	0,1
	.long	0,-1,26
.reference _$STRUTILS$_Ld44
.globl	_$STRUTILS$_Ld44
_$STRUTILS$_Ld44:
.reference _$STRUTILS$_Ld45
	.ascii	"strutils.serramountstrings\000"

.const_data
	.align 2
.globl	_$STRUTILS$_Ld47
_$STRUTILS$_Ld47:
	.short	0,1
	.long	0,-1,31
.reference _$STRUTILS$_Ld46
.globl	_$STRUTILS$_Ld46
_$STRUTILS$_Ld46:
.reference _$STRUTILS$_Ld47
	.ascii	"%s is not a valid Roman numeral\000"
	.align 2
.globl	_$STRUTILS$_Ld49
_$STRUTILS$_Ld49:
	.short	0,1
	.long	0,-1,29
.reference _$STRUTILS$_Ld48
.globl	_$STRUTILS$_Ld48
_$STRUTILS$_Ld48:
.reference _$STRUTILS$_Ld49
	.ascii	"strutils.sinvalidromannumeral\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 3
.globl	_TC_STRUTILS_WORDDELIMITERS
_TC_STRUTILS_WORDDELIMITERS:
	.byte	255,255,255,255,255,255,0,252,1,0,0,248,1,0,0,248,255,255,255,255,255,255,255,255,255,255,255,255,255
	.byte	255,255,255

.data
	.align 2
.globl	_TC_STRUTILS_ANSIRESEMBLESPROC
_TC_STRUTILS_ANSIRESEMBLESPROC:
	.long	_STRUTILS_SOUNDEXPROC$ANSISTRING$ANSISTRING$$BOOLEAN

.const_data
	.align 2
.globl	_$STRUTILS$_Ld2
_$STRUTILS$_Ld2:
	.short	0,1
	.long	0,-1,1
.reference _$STRUTILS$_Ld1
.globl	_$STRUTILS$_Ld1
_$STRUTILS$_Ld1:
.reference _$STRUTILS$_Ld2
	.ascii	"$\000"

.data
.globl	_TC_STRUTILS_SSCORE
_TC_STRUTILS_SSCORE:
	.byte	48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48
	.byte	48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,49,50,51,48,49,50,105
	.byte	48,50,50,52,53,53,48,49,50,54,50,51,48,49,105,50,105,50,48,48,48,48,48,48,48,49,50,51,48,49,50,105,48,50
	.byte	50,52,53,53,48,49,50,54,50,51,48,49,105,50,105,50,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48
	.byte	48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48
	.byte	48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48
	.byte	48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48
	.byte	48,48,48,48,48,48

.const
	.align 3
.globl	_$STRUTILS$_Ld3
_$STRUTILS$_Ld3:
	.byte	0,0,0,0,0,0,1,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const_data
	.align 2
.globl	_$STRUTILS$_Ld5
_$STRUTILS$_Ld5:
	.short	0,1
	.long	0,-1,1
.reference _$STRUTILS$_Ld4
.globl	_$STRUTILS$_Ld4
_$STRUTILS$_Ld4:
.reference _$STRUTILS$_Ld5
	.ascii	",\000"

.const_data
	.align 2
.globl	_$STRUTILS$_Ld7
_$STRUTILS$_Ld7:
	.short	0,1
	.long	0,-1,1
.reference _$STRUTILS$_Ld6
.globl	_$STRUTILS$_Ld6
_$STRUTILS$_Ld6:
.reference _$STRUTILS$_Ld7
	.ascii	"0\000"

.data
	.align 1
.globl	_TC_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_ROMANVALUES
_TC_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_ROMANVALUES:
	.short	100,500,0,0,0,0,1,0,0,50,1000,0,0,0,0,0,0,0,0,5,0,10

.data
	.align 2
.globl	_TC_STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING_ARABICS
_TC_STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING_ARABICS:
	.long	1,4,5,9,10,40,50,90,100,400,500,900,1000

.data
	.align 2
.globl	_TC_STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING_ROMANS
_TC_STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING_ROMANS:
	.long	_$STRUTILS$_Ld8
	.long	_$STRUTILS$_Ld10
	.long	_$STRUTILS$_Ld12
	.long	_$STRUTILS$_Ld14
	.long	_$STRUTILS$_Ld16
	.long	_$STRUTILS$_Ld18
	.long	_$STRUTILS$_Ld20
	.long	_$STRUTILS$_Ld22
	.long	_$STRUTILS$_Ld24
	.long	_$STRUTILS$_Ld26
	.long	_$STRUTILS$_Ld28
	.long	_$STRUTILS$_Ld30
	.long	_$STRUTILS$_Ld32

.const_data
	.align 2
.globl	_$STRUTILS$_Ld35
_$STRUTILS$_Ld35:
	.short	0,1
	.long	0,-1,2
.reference _$STRUTILS$_Ld34
.globl	_$STRUTILS$_Ld34
_$STRUTILS$_Ld34:
.reference _$STRUTILS$_Ld35
	.ascii	"**\000"

.const_data
	.align 2
.globl	_$STRUTILS$_Ld37
_$STRUTILS$_Ld37:
	.short	0,1
	.long	0,-1,1
.reference _$STRUTILS$_Ld36
.globl	_$STRUTILS$_Ld36
_$STRUTILS$_Ld36:
.reference _$STRUTILS$_Ld37
	.ascii	"*\000"

.const
	.align 3
.globl	_$STRUTILS$_Ld38
_$STRUTILS$_Ld38:
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.const
	.align 2
.globl	_$STRUTILS$_Ld39
_$STRUTILS$_Ld39:
	.ascii	"\0200123456789ABCDEF\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_PUSHEXCEPTADDR$stub:
.indirect_symbol FPC_PUSHEXCEPTADDR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SETJMP$stub:
.indirect_symbol FPC_SETJMP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_concat$stub:
.indirect_symbol fpc_ansistr_concat
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTOINT$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_STRTOINT$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPADDRSTACK$stub:
.indirect_symbol FPC_POPADDRSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_RERAISE$stub:
.indirect_symbol FPC_RERAISE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_decr_ref$stub:
.indirect_symbol fpc_ansistr_decr_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_ANSIPOS$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_ANSIPOS$ANSISTRING$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_ANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$LONGINT$stub:
.indirect_symbol _SYSUTILS_ANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_ANSIINDEXTEXT$ANSISTRING$array_of_ANSISTRING$$LONGINT$stub:
.indirect_symbol _STRUTILS_ANSIINDEXTEXT$ANSISTRING$array_of_ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_ANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$LONGINT$stub:
.indirect_symbol _SYSUTILS_ANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_ANSIINDEXSTR$ANSISTRING$array_of_ANSISTRING$$LONGINT$stub:
.indirect_symbol _STRUTILS_ANSIINDEXSTR$ANSISTRING$array_of_ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_compare_equal$stub:
.indirect_symbol fpc_ansistr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_setlength$stub:
.indirect_symbol fpc_ansistr_setlength
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_unique$stub:
.indirect_symbol fpc_ansistr_unique
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

L_STRUTILS_REVERSESTRING$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _STRUTILS_REVERSESTRING$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_RANDOM$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSTEM_RANDOM$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_copy$stub:
.indirect_symbol fpc_ansistr_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_RIGHTSTR$ANSISTRING$LONGINT$$ANSISTRING$stub:
.indirect_symbol _STRUTILS_RIGHTSTR$ANSISTRING$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_copy$stub:
.indirect_symbol fpc_unicodestr_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_LOWERCASE$CHAR$$CHAR$stub:
.indirect_symbol _SYSTEM_LOWERCASE$CHAR$$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_ISWHOLEWORD$PCHAR$PCHAR$PCHAR$PCHAR$$BOOLEAN$stub:
.indirect_symbol _STRUTILS_ISWHOLEWORD$PCHAR$PCHAR$PCHAR$PCHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_SEARCHDOWN$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR$stub:
.indirect_symbol _STRUTILS_SEARCHDOWN$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_SEARCHUP$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR$stub:
.indirect_symbol _STRUTILS_SEARCHUP$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_SEARCHBUF$crc48FA91CD$stub:
.indirect_symbol _STRUTILS_SEARCHBUF$crc48FA91CD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT$stub:
.indirect_symbol _SYSTEM_INDEXBYTE$formal$LONGINT$BYTE$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_POSEX$ANSISTRING$ANSISTRING$LONGWORD$$LONGINT$stub:
.indirect_symbol _STRUTILS_POSEX$ANSISTRING$ANSISTRING$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_GETMEM$stub:
.indirect_symbol FPC_GETMEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_MOVE$stub:
.indirect_symbol FPC_MOVE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ADDREF_ARRAY$stub:
.indirect_symbol FPC_ADDREF_ARRAY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_RAISEEXCEPTION$stub:
.indirect_symbol FPC_RAISEEXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_char_to_ansistr$stub:
.indirect_symbol fpc_char_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRPAS$PCHAR$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_STRPAS$PCHAR$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DECREF_ARRAY$stub:
.indirect_symbol FPC_DECREF_ARRAY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_FREEMEM$stub:
.indirect_symbol FPC_FREEMEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_UPCASE$CHAR$$CHAR$stub:
.indirect_symbol _SYSTEM_UPCASE$CHAR$$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_varset_set$stub:
.indirect_symbol fpc_varset_set
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING$stub:
.indirect_symbol _STRUTILS_SOUNDEX$ANSISTRING$TSOUNDEXLENGTH$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_SOUNDEXINT$ANSISTRING$TSOUNDEXINTLENGTH$$LONGINT$stub:
.indirect_symbol _STRUTILS_SOUNDEXINT$ANSISTRING$TSOUNDEXINTLENGTH$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_DELCHARS$ANSISTRING$CHAR$$ANSISTRING$stub:
.indirect_symbol _STRUTILS_DELCHARS$ANSISTRING$CHAR$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_INSERT$ANSISTRING$ANSISTRING$LONGINT$stub:
.indirect_symbol _SYSTEM_INSERT$ANSISTRING$ANSISTRING$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_ADDCHARR$CHAR$ANSISTRING$LONGINT$$ANSISTRING$stub:
.indirect_symbol _STRUTILS_ADDCHARR$CHAR$ANSISTRING$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_ADDCHAR$CHAR$ANSISTRING$LONGINT$$ANSISTRING$stub:
.indirect_symbol _STRUTILS_ADDCHAR$CHAR$ANSISTRING$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_COPY2SYMB$ANSISTRING$CHAR$$ANSISTRING$stub:
.indirect_symbol _STRUTILS_COPY2SYMB$ANSISTRING$CHAR$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_COPY2SYMBDEL$ANSISTRING$CHAR$$ANSISTRING$stub:
.indirect_symbol _STRUTILS_COPY2SYMBDEL$ANSISTRING$CHAR$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_EXTRACTWORDPOS$LONGINT$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING$stub:
.indirect_symbol _STRUTILS_EXTRACTWORDPOS$LONGINT$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_WORDPOSITION$LONGINT$ANSISTRING$TSYSCHARSET$$LONGINT$stub:
.indirect_symbol _STRUTILS_WORDPOSITION$LONGINT$ANSISTRING$TSYSCHARSET$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_WORDCOUNT$ANSISTRING$TSYSCHARSET$$LONGINT$stub:
.indirect_symbol _STRUTILS_WORDCOUNT$ANSISTRING$TSYSCHARSET$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT$stub:
.indirect_symbol _STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_TRYROMANTOINT$ANSISTRING$LONGINT$TROMANCONVERSIONSTRICTNESS$$BOOLEAN$stub:
.indirect_symbol _STRUTILS_TRYROMANTOINT$ANSISTRING$LONGINT$TROMANCONVERSIONSTRICTNESS$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_INTTOBIN$LONGINT$LONGINT$$ANSISTRING$stub:
.indirect_symbol _STRUTILS_INTTOBIN$LONGINT$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$CHAR$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_concat_multi$stub:
.indirect_symbol fpc_ansistr_concat_multi
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_ISWILD$crc615EB9FF_SEARCHNEXT$ANSISTRING$$LONGINT$stub:
.indirect_symbol _STRUTILS_ISWILD$crc615EB9FF_SEARCHNEXT$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_FINDPART$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _STRUTILS_FINDPART$ANSISTRING$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_shortstr$stub:
.indirect_symbol fpc_shortstr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_INTTOHEX$LONGINT$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOHEX$LONGINT$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_OBJPAS_PARAMSTR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _OBJPAS_PARAMSTR$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_varset_comp_sets$stub:
.indirect_symbol fpc_varset_comp_sets
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_PARAMCOUNT$$LONGINT$stub:
.indirect_symbol _SYSTEM_PARAMCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_COMPARECHAR$formal$formal$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSTEM_COMPARECHAR$formal$formal$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_POSSETEX$TSYSCHARSET$ANSISTRING$LONGINT$$LONGINT$stub:
.indirect_symbol _STRUTILS_POSSETEX$TSYSCHARSET$ANSISTRING$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_REMOVELEADINGCHARS$ANSISTRING$TSYSCHARSET$stub:
.indirect_symbol _STRUTILS_REMOVELEADINGCHARS$ANSISTRING$TSYSCHARSET
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_REMOVETRAILINGCHARS$ANSISTRING$TSYSCHARSET$stub:
.indirect_symbol _STRUTILS_REMOVETRAILINGCHARS$ANSISTRING$TSYSCHARSET
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STRUTILS_REMOVEPADCHARS$ANSISTRING$TSYSCHARSET$stub:
.indirect_symbol _STRUTILS_REMOVEPADCHARS$ANSISTRING$TSYSCHARSET
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

.const_data
	.align 2
.globl	_INIT_STRUTILS_DEF6
_INIT_STRUTILS_DEF6:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_STRUTILS_DEF8
_INIT_STRUTILS_DEF8:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_STRUTILS_DEF14
_INIT_STRUTILS_DEF14:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_STRUTILS_DEF16
_INIT_STRUTILS_DEF16:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_STRUTILS_DEF22
_INIT_STRUTILS_DEF22:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_STRUTILS_TSTRINGSEARCHOPTION
_INIT_STRUTILS_TSTRINGSEARCHOPTION:
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

.const_data
	.align 2
.globl	_RTTI_STRUTILS_TSTRINGSEARCHOPTION
_RTTI_STRUTILS_TSTRINGSEARCHOPTION:
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

.const_data
	.align 2
.globl	_RTTI_STRUTILS_TSTRINGSEARCHOPTION_s2o
_RTTI_STRUTILS_TSTRINGSEARCHOPTION_s2o:
	.long	3,0
	.long	_RTTI_STRUTILS_TSTRINGSEARCHOPTION+34
	.long	1
	.long	_RTTI_STRUTILS_TSTRINGSEARCHOPTION+41
	.long	2
	.long	_RTTI_STRUTILS_TSTRINGSEARCHOPTION+53

.const_data
	.align 2
.globl	_RTTI_STRUTILS_TSTRINGSEARCHOPTION_o2s
_RTTI_STRUTILS_TSTRINGSEARCHOPTION_o2s:
	.long	0
	.long	_RTTI_STRUTILS_TSTRINGSEARCHOPTION+34
	.long	_RTTI_STRUTILS_TSTRINGSEARCHOPTION+41
	.long	_RTTI_STRUTILS_TSTRINGSEARCHOPTION+53

.const_data
	.align 2
.globl	_INIT_STRUTILS_TSTRINGSEARCHOPTIONS
_INIT_STRUTILS_TSTRINGSEARCHOPTIONS:
	.byte	5,20
	.ascii	"TStringSearchOptions"
	.byte	5
	.long	_INIT_STRUTILS_TSTRINGSEARCHOPTION

.const_data
	.align 2
.globl	_RTTI_STRUTILS_TSTRINGSEARCHOPTIONS
_RTTI_STRUTILS_TSTRINGSEARCHOPTIONS:
	.byte	5,20
	.ascii	"TStringSearchOptions"
	.byte	5
	.long	_RTTI_STRUTILS_TSTRINGSEARCHOPTION

.const_data
	.align 2
.globl	_INIT_STRUTILS_DEF49
_INIT_STRUTILS_DEF49:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_STRUTILS_TSOUNDEXLENGTH
_INIT_STRUTILS_TSOUNDEXLENGTH:
	.byte	1,14
	.ascii	"TSoundexLength"
	.byte	4
	.long	1,2147483647

.const_data
	.align 2
.globl	_RTTI_STRUTILS_TSOUNDEXLENGTH
_RTTI_STRUTILS_TSOUNDEXLENGTH:
	.byte	1,14
	.ascii	"TSoundexLength"
	.byte	4
	.long	1,2147483647

.const_data
	.align 2
.globl	_INIT_STRUTILS_TSOUNDEXINTLENGTH
_INIT_STRUTILS_TSOUNDEXINTLENGTH:
	.byte	1,17
	.ascii	"TSoundexIntLength"
	.byte	0
	.long	1,8

.const_data
	.align 2
.globl	_RTTI_STRUTILS_TSOUNDEXINTLENGTH
_RTTI_STRUTILS_TSOUNDEXINTLENGTH:
	.byte	1,17
	.ascii	"TSoundexIntLength"
	.byte	0
	.long	1,8

.const_data
	.align 2
.globl	_INIT_STRUTILS_TCOMPARETEXTPROC
_INIT_STRUTILS_TCOMPARETEXTPROC:
	.byte	23,16
	.ascii	"TCompareTextProc"

.const_data
	.align 2
.globl	_RTTI_STRUTILS_TCOMPARETEXTPROC
_RTTI_STRUTILS_TCOMPARETEXTPROC:
	.byte	23,16
	.ascii	"TCompareTextProc"

.const_data
	.align 2
.globl	_INIT_STRUTILS_TROMANCONVERSIONSTRICTNESS
_INIT_STRUTILS_TROMANCONVERSIONSTRICTNESS:
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

.const_data
	.align 2
.globl	_RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS
_RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS:
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

.const_data
	.align 2
.globl	_RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS_s2o
_RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS_s2o:
	.long	3,2
	.long	_RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS+62
	.long	1
	.long	_RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS+51
	.long	0
	.long	_RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS+41

.const_data
	.align 2
.globl	_RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS_o2s
_RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS_o2s:
	.long	0
	.long	_RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS+41
	.long	_RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS+51
	.long	_RTTI_STRUTILS_TROMANCONVERSIONSTRICTNESS+62

.const_data
	.align 2
.globl	_INIT_STRUTILS_DEF288
_INIT_STRUTILS_DEF288:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_STRUTILS_DEF266
_INIT_STRUTILS_DEF266:
	.byte	12
	.ascii	"\000"
	.long	4,13
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_STRUTILS_DEF262
_INIT_STRUTILS_DEF262:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
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

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STRUTILS$_Ld1$non_lazy_ptr:
.indirect_symbol _$STRUTILS$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_STRUTILS_ANSIRESEMBLESPROC$non_lazy_ptr:
.indirect_symbol _TC_STRUTILS_ANSIRESEMBLESPROC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_WIDESTRINGMANAGER$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_WIDESTRINGMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_STRUTILS_WORDDELIMITERS$non_lazy_ptr:
.indirect_symbol _TC_STRUTILS_WORDDELIMITERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_STRUTILS_EQUALWITHCASE$CHAR$CHAR$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _STRUTILS_EQUALWITHCASE$CHAR$CHAR$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_STRUTILS_EQUALWITHOUTCASE$CHAR$CHAR$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _STRUTILS_EQUALWITHOUTCASE$CHAR$CHAR$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_SYSTEM_ANSISTRING$non_lazy_ptr:
.indirect_symbol _INIT_SYSTEM_ANSISTRING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STRUTILS_SERRAMOUNTSTRINGS$non_lazy_ptr:
.indirect_symbol _RESSTR_STRUTILS_SERRAMOUNTSTRINGS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EXCEPTION$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EXCEPTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_STRUTILS_SSCORE$non_lazy_ptr:
.indirect_symbol _TC_STRUTILS_SSCORE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STRUTILS$_Ld3$non_lazy_ptr:
.indirect_symbol _$STRUTILS$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STRUTILS$_Ld4$non_lazy_ptr:
.indirect_symbol _$STRUTILS$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STRUTILS$_Ld6$non_lazy_ptr:
.indirect_symbol _$STRUTILS$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_ROMANVALUES$non_lazy_ptr:
.indirect_symbol _TC_STRUTILS_ROMANTOINTDONTCARE$ANSISTRING$$LONGINT_ROMANVALUES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STRUTILS_SINVALIDROMANNUMERAL$non_lazy_ptr:
.indirect_symbol _RESSTR_STRUTILS_SINVALIDROMANNUMERAL
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_ECONVERTERROR$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_ECONVERTERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING_ARABICS$non_lazy_ptr:
.indirect_symbol _TC_STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING_ARABICS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING_ROMANS$non_lazy_ptr:
.indirect_symbol _TC_STRUTILS_INTTOROMAN$LONGINT$$ANSISTRING_ROMANS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STRUTILS$_Ld34$non_lazy_ptr:
.indirect_symbol _$STRUTILS$_Ld34
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STRUTILS$_Ld36$non_lazy_ptr:
.indirect_symbol _$STRUTILS$_Ld36
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STRUTILS$_Ld38$non_lazy_ptr:
.indirect_symbol _$STRUTILS$_Ld38
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STRUTILS$_Ld39$non_lazy_ptr:
.indirect_symbol _$STRUTILS$_Ld39
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_STRUTILS_START
_RESSTR_STRUTILS_START:
	.long	_$STRUTILS$_Ld40
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_STRUTILS_SERRAMOUNTSTRINGS
_RESSTR_STRUTILS_SERRAMOUNTSTRINGS:
	.long	_$STRUTILS$_Ld44
	.long	_$STRUTILS$_Ld42
	.long	_$STRUTILS$_Ld42
	.long	62435464

.data
	.align 2
.globl	_RESSTR_STRUTILS_SINVALIDROMANNUMERAL
_RESSTR_STRUTILS_SINVALIDROMANNUMERAL:
	.long	_$STRUTILS$_Ld48
	.long	_$STRUTILS$_Ld46
	.long	_$STRUTILS$_Ld46
	.long	196294748

.data
	.align 2
.globl	_RESSTR_STRUTILS_END
_RESSTR_STRUTILS_END:
	.long	_RESSTR_STRUTILS_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

