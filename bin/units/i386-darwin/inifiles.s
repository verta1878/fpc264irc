# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_INIFILES_CHARTOBOOL$CHAR$$BOOLEAN
_INIFILES_CHARTOBOOL$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	movb	-4(%ebp),%al
	cmpb	$49,%al
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_INIFILES_BOOLTOCHAR$BOOLEAN$$CHAR
_INIFILES_BOOLTOCHAR$BOOLEAN$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj9
	jmp	Lj10
Lj9:
	movb	$49,-5(%ebp)
	jmp	Lj13
Lj10:
	movb	$48,-5(%ebp)
Lj13:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_INIFILES_ISCOMMENT$ANSISTRING$$BOOLEAN
_INIFILES_ISCOMMENT$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj17
Lj17:
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
	jne	Lj18
	movb	$0,-5(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj25
	movl	-4(%eax),%eax
Lj25:
	cmpl	$0,%eax
	jg	Lj23
	jmp	Lj24
Lj23:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-52(%ebp),%esi
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	L_TC_INIFILES_COMMENT$non_lazy_ptr-Lj17(%ebx),%eax
	movb	(%eax),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-56(%ebp),%edx
	movl	%esi,%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	seteb	-5(%ebp)
Lj24:
Lj18:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj19
	call	LFPC_RERAISE$stub
Lj19:
	movb	-5(%ebp),%al
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_INIFILES_THASHEDSTRINGLIST_$__DESTROY
_INIFILES_THASHEDSTRINGLIST_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj46
	jmp	Lj47
Lj46:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj47:
	movl	-8(%ebp),%eax
	leal	68(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	leal	72(%eax),%eax
	call	L_SYSUTILS_FREEANDNIL$formal$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TSTRINGLIST_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj60
	jmp	Lj59
Lj60:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj58
	jmp	Lj59
Lj58:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj59:
	leave
	ret

.text
	.align 4
.globl	_INIFILES_THASHEDSTRINGLIST_$__INDEXOF$ANSISTRING$$LONGINT
_INIFILES_THASHEDSTRINGLIST_$__INDEXOF$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	76(%eax),%al
	testb	%al,%al
	je	Lj65
	jmp	Lj66
Lj65:
	movl	-8(%ebp),%eax
	call	L_INIFILES_THASHEDSTRINGLIST_$__UPDATEVALUEHASH$stub
Lj66:
	movl	-4(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-272(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	call	L_CONTNRS_TFPHASHLIST_$__FINDINDEXOF$SHORTSTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj81
	jmp	Lj82
Lj81:
	movl	-8(%ebp),%eax
	movl	68(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__GET$LONGINT$$POINTER$stub
	decl	%eax
	movl	%eax,-12(%ebp)
	jmp	Lj89
Lj82:
	movl	$-1,-12(%ebp)
Lj89:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_INIFILES_THASHEDSTRINGLIST_$__INDEXOFNAME$ANSISTRING$$LONGINT
_INIFILES_THASHEDSTRINGLIST_$__INDEXOFNAME$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$280,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	77(%eax),%al
	testb	%al,%al
	je	Lj94
	jmp	Lj95
Lj94:
	movl	-8(%ebp),%eax
	call	L_INIFILES_THASHEDSTRINGLIST_$__UPDATENAMEHASH$stub
Lj95:
	movl	-4(%ebp),%ecx
	leal	-272(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-272(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	72(%eax),%eax
	call	L_CONTNRS_TFPHASHLIST_$__FINDINDEXOF$SHORTSTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj110
	jmp	Lj111
Lj110:
	movl	-8(%ebp),%eax
	movl	72(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CONTNRS_TFPHASHLIST_$__GET$LONGINT$$POINTER$stub
	decl	%eax
	movl	%eax,-12(%ebp)
	jmp	Lj118
Lj111:
	movl	$-1,-12(%ebp)
Lj118:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_INIFILES_THASHEDSTRINGLIST_$__CHANGED
_INIFILES_THASHEDSTRINGLIST_$__CHANGED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,76(%eax)
	movl	-4(%ebp),%eax
	movb	$0,77(%eax)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTRINGLIST_$__CHANGED$stub
	leave
	ret

.text
	.align 4
.globl	_INIFILES_THASHEDSTRINGLIST_$__UPDATEVALUEHASH
_INIFILES_THASHEDSTRINGLIST_$__UPDATEVALUEHASH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-320(%ebp)
	movl	%esi,-316(%ebp)
	movl	%edi,-312(%ebp)
	call	Lj130
Lj130:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	$0,-308(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj131
	movl	-4(%ebp),%eax
	cmpl	$0,68(%eax)
	jne	Lj135
	jmp	Lj134
Lj134:
	movl	L_VMT_CONTNRS_TFPHASHLIST$non_lazy_ptr-Lj130(%edi),%edx
	movl	$0,%eax
	call	L_CONTNRS_TFPHASHLIST_$__CREATE$$TFPHASHLIST$stub
	movl	-4(%ebp),%edx
	movl	%eax,68(%edx)
	jmp	Lj142
Lj135:
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	call	L_CONTNRS_TFPHASHLIST_$__CLEAR$stub
Lj142:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj146
	decl	-8(%ebp)
	.align 2
Lj147:
	incl	-8(%ebp)
	leal	-308(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-308(%ebp)
	leal	-308(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-308(%ebp),%ecx
	leal	-304(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-304(%ebp),%edx
	movl	-8(%ebp),%ecx
	incl	%ecx
	movl	-4(%ebp),%eax
	movl	68(%eax),%eax
	call	L_CONTNRS_TFPHASHLIST_$__ADD$SHORTSTRING$POINTER$$LONGINT$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj147
Lj146:
	movl	-4(%ebp),%eax
	movb	$1,76(%eax)
Lj131:
	call	LFPC_POPADDRSTACK$stub
	leal	-308(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-308(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj132
	call	LFPC_RERAISE$stub
Lj132:
	movl	-320(%ebp),%ebx
	movl	-316(%ebp),%esi
	movl	-312(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_INIFILES_THASHEDSTRINGLIST_$__UPDATENAMEHASH
_INIFILES_THASHEDSTRINGLIST_$__UPDATENAMEHASH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-316(%ebp)
	movl	%esi,-312(%ebp)
	call	Lj171
Lj171:
	popl	%esi
	movl	%eax,-4(%ebp)
	movl	$0,-308(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj172
	movl	-4(%ebp),%eax
	cmpl	$0,72(%eax)
	jne	Lj176
	jmp	Lj175
Lj175:
	movl	L_VMT_CONTNRS_TFPHASHLIST$non_lazy_ptr-Lj171(%esi),%edx
	movl	$0,%eax
	call	L_CONTNRS_TFPHASHLIST_$__CREATE$$TFPHASHLIST$stub
	movl	-4(%ebp),%edx
	movl	%eax,72(%edx)
	jmp	Lj183
Lj176:
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	call	L_CONTNRS_TFPHASHLIST_$__CLEAR$stub
Lj183:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj187
	decl	-8(%ebp)
	.align 2
Lj188:
	incl	-8(%ebp)
	leal	-308(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-308(%ebp)
	leal	-308(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTRINGS_$__GETNAME$LONGINT$$ANSISTRING$stub
	movl	-308(%ebp),%ecx
	leal	-304(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-304(%ebp),%edx
	movl	-8(%ebp),%ecx
	incl	%ecx
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	call	L_CONTNRS_TFPHASHLIST_$__ADD$SHORTSTRING$POINTER$$LONGINT$stub
	cmpl	-8(%ebp),%ebx
	jg	Lj188
Lj187:
	movl	-4(%ebp),%eax
	movb	$1,77(%eax)
Lj172:
	call	LFPC_POPADDRSTACK$stub
	leal	-308(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-308(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj173
	call	LFPC_RERAISE$stub
Lj173:
	movl	-316(%ebp),%ebx
	movl	-312(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILEKEY_$__CREATE$ANSISTRING$ANSISTRING$$TINIFILEKEY
_INIFILES_TINIFILEKEY_$__CREATE$ANSISTRING$ANSISTRING$$TINIFILEKEY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj213
	jmp	Lj214
Lj213:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj214:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj219
	jmp	Lj220
Lj219:
	jmp	Lj211
Lj220:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj223
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj227
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	4(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,4(%ebx)
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%ebx
	leal	8(%ebx),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,8(%ebx)
Lj227:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj228
	call	LFPC_RERAISE$stub
Lj228:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj236
	jmp	Lj235
Lj236:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj234
	jmp	Lj235
Lj234:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj235:
Lj223:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj225
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj240
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj241
	jmp	Lj242
Lj241:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj242:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj240:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj239
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj239:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj225
Lj225:
Lj211:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY
_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj253
	jmp	Lj252
Lj253:
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-4(%ebp),%eax
	jg	Lj251
	jmp	Lj252
Lj251:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
Lj252:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILEKEYLIST_$__KEYBYNAME$ANSISTRING$BOOLEAN$$TINIFILEKEY
_INIFILES_TINIFILEKEYLIST_$__KEYBYNAME$ANSISTRING$BOOLEAN$$TINIFILEKEY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj269
	movl	-4(%eax),%eax
Lj269:
	cmpl	$0,%eax
	jg	Lj268
	jmp	Lj267
Lj268:
	movl	-4(%ebp),%eax
	call	L_INIFILES_ISCOMMENT$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj266
	jmp	Lj267
Lj266:
	cmpb	$0,-8(%ebp)
	jne	Lj272
	jmp	Lj273
Lj272:
	movl	-12(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj275
	decl	-20(%ebp)
	.align 2
Lj276:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj279
	jmp	Lj280
Lj279:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	%eax,-16(%ebp)
	jmp	Lj275
Lj280:
	cmpl	-20(%ebp),%ebx
	jg	Lj276
Lj275:
	jmp	Lj295
Lj273:
	movl	-12(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj297
	decl	-20(%ebp)
	.align 2
Lj298:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	je	Lj301
	jmp	Lj302
Lj301:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	%eax,-16(%ebp)
	jmp	Lj297
Lj302:
	cmpl	-20(%ebp),%ebx
	jg	Lj298
Lj297:
Lj295:
Lj267:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILEKEYLIST_$__DESTROY
_INIFILES_TINIFILEKEYLIST_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj319
	jmp	Lj320
Lj319:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj320:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TLIST_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj331
	jmp	Lj330
Lj331:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj329
	jmp	Lj330
Lj329:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj330:
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILEKEYLIST_$__CLEAR
_INIFILES_TINIFILEKEYLIST_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jl	Lj337
	incl	-8(%ebp)
	.align 2
Lj338:
	decl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	$0,-8(%ebp)
	jg	Lj338
Lj337:
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__CLEAR$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILESECTION_$__EMPTY$$BOOLEAN
_INIFILES_TINIFILESECTION_$__EMPTY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	$1,-5(%ebp)
	movl	$0,-12(%ebp)
	jmp	Lj358
	.align 2
Lj357:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	4(%eax),%eax
	call	L_INIFILES_ISCOMMENT$ANSISTRING$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	incl	-12(%ebp)
Lj358:
	cmpb	$0,-5(%ebp)
	jne	Lj368
	jmp	Lj359
Lj368:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-12(%ebp),%eax
	jg	Lj357
	jmp	Lj359
Lj359:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILESECTION_$__CREATE$ANSISTRING$$TINIFILESECTION
_INIFILES_TINIFILESECTION_$__CREATE$ANSISTRING$$TINIFILESECTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj372
Lj372:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj373
	jmp	Lj374
Lj373:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj374:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj379
	jmp	Lj380
Lj379:
	jmp	Lj371
Lj380:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj383
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj387
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	4(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,4(%esi)
	movl	L_VMT_INIFILES_TINIFILEKEYLIST$non_lazy_ptr-Lj372(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
Lj387:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj388
	call	LFPC_RERAISE$stub
Lj388:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj400
	jmp	Lj399
Lj400:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj398
	jmp	Lj399
Lj398:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj399:
Lj383:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj385
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj404
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj405
	jmp	Lj406
Lj405:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj406:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj404:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj403
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj403:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj385
Lj385:
Lj371:
	movl	-12(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILESECTION_$__DESTROY
_INIFILES_TINIFILESECTION_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj413
	jmp	Lj414
Lj413:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj414:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj421
	jmp	Lj420
Lj421:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj419
	jmp	Lj420
Lj419:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj420:
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILESECTIONLIST_$__GETITEM$LONGINT$$TINIFILESECTION
_INIFILES_TINIFILESECTIONLIST_$__GETITEM$LONGINT$$TINIFILESECTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj430
	jmp	Lj429
Lj430:
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	cmpl	-4(%ebp),%eax
	jg	Lj428
	jmp	Lj429
Lj428:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub
	movl	%eax,-12(%ebp)
Lj429:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILESECTIONLIST_$__SECTIONBYNAME$ANSISTRING$BOOLEAN$$TINIFILESECTION
_INIFILES_TINIFILESECTIONLIST_$__SECTIONBYNAME$ANSISTRING$BOOLEAN$$TINIFILESECTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj446
	movl	-4(%eax),%eax
Lj446:
	cmpl	$0,%eax
	jg	Lj445
	jmp	Lj444
Lj445:
	movl	-4(%ebp),%eax
	call	L_INIFILES_ISCOMMENT$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj443
	jmp	Lj444
Lj443:
	cmpb	$0,-8(%ebp)
	jne	Lj449
	jmp	Lj450
Lj449:
	movl	-12(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj452
	decl	-20(%ebp)
	.align 2
Lj453:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_INIFILES_TINIFILESECTIONLIST_$__GETITEM$LONGINT$$TINIFILESECTION$stub
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj456
	jmp	Lj457
Lj456:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_INIFILES_TINIFILESECTIONLIST_$__GETITEM$LONGINT$$TINIFILESECTION$stub
	movl	%eax,-16(%ebp)
	jmp	Lj452
Lj457:
	cmpl	-20(%ebp),%ebx
	jg	Lj453
Lj452:
	jmp	Lj472
Lj450:
	movl	-12(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj474
	decl	-20(%ebp)
	.align 2
Lj475:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_INIFILES_TINIFILESECTIONLIST_$__GETITEM$LONGINT$$TINIFILESECTION$stub
	movl	4(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT$stub
	testl	%eax,%eax
	je	Lj478
	jmp	Lj479
Lj478:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_INIFILES_TINIFILESECTIONLIST_$__GETITEM$LONGINT$$TINIFILESECTION$stub
	movl	%eax,-16(%ebp)
	jmp	Lj474
Lj479:
	cmpl	-20(%ebp),%ebx
	jg	Lj475
Lj474:
Lj472:
Lj444:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILESECTIONLIST_$__DESTROY
_INIFILES_TINIFILESECTIONLIST_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj496
	jmp	Lj497
Lj496:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj497:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TLIST_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj508
	jmp	Lj507
Lj508:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj506
	jmp	Lj507
Lj506:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj507:
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILESECTIONLIST_$__CLEAR
_INIFILES_TINIFILESECTIONLIST_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jl	Lj514
	incl	-8(%ebp)
	.align 2
Lj515:
	decl	-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INIFILES_TINIFILESECTIONLIST_$__GETITEM$LONGINT$$TINIFILESECTION$stub
	movl	%eax,%ebx
	movl	%ebx,%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	cmpl	$0,-8(%ebp)
	jg	Lj515
Lj514:
	movl	-4(%ebp),%eax
	call	L_CLASSES_TLIST_$__CLEAR$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__CREATE$ANSISTRING$BOOLEAN$$TCUSTOMINIFILE
_INIFILES_TCUSTOMINIFILE_$__CREATE$ANSISTRING$BOOLEAN$$TCUSTOMINIFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	call	Lj529
Lj529:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj530
	jmp	Lj531
Lj530:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj531:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj536
	jmp	Lj537
Lj536:
	jmp	Lj528
Lj537:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj540
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj544
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	4(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,4(%esi)
	movl	L_VMT_INIFILES_TINIFILESECTIONLIST$non_lazy_ptr-Lj529(%ebx),%edx
	movl	$0,%eax
	call	L_CLASSES_TLIST_$__CREATE$$TLIST$stub
	movl	-12(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movb	8(%ebp),%dl
	movb	%dl,12(%eax)
Lj544:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj545
	call	LFPC_RERAISE$stub
Lj545:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj559
	jmp	Lj558
Lj559:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj557
	jmp	Lj558
Lj557:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj558:
Lj540:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj542
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj563
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj564
	jmp	Lj565
Lj564:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj565:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj563:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj562
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj562:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj542
Lj542:
Lj528:
	movl	-12(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__DESTROY
_INIFILES_TCUSTOMINIFILE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj572
	jmp	Lj573
Lj572:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj573:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj584
	jmp	Lj583
Lj584:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj582
	jmp	Lj583
Lj582:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj583:
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__SECTIONEXISTS$ANSISTRING$$BOOLEAN
_INIFILES_TCUSTOMINIFILE_$__SECTIONEXISTS$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	13(%eax),%cl
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_INIFILES_TINIFILESECTIONLIST_$__SECTIONBYNAME$ANSISTRING$BOOLEAN$$TINIFILESECTION$stub
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jne	Lj599
	jmp	Lj598
Lj599:
	movl	-16(%ebp),%eax
	call	L_INIFILES_TINIFILESECTION_$__EMPTY$$BOOLEAN$stub
	testb	%al,%al
	je	Lj597
	jmp	Lj598
Lj597:
	movb	$1,-9(%ebp)
	jmp	Lj602
Lj598:
	movb	$0,-9(%ebp)
Lj602:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__READINTEGER$ANSISTRING$ANSISTRING$LONGINT$$LONGINT
_INIFILES_TCUSTOMINIFILE_$__READINTEGER$ANSISTRING$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj605
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	$0,4(%esp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movl	-60(%ebp),%eax
	movl	8(%ebp),%edx
	call	L_SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
Lj605:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj606
	call	LFPC_RERAISE$stub
Lj606:
	movl	-16(%ebp),%eax
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__WRITEINTEGER$ANSISTRING$ANSISTRING$LONGINT
_INIFILES_TCUSTOMINIFILE_$__WRITEINTEGER$ANSISTRING$ANSISTRING$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj626
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	8(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
Lj626:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj627
	call	LFPC_RERAISE$stub
Lj627:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__READINT64$ANSISTRING$ANSISTRING$INT64$$LONGINT
_INIFILES_TCUSTOMINIFILE_$__READINT64$ANSISTRING$ANSISTRING$INT64$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj643
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	$0,4(%esp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movl	-60(%ebp),%eax
	movl	12(%ebp),%edx
	movl	%edx,4(%esp)
	movl	8(%ebp),%edx
	movl	%edx,(%esp)
	call	L_SYSUTILS_STRTOINT64DEF$ANSISTRING$INT64$$INT64$stub
	movl	%eax,-16(%ebp)
Lj643:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj644
	call	LFPC_RERAISE$stub
Lj644:
	movl	-16(%ebp),%eax
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__WRITEINT64$ANSISTRING$ANSISTRING$INT64
_INIFILES_TCUSTOMINIFILE_$__WRITEINT64$ANSISTRING$ANSISTRING$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj664
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	leal	-56(%ebp),%eax
	call	L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
Lj664:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj665
	call	LFPC_RERAISE$stub
Lj665:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__READBOOL$ANSISTRING$ANSISTRING$BOOLEAN$$BOOLEAN
_INIFILES_TCUSTOMINIFILE_$__READBOOL$ANSISTRING$ANSISTRING$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj681
	movb	8(%ebp),%al
	movb	%al,-13(%ebp)
	movl	$0,4(%esp)
	leal	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj698
	movl	-4(%eax),%eax
Lj698:
	cmpl	$0,%eax
	jg	Lj696
	jmp	Lj697
Lj696:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	call	L_INIFILES_CHARTOBOOL$CHAR$$BOOLEAN$stub
	movb	%al,-13(%ebp)
Lj697:
Lj681:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj682
	call	LFPC_RERAISE$stub
Lj682:
	movb	-13(%ebp),%al
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__WRITEBOOL$ANSISTRING$ANSISTRING$BOOLEAN
_INIFILES_TCUSTOMINIFILE_$__WRITEBOOL$ANSISTRING$ANSISTRING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj711
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movb	8(%ebp),%al
	call	L_INIFILES_BOOLTOCHAR$BOOLEAN$$CHAR$stub
	leal	-56(%ebp),%edx
	call	Lfpc_char_to_ansistr$stub
	movl	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
Lj711:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj712
	call	LFPC_RERAISE$stub
Lj712:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__READDATE$ANSISTRING$ANSISTRING$TDATETIME$$TDATETIME
_INIFILES_TCUSTOMINIFILE_$__READDATE$ANSISTRING$ANSISTRING$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
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
	jne	Lj730
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	$0,4(%esp)
	leal	-68(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-64(%ebp)
	leal	-20(%ebp),%edx
	movl	-64(%ebp),%eax
	movb	$0,%cl
	call	L_SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$CHAR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj745
	jmp	Lj746
Lj745:
	movl	8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj746:
Lj730:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj731
	call	LFPC_RERAISE$stub
Lj731:
	fldl	-20(%ebp)
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__READDATETIME$ANSISTRING$ANSISTRING$TDATETIME$$TDATETIME
_INIFILES_TCUSTOMINIFILE_$__READDATETIME$ANSISTRING$ANSISTRING$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
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
	jne	Lj757
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	$0,4(%esp)
	leal	-68(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-64(%ebp)
	leal	-20(%ebp),%edx
	movl	-64(%ebp),%eax
	call	L_SYSUTILS_TRYSTRTODATETIME$ANSISTRING$TDATETIME$$BOOLEAN$stub
	testb	%al,%al
	je	Lj772
	jmp	Lj773
Lj772:
	movl	8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj773:
Lj757:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj758
	call	LFPC_RERAISE$stub
Lj758:
	fldl	-20(%ebp)
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__READFLOAT$ANSISTRING$ANSISTRING$DOUBLE$$DOUBLE
_INIFILES_TCUSTOMINIFILE_$__READFLOAT$ANSISTRING$ANSISTRING$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj782
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	$0,4(%esp)
	leal	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movl	-64(%ebp),%eax
	fldl	8(%ebp)
	fstpt	(%esp)
	call	L_SYSUTILS_STRTOFLOATDEF$ANSISTRING$EXTENDED$$EXTENDED$stub
	fstpl	-20(%ebp)
Lj782:
	call	LFPC_POPADDRSTACK$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj783
	call	LFPC_RERAISE$stub
Lj783:
	fldl	-20(%ebp)
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__READTIME$ANSISTRING$ANSISTRING$TDATETIME$$TDATETIME
_INIFILES_TCUSTOMINIFILE_$__READTIME$ANSISTRING$ANSISTRING$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-72(%ebp)
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
	jne	Lj803
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	$0,4(%esp)
	leal	-68(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	movl	-68(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-68(%ebp),%eax
	movl	%eax,-64(%ebp)
	leal	-20(%ebp),%edx
	movl	-64(%ebp),%eax
	movb	$0,%cl
	call	L_SYSUTILS_TRYSTRTOTIME$ANSISTRING$TDATETIME$CHAR$$BOOLEAN$stub
	testb	%al,%al
	je	Lj818
	jmp	Lj819
Lj818:
	movl	8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj819:
Lj803:
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj804
	call	LFPC_RERAISE$stub
Lj804:
	fldl	-20(%ebp)
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__WRITEDATE$ANSISTRING$ANSISTRING$TDATETIME
_INIFILES_TCUSTOMINIFILE_$__WRITEDATE$ANSISTRING$ANSISTRING$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj830
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-56(%ebp),%eax
	call	L_SYSUTILS_DATETOSTR$TDATETIME$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
Lj830:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj831
	call	LFPC_RERAISE$stub
Lj831:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__WRITEDATETIME$ANSISTRING$ANSISTRING$TDATETIME
_INIFILES_TCUSTOMINIFILE_$__WRITEDATETIME$ANSISTRING$ANSISTRING$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj847
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-56(%ebp),%eax
	call	L_SYSUTILS_DATETIMETOSTR$TDATETIME$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
Lj847:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj848
	call	LFPC_RERAISE$stub
Lj848:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__WRITEFLOAT$ANSISTRING$ANSISTRING$DOUBLE
_INIFILES_TCUSTOMINIFILE_$__WRITEFLOAT$ANSISTRING$ANSISTRING$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj864
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-56(%ebp),%eax
	call	L_SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
Lj864:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj865
	call	LFPC_RERAISE$stub
Lj865:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__WRITETIME$ANSISTRING$ANSISTRING$TDATETIME
_INIFILES_TCUSTOMINIFILE_$__WRITETIME$ANSISTRING$ANSISTRING$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj881
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-56(%ebp),%eax
	call	L_SYSUTILS_TIMETOSTR$TDATETIME$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
Lj881:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj882
	call	LFPC_RERAISE$stub
Lj882:
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__VALUEEXISTS$ANSISTRING$ANSISTRING$$BOOLEAN
_INIFILES_TCUSTOMINIFILE_$__VALUEEXISTS$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movb	13(%eax),%cl
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_INIFILES_TINIFILESECTIONLIST_$__SECTIONBYNAME$ANSISTRING$BOOLEAN$$TINIFILESECTION$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj908
	jmp	Lj909
Lj908:
	movl	-12(%ebp),%eax
	movb	13(%eax),%cl
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_INIFILES_TINIFILEKEYLIST_$__KEYBYNAME$ANSISTRING$BOOLEAN$$TINIFILEKEY$stub
	testl	%eax,%eax
	setneb	-13(%ebp)
Lj909:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__READBINARYSTREAM$ANSISTRING$ANSISTRING$TSTREAM$$LONGINT
_INIFILES_TCUSTOMINIFILE_$__READBINARYSTREAM$ANSISTRING$ANSISTRING$TSTREAM$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-140(%ebp)
	movl	%esi,-136(%ebp)
	call	Lj919
Lj919:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-24(%ebp)
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj920
	movl	$0,4(%esp)
	leal	-24(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*108(%ebx)
	leal	-40(%ebp),%eax
	movl	$3,%ecx
	movl	$3,%edx
	call	Lfpc_shortstr_setlength$stub
	movb	$36,-39(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj943
	movl	-4(%eax),%eax
Lj943:
	movl	%eax,%edx
	sarl	$31,%edx
	andl	$1,%edx
	addl	%edx,%eax
	sarl	$1,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj944
	jmp	Lj945
Lj944:
	movl	-16(%ebp),%edx
	leal	-32(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	leal	-104(%ebp),%ecx
	leal	-128(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-132(%ebp)
	testl	%eax,%eax
	jne	Lj950
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj956
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj919(%esi),%edx
	movl	%edx,%eax
Lj956:
	movl	%eax,-36(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-16(%ebp),%ebx
	movl	$1,-44(%ebp)
	cmpl	-44(%ebp),%ebx
	jl	Lj960
	decl	-44(%ebp)
	.align 2
Lj961:
	incl	-44(%ebp)
	movl	-36(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-38(%ebp)
	movl	-36(%ebp),%eax
	movb	1(%eax),%al
	movb	%al,-37(%ebp)
	leal	-52(%ebp),%edx
	leal	-40(%ebp),%eax
	call	Lfpc_val_uint_shortstr$stub
	movl	-28(%ebp),%edx
	movb	%al,(%edx)
	addl	$2,-36(%ebp)
	incl	-28(%ebp)
	cmpl	-44(%ebp),%ebx
	jg	Lj961
Lj960:
	movl	-32(%ebp),%edx
	movl	-16(%ebp),%ecx
	movl	8(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
Lj950:
	call	LFPC_POPADDRSTACK$stub
	movl	-32(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-132(%ebp),%eax
	testl	%eax,%eax
	je	Lj951
	decl	%eax
	testl	%eax,%eax
	je	Lj952
Lj952:
	call	LFPC_RERAISE$stub
Lj951:
Lj945:
Lj920:
	call	LFPC_POPADDRSTACK$stub
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj921
	call	LFPC_RERAISE$stub
Lj921:
	movl	-16(%ebp),%eax
	movl	-140(%ebp),%ebx
	movl	-136(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TCUSTOMINIFILE_$__WRITEBINARYSTREAM$ANSISTRING$ANSISTRING$TSTREAM
_INIFILES_TCUSTOMINIFILE_$__WRITEBINARYSTREAM$ANSISTRING$ANSISTRING$TSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$392,%esp
	movl	%ebx,-380(%ebp)
	movl	%esi,-376(%ebp)
	call	Lj987
Lj987:
	popl	%esi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-20(%ebp)
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-76(%ebp)
	testl	%eax,%eax
	jne	Lj988
	movl	L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr-Lj987(%esi),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	leal	-88(%ebp),%ecx
	leal	-112(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-116(%ebp)
	testl	%eax,%eax
	jne	Lj997
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%edx),%edx
	call	*112(%edx)
	movl	%edx,%ecx
	movl	%eax,%edx
	shldl	$1,%edx,%ecx
	shll	$1,%edx
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_setlength$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1015
	movl	-4(%eax),%eax
Lj1015:
	cmpl	$0,%eax
	jg	Lj1013
	jmp	Lj1014
Lj1013:
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1020
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj987(%esi),%edx
	movl	%edx,%eax
Lj1020:
	movl	%eax,-28(%ebp)
	movl	-20(%ebp),%ebx
	testl	%ebx,%ebx
	je	Lj1024
	movl	-4(%ebx),%ebx
Lj1024:
	movl	%ebx,%eax
	sarl	$31,%eax
	andl	$1,%eax
	addl	%eax,%ebx
	sarl	$1,%ebx
	movl	$1,-36(%ebp)
	cmpl	-36(%ebp),%ebx
	jl	Lj1022
	decl	-36(%ebp)
	.align 2
Lj1023:
	incl	-36(%ebp)
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	leal	-372(%ebp),%ecx
	movb	$2,%dl
	call	L_SYSTEM_HEXSTR$LONGINT$BYTE$$SHORTSTRING$stub
	leal	-372(%ebp),%ecx
	leal	-31(%ebp),%eax
	movl	$2,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	movl	-28(%ebp),%edx
	movb	-30(%ebp),%al
	movb	%al,(%edx)
	movl	-28(%ebp),%edx
	movb	-29(%ebp),%al
	movb	%al,1(%edx)
	addl	$2,-28(%ebp)
	incl	-24(%ebp)
	cmpl	-36(%ebp),%ebx
	jg	Lj1023
Lj1022:
Lj1014:
	movl	-20(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*112(%ebx)
Lj997:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-116(%ebp),%eax
	testl	%eax,%eax
	je	Lj998
	decl	%eax
	testl	%eax,%eax
	je	Lj999
Lj999:
	call	LFPC_RERAISE$stub
Lj998:
Lj988:
	call	LFPC_POPADDRSTACK$stub
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj989
	call	LFPC_RERAISE$stub
Lj989:
	movl	-380(%ebp),%ebx
	movl	-376(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILE_$__CREATE$ANSISTRING$BOOLEAN$$TINIFILE
_INIFILES_TINIFILE_$__CREATE$ANSISTRING$BOOLEAN$$TINIFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-140(%ebp)
	call	Lj1058
Lj1058:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1059
	jmp	Lj1060
Lj1059:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1060:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1065
	jmp	Lj1066
Lj1065:
	jmp	Lj1057
Lj1066:
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1069
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj1073
	movl	-12(%ebp),%edx
	movl	L_VMT_INIFILES_TMEMINIFILE$non_lazy_ptr-Lj1058(%ebx),%eax
	call	Lfpc_do_is$stub
	testb	%al,%al
	je	Lj1076
	jmp	Lj1077
Lj1076:
	movl	-12(%ebp),%eax
	movb	$1,14(%eax)
Lj1077:
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_INIFILES_TCUSTOMINIFILE_$__CREATE$ANSISTRING$BOOLEAN$$TCUSTOMINIFILE$stub
	movl	-12(%ebp),%eax
	movl	$0,16(%eax)
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj1058(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	leal	-108(%ebp),%ecx
	leal	-132(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-136(%ebp)
	testl	%eax,%eax
	jne	Lj1100
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	call	L_SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1104
	jmp	Lj1105
Lj1104:
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*216(%ecx)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_INIFILES_TINIFILE_$__FILLSECTIONLIST$TSTRINGS$stub
Lj1105:
Lj1100:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-136(%ebp),%eax
	testl	%eax,%eax
	je	Lj1101
	decl	%eax
	testl	%eax,%eax
	je	Lj1102
Lj1102:
	call	LFPC_RERAISE$stub
Lj1101:
Lj1073:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj1074
	call	LFPC_RERAISE$stub
Lj1074:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1120
	jmp	Lj1119
Lj1120:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1118
	jmp	Lj1119
Lj1118:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1119:
Lj1069:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1071
	leal	-68(%ebp),%ecx
	leal	-136(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj1124
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1125
	jmp	Lj1126
Lj1125:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1126:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1124:
	call	LFPC_POPADDRSTACK$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj1123
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1123:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1071
Lj1071:
Lj1057:
	movl	-12(%ebp),%eax
	movl	-140(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILE_$__CREATE$TSTREAM$BOOLEAN$$TINIFILE
_INIFILES_TINIFILE_$__CREATE$TSTREAM$BOOLEAN$$TINIFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-140(%ebp)
	call	Lj1132
Lj1132:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj1133
	jmp	Lj1134
Lj1133:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj1134:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1139
	jmp	Lj1140
Lj1139:
	jmp	Lj1131
Lj1140:
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj1143
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj1147
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	movl	$0,%edx
	call	L_INIFILES_TCUSTOMINIFILE_$__CREATE$ANSISTRING$BOOLEAN$$TCUSTOMINIFILE$stub
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	%edx,16(%eax)
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj1132(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	leal	-108(%ebp),%ecx
	leal	-132(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-136(%ebp)
	testl	%eax,%eax
	jne	Lj1166
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*220(%ecx)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_INIFILES_TINIFILE_$__FILLSECTIONLIST$TSTRINGS$stub
Lj1166:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-136(%ebp),%eax
	testl	%eax,%eax
	je	Lj1167
	decl	%eax
	testl	%eax,%eax
	je	Lj1168
Lj1168:
	call	LFPC_RERAISE$stub
Lj1167:
Lj1147:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj1148
	call	LFPC_RERAISE$stub
Lj1148:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1182
	jmp	Lj1181
Lj1182:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1180
	jmp	Lj1181
Lj1180:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj1181:
Lj1143:
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj1145
	leal	-68(%ebp),%ecx
	leal	-136(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj1186
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1187
	jmp	Lj1188
Lj1187:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj1188:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj1186:
	call	LFPC_POPADDRSTACK$stub
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj1185
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj1185:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1145
Lj1145:
Lj1131:
	movl	-12(%ebp),%eax
	movl	-140(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILE_$__DESTROY
_INIFILES_TINIFILE_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1195
	jmp	Lj1196
Lj1195:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj1196:
	movl	-8(%ebp),%eax
	cmpb	$0,21(%eax)
	jne	Lj1201
	jmp	Lj1200
Lj1201:
	movl	-8(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj1199
	jmp	Lj1200
Lj1199:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj1204
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*200(%edx)
Lj1204:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj1206
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj1206
Lj1206:
Lj1200:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_INIFILES_TCUSTOMINIFILE_$__DESTROY$stub
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1216
	jmp	Lj1215
Lj1216:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1214
	jmp	Lj1215
Lj1214:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj1215:
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILE_$__FILLSECTIONLIST$TSTRINGS
_INIFILES_TINIFILE_$__FILLSECTIONLIST$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%edi,-84(%ebp)
	call	Lj1220
Lj1220:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-80(%ebp)
	movl	$0,-76(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-72(%ebp)
	testl	%eax,%eax
	jne	Lj1223
	movl	$0,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	movl	-8(%ebp),%eax
	cmpb	$0,12(%eax)
	jne	Lj1230
	jmp	Lj1231
Lj1230:
	movl	%ebp,%eax
	call	L_INIFILES_TINIFILE_$_FILLSECTIONLIST$TSTRINGS_REMOVEBACKSLASHES$stub
Lj1231:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1235
	decl	-12(%ebp)
	.align 2
Lj1236:
	incl	-12(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edi
	movl	(%edi),%edi
	call	*120(%edi)
	movl	-76(%ebp),%eax
	leal	-20(%ebp),%edx
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1251
	movl	-4(%eax),%eax
Lj1251:
	cmpl	$0,%eax
	jg	Lj1249
	jmp	Lj1250
Lj1249:
	movl	-20(%ebp),%eax
	call	L_INIFILES_ISCOMMENT$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1254
	jmp	Lj1253
Lj1254:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj1252
	jmp	Lj1253
Lj1252:
	movl	-20(%ebp),%ecx
	movl	L_VMT_INIFILES_TINIFILESECTION$non_lazy_ptr-Lj1220(%esi),%eax
	movl	$0,%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	L_INIFILES_TINIFILESECTION_$__CREATE$ANSISTRING$$TINIFILESECTION$stub
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-32(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	jmp	Lj1234
Lj1253:
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-76(%ebp),%edi
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	L_TC_INIFILES_BRACKETS$non_lazy_ptr-Lj1220(%esi),%eax
	movb	(%eax),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-80(%ebp),%edx
	movl	%edi,%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1271
	jmp	Lj1270
Lj1271:
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%edx
	testl	%edx,%edx
	je	Lj1294
	movl	-4(%edx),%edx
Lj1294:
	movl	-20(%ebp),%eax
	movl	$1,%ecx
	call	Lfpc_ansistr_copy$stub
	movl	-80(%ebp),%edi
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	L_TC_INIFILES_BRACKETS$non_lazy_ptr-Lj1220(%esi),%eax
	movb	1(%eax),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-76(%ebp),%edx
	movl	%edi,%eax
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj1269
	jmp	Lj1270
Lj1269:
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj1313
	movl	-4(%ecx),%ecx
Lj1313:
	subl	$2,%ecx
	movl	-20(%ebp),%eax
	movl	$2,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-80(%ebp),%ecx
	movl	L_VMT_INIFILES_TINIFILESECTION$non_lazy_ptr-Lj1220(%esi),%eax
	movl	$0,%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	L_INIFILES_TINIFILESECTION_$__CREATE$ANSISTRING$$TINIFILESECTION$stub
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-32(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
	jmp	Lj1326
Lj1270:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1327
	jmp	Lj1328
Lj1327:
	movl	-20(%ebp),%eax
	call	L_INIFILES_ISCOMMENT$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1329
	jmp	Lj1330
Lj1329:
	movl	-20(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-28(%ebp)
	jmp	Lj1337
Lj1330:
	movl	-20(%ebp),%edx
	movl	L_TC_INIFILES_SEPARATOR$non_lazy_ptr-Lj1220(%esi),%eax
	movb	(%eax),%al
	call	L_SYSTEM_POS$CHAR$ANSISTRING$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1344
	jmp	Lj1345
Lj1344:
	leal	-24(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-24(%ebp)
	movl	-20(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-28(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj1350
Lj1345:
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,(%esp)
	movl	-16(%ebp),%ecx
	decl	%ecx
	movl	-20(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-80(%ebp),%eax
	leal	-24(%ebp),%edx
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%eax
	movl	%eax,(%esp)
	movl	-20(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj1369
	movl	-4(%ecx),%ecx
Lj1369:
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	movl	-16(%ebp),%edx
	incl	%edx
	movl	-20(%ebp),%eax
	call	Lfpc_ansistr_copy$stub
	movl	-80(%ebp),%eax
	leal	-28(%ebp),%edx
	call	L_SYSUTILS_TRIM$ANSISTRING$$ANSISTRING$stub
Lj1350:
Lj1337:
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	movl	L_VMT_INIFILES_TINIFILEKEY$non_lazy_ptr-Lj1220(%esi),%edx
	movl	$0,%eax
	call	L_INIFILES_TINIFILEKEY_$__CREATE$ANSISTRING$ANSISTRING$$TINIFILEKEY$stub
	movl	%eax,%edx
	movl	-32(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
Lj1328:
Lj1326:
Lj1250:
Lj1234:
	cmpl	-12(%ebp),%ebx
	jg	Lj1236
Lj1235:
Lj1223:
	call	LFPC_POPADDRSTACK$stub
	leal	-80(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-80(%ebp)
	leal	-76(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-76(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-24(%ebp)
	leal	-28(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-28(%ebp)
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj1224
	call	LFPC_RERAISE$stub
Lj1224:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	movl	-84(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILE_$_FILLSECTIONLIST$TSTRINGS_REMOVEBACKSLASHES
_INIFILES_TINIFILE_$_FILLSECTIONLIST$TSTRINGS_REMOVEBACKSLASHES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-120(%ebp)
	movl	%esi,-116(%ebp)
	movl	%edi,-112(%ebp)
	call	Lj1222
Lj1222:
	popl	%edi
	movl	%eax,-4(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-108(%ebp)
	movl	$0,-104(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1406
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	call	L_CLASSES_TSTRINGS_$__BEGINUPDATE$stub
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj1411
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	subl	$2,%eax
	movl	%eax,-8(%ebp)
	cmpl	$0,-8(%ebp)
	jl	Lj1416
	incl	-8(%ebp)
	.align 2
Lj1417:
	decl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	-4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*120(%ebx)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1428
	movl	-4(%eax),%eax
Lj1428:
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	(%edx),%edx
	call	*128(%edx)
	decl	%eax
	cmpl	-8(%ebp),%eax
	jg	Lj1432
	jmp	Lj1430
Lj1432:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1431
	jmp	Lj1430
Lj1431:
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	-1(%eax,%edx,1),%dl
	movl	L_TC_INIFILES_LF_ESCAPE$non_lazy_ptr-Lj1222(%edi),%eax
	cmpb	(%eax),%dl
	je	Lj1429
	jmp	Lj1430
Lj1429:
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%ecx
	decl	%ecx
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-104(%ebp),%ebx
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	movl	-8(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	leal	-108(%ebp),%ecx
	movl	-4(%ebp),%esi
	movl	-4(%esi),%esi
	movl	(%esi),%esi
	call	*120(%esi)
	movl	-108(%ebp),%ecx
	leal	-16(%ebp),%eax
	movl	%ebx,%edx
	call	Lfpc_ansistr_concat$stub
	movl	-8(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%ecx
	movl	-4(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*188(%ecx)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%ebx
	movl	-4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*140(%ebx)
Lj1430:
	cmpl	$0,-8(%ebp)
	jg	Lj1417
Lj1416:
Lj1411:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	call	L_CLASSES_TSTRINGS_$__ENDUPDATE$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj1412
	decl	%eax
	testl	%eax,%eax
	je	Lj1413
Lj1413:
	call	LFPC_RERAISE$stub
Lj1412:
Lj1406:
	call	LFPC_POPADDRSTACK$stub
	leal	-108(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-108(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1407
	call	LFPC_RERAISE$stub
Lj1407:
	movl	-120(%ebp),%ebx
	movl	-116(%ebp),%esi
	movl	-112(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILE_$__READSTRING$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING
_INIFILES_TINIFILE_$__READSTRING$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	12(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	12(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-12(%ebp),%eax
	movb	13(%eax),%cl
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_INIFILES_TINIFILESECTIONLIST_$__SECTIONBYNAME$ANSISTRING$BOOLEAN$$TINIFILESECTION$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1485
	jmp	Lj1486
Lj1485:
	movl	-12(%ebp),%eax
	movb	13(%eax),%cl
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_INIFILES_TINIFILEKEYLIST_$__KEYBYNAME$ANSISTRING$BOOLEAN$$TINIFILEKEY$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1495
	jmp	Lj1496
Lj1495:
	movl	-12(%ebp),%eax
	cmpb	$0,14(%eax)
	jne	Lj1497
	jmp	Lj1498
Lj1497:
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj1501
	movl	-4(%eax),%eax
Lj1501:
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj1504
	jmp	Lj1503
Lj1504:
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movzbl	(%eax),%eax
	cmpl	$34,%eax
	je	Lj1506
	cmpl	$39,%eax
	je	Lj1506
Lj1506:
	je	Lj1505
	jmp	Lj1503
Lj1505:
	movl	-20(%ebp),%eax
	movl	8(%eax),%edx
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movb	-1(%edx,%ecx,1),%dl
	cmpb	(%eax),%dl
	je	Lj1502
	jmp	Lj1503
Lj1502:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%ecx
	subl	$2,%ecx
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	$2,%edx
	call	Lfpc_ansistr_copy$stub
	jmp	Lj1515
Lj1503:
	movl	-20(%ebp),%esi
	movl	8(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%esi),%eax
	movl	%eax,(%ebx)
Lj1515:
	jmp	Lj1518
Lj1498:
	movl	-20(%ebp),%esi
	movl	8(%esi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%esi),%eax
	movl	%eax,(%ebx)
Lj1518:
Lj1496:
Lj1486:
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILE_$__SETCACHEUPDATES$BOOLEAN
_INIFILES_TINIFILE_$__SETCACHEUPDATES$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj1526
	jmp	Lj1524
Lj1526:
	movb	-4(%ebp),%al
	testb	%al,%al
	je	Lj1525
	jmp	Lj1524
Lj1525:
	movl	-8(%ebp),%eax
	cmpb	$0,21(%eax)
	jne	Lj1523
	jmp	Lj1524
Lj1523:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*200(%edx)
Lj1524:
	movl	-8(%ebp),%eax
	movb	-4(%ebp),%dl
	movb	%dl,20(%eax)
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILE_$__WRITESTRING$ANSISTRING$ANSISTRING$ANSISTRING
_INIFILES_TINIFILE_$__WRITESTRING$ANSISTRING$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-32(%ebp)
	movl	%esi,-28(%ebp)
	movl	%edi,-24(%ebp)
	call	Lj1532
Lj1532:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1536
	movl	-4(%eax),%eax
Lj1536:
	cmpl	$0,%eax
	jg	Lj1535
	jmp	Lj1534
Lj1535:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1537
	movl	-4(%eax),%eax
Lj1537:
	cmpl	$0,%eax
	jg	Lj1533
	jmp	Lj1534
Lj1533:
	movl	-12(%ebp),%eax
	movb	13(%eax),%cl
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_INIFILES_TINIFILESECTIONLIST_$__SECTIONBYNAME$ANSISTRING$BOOLEAN$$TINIFILESECTION$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1546
	jmp	Lj1547
Lj1546:
	movl	-4(%ebp),%ecx
	movl	L_VMT_INIFILES_TINIFILESECTION$non_lazy_ptr-Lj1532(%ebx),%edx
	movl	$0,%eax
	call	L_INIFILES_TINIFILESECTION_$__CREATE$ANSISTRING$$TINIFILESECTION$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
Lj1547:
	movl	-16(%ebp),%eax
	movl	8(%eax),%esi
	movl	-12(%ebp),%eax
	movb	13(%eax),%cl
	movl	-8(%ebp),%edx
	movl	%esi,%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__KEYBYNAME$ANSISTRING$BOOLEAN$$TINIFILEKEY$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1570
	jmp	Lj1571
Lj1570:
	movl	8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-20(%ebp),%edi
	leal	8(%edi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%ebp),%eax
	movl	%eax,8(%edi)
	jmp	Lj1574
Lj1571:
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	L_VMT_INIFILES_TINIFILEKEY$non_lazy_ptr-Lj1532(%ebx),%eax
	movl	$0,%edi
	movl	%eax,%edx
	movl	%edi,%eax
	call	L_INIFILES_TINIFILEKEY_$__CREATE$ANSISTRING$ANSISTRING$$TINIFILEKEY$stub
	movl	%eax,%edx
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub
Lj1574:
Lj1534:
	movl	-12(%ebp),%eax
	call	L_INIFILES_TINIFILE_$__MAYBEUPDATEFILE$stub
	movl	-32(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	-24(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILE_$__READSECTION$ANSISTRING$TSTRINGS
_INIFILES_TINIFILE_$__READSECTION$ANSISTRING$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	L_CLASSES_TSTRINGS_$__BEGINUPDATE$stub
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1593
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	movl	-12(%ebp),%eax
	movb	13(%eax),%cl
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_INIFILES_TINIFILESECTIONLIST_$__SECTIONBYNAME$ANSISTRING$BOOLEAN$$TINIFILESECTION$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1607
	jmp	Lj1608
Lj1607:
	movl	-16(%ebp),%eax
	movl	8(%eax),%ebx
	movl	%ebx,%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%esi
	decl	%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj1612
	decl	-20(%ebp)
	.align 2
Lj1613:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	%ebx,%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	4(%eax),%eax
	call	L_INIFILES_ISCOMMENT$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1616
	jmp	Lj1617
Lj1616:
	movl	-20(%ebp),%edx
	movl	%ebx,%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj1617:
	cmpl	-20(%ebp),%esi
	jg	Lj1613
Lj1612:
Lj1608:
Lj1593:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	call	L_CLASSES_TSTRINGS_$__ENDUPDATE$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1594
	decl	%eax
	testl	%eax,%eax
	je	Lj1595
Lj1595:
	call	LFPC_RERAISE$stub
Lj1594:
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILE_$__READSECTIONRAW$ANSISTRING$TSTRINGS
_INIFILES_TINIFILE_$__READSECTIONRAW$ANSISTRING$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-132(%ebp)
	movl	%esi,-128(%ebp)
	movl	%edi,-124(%ebp)
	call	Lj1635
Lj1635:
	popl	%edi
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-120(%ebp)
	movl	$0,-104(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1636
	movl	-8(%ebp),%eax
	call	L_CLASSES_TSTRINGS_$__BEGINUPDATE$stub
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj1641
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	movl	-12(%ebp),%eax
	movb	13(%eax),%cl
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_INIFILES_TINIFILESECTIONLIST_$__SECTIONBYNAME$ANSISTRING$BOOLEAN$$TINIFILESECTION$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1655
	jmp	Lj1656
Lj1655:
	movl	-16(%ebp),%eax
	movl	8(%eax),%ebx
	movl	%ebx,%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj1660
	decl	-20(%ebp)
	.align 2
Lj1661:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movl	%ebx,%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	4(%eax),%eax
	call	L_INIFILES_ISCOMMENT$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1664
	jmp	Lj1665
Lj1664:
	movl	-20(%ebp),%edx
	movl	%ebx,%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj1672
	jmp	Lj1673
Lj1672:
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	movl	-20(%ebp),%edx
	movl	%ebx,%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	4(%eax),%eax
	movl	%eax,-116(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-120(%ebp),%edx
	movl	L_TC_INIFILES_SEPARATOR$non_lazy_ptr-Lj1635(%edi),%eax
	movb	(%eax),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-120(%ebp),%eax
	movl	%eax,-112(%ebp)
	movl	-20(%ebp),%edx
	movl	%ebx,%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	8(%eax),%eax
	movl	%eax,-108(%ebp)
	leal	-116(%ebp),%edx
	leal	-104(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-104(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	jmp	Lj1700
Lj1673:
	movl	-20(%ebp),%edx
	movl	%ebx,%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj1700:
Lj1665:
	cmpl	-20(%ebp),%esi
	jg	Lj1661
Lj1660:
Lj1656:
Lj1641:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	call	L_CLASSES_TSTRINGS_$__ENDUPDATE$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj1642
	decl	%eax
	testl	%eax,%eax
	je	Lj1643
Lj1643:
	call	LFPC_RERAISE$stub
Lj1642:
Lj1636:
	call	LFPC_POPADDRSTACK$stub
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1637
	call	LFPC_RERAISE$stub
Lj1637:
	movl	-132(%ebp),%ebx
	movl	-128(%ebp),%esi
	movl	-124(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILE_$__READSECTIONS$TSTRINGS
_INIFILES_TINIFILE_$__READSECTIONS$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTRINGS_$__BEGINUPDATE$stub
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj1715
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	movl	%eax,%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj1722
	decl	-12(%ebp)
	.align 2
Lj1723:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_INIFILES_TINIFILESECTIONLIST_$__GETITEM$LONGINT$$TINIFILESECTION$stub
	movl	4(%eax),%eax
	call	L_INIFILES_ISCOMMENT$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj1726
	jmp	Lj1727
Lj1726:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_INIFILES_TINIFILESECTIONLIST_$__GETITEM$LONGINT$$TINIFILESECTION$stub
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj1727:
	cmpl	-12(%ebp),%ebx
	jg	Lj1723
Lj1722:
Lj1715:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTRINGS_$__ENDUPDATE$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj1716
	decl	%eax
	testl	%eax,%eax
	je	Lj1717
Lj1717:
	call	LFPC_RERAISE$stub
Lj1716:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILE_$__READSECTIONVALUES$ANSISTRING$TSTRINGS
_INIFILES_TINIFILE_$__READSECTIONVALUES$ANSISTRING$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-140(%ebp)
	movl	%esi,-136(%ebp)
	movl	%edi,-132(%ebp)
	call	Lj1745
Lj1745:
	popl	-128(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-112(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
	testl	%eax,%eax
	jne	Lj1746
	movl	-8(%ebp),%eax
	call	L_CLASSES_TSTRINGS_$__BEGINUPDATE$stub
	leal	-80(%ebp),%ecx
	leal	-104(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-108(%ebp)
	testl	%eax,%eax
	jne	Lj1751
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*184(%edx)
	movl	-12(%ebp),%eax
	movb	13(%eax),%cl
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_INIFILES_TINIFILESECTIONLIST_$__SECTIONBYNAME$ANSISTRING$BOOLEAN$$TINIFILESECTION$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1765
	jmp	Lj1766
Lj1765:
	movl	-16(%ebp),%eax
	movl	8(%eax),%esi
	movl	%esi,%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj1770
	decl	-24(%ebp)
	.align 2
Lj1771:
	incl	-24(%ebp)
	movl	-24(%ebp),%edx
	movl	%esi,%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	%eax,%edi
	movl	8(%edi),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	8(%edi),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	cmpb	$0,14(%eax)
	jne	Lj1780
	jmp	Lj1781
Lj1780:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1784
	movl	-4(%eax),%eax
Lj1784:
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj1787
	jmp	Lj1786
Lj1787:
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$34,%eax
	je	Lj1789
	cmpl	$39,%eax
	je	Lj1789
Lj1789:
	je	Lj1788
	jmp	Lj1786
Lj1788:
	movl	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	-20(%ebp),%ecx
	movb	-1(%edx,%eax,1),%al
	cmpb	(%ecx),%al
	je	Lj1785
	jmp	Lj1786
Lj1785:
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%eax
	movl	%eax,(%esp)
	movl	-28(%ebp),%ecx
	subl	$2,%ecx
	movl	-20(%ebp),%eax
	movl	$2,%edx
	call	Lfpc_ansistr_copy$stub
	movl	-112(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-20(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-112(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj1786:
Lj1781:
	movl	-24(%ebp),%edx
	movl	%esi,%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	4(%eax),%eax
	testl	%eax,%eax
	jne	Lj1800
	jmp	Lj1801
Lj1800:
	movl	-24(%ebp),%edx
	movl	%esi,%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	4(%eax),%eax
	movl	%eax,-124(%ebp)
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%edx
	movl	-128(%ebp),%eax
	movl	L_TC_INIFILES_SEPARATOR$non_lazy_ptr-Lj1745(%eax),%ecx
	movb	(%ecx),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-112(%ebp),%eax
	movl	%eax,-120(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-116(%ebp)
	leal	-124(%ebp),%edx
	leal	-20(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
Lj1801:
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	cmpl	-24(%ebp),%ebx
	jg	Lj1771
Lj1770:
Lj1766:
Lj1751:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	call	L_CLASSES_TSTRINGS_$__ENDUPDATE$stub
	movl	-108(%ebp),%eax
	testl	%eax,%eax
	je	Lj1752
	decl	%eax
	testl	%eax,%eax
	je	Lj1753
Lj1753:
	call	LFPC_RERAISE$stub
Lj1752:
Lj1746:
	call	LFPC_POPADDRSTACK$stub
	leal	-112(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-112(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj1747
	call	LFPC_RERAISE$stub
Lj1747:
	movl	-140(%ebp),%ebx
	movl	-136(%ebp),%esi
	movl	-132(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILE_$__DELETESECTION$TINIFILESECTION
_INIFILES_TINIFILE_$__DELETESECTION$TINIFILESECTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT$stub
	movl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TLIST_$__DELETE$LONGINT$stub
	movl	-4(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILE_$__MAYBEDELETESECTION$TINIFILESECTION
_INIFILES_TINIFILE_$__MAYBEDELETESECTION$TINIFILESECTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_INIFILES_TINIFILESECTION_$__EMPTY$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1846
	jmp	Lj1847
Lj1846:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_INIFILES_TINIFILE_$__DELETESECTION$TINIFILESECTION$stub
Lj1847:
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILE_$__ERASESECTION$ANSISTRING
_INIFILES_TINIFILE_$__ERASESECTION$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movb	13(%eax),%cl
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_INIFILES_TINIFILESECTIONLIST_$__SECTIONBYNAME$ANSISTRING$BOOLEAN$$TINIFILESECTION$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1864
	jmp	Lj1865
Lj1864:
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_INIFILES_TINIFILE_$__DELETESECTION$TINIFILESECTION$stub
	movl	-8(%ebp),%eax
	call	L_INIFILES_TINIFILE_$__MAYBEUPDATEFILE$stub
Lj1865:
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILE_$__DELETEKEY$ANSISTRING$ANSISTRING
_INIFILES_TINIFILE_$__DELETEKEY$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movb	13(%eax),%cl
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	call	L_INIFILES_TINIFILESECTIONLIST_$__SECTIONBYNAME$ANSISTRING$BOOLEAN$$TINIFILESECTION$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1882
	jmp	Lj1883
Lj1882:
	movl	-12(%ebp),%eax
	movb	13(%eax),%cl
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	-8(%ebp),%edx
	call	L_INIFILES_TINIFILEKEYLIST_$__KEYBYNAME$ANSISTRING$BOOLEAN$$TINIFILEKEY$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1892
	jmp	Lj1893
Lj1892:
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	-20(%ebp),%edx
	call	L_CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT$stub
	movl	%eax,%edx
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TLIST_$__DELETE$LONGINT$stub
	movl	-20(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-12(%ebp),%eax
	call	L_INIFILES_TINIFILE_$__MAYBEUPDATEFILE$stub
Lj1893:
Lj1883:
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILE_$__UPDATEFILE
_INIFILES_TINIFILE_$__UPDATEFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$152,%esp
	movl	%ebx,-144(%ebp)
	movl	%esi,-140(%ebp)
	movl	%edi,-136(%ebp)
	call	Lj1907
Lj1907:
	popl	-132(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-124(%ebp)
	movl	$0,-120(%ebp)
	movl	$0,-104(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj1908
	movl	-132(%ebp),%eax
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj1907(%eax),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-8(%ebp)
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj1917
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,-128(%ebp)
	movl	$0,-12(%ebp)
	movl	-128(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj1922
	decl	-12(%ebp)
	.align 2
Lj1923:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_INIFILES_TINIFILESECTIONLIST_$__GETITEM$LONGINT$$TINIFILESECTION$stub
	movl	%eax,%edi
	movl	%edi,%esi
	movl	4(%esi),%eax
	call	L_INIFILES_ISCOMMENT$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1934
	jmp	Lj1935
Lj1934:
	movl	4(%esi),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	jmp	Lj1942
Lj1935:
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-120(%ebp),%edx
	movl	-132(%ebp),%eax
	movl	L_TC_INIFILES_BRACKETS$non_lazy_ptr-Lj1907(%eax),%ecx
	movb	(%ecx),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-120(%ebp),%eax
	movl	%eax,-116(%ebp)
	movl	4(%esi),%eax
	movl	%eax,-112(%ebp)
	leal	-124(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-124(%ebp)
	leal	-124(%ebp),%edx
	movl	-132(%ebp),%eax
	movl	L_TC_INIFILES_BRACKETS$non_lazy_ptr-Lj1907(%eax),%ecx
	movb	1(%ecx),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-124(%ebp),%eax
	movl	%eax,-108(%ebp)
	leal	-116(%ebp),%edx
	leal	-104(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-104(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj1942:
	movl	8(%esi),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj1962
	decl	-16(%ebp)
	.align 2
Lj1963:
	incl	-16(%ebp)
	movl	-16(%ebp),%edx
	movl	8(%esi),%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	4(%eax),%eax
	call	L_INIFILES_ISCOMMENT$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj1966
	jmp	Lj1967
Lj1966:
	movl	-16(%ebp),%edx
	movl	8(%esi),%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	jmp	Lj1982
Lj1967:
	leal	-124(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-124(%ebp)
	movl	-16(%ebp),%edx
	movl	8(%esi),%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	4(%eax),%eax
	movl	%eax,-116(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-120(%ebp),%edx
	movl	-132(%ebp),%ecx
	movl	L_TC_INIFILES_SEPARATOR$non_lazy_ptr-Lj1907(%ecx),%eax
	movb	(%eax),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-120(%ebp),%eax
	movl	%eax,-112(%ebp)
	movl	-16(%ebp),%edx
	movl	8(%esi),%eax
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	8(%eax),%eax
	movl	%eax,-108(%ebp)
	leal	-116(%ebp),%edx
	leal	-124(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-124(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj1982:
	cmpl	-16(%ebp),%ebx
	jg	Lj1963
Lj1962:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	cmpl	-12(%ebp),%eax
	jg	Lj2007
	jmp	Lj2006
Lj2007:
	movl	4(%esi),%eax
	call	L_INIFILES_ISCOMMENT$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2005
	jmp	Lj2006
Lj2005:
	movl	-8(%ebp),%eax
	movl	$0,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj2006:
	movl	-128(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj1923
Lj1922:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj2018
	movl	-4(%eax),%eax
Lj2018:
	cmpl	$0,%eax
	jg	Lj2016
	jmp	Lj2017
Lj2016:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	leal	-20(%ebp),%edx
	call	L_SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2023
	jmp	Lj2024
Lj2023:
	movl	-20(%ebp),%eax
	call	L_SYSUTILS_FORCEDIRECTORIES$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	je	Lj2025
	jmp	Lj2026
Lj2025:
	movl	$0,(%esp)
	movl	-20(%ebp),%eax
	movl	%eax,-108(%ebp)
	movl	$11,-112(%ebp)
	leal	-112(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-132(%ebp),%edx
	movl	L_RESSTR_INIFILES_SERRCOULDNOTCREATEPATH$non_lazy_ptr-Lj1907(%edx),%eax
	movl	4(%eax),%ecx
	movl	-132(%ebp),%eax
	movl	L_VMT_SYSUTILS_EINOUTERROR$non_lazy_ptr-Lj1907(%eax),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	movl	-132(%ebp),%ebx
	leal	La1-Lj1907(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj2026:
Lj2024:
	movl	-4(%ebp),%eax
	movl	4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*228(%ecx)
	jmp	Lj2043
Lj2017:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj2044
	jmp	Lj2045
Lj2044:
	movl	-4(%ebp),%eax
	movl	16(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*232(%ecx)
Lj2045:
Lj2043:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_INIFILES_TINIFILE_$__FILLSECTIONLIST$TSTRINGS$stub
	movl	-4(%ebp),%eax
	movb	$0,21(%eax)
Lj1917:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj1918
	decl	%eax
	testl	%eax,%eax
	je	Lj1919
Lj1919:
	call	LFPC_RERAISE$stub
Lj1918:
Lj1908:
	call	LFPC_POPADDRSTACK$stub
	leal	-124(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-124(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj1909
	call	LFPC_RERAISE$stub
Lj1909:
	movl	-144(%ebp),%ebx
	movl	-140(%ebp),%esi
	movl	-136(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TINIFILE_$__MAYBEUPDATEFILE
_INIFILES_TINIFILE_$__MAYBEUPDATEFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,20(%eax)
	jne	Lj2066
	jmp	Lj2067
Lj2066:
	movl	-4(%ebp),%eax
	movb	$1,21(%eax)
	jmp	Lj2070
Lj2067:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	call	*200(%edx)
Lj2070:
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TMEMINIFILE_$__CREATE$ANSISTRING$BOOLEAN$$TMEMINIFILE
_INIFILES_TMEMINIFILE_$__CREATE$ANSISTRING$BOOLEAN$$TMEMINIFILE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj2075
	jmp	Lj2076
Lj2075:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj2076:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj2081
	jmp	Lj2082
Lj2081:
	jmp	Lj2073
Lj2082:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj2085
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2089
	movb	8(%ebp),%al
	movb	%al,(%esp)
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_INIFILES_TINIFILE_$__CREATE$ANSISTRING$BOOLEAN$$TINIFILE$stub
	movl	-12(%ebp),%eax
	movb	$1,20(%eax)
Lj2089:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2090
	call	LFPC_RERAISE$stub
Lj2090:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2104
	jmp	Lj2103
Lj2104:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2102
	jmp	Lj2103
Lj2102:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj2103:
Lj2085:
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj2087
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
	testl	%eax,%eax
	jne	Lj2108
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2109
	jmp	Lj2110
Lj2109:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj2110:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj2108:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj2107
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj2107:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj2087
Lj2087:
Lj2073:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TMEMINIFILE_$__CLEAR
_INIFILES_TMEMINIFILE_$__CLEAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	-4(%ebp),%edx
	movl	8(%edx),%edx
	movl	(%edx),%edx
	call	*108(%edx)
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TMEMINIFILE_$__GETSTRINGS$TSTRINGS
_INIFILES_TMEMINIFILE_$__GETSTRINGS$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$136,%esp
	movl	%ebx,-136(%ebp)
	movl	%esi,-132(%ebp)
	movl	%edi,-128(%ebp)
	call	Lj2120
Lj2120:
	popl	%edi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-124(%ebp)
	movl	$0,-120(%ebp)
	movl	$0,-104(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj2121
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTRINGS_$__BEGINUPDATE$stub
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-100(%ebp)
	testl	%eax,%eax
	jne	Lj2126
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2131
	decl	-12(%ebp)
	.align 2
Lj2132:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	-12(%ebp),%edx
	call	L_INIFILES_TINIFILESECTIONLIST_$__GETITEM$LONGINT$$TINIFILESECTION$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	call	L_INIFILES_ISCOMMENT$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2141
	jmp	Lj2142
Lj2141:
	movl	-20(%ebp),%eax
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	jmp	Lj2149
Lj2142:
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-120(%ebp),%edx
	movl	L_TC_INIFILES_BRACKETS$non_lazy_ptr-Lj2120(%edi),%eax
	movb	(%eax),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-120(%ebp),%eax
	movl	%eax,-116(%ebp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-112(%ebp)
	leal	-124(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-124(%ebp)
	leal	-124(%ebp),%edx
	movl	L_TC_INIFILES_BRACKETS$non_lazy_ptr-Lj2120(%edi),%eax
	movb	1(%eax),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-124(%ebp),%eax
	movl	%eax,-108(%ebp)
	leal	-116(%ebp),%edx
	leal	-104(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-104(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj2149:
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	movl	%eax,%esi
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%esi
	jl	Lj2169
	decl	-16(%ebp)
	.align 2
Lj2170:
	incl	-16(%ebp)
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	4(%eax),%eax
	call	L_INIFILES_ISCOMMENT$ANSISTRING$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj2173
	jmp	Lj2174
Lj2173:
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
	jmp	Lj2189
Lj2174:
	leal	-124(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-124(%ebp)
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	4(%eax),%eax
	movl	%eax,-116(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-120(%ebp),%edx
	movl	L_TC_INIFILES_SEPARATOR$non_lazy_ptr-Lj2120(%edi),%eax
	movb	(%eax),%al
	call	Lfpc_char_to_ansistr$stub
	movl	-120(%ebp),%eax
	movl	%eax,-112(%ebp)
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	-16(%ebp),%edx
	call	L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub
	movl	8(%eax),%eax
	movl	%eax,-108(%ebp)
	leal	-116(%ebp),%edx
	leal	-124(%ebp),%eax
	movl	$2,%ecx
	call	Lfpc_ansistr_concat_multi$stub
	movl	-124(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj2189:
	cmpl	-16(%ebp),%esi
	jg	Lj2170
Lj2169:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	call	L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub
	decl	%eax
	cmpl	-12(%ebp),%eax
	jg	Lj2212
	jmp	Lj2213
Lj2212:
	movl	-4(%ebp),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*164(%ecx)
Lj2213:
	cmpl	-12(%ebp),%ebx
	jg	Lj2132
Lj2131:
Lj2126:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	call	L_CLASSES_TSTRINGS_$__ENDUPDATE$stub
	movl	-100(%ebp),%eax
	testl	%eax,%eax
	je	Lj2127
	decl	%eax
	testl	%eax,%eax
	je	Lj2128
Lj2128:
	call	LFPC_RERAISE$stub
Lj2127:
Lj2121:
	call	LFPC_POPADDRSTACK$stub
	leal	-124(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-124(%ebp)
	leal	-120(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-120(%ebp)
	leal	-104(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-104(%ebp)
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj2122
	call	LFPC_RERAISE$stub
Lj2122:
	movl	-136(%ebp),%ebx
	movl	-132(%ebp),%esi
	movl	-128(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TMEMINIFILE_$__RENAME$ANSISTRING$BOOLEAN
_INIFILES_TMEMINIFILE_$__RENAME$ANSISTRING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	call	Lj2223
Lj2223:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	-12(%ebp),%esi
	leal	4(%esi),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-4(%ebp),%eax
	movl	%eax,4(%esi)
	movl	-12(%ebp),%eax
	movl	$0,16(%eax)
	cmpb	$0,-8(%ebp)
	jne	Lj2228
	jmp	Lj2229
Lj2228:
	movl	L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr-Lj2223(%ebx),%edx
	movl	$0,%eax
	call	L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub
	movl	%eax,-16(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj2236
	movl	-12(%ebp),%eax
	movl	4(%eax),%edx
	movl	-16(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*216(%ecx)
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_INIFILES_TINIFILE_$__FILLSECTIONLIST$TSTRINGS$stub
Lj2236:
	call	LFPC_POPADDRSTACK$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj2237
	decl	%eax
	testl	%eax,%eax
	je	Lj2238
Lj2238:
	call	LFPC_RERAISE$stub
Lj2237:
Lj2229:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_INIFILES_TMEMINIFILE_$__SETSTRINGS$TSTRINGS
_INIFILES_TMEMINIFILE_$__SETSTRINGS$TSTRINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_INIFILES_TINIFILE_$__FILLSECTIONLIST$TSTRINGS$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$INIFILES$_Ld1
_$INIFILES$_Ld1:
	.byte	17
	.ascii	"THashedStringList"

.const_data
	.align 2
.globl	_VMT_INIFILES_THASHEDSTRINGLIST
_VMT_INIFILES_THASHEDSTRINGLIST:
	.long	80,-80
	.long	_VMT_CLASSES_TSTRINGLIST
	.long	_$INIFILES$_Ld1
	.long	0,0
	.long	_$INIFILES$_Ld2
	.long	_RTTI_INIFILES_THASHEDSTRINGLIST
	.long	0,0,0,0
	.long	_INIFILES_THASHEDSTRINGLIST_$__DESTROY
	.long	_SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	_SYSTEM_TOBJECT_$__FREEINSTANCE
	.long	_SYSTEM_TOBJECT_$__SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLER$formal
	.long	_SYSTEM_TOBJECT_$__AFTERCONSTRUCTION
	.long	_SYSTEM_TOBJECT_$__BEFOREDESTRUCTION
	.long	_SYSTEM_TOBJECT_$__DEFAULTHANDLERSTR$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCH$formal
	.long	_SYSTEM_TOBJECT_$__DISPATCHSTR$formal
	.long	_CLASSES_TSTRINGS_$__EQUALS$TOBJECT$$BOOLEAN
	.long	_SYSTEM_TOBJECT_$__GETHASHCODE$$LONGINT
	.long	_SYSTEM_TOBJECT_$__TOSTRING$$ANSISTRING
	.long	_CLASSES_TPERSISTENT_$__ASSIGNTO$TPERSISTENT
	.long	_CLASSES_TSTRINGS_$__DEFINEPROPERTIES$TFILER
	.long	_CLASSES_TPERSISTENT_$__GETOWNER$$TPERSISTENT
	.long	_CLASSES_TSTRINGS_$__ASSIGN$TPERSISTENT
	.long	_CLASSES_TPERSISTENT_$__GETNAMEPATH$$ANSISTRING
	.long	_CLASSES_TSTRINGLIST_$__GET$LONGINT$$ANSISTRING
	.long	_CLASSES_TSTRINGLIST_$__GETCAPACITY$$LONGINT
	.long	_CLASSES_TSTRINGLIST_$__GETCOUNT$$LONGINT
	.long	_CLASSES_TSTRINGLIST_$__GETOBJECT$LONGINT$$TOBJECT
	.long	_CLASSES_TSTRINGS_$__GETTEXTSTR$$ANSISTRING
	.long	_CLASSES_TSTRINGLIST_$__PUT$LONGINT$ANSISTRING
	.long	_CLASSES_TSTRINGLIST_$__PUTOBJECT$LONGINT$TOBJECT
	.long	_CLASSES_TSTRINGLIST_$__SETCAPACITY$LONGINT
	.long	_CLASSES_TSTRINGS_$__SETTEXTSTR$ANSISTRING
	.long	_CLASSES_TSTRINGLIST_$__SETUPDATESTATE$BOOLEAN
	.long	_CLASSES_TSTRINGLIST_$__DOCOMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
	.long	_CLASSES_TSTRINGLIST_$__ADD$ANSISTRING$$LONGINT
	.long	_CLASSES_TSTRINGS_$__ADDOBJECT$ANSISTRING$TOBJECT$$LONGINT
	.long	_CLASSES_TSTRINGS_$__ADDSTRINGS$TSTRINGS
	.long	_CLASSES_TSTRINGS_$__ADDSTRINGS$array_of_ANSISTRING
	.long	_CLASSES_TSTRINGS_$__ADDTEXT$ANSISTRING
	.long	_CLASSES_TSTRINGLIST_$__CLEAR
	.long	_CLASSES_TSTRINGLIST_$__DELETE$LONGINT
	.long	_CLASSES_TSTRINGLIST_$__EXCHANGE$LONGINT$LONGINT
	.long	_CLASSES_TSTRINGS_$__GETTEXT$$PCHAR
	.long	_INIFILES_THASHEDSTRINGLIST_$__INDEXOF$ANSISTRING$$LONGINT
	.long	_INIFILES_THASHEDSTRINGLIST_$__INDEXOFNAME$ANSISTRING$$LONGINT
	.long	_CLASSES_TSTRINGS_$__INDEXOFOBJECT$TOBJECT$$LONGINT
	.long	_CLASSES_TSTRINGLIST_$__INSERT$LONGINT$ANSISTRING
	.long	_CLASSES_TSTRINGS_$__LOADFROMFILE$ANSISTRING
	.long	_CLASSES_TSTRINGS_$__LOADFROMSTREAM$TSTREAM
	.long	_CLASSES_TSTRINGS_$__MOVE$LONGINT$LONGINT
	.long	_CLASSES_TSTRINGS_$__SAVETOFILE$ANSISTRING
	.long	_CLASSES_TSTRINGS_$__SAVETOSTREAM$TSTREAM
	.long	_CLASSES_TSTRINGS_$__SETTEXT$PCHAR
	.long	_INIFILES_THASHEDSTRINGLIST_$__CHANGED
	.long	_CLASSES_TSTRINGLIST_$__CHANGING
	.long	_CLASSES_TSTRINGLIST_$__INSERTITEM$LONGINT$ANSISTRING
	.long	_CLASSES_TSTRINGLIST_$__INSERTITEM$LONGINT$ANSISTRING$TOBJECT
	.long	_CLASSES_TSTRINGLIST_$__COMPARESTRINGS$ANSISTRING$ANSISTRING$$LONGINT
	.long	_CLASSES_TSTRINGLIST_$__FIND$ANSISTRING$LONGINT$$BOOLEAN
	.long	_CLASSES_TSTRINGLIST_$__SORT
	.long	_CLASSES_TSTRINGLIST_$__CUSTOMSORT$TSTRINGLISTSORTCOMPARE
	.long	0

.const_data
	.align 2
.globl	_$INIFILES$_Ld4
_$INIFILES$_Ld4:
	.byte	11
	.ascii	"TIniFileKey"

.const_data
	.align 2
.globl	_VMT_INIFILES_TINIFILEKEY
_VMT_INIFILES_TINIFILEKEY:
	.long	12,-12
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$INIFILES$_Ld4
	.long	0,0
	.long	_$INIFILES$_Ld5
	.long	_RTTI_INIFILES_TINIFILEKEY
	.long	_INIT_INIFILES_TINIFILEKEY
	.long	0
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
.globl	_$INIFILES$_Ld7
_$INIFILES$_Ld7:
	.byte	15
	.ascii	"TIniFileKeyList"

.const_data
	.align 2
.globl	_VMT_INIFILES_TINIFILEKEYLIST
_VMT_INIFILES_TINIFILEKEYLIST:
	.long	16,-16
	.long	_VMT_CLASSES_TLIST
	.long	_$INIFILES$_Ld7
	.long	0,0
	.long	_$INIFILES$_Ld8
	.long	_RTTI_INIFILES_TINIFILEKEYLIST
	.long	0,0,0,0
	.long	_INIFILES_TINIFILEKEYLIST_$__DESTROY
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
	.long	_CLASSES_TLIST_$__GROW
	.long	_CLASSES_TLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION
	.long	_INIFILES_TINIFILEKEYLIST_$__CLEAR
	.long	_CLASSES_TLIST_$__ERROR$ANSISTRING$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$INIFILES$_Ld10
_$INIFILES$_Ld10:
	.byte	15
	.ascii	"TIniFileSection"

.const_data
	.align 2
.globl	_VMT_INIFILES_TINIFILESECTION
_VMT_INIFILES_TINIFILESECTION:
	.long	12,-12
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$INIFILES$_Ld10
	.long	0,0
	.long	_$INIFILES$_Ld11
	.long	_RTTI_INIFILES_TINIFILESECTION
	.long	_INIT_INIFILES_TINIFILESECTION
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_INIFILES_TINIFILESECTION_$__DESTROY
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
.globl	_$INIFILES$_Ld13
_$INIFILES$_Ld13:
	.byte	19
	.ascii	"TIniFileSectionList"

.const_data
	.align 2
.globl	_VMT_INIFILES_TINIFILESECTIONLIST
_VMT_INIFILES_TINIFILESECTIONLIST:
	.long	16,-16
	.long	_VMT_CLASSES_TLIST
	.long	_$INIFILES$_Ld13
	.long	0,0
	.long	_$INIFILES$_Ld14
	.long	_RTTI_INIFILES_TINIFILESECTIONLIST
	.long	0,0,0,0
	.long	_INIFILES_TINIFILESECTIONLIST_$__DESTROY
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
	.long	_CLASSES_TLIST_$__GROW
	.long	_CLASSES_TLIST_$__NOTIFY$POINTER$TLISTNOTIFICATION
	.long	_INIFILES_TINIFILESECTIONLIST_$__CLEAR
	.long	_CLASSES_TLIST_$__ERROR$ANSISTRING$LONGINT
	.long	0

.const_data
	.align 2
.globl	_$INIFILES$_Ld16
_$INIFILES$_Ld16:
	.byte	14
	.ascii	"TCustomIniFile"

.const_data
	.align 2
.globl	_VMT_INIFILES_TCUSTOMINIFILE
_VMT_INIFILES_TCUSTOMINIFILE:
	.long	16,-16
	.long	_VMT_SYSTEM_TOBJECT
	.long	_$INIFILES$_Ld16
	.long	0,0
	.long	_$INIFILES$_Ld17
	.long	_RTTI_INIFILES_TCUSTOMINIFILE
	.long	_INIT_INIFILES_TCUSTOMINIFILE
	.long	0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_INIFILES_TCUSTOMINIFILE_$__DESTROY
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
	.long	_INIFILES_TCUSTOMINIFILE_$__CREATE$ANSISTRING$BOOLEAN$$TCUSTOMINIFILE
	.long	_INIFILES_TCUSTOMINIFILE_$__SECTIONEXISTS$ANSISTRING$$BOOLEAN
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_INIFILES_TCUSTOMINIFILE_$__READINTEGER$ANSISTRING$ANSISTRING$LONGINT$$LONGINT
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEINTEGER$ANSISTRING$ANSISTRING$LONGINT
	.long	_INIFILES_TCUSTOMINIFILE_$__READINT64$ANSISTRING$ANSISTRING$INT64$$LONGINT
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEINT64$ANSISTRING$ANSISTRING$INT64
	.long	_INIFILES_TCUSTOMINIFILE_$__READBOOL$ANSISTRING$ANSISTRING$BOOLEAN$$BOOLEAN
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEBOOL$ANSISTRING$ANSISTRING$BOOLEAN
	.long	_INIFILES_TCUSTOMINIFILE_$__READDATE$ANSISTRING$ANSISTRING$TDATETIME$$TDATETIME
	.long	_INIFILES_TCUSTOMINIFILE_$__READDATETIME$ANSISTRING$ANSISTRING$TDATETIME$$TDATETIME
	.long	_INIFILES_TCUSTOMINIFILE_$__READFLOAT$ANSISTRING$ANSISTRING$DOUBLE$$DOUBLE
	.long	_INIFILES_TCUSTOMINIFILE_$__READTIME$ANSISTRING$ANSISTRING$TDATETIME$$TDATETIME
	.long	_INIFILES_TCUSTOMINIFILE_$__READBINARYSTREAM$ANSISTRING$ANSISTRING$TSTREAM$$LONGINT
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEDATE$ANSISTRING$ANSISTRING$TDATETIME
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEDATETIME$ANSISTRING$ANSISTRING$TDATETIME
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEFLOAT$ANSISTRING$ANSISTRING$DOUBLE
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITETIME$ANSISTRING$ANSISTRING$TDATETIME
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEBINARYSTREAM$ANSISTRING$ANSISTRING$TSTREAM
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	FPC_ABSTRACTERROR
	.long	_INIFILES_TCUSTOMINIFILE_$__VALUEEXISTS$ANSISTRING$ANSISTRING$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$INIFILES$_Ld19
_$INIFILES$_Ld19:
	.byte	8
	.ascii	"TIniFile"

.const_data
	.align 2
.globl	_VMT_INIFILES_TINIFILE
_VMT_INIFILES_TINIFILE:
	.long	24,-24
	.long	_VMT_INIFILES_TCUSTOMINIFILE
	.long	_$INIFILES$_Ld19
	.long	0,0
	.long	_$INIFILES$_Ld20
	.long	_RTTI_INIFILES_TINIFILE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_INIFILES_TINIFILE_$__DESTROY
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
	.long	_INIFILES_TINIFILE_$__CREATE$ANSISTRING$BOOLEAN$$TINIFILE
	.long	_INIFILES_TCUSTOMINIFILE_$__SECTIONEXISTS$ANSISTRING$$BOOLEAN
	.long	_INIFILES_TINIFILE_$__READSTRING$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING
	.long	_INIFILES_TINIFILE_$__WRITESTRING$ANSISTRING$ANSISTRING$ANSISTRING
	.long	_INIFILES_TCUSTOMINIFILE_$__READINTEGER$ANSISTRING$ANSISTRING$LONGINT$$LONGINT
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEINTEGER$ANSISTRING$ANSISTRING$LONGINT
	.long	_INIFILES_TCUSTOMINIFILE_$__READINT64$ANSISTRING$ANSISTRING$INT64$$LONGINT
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEINT64$ANSISTRING$ANSISTRING$INT64
	.long	_INIFILES_TCUSTOMINIFILE_$__READBOOL$ANSISTRING$ANSISTRING$BOOLEAN$$BOOLEAN
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEBOOL$ANSISTRING$ANSISTRING$BOOLEAN
	.long	_INIFILES_TCUSTOMINIFILE_$__READDATE$ANSISTRING$ANSISTRING$TDATETIME$$TDATETIME
	.long	_INIFILES_TCUSTOMINIFILE_$__READDATETIME$ANSISTRING$ANSISTRING$TDATETIME$$TDATETIME
	.long	_INIFILES_TCUSTOMINIFILE_$__READFLOAT$ANSISTRING$ANSISTRING$DOUBLE$$DOUBLE
	.long	_INIFILES_TCUSTOMINIFILE_$__READTIME$ANSISTRING$ANSISTRING$TDATETIME$$TDATETIME
	.long	_INIFILES_TCUSTOMINIFILE_$__READBINARYSTREAM$ANSISTRING$ANSISTRING$TSTREAM$$LONGINT
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEDATE$ANSISTRING$ANSISTRING$TDATETIME
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEDATETIME$ANSISTRING$ANSISTRING$TDATETIME
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEFLOAT$ANSISTRING$ANSISTRING$DOUBLE
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITETIME$ANSISTRING$ANSISTRING$TDATETIME
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEBINARYSTREAM$ANSISTRING$ANSISTRING$TSTREAM
	.long	_INIFILES_TINIFILE_$__READSECTION$ANSISTRING$TSTRINGS
	.long	_INIFILES_TINIFILE_$__READSECTIONS$TSTRINGS
	.long	_INIFILES_TINIFILE_$__READSECTIONVALUES$ANSISTRING$TSTRINGS
	.long	_INIFILES_TINIFILE_$__ERASESECTION$ANSISTRING
	.long	_INIFILES_TINIFILE_$__DELETEKEY$ANSISTRING$ANSISTRING
	.long	_INIFILES_TINIFILE_$__UPDATEFILE
	.long	_INIFILES_TCUSTOMINIFILE_$__VALUEEXISTS$ANSISTRING$ANSISTRING$$BOOLEAN
	.long	0

.const_data
	.align 2
.globl	_$INIFILES$_Ld22
_$INIFILES$_Ld22:
	.byte	11
	.ascii	"TMemIniFile"

.const_data
	.align 2
.globl	_VMT_INIFILES_TMEMINIFILE
_VMT_INIFILES_TMEMINIFILE:
	.long	24,-24
	.long	_VMT_INIFILES_TINIFILE
	.long	_$INIFILES$_Ld22
	.long	0,0
	.long	_$INIFILES$_Ld23
	.long	_RTTI_INIFILES_TMEMINIFILE
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_INIFILES_TINIFILE_$__DESTROY
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
	.long	_INIFILES_TMEMINIFILE_$__CREATE$ANSISTRING$BOOLEAN$$TMEMINIFILE
	.long	_INIFILES_TCUSTOMINIFILE_$__SECTIONEXISTS$ANSISTRING$$BOOLEAN
	.long	_INIFILES_TINIFILE_$__READSTRING$ANSISTRING$ANSISTRING$ANSISTRING$$ANSISTRING
	.long	_INIFILES_TINIFILE_$__WRITESTRING$ANSISTRING$ANSISTRING$ANSISTRING
	.long	_INIFILES_TCUSTOMINIFILE_$__READINTEGER$ANSISTRING$ANSISTRING$LONGINT$$LONGINT
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEINTEGER$ANSISTRING$ANSISTRING$LONGINT
	.long	_INIFILES_TCUSTOMINIFILE_$__READINT64$ANSISTRING$ANSISTRING$INT64$$LONGINT
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEINT64$ANSISTRING$ANSISTRING$INT64
	.long	_INIFILES_TCUSTOMINIFILE_$__READBOOL$ANSISTRING$ANSISTRING$BOOLEAN$$BOOLEAN
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEBOOL$ANSISTRING$ANSISTRING$BOOLEAN
	.long	_INIFILES_TCUSTOMINIFILE_$__READDATE$ANSISTRING$ANSISTRING$TDATETIME$$TDATETIME
	.long	_INIFILES_TCUSTOMINIFILE_$__READDATETIME$ANSISTRING$ANSISTRING$TDATETIME$$TDATETIME
	.long	_INIFILES_TCUSTOMINIFILE_$__READFLOAT$ANSISTRING$ANSISTRING$DOUBLE$$DOUBLE
	.long	_INIFILES_TCUSTOMINIFILE_$__READTIME$ANSISTRING$ANSISTRING$TDATETIME$$TDATETIME
	.long	_INIFILES_TCUSTOMINIFILE_$__READBINARYSTREAM$ANSISTRING$ANSISTRING$TSTREAM$$LONGINT
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEDATE$ANSISTRING$ANSISTRING$TDATETIME
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEDATETIME$ANSISTRING$ANSISTRING$TDATETIME
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEFLOAT$ANSISTRING$ANSISTRING$DOUBLE
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITETIME$ANSISTRING$ANSISTRING$TDATETIME
	.long	_INIFILES_TCUSTOMINIFILE_$__WRITEBINARYSTREAM$ANSISTRING$ANSISTRING$TSTREAM
	.long	_INIFILES_TINIFILE_$__READSECTION$ANSISTRING$TSTRINGS
	.long	_INIFILES_TINIFILE_$__READSECTIONS$TSTRINGS
	.long	_INIFILES_TINIFILE_$__READSECTIONVALUES$ANSISTRING$TSTRINGS
	.long	_INIFILES_TINIFILE_$__ERASESECTION$ANSISTRING
	.long	_INIFILES_TINIFILE_$__DELETEKEY$ANSISTRING$ANSISTRING
	.long	_INIFILES_TINIFILE_$__UPDATEFILE
	.long	_INIFILES_TCUSTOMINIFILE_$__VALUEEXISTS$ANSISTRING$ANSISTRING$$BOOLEAN
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_INIFILES
_THREADVARLIST_INIFILES:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$INIFILES$_Ld26
_$INIFILES$_Ld26:
	.short	0,1
	.long	0,-1,8
.reference _$INIFILES$_Ld25
.globl	_$INIFILES$_Ld25
_$INIFILES$_Ld25:
.reference _$INIFILES$_Ld26
	.ascii	"INIFILES\000"

.const_data
	.align 2
.globl	_$INIFILES$_Ld28
_$INIFILES$_Ld28:
	.short	0,1
	.long	0,-1,31
.reference _$INIFILES$_Ld27
.globl	_$INIFILES$_Ld27
_$INIFILES$_Ld27:
.reference _$INIFILES$_Ld28
	.ascii	"Could not create directory \"%s\"\000"
	.align 2
.globl	_$INIFILES$_Ld30
_$INIFILES$_Ld30:
	.short	0,1
	.long	0,-1,31
.reference _$INIFILES$_Ld29
.globl	_$INIFILES$_Ld29
_$INIFILES$_Ld29:
.reference _$INIFILES$_Ld30
	.ascii	"inifiles.serrcouldnotcreatepath\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
.globl	_TC_INIFILES_BRACKETS
_TC_INIFILES_BRACKETS:
	.byte	91,93

.data
.globl	_TC_INIFILES_SEPARATOR
_TC_INIFILES_SEPARATOR:
	.byte	61

.data
.globl	_TC_INIFILES_COMMENT
_TC_INIFILES_COMMENT:
	.byte	59

.data
.globl	_TC_INIFILES_LF_ESCAPE
_TC_INIFILES_LF_ESCAPE:
	.byte	92
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
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

Lfpc_char_to_ansistr$stub:
.indirect_symbol fpc_char_to_ansistr
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

L_SYSUTILS_FREEANDNIL$formal$stub:
.indirect_symbol _SYSUTILS_FREEANDNIL$formal
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTRINGLIST_$__DESTROY$stub:
.indirect_symbol _CLASSES_TSTRINGLIST_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INIFILES_THASHEDSTRINGLIST_$__UPDATEVALUEHASH$stub:
.indirect_symbol _INIFILES_THASHEDSTRINGLIST_$__UPDATEVALUEHASH
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

L_CONTNRS_TFPHASHLIST_$__FINDINDEXOF$SHORTSTRING$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__FINDINDEXOF$SHORTSTRING$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__GET$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INIFILES_THASHEDSTRINGLIST_$__UPDATENAMEHASH$stub:
.indirect_symbol _INIFILES_THASHEDSTRINGLIST_$__UPDATENAMEHASH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTRINGLIST_$__CHANGED$stub:
.indirect_symbol _CLASSES_TSTRINGLIST_$__CHANGED
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__CREATE$$TFPHASHLIST$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__CREATE$$TFPHASHLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__CLEAR$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONTNRS_TFPHASHLIST_$__ADD$SHORTSTRING$POINTER$$LONGINT$stub:
.indirect_symbol _CONTNRS_TFPHASHLIST_$__ADD$SHORTSTRING$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTRINGS_$__GETNAME$LONGINT$$ANSISTRING$stub:
.indirect_symbol _CLASSES_TSTRINGS_$__GETNAME$LONGINT$$ANSISTRING
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

L_CLASSES_TLIST_$__GETCOUNT$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__GETCOUNT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__GET$LONGINT$$POINTER$stub:
.indirect_symbol _CLASSES_TLIST_$__GET$LONGINT$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INIFILES_ISCOMMENT$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _INIFILES_ISCOMMENT$ANSISTRING$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY$stub:
.indirect_symbol _INIFILES_TINIFILEKEYLIST_$__GETITEM$LONGINT$$TINIFILEKEY
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

L_CLASSES_TLIST_$__DESTROY$stub:
.indirect_symbol _CLASSES_TLIST_$__DESTROY
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

L_CLASSES_TLIST_$__CLEAR$stub:
.indirect_symbol _CLASSES_TLIST_$__CLEAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__CREATE$$TLIST$stub:
.indirect_symbol _CLASSES_TLIST_$__CREATE$$TLIST
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INIFILES_TINIFILESECTIONLIST_$__GETITEM$LONGINT$$TINIFILESECTION$stub:
.indirect_symbol _INIFILES_TINIFILESECTIONLIST_$__GETITEM$LONGINT$$TINIFILESECTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__DESTROY$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INIFILES_TINIFILESECTIONLIST_$__SECTIONBYNAME$ANSISTRING$BOOLEAN$$TINIFILESECTION$stub:
.indirect_symbol _INIFILES_TINIFILESECTIONLIST_$__SECTIONBYNAME$ANSISTRING$BOOLEAN$$TINIFILESECTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INIFILES_TINIFILESECTION_$__EMPTY$$BOOLEAN$stub:
.indirect_symbol _INIFILES_TINIFILESECTION_$__EMPTY$$BOOLEAN
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

L_SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING
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

L_SYSUTILS_INTTOSTR$INT64$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_INTTOSTR$INT64$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INIFILES_CHARTOBOOL$CHAR$$BOOLEAN$stub:
.indirect_symbol _INIFILES_CHARTOBOOL$CHAR$$BOOLEAN
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

L_INIFILES_BOOLTOCHAR$BOOLEAN$$CHAR$stub:
.indirect_symbol _INIFILES_BOOLTOCHAR$BOOLEAN$$CHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$CHAR$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$CHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TRYSTRTODATETIME$ANSISTRING$TDATETIME$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_TRYSTRTODATETIME$ANSISTRING$TDATETIME$$BOOLEAN
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

L_SYSUTILS_TRYSTRTOTIME$ANSISTRING$TDATETIME$CHAR$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_TRYSTRTOTIME$ANSISTRING$TDATETIME$CHAR$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DATETOSTR$TDATETIME$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_DATETOSTR$TDATETIME$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_DATETIMETOSTR$TDATETIME$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_DATETIMETOSTR$TDATETIME$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_TIMETOSTR$TDATETIME$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_TIMETOSTR$TDATETIME$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INIFILES_TINIFILEKEYLIST_$__KEYBYNAME$ANSISTRING$BOOLEAN$$TINIFILEKEY$stub:
.indirect_symbol _INIFILES_TINIFILEKEYLIST_$__KEYBYNAME$ANSISTRING$BOOLEAN$$TINIFILEKEY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_setlength$stub:
.indirect_symbol fpc_shortstr_setlength
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

Lfpc_val_uint_shortstr$stub:
.indirect_symbol fpc_val_uint_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub:
.indirect_symbol _CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT
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

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_TOBJECT_$__CREATE$$TOBJECT$stub:
.indirect_symbol _SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64$stub:
.indirect_symbol _CLASSES_TSTREAM_$__COPYFROM$TSTREAM$INT64$$INT64
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

L_SYSTEM_HEXSTR$LONGINT$BYTE$$SHORTSTRING$stub:
.indirect_symbol _SYSTEM_HEXSTR$LONGINT$BYTE$$SHORTSTRING
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

Lfpc_do_is$stub:
.indirect_symbol fpc_do_is
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INIFILES_TCUSTOMINIFILE_$__CREATE$ANSISTRING$BOOLEAN$$TCUSTOMINIFILE$stub:
.indirect_symbol _INIFILES_TCUSTOMINIFILE_$__CREATE$ANSISTRING$BOOLEAN$$TCUSTOMINIFILE
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

L_INIFILES_TINIFILE_$__FILLSECTIONLIST$TSTRINGS$stub:
.indirect_symbol _INIFILES_TINIFILE_$__FILLSECTIONLIST$TSTRINGS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INIFILES_TCUSTOMINIFILE_$__DESTROY$stub:
.indirect_symbol _INIFILES_TCUSTOMINIFILE_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INIFILES_TINIFILE_$_FILLSECTIONLIST$TSTRINGS_REMOVEBACKSLASHES$stub:
.indirect_symbol _INIFILES_TINIFILE_$_FILLSECTIONLIST$TSTRINGS_REMOVEBACKSLASHES
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

L_INIFILES_TINIFILESECTION_$__CREATE$ANSISTRING$$TINIFILESECTION$stub:
.indirect_symbol _INIFILES_TINIFILESECTION_$__CREATE$ANSISTRING$$TINIFILESECTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__ADD$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__ADD$POINTER$$LONGINT
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

L_INIFILES_TINIFILEKEY_$__CREATE$ANSISTRING$ANSISTRING$$TINIFILEKEY$stub:
.indirect_symbol _INIFILES_TINIFILEKEY_$__CREATE$ANSISTRING$ANSISTRING$$TINIFILEKEY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TSTRINGS_$__BEGINUPDATE$stub:
.indirect_symbol _CLASSES_TSTRINGS_$__BEGINUPDATE
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

L_CLASSES_TSTRINGS_$__ENDUPDATE$stub:
.indirect_symbol _CLASSES_TSTRINGS_$__ENDUPDATE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INIFILES_TINIFILE_$__MAYBEUPDATEFILE$stub:
.indirect_symbol _INIFILES_TINIFILE_$__MAYBEUPDATEFILE
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

L_CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__INDEXOF$POINTER$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TLIST_$__DELETE$LONGINT$stub:
.indirect_symbol _CLASSES_TLIST_$__DELETE$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INIFILES_TINIFILE_$__DELETESECTION$TINIFILESECTION$stub:
.indirect_symbol _INIFILES_TINIFILE_$__DELETESECTION$TINIFILESECTION
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FORCEDIRECTORIES$ANSISTRING$$BOOLEAN$stub:
.indirect_symbol _SYSUTILS_FORCEDIRECTORIES$ANSISTRING$$BOOLEAN
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

L_INIFILES_TINIFILE_$__CREATE$ANSISTRING$BOOLEAN$$TINIFILE$stub:
.indirect_symbol _INIFILES_TINIFILE_$__CREATE$ANSISTRING$BOOLEAN$$TINIFILE
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
.globl	_$INIFILES$_Ld2
_$INIFILES$_Ld2:
	.short	0
	.long	_$INIFILES$_Ld3
	.align 2
.globl	_$INIFILES$_Ld3
_$INIFILES$_Ld3:
	.short	0

.const_data
	.align 2
.globl	_INIT_INIFILES_THASHEDSTRINGLIST
_INIT_INIFILES_THASHEDSTRINGLIST:
	.byte	15,17
	.ascii	"THashedStringList"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_INIFILES_THASHEDSTRINGLIST
_RTTI_INIFILES_THASHEDSTRINGLIST:
	.byte	15,17
	.ascii	"THashedStringList"
	.long	_VMT_INIFILES_THASHEDSTRINGLIST
	.long	_RTTI_CLASSES_TSTRINGLIST
	.short	0
	.byte	8
	.ascii	"IniFiles"
	.short	0

.const_data
	.align 2
.globl	_$INIFILES$_Ld5
_$INIFILES$_Ld5:
	.short	0
	.long	_$INIFILES$_Ld6
	.align 2
.globl	_$INIFILES$_Ld6
_$INIFILES$_Ld6:
	.short	0

.const_data
	.align 2
.globl	_INIT_INIFILES_TINIFILEKEY
_INIT_INIFILES_TINIFILEKEY:
	.byte	15,11
	.ascii	"TIniFileKey"
	.long	4,2
	.long	_INIT_SYSTEM_ANSISTRING
	.long	4
	.long	_INIT_SYSTEM_ANSISTRING
	.long	8

.const_data
	.align 2
.globl	_RTTI_INIFILES_TINIFILEKEY
_RTTI_INIFILES_TINIFILEKEY:
	.byte	15,11
	.ascii	"TIniFileKey"
	.long	_VMT_INIFILES_TINIFILEKEY
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"IniFiles"
	.short	0

.const_data
	.align 2
.globl	_$INIFILES$_Ld8
_$INIFILES$_Ld8:
	.short	0
	.long	_$INIFILES$_Ld9
	.align 2
.globl	_$INIFILES$_Ld9
_$INIFILES$_Ld9:
	.short	0

.const_data
	.align 2
.globl	_INIT_INIFILES_TINIFILEKEYLIST
_INIT_INIFILES_TINIFILEKEYLIST:
	.byte	15,15
	.ascii	"TIniFileKeyList"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_INIFILES_TINIFILEKEYLIST
_RTTI_INIFILES_TINIFILEKEYLIST:
	.byte	15,15
	.ascii	"TIniFileKeyList"
	.long	_VMT_INIFILES_TINIFILEKEYLIST
	.long	_RTTI_CLASSES_TLIST
	.short	0
	.byte	8
	.ascii	"IniFiles"
	.short	0

.const_data
	.align 2
.globl	_$INIFILES$_Ld11
_$INIFILES$_Ld11:
	.short	0
	.long	_$INIFILES$_Ld12
	.align 2
.globl	_$INIFILES$_Ld12
_$INIFILES$_Ld12:
	.short	0

.const_data
	.align 2
.globl	_INIT_INIFILES_TINIFILESECTION
_INIT_INIFILES_TINIFILESECTION:
	.byte	15,15
	.ascii	"TIniFileSection"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	4

.const_data
	.align 2
.globl	_RTTI_INIFILES_TINIFILESECTION
_RTTI_INIFILES_TINIFILESECTION:
	.byte	15,15
	.ascii	"TIniFileSection"
	.long	_VMT_INIFILES_TINIFILESECTION
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"IniFiles"
	.short	0

.const_data
	.align 2
.globl	_$INIFILES$_Ld14
_$INIFILES$_Ld14:
	.short	0
	.long	_$INIFILES$_Ld15
	.align 2
.globl	_$INIFILES$_Ld15
_$INIFILES$_Ld15:
	.short	0

.const_data
	.align 2
.globl	_INIT_INIFILES_TINIFILESECTIONLIST
_INIT_INIFILES_TINIFILESECTIONLIST:
	.byte	15,19
	.ascii	"TIniFileSectionList"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_INIFILES_TINIFILESECTIONLIST
_RTTI_INIFILES_TINIFILESECTIONLIST:
	.byte	15,19
	.ascii	"TIniFileSectionList"
	.long	_VMT_INIFILES_TINIFILESECTIONLIST
	.long	_RTTI_CLASSES_TLIST
	.short	0
	.byte	8
	.ascii	"IniFiles"
	.short	0

.const_data
	.align 2
.globl	_$INIFILES$_Ld17
_$INIFILES$_Ld17:
	.short	0
	.long	_$INIFILES$_Ld18
	.align 2
.globl	_$INIFILES$_Ld18
_$INIFILES$_Ld18:
	.short	0

.const_data
	.align 2
.globl	_INIT_INIFILES_TCUSTOMINIFILE
_INIT_INIFILES_TCUSTOMINIFILE:
	.byte	15,14
	.ascii	"TCustomIniFile"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	4

.const_data
	.align 2
.globl	_RTTI_INIFILES_TCUSTOMINIFILE
_RTTI_INIFILES_TCUSTOMINIFILE:
	.byte	15,14
	.ascii	"TCustomIniFile"
	.long	_VMT_INIFILES_TCUSTOMINIFILE
	.long	_RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"IniFiles"
	.short	0

.const_data
	.align 2
.globl	_INIT_INIFILES_DEF234
_INIT_INIFILES_DEF234:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_INIFILES_DEF239
_INIT_INIFILES_DEF239:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_INIFILES_DEF252
_INIT_INIFILES_DEF252:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_INIFILES_DEF253
_INIT_INIFILES_DEF253:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_INIFILES_DEF254
_INIT_INIFILES_DEF254:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$INIFILES$_Ld20
_$INIFILES$_Ld20:
	.short	0
	.long	_$INIFILES$_Ld21
	.align 2
.globl	_$INIFILES$_Ld21
_$INIFILES$_Ld21:
	.short	0

.const_data
	.align 2
.globl	_INIT_INIFILES_TINIFILE
_INIT_INIFILES_TINIFILE:
	.byte	15,8
	.ascii	"TIniFile"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_INIFILES_TINIFILE
_RTTI_INIFILES_TINIFILE:
	.byte	15,8
	.ascii	"TIniFile"
	.long	_VMT_INIFILES_TINIFILE
	.long	_RTTI_INIFILES_TCUSTOMINIFILE
	.short	0
	.byte	8
	.ascii	"IniFiles"
	.short	0

.const_data
	.align 2
.globl	_INIT_INIFILES_DEF266
_INIT_INIFILES_DEF266:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_INIT_INIFILES_DEF267
_INIT_INIFILES_DEF267:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$INIFILES$_Ld23
_$INIFILES$_Ld23:
	.short	0
	.long	_$INIFILES$_Ld24
	.align 2
.globl	_$INIFILES$_Ld24
_$INIFILES$_Ld24:
	.short	0

.const_data
	.align 2
.globl	_INIT_INIFILES_TMEMINIFILE
_INIT_INIFILES_TMEMINIFILE:
	.byte	15,11
	.ascii	"TMemIniFile"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_INIFILES_TMEMINIFILE
_RTTI_INIFILES_TMEMINIFILE:
	.byte	15,11
	.ascii	"TMemIniFile"
	.long	_VMT_INIFILES_TMEMINIFILE
	.long	_RTTI_INIFILES_TINIFILE
	.short	0
	.byte	8
	.ascii	"IniFiles"
	.short	0
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
L_TC_INIFILES_COMMENT$non_lazy_ptr:
.indirect_symbol _TC_INIFILES_COMMENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CONTNRS_TFPHASHLIST$non_lazy_ptr:
.indirect_symbol _VMT_CONTNRS_TFPHASHLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_INIFILES_TINIFILEKEYLIST$non_lazy_ptr:
.indirect_symbol _VMT_INIFILES_TINIFILEKEYLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_INIFILES_TINIFILESECTIONLIST$non_lazy_ptr:
.indirect_symbol _VMT_INIFILES_TINIFILESECTIONLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TMEMORYSTREAM$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TMEMORYSTREAM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_INIFILES_TMEMINIFILE$non_lazy_ptr:
.indirect_symbol _VMT_INIFILES_TMEMINIFILE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_CLASSES_TSTRINGLIST$non_lazy_ptr:
.indirect_symbol _VMT_CLASSES_TSTRINGLIST
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_INIFILES_TINIFILESECTION$non_lazy_ptr:
.indirect_symbol _VMT_INIFILES_TINIFILESECTION
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_INIFILES_BRACKETS$non_lazy_ptr:
.indirect_symbol _TC_INIFILES_BRACKETS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_INIFILES_SEPARATOR$non_lazy_ptr:
.indirect_symbol _TC_INIFILES_SEPARATOR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_INIFILES_TINIFILEKEY$non_lazy_ptr:
.indirect_symbol _VMT_INIFILES_TINIFILEKEY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_INIFILES_LF_ESCAPE$non_lazy_ptr:
.indirect_symbol _TC_INIFILES_LF_ESCAPE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_INIFILES_SERRCOULDNOTCREATEPATH$non_lazy_ptr:
.indirect_symbol _RESSTR_INIFILES_SERRCOULDNOTCREATEPATH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_SYSUTILS_EINOUTERROR$non_lazy_ptr:
.indirect_symbol _VMT_SYSUTILS_EINOUTERROR
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_INIFILES_START
_RESSTR_INIFILES_START:
	.long	_$INIFILES$_Ld25
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_INIFILES_SERRCOULDNOTCREATEPATH
_RESSTR_INIFILES_SERRCOULDNOTCREATEPATH:
	.long	_$INIFILES$_Ld29
	.long	_$INIFILES$_Ld27
	.long	_$INIFILES$_Ld27
	.long	230284562

.data
	.align 2
.globl	_RESSTR_INIFILES_END
_RESSTR_INIFILES_END:
	.long	_RESSTR_INIFILES_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

