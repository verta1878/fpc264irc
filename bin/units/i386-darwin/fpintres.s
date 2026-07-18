# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPINTRES_RESSTRICOMP$PCHAR$PCHAR$$LONGINT
_FPINTRES_RESSTRICOMP$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	(%eax,%edx,1),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	movb	%al,-17(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	(%eax,%edx,1),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	movb	%al,-18(%ebp)
	jmp	Lj16
	.align 2
Lj15:
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj18
	jmp	Lj20
Lj20:
	movb	-18(%ebp),%al
	testb	%al,%al
	je	Lj18
	jmp	Lj19
Lj18:
	jmp	Lj17
Lj19:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	(%eax,%edx,1),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	movb	%al,-17(%ebp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%edx,%eax,1),%al
	call	L_SYSTEM_UPCASE$CHAR$$CHAR$stub
	movb	%al,-18(%ebp)
Lj16:
	movb	-17(%ebp),%al
	cmpb	-18(%ebp),%al
	je	Lj15
	jmp	Lj17
Lj17:
	movzbl	-17(%ebp),%edx
	movzbl	-18(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPINTRES_INTERNALISINTRESOURCE$PCHAR$LONGWORD$$BOOLEAN
_FPINTRES_INTERNALISINTRESOURCE$PCHAR$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	shrl	$16,%eax
	testl	%eax,%eax
	seteb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj35
	jmp	Lj36
Lj35:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	jmp	Lj39
Lj36:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$35,%al
	je	Lj40
	jmp	Lj41
Lj40:
	movw	$1,-12(%ebp)
	jmp	Lj45
	.align 2
Lj44:
	incw	-12(%ebp)
Lj45:
	movl	-4(%ebp),%edx
	movswl	-12(%ebp),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	jne	Lj44
	jmp	Lj46
Lj46:
	movw	-12(%ebp),%ax
	cmpw	$256,%ax
	jg	Lj47
	jmp	Lj48
Lj47:
	movw	$256,-12(%ebp)
Lj48:
	movswl	-12(%ebp),%eax
	decl	%eax
	movb	%al,-268(%ebp)
	movswl	-12(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	leal	-267(%ebp),%edx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	leal	-276(%ebp),%edx
	leal	-268(%ebp),%eax
	call	Lfpc_val_uint_shortstr$stub
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movw	-276(%ebp),%ax
	movw	%ax,-270(%ebp)
	movzwl	-270(%ebp),%eax
	testl	%eax,%eax
	seteb	-9(%ebp)
Lj41:
Lj39:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_FPINTRES_BINSEARCHSTR$PRESINFONODE$PCHAR$SMALLINT$SMALLINT$$PRESINFONODE
_FPINTRES_BINSEARCHSTR$PRESINFONODE$PCHAR$SMALLINT$SMALLINT$$PRESINFONODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj74
	.align 2
Lj73:
	movswl	-12(%ebp),%eax
	movswl	8(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movw	%ax,-18(%ebp)
	movl	-4(%ebp),%edx
	movswl	-18(%ebp),%eax
	shll	$4,%eax
	movl	(%edx,%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	call	L_FPINTRES_RESSTRICOMP$PCHAR$PCHAR$$LONGINT$stub
	movw	%ax,-20(%ebp)
	movw	-20(%ebp),%ax
	cmpw	$0,%ax
	jl	Lj86
	jmp	Lj87
Lj86:
	movswl	-18(%ebp),%eax
	incl	%eax
	movw	%ax,-12(%ebp)
	jmp	Lj90
Lj87:
	movw	-20(%ebp),%ax
	cmpw	$0,%ax
	jg	Lj91
	jmp	Lj92
Lj91:
	movswl	-18(%ebp),%eax
	decl	%eax
	movw	%ax,8(%ebp)
	jmp	Lj95
Lj92:
	movl	-4(%ebp),%edx
	movswl	-18(%ebp),%eax
	shll	$4,%eax
	leal	(%edx,%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj69
Lj95:
Lj90:
Lj74:
	movw	-12(%ebp),%ax
	cmpw	8(%ebp),%ax
	jle	Lj73
	jmp	Lj75
Lj75:
Lj69:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPINTRES_BINSEARCHINT$PRESINFONODE$PCHAR$SMALLINT$SMALLINT$$PRESINFONODE
_FPINTRES_BINSEARCHINT$PRESINFONODE$PCHAR$SMALLINT$SMALLINT$$PRESINFONODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj103
	.align 2
Lj102:
	movswl	-12(%ebp),%eax
	movswl	8(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movw	%ax,-18(%ebp)
	movl	-4(%ebp),%edx
	movswl	-18(%ebp),%eax
	shll	$4,%eax
	movl	(%edx,%eax),%eax
	cmpl	-8(%ebp),%eax
	jb	Lj107
	jmp	Lj108
Lj107:
	movswl	-18(%ebp),%eax
	incl	%eax
	movw	%ax,-12(%ebp)
	jmp	Lj111
Lj108:
	movl	-4(%ebp),%edx
	movswl	-18(%ebp),%eax
	shll	$4,%eax
	movl	(%edx,%eax),%eax
	cmpl	-8(%ebp),%eax
	ja	Lj112
	jmp	Lj113
Lj112:
	movswl	-18(%ebp),%eax
	decl	%eax
	movw	%ax,8(%ebp)
	jmp	Lj116
Lj113:
	movl	-4(%ebp),%edx
	movswl	-18(%ebp),%eax
	shll	$4,%eax
	leal	(%edx,%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj98
Lj116:
Lj111:
Lj103:
	movw	-12(%ebp),%ax
	cmpw	8(%ebp),%ax
	jle	Lj102
	jmp	Lj104
Lj104:
Lj98:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPINTRES_BINSEARCHRES$PRESINFONODE$PCHAR$$PRESINFONODE
_FPINTRES_BINSEARCHRES$PRESINFONODE$PCHAR$$PRESINFONODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPINTRES_INTERNALISINTRESOURCE$PCHAR$LONGWORD$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj121
	jmp	Lj122
Lj121:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	4(%eax),%eax
	movl	8(%edx),%edx
	addl	%edx,%eax
	decl	%eax
	movw	%ax,(%esp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%cx
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_FPINTRES_BINSEARCHINT$PRESINFONODE$PCHAR$SMALLINT$SMALLINT$$PRESINFONODE$stub
	movl	%eax,-12(%ebp)
	jmp	Lj137
Lj122:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	decl	%eax
	movw	%ax,(%esp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	-8(%ebp),%edx
	movw	$0,%cx
	call	L_FPINTRES_BINSEARCHSTR$PRESINFONODE$PCHAR$SMALLINT$SMALLINT$$PRESINFONODE$stub
	movl	%eax,-12(%ebp)
Lj137:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPINTRES_INTERNALFINDRESOURCE$PCHAR$PCHAR$$PRESINFONODE
_FPINTRES_INTERNALFINDRESOURCE$PCHAR$PCHAR$$PRESINFONODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj149
Lj149:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj149(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj152
	jmp	Lj153
Lj152:
	jmp	Lj148
Lj153:
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj149(%ebx),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPINTRES_BINSEARCHRES$PRESINFONODE$PCHAR$$PRESINFONODE$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj162
	jmp	Lj163
Lj162:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPINTRES_BINSEARCHRES$PRESINFONODE$PCHAR$$PRESINFONODE$stub
	movl	%eax,-12(%ebp)
Lj163:
Lj148:
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPINTRES_FINDSUBLANGUAGE$PRESINFONODE$WORD$WORD$$PRESINFONODE
_FPINTRES_FINDSUBLANGUAGE$PRESINFONODE$WORD$WORD$$PRESINFONODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$0,-24(%ebp)
	jmp	Lj179
	.align 2
Lj178:
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	shll	$4,%eax
	movzwl	-12(%ebp),%ecx
	movl	(%edx,%eax),%ebx
	andl	%ecx,%ebx
	movw	-8(%ebp),%ax
	movw	-12(%ebp),%dx
	andw	%dx,%ax
	movzwl	%ax,%eax
	cmpl	%eax,%ebx
	je	Lj181
	jmp	Lj182
Lj181:
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	shll	$4,%eax
	leal	(%edx,%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj170
Lj182:
	incl	-24(%ebp)
Lj179:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	-24(%ebp),%eax
	ja	Lj178
	jmp	Lj180
Lj180:
Lj170:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPINTRES_INTHINSTANCE$$LONGWORD
_FPINTRES_INTHINSTANCE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$0,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPINTRES_INTENUMRESOURCETYPES$LONGWORD$ENUMRESTYPEPROC$LONGINT$$LONGBOOL
_FPINTRES_INTENUMRESOURCETYPES$LONGWORD$ENUMRESTYPEPROC$LONGINT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj190
Lj190:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj190(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj193
	jmp	Lj194
Lj193:
	jmp	Lj189
Lj194:
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj190(%ebx),%eax
	movl	(%eax),%eax
	movl	(%eax),%ecx
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj190(%ebx),%eax
	movl	(%eax),%eax
	movl	(%eax),%edx
	movl	4(%ecx),%eax
	movl	8(%edx),%edx
	addl	%edx,%eax
	movw	%ax,-22(%ebp)
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj190(%ebx),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$-1,-16(%ebp)
	movw	$0,-24(%ebp)
	jmp	Lj204
	.align 2
Lj203:
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	movswl	-24(%ebp),%eax
	shll	$4,%eax
	movl	(%edx,%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	call	*%eax
	testl	%eax,%eax
	je	Lj206
	jmp	Lj207
Lj206:
	jmp	Lj189
Lj207:
	incw	-24(%ebp)
Lj204:
	movw	-24(%ebp),%ax
	cmpw	-22(%ebp),%ax
	jl	Lj203
	jmp	Lj205
Lj205:
Lj189:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPINTRES_INTENUMRESOURCENAMES$LONGWORD$PCHAR$ENUMRESNAMEPROC$LONGINT$$LONGBOOL
_FPINTRES_INTENUMRESOURCENAMES$LONGWORD$PCHAR$ENUMRESNAMEPROC$LONGINT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	call	Lj215
Lj215:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj215(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj218
	jmp	Lj219
Lj218:
	jmp	Lj214
Lj219:
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj215(%ebx),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_FPINTRES_BINSEARCHRES$PRESINFONODE$PCHAR$$PRESINFONODE$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj228
	jmp	Lj229
Lj228:
	jmp	Lj214
Lj229:
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	4(%eax),%eax
	movl	8(%edx),%edx
	addl	%edx,%eax
	movw	%ax,-22(%ebp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$-1,-16(%ebp)
	movw	$0,-24(%ebp)
	jmp	Lj239
	.align 2
Lj238:
	movl	8(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	movswl	-24(%ebp),%eax
	shll	$4,%eax
	movl	(%edx,%eax),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	call	*%eax
	testl	%eax,%eax
	je	Lj241
	jmp	Lj242
Lj241:
	jmp	Lj214
Lj242:
	incw	-24(%ebp)
Lj239:
	movw	-24(%ebp),%ax
	cmpw	-22(%ebp),%ax
	jl	Lj238
	jmp	Lj240
Lj240:
Lj214:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPINTRES_INTENUMRESOURCELANGUAGES$LONGWORD$PCHAR$PCHAR$ENUMRESLANGPROC$LONGINT$$LONGBOOL
_FPINTRES_INTENUMRESOURCELANGUAGES$LONGWORD$PCHAR$PCHAR$ENUMRESLANGPROC$LONGINT$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPINTRES_INTERNALFINDRESOURCE$PCHAR$PCHAR$$PRESINFONODE$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj261
	jmp	Lj262
Lj261:
	jmp	Lj251
Lj262:
	movl	-20(%ebp),%eax
	movw	8(%eax),%ax
	movw	%ax,-22(%ebp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$-1,-16(%ebp)
	movw	$0,-24(%ebp)
	jmp	Lj272
	.align 2
Lj271:
	movl	8(%ebp),%eax
	movl	%eax,16(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	movswl	-24(%ebp),%eax
	shll	$4,%eax
	movzwl	(%edx,%eax),%eax
	movl	%eax,12(%esp)
	movl	12(%ebp),%eax
	call	*%eax
	testl	%eax,%eax
	je	Lj274
	jmp	Lj275
Lj274:
	jmp	Lj251
Lj275:
	incw	-24(%ebp)
Lj272:
	movw	-24(%ebp),%ax
	cmpw	-22(%ebp),%ax
	jl	Lj271
	jmp	Lj273
Lj273:
Lj251:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPINTRES_INTFINDRESOURCE$LONGWORD$PCHAR$PCHAR$$LONGWORD
_FPINTRES_INTFINDRESOURCE$LONGWORD$PCHAR$PCHAR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	call	Lj287
Lj287:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPINTRES_INTERNALFINDRESOURCE$PCHAR$PCHAR$$PRESINFONODE$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj296
	jmp	Lj297
Lj296:
	jmp	Lj286
Lj297:
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj300
	jmp	Lj301
Lj300:
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj287(%ebx),%eax
	movl	(%eax),%eax
	movl	12(%eax),%ecx
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj287(%ebx),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%ecx,%eax,4)
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj287(%ebx),%eax
	movl	(%eax),%eax
	incl	8(%eax)
	movl	-20(%ebp),%edx
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj287(%ebx),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,4(%edx)
Lj301:
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
Lj286:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPINTRES_INTFINDRESOURCEEX$LONGWORD$PCHAR$PCHAR$WORD$$LONGWORD
_FPINTRES_INTFINDRESOURCEEX$LONGWORD$PCHAR$PCHAR$WORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	call	Lj309
Lj309:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPINTRES_INTERNALFINDRESOURCE$PCHAR$PCHAR$$PRESINFONODE$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj318
	jmp	Lj319
Lj318:
	jmp	Lj308
Lj319:
	movw	8(%ebp),%dx
	movl	-20(%ebp),%eax
	movw	$65535,%cx
	call	L_FPINTRES_FINDSUBLANGUAGE$PRESINFONODE$WORD$WORD$$PRESINFONODE$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj328
	jmp	Lj329
Lj328:
	movw	8(%ebp),%dx
	movl	-20(%ebp),%eax
	movw	$1023,%cx
	call	L_FPINTRES_FINDSUBLANGUAGE$PRESINFONODE$WORD$WORD$$PRESINFONODE$stub
	movl	%eax,-24(%ebp)
Lj329:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj338
	jmp	Lj339
Lj338:
	movl	-20(%ebp),%eax
	movw	$1023,%cx
	movw	$0,%dx
	call	L_FPINTRES_FINDSUBLANGUAGE$PRESINFONODE$WORD$WORD$$PRESINFONODE$stub
	movl	%eax,-24(%ebp)
Lj339:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj348
	jmp	Lj349
Lj348:
	movl	-20(%ebp),%eax
	movw	$1023,%cx
	movw	$9,%dx
	call	L_FPINTRES_FINDSUBLANGUAGE$PRESINFONODE$WORD$WORD$$PRESINFONODE$stub
	movl	%eax,-24(%ebp)
Lj349:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj358
	jmp	Lj359
Lj358:
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-24(%ebp)
Lj359:
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj362
	jmp	Lj363
Lj362:
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj309(%ebx),%eax
	movl	(%eax),%eax
	movl	12(%eax),%ecx
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj309(%ebx),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movl	-24(%ebp),%edx
	movl	%edx,(%ecx,%eax,4)
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj309(%ebx),%eax
	movl	(%eax),%eax
	incl	8(%eax)
	movl	-24(%ebp),%edx
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj309(%ebx),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	movl	%eax,4(%edx)
Lj363:
	movl	-24(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-16(%ebp)
Lj308:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPINTRES_INTLOADRESOURCE$LONGWORD$LONGWORD$$LONGWORD
_FPINTRES_INTLOADRESOURCE$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj371
Lj371:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj371(%ecx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj374
	jmp	Lj375
Lj374:
	jmp	Lj370
Lj375:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jbe	Lj376
	jmp	Lj378
Lj378:
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj371(%ecx),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-8(%ebp),%eax
	jb	Lj376
	jmp	Lj377
Lj376:
	jmp	Lj370
Lj377:
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj371(%ecx),%eax
	movl	(%eax),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	movl	12(%eax),%eax
	movl	%eax,-12(%ebp)
Lj370:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPINTRES_INTSIZEOFRESOURCE$LONGWORD$LONGWORD$$LONGWORD
_FPINTRES_INTSIZEOFRESOURCE$LONGWORD$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	call	Lj382
Lj382:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj382(%ecx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj385
	jmp	Lj386
Lj385:
	jmp	Lj381
Lj386:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jbe	Lj387
	jmp	Lj389
Lj389:
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj382(%ecx),%eax
	movl	(%eax),%eax
	movl	8(%eax),%eax
	cmpl	-8(%ebp),%eax
	jb	Lj387
	jmp	Lj388
Lj387:
	jmp	Lj381
Lj388:
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj382(%ecx),%eax
	movl	(%eax),%eax
	movl	12(%eax),%edx
	movl	-8(%ebp),%eax
	decl	%eax
	movl	(%edx,%eax,4),%eax
	movl	8(%eax),%eax
	movl	%eax,-12(%ebp)
Lj381:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPINTRES_INTLOCKRESOURCE$LONGWORD$$POINTER
_FPINTRES_INTLOCKRESOURCE$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj393
Lj393:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj393(%edx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj396
	jmp	Lj397
Lj396:
	jmp	Lj392
Lj397:
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj392:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPINTRES_INTUNLOCKRESOURCE$LONGWORD$$LONGBOOL
_FPINTRES_INTUNLOCKRESOURCE$LONGWORD$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj401
Lj401:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj401(%edx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	setneb	%al
	movzbl	%al,%eax
	negl	%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPINTRES_INTFREERESOURCE$LONGWORD$$LONGBOOL
_FPINTRES_INTFREERESOURCE$LONGWORD$$LONGBOOL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj407
Lj407:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	LFPC_RESLOCATION$non_lazy_ptr-Lj407(%edx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	setneb	%al
	movzbl	%al,%eax
	negl	%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPINTRES
_INIT$_FPINTRES:
.reference __FPINTRES_init
.globl	__FPINTRES_init
__FPINTRES_init:
.reference _INIT$_FPINTRES
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_TC_FPINTRES_INTERNALRESOURCEMANAGER$non_lazy_ptr-Lj2(%ebx),%eax
	call	L_SYSTEM_SETRESOURCEMANAGER$TRESOURCEMANAGER$stub
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_FPINTRES
_THREADVARLIST_FPINTRES:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_FPINTRES_INTERNALRESOURCEMANAGER
_TC_FPINTRES_INTERNALRESOURCEMANAGER:
	.long	_FPINTRES_INTHINSTANCE$$LONGWORD
	.long	_FPINTRES_INTENUMRESOURCETYPES$LONGWORD$ENUMRESTYPEPROC$LONGINT$$LONGBOOL
	.long	_FPINTRES_INTENUMRESOURCENAMES$LONGWORD$PCHAR$ENUMRESNAMEPROC$LONGINT$$LONGBOOL
	.long	_FPINTRES_INTENUMRESOURCELANGUAGES$LONGWORD$PCHAR$PCHAR$ENUMRESLANGPROC$LONGINT$$LONGBOOL
	.long	_FPINTRES_INTFINDRESOURCE$LONGWORD$PCHAR$PCHAR$$LONGWORD
	.long	_FPINTRES_INTFINDRESOURCEEX$LONGWORD$PCHAR$PCHAR$WORD$$LONGWORD
	.long	_FPINTRES_INTLOADRESOURCE$LONGWORD$LONGWORD$$LONGWORD
	.long	_FPINTRES_INTSIZEOFRESOURCE$LONGWORD$LONGWORD$$LONGWORD
	.long	_FPINTRES_INTLOCKRESOURCE$LONGWORD$$POINTER
	.long	_FPINTRES_INTUNLOCKRESOURCE$LONGWORD$$LONGBOOL
	.long	_FPINTRES_INTFREERESOURCE$LONGWORD$$LONGBOOL
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

L_SYSTEM_MOVE$formal$formal$LONGINT$stub:
.indirect_symbol _SYSTEM_MOVE$formal$formal$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_uint_shortstr$stub:
.indirect_symbol fpc_val_uint_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPINTRES_RESSTRICOMP$PCHAR$PCHAR$$LONGINT$stub:
.indirect_symbol _FPINTRES_RESSTRICOMP$PCHAR$PCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPINTRES_INTERNALISINTRESOURCE$PCHAR$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _FPINTRES_INTERNALISINTRESOURCE$PCHAR$LONGWORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPINTRES_BINSEARCHINT$PRESINFONODE$PCHAR$SMALLINT$SMALLINT$$PRESINFONODE$stub:
.indirect_symbol _FPINTRES_BINSEARCHINT$PRESINFONODE$PCHAR$SMALLINT$SMALLINT$$PRESINFONODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPINTRES_BINSEARCHSTR$PRESINFONODE$PCHAR$SMALLINT$SMALLINT$$PRESINFONODE$stub:
.indirect_symbol _FPINTRES_BINSEARCHSTR$PRESINFONODE$PCHAR$SMALLINT$SMALLINT$$PRESINFONODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPINTRES_BINSEARCHRES$PRESINFONODE$PCHAR$$PRESINFONODE$stub:
.indirect_symbol _FPINTRES_BINSEARCHRES$PRESINFONODE$PCHAR$$PRESINFONODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPINTRES_INTERNALFINDRESOURCE$PCHAR$PCHAR$$PRESINFONODE$stub:
.indirect_symbol _FPINTRES_INTERNALFINDRESOURCE$PCHAR$PCHAR$$PRESINFONODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPINTRES_FINDSUBLANGUAGE$PRESINFONODE$WORD$WORD$$PRESINFONODE$stub:
.indirect_symbol _FPINTRES_FINDSUBLANGUAGE$PRESINFONODE$WORD$WORD$$PRESINFONODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SETRESOURCEMANAGER$TRESOURCEMANAGER$stub:
.indirect_symbol _SYSTEM_SETRESOURCEMANAGER$TRESOURCEMANAGER
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

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_RESLOCATION$non_lazy_ptr:
.indirect_symbol FPC_RESLOCATION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPINTRES_INTERNALRESOURCEMANAGER$non_lazy_ptr:
.indirect_symbol _TC_FPINTRES_INTERNALRESOURCEMANAGER
	.long	0
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

