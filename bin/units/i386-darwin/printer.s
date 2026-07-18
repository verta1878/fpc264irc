# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_PRINTER_ISLSTAVAILABLE$$BOOLEAN
_PRINTER_ISLSTAVAILABLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj4
Lj4:
	popl	%eax
	movl	L_U_PRINTER_LSTAVAILABLE$non_lazy_ptr-Lj4(%eax),%edx
	movb	(%edx),%dl
	movb	%dl,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_PRINTER_PRINTER_EXIT
_PRINTER_PRINTER_EXIT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj8
Lj8:
	popl	%ebx
	movl	L_U_PRINTER_LSTAVAILABLE$non_lazy_ptr-Lj8(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj9
	jmp	Lj10
Lj9:
	movl	L_U_PRINTER_LST$non_lazy_ptr-Lj8(%ebx),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
Lj10:
	movl	L_U_PRINTER_OLD_EXIT$non_lazy_ptr-Lj8(%ebx),%eax
	movl	(%eax),%eax
	movl	L_TC_SYSTEM_EXITPROC$non_lazy_ptr-Lj8(%ebx),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PRINTER_INITPRINTER$SHORTSTRING
_PRINTER_INITPRINTER$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj16
Lj16:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj16(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj19
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj16(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj20
Lj19:
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj16(%ebx),%edx
	leal	4(%edx),%eax
Lj20:
	movw	(%eax),%ax
	movw	%ax,-6(%ebp)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj16(%ebx),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj23
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj16(%ebx),%edx
	movl	(%edx),%eax
	call	*%ecx
	jmp	Lj24
Lj23:
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj16(%ebx),%edx
	leal	4(%edx),%eax
Lj24:
	movw	$0,(%eax)
	movl	-4(%ebp),%edx
	movl	L_U_PRINTER_LST$non_lazy_ptr-Lj16(%ebx),%eax
	call	L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub
	movl	L_U_PRINTER_LST$non_lazy_ptr-Lj16(%ebx),%eax
	call	L_SYSTEM_REWRITE$TEXT$stub
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj16(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj33
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj16(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj34
Lj33:
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj16(%ebx),%edx
	leal	4(%edx),%eax
Lj34:
	movzwl	(%eax),%eax
	testl	%eax,%eax
	movl	L_U_PRINTER_LSTAVAILABLE$non_lazy_ptr-Lj16(%ebx),%eax
	seteb	(%eax)
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj16(%ebx),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj37
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj16(%ebx),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj38
Lj37:
	movl	L_U_SYSTEM_INOUTRES$non_lazy_ptr-Lj16(%ebx),%edx
	leal	4(%edx),%eax
Lj38:
	movw	-6(%ebp),%dx
	movw	%dx,(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PRINTER_SETPRINTEREXIT
_PRINTER_SETPRINTEREXIT:
	pushl	%ebp
	movl	%esp,%ebp
	call	Lj40
Lj40:
	popl	%ecx
	movl	L_TC_SYSTEM_EXITPROC$non_lazy_ptr-Lj40(%ecx),%eax
	movl	(%eax),%eax
	movl	L_U_PRINTER_OLD_EXIT$non_lazy_ptr-Lj40(%ecx),%edx
	movl	%eax,(%edx)
	movl	L_PRINTER_PRINTER_EXIT$non_lazy_ptr-Lj40(%ecx),%eax
	movl	L_TC_SYSTEM_EXITPROC$non_lazy_ptr-Lj40(%ecx),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_PRINTER_PRINTANDDELETE$SHORTSTRING
_PRINTER_PRINTANDDELETE$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-328(%ebp)
	movl	%esi,-324(%ebp)
	call	Lj46
Lj46:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-272(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movl	$0,-320(%ebp)
	movl	$0,-316(%ebp)
	leal	-284(%ebp),%ecx
	leal	-308(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-4(%ebp)
	testl	%eax,%eax
	jne	Lj47
	movl	L_$PRINTER$_Ld1$non_lazy_ptr-Lj46(%ebx),%eax
	movl	%eax,(%esp)
	leal	-272(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat$stub
	movl	L_U_PRINTER_LPR$non_lazy_ptr-Lj46(%ebx),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	je	Lj58
	jmp	Lj59
Lj58:
	jmp	Lj47
Lj59:
	call	LFPC_SYSC_FORK$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj62
	jmp	Lj63
Lj62:
	jmp	Lj47
Lj63:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj64
	jmp	Lj65
Lj64:
	leal	-12(%ebp),%eax
	movl	$12,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj70
	jmp	Lj71
Lj70:
	movl	$127,%eax
	call	L_SYSTEM_HALT$LONGINT$stub
Lj71:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	L_U_PRINTER_LPR$non_lazy_ptr-Lj46(%ebx),%eax
	leal	1(%eax),%edx
	movl	-16(%ebp),%eax
	movl	%edx,(%eax)
	addl	$4,-16(%ebp)
	leal	-271(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%edx,(%eax)
	addl	$4,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	$0,(%eax)
	movl	L_U_SYSTEM_ENVP$non_lazy_ptr-Lj46(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-312(%ebp)
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-316(%ebp)
	leal	-320(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-320(%ebp)
	leal	-320(%ebp),%edx
	movl	L_U_PRINTER_LPR$non_lazy_ptr-Lj46(%ebx),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-320(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-320(%ebp),%eax
	movl	%eax,-316(%ebp)
	movl	-312(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-316(%ebp),%eax
	testl	%eax,%eax
	jne	Lj98
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj46(%ebx),%esi
	movl	%esi,%eax
Lj98:
	call	L_BASEUNIX_FPEXECVE$PCHAR$PPCHAR$PPCHAR$$LONGINT$stub
	movl	$127,%eax
	call	LFPC_SYSC_EXIT$stub
	jmp	Lj101
Lj65:
	movl	-8(%ebp),%eax
	call	L_UNIX_WAITPROCESS$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	jne	Lj102
	jmp	Lj103
Lj102:
	jmp	Lj47
Lj103:
	leal	-320(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-320(%ebp)
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-316(%ebp)
	leal	-316(%ebp),%edx
	leal	-272(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-316(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-320(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-316(%ebp),%eax
	movl	%eax,-320(%ebp)
	movl	-320(%ebp),%eax
	testl	%eax,%eax
	jne	Lj116
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj46(%ebx),%edx
	movl	%edx,%eax
Lj116:
	call	LFPC_SYSC_UNLINK$stub
Lj101:
Lj47:
	call	LFPC_POPADDRSTACK$stub
	leal	-320(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-320(%ebp)
	leal	-316(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-316(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj48
	call	LFPC_RERAISE$stub
Lj48:
	movl	-328(%ebp),%ebx
	movl	-324(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_PRINTER_OPENLSTPIPE$TEXT
_PRINTER_OPENLSTPIPE$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj119
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	leal	-304(%ebp),%edx
	call	L_STRINGS_STRPAS$PCHAR$$SHORTSTRING$stub
	leal	-304(%ebp),%eax
	leal	-48(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-48(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$87,%cl
	call	L_UNIX_POPEN$TEXT$ANSISTRING$CHAR$$LONGINT$stub
Lj119:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj120
	call	LFPC_RERAISE$stub
Lj120:
	leave
	ret

.text
	.align 4
.globl	_PRINTER_OPENLSTFILE$TEXT
_PRINTER_OPENLSTFILE$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jne	Lj138
	jmp	Lj139
Lj138:
	jmp	Lj136
Lj139:
	movl	-4(%ebp),%eax
	movb	$0,58(%eax)
	.align 2
Lj142:
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	leal	-264(%ebp),%edx
	call	L_STRINGS_STRPAS$PCHAR$$SHORTSTRING$stub
	leal	-264(%ebp),%eax
	movw	$438,%cx
	movl	$513,%edx
	call	L_BASEUNIX_FPOPEN$SHORTSTRING$LONGINT$WORD$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj144
	jmp	Lj157
Lj157:
	call	LFPC_SYS_GETERRNO$stub
	cmpl	$4,%eax
	jne	Lj144
	jmp	Lj142
Lj144:
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj158
	jmp	Lj159
Lj158:
	movl	-4(%ebp),%eax
	movl	$55216,4(%eax)
	jmp	Lj162
Lj159:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
Lj162:
Lj136:
	leave
	ret

.text
	.align 4
.globl	_PRINTER_CLOSELSTFILE$TEXT
_PRINTER_CLOSELSTFILE$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-316(%ebp)
	call	Lj166
Lj166:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj167
	.align 2
Lj170:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	LFPC_SYSC_CLOSE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj172
	jmp	Lj177
Lj177:
	call	LFPC_SYS_GETERRNO$stub
	cmpl	$4,%eax
	jne	Lj172
	jmp	Lj170
Lj172:
	movl	-4(%ebp),%eax
	movzbl	58(%eax),%eax
	testl	%eax,%eax
	je	Lj180
	jmp	Lj179
Lj180:
	movl	-4(%ebp),%eax
	movzbl	59(%eax),%eax
	cmpl	$1,%eax
	je	Lj178
	jmp	Lj179
Lj178:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	leal	-312(%ebp),%edx
	call	L_STRINGS_STRPAS$PCHAR$$SHORTSTRING$stub
	leal	-312(%ebp),%eax
	leal	-56(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-56(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	jne	Lj195
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj166(%ebx),%edx
	movl	%edx,%eax
Lj195:
	call	LFPC_SYSC_UNLINK$stub
	jmp	Lj167
Lj179:
	movl	-4(%ebp),%eax
	movzbl	59(%eax),%eax
	cmpl	$1,%eax
	je	Lj196
	jmp	Lj197
Lj196:
	movl	-4(%ebp),%eax
	leal	76(%eax),%eax
	leal	-312(%ebp),%edx
	call	L_STRINGS_STRPAS$PCHAR$$SHORTSTRING$stub
	leal	-312(%ebp),%eax
	call	L_PRINTER_PRINTANDDELETE$SHORTSTRING$stub
Lj197:
	movl	-4(%ebp),%eax
	movl	$55216,4(%eax)
Lj167:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj168
	call	LFPC_RERAISE$stub
Lj168:
	movl	-316(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PRINTER_INOUTLSTFILE$TEXT
_PRINTER_INOUTLSTFILE$TEXT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	$55218,%eax
	jne	Lj208
	jmp	Lj209
Lj208:
	jmp	Lj206
Lj209:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj210
	jmp	Lj211
Lj210:
	movl	-4(%ebp),%eax
	movb	$1,58(%eax)
Lj211:
	.align 2
Lj214:
	movl	-4(%ebp),%eax
	movl	24(%eax),%edx
	movl	-4(%ebp),%eax
	movl	16(%eax),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_BASEUNIX_FPWRITE$LONGINT$formal$LONGWORD$$LONGINT$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj216
	jmp	Lj225
Lj225:
	call	LFPC_SYS_GETERRNO$stub
	cmpl	$4,%eax
	jne	Lj216
	jmp	Lj214
Lj216:
	movl	-4(%ebp),%eax
	movl	$0,16(%eax)
Lj206:
	leave
	ret

.text
	.align 4
.globl	_PRINTER_SUBSTPIDINNAME$SHORTSTRING$$SHORTSTRING
_PRINTER_SUBSTPIDINNAME$SHORTSTRING$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$824,%esp
	movl	%ebx,-808(%ebp)
	call	Lj229
Lj229:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	L_$PRINTER$_Ld2$non_lazy_ptr-Lj229(%ebx),%eax
	call	L_SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj236
	jmp	Lj237
Lj236:
	movl	-4(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	jmp	Lj244
Lj237:
	movl	$8,(%esp)
	call	LFPC_SYSC_GETPID$stub
	leal	-21(%ebp),%ecx
	movl	$-1,%edx
	call	Lfpc_shortstr_sint$stub
	leal	-292(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_shortstr_copy$stub
	leal	-292(%ebp),%eax
	movl	%eax,-36(%ebp)
	leal	-21(%ebp),%ecx
	leal	-548(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leal	-548(%ebp),%eax
	movl	%eax,-32(%ebp)
	leal	-804(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	subl	$2,%ecx
	movl	-12(%ebp),%edx
	addl	$3,%edx
	movl	-4(%ebp),%eax
	call	Lfpc_shortstr_copy$stub
	leal	-804(%ebp),%eax
	movl	%eax,-28(%ebp)
	leal	-36(%ebp),%ecx
	movl	$2,(%esp)
	movl	-8(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
Lj244:
	movl	-808(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_PRINTER_ASSIGNLST$TEXT$SHORTSTRING
_PRINTER_ASSIGNLST$TEXT$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$536,%esp
	movl	%ebx,-524(%ebp)
	call	Lj284
Lj284:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	leal	-264(%ebp),%ecx
	movl	$255,%eax
	call	LFPC_SHORTSTR_ASSIGN$stub
	movzbl	-264(%ebp),%eax
	testl	%eax,%eax
	je	Lj285
	jmp	Lj286
Lj285:
	jmp	Lj283
Lj286:
	movl	-4(%ebp),%eax
	leal	336(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-4(%ebp),%eax
	movl	$128,8(%eax)
	leal	-520(%ebp),%edx
	leal	-264(%ebp),%eax
	call	L_PRINTER_SUBSTPIDINNAME$SHORTSTRING$$SHORTSTRING$stub
	leal	-520(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movb	-263(%ebp),%al
	cmpb	$124,%al
	je	Lj301
	jmp	Lj302
Lj301:
	leal	-520(%ebp),%eax
	movl	%eax,(%esp)
	leal	-264(%ebp),%eax
	movl	$255,%ecx
	movl	$2,%edx
	call	Lfpc_shortstr_copy$stub
	leal	-520(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub
	movl	-4(%ebp),%eax
	movb	$3,59(%eax)
	movl	L_PRINTER_OPENLSTPIPE$TEXT$non_lazy_ptr-Lj284(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,28(%edx)
	jmp	Lj319
Lj302:
	movzbl	-264(%ebp),%eax
	movb	-264(%ebp,%eax,1),%al
	cmpb	$124,%al
	je	Lj320
	jmp	Lj321
Lj320:
	leal	-520(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-264(%ebp),%ecx
	decl	%ecx
	leal	-264(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_shortstr_copy$stub
	leal	-520(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub
	movl	-4(%ebp),%eax
	movb	$2,59(%eax)
	jmp	Lj336
Lj321:
	leal	-264(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub
	movl	-4(%ebp),%eax
	movb	$1,59(%eax)
Lj336:
	movl	L_PRINTER_OPENLSTFILE$TEXT$non_lazy_ptr-Lj284(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,28(%edx)
	movl	L_PRINTER_CLOSELSTFILE$TEXT$non_lazy_ptr-Lj284(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,40(%edx)
	movl	L_PRINTER_INOUTLSTFILE$TEXT$non_lazy_ptr-Lj284(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,32(%edx)
	movl	L_PRINTER_INOUTLSTFILE$TEXT$non_lazy_ptr-Lj284(%ebx),%eax
	movl	-4(%ebp),%edx
	movl	%eax,36(%edx)
Lj319:
Lj283:
	movl	-524(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIT$_PRINTER
_INIT$_PRINTER:
.reference __PRINTER_init
.globl	__PRINTER_init
__PRINTER_init:
.reference _INIT$_PRINTER
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%ebx,-260(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	leal	-256(%ebp),%edx
	movl	L_$PRINTER$_Ld3$non_lazy_ptr-Lj2(%ebx),%eax
	call	L_PRINTER_SUBSTPIDINNAME$SHORTSTRING$$SHORTSTRING$stub
	leal	-256(%ebp),%eax
	call	L_PRINTER_INITPRINTER$SHORTSTRING$stub
	call	L_PRINTER_SETPRINTEREXIT$stub
	movl	L_U_PRINTER_LPR$non_lazy_ptr-Lj2(%ebx),%eax
	movl	L_$PRINTER$_Ld4$non_lazy_ptr-Lj2(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-260(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 4
.globl _U_PRINTER_LST
.data
.zerofill __DATA, __common, _U_PRINTER_LST, 592,4




	.align 2
.globl _U_PRINTER_OLD_EXIT
.data
.zerofill __DATA, __common, _U_PRINTER_OLD_EXIT, 4,2




.globl _U_PRINTER_LSTAVAILABLE
.data
.zerofill __DATA, __common, _U_PRINTER_LSTAVAILABLE, 1,1




.globl _U_PRINTER_LPR
.data
.zerofill __DATA, __common, _U_PRINTER_LPR, 256,1



.data
	.align 2
.globl	_THREADVARLIST_PRINTER
_THREADVARLIST_PRINTER:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 2
.globl	_$PRINTER$_Ld1
_$PRINTER$_Ld1:
	.ascii	"\001\000\000"

.const
	.align 2
.globl	_$PRINTER$_Ld2
_$PRINTER$_Ld2:
	.ascii	"\003PID\000"

.const
	.align 2
.globl	_$PRINTER$_Ld3
_$PRINTER$_Ld3:
	.ascii	"\014/tmp/PID.lst\000"

.const
	.align 2
.globl	_$PRINTER$_Ld4
_$PRINTER$_Ld4:
	.ascii	"\014/usr/bin/lpr\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_CLOSE$TEXT$stub:
.indirect_symbol _SYSTEM_CLOSE$TEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_ASSIGN$TEXT$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_REWRITE$TEXT$stub:
.indirect_symbol _SYSTEM_REWRITE$TEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SHORTSTR_ASSIGN$stub:
.indirect_symbol FPC_SHORTSTR_ASSIGN
	hlt
	hlt
	hlt
	hlt
	hlt

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

Lfpc_shortstr_concat$stub:
.indirect_symbol fpc_shortstr_concat
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_FORK$stub:
.indirect_symbol FPC_SYSC_FORK
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

L_SYSTEM_HALT$LONGINT$stub:
.indirect_symbol _SYSTEM_HALT$LONGINT
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

Lfpc_shortstr_to_ansistr$stub:
.indirect_symbol fpc_shortstr_to_ansistr
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

L_BASEUNIX_FPEXECVE$PCHAR$PPCHAR$PPCHAR$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPEXECVE$PCHAR$PPCHAR$PPCHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_EXIT$stub:
.indirect_symbol FPC_SYSC_EXIT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_WAITPROCESS$LONGINT$$LONGINT$stub:
.indirect_symbol _UNIX_WAITPROCESS$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_UNLINK$stub:
.indirect_symbol FPC_SYSC_UNLINK
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

L_STRINGS_STRPAS$PCHAR$$SHORTSTRING$stub:
.indirect_symbol _STRINGS_STRPAS$PCHAR$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_UNIX_POPEN$TEXT$ANSISTRING$CHAR$$LONGINT$stub:
.indirect_symbol _UNIX_POPEN$TEXT$ANSISTRING$CHAR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPOPEN$SHORTSTRING$LONGINT$WORD$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPOPEN$SHORTSTRING$LONGINT$WORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYS_GETERRNO$stub:
.indirect_symbol FPC_SYS_GETERRNO
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_CLOSE$stub:
.indirect_symbol FPC_SYSC_CLOSE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PRINTER_PRINTANDDELETE$SHORTSTRING$stub:
.indirect_symbol _PRINTER_PRINTANDDELETE$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPWRITE$LONGINT$formal$LONGWORD$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPWRITE$LONGINT$formal$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$SHORTSTRING$SHORTSTRING$$LONGINT
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

LFPC_SYSC_GETPID$stub:
.indirect_symbol FPC_SYSC_GETPID
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_sint$stub:
.indirect_symbol fpc_shortstr_sint
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_copy$stub:
.indirect_symbol fpc_shortstr_copy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_concat_multi$stub:
.indirect_symbol fpc_shortstr_concat_multi
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PRINTER_SUBSTPIDINNAME$SHORTSTRING$$SHORTSTRING$stub:
.indirect_symbol _PRINTER_SUBSTPIDINNAME$SHORTSTRING$$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PRINTER_INITPRINTER$SHORTSTRING$stub:
.indirect_symbol _PRINTER_INITPRINTER$SHORTSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_PRINTER_SETPRINTEREXIT$stub:
.indirect_symbol _PRINTER_SETPRINTEREXIT
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
L_U_PRINTER_LSTAVAILABLE$non_lazy_ptr:
.indirect_symbol _U_PRINTER_LSTAVAILABLE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_PRINTER_LST$non_lazy_ptr:
.indirect_symbol _U_PRINTER_LST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_PRINTER_OLD_EXIT$non_lazy_ptr:
.indirect_symbol _U_PRINTER_OLD_EXIT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSTEM_EXITPROC$non_lazy_ptr:
.indirect_symbol _TC_SYSTEM_EXITPROC
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_THREADVAR_RELOCATE$non_lazy_ptr:
.indirect_symbol FPC_THREADVAR_RELOCATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_INOUTRES$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_INOUTRES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PRINTER_PRINTER_EXIT$non_lazy_ptr:
.indirect_symbol _PRINTER_PRINTER_EXIT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PRINTER$_Ld1$non_lazy_ptr:
.indirect_symbol _$PRINTER$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_PRINTER_LPR$non_lazy_ptr:
.indirect_symbol _U_PRINTER_LPR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_ENVP$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_ENVP
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PRINTER$_Ld2$non_lazy_ptr:
.indirect_symbol _$PRINTER$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PRINTER_OPENLSTPIPE$TEXT$non_lazy_ptr:
.indirect_symbol _PRINTER_OPENLSTPIPE$TEXT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PRINTER_OPENLSTFILE$TEXT$non_lazy_ptr:
.indirect_symbol _PRINTER_OPENLSTFILE$TEXT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PRINTER_CLOSELSTFILE$TEXT$non_lazy_ptr:
.indirect_symbol _PRINTER_CLOSELSTFILE$TEXT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_PRINTER_INOUTLSTFILE$TEXT$non_lazy_ptr:
.indirect_symbol _PRINTER_INOUTLSTFILE$TEXT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PRINTER$_Ld3$non_lazy_ptr:
.indirect_symbol _$PRINTER$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$PRINTER$_Ld4$non_lazy_ptr:
.indirect_symbol _$PRINTER$_Ld4
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

