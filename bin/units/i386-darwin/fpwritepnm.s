# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_FPWRITEPNM_SAVEIMAGETOPNMFILE$TFPCUSTOMIMAGE$ANSISTRING$BOOLEAN
_FPWRITEPNM_SAVEIMAGETOPNMFILE$TFPCUSTOMIMAGE$ANSISTRING$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	call	Lj4
Lj4:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-20(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-60(%ebp)
	testl	%eax,%eax
	jne	Lj5
	movl	L_VMT_FPWRITEPNM_TFPWRITERPNM$non_lazy_ptr-Lj4(%ebx),%edx
	movl	$0,%eax
	movl	L_VMT_FPWRITEPNM_TFPWRITERPNM$non_lazy_ptr-Lj4(%ebx),%ecx
	call	*104(%ecx)
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movb	-12(%ebp),%dl
	movb	%dl,24(%eax)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	leal	-20(%ebp),%edx
	call	L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-20(%ebp),%eax
	movl	L_$FPWRITEPNM$_Ld1$non_lazy_ptr-Lj4(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj24
	jmp	Lj26
Lj26:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj24
	jmp	Lj25
Lj24:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPWRITEPNM_TFPWRITERPNM_$__GUESSCOLORDEPTHOFIMAGE$TFPCUSTOMIMAGE$$TPNMCOLORDEPTH$stub
	movl	-16(%ebp),%edx
	movl	%eax,20(%edx)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-16(%ebp),%eax
	movl	20(%eax),%edx
	leal	-72(%ebp),%ecx
	movl	-16(%ebp),%eax
	call	L_FPWRITEPNM_TFPWRITERPNM_$__GETFILEEXTENSION$TPNMCOLORDEPTH$$ANSISTRING$stub
	movl	-72(%ebp),%ecx
	leal	-68(%ebp),%eax
	movl	L_$FPWRITEPNM$_Ld3$non_lazy_ptr-Lj4(%ebx),%edx
	call	Lfpc_ansistr_concat$stub
	movl	-68(%ebp),%edx
	leal	-64(%ebp),%ecx
	movl	-8(%ebp),%eax
	call	L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub
	movl	-64(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-64(%ebp),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj57
Lj25:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	L_FPWRITEPNM_TFPWRITERPNM_$__GETCOLORDEPTHOFEXTENSION$ANSISTRING$$TPNMCOLORDEPTH$stub
	movl	-16(%ebp),%edx
	movl	%eax,20(%edx)
Lj57:
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__SAVETOFILE$ANSISTRING$TFPCUSTOMIMAGEWRITER$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_TOBJECT_$__FREE$stub
Lj5:
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-20(%ebp)
	leal	-8(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj6
	call	LFPC_RERAISE$stub
Lj6:
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNM_TFPWRITERPPM_$__CREATE$$TFPWRITERPPM
_FPWRITEPNM_TFPWRITERPPM_$__CREATE$$TFPWRITERPPM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj80
	jmp	Lj81
Lj80:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj81:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj86
	jmp	Lj87
Lj86:
	jmp	Lj78
Lj87:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj90
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj94
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPWRITEPNM_TFPWRITERPNM_$__CREATE$$TFPWRITERPNM$stub
	movl	-8(%ebp),%eax
	movl	$3,20(%eax)
Lj94:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj95
	call	LFPC_RERAISE$stub
Lj95:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj105
	jmp	Lj104
Lj105:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj103
	jmp	Lj104
Lj103:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj104:
Lj90:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj92
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj109
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj110
	jmp	Lj111
Lj110:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj111:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj109:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj108
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj108:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj92
Lj92:
Lj78:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNM_TFPWRITERPGM_$__CREATE$$TFPWRITERPGM
_FPWRITEPNM_TFPWRITERPGM_$__CREATE$$TFPWRITERPGM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj118
	jmp	Lj119
Lj118:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj119:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj124
	jmp	Lj125
Lj124:
	jmp	Lj116
Lj125:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj128
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj132
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPWRITEPNM_TFPWRITERPNM_$__CREATE$$TFPWRITERPNM$stub
	movl	-8(%ebp),%eax
	movl	$2,20(%eax)
Lj132:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj133
	call	LFPC_RERAISE$stub
Lj133:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj143
	jmp	Lj142
Lj143:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj141
	jmp	Lj142
Lj141:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj142:
Lj128:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj130
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj147
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj148
	jmp	Lj149
Lj148:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj149:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj147:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj146
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj146:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj130
Lj130:
Lj116:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNM_TFPWRITERPBM_$__CREATE$$TFPWRITERPBM
_FPWRITEPNM_TFPWRITERPBM_$__CREATE$$TFPWRITERPBM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj156
	jmp	Lj157
Lj156:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj157:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj162
	jmp	Lj163
Lj162:
	jmp	Lj154
Lj163:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj166
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj170
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPWRITEPNM_TFPWRITERPNM_$__CREATE$$TFPWRITERPNM$stub
	movl	-8(%ebp),%eax
	movl	$1,20(%eax)
Lj170:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj171
	call	LFPC_RERAISE$stub
Lj171:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj181
	jmp	Lj180
Lj181:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj179
	jmp	Lj180
Lj179:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj180:
Lj166:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj168
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj185
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj186
	jmp	Lj187
Lj186:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj187:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj185:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj184
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj184:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj168
Lj168:
Lj154:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNM_TFPWRITERPNM_$__CREATE$$TFPWRITERPNM
_FPWRITEPNM_TFPWRITERPNM_$__CREATE$$TFPWRITERPNM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj194
	jmp	Lj195
Lj194:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj195:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj200
	jmp	Lj201
Lj200:
	jmp	Lj192
Lj201:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj204
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj208
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER$stub
	movl	-8(%ebp),%eax
	movl	$0,20(%eax)
	movl	-8(%ebp),%eax
	movb	$1,24(%eax)
Lj208:
	call	LFPC_POPADDRSTACK$stub
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj209
	call	LFPC_RERAISE$stub
Lj209:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj221
	jmp	Lj220
Lj221:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj219
	jmp	Lj220
Lj219:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj220:
Lj204:
	call	LFPC_POPADDRSTACK$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj206
	leal	-60(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
	testl	%eax,%eax
	jne	Lj225
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj226
	jmp	Lj227
Lj226:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj227:
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj225:
	call	LFPC_POPADDRSTACK$stub
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj224
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj224:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj206
Lj206:
Lj192:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNM_TFPWRITERPNM_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE
_FPWRITEPNM_TFPWRITERPNM_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-80(%ebp)
	movl	%esi,-76(%ebp)
	movl	%edi,-72(%ebp)
	call	Lj233
Lj233:
	popl	-68(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movb	$10,-49(%ebp)
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	je	Lj238
	jmp	Lj239
Lj238:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	L_FPWRITEPNM_TFPWRITERPNM_$__GUESSCOLORDEPTHOFIMAGE$TFPCUSTOMIMAGE$$TPNMCOLORDEPTH$stub
	movl	%eax,-56(%ebp)
	jmp	Lj246
Lj239:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-56(%ebp)
Lj246:
	movl	-56(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj250
	decl	%eax
	je	Lj251
	decl	%eax
	je	Lj252
	decl	%eax
	je	Lj253
	jmp	Lj250
Lj251:
	movl	$1,-16(%ebp)
	jmp	Lj249
Lj252:
	movl	$2,-16(%ebp)
	jmp	Lj249
Lj253:
	movl	$3,-16(%ebp)
	jmp	Lj249
Lj250:
Lj249:
	movl	-12(%ebp),%eax
	cmpb	$0,24(%eax)
	jne	Lj260
	jmp	Lj261
Lj260:
	addl	$3,-16(%ebp)
Lj261:
	movl	-4(%ebp),%edx
	movl	%ebp,%eax
	call	L_FPWRITEPNM_TFPWRITERPNM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_SAVEHEADER$TSTREAM$$BOOLEAN$stub
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj267
	decl	%eax
	je	Lj268
	decl	%eax
	je	Lj269
	decl	%eax
	je	Lj270
	decl	%eax
	je	Lj271
	decl	%eax
	je	Lj272
	decl	%eax
	je	Lj273
	jmp	Lj267
Lj268:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	shll	$1,%eax
	movl	%eax,-28(%ebp)
	jmp	Lj266
Lj269:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	shll	$2,%eax
	movl	%eax,-28(%ebp)
	jmp	Lj266
Lj270:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	imull	$3,%eax
	shll	$2,%eax
	movl	%eax,-28(%ebp)
	jmp	Lj266
Lj271:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	addl	$7,%eax
	shrl	$3,%eax
	movl	%eax,-28(%ebp)
	jmp	Lj266
Lj272:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-28(%ebp)
	jmp	Lj266
Lj273:
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	imull	$3,%eax
	movl	%eax,-28(%ebp)
	jmp	Lj266
Lj267:
Lj266:
	movl	-28(%ebp),%edx
	leal	-44(%ebp),%eax
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	decl	%eax
	movl	%eax,%edi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%edi
	jl	Lj291
	decl	-20(%ebp)
	.align 2
Lj292:
	incl	-20(%ebp)
	movl	-44(%ebp),%eax
	movl	-28(%ebp),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%esi
	jl	Lj300
	decl	-24(%ebp)
	.align 2
Lj301:
	incl	-24(%ebp)
	movl	-20(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-8(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-64(%ebp)
	movl	%edx,-60(%ebp)
	movl	-64(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	-60(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj311
	decl	%eax
	je	Lj312
	decl	%eax
	je	Lj313
	decl	%eax
	je	Lj314
	decl	%eax
	je	Lj315
	decl	%eax
	je	Lj316
	decl	%eax
	je	Lj317
	jmp	Lj311
Lj312:
	movzwl	-40(%ebp),%eax
	cmpl	$12032,%eax
	jle	Lj318
	jmp	Lj321
Lj321:
	movzwl	-38(%ebp),%eax
	cmpl	$12032,%eax
	jle	Lj318
	jmp	Lj320
Lj320:
	movzwl	-36(%ebp),%eax
	cmpl	$12032,%eax
	jle	Lj318
	jmp	Lj319
Lj318:
	movl	-44(%ebp),%edx
	movl	-24(%ebp),%eax
	shll	$1,%eax
	movb	$49,(%edx,%eax,1)
	jmp	Lj324
Lj319:
	movl	-44(%ebp),%edx
	movl	-24(%ebp),%eax
	shll	$1,%eax
	movb	$48,(%edx,%eax,1)
Lj324:
	movl	-44(%ebp),%edx
	movl	-24(%ebp),%eax
	shll	$1,%eax
	incl	%eax
	movb	$32,(%edx,%eax,1)
	jmp	Lj310
Lj313:
	movl	$3,(%esp)
	movzwl	-40(%ebp),%eax
	movl	%eax,-60(%ebp)
	fildl	-60(%ebp)
	movl	-68(%ebp),%edx
	movl	L_$FPWRITEPNM$_Ld5$non_lazy_ptr-Lj233(%edx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	movzwl	-38(%ebp),%eax
	movl	%eax,-60(%ebp)
	fildl	-60(%ebp)
	movl	-68(%ebp),%edx
	movl	L_$FPWRITEPNM$_Ld6$non_lazy_ptr-Lj233(%edx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movzwl	-36(%ebp),%eax
	movl	%eax,-60(%ebp)
	fildl	-60(%ebp)
	movl	-68(%ebp),%edx
	movl	L_$FPWRITEPNM$_Ld7$non_lazy_ptr-Lj233(%edx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fistpq	-64(%ebp)
	fwait
	movzwl	-64(%ebp),%eax
	shrl	$8,%eax
	movzbl	%al,%eax
	leal	-48(%ebp),%ecx
	movl	$-1,%edx
	call	Lfpc_shortstr_sint$stub
	movzbl	-48(%ebp),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%ebx
	jl	Lj338
	decl	-32(%ebp)
	.align 2
Lj339:
	incl	-32(%ebp)
	movl	-44(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	%edx,%ecx
	shll	$2,%ecx
	movl	-32(%ebp),%edx
	addl	%edx,%ecx
	movl	%ecx,%edx
	movl	-32(%ebp),%ecx
	incl	%ecx
	movzbl	%cl,%ecx
	movb	-48(%ebp,%ecx,1),%cl
	movb	%cl,(%eax,%edx,1)
	cmpl	-32(%ebp),%ebx
	jg	Lj339
Lj338:
	movzbl	-48(%ebp),%eax
	movl	%eax,-32(%ebp)
	cmpl	$4,-32(%ebp)
	jg	Lj343
	decl	-32(%ebp)
	.align 2
Lj344:
	incl	-32(%ebp)
	movl	-44(%ebp),%edx
	movl	-24(%ebp),%eax
	shll	$2,%eax
	movl	-32(%ebp),%ecx
	addl	%ecx,%eax
	movb	$32,(%edx,%eax,1)
	cmpl	$4,-32(%ebp)
	jl	Lj344
Lj343:
	jmp	Lj310
Lj314:
	movl	$3,(%esp)
	movzwl	-40(%ebp),%eax
	shrl	$8,%eax
	movzbl	%al,%eax
	leal	-48(%ebp),%ecx
	movl	$-1,%edx
	call	Lfpc_shortstr_sint$stub
	movzbl	-48(%ebp),%eax
	decl	%eax
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%eax
	jl	Lj356
	decl	-32(%ebp)
	.align 2
Lj357:
	incl	-32(%ebp)
	movl	-44(%ebp),%ecx
	movl	-24(%ebp),%edx
	imull	$3,%edx
	shll	$2,%edx
	movl	-32(%ebp),%ebx
	addl	%ebx,%edx
	movl	%edx,%ebx
	movl	-32(%ebp),%edx
	incl	%edx
	movzbl	%dl,%edx
	movb	-48(%ebp,%edx,1),%dl
	movb	%dl,(%ecx,%ebx,1)
	cmpl	-32(%ebp),%eax
	jg	Lj357
Lj356:
	movzbl	-48(%ebp),%eax
	movl	%eax,-32(%ebp)
	cmpl	$4,-32(%ebp)
	jg	Lj361
	decl	-32(%ebp)
	.align 2
Lj362:
	incl	-32(%ebp)
	movl	-44(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$3,%eax
	shll	$2,%eax
	movl	-32(%ebp),%ecx
	addl	%ecx,%eax
	movb	$32,(%edx,%eax,1)
	cmpl	$4,-32(%ebp)
	jl	Lj362
Lj361:
	movl	$3,(%esp)
	movzwl	-38(%ebp),%eax
	shrl	$8,%eax
	movzbl	%al,%eax
	leal	-48(%ebp),%ecx
	movl	$-1,%edx
	call	Lfpc_shortstr_sint$stub
	movzbl	-48(%ebp),%eax
	decl	%eax
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%eax
	jl	Lj374
	decl	-32(%ebp)
	.align 2
Lj375:
	incl	-32(%ebp)
	movl	-44(%ebp),%ecx
	movl	-24(%ebp),%edx
	imull	$3,%edx
	incl	%edx
	movl	%edx,%ebx
	shll	$2,%ebx
	movl	-32(%ebp),%edx
	addl	%edx,%ebx
	movl	-32(%ebp),%edx
	incl	%edx
	movzbl	%dl,%edx
	movb	-48(%ebp,%edx,1),%dl
	movb	%dl,(%ecx,%ebx,1)
	cmpl	-32(%ebp),%eax
	jg	Lj375
Lj374:
	movzbl	-48(%ebp),%eax
	movl	%eax,-32(%ebp)
	cmpl	$4,-32(%ebp)
	jg	Lj379
	decl	-32(%ebp)
	.align 2
Lj380:
	incl	-32(%ebp)
	movl	-44(%ebp),%eax
	movl	-24(%ebp),%ecx
	imull	$3,%ecx
	incl	%ecx
	shll	$2,%ecx
	movl	-32(%ebp),%edx
	addl	%edx,%ecx
	movb	$32,(%eax,%ecx,1)
	cmpl	$4,-32(%ebp)
	jl	Lj380
Lj379:
	movl	$3,(%esp)
	movzwl	-36(%ebp),%eax
	shrl	$8,%eax
	movzbl	%al,%eax
	leal	-48(%ebp),%ecx
	movl	$-1,%edx
	call	Lfpc_shortstr_sint$stub
	movzbl	-48(%ebp),%eax
	decl	%eax
	movl	$0,-32(%ebp)
	cmpl	-32(%ebp),%eax
	jl	Lj392
	decl	-32(%ebp)
	.align 2
Lj393:
	incl	-32(%ebp)
	movl	-44(%ebp),%edx
	movl	-24(%ebp),%ecx
	imull	$3,%ecx
	addl	$2,%ecx
	shll	$2,%ecx
	movl	-32(%ebp),%ebx
	addl	%ebx,%ecx
	movl	%ecx,%ebx
	movl	-32(%ebp),%ecx
	incl	%ecx
	movzbl	%cl,%ecx
	movb	-48(%ebp,%ecx,1),%cl
	movb	%cl,(%edx,%ebx,1)
	cmpl	-32(%ebp),%eax
	jg	Lj393
Lj392:
	movzbl	-48(%ebp),%eax
	movl	%eax,-32(%ebp)
	cmpl	$4,-32(%ebp)
	jg	Lj397
	decl	-32(%ebp)
	.align 2
Lj398:
	incl	-32(%ebp)
	movl	-44(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$3,%eax
	addl	$2,%eax
	shll	$2,%eax
	movl	-32(%ebp),%ecx
	addl	%ecx,%eax
	movb	$32,(%edx,%eax,1)
	cmpl	$4,-32(%ebp)
	jl	Lj398
Lj397:
	jmp	Lj310
Lj315:
	movzwl	-40(%ebp),%eax
	cmpl	$12032,%eax
	jle	Lj401
	jmp	Lj404
Lj404:
	movzwl	-38(%ebp),%eax
	cmpl	$12032,%eax
	jle	Lj401
	jmp	Lj403
Lj403:
	movzwl	-36(%ebp),%eax
	cmpl	$12032,%eax
	jle	Lj401
	jmp	Lj402
Lj401:
	movl	-44(%ebp),%edx
	movl	-24(%ebp),%eax
	shrl	$3,%eax
	movzbl	(%edx,%eax,1),%eax
	movl	-24(%ebp),%ecx
	andl	$7,%ecx
	movl	$128,%edx
	shrl	%cl,%edx
	orl	%edx,%eax
	movl	-44(%ebp),%edx
	movl	-24(%ebp),%ecx
	shrl	$3,%ecx
	movb	%al,(%edx,%ecx,1)
Lj402:
	jmp	Lj310
Lj316:
	movl	-44(%ebp),%ecx
	movl	-24(%ebp),%edx
	movzwl	-40(%ebp),%eax
	movl	%eax,-60(%ebp)
	fildl	-60(%ebp)
	movl	-68(%ebp),%ebx
	movl	L_$FPWRITEPNM$_Ld5$non_lazy_ptr-Lj233(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	movzwl	-38(%ebp),%eax
	movl	%eax,-60(%ebp)
	fildl	-60(%ebp)
	movl	-68(%ebp),%ebx
	movl	L_$FPWRITEPNM$_Ld6$non_lazy_ptr-Lj233(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	movzwl	-36(%ebp),%eax
	movl	%eax,-60(%ebp)
	fildl	-60(%ebp)
	movl	-68(%ebp),%ebx
	movl	L_$FPWRITEPNM$_Ld7$non_lazy_ptr-Lj233(%ebx),%eax
	fldt	(%eax)
	fmulp	%st,%st(1)
	faddp	%st,%st(1)
	fistpq	-64(%ebp)
	fwait
	movzwl	-64(%ebp),%eax
	shrl	$8,%eax
	movb	%al,(%ecx,%edx,1)
	jmp	Lj310
Lj317:
	movl	-44(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$3,%eax
	movl	%eax,%ecx
	movzwl	-40(%ebp),%eax
	shrl	$8,%eax
	movb	%al,(%edx,%ecx,1)
	movl	-44(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$3,%eax
	incl	%eax
	movl	%eax,%ecx
	movzwl	-38(%ebp),%eax
	shrl	$8,%eax
	movb	%al,(%edx,%ecx,1)
	movl	-44(%ebp),%edx
	movl	-24(%ebp),%eax
	imull	$3,%eax
	addl	$2,%eax
	movl	%eax,%ecx
	movzwl	-36(%ebp),%eax
	shrl	$8,%eax
	movb	%al,(%edx,%ecx,1)
	jmp	Lj310
Lj311:
Lj310:
	cmpl	-24(%ebp),%esi
	jg	Lj301
Lj300:
	movl	-44(%ebp),%edx
	movl	-28(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	-16(%ebp),%eax
	decl	%eax
	cmpl	$3,%eax
	jb	Lj423
Lj423:
	jc	Lj421
	jmp	Lj422
Lj421:
	leal	-49(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	-4(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
Lj422:
	cmpl	-20(%ebp),%edi
	jg	Lj292
Lj291:
	movl	-28(%ebp),%edx
	movl	-44(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub
	movl	-80(%ebp),%ebx
	movl	-76(%ebp),%esi
	movl	-72(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNM_TFPWRITERPNM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_SAVEHEADER$TSTREAM$$BOOLEAN
_FPWRITEPNM_TFPWRITERPNM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_SAVEHEADER$TSTREAM$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1160,%esp
	movl	%ebx,-1144(%ebp)
	movl	%esi,-1140(%ebp)
	call	Lj235
Lj235:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-16(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-88(%ebp)
	testl	%eax,%eax
	jne	Lj434
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%esi
	movl	$15,(%esp)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	32(%eax),%eax
	leal	-32(%ebp),%ecx
	movl	$-1,%edx
	call	Lfpc_shortstr_sint$stub
	movl	$15,(%esp)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	28(%eax),%eax
	leal	-48(%ebp),%ecx
	movl	$-1,%edx
	call	Lfpc_shortstr_sint$stub
	movl	$5,(%esp)
	movl	-8(%ebp),%eax
	movl	-16(%eax),%eax
	imull	$3,%eax
	movl	L_TC_FPWRITEPNM_TFPWRITERPNM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_SAVEHEADER$TSTREAM$$BOOLEAN_MAGICWORDS$non_lazy_ptr-Lj235(%ebx),%edx
	leal	-3(%edx,%eax),%ecx
	leal	-624(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leal	-624(%ebp),%eax
	movl	%eax,-368(%ebp)
	movl	L_$FPWRITEPNM$_Ld8$non_lazy_ptr-Lj235(%ebx),%eax
	movl	%eax,-364(%ebp)
	leal	-32(%ebp),%ecx
	leal	-880(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leal	-880(%ebp),%eax
	movl	%eax,-360(%ebp)
	movl	L_$FPWRITEPNM$_Ld9$non_lazy_ptr-Lj235(%ebx),%eax
	movl	%eax,-356(%ebp)
	leal	-48(%ebp),%ecx
	leal	-1136(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leal	-1136(%ebp),%eax
	movl	%eax,-352(%ebp)
	movl	L_$FPWRITEPNM$_Ld8$non_lazy_ptr-Lj235(%ebx),%eax
	movl	%eax,-348(%ebp)
	leal	-368(%ebp),%ecx
	leal	-344(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
	leal	-344(%ebp),%eax
	leal	-16(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-8(%ebp),%eax
	movl	-16(%eax),%eax
	subl	$2,%eax
	cmpl	$2,%eax
	jb	Lj489
	subl	$3,%eax
	cmpl	$2,%eax
	jb	Lj489
Lj489:
	jc	Lj487
	jmp	Lj488
Lj487:
	movl	-16(%ebp),%edx
	leal	-16(%ebp),%eax
	movl	L_$FPWRITEPNM$_Ld10$non_lazy_ptr-Lj235(%ebx),%ecx
	call	Lfpc_ansistr_concat$stub
Lj488:
	movl	-4(%ebp),%eax
	movw	$0,%cx
	movl	$0,%edx
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*136(%esi)
	movl	-16(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj504
	movl	-4(%ecx),%ecx
Lj504:
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%esi
	movl	(%esi),%esi
	call	*132(%esi)
	movb	$1,-9(%ebp)
Lj434:
	call	LFPC_POPADDRSTACK$stub
	leal	-16(%ebp),%eax
	call	Lfpc_ansistr_decr_ref$stub
	movl	$0,-16(%ebp)
	movl	-88(%ebp),%eax
	testl	%eax,%eax
	je	Lj435
	call	LFPC_RERAISE$stub
Lj435:
	movb	-9(%ebp),%al
	movl	-1144(%ebp),%ebx
	movl	-1140(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNM_TFPWRITERPNM_$__GETCOLORDEPTHOFEXTENSION$ANSISTRING$$TPNMCOLORDEPTH
_FPWRITEPNM_TFPWRITERPNM_$__GETCOLORDEPTHOFEXTENSION$ANSISTRING$$TPNMCOLORDEPTH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-60(%ebp)
	call	Lj518
Lj518:
	popl	%ebx
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj519
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj525
	movl	-4(%eax),%eax
Lj525:
	cmpl	$0,%eax
	jg	Lj524
	jmp	Lj523
Lj524:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$46,%al
	je	Lj522
	jmp	Lj523
Lj522:
	leal	-4(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub
Lj523:
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub
	movl	-56(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-56(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	L_$FPWRITEPNM$_Ld12$non_lazy_ptr-Lj518(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj538
	jmp	Lj539
Lj538:
	movl	$1,-12(%ebp)
	jmp	Lj546
Lj539:
	movl	-4(%ebp),%eax
	movl	L_$FPWRITEPNM$_Ld14$non_lazy_ptr-Lj518(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj547
	jmp	Lj548
Lj547:
	movl	$2,-12(%ebp)
	jmp	Lj555
Lj548:
	movl	-4(%ebp),%eax
	movl	L_$FPWRITEPNM$_Ld16$non_lazy_ptr-Lj518(%ebx),%edx
	call	Lfpc_ansistr_compare_equal$stub
	testl	%eax,%eax
	je	Lj556
	jmp	Lj557
Lj556:
	movl	$3,-12(%ebp)
	jmp	Lj564
Lj557:
	movl	$0,-12(%ebp)
Lj564:
Lj555:
Lj546:
Lj519:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj520
	call	LFPC_RERAISE$stub
Lj520:
	movl	-12(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNM_TFPWRITERPNM_$__GUESSCOLORDEPTHOFIMAGE$TFPCUSTOMIMAGE$$TPNMCOLORDEPTH
_FPWRITEPNM_TFPWRITERPNM_$__GUESSCOLORDEPTHOFIMAGE$TFPCUSTOMIMAGE$$TPNMCOLORDEPTH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-44(%ebp)
	movl	%esi,-40(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$1,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	28(%eax),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj572
	decl	-16(%ebp)
	.align 2
Lj573:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%esi
	decl	%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj575
	decl	-20(%ebp)
	.align 2
Lj576:
	incl	-20(%ebp)
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub
	movl	%eax,-36(%ebp)
	movl	%edx,-32(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-32(%ebp),%eax
	movl	%eax,-24(%ebp)
	movzwl	-28(%ebp),%eax
	cmpl	$256,%eax
	jge	Lj591
	jmp	Lj586
Lj591:
	movzwl	-26(%ebp),%eax
	cmpl	$256,%eax
	jge	Lj590
	jmp	Lj586
Lj590:
	movzwl	-24(%ebp),%eax
	cmpl	$256,%eax
	jge	Lj589
	jmp	Lj586
Lj589:
	movw	-28(%ebp),%ax
	cmpw	$65280,%ax
	jb	Lj588
	jmp	Lj586
Lj588:
	movw	-26(%ebp),%ax
	cmpw	$65280,%ax
	jb	Lj587
	jmp	Lj586
Lj587:
	movw	-24(%ebp),%ax
	cmpw	$65280,%ax
	jb	Lj585
	jmp	Lj586
Lj585:
	movzwl	-28(%ebp),%eax
	shrl	$8,%eax
	movzwl	-26(%ebp),%edx
	shrl	$8,%edx
	cmpl	%edx,%eax
	jne	Lj592
	jmp	Lj595
Lj595:
	movzwl	-24(%ebp),%eax
	shrl	$8,%eax
	movzwl	-26(%ebp),%edx
	shrl	$8,%edx
	cmpl	%edx,%eax
	jne	Lj592
	jmp	Lj594
Lj594:
	movzwl	-28(%ebp),%eax
	shrl	$8,%eax
	movzwl	-24(%ebp),%edx
	shrl	$8,%edx
	cmpl	%edx,%eax
	jne	Lj592
	jmp	Lj593
Lj592:
	movl	$3,-12(%ebp)
	jmp	Lj567
	jmp	Lj598
Lj593:
	movl	$2,-12(%ebp)
Lj598:
Lj586:
	cmpl	-20(%ebp),%esi
	jg	Lj576
Lj575:
	cmpl	-16(%ebp),%ebx
	jg	Lj573
Lj572:
Lj567:
	movl	-12(%ebp),%eax
	movl	-44(%ebp),%ebx
	movl	-40(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_FPWRITEPNM_TFPWRITERPNM_$__GETFILEEXTENSION$TPNMCOLORDEPTH$$ANSISTRING
_FPWRITEPNM_TFPWRITERPNM_$__GETFILEEXTENSION$TPNMCOLORDEPTH$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	call	Lj602
Lj602:
	popl	%esi
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj604
	decl	%eax
	je	Lj605
	decl	%eax
	je	Lj606
	decl	%eax
	je	Lj607
	jmp	Lj604
Lj605:
	movl	L_$FPWRITEPNM$_Ld12$non_lazy_ptr-Lj602(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj603
Lj606:
	movl	L_$FPWRITEPNM$_Ld14$non_lazy_ptr-Lj602(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj603
Lj607:
	movl	L_$FPWRITEPNM$_Ld16$non_lazy_ptr-Lj602(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
	jmp	Lj603
Lj604:
	movl	L_$FPWRITEPNM$_Ld18$non_lazy_ptr-Lj602(%esi),%ebx
	movl	-12(%ebp),%edi
	movl	%edi,%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	%ebx,(%edi)
Lj603:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_INIT$_FPWRITEPNM
_INIT$_FPWRITEPNM:
.reference __FPWRITEPNM_init
.globl	__FPWRITEPNM_init
__FPWRITEPNM_init:
.reference _INIT$_FPWRITEPNM
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	call	Lj2
Lj2:
	popl	%ebx
	movl	L_VMT_FPWRITEPNM_TFPWRITERPNM$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPWRITEPNM$_Ld18$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$FPWRITEPNM$_Ld20$non_lazy_ptr-Lj2(%ebx),%esi
	movl	%edx,%ecx
	movl	%esi,%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90$stub
	movl	L_VMT_FPWRITEPNM_TFPWRITERPBM$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPWRITEPNM$_Ld12$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$FPWRITEPNM$_Ld22$non_lazy_ptr-Lj2(%ebx),%esi
	movl	%edx,%ecx
	movl	%esi,%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90$stub
	movl	L_VMT_FPWRITEPNM_TFPWRITERPGM$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPWRITEPNM$_Ld14$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$FPWRITEPNM$_Ld24$non_lazy_ptr-Lj2(%ebx),%esi
	movl	%edx,%ecx
	movl	%esi,%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90$stub
	movl	L_VMT_FPWRITEPNM_TFPWRITERPPM$non_lazy_ptr-Lj2(%ebx),%eax
	movl	%eax,(%esp)
	movl	L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr-Lj2(%ebx),%eax
	movl	(%eax),%eax
	movl	L_$FPWRITEPNM$_Ld16$non_lazy_ptr-Lj2(%ebx),%edx
	movl	L_$FPWRITEPNM$_Ld26$non_lazy_ptr-Lj2(%ebx),%esi
	movl	%edx,%ecx
	movl	%esi,%edx
	call	L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90$stub
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld28
_$FPWRITEPNM$_Ld28:
	.byte	12
	.ascii	"TFPWriterPNM"

.const_data
	.align 2
.globl	_VMT_FPWRITEPNM_TFPWRITERPNM
_VMT_FPWRITEPNM_TFPWRITERPNM:
	.long	28,-28
	.long	_VMT_FPIMAGE_TFPCUSTOMIMAGEWRITER
	.long	_$FPWRITEPNM$_Ld28
	.long	0,0
	.long	_$FPWRITEPNM$_Ld29
	.long	_RTTI_FPWRITEPNM_TFPWRITERPNM
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
	.long	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__PROGRESS$TFPIMGPROGRESSSTAGE$BYTE$BOOLEAN$TRECT$ANSISTRING$BOOLEAN
	.long	_FPWRITEPNM_TFPWRITERPNM_$__CREATE$$TFPWRITERPNM
	.long	_FPWRITEPNM_TFPWRITERPNM_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE
	.long	0

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld31
_$FPWRITEPNM$_Ld31:
	.byte	12
	.ascii	"TFPWriterPBM"

.const_data
	.align 2
.globl	_VMT_FPWRITEPNM_TFPWRITERPBM
_VMT_FPWRITEPNM_TFPWRITERPBM:
	.long	28,-28
	.long	_VMT_FPWRITEPNM_TFPWRITERPNM
	.long	_$FPWRITEPNM$_Ld31
	.long	0,0
	.long	_$FPWRITEPNM$_Ld32
	.long	_RTTI_FPWRITEPNM_TFPWRITERPBM
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
	.long	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__PROGRESS$TFPIMGPROGRESSSTAGE$BYTE$BOOLEAN$TRECT$ANSISTRING$BOOLEAN
	.long	_FPWRITEPNM_TFPWRITERPBM_$__CREATE$$TFPWRITERPBM
	.long	_FPWRITEPNM_TFPWRITERPNM_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE
	.long	0

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld34
_$FPWRITEPNM$_Ld34:
	.byte	12
	.ascii	"TFPWriterPGM"

.const_data
	.align 2
.globl	_VMT_FPWRITEPNM_TFPWRITERPGM
_VMT_FPWRITEPNM_TFPWRITERPGM:
	.long	28,-28
	.long	_VMT_FPWRITEPNM_TFPWRITERPNM
	.long	_$FPWRITEPNM$_Ld34
	.long	0,0
	.long	_$FPWRITEPNM$_Ld35
	.long	_RTTI_FPWRITEPNM_TFPWRITERPGM
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
	.long	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__PROGRESS$TFPIMGPROGRESSSTAGE$BYTE$BOOLEAN$TRECT$ANSISTRING$BOOLEAN
	.long	_FPWRITEPNM_TFPWRITERPGM_$__CREATE$$TFPWRITERPGM
	.long	_FPWRITEPNM_TFPWRITERPNM_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE
	.long	0

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld37
_$FPWRITEPNM$_Ld37:
	.byte	12
	.ascii	"TFPWriterPPM"

.const_data
	.align 2
.globl	_VMT_FPWRITEPNM_TFPWRITERPPM
_VMT_FPWRITEPNM_TFPWRITERPPM:
	.long	28,-28
	.long	_VMT_FPWRITEPNM_TFPWRITERPNM
	.long	_$FPWRITEPNM$_Ld37
	.long	0,0
	.long	_$FPWRITEPNM$_Ld38
	.long	_RTTI_FPWRITEPNM_TFPWRITERPPM
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
	.long	_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__PROGRESS$TFPIMGPROGRESSSTAGE$BYTE$BOOLEAN$TRECT$ANSISTRING$BOOLEAN
	.long	_FPWRITEPNM_TFPWRITERPPM_$__CREATE$$TFPWRITERPPM
	.long	_FPWRITEPNM_TFPWRITERPNM_$__INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE
	.long	0

.data
	.align 2
.globl	_THREADVARLIST_FPWRITEPNM
_THREADVARLIST_FPWRITEPNM:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld2
_$FPWRITEPNM$_Ld2:
	.short	0,1
	.long	0,-1,4
.reference _$FPWRITEPNM$_Ld1
.globl	_$FPWRITEPNM$_Ld1
_$FPWRITEPNM$_Ld1:
.reference _$FPWRITEPNM$_Ld2
	.ascii	".pnm\000"

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld4
_$FPWRITEPNM$_Ld4:
	.short	0,1
	.long	0,-1,1
.reference _$FPWRITEPNM$_Ld3
.globl	_$FPWRITEPNM$_Ld3
_$FPWRITEPNM$_Ld3:
.reference _$FPWRITEPNM$_Ld4
	.ascii	".\000"

.data
	.align 2
.globl	_TC_FPWRITEPNM_TFPWRITERPNM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_SAVEHEADER$TSTREAM$$BOOLEAN_MAGICWORDS
_TC_FPWRITEPNM_TFPWRITERPNM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_SAVEHEADER$TSTREAM$$BOOLEAN_MAGICWORDS:
	.byte	2
	.ascii	"P1"
	.byte	2
	.ascii	"P2"
	.byte	2
	.ascii	"P3"
	.byte	2
	.ascii	"P4"
	.byte	2
	.ascii	"P5"
	.byte	2
	.ascii	"P6"

.const
	.align 3
.globl	_$FPWRITEPNM$_Ld5
_$FPWRITEPNM$_Ld5:
	.byte	186,73,12,2,43,135,22,153,253,63

.const
	.align 3
.globl	_$FPWRITEPNM$_Ld6
_$FPWRITEPNM$_Ld6:
	.byte	111,18,131,192,202,161,69,150,254,63

.const
	.align 3
.globl	_$FPWRITEPNM$_Ld7
_$FPWRITEPNM$_Ld7:
	.byte	162,69,182,243,253,212,120,233,251,63

.const
	.align 2
.globl	_$FPWRITEPNM$_Ld8
_$FPWRITEPNM$_Ld8:
	.ascii	"\001\012\000"

.const
	.align 2
.globl	_$FPWRITEPNM$_Ld9
_$FPWRITEPNM$_Ld9:
	.ascii	"\001 \000"

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld11
_$FPWRITEPNM$_Ld11:
	.short	0,1
	.long	0,-1,4
.reference _$FPWRITEPNM$_Ld10
.globl	_$FPWRITEPNM$_Ld10
_$FPWRITEPNM$_Ld10:
.reference _$FPWRITEPNM$_Ld11
	.ascii	"255\012\000"

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld13
_$FPWRITEPNM$_Ld13:
	.short	0,1
	.long	0,-1,3
.reference _$FPWRITEPNM$_Ld12
.globl	_$FPWRITEPNM$_Ld12
_$FPWRITEPNM$_Ld12:
.reference _$FPWRITEPNM$_Ld13
	.ascii	"pbm\000"

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld15
_$FPWRITEPNM$_Ld15:
	.short	0,1
	.long	0,-1,3
.reference _$FPWRITEPNM$_Ld14
.globl	_$FPWRITEPNM$_Ld14
_$FPWRITEPNM$_Ld14:
.reference _$FPWRITEPNM$_Ld15
	.ascii	"pgm\000"

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld17
_$FPWRITEPNM$_Ld17:
	.short	0,1
	.long	0,-1,3
.reference _$FPWRITEPNM$_Ld16
.globl	_$FPWRITEPNM$_Ld16
_$FPWRITEPNM$_Ld16:
.reference _$FPWRITEPNM$_Ld17
	.ascii	"ppm\000"

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld19
_$FPWRITEPNM$_Ld19:
	.short	0,1
	.long	0,-1,3
.reference _$FPWRITEPNM$_Ld18
.globl	_$FPWRITEPNM$_Ld18
_$FPWRITEPNM$_Ld18:
.reference _$FPWRITEPNM$_Ld19
	.ascii	"pnm\000"

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld21
_$FPWRITEPNM$_Ld21:
	.short	0,1
	.long	0,-1,22
.reference _$FPWRITEPNM$_Ld20
.globl	_$FPWRITEPNM$_Ld20
_$FPWRITEPNM$_Ld20:
.reference _$FPWRITEPNM$_Ld21
	.ascii	"Netpbm Portable aNyMap\000"

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld23
_$FPWRITEPNM$_Ld23:
	.short	0,1
	.long	0,-1,22
.reference _$FPWRITEPNM$_Ld22
.globl	_$FPWRITEPNM$_Ld22
_$FPWRITEPNM$_Ld22:
.reference _$FPWRITEPNM$_Ld23
	.ascii	"Netpbm Portable BitMap\000"

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld25
_$FPWRITEPNM$_Ld25:
	.short	0,1
	.long	0,-1,23
.reference _$FPWRITEPNM$_Ld24
.globl	_$FPWRITEPNM$_Ld24
_$FPWRITEPNM$_Ld24:
.reference _$FPWRITEPNM$_Ld25
	.ascii	"Netpbm Portable GrayMap\000"

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld27
_$FPWRITEPNM$_Ld27:
	.short	0,1
	.long	0,-1,24
.reference _$FPWRITEPNM$_Ld26
.globl	_$FPWRITEPNM$_Ld26
_$FPWRITEPNM$_Ld26:
.reference _$FPWRITEPNM$_Ld27
	.ascii	"Netpbm Portable PixelMap\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ANSISTR_INCR_REF$stub:
.indirect_symbol FPC_ANSISTR_INCR_REF
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

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING
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

L_FPWRITEPNM_TFPWRITERPNM_$__GUESSCOLORDEPTHOFIMAGE$TFPCUSTOMIMAGE$$TPNMCOLORDEPTH$stub:
.indirect_symbol _FPWRITEPNM_TFPWRITERPNM_$__GUESSCOLORDEPTHOFIMAGE$TFPCUSTOMIMAGE$$TPNMCOLORDEPTH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNM_TFPWRITERPNM_$__GETFILEEXTENSION$TPNMCOLORDEPTH$$ANSISTRING$stub:
.indirect_symbol _FPWRITEPNM_TFPWRITERPNM_$__GETFILEEXTENSION$TPNMCOLORDEPTH$$ANSISTRING
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

L_SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNM_TFPWRITERPNM_$__GETCOLORDEPTHOFEXTENSION$ANSISTRING$$TPNMCOLORDEPTH$stub:
.indirect_symbol _FPWRITEPNM_TFPWRITERPNM_$__GETCOLORDEPTHOFEXTENSION$ANSISTRING$$TPNMCOLORDEPTH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__SAVETOFILE$ANSISTRING$TFPCUSTOMIMAGEWRITER$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__SAVETOFILE$ANSISTRING$TFPCUSTOMIMAGEWRITER
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

L_FPWRITEPNM_TFPWRITERPNM_$__CREATE$$TFPWRITERPNM$stub:
.indirect_symbol _FPWRITEPNM_TFPWRITERPNM_$__CREATE$$TFPWRITERPNM
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

L_FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGEHANDLER_$__CREATE$$TFPCUSTOMIMAGEHANDLER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPWRITEPNM_TFPWRITERPNM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_SAVEHEADER$TSTREAM$$BOOLEAN$stub:
.indirect_symbol _FPWRITEPNM_TFPWRITERPNM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_SAVEHEADER$TSTREAM$$BOOLEAN
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

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR$stub:
.indirect_symbol _FPIMAGE_TFPCUSTOMIMAGE_$__GETCOLOR$LONGINT$LONGINT$$TFPCOLOR
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

L_SYSTEM_FREEMEM$POINTER$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$LONGWORD
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

Lfpc_shortstr_concat_multi$stub:
.indirect_symbol fpc_shortstr_concat_multi
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

L_SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT$stub:
.indirect_symbol _SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90$stub:
.indirect_symbol _FPIMAGE_TIMAGEHANDLERSMANAGER_$__REGISTERIMAGEWRITER$crcC5E2AB90
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
.globl	_INIT_FPWRITEPNM_TPNMCOLORDEPTH
_INIT_FPWRITEPNM_TPNMCOLORDEPTH:
	.byte	3,14
	.ascii	"TPNMColorDepth"
	.byte	5
	.long	0,3,0
	.byte	7
	.ascii	"pcdAuto"
	.byte	13
	.ascii	"pcdBlackWhite"
	.byte	12
	.ascii	"pcdGrayscale"
	.byte	6
	.ascii	"pcdRGB"
	.byte	10
	.ascii	"FPWritePNM"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPWRITEPNM_TPNMCOLORDEPTH
_RTTI_FPWRITEPNM_TPNMCOLORDEPTH:
	.byte	3,14
	.ascii	"TPNMColorDepth"
	.byte	5
	.long	0,3,0
	.byte	7
	.ascii	"pcdAuto"
	.byte	13
	.ascii	"pcdBlackWhite"
	.byte	12
	.ascii	"pcdGrayscale"
	.byte	6
	.ascii	"pcdRGB"
	.byte	10
	.ascii	"FPWritePNM"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_FPWRITEPNM_TPNMCOLORDEPTH_s2o
_RTTI_FPWRITEPNM_TPNMCOLORDEPTH_s2o:
	.long	4,0
	.long	_RTTI_FPWRITEPNM_TPNMCOLORDEPTH+29
	.long	1
	.long	_RTTI_FPWRITEPNM_TPNMCOLORDEPTH+37
	.long	2
	.long	_RTTI_FPWRITEPNM_TPNMCOLORDEPTH+51
	.long	3
	.long	_RTTI_FPWRITEPNM_TPNMCOLORDEPTH+64

.const_data
	.align 2
.globl	_RTTI_FPWRITEPNM_TPNMCOLORDEPTH_o2s
_RTTI_FPWRITEPNM_TPNMCOLORDEPTH_o2s:
	.long	0
	.long	_RTTI_FPWRITEPNM_TPNMCOLORDEPTH+29
	.long	_RTTI_FPWRITEPNM_TPNMCOLORDEPTH+37
	.long	_RTTI_FPWRITEPNM_TPNMCOLORDEPTH+51
	.long	_RTTI_FPWRITEPNM_TPNMCOLORDEPTH+64

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld29
_$FPWRITEPNM$_Ld29:
	.short	0
	.long	_$FPWRITEPNM$_Ld30
	.align 2
.globl	_$FPWRITEPNM$_Ld30
_$FPWRITEPNM$_Ld30:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPWRITEPNM_TFPWRITERPNM
_INIT_FPWRITEPNM_TFPWRITERPNM:
	.byte	15,12
	.ascii	"TFPWriterPNM"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPWRITEPNM_TFPWRITERPNM
_RTTI_FPWRITEPNM_TFPWRITERPNM:
	.byte	15,12
	.ascii	"TFPWriterPNM"
	.long	_VMT_FPWRITEPNM_TFPWRITERPNM
	.long	_RTTI_FPIMAGE_TFPCUSTOMIMAGEWRITER
	.short	0
	.byte	10
	.ascii	"FPWritePNM"
	.short	0

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld32
_$FPWRITEPNM$_Ld32:
	.short	0
	.long	_$FPWRITEPNM$_Ld33
	.align 2
.globl	_$FPWRITEPNM$_Ld33
_$FPWRITEPNM$_Ld33:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPWRITEPNM_TFPWRITERPBM
_INIT_FPWRITEPNM_TFPWRITERPBM:
	.byte	15,12
	.ascii	"TFPWriterPBM"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPWRITEPNM_TFPWRITERPBM
_RTTI_FPWRITEPNM_TFPWRITERPBM:
	.byte	15,12
	.ascii	"TFPWriterPBM"
	.long	_VMT_FPWRITEPNM_TFPWRITERPBM
	.long	_RTTI_FPWRITEPNM_TFPWRITERPNM
	.short	0
	.byte	10
	.ascii	"FPWritePNM"
	.short	0

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld35
_$FPWRITEPNM$_Ld35:
	.short	0
	.long	_$FPWRITEPNM$_Ld36
	.align 2
.globl	_$FPWRITEPNM$_Ld36
_$FPWRITEPNM$_Ld36:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPWRITEPNM_TFPWRITERPGM
_INIT_FPWRITEPNM_TFPWRITERPGM:
	.byte	15,12
	.ascii	"TFPWriterPGM"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPWRITEPNM_TFPWRITERPGM
_RTTI_FPWRITEPNM_TFPWRITERPGM:
	.byte	15,12
	.ascii	"TFPWriterPGM"
	.long	_VMT_FPWRITEPNM_TFPWRITERPGM
	.long	_RTTI_FPWRITEPNM_TFPWRITERPNM
	.short	0
	.byte	10
	.ascii	"FPWritePNM"
	.short	0

.const_data
	.align 2
.globl	_$FPWRITEPNM$_Ld38
_$FPWRITEPNM$_Ld38:
	.short	0
	.long	_$FPWRITEPNM$_Ld39
	.align 2
.globl	_$FPWRITEPNM$_Ld39
_$FPWRITEPNM$_Ld39:
	.short	0

.const_data
	.align 2
.globl	_INIT_FPWRITEPNM_TFPWRITERPPM
_INIT_FPWRITEPNM_TFPWRITERPPM:
	.byte	15,12
	.ascii	"TFPWriterPPM"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_FPWRITEPNM_TFPWRITERPPM
_RTTI_FPWRITEPNM_TFPWRITERPPM:
	.byte	15,12
	.ascii	"TFPWriterPPM"
	.long	_VMT_FPWRITEPNM_TFPWRITERPPM
	.long	_RTTI_FPWRITEPNM_TFPWRITERPNM
	.short	0
	.byte	10
	.ascii	"FPWritePNM"
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
L_VMT_FPWRITEPNM_TFPWRITERPNM$non_lazy_ptr:
.indirect_symbol _VMT_FPWRITEPNM_TFPWRITERPNM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNM$_Ld1$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNM$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNM$_Ld3$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNM$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNM$_Ld5$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNM$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNM$_Ld6$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNM$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNM$_Ld7$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNM$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_FPWRITEPNM_TFPWRITERPNM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_SAVEHEADER$TSTREAM$$BOOLEAN_MAGICWORDS$non_lazy_ptr:
.indirect_symbol _TC_FPWRITEPNM_TFPWRITERPNM_$_INTERNALWRITE$TSTREAM$TFPCUSTOMIMAGE_SAVEHEADER$TSTREAM$$BOOLEAN_MAGICWORDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNM$_Ld8$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNM$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNM$_Ld9$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNM$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNM$_Ld10$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNM$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNM$_Ld12$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNM$_Ld12
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNM$_Ld14$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNM$_Ld14
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNM$_Ld16$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNM$_Ld16
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNM$_Ld18$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNM$_Ld18
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_FPIMAGE_IMAGEHANDLERS$non_lazy_ptr:
.indirect_symbol _U_FPIMAGE_IMAGEHANDLERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNM$_Ld20$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNM$_Ld20
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPWRITEPNM_TFPWRITERPBM$non_lazy_ptr:
.indirect_symbol _VMT_FPWRITEPNM_TFPWRITERPBM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNM$_Ld22$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNM$_Ld22
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPWRITEPNM_TFPWRITERPGM$non_lazy_ptr:
.indirect_symbol _VMT_FPWRITEPNM_TFPWRITERPGM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNM$_Ld24$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNM$_Ld24
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_FPWRITEPNM_TFPWRITERPPM$non_lazy_ptr:
.indirect_symbol _VMT_FPWRITEPNM_TFPWRITERPPM
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$FPWRITEPNM$_Ld26$non_lazy_ptr:
.indirect_symbol _$FPWRITEPNM$_Ld26
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

