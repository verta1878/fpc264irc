# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_NETDB_NEXTWORD$ANSISTRING$$ANSISTRING
_NETDB_NEXTWORD$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$1,-12(%ebp)
	jmp	Lj8
	.align 2
Lj7:
	incl	-12(%ebp)
Lj8:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj11
	movl	-4(%eax),%eax
Lj11:
	cmpl	-12(%ebp),%eax
	jge	Lj10
	jmp	Lj9
Lj10:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	cmpl	$9,%eax
	je	Lj12
	cmpl	$32,%eax
	je	Lj12
Lj12:
	je	Lj7
	jmp	Lj9
Lj9:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj16
	.align 2
Lj15:
	incl	-16(%ebp)
Lj16:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj19
	movl	-4(%eax),%eax
Lj19:
	cmpl	-16(%ebp),%eax
	jge	Lj18
	jmp	Lj17
Lj18:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	cmpl	$9,%eax
	je	Lj20
	cmpl	$32,%eax
	je	Lj20
Lj20:
	jne	Lj15
	jmp	Lj17
Lj17:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_NETDB_STRIPCOMMENT$ANSISTRING$$BOOLEAN
_NETDB_STRIPCOMMENT$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj37
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movb	$35,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj46
	jmp	Lj47
Lj46:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-56(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj58
Lj47:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movb	$59,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj65
	jmp	Lj66
Lj65:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-56(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,(%ebx)
Lj66:
Lj58:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj79
	movl	-4(%eax),%eax
Lj79:
	cmpl	$0,%eax
	setgb	-5(%ebp)
Lj37:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj38
	call	LFPC_RERAISE$stub
Lj38:
	movb	-5(%ebp),%al
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_NETDB_MATCHNAMEORALIAS$ANSISTRING$ANSISTRING$ANSISTRING$$BOOLEAN
_NETDB_MATCHNAMEORALIAS$ANSISTRING$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-24(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj82
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	seteb	-13(%ebp)
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj91
	jmp	Lj92
Lj91:
	jmp	Lj94
	.align 2
Lj93:
	movl	-12(%ebp),%edx
	movb	$44,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj102
	jmp	Lj103
Lj102:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj106
	movl	-4(%eax),%eax
Lj106:
	incl	%eax
	movl	%eax,-20(%ebp)
Lj103:
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	decl	%ecx
	movl	-12(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-20(%ebp),%ecx
	leal	-12(%ebp),%eax
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj94:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj127
	jmp	Lj95
Lj127:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj128
	movl	-4(%eax),%eax
Lj128:
	cmpl	$0,%eax
	jg	Lj93
	jmp	Lj95
Lj95:
Lj92:
Lj82:
	call	LFPC_POPADDRSTACK$stub
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	leal	-12(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj83
	call	LFPC_RERAISE$stub
Lj83:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_NETDB_GETADDR$ANSISTRING$IN_ADDR$$BOOLEAN
_NETDB_GETADDR$ANSISTRING$IN_ADDR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj137
	movb	$1,-9(%ebp)
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_NETDB_NEXTWORD$ANSISTRING$$ANSISTRING$stub
	movl	-16(%ebp),%eax
	call	L_SOCKETS_STRTONETADDR$ANSISTRING$$IN_ADDR$stub
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	testl	%eax,%eax
	setneb	-9(%ebp)
Lj137:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj138
	call	LFPC_RERAISE$stub
Lj138:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_NETDB_FILLHOSTENTRY$THOSTENTRY$ANSISTRING$$BOOLEAN
_NETDB_FILLHOSTENTRY$THOSTENTRY$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj159
Lj159:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj160
	movb	$0,-9(%ebp)
	.align 2
Lj165:
	leal	-16(%ebp),%edx
	leal	-8(%ebp),%eax
	call	L_NETDB_NEXTWORD$ANSISTRING$$ANSISTRING$stub
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj172
	jmp	Lj173
Lj172:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj174
	jmp	Lj175
Lj174:
	movl	-16(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-16(%ebp),%eax
	movl	%eax,(%esi)
	jmp	Lj178
Lj175:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj179
	jmp	Lj180
Lj179:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	leal	8(%eax),%eax
	movl	L_$NETDB$_Ld1$non_lazy_ptr-Lj159(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj180:
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-4(%ebp),%eax
	leal	8(%eax),%eax
	call	Lfpc_ansistr_concat$stub
Lj178:
	movb	$1,-9(%ebp)
Lj173:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj167
	jmp	Lj165
Lj167:
Lj160:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj161
	call	LFPC_RERAISE$stub
Lj161:
	movb	-9(%ebp),%al
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_NETDB_PROCESSHOSTS$ANSISTRING$$PHOSTLISTENTRY
_NETDB_PROCESSHOSTS$ANSISTRING$$PHOSTLISTENTRY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$920,%esp
	movl	%ebx,-916(%ebp)
	movl	%esi,-912(%ebp)
	call	Lj202
Lj202:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-604(%ebp)
	leal	-624(%ebp),%ecx
	leal	-648(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-652(%ebp)
	testl	%eax,%eax
	jne	Lj203
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%ecx
	leal	-908(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-908(%ebp),%edx
	leal	-600(%ebp),%eax
	call	L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub
	leal	-600(%ebp),%eax
	call	L_SYSTEM_RESET$TEXT$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj220
	jmp	Lj221
Lj220:
	jmp	Lj203
Lj221:
	leal	-664(%ebp),%ecx
	leal	-688(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-908(%ebp)
	testl	%eax,%eax
	jne	Lj222
	jmp	Lj227
	.align 2
Lj226:
	leal	-604(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-604(%ebp),%edx
	leal	-600(%ebp),%eax
	call	Lfpc_read_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	leal	-600(%ebp),%eax
	call	Lfpc_readln_end$stub
	call	LFPC_IOCHECK$stub
	leal	-604(%ebp),%eax
	call	L_NETDB_STRIPCOMMENT$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj235
	jmp	Lj236
Lj235:
	leal	-608(%ebp),%edx
	leal	-604(%ebp),%eax
	call	L_NETDB_GETADDR$ANSISTRING$IN_ADDR$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj239
	jmp	Lj240
Lj239:
	movl	$16,%eax
	call	Lfpc_getmem$stub
	movl	%eax,%ebx
	movl	L_INIT_NETDB_THOSTLISTENTRY$non_lazy_ptr-Lj202(%esi),%edx
	movl	%ebx,%eax
	call	Lfpc_initialize$stub
	movl	%ebx,-612(%ebp)
	movl	-612(%ebp),%eax
	movl	-608(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-612(%ebp),%eax
	movl	-604(%ebp),%edx
	call	L_NETDB_FILLHOSTENTRY$THOSTENTRY$ANSISTRING$$BOOLEAN$stub
	movl	-612(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,12(%eax)
	movl	-612(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj240:
Lj236:
Lj227:
	leal	-600(%ebp),%eax
	call	L_SYSTEM_EOF$TEXT$$BOOLEAN$stub
	movb	%al,%bl
	call	LFPC_IOCHECK$stub
	testb	%bl,%bl
	jne	Lj228
	jmp	Lj226
Lj228:
Lj222:
	call	LFPC_POPADDRSTACK$stub
	leal	-600(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	-908(%ebp),%eax
	testl	%eax,%eax
	je	Lj223
	decl	%eax
	testl	%eax,%eax
	je	Lj224
Lj224:
	call	LFPC_RERAISE$stub
Lj223:
Lj203:
	call	LFPC_POPADDRSTACK$stub
	leal	-604(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-604(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-652(%ebp),%eax
	testl	%eax,%eax
	je	Lj204
	call	LFPC_RERAISE$stub
Lj204:
	movl	-8(%ebp),%eax
	movl	-916(%ebp),%ebx
	movl	-912(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_NETDB_FREEHOSTSLIST$PHOSTLISTENTRY$$LONGINT
_NETDB_FREEHOSTSLIST$PHOSTLISTENTRY$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj276
Lj276:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	jmp	Lj280
	.align 2
Lj279:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	L_INIT_NETDB_THOSTLISTENTRY$non_lazy_ptr-Lj276(%ebx),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	Lfpc_finalize$stub
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	Lfpc_freemem$stub
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,(%eax)
Lj280:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj279
	jmp	Lj281
Lj281:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_NETDB_HOSTSLISTTOARRAY$PHOSTLISTENTRY$THOSTENTRYARRAY$BOOLEAN
_NETDB_HOSTSLISTTOARRAY$PHOSTLISTENTRY$THOSTENTRYARRAY$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	call	Lj293
Lj293:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj299
	.align 2
Lj298:
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-16(%ebp)
Lj299:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj298
	jmp	Lj300
Lj300:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_NETDB_THOSTENTRYARRAY$non_lazy_ptr-Lj293(%esi),%edx
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj313
	jmp	Lj314
Lj313:
	movl	$0,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj320
	.align 2
Lj319:
	movl	L_INIT_NETDB_THOSTENTRY$non_lazy_ptr-Lj293(%esi),%ecx
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	imull	$12,%eax
	leal	(%edx,%eax),%eax
	movl	-16(%ebp),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	Lfpc_copy_proc$stub
	movl	-16(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-16(%ebp)
	incl	-20(%ebp)
Lj320:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj319
	jmp	Lj321
Lj321:
Lj314:
	cmpb	$0,-12(%ebp)
	jne	Lj330
	jmp	Lj331
Lj330:
	movl	-4(%ebp),%eax
	call	L_NETDB_FREEHOSTSLIST$PHOSTLISTENTRY$$LONGINT$stub
Lj331:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_NETDB_CHECKHOSTSFILE
_NETDB_CHECKHOSTSFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	call	Lj335
Lj335:
	popl	%ebx
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj336
	movl	L_U_NETDB_CHECKHOSTSFILEAGE$non_lazy_ptr-Lj335(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj339
	jmp	Lj340
Lj339:
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	L_U_NETDB_ETCPATH$non_lazy_ptr-Lj335(%ebx),%eax
	movl	(%eax),%edx
	leal	-48(%ebp),%eax
	movl	L_$NETDB$_Ld3$non_lazy_ptr-Lj335(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-48(%ebp),%eax
	call	L_SYSUTILS_FILEAGE$ANSISTRING$$LONGINT$stub
	movl	%eax,-4(%ebp)
	movl	L_U_NETDB_HOSTSFILEAGE$non_lazy_ptr-Lj335(%ebx),%eax
	movl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj351
	jmp	Lj352
Lj351:
	movl	L_TC_NETDB_HOSTSLIST$non_lazy_ptr-Lj335(%ebx),%eax
	call	L_NETDB_FREEHOSTSLIST$PHOSTLISTENTRY$$LONGINT$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	L_U_NETDB_ETCPATH$non_lazy_ptr-Lj335(%ebx),%eax
	movl	(%eax),%edx
	leal	-48(%ebp),%eax
	movl	L_$NETDB$_Ld3$non_lazy_ptr-Lj335(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-48(%ebp),%eax
	call	L_NETDB_PROCESSHOSTS$ANSISTRING$$PHOSTLISTENTRY$stub
	movl	L_TC_NETDB_HOSTSLIST$non_lazy_ptr-Lj335(%ebx),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	L_U_NETDB_HOSTSFILEAGE$non_lazy_ptr-Lj335(%ebx),%edx
	movl	%eax,(%edx)
Lj352:
Lj340:
Lj336:
	call	LFPC_POPADDRSTACK$stub
	leal	-48(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-48(%ebp)
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj337
	call	LFPC_RERAISE$stub
Lj337:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_NETDB_FINDHOSTENTRYINHOSTSFILE$ANSISTRING$IN_ADDR$THOSTENTRY$$BOOLEAN
_NETDB_FINDHOSTENTRYINHOSTSFILE$ANSISTRING$IN_ADDR$THOSTENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	call	Lj368
Lj368:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	L_INIT_NETDB_THOSTENTRY$non_lazy_ptr-Lj368(%esi),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj369
	movb	$0,-9(%ebp)
	call	L_NETDB_CHECKHOSTSFILE$stub
	movl	L_TC_NETDB_HOSTSLIST$non_lazy_ptr-Lj368(%esi),%eax
	movl	(%eax),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj377
	.align 2
Lj376:
	movl	L_INIT_NETDB_THOSTENTRY$non_lazy_ptr-Lj368(%esi),%ecx
	leal	-24(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	Lfpc_copy_proc$stub
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj385
	jmp	Lj386
Lj385:
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_NETDB_MATCHNAMEORALIAS$ANSISTRING$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	jmp	Lj395
Lj386:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_SOCKETS_HOSTTONET$IN_ADDR$$IN_ADDR$stub
	cmpl	-20(%ebp),%eax
	seteb	-9(%ebp)
Lj395:
	movl	-28(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-28(%ebp)
Lj377:
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj402
	jmp	Lj378
Lj402:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj376
	jmp	Lj378
Lj378:
	cmpb	$0,-9(%ebp)
	jne	Lj403
	jmp	Lj404
Lj403:
	movl	-24(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-24(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	call	L_SOCKETS_NETTOHOST$IN_ADDR$$IN_ADDR$stub
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-16(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-16(%ebp),%eax
	movl	%eax,8(%ebx)
Lj404:
Lj369:
	call	LFPC_POPADDRSTACK$stub
	movl	L_INIT_NETDB_THOSTENTRY$non_lazy_ptr-Lj368(%esi),%edx
	leal	-24(%ebp),%eax
	call	Lfpc_finalize$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj370
	call	LFPC_RERAISE$stub
Lj370:
	movb	-9(%ebp),%al
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_NETDB_GETDNSSERVERS$ANSISTRING$$LONGINT
_NETDB_GETDNSSERVERS$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$936,%esp
	movl	%ebx,-924(%ebp)
	movl	%esi,-920(%ebp)
	call	Lj422
Lj422:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-604(%ebp)
	movl	L_INIT_NETDB_THOSTENTRY$non_lazy_ptr-Lj422(%esi),%edx
	leal	-620(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-632(%ebp),%ecx
	leal	-656(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-660(%ebp)
	testl	%eax,%eax
	jne	Lj425
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	L_U_NETDB_RESOLVEFILENAME$non_lazy_ptr-Lj422(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	L_U_NETDB_RESOLVEFILENAME$non_lazy_ptr-Lj422(%esi),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_FILEAGE$ANSISTRING$$LONGINT$stub
	movl	L_U_NETDB_RESOLVEFILEAGE$non_lazy_ptr-Lj422(%esi),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%ecx
	leal	-916(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-916(%ebp),%edx
	leal	-600(%ebp),%eax
	call	L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub
	leal	-600(%ebp),%eax
	call	L_SYSTEM_RESET$TEXT$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movzwl	%ax,%eax
	testl	%eax,%eax
	jne	Lj448
	jmp	Lj449
Lj448:
	jmp	Lj425
Lj449:
	leal	-672(%ebp),%ecx
	leal	-696(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-916(%ebp)
	testl	%eax,%eax
	jne	Lj450
	jmp	Lj455
	.align 2
Lj454:
	leal	-604(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-604(%ebp),%edx
	leal	-600(%ebp),%eax
	call	Lfpc_read_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	leal	-600(%ebp),%eax
	call	Lfpc_readln_end$stub
	call	LFPC_IOCHECK$stub
	leal	-604(%ebp),%eax
	call	L_NETDB_STRIPCOMMENT$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj463
	jmp	Lj464
Lj463:
	movl	%ebp,%eax
	movl	L_$NETDB$_Ld5$non_lazy_ptr-Lj422(%esi),%edx
	call	L_NETDB_GETDNSSERVERS$ANSISTRING$$LONGINT_CHECKDIRECTIVE$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj467
	jmp	Lj468
Lj467:
	movl	-604(%ebp),%eax
	call	L_SOCKETS_STRTOHOSTADDR$ANSISTRING$$IN_ADDR$stub
	movl	%eax,(%esp)
	call	L_SOCKETS_HOSTTONET$IN_ADDR$$IN_ADDR$stub
	movl	%eax,-608(%ebp)
	movzbl	-608(%ebp),%eax
	testl	%eax,%eax
	jne	Lj479
	jmp	Lj480
Lj479:
	movl	-8(%ebp),%eax
	incl	%eax
	movl	%eax,-700(%ebp)
	leal	-700(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_NETDB_TDNSSERVERARRAY$non_lazy_ptr-Lj422(%esi),%edx
	movl	L_U_NETDB_DNSSERVERS$non_lazy_ptr-Lj422(%esi),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	L_U_NETDB_DNSSERVERS$non_lazy_ptr-Lj422(%esi),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	-608(%ebp),%edx
	movl	%edx,(%ecx,%eax,4)
	incl	-8(%ebp)
	jmp	Lj493
Lj480:
	movl	-608(%ebp),%eax
	movl	%eax,(%esp)
	leal	-620(%ebp),%edx
	movl	-604(%ebp),%eax
	call	L_NETDB_FINDHOSTENTRYINHOSTSFILE$ANSISTRING$IN_ADDR$THOSTENTRY$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj494
	jmp	Lj495
Lj494:
	movl	-8(%ebp),%eax
	incl	%eax
	movl	%eax,-700(%ebp)
	leal	-700(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_INIT_NETDB_TDNSSERVERARRAY$non_lazy_ptr-Lj422(%esi),%edx
	movl	L_U_NETDB_DNSSERVERS$non_lazy_ptr-Lj422(%esi),%eax
	movl	$1,%ecx
	call	Lfpc_dynarray_setlength$stub
	movl	L_U_NETDB_DNSSERVERS$non_lazy_ptr-Lj422(%esi),%eax
	movl	(%eax),%eax
	movl	-8(%ebp),%edx
	movl	-616(%ebp),%ecx
	movl	%ecx,(%eax,%edx,4)
	incl	-8(%ebp)
Lj495:
Lj493:
	jmp	Lj514
Lj468:
	movl	%ebp,%eax
	movl	L_$NETDB$_Ld7$non_lazy_ptr-Lj422(%esi),%edx
	call	L_NETDB_GETDNSSERVERS$ANSISTRING$$LONGINT_CHECKDIRECTIVE$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj515
	jmp	Lj516
Lj515:
	movl	-604(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	L_U_NETDB_DEFAULTDOMAINLIST$non_lazy_ptr-Lj422(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-604(%ebp),%eax
	movl	L_U_NETDB_DEFAULTDOMAINLIST$non_lazy_ptr-Lj422(%esi),%edx
	movl	%eax,(%edx)
	jmp	Lj523
Lj516:
	movl	%ebp,%eax
	movl	L_$NETDB$_Ld9$non_lazy_ptr-Lj422(%esi),%edx
	call	L_NETDB_GETDNSSERVERS$ANSISTRING$$LONGINT_CHECKDIRECTIVE$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj524
	jmp	Lj525
Lj524:
	movl	-604(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	L_U_NETDB_DEFAULTDOMAINLIST$non_lazy_ptr-Lj422(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-604(%ebp),%edx
	movl	L_U_NETDB_DEFAULTDOMAINLIST$non_lazy_ptr-Lj422(%esi),%eax
	movl	%edx,(%eax)
Lj525:
Lj523:
Lj514:
Lj464:
Lj455:
	leal	-600(%ebp),%eax
	call	L_SYSTEM_EOF$TEXT$$BOOLEAN$stub
	movb	%al,%bl
	call	LFPC_IOCHECK$stub
	testb	%bl,%bl
	jne	Lj456
	jmp	Lj454
Lj456:
Lj450:
	call	LFPC_POPADDRSTACK$stub
	leal	-600(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	-916(%ebp),%eax
	testl	%eax,%eax
	je	Lj451
	decl	%eax
	testl	%eax,%eax
	je	Lj452
Lj452:
	call	LFPC_RERAISE$stub
Lj451:
Lj425:
	call	LFPC_POPADDRSTACK$stub
	leal	-604(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-604(%ebp)
	movl	L_INIT_NETDB_THOSTENTRY$non_lazy_ptr-Lj422(%esi),%edx
	leal	-620(%ebp),%eax
	call	Lfpc_finalize$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-660(%ebp),%eax
	testl	%eax,%eax
	je	Lj426
	call	LFPC_RERAISE$stub
Lj426:
	movl	-8(%ebp),%eax
	movl	-924(%ebp),%ebx
	movl	-920(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_NETDB_GETDNSSERVERS$ANSISTRING$$LONGINT_CHECKDIRECTIVE$ANSISTRING$$BOOLEAN
_NETDB_GETDNSSERVERS$ANSISTRING$$LONGINT_CHECKDIRECTIVE$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj550
	movl	-8(%ebp),%eax
	movl	-604(%eax),%edx
	movl	-4(%ebp),%eax
	call	L_SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	setneb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj561
	jmp	Lj562
Lj561:
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj565
	movl	-4(%ecx),%ecx
Lj565:
	movl	-16(%ebp),%eax
	addl	%eax,%ecx
	movl	-8(%ebp),%eax
	leal	-604(%eax),%eax
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-8(%ebp),%eax
	movl	-604(%eax),%eax
	leal	-60(%ebp),%edx
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-60(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	-604(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	movl	%eax,-604(%ebx)
Lj562:
Lj550:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj551
	call	LFPC_RERAISE$stub
Lj551:
	movb	-9(%ebp),%al
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_NETDB_CHECKRESOLVEFILE
_NETDB_CHECKRESOLVEFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	call	Lj577
Lj577:
	popl	%ebx
	movl	$0,-8(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj578
	movl	L_U_NETDB_CHECKRESOLVEFILEAGE$non_lazy_ptr-Lj577(%ebx),%eax
	cmpb	$0,(%eax)
	jne	Lj581
	jmp	Lj582
Lj581:
	movl	L_U_NETDB_RESOLVEFILENAME$non_lazy_ptr-Lj577(%ebx),%edx
	movl	(%edx),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_NETDB_RESOLVEFILENAME$non_lazy_ptr-Lj577(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj585
	jmp	Lj586
Lj585:
	movl	L_U_NETDB_ETCPATH$non_lazy_ptr-Lj577(%ebx),%eax
	movl	(%eax),%edx
	leal	-8(%ebp),%eax
	movl	L_$NETDB$_Ld11$non_lazy_ptr-Lj577(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj586:
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_FILEAGE$ANSISTRING$$LONGINT$stub
	movl	%eax,-4(%ebp)
	movl	L_U_NETDB_RESOLVEFILEAGE$non_lazy_ptr-Lj577(%ebx),%eax
	movl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	jl	Lj597
	jmp	Lj598
Lj597:
	movl	-8(%ebp),%eax
	call	L_NETDB_GETDNSSERVERS$ANSISTRING$$LONGINT$stub
Lj598:
Lj582:
Lj578:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-8(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj579
	call	LFPC_RERAISE$stub
Lj579:
	movl	-52(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_NETDB_DUMPPAYLOAD$TQUERYDATA$LONGINT
_NETDB_DUMPPAYLOAD$TQUERYDATA$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$552,%esp
	movl	%ebx,-548(%ebp)
	movl	%esi,-544(%ebp)
	movl	%edi,-540(%ebp)
	call	Lj608
Lj608:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-536(%ebp),%edi
	cld
	movl	$131,%ecx
	rep
	movsl
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	%esi,%edx
	movl	L_$NETDB$_Ld13$non_lazy_ptr-Lj608(%ebx),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	-8(%ebp),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_sint$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	movl	-8(%ebp),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%edi
	jl	Lj626
	decl	-12(%ebp)
	.align 2
Lj627:
	incl	-12(%ebp)
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	-12(%ebp),%eax
	movzbl	-524(%ebp,%eax,1),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	Lfpc_write_text_uint$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%edx
	movb	$32,%cl
	movl	$0,%eax
	call	Lfpc_write_text_char$stub
	call	LFPC_IOCHECK$stub
	movl	%esi,%eax
	call	Lfpc_write_end$stub
	call	LFPC_IOCHECK$stub
	cmpl	-12(%ebp),%edi
	jg	Lj627
Lj626:
	call	Lfpc_get_output$stub
	movl	%eax,%esi
	movl	%esi,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	movl	-548(%ebp),%ebx
	movl	-544(%ebp),%esi
	movl	-540(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_NETDB_BUILDPAYLOAD$TQUERYDATA$ANSISTRING$WORD$WORD$$LONGINT
_NETDB_BUILDPAYLOAD$TQUERYDATA$ANSISTRING$WORD$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj650
	movl	$-1,-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj657
	movl	-4(%eax),%eax
Lj657:
	cmpl	$506,%eax
	jg	Lj655
	jmp	Lj656
Lj655:
	jmp	Lj650
Lj656:
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	movl	%eax,-20(%ebp)
	.align 2
Lj662:
	movl	-8(%ebp),%edx
	movb	$46,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj671
	jmp	Lj672
Lj671:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj675
	movl	-4(%eax),%eax
Lj675:
	movl	%eax,-28(%ebp)
	jmp	Lj676
Lj672:
	movl	-24(%ebp),%eax
	decl	%eax
	movl	%eax,-28(%ebp)
Lj676:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	-28(%ebp),%cl
	movb	%cl,(%edx,%eax,1)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	leal	(%edx,%eax,1),%edx
	movl	-28(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-28(%ebp),%eax
	incl	%eax
	addl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj687
	jmp	Lj688
Lj687:
	movl	-24(%ebp),%ecx
	leal	-8(%ebp),%eax
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
Lj688:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj664
	jmp	Lj662
Lj664:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	$0,(%edx,%eax,1)
	movw	-12(%ebp),%ax
	movw	%ax,-70(%ebp)
	movzwl	-70(%ebp),%eax
	shrl	$8,%eax
	movzwl	-70(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-12(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	leal	(%edx,%eax,1),%edx
	leal	-12(%ebp),%eax
	movl	$2,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	addl	$3,-16(%ebp)
	movw	8(%ebp),%ax
	movw	%ax,-70(%ebp)
	movzwl	-70(%ebp),%eax
	shrl	$8,%eax
	movzwl	-70(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,8(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	leal	(%eax,%edx,1),%edx
	leal	8(%ebp),%eax
	movl	$2,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	addl	$2,-16(%ebp)
Lj650:
	call	LFPC_POPADDRSTACK$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj651
	call	LFPC_RERAISE$stub
Lj651:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_NETDB_NEXTRR$TPAYLOAD$LONGINT$LONGINT$TRRDATA$$BOOLEAN
_NETDB_NEXTRR$TPAYLOAD$LONGINT$LONGINT$TRRDATA$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	.align 2
Lj723:
	movb	$1,-21(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	cmpl	$63,%eax
	jg	Lj728
	jmp	Lj729
Lj728:
	addl	$2,-20(%ebp)
	jmp	Lj730
Lj729:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	testl	%eax,%eax
	je	Lj731
	jmp	Lj732
Lj731:
	incl	-20(%ebp)
	jmp	Lj733
Lj732:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	incl	%eax
	addl	%eax,-20(%ebp)
	movb	$0,-21(%ebp)
Lj733:
Lj730:
	cmpb	$0,-21(%ebp)
	jne	Lj725
	jmp	Lj736
Lj736:
	movl	-12(%ebp),%eax
	subl	$10,%eax
	cmpl	-20(%ebp),%eax
	jl	Lj725
	jmp	Lj723
Lj725:
	movl	-12(%ebp),%eax
	subl	$10,%eax
	cmpl	-20(%ebp),%eax
	setgeb	-13(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%edx
	movl	8(%ebp),%ecx
	movl	(%edx),%eax
	movl	%eax,(%ecx)
	movl	4(%edx),%eax
	movl	%eax,4(%ecx)
	movw	8(%edx),%ax
	movw	%ax,8(%ecx)
	movl	-20(%ebp),%eax
	addl	$10,%eax
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_NETDB_BUILDNAME$TPAYLOAD$LONGINT$LONGINT$$ANSISTRING
_NETDB_BUILDNAME$TPAYLOAD$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	movl	$512,%edx
	call	Lfpc_ansistr_setlength$stub
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$1,-20(%ebp)
	.align 2
Lj755:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	cmpl	$63,%eax
	jg	Lj758
	jmp	Lj759
Lj758:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	leal	-22(%ebp),%edx
	movl	$2,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movzwl	-22(%ebp),%eax
	shrl	$8,%eax
	movzwl	-22(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movzwl	%ax,%eax
	subl	$49152,%eax
	subl	$12,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj774
Lj759:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	testl	%eax,%eax
	jne	Lj775
	jmp	Lj776
Lj775:
	movl	-20(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj777
	jmp	Lj778
Lj777:
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	-20(%ebp),%edx
	movb	$46,-1(%eax,%edx,1)
	incl	-20(%ebp)
Lj778:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movzbw	(%eax,%edx,1),%ax
	movw	%ax,-22(%ebp)
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	-20(%ebp),%edx
	leal	-1(%eax,%edx,1),%edx
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%eax
	incl	%eax
	leal	(%ecx,%eax,1),%eax
	movzwl	-22(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movzwl	-22(%ebp),%eax
	incl	%eax
	addl	%eax,-16(%ebp)
	movzwl	-22(%ebp),%eax
	addl	%eax,-20(%ebp)
Lj776:
Lj774:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	testl	%eax,%eax
	je	Lj757
	jmp	Lj755
Lj757:
	movl	-20(%ebp),%edx
	decl	%edx
	movl	8(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	leave
	ret

.text
	.align 4
.globl	_NETDB_CHECKANSWER$TQUERYDATA$TQUERYDATA$$BOOLEAN
_NETDB_CHECKANSWER$TQUERYDATA$TQUERYDATA$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movb	1(%eax),%al
	cmpb	1(%edx),%al
	jne	Lj801
	jmp	Lj803
Lj803:
	movl	-8(%ebp),%eax
	movl	-4(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj801
	jmp	Lj802
Lj801:
	jmp	Lj797
Lj802:
	movl	-8(%ebp),%eax
	movb	2(%eax),%al
	andb	$128,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	je	Lj804
	jmp	Lj805
Lj804:
	jmp	Lj797
Lj805:
	movl	-8(%ebp),%eax
	movb	2(%eax),%al
	andb	$120,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj806
	jmp	Lj807
Lj806:
	jmp	Lj797
Lj807:
	movl	-8(%ebp),%eax
	movb	3(%eax),%al
	andb	$15,%al
	movzbl	%al,%eax
	testl	%eax,%eax
	jne	Lj808
	jmp	Lj809
Lj808:
	jmp	Lj797
Lj809:
	movl	-8(%ebp),%eax
	movzwl	6(%eax),%eax
	shrl	$8,%eax
	movl	-8(%ebp),%edx
	movzwl	6(%edx),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movl	-8(%ebp),%edx
	movw	%ax,6(%edx)
	movl	-8(%ebp),%eax
	movzwl	6(%eax),%eax
	cmpl	$1,%eax
	jl	Lj818
	jmp	Lj819
Lj818:
	jmp	Lj797
Lj819:
	movb	$1,-9(%ebp)
Lj797:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_NETDB_SKIPANSQUERIES$TQUERYDATA$LONGINT$$LONGINT
_NETDB_SKIPANSQUERIES$TQUERYDATA$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movzwl	4(%eax),%eax
	shrl	$8,%eax
	movl	-4(%ebp),%edx
	movzwl	4(%edx),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,4(%edx)
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj839
	.align 2
Lj838:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movzbl	12(%eax,%edx,1),%eax
	cmpl	$63,%eax
	jg	Lj841
	jmp	Lj842
Lj841:
	addl	$6,-20(%ebp)
	incl	-16(%ebp)
	jmp	Lj843
Lj842:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movzbl	12(%edx,%eax,1),%eax
	testl	%eax,%eax
	je	Lj844
	jmp	Lj845
Lj844:
	incl	-16(%ebp)
	addl	$5,-20(%ebp)
	jmp	Lj846
Lj845:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movzbl	12(%edx,%eax,1),%eax
	incl	%eax
	addl	%eax,-20(%ebp)
Lj846:
Lj843:
Lj839:
	movl	-4(%ebp),%eax
	movzwl	4(%eax),%eax
	cmpl	-16(%ebp),%eax
	jg	Lj847
	jmp	Lj840
Lj847:
	movl	-20(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj838
	jmp	Lj840
Lj840:
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_NETDB_QUERY$LONGINT$TQUERYDATA$TQUERYDATA$LONGINT$LONGINT$$BOOLEAN
_NETDB_QUERY$LONGINT$TQUERYDATA$TQUERYDATA$LONGINT$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$200,%esp
	movl	%ebx,-180(%ebp)
	call	Lj851
Lj851:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	$256,%eax
	call	L_SYSTEM_RANDOM$LONGINT$$LONGINT$stub
	movl	-8(%ebp),%edx
	movb	%al,(%edx)
	movl	$256,%eax
	call	L_SYSTEM_RANDOM$LONGINT$$LONGINT$stub
	movl	-8(%ebp),%edx
	movb	%al,1(%edx)
	movl	-8(%ebp),%eax
	movb	$1,2(%eax)
	movl	-8(%ebp),%eax
	movb	$0,3(%eax)
	movl	-8(%ebp),%eax
	movw	$256,4(%eax)
	movl	-8(%ebp),%eax
	movw	$0,6(%eax)
	movl	-8(%ebp),%eax
	movw	$0,8(%eax)
	movl	-8(%ebp),%eax
	movw	$0,10(%eax)
	movl	$0,%ecx
	movl	$2,%edx
	movl	$2,%eax
	call	L_SOCKETS_FPSOCKET$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj882
	jmp	Lj883
Lj882:
	jmp	Lj850
Lj883:
	movb	$2,-31(%ebp)
	movw	$13568,-30(%ebp)
	movl	L_U_NETDB_DNSSERVERS$non_lazy_ptr-Lj851(%ebx),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-28(%ebp)
	movl	$16,(%esp)
	movl	$0,8(%esp)
	leal	-32(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%edx
	movl	12(%ebp),%ecx
	addl	$12,%ecx
	movl	-36(%ebp),%eax
	call	L_SOCKETS_FPSENDTO$LONGINT$POINTER$LONGWORD$LONGINT$PSOCKADDR$LONGWORD$$LONGINT$stub
	movl	L_U_NETDB_TIMEOUTS$non_lazy_ptr-Lj851(%ebx),%eax
	movl	(%eax),%edx
	imull	$1000,%edx
	movl	L_U_NETDB_TIMEOUTMS$non_lazy_ptr-Lj851(%ebx),%eax
	movl	(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-48(%ebp)
	leal	-176(%ebp),%eax
	call	L_BASEUNIX_FPFD_ZERO$TFDSET$$LONGINT$stub
	leal	-176(%ebp),%edx
	movl	-36(%ebp),%eax
	call	L_BASEUNIX_FPFD_SET$LONGINT$TFDSET$$LONGINT$stub
	movl	$0,4(%esp)
	movl	-48(%ebp),%eax
	movl	%eax,(%esp)
	leal	-176(%ebp),%edx
	movl	-36(%ebp),%eax
	incl	%eax
	movl	$0,%ecx
	call	L_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$LONGINT$$LONGINT$stub
	cmpl	$0,%eax
	jle	Lj910
	jmp	Lj911
Lj910:
	movl	-36(%ebp),%eax
	call	LFPC_SYSC_CLOSE$stub
	jmp	Lj850
Lj911:
	movl	$16,-44(%ebp)
	movl	$0,8(%esp)
	leal	-44(%ebp),%eax
	movl	%eax,(%esp)
	leal	-32(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%edx
	movl	-36(%ebp),%eax
	movl	$524,%ecx
	call	L_SOCKETS_FPRECVFROM$LONGINT$POINTER$LONGWORD$LONGINT$PSOCKADDR$PSOCKLEN$$LONGINT$stub
	movl	%eax,-40(%ebp)
	movl	-36(%ebp),%eax
	call	LFPC_SYSC_CLOSE$stub
	movl	-40(%ebp),%eax
	cmpl	$12,%eax
	jl	Lj942
	jmp	Lj944
Lj944:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_NETDB_CHECKANSWER$TQUERYDATA$TQUERYDATA$$BOOLEAN$stub
	testb	%al,%al
	je	Lj942
	jmp	Lj943
Lj942:
	jmp	Lj850
Lj943:
	movl	-40(%ebp),%eax
	subl	$12,%eax
	movl	8(%ebp),%edx
	movl	%eax,(%edx)
	movb	$1,-13(%ebp)
Lj850:
	movb	-13(%ebp),%al
	movl	-180(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_NETDB_STRINGFROMLABEL$TPAYLOAD$LONGINT$$ANSISTRING
_NETDB_STRINGFROMLABEL$TPAYLOAD$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$552,%esp
	movl	%ebx,-544(%ebp)
	movl	%esi,-540(%ebp)
	movl	%edi,-536(%ebp)
	call	Lj954
Lj954:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%esi
	leal	-532(%ebp),%edi
	cld
	movl	$128,%ecx
	rep
	movsl
	movl	-12(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,(%esi)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	.align 2
Lj961:
	movl	-8(%ebp),%eax
	movzbl	-532(%ebp,%eax,1),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj967
	.align 2
Lj966:
	movl	-16(%ebp),%eax
	andl	$-193,%eax
	shll	$8,%eax
	movl	-8(%ebp),%edx
	incl	%edx
	movzbl	-532(%ebp,%edx,1),%edx
	addl	%edx,%eax
	subl	$12,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movzbl	-532(%ebp,%eax,1),%eax
	movl	%eax,-16(%ebp)
Lj967:
	movl	-16(%ebp),%eax
	cmpl	$192,%eax
	jge	Lj966
	jmp	Lj968
Lj968:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj973
	jmp	Lj974
Lj973:
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj977
	movl	-4(%edx),%edx
Lj977:
	movl	-16(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_unique$stub
	movl	-20(%ebp),%edx
	incl	%edx
	leal	-1(%eax,%edx,1),%edx
	movl	-8(%ebp),%eax
	incl	%eax
	leal	-532(%ebp,%eax,1),%eax
	movl	-16(%ebp),%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	L_$NETDB$_Ld14$non_lazy_ptr-Lj954(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-16(%ebp),%eax
	addl	%eax,-8(%ebp)
	incl	-8(%ebp)
	movl	-16(%ebp),%eax
	addl	%eax,-20(%ebp)
	incl	-20(%ebp)
Lj974:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj963
	jmp	Lj961
Lj963:
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj996
	movl	-4(%eax),%eax
Lj996:
	movb	-1(%edx,%eax,1),%al
	cmpb	$46,%al
	je	Lj994
	jmp	Lj995
Lj994:
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj999
	movl	-4(%edx),%edx
Lj999:
	decl	%edx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
Lj995:
	movl	-544(%ebp),%ebx
	movl	-540(%ebp),%esi
	movl	-536(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_NETDB_RESOLVENAMEAT$LONGINT$ANSISTRING$array_of_IN_ADDR$LONGINT$$LONGINT
_NETDB_RESOLVENAMEAT$LONGINT$ANSISTRING$array_of_IN_ADDR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1160,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-1100(%ebp)
	movl	$0,-1144(%ebp)
	leal	-1112(%ebp),%ecx
	leal	-1136(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-1140(%ebp)
	testl	%eax,%eax
	jne	Lj1004
	movl	$0,-16(%ebp)
	movw	$1,(%esp)
	movl	-8(%ebp),%edx
	leal	-540(%ebp),%eax
	movw	$1,%cx
	call	L_NETDB_BUILDPAYLOAD$TQUERYDATA$ANSISTRING$WORD$WORD$$LONGINT$stub
	movl	%eax,-1076(%ebp)
	leal	-1080(%ebp),%eax
	movl	%eax,(%esp)
	movl	-1076(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-1064(%ebp),%ecx
	leal	-540(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_NETDB_QUERY$LONGINT$TQUERYDATA$TQUERYDATA$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1019
	jmp	Lj1020
Lj1019:
	movl	$-1,-16(%ebp)
	jmp	Lj1033
Lj1020:
	movl	-1080(%ebp),%edx
	leal	-1064(%ebp),%eax
	call	L_NETDB_SKIPANSQUERIES$TQUERYDATA$LONGINT$$LONGINT$stub
	movl	%eax,-1084(%ebp)
	movzwl	-1058(%ebp),%eax
	decl	%eax
	movl	%eax,-1068(%ebp)
	movl	-1068(%ebp),%eax
	cmpl	12(%ebp),%eax
	jg	Lj1042
	jmp	Lj1043
Lj1042:
	movl	12(%ebp),%eax
	movl	%eax,-1068(%ebp)
Lj1043:
	movl	$0,-1072(%ebp)
	jmp	Lj1049
	.align 2
Lj1048:
	movzwl	-1094(%ebp),%eax
	shrl	$8,%eax
	movzwl	-1094(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movzwl	%ax,%eax
	cmpl	$1,%eax
	je	Lj1051
	jmp	Lj1052
Lj1051:
	movzwl	-1096(%ebp),%eax
	shrl	$8,%eax
	movzwl	-1096(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	cmpw	$1,%ax
	jb	Lj1060
	decw	%ax
	je	Lj1061
	subw	$4,%ax
	je	Lj1062
	jmp	Lj1060
Lj1061:
	movl	-12(%ebp),%edx
	movl	-1072(%ebp),%eax
	leal	(%edx,%eax,4),%edx
	movl	-1084(%ebp),%eax
	leal	-1052(%ebp,%eax,1),%eax
	movl	$4,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	incl	-16(%ebp)
	movzwl	-1088(%ebp),%eax
	shrl	$8,%eax
	movzwl	-1088(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movzwl	%ax,%eax
	addl	%eax,-1084(%ebp)
	jmp	Lj1059
Lj1062:
	movl	8(%ebp),%eax
	cmpl	$10,%eax
	jge	Lj1081
	jmp	Lj1082
Lj1081:
	movl	$-1,-16(%ebp)
	jmp	Lj1004
Lj1082:
	movzwl	-1088(%ebp),%eax
	shrl	$8,%eax
	movzwl	-1088(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-1088(%ebp)
	movzwl	-1088(%ebp),%edx
	leal	-1100(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	leal	-1144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-1144(%ebp)
	leal	-1144(%ebp),%ecx
	movl	-1084(%ebp),%edx
	leal	-1052(%ebp),%eax
	call	L_NETDB_STRINGFROMLABEL$TPAYLOAD$LONGINT$$ANSISTRING$stub
	movl	-1144(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-1100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-1144(%ebp),%eax
	movl	%eax,-1100(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	incl	%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-1100(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_NETDB_RESOLVENAMEAT$LONGINT$ANSISTRING$array_of_IN_ADDR$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj1004
	jmp	Lj1059
Lj1060:
Lj1059:
Lj1052:
	incl	-1072(%ebp)
Lj1049:
	movl	-1072(%ebp),%eax
	cmpl	-1068(%ebp),%eax
	jle	Lj1117
	jmp	Lj1050
Lj1117:
	leal	-1096(%ebp),%eax
	movl	%eax,(%esp)
	movl	-1080(%ebp),%ecx
	leal	-1084(%ebp),%edx
	leal	-1052(%ebp),%eax
	call	L_NETDB_NEXTRR$TPAYLOAD$LONGINT$LONGINT$TRRDATA$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1048
	jmp	Lj1050
Lj1050:
Lj1033:
Lj1004:
	call	LFPC_POPADDRSTACK$stub
	leal	-1144(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-1144(%ebp)
	leal	-1100(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-1100(%ebp)
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-1140(%ebp),%eax
	testl	%eax,%eax
	je	Lj1005
	call	LFPC_RERAISE$stub
Lj1005:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_NETDB_RESOLVENAME$ANSISTRING$array_of_IN_ADDR$$LONGINT
_NETDB_RESOLVENAME$ANSISTRING$array_of_IN_ADDR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	call	Lj1133
Lj1133:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1134
	call	L_NETDB_CHECKRESOLVEFILE$stub
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj1142
	.align 2
Lj1141:
	movl	$0,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_NETDB_RESOLVENAMEAT$LONGINT$ANSISTRING$array_of_IN_ADDR$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	incl	-20(%ebp)
Lj1142:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj1156
	jmp	Lj1143
Lj1156:
	movl	L_U_NETDB_DNSSERVERS$non_lazy_ptr-Lj1133(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_high$stub
	cmpl	-20(%ebp),%eax
	jge	Lj1141
	jmp	Lj1143
Lj1143:
Lj1134:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1135
	call	LFPC_RERAISE$stub
Lj1135:
	movl	-16(%ebp),%eax
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_NETDB_RESOLVENAMEAT6$LONGINT$ANSISTRING$array_of_IN6_ADDR$LONGINT$$LONGINT
_NETDB_RESOLVENAMEAT6$LONGINT$ANSISTRING$array_of_IN6_ADDR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1224,%esp
	movl	%ebx,-1204(%ebp)
	movl	%esi,-1200(%ebp)
	movl	%edi,-1196(%ebp)
	call	Lj1160
Lj1160:
	popl	-1192(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-1100(%ebp)
	movl	$0,-1188(%ebp)
	leal	-1156(%ebp),%ecx
	leal	-1180(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-1184(%ebp)
	testl	%eax,%eax
	jne	Lj1161
	movl	$0,-16(%ebp)
	movw	$1,(%esp)
	movl	-8(%ebp),%edx
	leal	-540(%ebp),%eax
	movw	$28,%cx
	call	L_NETDB_BUILDPAYLOAD$TQUERYDATA$ANSISTRING$WORD$WORD$$LONGINT$stub
	movl	%eax,-1076(%ebp)
	leal	-1080(%ebp),%eax
	movl	%eax,(%esp)
	movl	-1076(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-1064(%ebp),%ecx
	leal	-540(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_NETDB_QUERY$LONGINT$TQUERYDATA$TQUERYDATA$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1176
	jmp	Lj1177
Lj1176:
	leal	-1140(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	$9,%ecx
	call	L_NETDB_RESOLVENAME$ANSISTRING$array_of_IN_ADDR$$LONGINT$stub
	movl	%eax,-1144(%ebp)
	movl	-1144(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1196
	jmp	Lj1197
Lj1196:
	incl	-1144(%ebp)
	movl	-1144(%ebp),%eax
	cmpl	$10,%eax
	jg	Lj1198
	jmp	Lj1199
Lj1198:
	movl	$10,-1144(%ebp)
Lj1199:
	movl	12(%ebp),%eax
	incl	%eax
	cmpl	-1144(%ebp),%eax
	jl	Lj1202
	jmp	Lj1203
Lj1202:
	movl	12(%ebp),%eax
	incl	%eax
	movl	%eax,-1144(%ebp)
Lj1203:
	movl	-1144(%ebp),%eax
	subl	$2,%eax
	movl	%eax,%ebx
	movl	$0,-1072(%ebp)
	cmpl	-1072(%ebp),%ebx
	jl	Lj1207
	decl	-1072(%ebp)
	.align 2
Lj1208:
	incl	-1072(%ebp)
	movl	-12(%ebp),%edx
	movl	-1072(%ebp),%eax
	shll	$4,%eax
	leal	(%edx,%eax),%edi
	movl	-1192(%ebp),%edx
	movl	L_TC_SOCKETS_NOADDRESS6$non_lazy_ptr-Lj1160(%edx),%eax
	movl	%eax,%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-12(%ebp),%edx
	movl	-1072(%ebp),%eax
	shll	$4,%eax
	movw	$65535,10(%edx,%eax)
	movl	-12(%ebp),%edx
	movl	-1072(%ebp),%eax
	shll	$4,%eax
	leal	12(%edx,%eax),%edx
	movl	-1072(%ebp),%eax
	leal	-1140(%ebp,%eax,4),%eax
	movl	$4,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	cmpl	-1072(%ebp),%ebx
	jg	Lj1208
Lj1207:
	movl	-1144(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1221
Lj1197:
	movl	$-1,-16(%ebp)
Lj1221:
	jmp	Lj1224
Lj1177:
	movl	-1080(%ebp),%edx
	leal	-1064(%ebp),%eax
	call	L_NETDB_SKIPANSQUERIES$TQUERYDATA$LONGINT$$LONGINT$stub
	movl	%eax,-1084(%ebp)
	movzwl	-1058(%ebp),%eax
	decl	%eax
	movl	%eax,-1068(%ebp)
	movl	-1068(%ebp),%eax
	cmpl	12(%ebp),%eax
	jg	Lj1233
	jmp	Lj1234
Lj1233:
	movl	12(%ebp),%eax
	movl	%eax,-1068(%ebp)
Lj1234:
	movl	$0,-1072(%ebp)
	jmp	Lj1240
	.align 2
Lj1239:
	movzwl	-1094(%ebp),%eax
	shrl	$8,%eax
	movzwl	-1094(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movzwl	%ax,%eax
	cmpl	$1,%eax
	je	Lj1242
	jmp	Lj1243
Lj1242:
	movzwl	-1096(%ebp),%eax
	shrl	$8,%eax
	movzwl	-1096(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	cmpw	$5,%ax
	jb	Lj1251
	subw	$5,%ax
	je	Lj1253
	subw	$23,%ax
	je	Lj1252
	jmp	Lj1251
Lj1252:
	movl	-12(%ebp),%edx
	movl	-1072(%ebp),%eax
	shll	$4,%eax
	leal	(%edx,%eax),%edx
	movl	-1084(%ebp),%eax
	leal	-1052(%ebp,%eax,1),%eax
	movl	$16,%ecx
	call	L_SYSTEM_MOVE$formal$formal$LONGINT$stub
	incl	-16(%ebp)
	movzwl	-1088(%ebp),%eax
	shrl	$8,%eax
	movzwl	-1088(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-1088(%ebp)
	movzwl	-1088(%ebp),%eax
	addl	%eax,-1084(%ebp)
	jmp	Lj1250
Lj1253:
	movl	8(%ebp),%eax
	cmpl	$10,%eax
	jge	Lj1274
	jmp	Lj1275
Lj1274:
	movl	$-1,-16(%ebp)
	jmp	Lj1161
Lj1275:
	movzwl	-1088(%ebp),%eax
	shrl	$8,%eax
	movzwl	-1088(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-1088(%ebp)
	movzwl	-1088(%ebp),%edx
	leal	-1100(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	leal	-1188(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-1188(%ebp)
	leal	-1188(%ebp),%ecx
	movl	-1084(%ebp),%edx
	leal	-1052(%ebp),%eax
	call	L_NETDB_STRINGFROMLABEL$TPAYLOAD$LONGINT$$ANSISTRING$stub
	movl	-1188(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-1100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-1188(%ebp),%eax
	movl	%eax,-1100(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	incl	%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	movl	-1100(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_NETDB_RESOLVENAMEAT6$LONGINT$ANSISTRING$array_of_IN6_ADDR$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj1161
	jmp	Lj1250
Lj1251:
Lj1250:
Lj1243:
	incl	-1072(%ebp)
Lj1240:
	movl	-1072(%ebp),%eax
	cmpl	-1068(%ebp),%eax
	jle	Lj1310
	jmp	Lj1241
Lj1310:
	leal	-1096(%ebp),%eax
	movl	%eax,(%esp)
	movl	-1080(%ebp),%ecx
	leal	-1084(%ebp),%edx
	leal	-1052(%ebp),%eax
	call	L_NETDB_NEXTRR$TPAYLOAD$LONGINT$LONGINT$TRRDATA$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1239
	jmp	Lj1241
Lj1241:
Lj1224:
Lj1161:
	call	LFPC_POPADDRSTACK$stub
	leal	-1188(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-1188(%ebp)
	leal	-1100(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-1100(%ebp)
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-1184(%ebp),%eax
	testl	%eax,%eax
	je	Lj1162
	call	LFPC_RERAISE$stub
Lj1162:
	movl	-16(%ebp),%eax
	movl	-1204(%ebp),%ebx
	movl	-1200(%ebp),%esi
	movl	-1196(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_NETDB_RESOLVENAME6$ANSISTRING$array_of_IN6_ADDR$$LONGINT
_NETDB_RESOLVENAME6$ANSISTRING$array_of_IN6_ADDR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	call	Lj1326
Lj1326:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1327
	call	L_NETDB_CHECKRESOLVEFILE$stub
	movl	$0,-20(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj1335
	.align 2
Lj1334:
	movl	$0,(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_NETDB_RESOLVENAMEAT6$LONGINT$ANSISTRING$array_of_IN6_ADDR$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	incl	-20(%ebp)
Lj1335:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj1349
	jmp	Lj1336
Lj1349:
	movl	L_U_NETDB_DNSSERVERS$non_lazy_ptr-Lj1326(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_high$stub
	cmpl	-20(%ebp),%eax
	jge	Lj1334
	jmp	Lj1336
Lj1336:
Lj1327:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1328
	call	LFPC_RERAISE$stub
Lj1328:
	movl	-16(%ebp),%eax
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_NETDB_RESOLVEADDRESSAT$LONGINT$ANSISTRING$array_of_ANSISTRING$$LONGINT
_NETDB_RESOLVEADDRESSAT$LONGINT$ANSISTRING$array_of_ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1160,%esp
	movl	%ebx,-1148(%ebp)
	movl	%esi,-1144(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-1140(%ebp)
	leal	-1108(%ebp),%ecx
	leal	-1132(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-1136(%ebp)
	testl	%eax,%eax
	jne	Lj1354
	movl	$0,-16(%ebp)
	movw	$1,(%esp)
	movl	-8(%ebp),%edx
	leal	-540(%ebp),%eax
	movw	$12,%cx
	call	L_NETDB_BUILDPAYLOAD$TQUERYDATA$ANSISTRING$WORD$WORD$$LONGINT$stub
	movl	%eax,-1076(%ebp)
	leal	-1080(%ebp),%eax
	movl	%eax,(%esp)
	movl	-1076(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-1064(%ebp),%ecx
	leal	-540(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_NETDB_QUERY$LONGINT$TQUERYDATA$TQUERYDATA$LONGINT$LONGINT$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1369
	jmp	Lj1370
Lj1369:
	movl	$-1,-16(%ebp)
	jmp	Lj1383
Lj1370:
	movl	-1080(%ebp),%edx
	leal	-1064(%ebp),%eax
	call	L_NETDB_SKIPANSQUERIES$TQUERYDATA$LONGINT$$LONGINT$stub
	movl	%eax,-1084(%ebp)
	movzwl	-1058(%ebp),%eax
	decl	%eax
	movl	%eax,-1068(%ebp)
	movl	-1068(%ebp),%eax
	cmpl	8(%ebp),%eax
	jg	Lj1392
	jmp	Lj1393
Lj1392:
	movl	8(%ebp),%eax
	movl	%eax,-1068(%ebp)
Lj1393:
	movl	$0,-1072(%ebp)
	jmp	Lj1399
	.align 2
Lj1398:
	movzwl	-1096(%ebp),%eax
	shrl	$8,%eax
	movzwl	-1096(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movzwl	%ax,%eax
	cmpl	$12,%eax
	je	Lj1403
	jmp	Lj1402
Lj1403:
	movzwl	-1094(%ebp),%eax
	shrl	$8,%eax
	movzwl	-1094(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movzwl	%ax,%eax
	cmpl	$1,%eax
	je	Lj1401
	jmp	Lj1402
Lj1401:
	leal	-1140(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-1140(%ebp)
	leal	-1140(%ebp),%eax
	movl	%eax,(%esp)
	movl	-1080(%ebp),%ecx
	movl	-1084(%ebp),%edx
	leal	-1052(%ebp),%eax
	call	L_NETDB_BUILDNAME$TPAYLOAD$LONGINT$LONGINT$$ANSISTRING$stub
	movl	-1140(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	-1072(%ebp),%esi
	leal	(%ebx,%esi,4),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-1140(%ebp),%eax
	movl	%eax,(%ebx,%esi,4)
	incl	-16(%ebp)
	movzwl	-1088(%ebp),%eax
	shrl	$8,%eax
	movzwl	-1088(%ebp),%edx
	shll	$8,%edx
	orl	%edx,%eax
	movw	%ax,-1088(%ebp)
	movzwl	-1088(%ebp),%eax
	addl	%eax,-1084(%ebp)
Lj1402:
	incl	-1072(%ebp)
Lj1399:
	movl	-1072(%ebp),%eax
	cmpl	-1068(%ebp),%eax
	jle	Lj1434
	jmp	Lj1400
Lj1434:
	leal	-1096(%ebp),%eax
	movl	%eax,(%esp)
	movl	-1080(%ebp),%ecx
	leal	-1084(%ebp),%edx
	leal	-1052(%ebp),%eax
	call	L_NETDB_NEXTRR$TPAYLOAD$LONGINT$LONGINT$TRRDATA$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1398
	jmp	Lj1400
Lj1400:
Lj1383:
Lj1354:
	call	LFPC_POPADDRSTACK$stub
	leal	-1140(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-1140(%ebp)
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-1136(%ebp),%eax
	testl	%eax,%eax
	je	Lj1355
	call	LFPC_RERAISE$stub
Lj1355:
	movl	-16(%ebp),%eax
	movl	-1148(%ebp),%ebx
	movl	-1144(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_NETDB_RESOLVEADDRESS$IN_ADDR$array_of_ANSISTRING$$LONGINT
_NETDB_RESOLVEADDRESS$IN_ADDR$array_of_ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	call	Lj1444
Lj1444:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-20(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1445
	call	L_NETDB_CHECKRESOLVEFILE$stub
	movl	$0,-16(%ebp)
	movl	$0,-12(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_SOCKETS_HOSTTONET$IN_ADDR$$IN_ADDR$stub
	movl	%eax,-24(%ebp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-21(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$0,-96(%ebp)
	movzbl	-22(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	$0,-88(%ebp)
	movzbl	-23(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$0,-80(%ebp)
	movzbl	-24(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$0,-72(%ebp)
	leal	-96(%ebp),%edx
	movl	$3,%ecx
	movl	L_$NETDB$_Ld16$non_lazy_ptr-Lj1444(%ebx),%eax
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	jmp	Lj1465
	.align 2
Lj1464:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_NETDB_RESOLVEADDRESSAT$LONGINT$ANSISTRING$array_of_ANSISTRING$$LONGINT$stub
	movl	%eax,-12(%ebp)
	incl	-16(%ebp)
Lj1465:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1477
	jmp	Lj1466
Lj1477:
	movl	L_U_NETDB_DNSSERVERS$non_lazy_ptr-Lj1444(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_high$stub
	cmpl	-16(%ebp),%eax
	jge	Lj1464
	jmp	Lj1466
Lj1466:
Lj1445:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1446
	call	LFPC_RERAISE$stub
Lj1446:
	movl	-12(%ebp),%eax
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_NETDB_RESOLVEADDRESS6$IN6_ADDR$array_of_ANSISTRING$$LONGINT
_NETDB_RESOLVEADDRESS6$IN6_ADDR$array_of_ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$360,%esp
	movl	%ebx,-344(%ebp)
	movl	%esi,-340(%ebp)
	movl	%edi,-336(%ebp)
	call	Lj1487
Lj1487:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%esi
	leal	-292(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	$0,-332(%ebp)
	leal	-304(%ebp),%ecx
	leal	-328(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-4(%ebp)
	testl	%eax,%eax
	jne	Lj1488
	call	L_NETDB_CHECKRESOLVEFILE$stub
	movl	$0,-16(%ebp)
	leal	-276(%ebp),%eax
	movl	L_$NETDB$_Ld18$non_lazy_ptr-Lj1487(%ebx),%ecx
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	$7,-20(%ebp)
	incl	-20(%ebp)
	.align 2
Lj1501:
	decl	-20(%ebp)
	movl	-20(%ebp),%eax
	movw	-292(%ebp,%eax,2),%ax
	andw	$15,%ax
	movzwl	%ax,%eax
	incl	%eax
	movzbl	%al,%eax
	movl	-20(%ebp),%edx
	movl	$7,%ecx
	subl	%edx,%ecx
	movl	%ecx,%edx
	shll	$3,%edx
	addl	$5,%edx
	movzbl	%dl,%edx
	movl	L_TC_NETDB_RESOLVEADDRESS6$crcDDF30028_HEXDIG$non_lazy_ptr-Lj1487(%ebx),%ecx
	movb	(%ecx,%eax,1),%al
	movb	%al,-276(%ebp,%edx,1)
	movl	-20(%ebp),%eax
	movw	-292(%ebp,%eax,2),%ax
	andw	$240,%ax
	movzwl	%ax,%eax
	shrl	$4,%eax
	incl	%eax
	movzbl	%al,%eax
	movl	-20(%ebp),%edx
	movl	$7,%ecx
	subl	%edx,%ecx
	movl	%ecx,%edx
	shll	$3,%edx
	addl	$7,%edx
	movzbl	%dl,%edx
	movl	L_TC_NETDB_RESOLVEADDRESS6$crcDDF30028_HEXDIG$non_lazy_ptr-Lj1487(%ebx),%ecx
	movb	(%ecx,%eax,1),%al
	movb	%al,-276(%ebp,%edx,1)
	movl	-20(%ebp),%eax
	movw	-292(%ebp,%eax,2),%ax
	andw	$3840,%ax
	movzwl	%ax,%eax
	shrl	$8,%eax
	incl	%eax
	movzbl	%al,%eax
	movl	-20(%ebp),%edx
	movl	$7,%ecx
	subl	%edx,%ecx
	movl	%ecx,%edx
	shll	$3,%edx
	incl	%edx
	movzbl	%dl,%edx
	movl	L_TC_NETDB_RESOLVEADDRESS6$crcDDF30028_HEXDIG$non_lazy_ptr-Lj1487(%ebx),%ecx
	movb	(%ecx,%eax,1),%al
	movb	%al,-276(%ebp,%edx,1)
	movl	-20(%ebp),%eax
	movw	-292(%ebp,%eax,2),%ax
	andw	$61440,%ax
	movzwl	%ax,%eax
	shrl	$12,%eax
	incl	%eax
	movzbl	%al,%eax
	movl	-20(%ebp),%edx
	movl	$7,%ecx
	subl	%edx,%ecx
	movl	%ecx,%edx
	shll	$3,%edx
	addl	$3,%edx
	movzbl	%dl,%edx
	movl	L_TC_NETDB_RESOLVEADDRESS6$crcDDF30028_HEXDIG$non_lazy_ptr-Lj1487(%ebx),%ecx
	movb	(%ecx,%eax,1),%al
	movb	%al,-276(%ebp,%edx,1)
	cmpl	$0,-20(%ebp)
	jg	Lj1501
	movl	$0,-20(%ebp)
	jmp	Lj1513
	.align 2
Lj1512:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	leal	-332(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-332(%ebp)
	leal	-332(%ebp),%edx
	leal	-276(%ebp),%eax
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-332(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%eax
	call	L_NETDB_RESOLVEADDRESSAT$LONGINT$ANSISTRING$array_of_ANSISTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	incl	-20(%ebp)
Lj1513:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1529
	jmp	Lj1514
Lj1529:
	movl	L_U_NETDB_DNSSERVERS$non_lazy_ptr-Lj1487(%ebx),%eax
	movl	(%eax),%eax
	call	Lfpc_dynarray_high$stub
	cmpl	-20(%ebp),%eax
	jge	Lj1512
	jmp	Lj1514
Lj1514:
Lj1488:
	call	LFPC_POPADDRSTACK$stub
	leal	-332(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-332(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1489
	call	LFPC_RERAISE$stub
Lj1489:
	movl	-16(%ebp),%eax
	movl	-344(%ebp),%ebx
	movl	-340(%ebp),%esi
	movl	-336(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_NETDB_IN6_IS_ADDR_V4MAPPED$IN6_ADDR$$BOOLEAN
_NETDB_IN6_IS_ADDR_V4MAPPED$IN6_ADDR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%esi,-32(%ebp)
	movl	%edi,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movzwl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj1540
	jmp	Lj1535
Lj1540:
	movzwl	-22(%ebp),%eax
	testl	%eax,%eax
	je	Lj1539
	jmp	Lj1535
Lj1539:
	movzwl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1538
	jmp	Lj1535
Lj1538:
	movzwl	-18(%ebp),%eax
	testl	%eax,%eax
	je	Lj1537
	jmp	Lj1535
Lj1537:
	movzwl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1536
	jmp	Lj1535
Lj1536:
	movw	-14(%ebp),%ax
	cmpw	$65535,%ax
	je	Lj1534
	jmp	Lj1535
Lj1534:
	movb	$1,-5(%ebp)
	jmp	Lj1541
Lj1535:
	movb	$0,-5(%ebp)
Lj1541:
	movb	-5(%ebp),%al
	movl	-32(%ebp),%esi
	movl	-28(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_NETDB_RESOLVEHOSTBYNAME$ANSISTRING$THOSTENTRY$$BOOLEAN
_NETDB_RESOLVEHOSTBYNAME$ANSISTRING$THOSTENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj1544
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$9,%ecx
	call	L_NETDB_RESOLVENAME$ANSISTRING$array_of_IN_ADDR$$LONGINT$stub
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	setgb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj1557
	jmp	Lj1558
Lj1557:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%eax
	movl	-52(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-8(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,8(%ebx)
Lj1558:
Lj1544:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj1545
	call	LFPC_RERAISE$stub
Lj1545:
	movb	-9(%ebp),%al
	movl	-100(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_NETDB_RESOLVEHOSTBYNAME6$ANSISTRING$THOSTENTRY6$$BOOLEAN
_NETDB_RESOLVEHOSTBYNAME6$ANSISTRING$THOSTENTRY6$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$232,%esp
	movl	%ebx,-228(%ebp)
	movl	%esi,-224(%ebp)
	movl	%edi,-220(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-188(%ebp),%ecx
	leal	-212(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-216(%ebp)
	testl	%eax,%eax
	jne	Lj1567
	leal	-172(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$9,%ecx
	call	L_NETDB_RESOLVENAME6$ANSISTRING$array_of_IN6_ADDR$$LONGINT$stub
	movl	%eax,-176(%ebp)
	movl	-176(%ebp),%eax
	cmpl	$0,%eax
	setgb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj1580
	jmp	Lj1581
Lj1580:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%eax
	leal	4(%eax),%edi
	leal	-172(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%ebx
	leal	20(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,20(%ebx)
Lj1581:
Lj1567:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-216(%ebp),%eax
	testl	%eax,%eax
	je	Lj1568
	call	LFPC_RERAISE$stub
Lj1568:
	movb	-9(%ebp),%al
	movl	-228(%ebp),%ebx
	movl	-224(%ebp),%esi
	movl	-220(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_NETDB_RESOLVEHOSTBYADDR$IN_ADDR$THOSTENTRY$$BOOLEAN
_NETDB_RESOLVEHOSTBYADDR$IN_ADDR$THOSTENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-124(%ebp)
	movl	%esi,-120(%ebp)
	movl	%edi,-116(%ebp)
	call	Lj1589
Lj1589:
	popl	-112(%ebp)
	movl	%eax,-4(%ebp)
	movl	-112(%ebp),%eax
	movl	L_INIT_NETDB_DEF175$non_lazy_ptr-Lj1589(%eax),%edx
	leal	-48(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj1590
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-48(%ebp),%eax
	movl	$9,%edx
	call	L_NETDB_RESOLVEADDRESS$IN_ADDR$array_of_ANSISTRING$$LONGINT$stub
	movl	%eax,-56(%ebp)
	movl	-56(%ebp),%eax
	cmpl	$0,%eax
	setgb	-5(%ebp)
	cmpb	$0,-5(%ebp)
	jne	Lj1603
	jmp	Lj1604
Lj1603:
	movl	-48(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-48(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-4(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-4(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,8(%ebx)
	movl	-56(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj1611
	jmp	Lj1612
Lj1611:
	movl	-56(%ebp),%ebx
	movl	$2,-52(%ebp)
	cmpl	-52(%ebp),%ebx
	jl	Lj1614
	decl	-52(%ebp)
	.align 2
Lj1615:
	incl	-52(%ebp)
	movl	-52(%ebp),%eax
	cmpl	$2,%eax
	je	Lj1616
	jmp	Lj1617
Lj1616:
	movl	-52(%ebp),%edi
	movl	-52(%ebp,%edi,4),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-4(%ebp),%esi
	leal	8(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp,%edi,4),%eax
	movl	%eax,8(%esi)
	jmp	Lj1620
Lj1617:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-108(%ebp)
	movl	-112(%ebp),%eax
	movl	L_$NETDB$_Ld1$non_lazy_ptr-Lj1589(%eax),%edx
	movl	%edx,-104(%ebp)
	movl	-52(%ebp),%eax
	movl	-52(%ebp,%eax,4),%eax
	movl	%eax,-100(%ebp)
	leal	-108(%ebp),%edx
	movl	-4(%ebp),%eax
	leal	8(%eax),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj1620:
	cmpl	-52(%ebp),%ebx
	jg	Lj1615
Lj1614:
Lj1612:
Lj1604:
Lj1590:
	call	LFPC_POPADDRSTACK$stub
	movl	-112(%ebp),%eax
	movl	L_INIT_NETDB_DEF175$non_lazy_ptr-Lj1589(%eax),%edx
	leal	-48(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj1591
	call	LFPC_RERAISE$stub
Lj1591:
	movb	-5(%ebp),%al
	movl	-124(%ebp),%ebx
	movl	-120(%ebp),%esi
	movl	-116(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_NETDB_RESOLVEHOSTBYADDR6$IN6_ADDR$THOSTENTRY6$$BOOLEAN
_NETDB_RESOLVEHOSTBYADDR6$IN6_ADDR$THOSTENTRY6$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-140(%ebp)
	movl	%esi,-136(%ebp)
	movl	%edi,-132(%ebp)
	call	Lj1636
Lj1636:
	popl	-128(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%esi
	leal	-76(%ebp),%edi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-128(%ebp),%eax
	movl	L_INIT_NETDB_DEF182$non_lazy_ptr-Lj1636(%eax),%edx
	leal	-52(%ebp),%eax
	call	Lfpc_initialize$stub
	leal	-88(%ebp),%ecx
	leal	-112(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-4(%ebp)
	testl	%eax,%eax
	jne	Lj1637
	leal	-52(%ebp),%edx
	leal	-76(%ebp),%eax
	movl	$9,%ecx
	call	L_NETDB_RESOLVEADDRESS6$IN6_ADDR$array_of_ANSISTRING$$LONGINT$stub
	movl	%eax,-60(%ebp)
	movl	-60(%ebp),%eax
	cmpl	$0,%eax
	setgb	-9(%ebp)
	cmpb	$0,-9(%ebp)
	jne	Lj1650
	jmp	Lj1651
Lj1650:
	movl	-52(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%eax
	leal	4(%eax),%edi
	leal	-76(%ebp),%esi
	cld
	movl	$4,%ecx
	rep
	movsl
	movl	-8(%ebp),%ebx
	leal	20(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,20(%ebx)
	movl	-60(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj1658
	jmp	Lj1659
Lj1658:
	movl	-60(%ebp),%ebx
	movl	$2,-56(%ebp)
	cmpl	-56(%ebp),%ebx
	jl	Lj1661
	decl	-56(%ebp)
	.align 2
Lj1662:
	incl	-56(%ebp)
	movl	-56(%ebp),%eax
	cmpl	$2,%eax
	je	Lj1663
	jmp	Lj1664
Lj1663:
	movl	-56(%ebp),%edi
	movl	-56(%ebp,%edi,4),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	20(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp,%edi,4),%eax
	movl	%eax,20(%esi)
	jmp	Lj1667
Lj1664:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-124(%ebp)
	movl	-128(%ebp),%eax
	movl	L_$NETDB$_Ld1$non_lazy_ptr-Lj1636(%eax),%edx
	movl	%edx,-120(%ebp)
	movl	-56(%ebp),%eax
	movl	-56(%ebp,%eax,4),%eax
	movl	%eax,-116(%ebp)
	leal	-124(%ebp),%edx
	movl	-8(%ebp),%eax
	leal	20(%eax),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj1667:
	cmpl	-56(%ebp),%ebx
	jg	Lj1662
Lj1661:
Lj1659:
Lj1651:
Lj1637:
	call	LFPC_POPADDRSTACK$stub
	movl	-128(%ebp),%eax
	movl	L_INIT_NETDB_DEF182$non_lazy_ptr-Lj1636(%eax),%edx
	leal	-52(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1638
	call	LFPC_RERAISE$stub
Lj1638:
	movb	-9(%ebp),%al
	movl	-140(%ebp),%ebx
	movl	-136(%ebp),%esi
	movl	-132(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_NETDB_GETHOSTBYNAME$ANSISTRING$THOSTENTRY$$BOOLEAN
_NETDB_GETHOSTBYNAME$ANSISTRING$THOSTENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	call	Lj1683
Lj1683:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1684
	movl	L_TC_SOCKETS_NOADDRESS$non_lazy_ptr-Lj1683(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_NETDB_FINDHOSTENTRYINHOSTSFILE$ANSISTRING$IN_ADDR$THOSTENTRY$$BOOLEAN$stub
	movb	%al,-9(%ebp)
Lj1684:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1685
	call	LFPC_RERAISE$stub
Lj1685:
	movb	-9(%ebp),%al
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_NETDB_GETHOSTBYADDR$IN_ADDR$THOSTENTRY$$BOOLEAN
_NETDB_GETHOSTBYADDR$IN_ADDR$THOSTENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	L_NETDB_FINDHOSTENTRYINHOSTSFILE$ANSISTRING$IN_ADDR$THOSTENTRY$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_NETDB_GETNEXTPROTOENTRY$TEXT$TPROTOCOLENTRY$$BOOLEAN
_NETDB_GETNEXTPROTOENTRY$TEXT$TPROTOCOLENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-84(%ebp)
	movl	%esi,-80(%ebp)
	call	Lj1706
Lj1706:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1707
	movb	$0,-9(%ebp)
	.align 2
Lj1712:
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_read_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_readln_end$stub
	call	LFPC_IOCHECK$stub
	leal	-16(%ebp),%eax
	call	L_NETDB_STRIPCOMMENT$ANSISTRING$$BOOLEAN$stub
	leal	-20(%ebp),%edx
	leal	-16(%ebp),%eax
	call	L_NETDB_NEXTWORD$ANSISTRING$$ANSISTRING$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1727
	jmp	Lj1728
Lj1727:
	movl	-20(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-20(%ebp),%eax
	movl	%eax,(%ebx)
	leal	-20(%ebp),%edx
	leal	-16(%ebp),%eax
	call	L_NETDB_NEXTWORD$ANSISTRING$$ANSISTRING$stub
	movl	-20(%ebp),%eax
	movl	$-1,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj1741
	jmp	Lj1742
Lj1741:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,4(%eax)
	movb	$1,-9(%ebp)
	movl	-8(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,8(%ebx)
	.align 2
Lj1749:
	leal	-20(%ebp),%edx
	leal	-16(%ebp),%eax
	call	L_NETDB_NEXTWORD$ANSISTRING$$ANSISTRING$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1756
	jmp	Lj1757
Lj1756:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj1758
	jmp	Lj1759
Lj1758:
	movl	-20(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-20(%ebp),%eax
	movl	%eax,8(%ebx)
	jmp	Lj1762
Lj1759:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-76(%ebp)
	movl	L_$NETDB$_Ld1$non_lazy_ptr-Lj1706(%esi),%eax
	movl	%eax,-72(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-68(%ebp)
	leal	-76(%ebp),%edx
	movl	-8(%ebp),%eax
	leal	8(%eax),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj1762:
Lj1757:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1751
	jmp	Lj1749
Lj1751:
Lj1742:
Lj1728:
	cmpb	$0,-9(%ebp)
	jne	Lj1714
	jmp	Lj1769
Lj1769:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_EOF$TEXT$$BOOLEAN$stub
	movb	%al,%bl
	call	LFPC_IOCHECK$stub
	testb	%bl,%bl
	jne	Lj1714
	jmp	Lj1712
Lj1714:
Lj1707:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1708
	call	LFPC_RERAISE$stub
Lj1708:
	movb	-9(%ebp),%al
	movl	-84(%ebp),%ebx
	movl	-80(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_NETDB_FINDPROTOENTRYINPROTOFILE$ANSISTRING$LONGINT$TPROTOCOLENTRY$$BOOLEAN
_NETDB_FINDPROTOENTRYINPROTOFILE$ANSISTRING$LONGINT$TPROTOCOLENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$936,%esp
	movl	%ebx,-928(%ebp)
	movl	%esi,-924(%ebp)
	call	Lj1785
Lj1785:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	L_INIT_NETDB_TPROTOCOLENTRY$non_lazy_ptr-Lj1785(%ebx),%edx
	leal	-620(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	$0,-664(%ebp)
	leal	-632(%ebp),%ecx
	leal	-656(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-660(%ebp)
	testl	%eax,%eax
	jne	Lj1786
	movb	$0,-13(%ebp)
	leal	-664(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-664(%ebp)
	movl	L_U_NETDB_ETCPATH$non_lazy_ptr-Lj1785(%ebx),%eax
	movl	(%eax),%edx
	leal	-664(%ebp),%eax
	movl	L_$NETDB$_Ld19$non_lazy_ptr-Lj1785(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-664(%ebp),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1791
	jmp	Lj1792
Lj1791:
	leal	-664(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-664(%ebp)
	movl	L_U_NETDB_ETCPATH$non_lazy_ptr-Lj1785(%ebx),%eax
	movl	(%eax),%edx
	leal	-664(%ebp),%eax
	movl	L_$NETDB$_Ld19$non_lazy_ptr-Lj1785(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-664(%ebp),%ecx
	leal	-920(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-920(%ebp),%edx
	leal	-608(%ebp),%eax
	call	L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub
	leal	-608(%ebp),%eax
	call	L_SYSTEM_RESET$TEXT$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movzwl	%ax,%eax
	testl	%eax,%eax
	je	Lj1819
	jmp	Lj1820
Lj1819:
	jmp	Lj1822
	.align 2
Lj1821:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1824
	jmp	Lj1825
Lj1824:
	movl	-612(%ebp),%ecx
	movl	-620(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_NETDB_MATCHNAMEORALIAS$ANSISTRING$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	jmp	Lj1834
Lj1825:
	movl	-8(%ebp),%eax
	cmpl	-616(%ebp),%eax
	seteb	-13(%ebp)
Lj1834:
Lj1822:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj1837
	jmp	Lj1823
Lj1837:
	leal	-620(%ebp),%edx
	leal	-608(%ebp),%eax
	call	L_NETDB_GETNEXTPROTOENTRY$TEXT$TPROTOCOLENTRY$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1821
	jmp	Lj1823
Lj1823:
	leal	-608(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	cmpb	$0,-13(%ebp)
	jne	Lj1844
	jmp	Lj1845
Lj1844:
	movl	-620(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-620(%ebp),%eax
	movl	%eax,(%esi)
	movl	-12(%ebp),%eax
	movl	-616(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-612(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	8(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-612(%ebp),%eax
	movl	%eax,8(%esi)
Lj1845:
Lj1820:
Lj1792:
Lj1786:
	call	LFPC_POPADDRSTACK$stub
	leal	-664(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-664(%ebp)
	movl	L_INIT_NETDB_TPROTOCOLENTRY$non_lazy_ptr-Lj1785(%ebx),%edx
	leal	-620(%ebp),%eax
	call	Lfpc_finalize$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-660(%ebp),%eax
	testl	%eax,%eax
	je	Lj1787
	call	LFPC_RERAISE$stub
Lj1787:
	movb	-13(%ebp),%al
	movl	-928(%ebp),%ebx
	movl	-924(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_NETDB_GETPROTOCOLBYNAME$ANSISTRING$TPROTOCOLENTRY$$BOOLEAN
_NETDB_GETPROTOCOLBYNAME$ANSISTRING$TPROTOCOLENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1862
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	L_NETDB_FINDPROTOENTRYINPROTOFILE$ANSISTRING$LONGINT$TPROTOCOLENTRY$$BOOLEAN$stub
	movb	%al,-9(%ebp)
Lj1862:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1863
	call	LFPC_RERAISE$stub
Lj1863:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_NETDB_GETPROTOCOLBYNUMBER$LONGINT$TPROTOCOLENTRY$$BOOLEAN
_NETDB_GETPROTOCOLBYNUMBER$LONGINT$TPROTOCOLENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	L_NETDB_FINDPROTOENTRYINPROTOFILE$ANSISTRING$LONGINT$TPROTOCOLENTRY$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_NETDB_STRTONETPARTIAL$ANSISTRING$$IN_ADDR
_NETDB_STRTONETPARTIAL$ANSISTRING$$IN_ADDR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-12(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1885
	movl	$0,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	jmp	Lj1895
	.align 2
Lj1894:
	movl	-4(%ebp),%edx
	movb	$46,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1903
	jmp	Lj1904
Lj1903:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1907
	movl	-4(%eax),%eax
Lj1907:
	incl	%eax
	movl	%eax,-20(%ebp)
Lj1904:
	leal	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-20(%ebp),%ecx
	leal	-4(%ebp),%eax
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
	leal	-20(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	$4,%eax
	call	Lfpc_val_sint_ansistr$stub
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1930
	jmp	Lj1931
Lj1930:
	movl	-16(%ebp),%eax
	incl	%eax
	movb	-24(%ebp),%dl
	movb	%dl,-9(%ebp,%eax,1)
Lj1931:
	incl	-16(%ebp)
Lj1895:
	movl	-16(%ebp),%eax
	cmpl	$4,%eax
	jl	Lj1934
	jmp	Lj1896
Lj1934:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1894
	jmp	Lj1896
Lj1896:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1935
	jmp	Lj1936
Lj1935:
	movl	$0,-8(%ebp)
Lj1936:
Lj1885:
	call	LFPC_POPADDRSTACK$stub
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1886
	call	LFPC_RERAISE$stub
Lj1886:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_NETDB_GETNEXTNETWORKENTRY$TEXT$TNETWORKENTRY$$BOOLEAN
_NETDB_GETNEXTNETWORKENTRY$TEXT$TNETWORKENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj1947
	movb	$0,-9(%ebp)
	.align 2
Lj1952:
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_read_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_readln_end$stub
	call	LFPC_IOCHECK$stub
	leal	-20(%ebp),%eax
	call	L_NETDB_STRIPCOMMENT$ANSISTRING$$BOOLEAN$stub
	leal	-24(%ebp),%edx
	leal	-20(%ebp),%eax
	call	L_NETDB_NEXTWORD$ANSISTRING$$ANSISTRING$stub
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1967
	jmp	Lj1968
Lj1967:
	movl	-24(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	leal	-20(%ebp),%eax
	call	L_NETDB_NEXTWORD$ANSISTRING$$ANSISTRING$stub
	movl	-72(%ebp),%eax
	call	L_NETDB_STRTONETPARTIAL$ANSISTRING$$IN_ADDR$stub
	movl	%eax,-28(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1981
	jmp	Lj1980
Lj1981:
	movzbl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1979
	jmp	Lj1980
Lj1979:
	movb	$1,-9(%ebp)
	jmp	Lj1982
Lj1980:
	movb	$0,-9(%ebp)
Lj1982:
	cmpb	$0,-9(%ebp)
	jne	Lj1983
	jmp	Lj1984
Lj1983:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-16(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-16(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,8(%ebx)
Lj1984:
Lj1968:
	cmpb	$0,-9(%ebp)
	jne	Lj1954
	jmp	Lj1991
Lj1991:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_EOF$TEXT$$BOOLEAN$stub
	movb	%al,%bl
	call	LFPC_IOCHECK$stub
	testb	%bl,%bl
	jne	Lj1954
	jmp	Lj1952
Lj1954:
Lj1947:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj1948
	call	LFPC_RERAISE$stub
Lj1948:
	movb	-9(%ebp),%al
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_NETDB_FINDNETWORKENTRYINNETWORKSFILE$ANSISTRING$IN_ADDR$TNETWORKENTRY$$BOOLEAN
_NETDB_FINDNETWORKENTRYINNETWORKSFILE$ANSISTRING$IN_ADDR$TNETWORKENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$936,%esp
	movl	%ebx,-928(%ebp)
	movl	%esi,-924(%ebp)
	call	Lj2013
Lj2013:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	L_INIT_NETDB_TNETWORKENTRY$non_lazy_ptr-Lj2013(%ebx),%edx
	leal	-620(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	$0,-664(%ebp)
	leal	-632(%ebp),%ecx
	leal	-656(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-660(%ebp)
	testl	%eax,%eax
	jne	Lj2014
	movb	$0,-9(%ebp)
	leal	-664(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-664(%ebp)
	movl	L_U_NETDB_ETCPATH$non_lazy_ptr-Lj2013(%ebx),%eax
	movl	(%eax),%edx
	leal	-664(%ebp),%eax
	movl	L_$NETDB$_Ld21$non_lazy_ptr-Lj2013(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-664(%ebp),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2019
	jmp	Lj2020
Lj2019:
	leal	-664(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-664(%ebp)
	movl	L_U_NETDB_ETCPATH$non_lazy_ptr-Lj2013(%ebx),%eax
	movl	(%eax),%edx
	leal	-664(%ebp),%eax
	movl	L_$NETDB$_Ld21$non_lazy_ptr-Lj2013(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-664(%ebp),%ecx
	leal	-920(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-920(%ebp),%edx
	leal	-608(%ebp),%eax
	call	L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub
	leal	-608(%ebp),%eax
	call	L_SYSTEM_RESET$TEXT$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movzwl	%ax,%eax
	testl	%eax,%eax
	je	Lj2047
	jmp	Lj2048
Lj2047:
	jmp	Lj2050
	.align 2
Lj2049:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2052
	jmp	Lj2053
Lj2052:
	movl	-612(%ebp),%ecx
	movl	-620(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_NETDB_MATCHNAMEORALIAS$ANSISTRING$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	jmp	Lj2062
Lj2053:
	movl	8(%ebp),%eax
	cmpl	-616(%ebp),%eax
	seteb	-9(%ebp)
Lj2062:
Lj2050:
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj2065
	jmp	Lj2051
Lj2065:
	leal	-620(%ebp),%edx
	leal	-608(%ebp),%eax
	call	L_NETDB_GETNEXTNETWORKENTRY$TEXT$TNETWORKENTRY$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2049
	jmp	Lj2051
Lj2051:
	leal	-608(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	cmpb	$0,-9(%ebp)
	jne	Lj2072
	jmp	Lj2073
Lj2072:
	movl	-620(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-620(%ebp),%eax
	movl	%eax,(%esi)
	movl	-616(%ebp),%eax
	movl	%eax,(%esp)
	call	L_SOCKETS_NETTOHOST$IN_ADDR$$IN_ADDR$stub
	movl	-8(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-612(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%esi
	leal	8(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-612(%ebp),%eax
	movl	%eax,8(%esi)
Lj2073:
Lj2048:
Lj2020:
Lj2014:
	call	LFPC_POPADDRSTACK$stub
	leal	-664(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-664(%ebp)
	movl	L_INIT_NETDB_TNETWORKENTRY$non_lazy_ptr-Lj2013(%ebx),%edx
	leal	-620(%ebp),%eax
	call	Lfpc_finalize$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-660(%ebp),%eax
	testl	%eax,%eax
	je	Lj2015
	call	LFPC_RERAISE$stub
Lj2015:
	movb	-9(%ebp),%al
	movl	-928(%ebp),%ebx
	movl	-924(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_NETDB_GETNETWORKBYNAME$ANSISTRING$TNETWORKENTRY$$BOOLEAN
_NETDB_GETNETWORKBYNAME$ANSISTRING$TNETWORKENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-56(%ebp)
	call	Lj2091
Lj2091:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2092
	movl	L_TC_NETDB_NONET$non_lazy_ptr-Lj2091(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_NETDB_FINDNETWORKENTRYINNETWORKSFILE$ANSISTRING$IN_ADDR$TNETWORKENTRY$$BOOLEAN$stub
	movb	%al,-9(%ebp)
Lj2092:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2093
	call	LFPC_RERAISE$stub
Lj2093:
	movb	-9(%ebp),%al
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_NETDB_GETNETWORKBYADDR$IN_ADDR$TNETWORKENTRY$$BOOLEAN
_NETDB_GETNETWORKBYADDR$IN_ADDR$TNETWORKENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	$0,%eax
	call	L_NETDB_FINDNETWORKENTRYINNETWORKSFILE$ANSISTRING$IN_ADDR$TNETWORKENTRY$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_NETDB_GETNEXTSERVICEENTRY$TEXT$TSERVICEENTRY$$BOOLEAN
_NETDB_GETNEXTSERVICEENTRY$TEXT$TSERVICEENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	call	Lj2114
Lj2114:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj2115
	movb	$0,-9(%ebp)
	.align 2
Lj2120:
	leal	-16(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_read_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	movl	-4(%ebp),%eax
	call	Lfpc_readln_end$stub
	call	LFPC_IOCHECK$stub
	leal	-16(%ebp),%eax
	call	L_NETDB_STRIPCOMMENT$ANSISTRING$$BOOLEAN$stub
	leal	-20(%ebp),%edx
	leal	-16(%ebp),%eax
	call	L_NETDB_NEXTWORD$ANSISTRING$$ANSISTRING$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2135
	jmp	Lj2136
Lj2135:
	movl	-20(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-20(%ebp),%eax
	movl	%eax,(%ebx)
	leal	-20(%ebp),%edx
	leal	-16(%ebp),%eax
	call	L_NETDB_NEXTWORD$ANSISTRING$$ANSISTRING$stub
	movl	-20(%ebp),%edx
	movb	$47,%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2149
	jmp	Lj2150
Lj2149:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	decl	%ecx
	movl	-20(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-68(%ebp),%eax
	movl	$0,%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	-8(%ebp),%edx
	movw	%ax,8(%edx)
	movl	-8(%ebp),%eax
	movzwl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj2165
	jmp	Lj2166
Lj2165:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj2173
	movl	-4(%ecx),%ecx
Lj2173:
	movl	-24(%ebp),%eax
	subl	%eax,%ecx
	movl	-24(%ebp),%edx
	incl	%edx
	movl	-20(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,4(%ebx)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj2180
	movl	-4(%eax),%eax
Lj2180:
	cmpl	$0,%eax
	setgb	-9(%ebp)
	movl	-8(%ebp),%ebx
	leal	12(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,12(%ebx)
	.align 2
Lj2183:
	leal	-20(%ebp),%edx
	leal	-16(%ebp),%eax
	call	L_NETDB_NEXTWORD$ANSISTRING$$ANSISTRING$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2190
	jmp	Lj2191
Lj2190:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj2194
	movl	-4(%eax),%eax
Lj2194:
	testl	%eax,%eax
	je	Lj2192
	jmp	Lj2193
Lj2192:
	movl	-20(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-8(%ebp),%ebx
	leal	12(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-20(%ebp),%eax
	movl	%eax,12(%ebx)
	jmp	Lj2197
Lj2193:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	L_$NETDB$_Ld1$non_lazy_ptr-Lj2114(%esi),%eax
	movl	%eax,-76(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-72(%ebp)
	leal	-80(%ebp),%edx
	movl	-8(%ebp),%eax
	leal	12(%eax),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj2197:
Lj2191:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj2185
	jmp	Lj2183
Lj2185:
Lj2166:
Lj2150:
Lj2136:
	cmpb	$0,-9(%ebp)
	jne	Lj2122
	jmp	Lj2204
Lj2204:
	movl	-4(%ebp),%eax
	call	L_SYSTEM_EOF$TEXT$$BOOLEAN$stub
	movb	%al,%bl
	call	LFPC_IOCHECK$stub
	testb	%bl,%bl
	jne	Lj2122
	jmp	Lj2120
Lj2122:
Lj2115:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj2116
	call	LFPC_RERAISE$stub
Lj2116:
	movb	-9(%ebp),%al
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_NETDB_FINDSERVICEENTRYINFILE$ANSISTRING$ANSISTRING$LONGINT$TSERVICEENTRY$$BOOLEAN
_NETDB_FINDSERVICEENTRYINFILE$ANSISTRING$ANSISTRING$LONGINT$TSERVICEENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$936,%esp
	movl	%ebx,-932(%ebp)
	movl	%esi,-928(%ebp)
	call	Lj2220
Lj2220:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_INIT_NETDB_TSERVICEENTRY$non_lazy_ptr-Lj2220(%ebx),%edx
	leal	-624(%ebp),%eax
	call	Lfpc_initialize$stub
	movl	$0,-668(%ebp)
	leal	-636(%ebp),%ecx
	leal	-660(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-664(%ebp)
	testl	%eax,%eax
	jne	Lj2221
	movb	$0,-13(%ebp)
	leal	-668(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-668(%ebp)
	movl	L_U_NETDB_ETCPATH$non_lazy_ptr-Lj2220(%ebx),%eax
	movl	(%eax),%edx
	leal	-668(%ebp),%eax
	movl	L_$NETDB$_Ld23$non_lazy_ptr-Lj2220(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-668(%ebp),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2226
	jmp	Lj2227
Lj2226:
	leal	-668(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-668(%ebp)
	movl	L_U_NETDB_ETCPATH$non_lazy_ptr-Lj2220(%ebx),%eax
	movl	(%eax),%edx
	leal	-668(%ebp),%eax
	movl	L_$NETDB$_Ld23$non_lazy_ptr-Lj2220(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-668(%ebp),%ecx
	leal	-924(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-924(%ebp),%edx
	leal	-608(%ebp),%eax
	call	L_SYSTEM_ASSIGN$TEXT$SHORTSTRING$stub
	leal	-608(%ebp),%eax
	call	L_SYSTEM_RESET$TEXT$stub
	call	L_SYSTEM_IORESULT$$WORD$stub
	movzwl	%ax,%eax
	testl	%eax,%eax
	je	Lj2254
	jmp	Lj2255
Lj2254:
	jmp	Lj2257
	.align 2
Lj2256:
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj2259
	jmp	Lj2260
Lj2259:
	movl	-612(%ebp),%ecx
	movl	-624(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_NETDB_MATCHNAMEORALIAS$ANSISTRING$ANSISTRING$ANSISTRING$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	jmp	Lj2269
Lj2260:
	movzwl	-616(%ebp),%eax
	cmpl	-12(%ebp),%eax
	seteb	-13(%ebp)
Lj2269:
	cmpb	$0,-13(%ebp)
	jne	Lj2274
	jmp	Lj2273
Lj2274:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2272
	jmp	Lj2273
Lj2272:
	movl	-620(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj2273:
Lj2257:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj2281
	jmp	Lj2258
Lj2281:
	leal	-624(%ebp),%edx
	leal	-608(%ebp),%eax
	call	L_NETDB_GETNEXTSERVICEENTRY$TEXT$TSERVICEENTRY$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2256
	jmp	Lj2258
Lj2258:
	leal	-608(%ebp),%eax
	call	L_SYSTEM_CLOSE$TEXT$stub
	call	LFPC_IOCHECK$stub
	cmpb	$0,-13(%ebp)
	jne	Lj2288
	jmp	Lj2289
Lj2288:
	movl	-624(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-624(%ebp),%eax
	movl	%eax,(%esi)
	movl	8(%ebp),%eax
	movw	-616(%ebp),%dx
	movw	%dx,8(%eax)
	movl	-620(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%esi
	leal	4(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-620(%ebp),%eax
	movl	%eax,4(%esi)
	movl	-612(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%esi
	leal	12(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-612(%ebp),%eax
	movl	%eax,12(%esi)
Lj2289:
Lj2255:
Lj2227:
Lj2221:
	call	LFPC_POPADDRSTACK$stub
	leal	-668(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-668(%ebp)
	movl	L_INIT_NETDB_TSERVICEENTRY$non_lazy_ptr-Lj2220(%ebx),%edx
	leal	-624(%ebp),%eax
	call	Lfpc_finalize$stub
	movl	-664(%ebp),%eax
	testl	%eax,%eax
	je	Lj2222
	call	LFPC_RERAISE$stub
Lj2222:
	movb	-13(%ebp),%al
	movl	-932(%ebp),%ebx
	movl	-928(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_NETDB_GETSERVICEBYNAME$ANSISTRING$ANSISTRING$TSERVICEENTRY$$BOOLEAN
_NETDB_GETSERVICEBYNAME$ANSISTRING$ANSISTRING$TSERVICEENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$-1,%ecx
	call	L_NETDB_FINDSERVICEENTRYINFILE$ANSISTRING$ANSISTRING$LONGINT$TSERVICEENTRY$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_NETDB_GETSERVICEBYPORT$WORD$ANSISTRING$TSERVICEENTRY$$BOOLEAN
_NETDB_GETSERVICEBYPORT$WORD$ANSISTRING$TSERVICEENTRY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movw	%ax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movzwl	-4(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	$0,%eax
	call	L_NETDB_FINDSERVICEENTRYINFILE$ANSISTRING$ANSISTRING$LONGINT$TSERVICEENTRY$$BOOLEAN$stub
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_NETDB_INITRESOLVER
_NETDB_INITRESOLVER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-52(%ebp)
	movl	%esi,-48(%ebp)
	call	Lj2331
Lj2331:
	popl	%ebx
	movl	$0,-44(%ebp)
	leal	-12(%ebp),%ecx
	leal	-36(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-40(%ebp)
	testl	%eax,%eax
	jne	Lj2332
	movl	L_U_NETDB_TIMEOUTS$non_lazy_ptr-Lj2331(%ebx),%eax
	movl	$5,(%eax)
	movl	L_U_NETDB_TIMEOUTMS$non_lazy_ptr-Lj2331(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_NETDB_CHECKHOSTSFILEAGE$non_lazy_ptr-Lj2331(%ebx),%eax
	movb	$0,(%eax)
	movl	L_$NETDB$_Ld25$non_lazy_ptr-Lj2331(%ebx),%esi
	movl	L_U_NETDB_ETCPATH$non_lazy_ptr-Lj2331(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	L_U_NETDB_ETCPATH$non_lazy_ptr-Lj2331(%ebx),%eax
	movl	%esi,(%eax)
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-44(%ebp)
	movl	L_U_NETDB_ETCPATH$non_lazy_ptr-Lj2331(%ebx),%eax
	movl	(%eax),%edx
	leal	-44(%ebp),%eax
	movl	L_$NETDB$_Ld3$non_lazy_ptr-Lj2331(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-44(%ebp),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2343
	jmp	Lj2344
Lj2343:
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-44(%ebp)
	movl	L_U_NETDB_ETCPATH$non_lazy_ptr-Lj2331(%ebx),%eax
	movl	(%eax),%edx
	leal	-44(%ebp),%eax
	movl	L_$NETDB$_Ld3$non_lazy_ptr-Lj2331(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-44(%ebp),%eax
	call	L_NETDB_PROCESSHOSTS$ANSISTRING$$PHOSTLISTENTRY$stub
	movl	L_TC_NETDB_HOSTSLIST$non_lazy_ptr-Lj2331(%ebx),%edx
	movl	%eax,(%edx)
Lj2344:
	movl	L_U_NETDB_CHECKRESOLVEFILEAGE$non_lazy_ptr-Lj2331(%ebx),%eax
	movb	$0,(%eax)
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-44(%ebp)
	movl	L_U_NETDB_ETCPATH$non_lazy_ptr-Lj2331(%ebx),%eax
	movl	(%eax),%edx
	leal	-44(%ebp),%eax
	movl	L_$NETDB$_Ld11$non_lazy_ptr-Lj2331(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-44(%ebp),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2365
	jmp	Lj2366
Lj2365:
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-44(%ebp)
	movl	L_U_NETDB_ETCPATH$non_lazy_ptr-Lj2331(%ebx),%eax
	movl	(%eax),%edx
	leal	-44(%ebp),%eax
	movl	L_$NETDB$_Ld11$non_lazy_ptr-Lj2331(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
	movl	-44(%ebp),%eax
	call	L_NETDB_GETDNSSERVERS$ANSISTRING$$LONGINT$stub
Lj2366:
Lj2332:
	call	LFPC_POPADDRSTACK$stub
	leal	-44(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-44(%ebp)
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj2333
	call	LFPC_RERAISE$stub
Lj2333:
	movl	-52(%ebp),%ebx
	movl	-48(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_NETDB_DONERESOLVER
_NETDB_DONERESOLVER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2384
Lj2384:
	popl	%ebx
	movl	L_TC_NETDB_HOSTSLIST$non_lazy_ptr-Lj2384(%ebx),%eax
	call	L_NETDB_FREEHOSTSLIST$PHOSTLISTENTRY$$LONGINT$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIT$_NETDB
_INIT$_NETDB:
.reference __NETDB_init
.globl	__NETDB_init
__NETDB_init:
.reference _INIT$_NETDB
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_NETDB_INITRESOLVER$stub
	leave
	ret

.text
	.align 4
.globl	_FINALIZE$_NETDB
_FINALIZE$_NETDB:
.reference __NETDB_finalize
.globl	__NETDB_finalize
__NETDB_finalize:
.reference _FINALIZE$_NETDB
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj2388
Lj2388:
	popl	%ebx
	call	L_NETDB_DONERESOLVER$stub
	movl	L_U_NETDB_ETCPATH$non_lazy_ptr-Lj2388(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_NETDB_ETCPATH$non_lazy_ptr-Lj2388(%ebx),%eax
	movl	$0,(%eax)
	movl	L_INIT_NETDB_TDNSSERVERARRAY$non_lazy_ptr-Lj2388(%ebx),%edx
	movl	L_U_NETDB_DNSSERVERS$non_lazy_ptr-Lj2388(%ebx),%eax
	call	Lfpc_finalize$stub
	movl	L_U_NETDB_DEFAULTDOMAINLIST$non_lazy_ptr-Lj2388(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_NETDB_DEFAULTDOMAINLIST$non_lazy_ptr-Lj2388(%ebx),%eax
	movl	$0,(%eax)
	movl	L_U_NETDB_RESOLVEFILENAME$non_lazy_ptr-Lj2388(%ebx),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	L_U_NETDB_RESOLVEFILENAME$non_lazy_ptr-Lj2388(%ebx),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%ebx
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_NETDB_ETCPATH
.data
.zerofill __DATA, __common, _U_NETDB_ETCPATH, 4,2




	.align 2
.globl _U_NETDB_DNSSERVERS
.data
.zerofill __DATA, __common, _U_NETDB_DNSSERVERS, 4,2




	.align 2
.globl _U_NETDB_DEFAULTDOMAINLIST
.data
.zerofill __DATA, __common, _U_NETDB_DEFAULTDOMAINLIST, 4,2




.globl _U_NETDB_CHECKRESOLVEFILEAGE
.data
.zerofill __DATA, __common, _U_NETDB_CHECKRESOLVEFILEAGE, 1,1




.globl _U_NETDB_CHECKHOSTSFILEAGE
.data
.zerofill __DATA, __common, _U_NETDB_CHECKHOSTSFILEAGE, 1,1




	.align 2
.globl _U_NETDB_TIMEOUTS
.data
.zerofill __DATA, __common, _U_NETDB_TIMEOUTS, 4,2




	.align 2
.globl _U_NETDB_TIMEOUTMS
.data
.zerofill __DATA, __common, _U_NETDB_TIMEOUTMS, 4,2




	.align 2
.globl _U_NETDB_HOSTSFILEAGE
.data
.zerofill __DATA, __common, _U_NETDB_HOSTSFILEAGE, 4,2




	.align 2
.globl _U_NETDB_RESOLVEFILEAGE
.data
.zerofill __DATA, __common, _U_NETDB_RESOLVEFILEAGE, 4,2




	.align 2
.globl _U_NETDB_RESOLVEFILENAME
.data
.zerofill __DATA, __common, _U_NETDB_RESOLVEFILENAME, 4,2



.data
	.align 2
.globl	_THREADVARLIST_NETDB
_THREADVARLIST_NETDB:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$NETDB$_Ld2
_$NETDB$_Ld2:
	.short	0,1
	.long	0,-1,1
.reference _$NETDB$_Ld1
.globl	_$NETDB$_Ld1
_$NETDB$_Ld1:
.reference _$NETDB$_Ld2
	.ascii	",\000"

.data
	.align 2
.globl	_TC_NETDB_HOSTSLIST
_TC_NETDB_HOSTSLIST:
	.long	0

.const_data
	.align 2
.globl	_$NETDB$_Ld4
_$NETDB$_Ld4:
	.short	0,1
	.long	0,-1,5
.reference _$NETDB$_Ld3
.globl	_$NETDB$_Ld3
_$NETDB$_Ld3:
.reference _$NETDB$_Ld4
	.ascii	"hosts\000"

.const_data
	.align 2
.globl	_$NETDB$_Ld6
_$NETDB$_Ld6:
	.short	0,1
	.long	0,-1,10
.reference _$NETDB$_Ld5
.globl	_$NETDB$_Ld5
_$NETDB$_Ld5:
.reference _$NETDB$_Ld6
	.ascii	"nameserver\000"

.const_data
	.align 2
.globl	_$NETDB$_Ld8
_$NETDB$_Ld8:
	.short	0,1
	.long	0,-1,6
.reference _$NETDB$_Ld7
.globl	_$NETDB$_Ld7
_$NETDB$_Ld7:
.reference _$NETDB$_Ld8
	.ascii	"domain\000"

.const_data
	.align 2
.globl	_$NETDB$_Ld10
_$NETDB$_Ld10:
	.short	0,1
	.long	0,-1,6
.reference _$NETDB$_Ld9
.globl	_$NETDB$_Ld9
_$NETDB$_Ld9:
.reference _$NETDB$_Ld10
	.ascii	"search\000"

.const_data
	.align 2
.globl	_$NETDB$_Ld12
_$NETDB$_Ld12:
	.short	0,1
	.long	0,-1,11
.reference _$NETDB$_Ld11
.globl	_$NETDB$_Ld11
_$NETDB$_Ld11:
.reference _$NETDB$_Ld12
	.ascii	"resolv.conf\000"

.const
	.align 2
.globl	_$NETDB$_Ld13
_$NETDB$_Ld13:
	.ascii	"\012Payload : \000"

.const_data
	.align 2
.globl	_$NETDB$_Ld15
_$NETDB$_Ld15:
	.short	0,1
	.long	0,-1,1
.reference _$NETDB$_Ld14
.globl	_$NETDB$_Ld14
_$NETDB$_Ld14:
.reference _$NETDB$_Ld15
	.ascii	".\000"

.const_data
	.align 2
.globl	_$NETDB$_Ld17
_$NETDB$_Ld17:
	.short	0,1
	.long	0,-1,24
.reference _$NETDB$_Ld16
.globl	_$NETDB$_Ld16
_$NETDB$_Ld16:
.reference _$NETDB$_Ld17
	.ascii	"%d.%d.%d.%d.in-addr.arpa\000"

.data
.globl	_TC_NETDB_RESOLVEADDRESS6$crcDDF30028_HEXDIG
_TC_NETDB_RESOLVEADDRESS6$crcDDF30028_HEXDIG:
	.byte	16
	.ascii	"0123456789abcdef"

.const
	.align 2
.globl	_$NETDB$_Ld18
_$NETDB$_Ld18:
	.ascii	"G0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0."
	.ascii	"0.0.0.0.0.0.0.ip6.int\000"

.const_data
	.align 2
.globl	_$NETDB$_Ld20
_$NETDB$_Ld20:
	.short	0,1
	.long	0,-1,9
.reference _$NETDB$_Ld19
.globl	_$NETDB$_Ld19
_$NETDB$_Ld19:
.reference _$NETDB$_Ld20
	.ascii	"protocols\000"

.const_data
	.align 2
.globl	_$NETDB$_Ld22
_$NETDB$_Ld22:
	.short	0,1
	.long	0,-1,8
.reference _$NETDB$_Ld21
.globl	_$NETDB$_Ld21
_$NETDB$_Ld21:
.reference _$NETDB$_Ld22
	.ascii	"networks\000"

.data
	.align 2
.globl	_TC_NETDB_NONET
_TC_NETDB_NONET:
	.long	0

.const_data
	.align 2
.globl	_$NETDB$_Ld24
_$NETDB$_Ld24:
	.short	0,1
	.long	0,-1,8
.reference _$NETDB$_Ld23
.globl	_$NETDB$_Ld23
_$NETDB$_Ld23:
.reference _$NETDB$_Ld24
	.ascii	"services\000"

.const_data
	.align 2
.globl	_$NETDB$_Ld26
_$NETDB$_Ld26:
	.short	0,1
	.long	0,-1,5
.reference _$NETDB$_Ld25
.globl	_$NETDB$_Ld25
_$NETDB$_Ld25:
.reference _$NETDB$_Ld26
	.ascii	"/etc/\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_copy$stub:
.indirect_symbol fpc_ansistr_copy
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
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

L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
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

L_NETDB_NEXTWORD$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _NETDB_NEXTWORD$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_STRTONETADDR$ANSISTRING$$IN_ADDR$stub:
.indirect_symbol _SOCKETS_STRTONETADDR$ANSISTRING$$IN_ADDR
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

Lfpc_ansistr_to_shortstr$stub:
.indirect_symbol fpc_ansistr_to_shortstr
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

L_SYSTEM_RESET$TEXT$stub:
.indirect_symbol _SYSTEM_RESET$TEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_IORESULT$$WORD$stub:
.indirect_symbol _SYSTEM_IORESULT$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_read_text_ansistr$stub:
.indirect_symbol fpc_read_text_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_IOCHECK$stub:
.indirect_symbol FPC_IOCHECK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_readln_end$stub:
.indirect_symbol fpc_readln_end
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_STRIPCOMMENT$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _NETDB_STRIPCOMMENT$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_GETADDR$ANSISTRING$IN_ADDR$$BOOLEAN$stub:
.indirect_symbol _NETDB_GETADDR$ANSISTRING$IN_ADDR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_getmem$stub:
.indirect_symbol fpc_getmem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_initialize$stub:
.indirect_symbol fpc_initialize
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_FILLHOSTENTRY$THOSTENTRY$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _NETDB_FILLHOSTENTRY$THOSTENTRY$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_EOF$TEXT$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_EOF$TEXT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_CLOSE$TEXT$stub:
.indirect_symbol _SYSTEM_CLOSE$TEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_finalize$stub:
.indirect_symbol fpc_finalize
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_freemem$stub:
.indirect_symbol fpc_freemem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_dynarray_setlength$stub:
.indirect_symbol fpc_dynarray_setlength
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_copy_proc$stub:
.indirect_symbol fpc_copy_proc
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_FREEHOSTSLIST$PHOSTLISTENTRY$$LONGINT$stub:
.indirect_symbol _NETDB_FREEHOSTSLIST$PHOSTLISTENTRY$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FILEAGE$ANSISTRING$$LONGINT$stub:
.indirect_symbol _SYSUTILS_FILEAGE$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_PROCESSHOSTS$ANSISTRING$$PHOSTLISTENTRY$stub:
.indirect_symbol _NETDB_PROCESSHOSTS$ANSISTRING$$PHOSTLISTENTRY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_CHECKHOSTSFILE$stub:
.indirect_symbol _NETDB_CHECKHOSTSFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_MATCHNAMEORALIAS$ANSISTRING$ANSISTRING$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _NETDB_MATCHNAMEORALIAS$ANSISTRING$ANSISTRING$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_HOSTTONET$IN_ADDR$$IN_ADDR$stub:
.indirect_symbol _SOCKETS_HOSTTONET$IN_ADDR$$IN_ADDR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_NETTOHOST$IN_ADDR$$IN_ADDR$stub:
.indirect_symbol _SOCKETS_NETTOHOST$IN_ADDR$$IN_ADDR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_GETDNSSERVERS$ANSISTRING$$LONGINT_CHECKDIRECTIVE$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _NETDB_GETDNSSERVERS$ANSISTRING$$LONGINT_CHECKDIRECTIVE$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_STRTOHOSTADDR$ANSISTRING$$IN_ADDR$stub:
.indirect_symbol _SOCKETS_STRTOHOSTADDR$ANSISTRING$$IN_ADDR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_FINDHOSTENTRYINHOSTSFILE$ANSISTRING$IN_ADDR$THOSTENTRY$$BOOLEAN$stub:
.indirect_symbol _NETDB_FINDHOSTENTRYINHOSTSFILE$ANSISTRING$IN_ADDR$THOSTENTRY$$BOOLEAN
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

L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_TRIM$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_GETDNSSERVERS$ANSISTRING$$LONGINT$stub:
.indirect_symbol _NETDB_GETDNSSERVERS$ANSISTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_get_output$stub:
.indirect_symbol fpc_get_output
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_shortstr$stub:
.indirect_symbol fpc_write_text_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_sint$stub:
.indirect_symbol fpc_write_text_sint
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_writeln_end$stub:
.indirect_symbol fpc_writeln_end
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_uint$stub:
.indirect_symbol fpc_write_text_uint
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_char$stub:
.indirect_symbol fpc_write_text_char
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_end$stub:
.indirect_symbol fpc_write_end
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

L_SYSTEM_RANDOM$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSTEM_RANDOM$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_FPSOCKET$LONGINT$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _SOCKETS_FPSOCKET$LONGINT$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SOCKETS_FPSENDTO$LONGINT$POINTER$LONGWORD$LONGINT$PSOCKADDR$LONGWORD$$LONGINT$stub:
.indirect_symbol _SOCKETS_FPSENDTO$LONGINT$POINTER$LONGWORD$LONGINT$PSOCKADDR$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPFD_ZERO$TFDSET$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPFD_ZERO$TFDSET$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPFD_SET$LONGINT$TFDSET$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPFD_SET$LONGINT$TFDSET$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$LONGINT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSELECT$LONGINT$PFDSET$PFDSET$PFDSET$LONGINT$$LONGINT
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

L_SOCKETS_FPRECVFROM$LONGINT$POINTER$LONGWORD$LONGINT$PSOCKADDR$PSOCKLEN$$LONGINT$stub:
.indirect_symbol _SOCKETS_FPRECVFROM$LONGINT$POINTER$LONGWORD$LONGINT$PSOCKADDR$PSOCKLEN$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_CHECKANSWER$TQUERYDATA$TQUERYDATA$$BOOLEAN$stub:
.indirect_symbol _NETDB_CHECKANSWER$TQUERYDATA$TQUERYDATA$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_BUILDPAYLOAD$TQUERYDATA$ANSISTRING$WORD$WORD$$LONGINT$stub:
.indirect_symbol _NETDB_BUILDPAYLOAD$TQUERYDATA$ANSISTRING$WORD$WORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_QUERY$LONGINT$TQUERYDATA$TQUERYDATA$LONGINT$LONGINT$$BOOLEAN$stub:
.indirect_symbol _NETDB_QUERY$LONGINT$TQUERYDATA$TQUERYDATA$LONGINT$LONGINT$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_SKIPANSQUERIES$TQUERYDATA$LONGINT$$LONGINT$stub:
.indirect_symbol _NETDB_SKIPANSQUERIES$TQUERYDATA$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_STRINGFROMLABEL$TPAYLOAD$LONGINT$$ANSISTRING$stub:
.indirect_symbol _NETDB_STRINGFROMLABEL$TPAYLOAD$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_RESOLVENAMEAT$LONGINT$ANSISTRING$array_of_IN_ADDR$LONGINT$$LONGINT$stub:
.indirect_symbol _NETDB_RESOLVENAMEAT$LONGINT$ANSISTRING$array_of_IN_ADDR$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_NEXTRR$TPAYLOAD$LONGINT$LONGINT$TRRDATA$$BOOLEAN$stub:
.indirect_symbol _NETDB_NEXTRR$TPAYLOAD$LONGINT$LONGINT$TRRDATA$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_CHECKRESOLVEFILE$stub:
.indirect_symbol _NETDB_CHECKRESOLVEFILE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_dynarray_high$stub:
.indirect_symbol fpc_dynarray_high
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_RESOLVENAME$ANSISTRING$array_of_IN_ADDR$$LONGINT$stub:
.indirect_symbol _NETDB_RESOLVENAME$ANSISTRING$array_of_IN_ADDR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_RESOLVENAMEAT6$LONGINT$ANSISTRING$array_of_IN6_ADDR$LONGINT$$LONGINT$stub:
.indirect_symbol _NETDB_RESOLVENAMEAT6$LONGINT$ANSISTRING$array_of_IN6_ADDR$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_BUILDNAME$TPAYLOAD$LONGINT$LONGINT$$ANSISTRING$stub:
.indirect_symbol _NETDB_BUILDNAME$TPAYLOAD$LONGINT$LONGINT$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_RESOLVEADDRESSAT$LONGINT$ANSISTRING$array_of_ANSISTRING$$LONGINT$stub:
.indirect_symbol _NETDB_RESOLVEADDRESSAT$LONGINT$ANSISTRING$array_of_ANSISTRING$$LONGINT
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

Lfpc_shortstr_to_ansistr$stub:
.indirect_symbol fpc_shortstr_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_RESOLVENAME6$ANSISTRING$array_of_IN6_ADDR$$LONGINT$stub:
.indirect_symbol _NETDB_RESOLVENAME6$ANSISTRING$array_of_IN6_ADDR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_RESOLVEADDRESS$IN_ADDR$array_of_ANSISTRING$$LONGINT$stub:
.indirect_symbol _NETDB_RESOLVEADDRESS$IN_ADDR$array_of_ANSISTRING$$LONGINT
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

L_NETDB_RESOLVEADDRESS6$IN6_ADDR$array_of_ANSISTRING$$LONGINT$stub:
.indirect_symbol _NETDB_RESOLVEADDRESS6$IN6_ADDR$array_of_ANSISTRING$$LONGINT
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

L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_GETNEXTPROTOENTRY$TEXT$TPROTOCOLENTRY$$BOOLEAN$stub:
.indirect_symbol _NETDB_GETNEXTPROTOENTRY$TEXT$TPROTOCOLENTRY$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_FINDPROTOENTRYINPROTOFILE$ANSISTRING$LONGINT$TPROTOCOLENTRY$$BOOLEAN$stub:
.indirect_symbol _NETDB_FINDPROTOENTRYINPROTOFILE$ANSISTRING$LONGINT$TPROTOCOLENTRY$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_val_sint_ansistr$stub:
.indirect_symbol fpc_val_sint_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_STRTONETPARTIAL$ANSISTRING$$IN_ADDR$stub:
.indirect_symbol _NETDB_STRTONETPARTIAL$ANSISTRING$$IN_ADDR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_GETNEXTNETWORKENTRY$TEXT$TNETWORKENTRY$$BOOLEAN$stub:
.indirect_symbol _NETDB_GETNEXTNETWORKENTRY$TEXT$TNETWORKENTRY$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_FINDNETWORKENTRYINNETWORKSFILE$ANSISTRING$IN_ADDR$TNETWORKENTRY$$BOOLEAN$stub:
.indirect_symbol _NETDB_FINDNETWORKENTRYINNETWORKSFILE$ANSISTRING$IN_ADDR$TNETWORKENTRY$$BOOLEAN
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

L_NETDB_GETNEXTSERVICEENTRY$TEXT$TSERVICEENTRY$$BOOLEAN$stub:
.indirect_symbol _NETDB_GETNEXTSERVICEENTRY$TEXT$TSERVICEENTRY$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_FINDSERVICEENTRYINFILE$ANSISTRING$ANSISTRING$LONGINT$TSERVICEENTRY$$BOOLEAN$stub:
.indirect_symbol _NETDB_FINDSERVICEENTRYINFILE$ANSISTRING$ANSISTRING$LONGINT$TSERVICEENTRY$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_INITRESOLVER$stub:
.indirect_symbol _NETDB_INITRESOLVER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_NETDB_DONERESOLVER$stub:
.indirect_symbol _NETDB_DONERESOLVER
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
.globl	_INIT_NETDB_TDNSSERVERARRAY
_INIT_NETDB_TDNSSERVERARRAY:
	.byte	21
	.ascii	"\017TDNSServerArray"
	.long	4
	.long	_INIT_SOCKETS_IN_ADDR
	.long	-1,0
	.byte	5
	.ascii	"netdb"

.const_data
	.align 2
.globl	_RTTI_NETDB_TDNSSERVERARRAY
_RTTI_NETDB_TDNSSERVERARRAY:
	.byte	21
	.ascii	"\017TDNSServerArray"
	.long	4
	.long	_RTTI_SOCKETS_IN_ADDR
	.long	-1,0
	.byte	5
	.ascii	"netdb"

.const_data
	.align 2
.globl	_INIT_NETDB_TSERVICEENTRY
_INIT_NETDB_TSERVICEENTRY:
	.byte	13,13
	.ascii	"TServiceEntry"
	.long	16,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	12

.const_data
	.align 2
.globl	_RTTI_NETDB_TSERVICEENTRY
_RTTI_NETDB_TSERVICEENTRY:
	.byte	13,13
	.ascii	"TServiceEntry"
	.long	16,4
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	0
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	8
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	12

.const_data
	.align 2
.globl	_INIT_NETDB_THOSTENTRY
_INIT_NETDB_THOSTENTRY:
	.byte	13,10
	.ascii	"THostEntry"
	.long	12,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	8

.const_data
	.align 2
.globl	_RTTI_NETDB_THOSTENTRY
_RTTI_NETDB_THOSTENTRY:
	.byte	13,10
	.ascii	"THostEntry"
	.long	12,3
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	0
	.long	_RTTI_SOCKETS_IN_ADDR
	.long	4
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	8

.const_data
	.align 2
.globl	_INIT_NETDB_PHOSTENTRY
_INIT_NETDB_PHOSTENTRY:
	.byte	0
	.ascii	"\012PHostEntry"

.const_data
	.align 2
.globl	_RTTI_NETDB_PHOSTENTRY
_RTTI_NETDB_PHOSTENTRY:
	.byte	0
	.ascii	"\012PHostEntry"

.const_data
	.align 2
.globl	_INIT_NETDB_THOSTENTRYARRAY
_INIT_NETDB_THOSTENTRYARRAY:
	.byte	21
	.ascii	"\017THostEntryArray"
	.long	12
	.long	_INIT_NETDB_THOSTENTRY
	.long	-1
	.long	_INIT_NETDB_THOSTENTRY
	.byte	5
	.ascii	"netdb"

.const_data
	.align 2
.globl	_RTTI_NETDB_THOSTENTRYARRAY
_RTTI_NETDB_THOSTENTRYARRAY:
	.byte	21
	.ascii	"\017THostEntryArray"
	.long	12
	.long	_RTTI_NETDB_THOSTENTRY
	.long	-1
	.long	_RTTI_NETDB_THOSTENTRY
	.byte	5
	.ascii	"netdb"

.const_data
	.align 2
.globl	_INIT_NETDB_THOSTENTRY6
_INIT_NETDB_THOSTENTRY6:
	.byte	13,11
	.ascii	"THostEntry6"
	.long	24,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	20

.const_data
	.align 2
.globl	_RTTI_NETDB_THOSTENTRY6
_RTTI_NETDB_THOSTENTRY6:
	.byte	13,11
	.ascii	"THostEntry6"
	.long	24,3
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	0
	.long	_RTTI_SOCKETS_IN6_ADDR
	.long	4
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	20

.const_data
	.align 2
.globl	_INIT_NETDB_PHOSTENTRY6
_INIT_NETDB_PHOSTENTRY6:
	.byte	0
	.ascii	"\013PHostEntry6"

.const_data
	.align 2
.globl	_RTTI_NETDB_PHOSTENTRY6
_RTTI_NETDB_PHOSTENTRY6:
	.byte	0
	.ascii	"\013PHostEntry6"

.const_data
	.align 2
.globl	_INIT_NETDB_THOSTENTRY6ARRAY
_INIT_NETDB_THOSTENTRY6ARRAY:
	.byte	21
	.ascii	"\020THostEntry6Array"
	.long	24
	.long	_INIT_NETDB_THOSTENTRY6
	.long	-1
	.long	_INIT_NETDB_THOSTENTRY6
	.byte	5
	.ascii	"netdb"

.const_data
	.align 2
.globl	_RTTI_NETDB_THOSTENTRY6ARRAY
_RTTI_NETDB_THOSTENTRY6ARRAY:
	.byte	21
	.ascii	"\020THostEntry6Array"
	.long	24
	.long	_RTTI_NETDB_THOSTENTRY6
	.long	-1
	.long	_RTTI_NETDB_THOSTENTRY6
	.byte	5
	.ascii	"netdb"

.const_data
	.align 2
.globl	_INIT_NETDB_TNETWORKENTRY
_INIT_NETDB_TNETWORKENTRY:
	.byte	13,13
	.ascii	"TNetworkEntry"
	.long	12,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	8

.const_data
	.align 2
.globl	_RTTI_NETDB_TNETWORKENTRY
_RTTI_NETDB_TNETWORKENTRY:
	.byte	13,13
	.ascii	"TNetworkEntry"
	.long	12,3
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	0
	.long	_RTTI_SOCKETS_IN_ADDR
	.long	4
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	8

.const_data
	.align 2
.globl	_INIT_NETDB_PNETWORKENTRY
_INIT_NETDB_PNETWORKENTRY:
	.byte	0
	.ascii	"\015PNetworkEntry"

.const_data
	.align 2
.globl	_RTTI_NETDB_PNETWORKENTRY
_RTTI_NETDB_PNETWORKENTRY:
	.byte	0
	.ascii	"\015PNetworkEntry"

.const_data
	.align 2
.globl	_INIT_NETDB_TPROTOCOLENTRY
_INIT_NETDB_TPROTOCOLENTRY:
	.byte	13,14
	.ascii	"TProtocolEntry"
	.long	12,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	8

.const_data
	.align 2
.globl	_RTTI_NETDB_TPROTOCOLENTRY
_RTTI_NETDB_TPROTOCOLENTRY:
	.byte	13,14
	.ascii	"TProtocolEntry"
	.long	12,3
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	8

.const_data
	.align 2
.globl	_INIT_NETDB_PPROTOCOLENTRY
_INIT_NETDB_PPROTOCOLENTRY:
	.byte	0
	.ascii	"\016PProtocolEntry"

.const_data
	.align 2
.globl	_RTTI_NETDB_PPROTOCOLENTRY
_RTTI_NETDB_PPROTOCOLENTRY:
	.byte	0
	.ascii	"\016PProtocolEntry"

.const_data
	.align 2
.globl	_INIT_NETDB_PHOSTLISTENTRY
_INIT_NETDB_PHOSTLISTENTRY:
	.byte	0
	.ascii	"\016PHostListEntry"

.const_data
	.align 2
.globl	_RTTI_NETDB_PHOSTLISTENTRY
_RTTI_NETDB_PHOSTLISTENTRY:
	.byte	0
	.ascii	"\016PHostListEntry"

.const_data
	.align 2
.globl	_INIT_NETDB_THOSTLISTENTRY
_INIT_NETDB_THOSTLISTENTRY:
	.byte	13,14
	.ascii	"THostListEntry"
	.long	16,1
	.long	_INIT_NETDB_THOSTENTRY
	.long	0

.const_data
	.align 2
.globl	_RTTI_NETDB_THOSTLISTENTRY
_RTTI_NETDB_THOSTLISTENTRY:
	.byte	13,14
	.ascii	"THostListEntry"
	.long	16,2
	.long	_RTTI_NETDB_THOSTENTRY
	.long	0
	.long	_RTTI_NETDB_PHOSTLISTENTRY
	.long	12

.const_data
	.align 2
.globl	_INIT_NETDB_DEF25
_INIT_NETDB_DEF25:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_NETDB_DEF27
_INIT_NETDB_DEF27:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_NETDB_DEF175
_INIT_NETDB_DEF175:
	.byte	12
	.ascii	"\000"
	.long	4,10
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_NETDB_DEF180
_INIT_NETDB_DEF180:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_NETDB_DEF182
_INIT_NETDB_DEF182:
	.byte	12
	.ascii	"\000"
	.long	4,10
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_NETDB_DEF187
_INIT_NETDB_DEF187:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_NETDB_DEF133
_INIT_NETDB_DEF133:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_NETDB_DEF197
_INIT_NETDB_DEF197:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_NETDB_DEF224
_INIT_NETDB_DEF224:
	.byte	12
	.ascii	"\000"
	.long	4,3
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
L_$NETDB$_Ld1$non_lazy_ptr:
.indirect_symbol _$NETDB$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_NETDB_THOSTLISTENTRY$non_lazy_ptr:
.indirect_symbol _INIT_NETDB_THOSTLISTENTRY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_NETDB_THOSTENTRYARRAY$non_lazy_ptr:
.indirect_symbol _INIT_NETDB_THOSTENTRYARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_NETDB_THOSTENTRY$non_lazy_ptr:
.indirect_symbol _INIT_NETDB_THOSTENTRY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_NETDB_CHECKHOSTSFILEAGE$non_lazy_ptr:
.indirect_symbol _U_NETDB_CHECKHOSTSFILEAGE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_NETDB_ETCPATH$non_lazy_ptr:
.indirect_symbol _U_NETDB_ETCPATH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$NETDB$_Ld3$non_lazy_ptr:
.indirect_symbol _$NETDB$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_NETDB_HOSTSFILEAGE$non_lazy_ptr:
.indirect_symbol _U_NETDB_HOSTSFILEAGE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_NETDB_HOSTSLIST$non_lazy_ptr:
.indirect_symbol _TC_NETDB_HOSTSLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_NETDB_RESOLVEFILENAME$non_lazy_ptr:
.indirect_symbol _U_NETDB_RESOLVEFILENAME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_NETDB_RESOLVEFILEAGE$non_lazy_ptr:
.indirect_symbol _U_NETDB_RESOLVEFILEAGE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$NETDB$_Ld5$non_lazy_ptr:
.indirect_symbol _$NETDB$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_NETDB_TDNSSERVERARRAY$non_lazy_ptr:
.indirect_symbol _INIT_NETDB_TDNSSERVERARRAY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_NETDB_DNSSERVERS$non_lazy_ptr:
.indirect_symbol _U_NETDB_DNSSERVERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$NETDB$_Ld7$non_lazy_ptr:
.indirect_symbol _$NETDB$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_NETDB_DEFAULTDOMAINLIST$non_lazy_ptr:
.indirect_symbol _U_NETDB_DEFAULTDOMAINLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$NETDB$_Ld9$non_lazy_ptr:
.indirect_symbol _$NETDB$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_NETDB_CHECKRESOLVEFILEAGE$non_lazy_ptr:
.indirect_symbol _U_NETDB_CHECKRESOLVEFILEAGE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$NETDB$_Ld11$non_lazy_ptr:
.indirect_symbol _$NETDB$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$NETDB$_Ld13$non_lazy_ptr:
.indirect_symbol _$NETDB$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_NETDB_TIMEOUTS$non_lazy_ptr:
.indirect_symbol _U_NETDB_TIMEOUTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_NETDB_TIMEOUTMS$non_lazy_ptr:
.indirect_symbol _U_NETDB_TIMEOUTMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$NETDB$_Ld14$non_lazy_ptr:
.indirect_symbol _$NETDB$_Ld14
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SOCKETS_NOADDRESS6$non_lazy_ptr:
.indirect_symbol _TC_SOCKETS_NOADDRESS6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$NETDB$_Ld16$non_lazy_ptr:
.indirect_symbol _$NETDB$_Ld16
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$NETDB$_Ld18$non_lazy_ptr:
.indirect_symbol _$NETDB$_Ld18
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_NETDB_RESOLVEADDRESS6$crcDDF30028_HEXDIG$non_lazy_ptr:
.indirect_symbol _TC_NETDB_RESOLVEADDRESS6$crcDDF30028_HEXDIG
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_NETDB_DEF175$non_lazy_ptr:
.indirect_symbol _INIT_NETDB_DEF175
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_NETDB_DEF182$non_lazy_ptr:
.indirect_symbol _INIT_NETDB_DEF182
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SOCKETS_NOADDRESS$non_lazy_ptr:
.indirect_symbol _TC_SOCKETS_NOADDRESS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$NETDB$_Ld19$non_lazy_ptr:
.indirect_symbol _$NETDB$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_NETDB_TPROTOCOLENTRY$non_lazy_ptr:
.indirect_symbol _INIT_NETDB_TPROTOCOLENTRY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$NETDB$_Ld21$non_lazy_ptr:
.indirect_symbol _$NETDB$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_NETDB_TNETWORKENTRY$non_lazy_ptr:
.indirect_symbol _INIT_NETDB_TNETWORKENTRY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_NETDB_NONET$non_lazy_ptr:
.indirect_symbol _TC_NETDB_NONET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$NETDB$_Ld23$non_lazy_ptr:
.indirect_symbol _$NETDB$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_INIT_NETDB_TSERVICEENTRY$non_lazy_ptr:
.indirect_symbol _INIT_NETDB_TSERVICEENTRY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$NETDB$_Ld25$non_lazy_ptr:
.indirect_symbol _$NETDB$_Ld25
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

