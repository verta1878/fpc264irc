# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__CREATE$TCOMPONENT$$TJSONCONFIG
_JSONCONF_TJSONCONFIG_$__CREATE$TCOMPONENT$$TJSONCONFIG:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj5
	jmp	Lj6
Lj5:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj6:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj11
	jmp	Lj12
Lj11:
	jmp	Lj3
Lj12:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj15
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj19
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT$stub
	movl	L_VMT_FPJSON_TJSONOBJECT$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONOBJECT_$__CREATE$$TJSONOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,60(%edx)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,56(%edx)
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	call	LFPC_RERAISE$stub
Lj20:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj38
	jmp	Lj37
Lj38:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj36
	jmp	Lj37
Lj36:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj37:
Lj15:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj17
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj42
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj43
	jmp	Lj44
Lj43:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj44:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj42:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj41
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj41:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj17
Lj17:
Lj3:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__DESTROY
_JSONCONF_TJSONCONFIG_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj51
	jmp	Lj52
Lj51:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj52:
	movl	-8(%ebp),%eax
	cmpl	$0,60(%eax)
	jne	Lj55
	jmp	Lj56
Lj55:
	movl	-8(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__FLUSH$stub
	movl	-8(%ebp),%eax
	leal	60(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
Lj56:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TCOMPONENT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj67
	jmp	Lj66
Lj67:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj65
	jmp	Lj66
Lj65:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj66:
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__CLEAR
_JSONCONF_TJSONCONFIG_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	-4(%ebp),%edx
	movl	60(%edx),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,56(%edx)
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__FLUSH
_JSONCONF_TJSONCONFIG_$__FLUSH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$904,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-900(%ebp)
	leal	-612(%ebp),%ecx
	leal	-636(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-640(%ebp)
	testl	%eax,%eax
	jne	Lj78
	movl	-4(%ebp),%eax
	cmpb	$0,64(%eax)
	jne	Lj81
	jmp	Lj82
Lj81:
	movl	-4(%ebp),%eax
	movl	52(%eax),%ecx
	leal	-896(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-896(%ebp),%edx
	leal	-600(%ebp),%eax
	call	L_OBJPAS_ASSIGNFILE$TEXT$SHORTSTRING$stub
	leal	-600(%ebp),%eax
	call	L_SYSTEM_REWRITE$TEXT$stub
	call	LFPC_IOCHECK$stub
	leal	-652(%ebp),%ecx
	leal	-896(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-656(%ebp)
	testl	%eax,%eax
	jne	Lj95
	leal	-900(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-900(%ebp)
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	leal	-900(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	60(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*140(%ecx)
	movl	-900(%ebp),%ecx
	leal	-600(%ebp),%edx
	movl	$0,%eax
	call	Lfpc_write_text_ansistr$stub
	call	LFPC_IOCHECK$stub
	leal	-600(%ebp),%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
Lj95:
	call	LFPC_POPADDRSTACK$stub
	leal	-600(%ebp),%eax
	call	L_OBJPAS_CLOSEFILE$TEXT$stub
	call	LFPC_IOCHECK$stub
	movl	-656(%ebp),%eax
	testl	%eax,%eax
	je	Lj96
	decl	%eax
	testl	%eax,%eax
	je	Lj97
Lj97:
	call	LFPC_RERAISE$stub
Lj96:
	movl	-4(%ebp),%eax
	movb	$0,64(%eax)
Lj82:
Lj78:
	call	LFPC_POPADDRSTACK$stub
	leal	-900(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-900(%ebp)
	movl	-640(%ebp),%eax
	testl	%eax,%eax
	je	Lj79
	call	LFPC_RERAISE$stub
Lj79:
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__FINDOBJECT$WIDESTRING$BOOLEAN$$TJSONOBJECT
_JSONCONF_TJSONCONFIG_$__FINDOBJECT$WIDESTRING$BOOLEAN$$TJSONOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj117
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movb	-8(%ebp),%cl
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__FINDOBJECT$WIDESTRING$BOOLEAN$WIDESTRING$$TJSONOBJECT$stub
	movl	%eax,-16(%ebp)
Lj117:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj118
	call	LFPC_RERAISE$stub
Lj118:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__FINDOBJECT$WIDESTRING$BOOLEAN$WIDESTRING$$TJSONOBJECT
_JSONCONF_TJSONCONFIG_$__FINDOBJECT$WIDESTRING$BOOLEAN$WIDESTRING$$TJSONOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	call	Lj137
Lj137:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-80(%ebp)
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-76(%ebp)
	testl	%eax,%eax
	jne	Lj138
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movb	$47,%al
	call	L_SYSTEM_POS$CHAR$UNICODESTRING$$LONGINT$stub
	cmpl	$1,%eax
	je	Lj143
	jmp	Lj144
Lj143:
	movl	-12(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj151
Lj144:
	movl	-12(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,-16(%ebp)
Lj151:
	.align 2
Lj154:
	movl	-20(%ebp),%edx
	movb	$47,%al
	call	L_SYSTEM_POS$CHAR$UNICODESTRING$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	jne	Lj163
	jmp	Lj164
Lj163:
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj165
	jmp	Lj166
Lj165:
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%ecx
	decl	%ecx
	movl	-20(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_unicodestr_copy$stub
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*172(%edx)
	testl	%eax,%eax
	je	Lj175
	jmp	Lj176
Lj175:
	movl	$-1,-32(%ebp)
	jmp	Lj181
Lj176:
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-24(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-80(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	$0,%cl
	call	L_FPJSON_TJSONOBJECT_$__INDEXOFNAME$ANSISTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-32(%ebp)
Lj181:
	movl	-32(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj194
	jmp	Lj195
Lj194:
	cmpb	$0,-8(%ebp)
	jne	Lj196
	jmp	Lj197
Lj196:
	movl	-16(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	L_VMT_FPJSON_TJSONOBJECT$non_lazy_ptr-Lj137(%ebx),%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONOBJECT_$__CREATE$$TJSONOBJECT$stub
	movl	%eax,-16(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-24(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-80(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-36(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub
	jmp	Lj216
Lj197:
	movl	$0,-16(%ebp)
Lj216:
	jmp	Lj219
Lj195:
	movl	-32(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,%esi
	movl	%esi,%eax
	movl	(%eax),%eax
	movl	%esi,%edx
	movl	(%edx),%edx
	call	*180(%edx)
	cmpl	$6,%eax
	je	Lj220
	jmp	Lj221
Lj220:
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-24(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-80(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__GETOBJECTS$ANSISTRING$$TJSONOBJECT$stub
	movl	%eax,-16(%ebp)
	jmp	Lj240
Lj221:
	cmpb	$0,-8(%ebp)
	jne	Lj241
	jmp	Lj242
Lj241:
	movl	-32(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__DELETE$LONGINT$stub
	movl	-16(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	L_VMT_FPJSON_TJSONOBJECT$non_lazy_ptr-Lj137(%ebx),%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONOBJECT_$__CREATE$$TJSONOBJECT$stub
	movl	%eax,-16(%ebp)
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-24(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-80(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-36(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub
	jmp	Lj265
Lj242:
	movl	$0,-16(%ebp)
Lj265:
Lj240:
Lj219:
Lj166:
	movl	-28(%ebp),%ecx
	leal	-20(%ebp),%eax
	movl	$1,%edx
	call	L_SYSTEM_DELETE$UNICODESTRING$LONGINT$LONGINT$stub
Lj164:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj156
	jmp	Lj274
Lj274:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj156
	jmp	Lj154
Lj156:
	movl	-20(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	8(%ebp),%esi
	movl	%esi,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-20(%ebp),%eax
	movl	%eax,(%esi)
Lj138:
	call	LFPC_POPADDRSTACK$stub
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj139
	call	LFPC_RERAISE$stub
Lj139:
	movl	-16(%ebp),%eax
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$$TJSONDATA
_JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-24(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj291
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	leal	-20(%ebp),%eax
	movl	%eax,4(%esp)
	movb	-8(%ebp),%cl
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$TJSONOBJECT$WIDESTRING$$TJSONDATA$stub
	movl	%eax,-16(%ebp)
Lj291:
	call	LFPC_POPADDRSTACK$stub
	leal	-24(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj292
	call	LFPC_RERAISE$stub
Lj292:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$TJSONOBJECT$WIDESTRING$$TJSONDATA
_JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$TJSONOBJECT$WIDESTRING$$TJSONDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj314
	movl	$0,-16(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movb	-8(%ebp),%cl
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__FINDOBJECT$WIDESTRING$BOOLEAN$WIDESTRING$$TJSONOBJECT$stub
	movl	12(%ebp),%edx
	movl	%eax,(%edx)
	movl	12(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj329
	jmp	Lj330
Lj329:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-64(%ebp),%edx
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movb	$0,%cl
	call	L_FPJSON_TJSONOBJECT_$__INDEXOFNAME$ANSISTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj345
	jmp	Lj344
Lj345:
	movl	-20(%ebp),%edx
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,%ebx
	movl	%ebx,%eax
	movl	(%eax),%eax
	movl	%ebx,%edx
	movl	(%edx),%edx
	call	*180(%edx)
	cmpl	$6,%eax
	jne	Lj343
	jmp	Lj344
Lj343:
	movl	-20(%ebp),%edx
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%ebp),%ecx
	movl	(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,-16(%ebp)
Lj344:
Lj330:
Lj314:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj315
	call	LFPC_RERAISE$stub
Lj315:
	movl	-16(%ebp),%eax
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__GETVALUE$WIDESTRING$WIDESTRING$$WIDESTRING
_JSONCONF_TJSONCONFIG_$__GETVALUE$WIDESTRING$WIDESTRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj362
	leal	-60(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__STRIPSLASH$WIDESTRING$$WIDESTRING$stub
	movl	-60(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	$0,%cl
	call	L_JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$$TJSONDATA$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj379
	jmp	Lj380
Lj379:
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-64(%ebp),%eax
	movl	8(%ebp),%edx
	call	Lfpc_ansistr_to_unicodestr$stub
	jmp	Lj389
Lj380:
	movl	-8(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
Lj389:
Lj362:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj363
	call	LFPC_RERAISE$stub
Lj363:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__GETVALUE$WIDESTRING$LONGINT$$LONGINT
_JSONCONF_TJSONCONFIG_$__GETVALUE$WIDESTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj393
Lj393:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj394
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__STRIPSLASH$WIDESTRING$$WIDESTRING$stub
	movl	-64(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	$0,%cl
	call	L_JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$$TJSONDATA$stub
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj412
	jmp	Lj411
Lj411:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj415
Lj412:
	movl	-20(%ebp),%edx
	movl	L_VMT_FPJSON_TJSONNUMBER$non_lazy_ptr-Lj393(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj416
	jmp	Lj417
Lj416:
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%eax,-16(%ebp)
	jmp	Lj426
Lj417:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-68(%ebp),%eax
	movl	-8(%ebp),%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
Lj426:
Lj415:
Lj394:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj395
	call	LFPC_RERAISE$stub
Lj395:
	movl	-16(%ebp),%eax
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__GETVALUE$WIDESTRING$INT64$$INT64
_JSONCONF_TJSONCONFIG_$__GETVALUE$WIDESTRING$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	call	Lj438
Lj438:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj439
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__STRIPSLASH$WIDESTRING$$WIDESTRING$stub
	movl	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	L_JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$$TJSONDATA$stub
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj457
	jmp	Lj456
Lj456:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj460
Lj457:
	movl	-20(%ebp),%edx
	movl	L_VMT_FPJSON_TJSONNUMBER$non_lazy_ptr-Lj438(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj461
	jmp	Lj462
Lj461:
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%edx),%edx
	call	*116(%edx)
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	jmp	Lj471
Lj462:
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-68(%ebp),%eax
	call	L_SYSUTILS_STRTOINT64DEF$ANSISTRING$INT64$$INT64$stub
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
Lj471:
Lj460:
Lj439:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj440
	call	LFPC_RERAISE$stub
Lj440:
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__GETVALUE$WIDESTRING$BOOLEAN$$BOOLEAN
_JSONCONF_TJSONCONFIG_$__GETVALUE$WIDESTRING$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	call	Lj483
Lj483:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj484
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__STRIPSLASH$WIDESTRING$$WIDESTRING$stub
	movl	-64(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	$0,%cl
	call	L_JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$$TJSONDATA$stub
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj502
	jmp	Lj501
Lj501:
	movb	-8(%ebp),%al
	movb	%al,-13(%ebp)
	jmp	Lj505
Lj502:
	movl	-20(%ebp),%edx
	movl	L_VMT_FPJSON_TJSONBOOLEAN$non_lazy_ptr-Lj483(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj506
	jmp	Lj507
Lj506:
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%edx),%edx
	call	*104(%edx)
	movb	%al,-13(%ebp)
	jmp	Lj516
Lj507:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-68(%ebp),%eax
	movb	-8(%ebp),%dl
	call	L_SYSUTILS_STRTOBOOLDEF$ANSISTRING$BOOLEAN$$BOOLEAN$stub
	movb	%al,-13(%ebp)
Lj516:
Lj505:
Lj484:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj485
	call	LFPC_RERAISE$stub
Lj485:
	movb	-13(%ebp),%al
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__GETVALUE$WIDESTRING$DOUBLE$$DOUBLE
_JSONCONF_TJSONCONFIG_$__GETVALUE$WIDESTRING$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
	call	Lj528
Lj528:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj529
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__STRIPSLASH$WIDESTRING$$WIDESTRING$stub
	movl	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	L_JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$$TJSONDATA$stub
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj547
	jmp	Lj546
Lj546:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj550
Lj547:
	movl	-20(%ebp),%edx
	movl	L_VMT_FPJSON_TJSONNUMBER$non_lazy_ptr-Lj528(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj551
	jmp	Lj552
Lj551:
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	fstpl	-16(%ebp)
	jmp	Lj561
Lj552:
	fldl	8(%ebp)
	fstpt	(%esp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*144(%ecx)
	movl	-68(%ebp),%eax
	call	L_SYSUTILS_STRTOFLOATDEF$ANSISTRING$EXTENDED$$EXTENDED$stub
	fstpl	-16(%ebp)
Lj561:
Lj550:
Lj529:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj530
	call	LFPC_RERAISE$stub
Lj530:
	fldl	-16(%ebp)
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$WIDESTRING
_JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	call	Lj573
Lj573:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-76(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj574
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	leal	-24(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-72(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__STRIPSLASH$WIDESTRING$$WIDESTRING$stub
	movl	-72(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	$1,%cl
	call	L_JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$TJSONOBJECT$WIDESTRING$$TJSONDATA$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj597
	jmp	Lj596
Lj597:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*180(%edx)
	cmpl	$2,%eax
	jne	Lj595
	jmp	Lj596
Lj595:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-20(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-76(%ebp),%edx
	movl	-24(%ebp),%eax
	movb	$0,%cl
	call	L_FPJSON_TJSONOBJECT_$__INDEXOFNAME$ANSISTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%edx
	movl	-24(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__DELETE$LONGINT$stub
	movl	$0,-16(%ebp)
Lj596:
	cmpl	$0,-16(%ebp)
	jne	Lj619
	jmp	Lj618
Lj618:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-76(%ebp),%ecx
	movl	L_VMT_FPJSON_TJSONSTRING$non_lazy_ptr-Lj573(%ebx),%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONSTRING_$__CREATE$ANSISTRING$$TJSONSTRING$stub
	movl	%eax,-16(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-20(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-76(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub
	jmp	Lj642
Lj619:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-76(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*148(%ecx)
Lj642:
	movl	-12(%ebp),%eax
	movb	$1,64(%eax)
Lj574:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj575
	call	LFPC_RERAISE$stub
Lj575:
	movl	-80(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__SETDELETEVALUE$WIDESTRING$WIDESTRING$WIDESTRING
_JSONCONF_TJSONCONFIG_$__SETDELETEVALUE$WIDESTRING$WIDESTRING$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	8(%ebp),%edx
	movl	-8(%ebp),%eax
	call	Lfpc_unicodestr_compare_equal$stub
	testl	%eax,%eax
	je	Lj661
	jmp	Lj662
Lj661:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__DELETEVALUE$WIDESTRING$stub
	jmp	Lj671
Lj662:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$WIDESTRING$stub
Lj671:
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$LONGINT
_JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	call	Lj679
Lj679:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-76(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj680
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	leal	-24(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-72(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__STRIPSLASH$WIDESTRING$$WIDESTRING$stub
	movl	-72(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	$1,%cl
	call	L_JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$TJSONOBJECT$WIDESTRING$$TJSONDATA$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj703
	jmp	Lj702
Lj703:
	movl	-16(%ebp),%edx
	movl	L_VMT_FPJSON_TJSONINTEGERNUMBER$non_lazy_ptr-Lj679(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	je	Lj701
	jmp	Lj702
Lj701:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-20(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-76(%ebp),%edx
	movl	-24(%ebp),%eax
	movb	$0,%cl
	call	L_FPJSON_TJSONOBJECT_$__INDEXOFNAME$ANSISTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj720
	jmp	Lj721
Lj720:
	movl	-28(%ebp),%edx
	movl	-24(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__DELETE$LONGINT$stub
Lj721:
	movl	$0,-16(%ebp)
Lj702:
	cmpl	$0,-16(%ebp)
	jne	Lj729
	jmp	Lj728
Lj728:
	movl	-8(%ebp),%ecx
	movl	L_VMT_FPJSON_TJSONINTEGERNUMBER$non_lazy_ptr-Lj679(%ebx),%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONINTEGERNUMBER_$__CREATE$LONGINT$$TJSONINTEGERNUMBER$stub
	movl	%eax,-16(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-20(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-76(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub
	jmp	Lj748
Lj729:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*132(%ecx)
Lj748:
	movl	-12(%ebp),%eax
	movb	$1,64(%eax)
Lj680:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj681
	call	LFPC_RERAISE$stub
Lj681:
	movl	-80(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$INT64
_JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	call	Lj762
Lj762:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj763
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	leal	-20(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__STRIPSLASH$WIDESTRING$$WIDESTRING$stub
	movl	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$1,%cl
	call	L_JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$TJSONOBJECT$WIDESTRING$$TJSONDATA$stub
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj786
	jmp	Lj785
Lj786:
	movl	-12(%ebp),%edx
	movl	L_VMT_FPJSON_TJSONINT64NUMBER$non_lazy_ptr-Lj762(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	je	Lj784
	jmp	Lj785
Lj784:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-16(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-72(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	$0,%cl
	call	L_FPJSON_TJSONOBJECT_$__INDEXOFNAME$ANSISTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj803
	jmp	Lj804
Lj803:
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__DELETE$LONGINT$stub
Lj804:
	movl	$0,-12(%ebp)
Lj785:
	cmpl	$0,-12(%ebp)
	jne	Lj812
	jmp	Lj811
Lj811:
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_VMT_FPJSON_TJSONINT64NUMBER$non_lazy_ptr-Lj762(%ebx),%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONINT64NUMBER_$__CREATE$INT64$$TJSONINT64NUMBER$stub
	movl	%eax,-12(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-16(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-72(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-20(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub
	jmp	Lj831
Lj812:
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*136(%edx)
Lj831:
	movl	-8(%ebp),%eax
	movb	$1,64(%eax)
Lj763:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj764
	call	LFPC_RERAISE$stub
Lj764:
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__SETDELETEVALUE$WIDESTRING$LONGINT$LONGINT
_JSONCONF_TJSONCONFIG_$__SETDELETEVALUE$WIDESTRING$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	8(%ebp),%eax
	je	Lj846
	jmp	Lj847
Lj846:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__DELETEVALUE$WIDESTRING$stub
	jmp	Lj852
Lj847:
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$LONGINT$stub
Lj852:
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__SETDELETEVALUE$WIDESTRING$INT64$INT64
_JSONCONF_TJSONCONFIG_$__SETDELETEVALUE$WIDESTRING$INT64$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	16(%ebp),%eax
	movl	20(%ebp),%edx
	cmpl	12(%ebp),%edx
	jne	Lj862
	cmpl	8(%ebp),%eax
	jne	Lj862
	jmp	Lj861
	jmp	Lj862
Lj861:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__DELETEVALUE$WIDESTRING$stub
	jmp	Lj867
Lj862:
	movl	20(%ebp),%eax
	movl	%eax,4(%esp)
	movl	16(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$INT64$stub
Lj867:
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$BOOLEAN
_JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-84(%ebp)
	movl	%esi,-80(%ebp)
	call	Lj875
Lj875:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-76(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj876
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	leal	-24(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-72(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__STRIPSLASH$WIDESTRING$$WIDESTRING$stub
	movl	-72(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	$1,%cl
	call	L_JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$TJSONOBJECT$WIDESTRING$$TJSONDATA$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj899
	jmp	Lj898
Lj899:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*180(%edx)
	cmpl	$3,%eax
	jne	Lj897
	jmp	Lj898
Lj897:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-20(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-76(%ebp),%edx
	movl	-24(%ebp),%eax
	movb	$0,%cl
	call	L_FPJSON_TJSONOBJECT_$__INDEXOFNAME$ANSISTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%edx
	movl	-24(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__DELETE$LONGINT$stub
	movl	$0,-16(%ebp)
Lj898:
	cmpl	$0,-16(%ebp)
	jne	Lj921
	jmp	Lj920
Lj920:
	movb	-8(%ebp),%cl
	movl	L_VMT_FPJSON_TJSONBOOLEAN$non_lazy_ptr-Lj875(%esi),%eax
	movl	$0,%ebx
	movl	%eax,%edx
	movl	%ebx,%eax
	call	L_FPJSON_TJSONBOOLEAN_$__CREATE$BOOLEAN$$TJSONBOOLEAN$stub
	movl	%eax,-16(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-20(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-76(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	-24(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub
	jmp	Lj940
Lj921:
	movb	-8(%ebp),%dl
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*124(%ecx)
Lj940:
	movl	-12(%ebp),%eax
	movb	$1,64(%eax)
Lj876:
	call	LFPC_POPADDRSTACK$stub
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj877
	call	LFPC_RERAISE$stub
Lj877:
	movl	-84(%ebp),%ebx
	movl	-80(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$DOUBLE
_JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	call	Lj954
Lj954:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj955
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	leal	-20(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__STRIPSLASH$WIDESTRING$$WIDESTRING$stub
	movl	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$1,%cl
	call	L_JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$TJSONOBJECT$WIDESTRING$$TJSONDATA$stub
	movl	%eax,-12(%ebp)
	cmpl	$0,-12(%ebp)
	jne	Lj978
	jmp	Lj977
Lj978:
	movl	-12(%ebp),%edx
	movl	L_VMT_FPJSON_TJSONFLOATNUMBER$non_lazy_ptr-Lj954(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	je	Lj976
	jmp	Lj977
Lj976:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-16(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-72(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	$0,%cl
	call	L_FPJSON_TJSONOBJECT_$__INDEXOFNAME$ANSISTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__DELETE$LONGINT$stub
	movl	$0,-12(%ebp)
Lj977:
	cmpl	$0,-12(%ebp)
	jne	Lj1002
	jmp	Lj1001
Lj1001:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_FPJSON_TJSONFLOATNUMBER$non_lazy_ptr-Lj954(%ebx),%edx
	movl	$0,%eax
	call	L_FPJSON_TJSONFLOATNUMBER_$__CREATE$DOUBLE$$TJSONFLOATNUMBER$stub
	movl	%eax,-12(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-16(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-72(%ebp),%edx
	movl	-12(%ebp),%ecx
	movl	-20(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub
	jmp	Lj1021
Lj1002:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
Lj1021:
	movl	-8(%ebp),%eax
	movb	$1,64(%eax)
Lj955:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj956
	call	LFPC_RERAISE$stub
Lj956:
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__SETDELETEVALUE$WIDESTRING$BOOLEAN$BOOLEAN
_JSONCONF_TJSONCONFIG_$__SETDELETEVALUE$WIDESTRING$BOOLEAN$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movb	-8(%ebp),%al
	cmpb	8(%ebp),%al
	je	Lj1036
	jmp	Lj1037
Lj1036:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__DELETEVALUE$WIDESTRING$stub
	jmp	Lj1042
Lj1037:
	movb	-8(%ebp),%cl
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$BOOLEAN$stub
Lj1042:
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__DELETEPATH$WIDESTRING
_JSONCONF_TJSONCONFIG_$__DELETEPATH$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1051
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__STRIPSLASH$WIDESTRING$$WIDESTRING$stub
	movl	-68(%ebp),%eax
	leal	-12(%ebp),%edx
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1066
	movl	-4(%eax),%eax
Lj1066:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1067
	jmp	Lj1068
Lj1067:
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-12(%ebp),%eax
	call	Lfpc_ansistr_to_unicodestr$stub
	movl	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	L_JSONCONF_TJSONCONFIG_$__FINDOBJECT$WIDESTRING$BOOLEAN$WIDESTRING$$TJSONOBJECT$stub
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jne	Lj1083
	jmp	Lj1084
Lj1083:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-24(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-72(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	$0,%cl
	call	L_FPJSON_TJSONOBJECT_$__INDEXOFNAME$ANSISTRING$BOOLEAN$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj1097
	jmp	Lj1098
Lj1097:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__DELETE$LONGINT$stub
Lj1098:
Lj1084:
Lj1068:
Lj1051:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-12(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-12(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1052
	call	LFPC_RERAISE$stub
Lj1052:
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__DELETEVALUE$WIDESTRING
_JSONCONF_TJSONCONFIG_$__DELETEVALUE$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__DELETEPATH$WIDESTRING$stub
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__LOADED
_JSONCONF_TJSONCONFIG_$__LOADED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TCOMPONENT_$__LOADED$stub
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	testl	%eax,%eax
	je	Lj1127
	movl	-4(%eax),%eax
Lj1127:
	cmpl	$0,%eax
	jg	Lj1125
	jmp	Lj1126
Lj1125:
	movl	-4(%ebp),%eax
	movl	52(%eax),%edx
	movl	-4(%ebp),%eax
	movb	$1,%cl
	call	L_JSONCONF_TJSONCONFIG_$__DOSETFILENAME$ANSISTRING$BOOLEAN$stub
Lj1126:
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__FINDPATH$WIDESTRING$BOOLEAN$$TJSONOBJECT
_JSONCONF_TJSONCONFIG_$__FINDPATH$WIDESTRING$BOOLEAN$$TJSONOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	call	Lj1135
Lj1135:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-20(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1136
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1143
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj1143:
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj1144
	jmp	Lj1146
Lj1146:
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$47,%ax
	jne	Lj1144
	jmp	Lj1145
Lj1144:
	movl	-20(%ebp),%edx
	leal	-20(%ebp),%eax
	movl	L_$JSONCONF$_Ld1$non_lazy_ptr-Lj1135(%ebx),%ecx
	call	Lfpc_unicodestr_concat$stub
Lj1145:
	movb	-8(%ebp),%cl
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__FINDOBJECT$WIDESTRING$BOOLEAN$$TJSONOBJECT$stub
	movl	%eax,-16(%ebp)
Lj1136:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_unicodestr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1137
	call	LFPC_RERAISE$stub
Lj1137:
	movl	-16(%ebp),%eax
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__DOSETFILENAME$ANSISTRING$BOOLEAN
_JSONCONF_TJSONCONFIG_$__DOSETFILENAME$ANSISTRING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-120(%ebp)
	movl	%esi,-116(%ebp)
	call	Lj1168
Lj1168:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movb	-8(%ebp),%al
	testb	%al,%al
	je	Lj1171
	jmp	Lj1170
Lj1171:
	movl	-12(%ebp),%eax
	movl	52(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1169
	jmp	Lj1170
Lj1169:
	jmp	Lj1167
Lj1170:
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	52(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,52(%esi)
	movl	-12(%ebp),%eax
	testl	$1,40(%eax)
	jne	Lj1178
	jmp	Lj1179
Lj1178:
	jmp	Lj1167
Lj1179:
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__FLUSH$stub
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1182
	jmp	Lj1183
Lj1182:
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__CLEAR$stub
	jmp	Lj1188
Lj1183:
	movw	$0,(%esp)
	movl	-4(%ebp),%ecx
	movl	L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr-Lj1168(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub
	movl	%eax,-24(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1199
	movb	$1,(%esp)
	movl	-24(%ebp),%ecx
	movl	L_VMT_JSONPARSER_TJSONPARSER$non_lazy_ptr-Lj1168(%ebx),%edx
	movl	$0,%eax
	call	L_JSONPARSER_TJSONPARSER_$__CREATE$TSTREAM$BOOLEAN$$TJSONPARSER$stub
	movl	%eax,-16(%ebp)
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-104(%ebp)
	testl	%eax,%eax
	jne	Lj1213
	movl	-16(%ebp),%eax
	call	L_JSONPARSER_TJSONPARSER_$__PARSE$$TJSONDATA$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	L_VMT_FPJSON_TJSONOBJECT$non_lazy_ptr-Lj1168(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1221
	jmp	Lj1222
Lj1221:
	movl	-12(%ebp),%eax
	leal	60(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-20(%ebp),%edx
	movl	L_VMT_FPJSON_TJSONOBJECT$non_lazy_ptr-Lj1168(%ebx),%eax
	call	Lfpc_do_as$stub
	movl	-12(%ebp),%edx
	movl	%eax,60(%edx)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,56(%edx)
	jmp	Lj1237
Lj1222:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-108(%ebp)
	movl	$11,-112(%ebp)
	leal	-112(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_JSONCONF_EJSONCONFIGERROR$non_lazy_ptr-Lj1168(%ebx),%edx
	movl	L_$JSONCONF$_Ld3$non_lazy_ptr-Lj1168(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj1168(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1237:
Lj1213:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj1214
	decl	%eax
	testl	%eax,%eax
	je	Lj1215
Lj1215:
	call	LFPC_RERAISE$stub
Lj1214:
Lj1199:
	call	LFPC_POPADDRSTACK$stub
	movl	-24(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1200
	decl	%eax
	testl	%eax,%eax
	je	Lj1201
Lj1201:
	call	LFPC_RERAISE$stub
Lj1200:
Lj1188:
Lj1167:
	movl	-120(%ebp),%ebx
	movl	-116(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__SETFILENAME$ANSISTRING
_JSONCONF_TJSONCONFIG_$__SETFILENAME$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	$0,%cl
	call	L_JSONCONF_TJSONCONFIG_$__DOSETFILENAME$ANSISTRING$BOOLEAN$stub
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__STRIPSLASH$WIDESTRING$$WIDESTRING
_JSONCONF_TJSONCONFIG_$__STRIPSLASH$WIDESTRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1262
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1267
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj1267:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1270
	jmp	Lj1269
Lj1270:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$47,%ax
	je	Lj1268
	jmp	Lj1269
Lj1268:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_unicodestr_copy$stub
	jmp	Lj1279
Lj1269:
	movl	-4(%ebp),%eax
	call	LFPC_UNICODESTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
Lj1279:
Lj1262:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1263
	call	LFPC_RERAISE$stub
Lj1263:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__CLOSEKEY
_JSONCONF_TJSONCONFIG_$__CLOSEKEY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__RESETKEY$stub
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__OPENKEY$WIDESTRING$BOOLEAN
_JSONCONF_TJSONCONFIG_$__OPENKEY$WIDESTRING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	call	Lj1287
Lj1287:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj1288
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_unicodestr_to_ansistr$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1297
	movl	-4(%eax),%eax
Lj1297:
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj1298
	jmp	Lj1299
Lj1298:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,56(%edx)
	jmp	Lj1302
Lj1299:
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$47,%al
	jne	Lj1303
	jmp	Lj1304
Lj1303:
	movl	-20(%ebp),%edx
	leal	-20(%ebp),%eax
	movl	L_$JSONCONF$_Ld5$non_lazy_ptr-Lj1287(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj1304:
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movl	-20(%ebp),%eax
	call	Lfpc_ansistr_to_unicodestr$stub
	movl	-68(%ebp),%edx
	movb	-8(%ebp),%cl
	movl	-12(%ebp),%eax
	call	L_JSONCONF_TJSONCONFIG_$__FINDOBJECT$WIDESTRING$BOOLEAN$$TJSONOBJECT$stub
	movl	-12(%ebp),%edx
	movl	%eax,56(%edx)
	movl	-12(%ebp),%eax
	movl	56(%eax),%eax
	testl	%eax,%eax
	je	Lj1323
	jmp	Lj1324
Lj1323:
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	$18,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_VMT_JSONCONF_EJSONCONFIGERROR$non_lazy_ptr-Lj1287(%ebx),%edx
	movl	L_$JSONCONF$_Ld7$non_lazy_ptr-Lj1287(%ebx),%ecx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj1287(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj1324:
Lj1302:
Lj1288:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj1289
	call	LFPC_RERAISE$stub
Lj1289:
	movl	-80(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__RESETKEY
_JSONCONF_TJSONCONFIG_$__RESETKEY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,56(%edx)
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__ENUMSUBKEYS$ANSISTRING$TSTRINGS
_JSONCONF_TJSONCONFIG_$__ENUMSUBKEYS$ANSISTRING$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	call	Lj1346
Lj1346:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1347
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_to_unicodestr$stub
	movl	-64(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	$0,%cl
	call	L_JSONCONF_TJSONCONFIG_$__FINDPATH$WIDESTRING$BOOLEAN$$TJSONOBJECT$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj1362
	jmp	Lj1363
Lj1362:
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*172(%edx)
	movl	%eax,%esi
	decl	%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj1365
	decl	-20(%ebp)
	.align 2
Lj1366:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,%edx
	movl	L_VMT_FPJSON_TJSONOBJECT$non_lazy_ptr-Lj1346(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	jne	Lj1369
	jmp	Lj1370
Lj1369:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__GETNAMEOF$LONGINT$$ANSISTRING$stub
	movl	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj1370:
	cmpl	-20(%ebp),%esi
	jg	Lj1366
Lj1365:
Lj1363:
Lj1347:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1348
	call	LFPC_RERAISE$stub
Lj1348:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_JSONCONF_TJSONCONFIG_$__ENUMVALUES$ANSISTRING$TSTRINGS
_JSONCONF_TJSONCONFIG_$__ENUMVALUES$ANSISTRING$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	movl	%esi,-72(%ebp)
	call	Lj1390
Lj1390:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1391
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	call	Lfpc_ansistr_to_unicodestr$stub
	movl	-64(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	$0,%cl
	call	L_JSONCONF_TJSONCONFIG_$__FINDPATH$WIDESTRING$BOOLEAN$$TJSONOBJECT$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj1406
	jmp	Lj1407
Lj1406:
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*172(%edx)
	movl	%eax,%esi
	decl	%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj1409
	decl	-20(%ebp)
	.align 2
Lj1410:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*160(%ecx)
	movl	%eax,%edx
	movl	L_VMT_FPJSON_TJSONOBJECT$non_lazy_ptr-Lj1390(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	je	Lj1413
	jmp	Lj1414
Lj1413:
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPJSON_TJSONOBJECT_$__GETNAMEOF$LONGINT$$ANSISTRING$stub
	movl	-68(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj1414:
	cmpl	-20(%ebp),%esi
	jg	Lj1410
Lj1409:
Lj1407:
Lj1391:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_UNICODESTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1392
	call	LFPC_RERAISE$stub
Lj1392:
	movl	-76(%ebp),%ebx
	movl	-72(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$JSONCONF$_Ld9
_$JSONCONF$_Ld9:
	.byte	16
	.ascii	"EJSONConfigError"

.const_data
	.align 2
.globl	_VMT_JSONCONF_EJSONCONFIGERROR
_VMT_JSONCONF_EJSONCONFIGERROR:
	.long	12,-12
	.long	_VMT_SYSUTILS_EXCEPTION
	.long	_$JSONCONF$_Ld9
	.long	0,0
	.long	_$JSONCONF$_Ld10
	.long	_RTTI_JSONCONF_EJSONCONFIGERROR
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_SYSTEM_TOBJECT_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	_SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	0

.const_data
	.align 2
.globl	_$JSONCONF$_Ld12
_$JSONCONF$_Ld12:
	.byte	11
	.ascii	"TJSONConfig"

.const_data
	.align 2
.globl	_VMT_JSONCONF_TJSONCONFIG
_VMT_JSONCONF_TJSONCONFIG:
	.long	68,-68
	.long	_VMT_CLASSES_TCOMPONENT
	.long	_$JSONCONF$_Ld12
	.long	0,0
	.long	_$JSONCONF$_Ld13
	.long	_RTTI_JSONCONF_TJSONCONFIG
	.long	_INIT_JSONCONF_TJSONCONFIG
	.long	0,0,0
	.long	_JSONCONF_TJSONCONFIG_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_CLASSES_TCOMPONENT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	_CLASSES_TCOMPONENT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_SYSTEM_TOBJECT_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TCOMPONENT_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TCOMPONENT_$__GETOWNER$$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TCOMPONENT_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__GETCHILDREN$TGETCHILDPROC$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__GETCHILDOWNER$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__GETCHILDPARENT$$TCOMPONENT
	.long	_JSONCONF_TJSONCONFIG_$__LOADED
	.long	_CLASSES_TCOMPONENT_$__LOADING
	.long	_CLASSES_TCOMPONENT_$__NOTIFICATION$TCOMPONENT$TOPERATION
	.long	_CLASSES_TCOMPONENT_$__PALETTECREATED
	.long	_CLASSES_TCOMPONENT_$__READSTATE$TREADER
	.long	_CLASSES_TCOMPONENT_$__SETNAME$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__SETCHILDORDER$TCOMPONENT$LONGINT
	.long	_CLASSES_TCOMPONENT_$__SETPARENTCOMPONENT$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__UPDATING
	.long	_CLASSES_TCOMPONENT_$__UPDATED
	.long	_CLASSES_TCOMPONENT_$__UPDATEREGISTRY$BOOLEAN$ANSISTRING$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__VALIDATERENAME$TCOMPONENT$ANSISTRING$ANSISTRING
	.long	_CLASSES_TCOMPONENT_$__VALIDATECONTAINER$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__VALIDATEINSERT$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__QUERYINTERFACE$TGUID$formal$$HRESULT
	.long	_CLASSES_TCOMPONENT_$__WRITESTATE$TWRITER
	.long	_JSONCONF_TJSONCONFIG_$__CREATE$TCOMPONENT$$TJSONCONFIG
	.long	_CLASSES_TCOMPONENT_$__EXECUTEACTION$TBASICACTION$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__GETPARENTCOMPONENT$$TCOMPONENT
	.long	_CLASSES_TCOMPONENT_$__HASPARENT$$BOOLEAN
	.long	_CLASSES_TCOMPONENT_$__UPDATEACTION$TBASICACTION$$BOOLEAN
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_JSONCONF
_THREADVARLIST_JSONCONF:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$JSONCONF$_Ld16
_$JSONCONF$_Ld16:
	.short	0,1
	.long	0,-1,8
.reference _$JSONCONF$_Ld15
.globl	_$JSONCONF$_Ld15
_$JSONCONF$_Ld15:
.reference _$JSONCONF$_Ld16
	.ascii	"JSONCONF\000"

.const_data
	.align 2
.globl	_$JSONCONF$_Ld18
_$JSONCONF$_Ld18:
	.short	0,1
	.long	0,-1,36
.reference _$JSONCONF$_Ld17
.globl	_$JSONCONF$_Ld17
_$JSONCONF$_Ld17:
.reference _$JSONCONF$_Ld18
	.ascii	"XML file has wrong root element name\000"
	.align 2
.globl	_$JSONCONF$_Ld20
_$JSONCONF$_Ld20:
	.short	0,1
	.long	0,-1,23
.reference _$JSONCONF$_Ld19
.globl	_$JSONCONF$_Ld19
_$JSONCONF$_Ld19:
.reference _$JSONCONF$_Ld20
	.ascii	"jsonconf.swrongrootname\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$JSONCONF$_Ld2
_$JSONCONF$_Ld2:
	.long	-1,2
.reference _$JSONCONF$_Ld1
.globl	_$JSONCONF$_Ld1
_$JSONCONF$_Ld1:
.reference _$JSONCONF$_Ld2
	.short	47,0

.const_data
	.align 2
.globl	_$JSONCONF$_Ld4
_$JSONCONF$_Ld4:
	.short	0,1
	.long	0,-1,44
.reference _$JSONCONF$_Ld3
.globl	_$JSONCONF$_Ld3
_$JSONCONF$_Ld3:
.reference _$JSONCONF$_Ld4
	.ascii	"\"%s\" is not a valid JSON configuration file.\000"

.const_data
	.align 2
.globl	_$JSONCONF$_Ld6
_$JSONCONF$_Ld6:
	.short	0,1
	.long	0,-1,1
.reference _$JSONCONF$_Ld5
.globl	_$JSONCONF$_Ld5
_$JSONCONF$_Ld5:
.reference _$JSONCONF$_Ld6
	.ascii	"/\000"

.const_data
	.align 2
.globl	_$JSONCONF$_Ld8
_$JSONCONF$_Ld8:
	.short	0,1
	.long	0,-1,24
.reference _$JSONCONF$_Ld7
.globl	_$JSONCONF$_Ld7
_$JSONCONF$_Ld7:
.reference _$JSONCONF$_Ld8
	.ascii	"Could not open key \"%s\".\000"
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

L_CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__CREATE$TCOMPONENT$$TCOMPONENT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONOBJECT_$__CREATE$$TJSONOBJECT$stub:
.indirect_symbol _FPJSON_TJSONOBJECT_$__CREATE$$TJSONOBJECT
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

LFPC_POPSECONDOBJECTSTACK$stub:
.indirect_symbol FPC_POPSECONDOBJECTSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_DESTROYEXCEPTION$stub:
.indirect_symbol FPC_DESTROYEXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPOBJECTSTACK$stub:
.indirect_symbol FPC_POPOBJECTSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONCONF_TJSONCONFIG_$__FLUSH$stub:
.indirect_symbol _JSONCONF_TJSONCONFIG_$__FLUSH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FREEANDNIL$formal$stub:
.indirect_symbol _SYSUTILS_FREEANDNIL$formal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOMPONENT_$__DESTROY$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__DESTROY
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

L_OBJPAS_ASSIGNFILE$TEXT$SHORTSTRING$stub:
.indirect_symbol _OBJPAS_ASSIGNFILE$TEXT$SHORTSTRING
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

LFPC_IOCHECK$stub:
.indirect_symbol FPC_IOCHECK
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

Lfpc_write_text_ansistr$stub:
.indirect_symbol fpc_write_text_ansistr
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

L_OBJPAS_CLOSEFILE$TEXT$stub:
.indirect_symbol _OBJPAS_CLOSEFILE$TEXT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONCONF_TJSONCONFIG_$__FINDOBJECT$WIDESTRING$BOOLEAN$WIDESTRING$$TJSONOBJECT$stub:
.indirect_symbol _JSONCONF_TJSONCONFIG_$__FINDOBJECT$WIDESTRING$BOOLEAN$WIDESTRING$$TJSONOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_decr_ref$stub:
.indirect_symbol fpc_unicodestr_decr_ref
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_UNICODESTR_INCR_REF$stub:
.indirect_symbol FPC_UNICODESTR_INCR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_UNICODESTR_DECR_REF$stub:
.indirect_symbol FPC_UNICODESTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_POS$CHAR$UNICODESTRING$$LONGINT$stub:
.indirect_symbol _SYSTEM_POS$CHAR$UNICODESTRING$$LONGINT
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

Lfpc_unicodestr_to_ansistr$stub:
.indirect_symbol fpc_unicodestr_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONOBJECT_$__INDEXOFNAME$ANSISTRING$BOOLEAN$$LONGINT$stub:
.indirect_symbol _FPJSON_TJSONOBJECT_$__INDEXOFNAME$ANSISTRING$BOOLEAN$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT$stub:
.indirect_symbol _FPJSON_TJSONOBJECT_$__ADD$ANSISTRING$TJSONDATA$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONOBJECT_$__GETOBJECTS$ANSISTRING$$TJSONOBJECT$stub:
.indirect_symbol _FPJSON_TJSONOBJECT_$__GETOBJECTS$ANSISTRING$$TJSONOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONOBJECT_$__DELETE$LONGINT$stub:
.indirect_symbol _FPJSON_TJSONOBJECT_$__DELETE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DELETE$UNICODESTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$UNICODESTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$TJSONOBJECT$WIDESTRING$$TJSONDATA$stub:
.indirect_symbol _JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$TJSONOBJECT$WIDESTRING$$TJSONDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONCONF_TJSONCONFIG_$__STRIPSLASH$WIDESTRING$$WIDESTRING$stub:
.indirect_symbol _JSONCONF_TJSONCONFIG_$__STRIPSLASH$WIDESTRING$$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$$TJSONDATA$stub:
.indirect_symbol _JSONCONF_TJSONCONFIG_$__FINDELEMENT$WIDESTRING$BOOLEAN$$TJSONDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_ansistr_to_unicodestr$stub:
.indirect_symbol fpc_ansistr_to_unicodestr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_do_is$stub:
.indirect_symbol fpc_do_is
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

L_SYSUTILS_STRTOINT64DEF$ANSISTRING$INT64$$INT64$stub:
.indirect_symbol _SYSUTILS_STRTOINT64DEF$ANSISTRING$INT64$$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTOBOOLDEF$ANSISTRING$BOOLEAN$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_STRTOBOOLDEF$ANSISTRING$BOOLEAN$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_STRTOFLOATDEF$ANSISTRING$EXTENDED$$EXTENDED$stub:
.indirect_symbol _SYSUTILS_STRTOFLOATDEF$ANSISTRING$EXTENDED$$EXTENDED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONSTRING_$__CREATE$ANSISTRING$$TJSONSTRING$stub:
.indirect_symbol _FPJSON_TJSONSTRING_$__CREATE$ANSISTRING$$TJSONSTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_compare_equal$stub:
.indirect_symbol fpc_unicodestr_compare_equal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONCONF_TJSONCONFIG_$__DELETEVALUE$WIDESTRING$stub:
.indirect_symbol _JSONCONF_TJSONCONFIG_$__DELETEVALUE$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$WIDESTRING$stub:
.indirect_symbol _JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONINTEGERNUMBER_$__CREATE$LONGINT$$TJSONINTEGERNUMBER$stub:
.indirect_symbol _FPJSON_TJSONINTEGERNUMBER_$__CREATE$LONGINT$$TJSONINTEGERNUMBER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONINT64NUMBER_$__CREATE$INT64$$TJSONINT64NUMBER$stub:
.indirect_symbol _FPJSON_TJSONINT64NUMBER_$__CREATE$INT64$$TJSONINT64NUMBER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$LONGINT$stub:
.indirect_symbol _JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$INT64$stub:
.indirect_symbol _JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$INT64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONBOOLEAN_$__CREATE$BOOLEAN$$TJSONBOOLEAN$stub:
.indirect_symbol _FPJSON_TJSONBOOLEAN_$__CREATE$BOOLEAN$$TJSONBOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONFLOATNUMBER_$__CREATE$DOUBLE$$TJSONFLOATNUMBER$stub:
.indirect_symbol _FPJSON_TJSONFLOATNUMBER_$__CREATE$DOUBLE$$TJSONFLOATNUMBER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$BOOLEAN$stub:
.indirect_symbol _JSONCONF_TJSONCONFIG_$__SETVALUE$WIDESTRING$BOOLEAN
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

L_JSONCONF_TJSONCONFIG_$__DELETEPATH$WIDESTRING$stub:
.indirect_symbol _JSONCONF_TJSONCONFIG_$__DELETEPATH$WIDESTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TCOMPONENT_$__LOADED$stub:
.indirect_symbol _CLASSES_TCOMPONENT_$__LOADED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONCONF_TJSONCONFIG_$__DOSETFILENAME$ANSISTRING$BOOLEAN$stub:
.indirect_symbol _JSONCONF_TJSONCONFIG_$__DOSETFILENAME$ANSISTRING$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_unicodestr_concat$stub:
.indirect_symbol fpc_unicodestr_concat
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONCONF_TJSONCONFIG_$__FINDOBJECT$WIDESTRING$BOOLEAN$$TJSONOBJECT$stub:
.indirect_symbol _JSONCONF_TJSONCONFIG_$__FINDOBJECT$WIDESTRING$BOOLEAN$$TJSONOBJECT
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

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
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

L_JSONCONF_TJSONCONFIG_$__CLEAR$stub:
.indirect_symbol _JSONCONF_TJSONCONFIG_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM$stub:
.indirect_symbol _CLASSES_TFILESTREAM_$__CREATE$ANSISTRING$WORD$$TFILESTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONPARSER_TJSONPARSER_$__CREATE$TSTREAM$BOOLEAN$$TJSONPARSER$stub:
.indirect_symbol _JSONPARSER_TJSONPARSER_$__CREATE$TSTREAM$BOOLEAN$$TJSONPARSER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONPARSER_TJSONPARSER_$__PARSE$$TJSONDATA$stub:
.indirect_symbol _JSONPARSER_TJSONPARSER_$__PARSE$$TJSONDATA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_do_as$stub:
.indirect_symbol fpc_do_as
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

LFPC_RAISEEXCEPTION$stub:
.indirect_symbol FPC_RAISEEXCEPTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__FREE$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__FREE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JSONCONF_TJSONCONFIG_$__RESETKEY$stub:
.indirect_symbol _JSONCONF_TJSONCONFIG_$__RESETKEY
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

L_JSONCONF_TJSONCONFIG_$__FINDPATH$WIDESTRING$BOOLEAN$$TJSONOBJECT$stub:
.indirect_symbol _JSONCONF_TJSONCONFIG_$__FINDPATH$WIDESTRING$BOOLEAN$$TJSONOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPJSON_TJSONOBJECT_$__GETNAMEOF$LONGINT$$ANSISTRING$stub:
.indirect_symbol _FPJSON_TJSONOBJECT_$__GETNAMEOF$LONGINT$$ANSISTRING
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
.globl	_$JSONCONF$_Ld10
_$JSONCONF$_Ld10:
	.short	0
	.long	_$JSONCONF$_Ld11
	.align 2
.globl	_$JSONCONF$_Ld11
_$JSONCONF$_Ld11:
	.short	0

.const_data
	.align 2
.globl	_INIT_JSONCONF_EJSONCONFIGERROR
_INIT_JSONCONF_EJSONCONFIGERROR:
	.byte	15,16
	.ascii	"EJSONConfigError"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_JSONCONF_EJSONCONFIGERROR
_RTTI_JSONCONF_EJSONCONFIGERROR:
	.byte	15,16
	.ascii	"EJSONConfigError"
	.long	_VMT_JSONCONF_EJSONCONFIGERROR
	.long	_RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"jsonConf"
	.short	0

.const_data
	.align 2
.globl	_INIT_JSONCONF_DEF2
_INIT_JSONCONF_DEF2:
	.byte	3
	.ascii	"\000"
	.byte	5
	.long	0,1,0
	.byte	10
	.ascii	"pfHasValue"
	.byte	13
	.ascii	"pfWriteAccess"
	.byte	8
	.ascii	"jsonConf"
	.byte	0

.const_data
	.align 2
.globl	_INIT_JSONCONF_TPATHFLAGS
_INIT_JSONCONF_TPATHFLAGS:
	.byte	5,10
	.ascii	"TPathFlags"
	.byte	5
	.long	_INIT_JSONCONF_DEF2

.const_data
	.align 2
.globl	_RTTI_JSONCONF_DEF2
_RTTI_JSONCONF_DEF2:
	.byte	3
	.ascii	"\000"
	.byte	5
	.long	0,1,0
	.byte	10
	.ascii	"pfHasValue"
	.byte	13
	.ascii	"pfWriteAccess"
	.byte	8
	.ascii	"jsonConf"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_JSONCONF_DEF2_s2o
_RTTI_JSONCONF_DEF2_s2o:
	.long	2,0
	.long	_RTTI_JSONCONF_DEF2+15
	.long	1
	.long	_RTTI_JSONCONF_DEF2+26

.const_data
	.align 2
.globl	_RTTI_JSONCONF_DEF2_o2s
_RTTI_JSONCONF_DEF2_o2s:
	.long	0
	.long	_RTTI_JSONCONF_DEF2+15
	.long	_RTTI_JSONCONF_DEF2+26

.const_data
	.align 2
.globl	_RTTI_JSONCONF_TPATHFLAGS
_RTTI_JSONCONF_TPATHFLAGS:
	.byte	5,10
	.ascii	"TPathFlags"
	.byte	5
	.long	_RTTI_JSONCONF_DEF2

.const_data
	.align 2
.globl	_INIT_JSONCONF_DEF104
_INIT_JSONCONF_DEF104:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_JSONCONF_DEF111
_INIT_JSONCONF_DEF111:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_WIDESTRING
	.long	258

.const_data
	.align 2
.globl	_$JSONCONF$_Ld13
_$JSONCONF$_Ld13:
	.short	0
	.long	_$JSONCONF$_Ld14
	.align 2
.globl	_$JSONCONF$_Ld14
_$JSONCONF$_Ld14:
	.short	0

.const_data
	.align 2
.globl	_INIT_JSONCONF_TJSONCONFIG
_INIT_JSONCONF_TJSONCONFIG:
	.byte	15,11
	.ascii	"TJSONConfig"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	52

.const_data
	.align 2
.globl	_RTTI_JSONCONF_TJSONCONFIG
_RTTI_JSONCONF_TJSONCONFIG:
	.byte	15,11
	.ascii	"TJSONConfig"
	.long	_VMT_JSONCONF_TJSONCONFIG
	.long	_RTTI_CLASSES_TCOMPONENT
	.short	3
	.byte	8
	.ascii	"jsonConf"
	.short	1
	.long	_RTTI_SYSTEM_ANSISTRING
	.long	52
	.long	_JSONCONF_TJSONCONFIG_$__SETFILENAME$ANSISTRING
	.long	1,0,-2147483648
	.short	2
	.byte	52,8
	.ascii	"Filename"
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
L_VMT_FPJSON_TJSONOBJECT$non_lazy_ptr:
.indirect_symbol _VMT_FPJSON_TJSONOBJECT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPJSON_TJSONNUMBER$non_lazy_ptr:
.indirect_symbol _VMT_FPJSON_TJSONNUMBER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPJSON_TJSONBOOLEAN$non_lazy_ptr:
.indirect_symbol _VMT_FPJSON_TJSONBOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPJSON_TJSONSTRING$non_lazy_ptr:
.indirect_symbol _VMT_FPJSON_TJSONSTRING
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPJSON_TJSONINTEGERNUMBER$non_lazy_ptr:
.indirect_symbol _VMT_FPJSON_TJSONINTEGERNUMBER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPJSON_TJSONINT64NUMBER$non_lazy_ptr:
.indirect_symbol _VMT_FPJSON_TJSONINT64NUMBER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPJSON_TJSONFLOATNUMBER$non_lazy_ptr:
.indirect_symbol _VMT_FPJSON_TJSONFLOATNUMBER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JSONCONF$_Ld1$non_lazy_ptr:
.indirect_symbol _$JSONCONF$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TFILESTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TFILESTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_JSONPARSER_TJSONPARSER$non_lazy_ptr:
.indirect_symbol _VMT_JSONPARSER_TJSONPARSER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_JSONCONF_EJSONCONFIGERROR$non_lazy_ptr:
.indirect_symbol _VMT_JSONCONF_EJSONCONFIGERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JSONCONF$_Ld3$non_lazy_ptr:
.indirect_symbol _$JSONCONF$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JSONCONF$_Ld5$non_lazy_ptr:
.indirect_symbol _$JSONCONF$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$JSONCONF$_Ld7$non_lazy_ptr:
.indirect_symbol _$JSONCONF$_Ld7
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_JSONCONF_START
_RESSTR_JSONCONF_START:
	.long	_$JSONCONF$_Ld15
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_JSONCONF_SWRONGROOTNAME
_RESSTR_JSONCONF_SWRONGROOTNAME:
	.long	_$JSONCONF$_Ld19
	.long	_$JSONCONF$_Ld17
	.long	_$JSONCONF$_Ld17
	.long	70696405

.data
	.align 2
.globl	_RESSTR_JSONCONF_END
_RESSTR_JSONCONF_END:
	.long	_RESSTR_JSONCONF_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

