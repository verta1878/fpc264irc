	.file "sysutils.pp"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
.globl	SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING
SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$168,%esp
	movl	%ebx,-168(%ebp)
	movl	%esi,-164(%ebp)
	movl	%edi,-160(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-156(%ebp)
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj10
	movl	-4(%eax),%eax
Lj10:
	movl	%eax,-16(%ebp)
	pushl	$32
	movl	$_$SYSUTILS$_Ld48,%ebx
	pushl	$32
	leal	-152(%ebp),%ecx
	movl	$TC_SYSTEM_ALLOWDRIVESEPARATORS,%edx
	movl	$TC_SYSTEM_ALLOWDIRECTORYSEPARATORS,%eax
	call	fpc_varset_add_sets
	leal	-152(%ebp),%eax
	leal	-120(%ebp),%ecx
	movl	%ebx,%edx
	call	fpc_varset_add_sets
	leal	-48(%ebp),%edi
	leal	-120(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	jmp	Lj30
	.balign 4,0x90
Lj29:
	decl	-16(%ebp)
Lj30:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj32
	jmp	Lj31
Lj32:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,-48(%ebp)
	jnc	Lj29
	jmp	Lj31
Lj31:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj33
	jmp	Lj35
Lj35:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$46,%al
	jne	Lj33
	jmp	Lj34
Lj33:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj38
	movl	-4(%eax),%eax
Lj38:
	incl	%eax
	movl	%eax,-16(%ebp)
Lj34:
	leal	-156(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-156(%ebp)
	leal	-156(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-156(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_concat
Lj5:
	call	FPC_POPADDRSTACK
	leal	-156(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-156(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6
	call	FPC_RERAISE
Lj6:
	movl	-168(%ebp),%ebx
	movl	-164(%ebp),%esi
	movl	-160(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING
SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-88(%ebp)
	movl	%esi,-84(%ebp)
	movl	%edi,-80(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj57
	movl	-4(%eax),%eax
Lj57:
	movl	%eax,-12(%ebp)
	pushl	$32
	leal	-76(%ebp),%ecx
	movl	$TC_SYSTEM_ALLOWDRIVESEPARATORS,%edx
	movl	$TC_SYSTEM_ALLOWDIRECTORYSEPARATORS,%eax
	call	fpc_varset_add_sets
	leal	-44(%ebp),%edi
	leal	-76(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	jmp	Lj69
	.balign 4,0x90
Lj68:
	decl	-12(%ebp)
Lj69:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj71
	jmp	Lj70
Lj71:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,-44(%ebp)
	jnc	Lj68
	jmp	Lj70
Lj70:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj72
	jmp	Lj73
Lj72:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	jmp	Lj82
Lj73:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
Lj82:
	movl	-88(%ebp),%ebx
	movl	-84(%ebp),%esi
	movl	-80(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXTRACTFILEDIR$ANSISTRING$$ANSISTRING
SYSUTILS_EXTRACTFILEDIR$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$84,%esp
	movl	%esi,-84(%ebp)
	movl	%edi,-80(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj89
	movl	-4(%eax),%eax
Lj89:
	movl	%eax,-12(%ebp)
	pushl	$32
	leal	-76(%ebp),%ecx
	movl	$TC_SYSTEM_ALLOWDRIVESEPARATORS,%edx
	movl	$TC_SYSTEM_ALLOWDIRECTORYSEPARATORS,%eax
	call	fpc_varset_add_sets
	leal	-44(%ebp),%edi
	leal	-76(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	jmp	Lj101
	.balign 4,0x90
Lj100:
	decl	-12(%ebp)
Lj101:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj103
	jmp	Lj102
Lj103:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,-44(%ebp)
	jnc	Lj100
	jmp	Lj102
Lj102:
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj107
	jmp	Lj105
Lj107:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj106
	jmp	Lj105
Lj106:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	decl	%eax
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,-44(%ebp)
	jnc	Lj104
	jmp	Lj105
Lj104:
	decl	-12(%ebp)
Lj105:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-84(%ebp),%esi
	movl	-80(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXTRACTFILEDRIVE$ANSISTRING$$ANSISTRING
SYSUTILS_EXTRACTFILEDRIVE$ANSISTRING$$ANSISTRING:
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
	testl	%eax,%eax
	je	Lj122
	movl	-4(%eax),%eax
Lj122:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$2,%eax
	jl	Lj123
	jmp	Lj124
Lj123:
	jmp	Lj116
Lj124:
	movl	-4(%ebp),%eax
	movzbl	1(%eax),%eax
	btl	%eax,TC_SYSTEM_ALLOWDRIVESEPARATORS
	jc	Lj125
	jmp	Lj126
Lj125:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	movl	$1,%edx
	call	fpc_ansistr_copy
	jmp	Lj135
Lj126:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj138
	jmp	Lj137
Lj138:
	movl	-4(%ebp),%eax
	movzbl	1(%eax),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj136
	jmp	Lj137
Lj136:
	movl	$2,-12(%ebp)
	jmp	Lj142
	.balign 4,0x90
Lj141:
	incl	-12(%ebp)
Lj142:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jl	Lj144
	jmp	Lj143
Lj144:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	incl	%eax
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jnc	Lj141
	jmp	Lj143
Lj143:
	incl	-12(%ebp)
	jmp	Lj146
	.balign 4,0x90
Lj145:
	incl	-12(%ebp)
Lj146:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jl	Lj148
	jmp	Lj147
Lj148:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	incl	%eax
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jnc	Lj145
	jmp	Lj147
Lj147:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
Lj137:
Lj135:
Lj116:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXTRACTFILENAME$ANSISTRING$$ANSISTRING
SYSUTILS_EXTRACTFILENAME$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$84,%esp
	movl	%esi,-84(%ebp)
	movl	%edi,-80(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj161
	movl	-4(%eax),%eax
Lj161:
	movl	%eax,-12(%ebp)
	pushl	$32
	leal	-76(%ebp),%ecx
	movl	$TC_SYSTEM_ALLOWDRIVESEPARATORS,%edx
	movl	$TC_SYSTEM_ALLOWDIRECTORYSEPARATORS,%eax
	call	fpc_varset_add_sets
	leal	-44(%ebp),%edi
	leal	-76(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	jmp	Lj173
	.balign 4,0x90
Lj172:
	decl	-12(%ebp)
Lj173:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj175
	jmp	Lj174
Lj175:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	btl	%eax,-44(%ebp)
	jnc	Lj172
	jmp	Lj174
Lj174:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	$2147483647,%ecx
	call	fpc_ansistr_copy
	movl	-84(%ebp),%esi
	movl	-80(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING
SYSUTILS_EXTRACTFILEEXT$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$120,%esp
	movl	%ebx,-120(%ebp)
	movl	%esi,-116(%ebp)
	movl	%edi,-112(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj188
	movl	-4(%eax),%eax
Lj188:
	movl	%eax,-12(%ebp)
	pushl	$32
	movl	$_$SYSUTILS$_Ld48,%ebx
	pushl	$32
	leal	-108(%ebp),%ecx
	movl	$TC_SYSTEM_ALLOWDRIVESEPARATORS,%edx
	movl	$TC_SYSTEM_ALLOWDIRECTORYSEPARATORS,%eax
	call	fpc_varset_add_sets
	leal	-108(%ebp),%eax
	leal	-76(%ebp),%ecx
	movl	%ebx,%edx
	call	fpc_varset_add_sets
	leal	-44(%ebp),%edi
	leal	-76(%ebp),%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	jmp	Lj208
	.balign 4,0x90
Lj207:
	decl	-12(%ebp)
Lj208:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj210
	jmp	Lj209
Lj210:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	btl	%eax,-44(%ebp)
	jnc	Lj207
	jmp	Lj209
Lj209:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj213
	jmp	Lj212
Lj213:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$46,%al
	je	Lj211
	jmp	Lj212
Lj211:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2147483647,%ecx
	call	fpc_ansistr_copy
	jmp	Lj222
Lj212:
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
Lj222:
	movl	-120(%ebp),%ebx
	movl	-116(%ebp),%esi
	movl	-112(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXTRACTSHORTPATHNAME$ANSISTRING$$ANSISTRING
SYSUTILS_EXTRACTSHORTPATHNAME$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_GETDIRIO$BYTE$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$10,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj233
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj234
Lj233:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj234:
	movw	(%eax),%ax
	movw	%ax,-10(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj237
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj238
Lj237:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj238:
	movw	$0,(%eax)
	movl	-8(%ebp),%edx
	movb	-4(%ebp),%al
	call	SYSTEM_GETDIR$BYTE$ANSISTRING
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj245
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj246
Lj245:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj246:
	movw	-10(%ebp),%dx
	movw	%dx,(%eax)
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_FEXPAND$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$612,%esp
	movl	%ebx,-612(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-96(%ebp)
	movl	$0,-80(%ebp)
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj249
	movb	$0,-13(%ebp)
	cmpb	$0,TC_SYSTEM_FILENAMECASESENSITIVE
	jne	Lj254
	jmp	Lj255
Lj254:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj258
Lj255:
	leal	-80(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_UPCASE$ANSISTRING$$ANSISTRING
	movl	-80(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-80(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj258:
	movl	-24(%ebp),%ebx
	testl	%ebx,%ebx
	je	Lj268
	movl	-4(%ebx),%ebx
Lj268:
	movl	$1,-32(%ebp)
	cmpl	-32(%ebp),%ebx
	jl	Lj266
	decl	-32(%ebp)
	.balign 4,0x90
Lj267:
	incl	-32(%ebp)
	movl	-24(%ebp),%eax
	movl	-32(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj269
	jmp	Lj270
Lj269:
	leal	-24(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-32(%ebp),%edx
	movb	$92,-1(%eax,%edx,1)
Lj270:
	cmpl	-32(%ebp),%ebx
	jg	Lj267
Lj266:
	movl	$3,-12(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj282
	movl	-4(%eax),%eax
Lj282:
	cmpl	$1,%eax
	jg	Lj281
	jmp	Lj278
Lj281:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$65,%eax
	cmpl	$26,%eax
	jb	Lj283
	subl	$32,%eax
	cmpl	$26,%eax
	jb	Lj283
Lj283:
	jc	Lj280
	jmp	Lj278
Lj280:
	movl	-24(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$58,%al
	je	Lj279
	jmp	Lj278
Lj279:
	jmp	Lj277
Lj277:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$97,%eax
	cmpl	$26,%eax
	jb	Lj286
Lj286:
	jc	Lj284
	jmp	Lj285
Lj284:
	leal	-24(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-24(%ebp),%edx
	movzbl	(%edx),%edx
	andl	$-33,%edx
	movb	%dl,(%eax)
Lj285:
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$65,%eax
	incl	%eax
	leal	-20(%ebp),%edx
	call	SYSUTILS_GETDIRIO$BYTE$ANSISTRING
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj297
	movl	-4(%eax),%eax
Lj297:
	movl	-12(%ebp),%edx
	decl	%edx
	cmpl	%edx,%eax
	je	Lj295
	jmp	Lj296
Lj295:
	movl	-20(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj300
Lj296:
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$92,%al
	jne	Lj301
	jmp	Lj302
Lj301:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	movb	%al,%bl
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	cmpb	%al,%bl
	je	Lj303
	jmp	Lj304
Lj303:
	movl	-20(%ebp),%edx
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj311
	movl	-4(%eax),%eax
Lj311:
	movb	-1(%edx,%eax,1),%al
	cmpb	$92,%al
	je	Lj309
	jmp	Lj310
Lj309:
	movl	-20(%ebp),%edx
	testl	%edx,%edx
	je	Lj314
	movl	-4(%edx),%edx
Lj314:
	decl	%edx
	leal	-20(%ebp),%eax
	call	fpc_ansistr_setlength
Lj310:
	movl	-20(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$_$SYSUTILS$_Ld49,%eax
	movl	%eax,-88(%ebp)
	leal	-80(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%eax
	pushl	%eax
	movl	-24(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj323
	movl	-4(%ecx),%ecx
Lj323:
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	call	fpc_ansistr_copy
	movl	-80(%ebp),%eax
	movl	%eax,-84(%ebp)
	leal	-92(%ebp),%edx
	leal	-24(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj332
Lj304:
	leal	-80(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%eax
	pushl	%eax
	movl	-24(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj339
	movl	-4(%ecx),%ecx
Lj339:
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%eax
	call	fpc_ansistr_copy
	movl	-80(%ebp),%ebx
	leal	-96(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-96(%ebp)
	pushl	$2
	movl	-24(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-608(%ebp)
	leal	-608(%ebp),%eax
	movl	%eax,-92(%ebp)
	movl	$_$SYSUTILS$_Ld50,%eax
	movl	%eax,-88(%ebp)
	movl	$_$SYSUTILS$_Ld51,%eax
	movl	%eax,-84(%ebp)
	leal	-92(%ebp),%ecx
	leal	-352(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat_multi
	leal	-352(%ebp),%eax
	leal	-96(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-96(%ebp),%edx
	leal	-24(%ebp),%eax
	movl	%ebx,%ecx
	call	fpc_ansistr_concat
Lj332:
Lj302:
Lj300:
	jmp	Lj360
Lj278:
	leal	-20(%ebp),%edx
	movb	$0,%al
	call	SYSUTILS_GETDIRIO$BYTE$ANSISTRING
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj368
	movl	-4(%eax),%eax
Lj368:
	cmpl	$0,%eax
	jg	Lj367
	jmp	Lj366
Lj367:
	movl	-24(%ebp),%eax
	movb	(%eax),%al
	cmpb	$92,%al
	je	Lj365
	jmp	Lj366
Lj365:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj373
	movl	-4(%eax),%eax
Lj373:
	cmpl	$1,%eax
	jg	Lj372
	jmp	Lj370
Lj372:
	movl	-24(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$92,%al
	je	Lj371
	jmp	Lj370
Lj371:
	cmpb	$0,TC_SYSTEM_LFNSUPPORT
	jne	Lj369
	jmp	Lj370
Lj369:
	movl	$3,-12(%ebp)
	jmp	Lj377
	.balign 4,0x90
Lj376:
	incl	-12(%ebp)
Lj377:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj380
	movl	-4(%eax),%eax
Lj380:
	cmpl	-12(%ebp),%eax
	jge	Lj379
	jmp	Lj378
Lj379:
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$92,%al
	jne	Lj376
	jmp	Lj378
Lj378:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj383
	movl	-4(%eax),%eax
Lj383:
	cmpl	-12(%ebp),%eax
	jl	Lj381
	jmp	Lj382
Lj381:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj386
	movl	-4(%eax),%eax
Lj386:
	cmpl	$2,%eax
	je	Lj384
	jmp	Lj385
Lj384:
	movl	$2,-12(%ebp)
	jmp	Lj389
Lj385:
	movl	-24(%ebp),%edx
	leal	-24(%ebp),%eax
	movl	$_$SYSUTILS$_Ld49,%ecx
	call	fpc_ansistr_concat
Lj389:
	jmp	Lj396
Lj382:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj399
	movl	-4(%eax),%eax
Lj399:
	cmpl	-12(%ebp),%eax
	jg	Lj397
	jmp	Lj398
Lj397:
	movb	$1,-13(%ebp)
	.balign 4,0x90
Lj402:
	incl	-12(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj406
	movl	-4(%eax),%eax
Lj406:
	cmpl	-12(%ebp),%eax
	jl	Lj404
	jmp	Lj405
Lj405:
	movl	-24(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$92,%al
	je	Lj404
	jmp	Lj402
Lj404:
Lj398:
Lj396:
	jmp	Lj407
Lj370:
	leal	-96(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-96(%ebp)
	pushl	$_$SYSUTILS$_Ld50
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-608(%ebp)
	leal	-608(%ebp),%ecx
	leal	-352(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-352(%ebp),%eax
	leal	-96(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-96(%ebp),%edx
	movl	-24(%ebp),%ecx
	leal	-24(%ebp),%eax
	call	fpc_ansistr_concat
Lj407:
	jmp	Lj426
Lj366:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj429
	movl	-4(%eax),%eax
Lj429:
	cmpl	-12(%ebp),%eax
	je	Lj427
	jmp	Lj428
Lj427:
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%edx
	leal	-24(%ebp),%eax
	call	fpc_ansistr_concat
	jmp	Lj436
Lj428:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj439
	movl	-4(%eax),%eax
Lj439:
	testl	%eax,%eax
	je	Lj437
	jmp	Lj438
Lj437:
	movl	-20(%ebp),%edx
	leal	-24(%ebp),%eax
	movl	$_$SYSUTILS$_Ld49,%ecx
	call	fpc_ansistr_concat
	jmp	Lj446
Lj438:
	movl	-20(%ebp),%eax
	movl	%eax,-108(%ebp)
	movl	$_$SYSUTILS$_Ld49,%eax
	movl	%eax,-104(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-100(%ebp)
	leal	-108(%ebp),%edx
	leal	-24(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
Lj446:
Lj436:
Lj426:
Lj360:
	leal	-96(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%eax
	pushl	%eax
	movl	-24(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj459
	movl	-4(%ecx),%ecx
Lj459:
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-24(%ebp),%eax
	call	fpc_ansistr_copy
	movl	-96(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-96(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%edx
	movl	$_$SYSUTILS$_Ld52,%eax
	call	SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
	movl	%eax,-32(%ebp)
	jmp	Lj471
	.balign 4,0x90
Lj470:
	movl	-32(%ebp),%edx
	leal	-28(%ebp),%eax
	movl	$2,%ecx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	movl	-28(%ebp),%edx
	movl	$_$SYSUTILS$_Ld52,%eax
	call	SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
	movl	%eax,-32(%ebp)
Lj471:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj470
	jmp	Lj472
Lj472:
	movl	-28(%ebp),%edx
	movl	$_$SYSUTILS$_Ld53,%eax
	call	SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
	movl	%eax,-32(%ebp)
	jmp	Lj492
	.balign 4,0x90
Lj491:
	movl	-32(%ebp),%eax
	decl	%eax
	movl	%eax,-36(%ebp)
	jmp	Lj497
	.balign 4,0x90
Lj496:
	decl	-36(%ebp)
Lj497:
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj499
	jmp	Lj498
Lj499:
	movl	-28(%ebp),%edx
	movl	-36(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$92,%al
	jne	Lj496
	jmp	Lj498
Lj498:
	movl	-32(%ebp),%ecx
	movl	-36(%ebp),%eax
	subl	%eax,%ecx
	addl	$3,%ecx
	movl	-36(%ebp),%edx
	incl	%edx
	leal	-28(%ebp),%eax
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	movl	-28(%ebp),%edx
	movl	$_$SYSUTILS$_Ld53,%eax
	call	SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
	movl	%eax,-32(%ebp)
Lj492:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj491
	jmp	Lj493
Lj493:
	movl	-28(%ebp),%edx
	movl	$_$SYSUTILS$_Ld54,%eax
	call	SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj520
	jmp	Lj519
Lj520:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj521
	movl	-4(%eax),%eax
Lj521:
	subl	$2,%eax
	cmpl	-32(%ebp),%eax
	je	Lj518
	jmp	Lj519
Lj518:
	movl	-32(%ebp),%eax
	decl	%eax
	movl	%eax,-36(%ebp)
	jmp	Lj525
	.balign 4,0x90
Lj524:
	decl	-36(%ebp)
Lj525:
	movl	-36(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj527
	jmp	Lj526
Lj527:
	movl	-28(%ebp),%edx
	movl	-36(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$92,%al
	jne	Lj524
	jmp	Lj526
Lj526:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj528
	jmp	Lj529
Lj528:
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-28(%ebp)
	jmp	Lj532
Lj529:
	movl	-32(%ebp),%ecx
	movl	-36(%ebp),%eax
	subl	%eax,%ecx
	addl	$2,%ecx
	movl	-36(%ebp),%edx
	incl	%edx
	leal	-28(%ebp),%eax
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj532:
Lj519:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj541
	movl	-4(%eax),%eax
Lj541:
	cmpl	$1,%eax
	je	Lj539
	jmp	Lj540
Lj539:
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	cmpb	$46,%al
	je	Lj542
	jmp	Lj543
Lj542:
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-28(%ebp)
Lj543:
	jmp	Lj546
Lj540:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj551
	movl	-4(%eax),%eax
Lj551:
	testl	%eax,%eax
	jne	Lj550
	jmp	Lj548
Lj550:
	movl	-28(%ebp),%edx
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj552
	movl	-4(%eax),%eax
Lj552:
	movb	-1(%edx,%eax,1),%al
	cmpb	$46,%al
	je	Lj549
	jmp	Lj548
Lj549:
	movl	-28(%ebp),%edx
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj553
	movl	-4(%eax),%eax
Lj553:
	decl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$92,%al
	je	Lj547
	jmp	Lj548
Lj547:
	movl	-28(%ebp),%edx
	testl	%edx,%edx
	je	Lj556
	movl	-4(%edx),%edx
Lj556:
	decl	%edx
	leal	-28(%ebp),%eax
	movl	$2,%ecx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj548:
Lj546:
	jmp	Lj562
	.balign 4,0x90
Lj561:
	leal	-28(%ebp),%eax
	movl	$2,%ecx
	movl	$1,%edx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj562:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj572
	movl	-4(%eax),%eax
Lj572:
	cmpl	$2,%eax
	jge	Lj571
	jmp	Lj563
Lj571:
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	cmpb	$46,%al
	je	Lj570
	jmp	Lj563
Lj570:
	movl	-28(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$92,%al
	je	Lj561
	jmp	Lj563
Lj563:
	jmp	Lj574
	.balign 4,0x90
Lj573:
	leal	-28(%ebp),%eax
	movl	$3,%ecx
	movl	$1,%edx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj574:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj585
	movl	-4(%eax),%eax
Lj585:
	cmpl	$3,%eax
	jge	Lj584
	jmp	Lj575
Lj584:
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	cmpb	$46,%al
	je	Lj583
	jmp	Lj575
Lj583:
	movl	-28(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$46,%al
	je	Lj582
	jmp	Lj575
Lj582:
	movl	-28(%ebp),%eax
	movb	2(%eax),%al
	cmpb	$92,%al
	je	Lj573
	jmp	Lj575
Lj575:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj589
	movl	-4(%eax),%eax
Lj589:
	cmpl	$1,%eax
	je	Lj588
	jmp	Lj587
Lj588:
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	cmpb	$46,%al
	je	Lj586
	jmp	Lj587
Lj586:
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-28(%ebp)
Lj587:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj596
	movl	-4(%eax),%eax
Lj596:
	cmpl	$2,%eax
	je	Lj595
	jmp	Lj593
Lj595:
	movl	-28(%ebp),%eax
	movb	(%eax),%al
	cmpb	$46,%al
	je	Lj594
	jmp	Lj593
Lj594:
	movl	-28(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$46,%al
	je	Lj592
	jmp	Lj593
Lj592:
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-28(%ebp)
Lj593:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj601
	movl	-4(%eax),%eax
Lj601:
	testl	%eax,%eax
	je	Lj599
	jmp	Lj600
Lj599:
	leal	-96(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-96(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-96(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$92,%al
	jne	Lj612
	jmp	Lj613
Lj612:
	movl	-24(%ebp),%edx
	leal	-24(%ebp),%eax
	movl	$_$SYSUTILS$_Ld49,%ecx
	call	fpc_ansistr_concat
Lj613:
	jmp	Lj620
Lj600:
	leal	-96(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-24(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-96(%ebp),%edx
	movl	-28(%ebp),%ecx
	leal	-24(%ebp),%eax
	call	fpc_ansistr_concat
Lj620:
	movl	-24(%ebp),%edx
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj640
	movl	-4(%eax),%eax
Lj640:
	movb	-1(%edx,%eax,1),%al
	cmpb	$92,%al
	je	Lj639
	jmp	Lj636
Lj639:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj642
	movl	-4(%eax),%eax
Lj642:
	cmpl	-12(%ebp),%eax
	jg	Lj638
	jmp	Lj641
Lj641:
	cmpb	$0,-13(%ebp)
	jne	Lj643
	jmp	Lj636
Lj643:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj644
	movl	-4(%eax),%eax
Lj644:
	cmpl	-12(%ebp),%eax
	je	Lj638
	jmp	Lj636
Lj638:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj645
	movl	-4(%eax),%eax
Lj645:
	testl	%eax,%eax
	jne	Lj637
	jmp	Lj636
Lj637:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj646
	movl	-4(%eax),%eax
Lj646:
	movb	-1(%edx,%eax,1),%al
	cmpb	$92,%al
	jne	Lj635
	jmp	Lj636
Lj635:
	movl	-24(%ebp),%edx
	testl	%edx,%edx
	je	Lj649
	movl	-4(%edx),%edx
Lj649:
	leal	-24(%ebp),%eax
	movl	$1,%ecx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj636:
	movl	-24(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-24(%ebp),%eax
	movl	%eax,(%ebx)
Lj249:
	call	FPC_POPADDRSTACK
	leal	-96(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-96(%ebp)
	leal	-80(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-80(%ebp)
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-24(%ebp)
	leal	-28(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-28(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj250
	call	FPC_RERAISE
Lj250:
	movl	-612(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXPANDFILENAME$ANSISTRING$$ANSISTRING
SYSUTILS_EXPANDFILENAME$ANSISTRING$$ANSISTRING:
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
	jne	Lj676
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-12(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	leal	-12(%ebp),%eax
	call	SYSUTILS_DODIRSEPARATORS$ANSISTRING
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSUTILS_FEXPAND$ANSISTRING$$ANSISTRING
Lj676:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj677
	call	FPC_RERAISE
Lj677:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXPANDUNCFILENAME$ANSISTRING$$ANSISTRING
SYSUTILS_EXPANDUNCFILENAME$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_EXPANDFILENAME$ANSISTRING$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXPANDFILENAMECASE$ANSISTRING$TFILENAMECASEMATCH$$ANSISTRING
SYSUTILS_EXPANDFILENAMECASE$ANSISTRING$TFILENAMECASEMATCH$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$108,%esp
	movl	%ebx,-108(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$INIT_SYSUTILS_TSEARCHREC,%edx
	leal	-44(%ebp),%eax
	call	fpc_initialize
	movl	$0,-52(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-104(%ebp)
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj703
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_EXPANDFILENAME$ANSISTRING$$ANSISTRING
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj710
	jmp	Lj711
Lj710:
	movl	-8(%ebp),%eax
	movl	$1,(%eax)
	jmp	Lj714
Lj711:
	movl	$INIT_SYSUTILS_TSEARCHREC,%edx
	leal	-44(%ebp),%eax
	call	FPC_DECREF
	leal	-44(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$63,%edx
	call	SYSUTILS_FINDFIRST$ANSISTRING$LONGINT$TSEARCHREC$$LONGINT
	testl	%eax,%eax
	je	Lj715
	jmp	Lj717
Lj717:
	movl	-4(%ebp),%eax
	call	SYSUTILS_DIRECTORYEXISTS$ANSISTRING$$BOOLEAN
	testb	%al,%al
	jne	Lj715
	jmp	Lj716
Lj715:
	movl	-8(%ebp),%eax
	movl	$1,(%eax)
	leal	-104(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING
	movl	-104(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_concat
	leal	-44(%ebp),%eax
	call	SYSUTILS_FINDCLOSE$TSEARCHREC
	jmp	Lj740
Lj716:
	leal	-44(%ebp),%eax
	call	SYSUTILS_FINDCLOSE$TSEARCHREC
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	cmpb	$0,TC_SYSTEM_FILENAMECASESENSITIVE
	jne	Lj745
	jmp	Lj746
Lj745:
	movb	$0,-45(%ebp)
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-104(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_EXTRACTFILEDRIVE$ANSISTRING$$ANSISTRING
	movl	-104(%ebp),%eax
	testl	%eax,%eax
	je	Lj757
	movl	-4(%eax),%eax
Lj757:
	incl	%eax
	movl	%eax,-56(%ebp)
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj760
	movl	-4(%edx),%edx
Lj760:
	movl	%edx,%eax
	sarl	$31,%eax
	movl	-56(%ebp),%ecx
	movl	$0,%ebx
	cmpl	%ebx,%eax
	jg	Lj758
	jl	Lj759
	cmpl	%ecx,%edx
	ja	Lj758
	jmp	Lj759
Lj758:
	jmp	Lj762
	.balign 4,0x90
Lj761:
	incl	-56(%ebp)
Lj762:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj765
	movl	-4(%edx),%edx
Lj765:
	movl	%edx,%eax
	sarl	$31,%eax
	movl	-56(%ebp),%ebx
	movl	$0,%ecx
	cmpl	%ecx,%eax
	jg	Lj764
	jl	Lj763
	cmpl	%ebx,%edx
	jae	Lj764
	jmp	Lj763
Lj764:
	movl	-4(%ebp),%edx
	movl	-56(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj761
	jmp	Lj763
Lj763:
	leal	-60(%ebp),%eax
	pushl	%eax
	movl	-56(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	leal	-104(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj780
	movl	-4(%ecx),%ecx
Lj780:
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj781
	movl	-4(%eax),%eax
Lj781:
	subl	%eax,%ecx
	movl	-56(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_copy
	movl	-104(%ebp),%ecx
	movl	-60(%ebp),%edx
	movl	%ebp,%eax
	call	SYSUTILS_EXPANDFILENAMECASE$crc45559299_TRYCASE$ANSISTRING$ANSISTRING
	movzbl	-45(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj790
	jmp	Lj791
Lj790:
	leal	-104(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-104(%ebp)
	leal	-104(%ebp),%edx
	movl	-52(%ebp),%eax
	call	SYSUTILS_EXPANDFILENAME$ANSISTRING$$ANSISTRING
	movl	-104(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-104(%ebp),%eax
	movl	%eax,(%ebx)
	movzbl	-45(%ebp),%eax
	cmpl	$1,%eax
	je	Lj798
	jmp	Lj799
Lj798:
	movl	-8(%ebp),%eax
	movl	$2,(%eax)
	jmp	Lj802
Lj799:
	movl	-8(%ebp),%eax
	movl	$3,(%eax)
Lj802:
Lj791:
Lj759:
Lj746:
Lj740:
Lj714:
Lj703:
	call	FPC_POPADDRSTACK
	leal	-104(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-104(%ebp)
	movl	$INIT_SYSUTILS_TSEARCHREC,%edx
	leal	-44(%ebp),%eax
	call	fpc_finalize
	leal	-52(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-52(%ebp)
	leal	-60(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-60(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj704
	call	FPC_RERAISE
Lj704:
	movl	-108(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_EXPANDFILENAMECASE$crc45559299_TRYCASE$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$128,%esp
	movl	%ebx,-128(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$INIT_SYSUTILS_TSEARCHREC,%edx
	leal	-44(%ebp),%eax
	call	fpc_initialize
	movl	$0,-56(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-112(%ebp)
	movl	$0,-108(%ebp)
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj825
	movl	$1,-52(%ebp)
	jmp	Lj831
	.balign 4,0x90
Lj830:
	incl	-52(%ebp)
Lj831:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj834
	movl	-4(%edx),%edx
Lj834:
	movl	%edx,%eax
	sarl	$31,%eax
	movl	-52(%ebp),%ecx
	movl	$0,%ebx
	cmpl	%ebx,%eax
	jg	Lj833
	jl	Lj832
	cmpl	%ecx,%edx
	jae	Lj833
	jmp	Lj832
Lj833:
	movl	-8(%ebp),%eax
	movl	-52(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jnc	Lj830
	jmp	Lj832
Lj832:
	leal	-56(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	decl	%ecx
	movl	-8(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	jmp	Lj844
	.balign 4,0x90
Lj843:
	incl	-52(%ebp)
Lj844:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	je	Lj847
	movl	-4(%edx),%edx
Lj847:
	movl	%edx,%eax
	sarl	$31,%eax
	movl	-52(%ebp),%ecx
	movl	$0,%ebx
	cmpl	%ebx,%eax
	jg	Lj846
	jl	Lj845
	cmpl	%ecx,%edx
	jae	Lj846
	jmp	Lj845
Lj846:
	movl	-8(%ebp),%eax
	movl	-52(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj843
	jmp	Lj845
Lj845:
	leal	-60(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj852
	movl	-4(%ecx),%ecx
Lj852:
	movl	-52(%ebp),%eax
	decl	%eax
	subl	%eax,%ecx
	movl	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_copy
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj857
	jmp	Lj859
Lj859:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj860
	movl	-4(%eax),%eax
Lj860:
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj857
	jmp	Lj858
Lj857:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,-64(%ebp)
	jmp	Lj863
Lj858:
	movl	-4(%ebp),%edx
	leal	-64(%ebp),%eax
	movl	$_$SYSUTILS$_Ld49,%ecx
	call	fpc_ansistr_concat
Lj863:
	leal	-108(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-108(%ebp)
	movl	-64(%ebp),%edx
	leal	-108(%ebp),%eax
	movl	$_$SYSUTILS$_Ld55,%ecx
	call	fpc_ansistr_concat
	movl	-108(%ebp),%ebx
	movl	$INIT_SYSUTILS_TSEARCHREC,%edx
	leal	-44(%ebp),%eax
	call	FPC_DECREF
	leal	-44(%ebp),%ecx
	movl	$63,%edx
	movl	%ebx,%eax
	call	SYSUTILS_FINDFIRST$ANSISTRING$LONGINT$TSEARCHREC$$LONGINT
	movl	%eax,-48(%ebp)
	jmp	Lj885
	.balign 4,0x90
Lj884:
	leal	-108(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	movl	-24(%ebp),%eax
	call	SYSTEM_UPCASE$ANSISTRING$$ANSISTRING
	movl	-108(%ebp),%ebx
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%edx
	movl	-56(%ebp),%eax
	call	SYSTEM_UPCASE$ANSISTRING$$ANSISTRING
	movl	-112(%ebp),%eax
	movl	%ebx,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	je	Lj887
	jmp	Lj888
Lj887:
	movl	-56(%ebp),%edx
	testl	%edx,%edx
	je	Lj903
	movl	-4(%edx),%edx
Lj903:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj904
	movl	-4(%eax),%eax
Lj904:
	cmpl	%eax,%edx
	je	Lj901
	jmp	Lj902
Lj901:
	movl	-12(%ebp),%eax
	incb	-45(%eax)
	movl	-12(%ebp),%eax
	movzbl	-45(%eax),%eax
	cmpl	$1,%eax
	je	Lj905
	jmp	Lj906
Lj905:
	movl	-12(%ebp),%eax
	leal	-52(%eax),%eax
	movl	-24(%ebp),%ecx
	movl	-64(%ebp),%edx
	call	fpc_ansistr_concat
Lj906:
	jmp	Lj913
Lj902:
	movl	-28(%ebp),%eax
	andl	$16,%eax
	cmpl	$16,%eax
	je	Lj914
	jmp	Lj915
Lj914:
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-64(%ebp),%eax
	movl	%eax,-124(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-120(%ebp)
	movl	$_$SYSUTILS$_Ld49,%eax
	movl	%eax,-116(%ebp)
	leal	-124(%ebp),%edx
	leal	-112(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	movl	-112(%ebp),%edx
	movl	-60(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	SYSUTILS_EXPANDFILENAMECASE$crc45559299_TRYCASE$ANSISTRING$ANSISTRING
Lj915:
Lj913:
Lj888:
	movl	-12(%ebp),%eax
	movzbl	-45(%eax),%eax
	cmpl	$2,%eax
	jl	Lj928
	jmp	Lj929
Lj928:
	leal	-44(%ebp),%eax
	call	SYSUTILS_FINDNEXT$TSEARCHREC$$LONGINT
	movl	%eax,-48(%ebp)
Lj929:
Lj885:
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj934
	jmp	Lj886
Lj934:
	movl	-12(%ebp),%eax
	movzbl	-45(%eax),%eax
	cmpl	$2,%eax
	jl	Lj884
	jmp	Lj886
Lj886:
	leal	-44(%ebp),%eax
	call	SYSUTILS_FINDCLOSE$TSEARCHREC
Lj825:
	call	FPC_POPADDRSTACK
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	leal	-108(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-108(%ebp)
	movl	$INIT_SYSUTILS_TSEARCHREC,%edx
	leal	-44(%ebp),%eax
	call	fpc_finalize
	leal	-56(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-60(%ebp)
	leal	-64(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-64(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj826
	call	FPC_RERAISE
Lj826:
	movl	-128(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXTRACTRELATIVEPATH$ANSISTRING$ANSISTRING$$ANSISTRING
SYSUTILS_EXTRACTRELATIVEPATH$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1136,%esp
	movl	%ebx,-1136(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-1120(%ebp)
	movl	$0,-1116(%ebp)
	movl	$0,-1112(%ebp)
	leal	-1080(%ebp),%ecx
	leal	-1104(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj965
	leal	-1112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-1112(%ebp)
	leal	-1116(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-1116(%ebp)
	leal	-1116(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSUTILS_EXTRACTFILEDRIVE$ANSISTRING$$ANSISTRING
	movl	-1116(%ebp),%eax
	leal	-1112(%ebp),%edx
	call	SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING
	movl	-1112(%ebp),%ebx
	leal	-1116(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-1116(%ebp)
	leal	-1120(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-1120(%ebp)
	leal	-1120(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_EXTRACTFILEDRIVE$ANSISTRING$$ANSISTRING
	movl	-1120(%ebp),%eax
	leal	-1116(%ebp),%edx
	call	SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING
	movl	-1116(%ebp),%eax
	movl	%ebx,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	jne	Lj968
	jmp	Lj969
Lj968:
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj965
Lj969:
	leal	-1120(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-1120(%ebp)
	leal	-1116(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-1116(%ebp)
	leal	-1116(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING
	movl	-1116(%ebp),%eax
	leal	-1120(%ebp),%edx
	call	SYSUTILS_EXCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
	movl	-1120(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-1120(%ebp),%eax
	movl	%eax,-16(%ebp)
	leal	-1120(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-1120(%ebp)
	leal	-1116(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-1116(%ebp)
	leal	-1116(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING
	movl	-1116(%ebp),%eax
	leal	-1120(%ebp),%edx
	call	SYSUTILS_EXCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
	movl	-1120(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-1120(%ebp),%eax
	movl	%eax,-20(%ebp)
	leal	-552(%ebp),%edx
	leal	-16(%ebp),%eax
	movl	$128,%ecx
	call	SYSUTILS_GETDIRS$ANSISTRING$array_of_PCHAR$$LONGINT
	movl	%eax,-24(%ebp)
	leal	-1068(%ebp),%edx
	leal	-20(%ebp),%eax
	movl	$128,%ecx
	call	SYSUTILS_GETDIRS$ANSISTRING$array_of_PCHAR$$LONGINT
	movl	%eax,-28(%ebp)
	movl	$1,-32(%ebp)
	jmp	Lj1031
	.balign 4,0x90
Lj1030:
	movl	-32(%ebp),%eax
	movl	-556(%ebp,%eax,4),%edx
	movl	-32(%ebp),%eax
	movl	-1072(%ebp,%eax,4),%eax
	call	SYSUTILS_STRICOMP$PCHAR$PCHAR$$LONGINT
	testl	%eax,%eax
	je	Lj1033
	jmp	Lj1034
Lj1033:
	incl	-32(%ebp)
	jmp	Lj1039
Lj1034:
	jmp	Lj1032
Lj1039:
Lj1031:
	movl	-32(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jle	Lj1040
	jmp	Lj1032
Lj1040:
	movl	-32(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj1030
	jmp	Lj1032
Lj1032:
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-24(%ebp),%ebx
	movl	-32(%ebp),%eax
	movl	%eax,-36(%ebp)
	cmpl	-36(%ebp),%ebx
	jl	Lj1044
	decl	-36(%ebp)
	.balign 4,0x90
Lj1045:
	incl	-36(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$_$SYSUTILS$_Ld56,%ecx
	call	fpc_ansistr_concat
	cmpl	-36(%ebp),%ebx
	jg	Lj1045
Lj1044:
	movl	-28(%ebp),%ebx
	movl	-32(%ebp),%eax
	movl	%eax,-36(%ebp)
	cmpl	-36(%ebp),%ebx
	jl	Lj1053
	decl	-36(%ebp)
	.balign 4,0x90
Lj1054:
	incl	-36(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-1132(%ebp)
	leal	-1120(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-1120(%ebp)
	movl	-36(%ebp),%eax
	movl	-1072(%ebp,%eax,4),%eax
	leal	-1120(%ebp),%edx
	call	fpc_pchar_to_ansistr
	movl	-1120(%ebp),%eax
	movl	%eax,-1128(%ebp)
	movl	$_$SYSUTILS$_Ld49,%eax
	movl	%eax,-1124(%ebp)
	leal	-1132(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	cmpl	-36(%ebp),%ebx
	jg	Lj1054
Lj1053:
	leal	-1120(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-1120(%ebp)
	leal	-1120(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSUTILS_EXTRACTFILENAME$ANSISTRING$$ANSISTRING
	movl	-1120(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_concat
Lj965:
	call	FPC_POPADDRSTACK
	leal	-1120(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-1120(%ebp)
	leal	-1116(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-1116(%ebp)
	leal	-1112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-1112(%ebp)
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj966
	call	FPC_RERAISE
Lj966:
	movl	-1136(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_DODIRSEPARATORS$ANSISTRING
SYSUTILS_DODIRSEPARATORS$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%ebx
	testl	%ebx,%ebx
	je	Lj1092
	movl	-4(%ebx),%ebx
Lj1092:
	movl	$1,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj1090
	decl	-8(%ebp)
	.balign 4,0x90
Lj1091:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj1093
	jmp	Lj1094
Lj1093:
	movl	-4(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-8(%ebp),%edx
	movb	$92,-1(%eax,%edx,1)
Lj1094:
	cmpl	-8(%ebp),%ebx
	jg	Lj1091
Lj1090:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_SETDIRSEPARATORS$ANSISTRING$$ANSISTRING
SYSUTILS_SETDIRSEPARATORS$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
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
	call	SYSUTILS_DODIRSEPARATORS$ANSISTRING
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GETDIRS$ANSISTRING$array_of_PCHAR$$LONGINT
SYSUTILS_GETDIRS$ANSISTRING$array_of_PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$1,-20(%ebp)
	movl	$-1,-16(%ebp)
	jmp	Lj1112
	.balign 4,0x90
Lj1111:
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj1116
	jmp	Lj1115
Lj1116:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1117
	movl	-4(%eax),%eax
Lj1117:
	cmpl	-20(%ebp),%eax
	jg	Lj1114
	jmp	Lj1115
Lj1114:
	movl	-4(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-20(%ebp),%edx
	movb	$0,-1(%eax,%edx,1)
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	leal	-1(%edx,%eax,1),%edx
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%eax
	movl	%edx,(%ecx,%eax,4)
Lj1115:
	incl	-20(%ebp)
Lj1112:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1124
	movl	-4(%eax),%eax
Lj1124:
	cmpl	-20(%ebp),%eax
	jge	Lj1111
	jmp	Lj1113
Lj1113:
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	jg	Lj1125
	jmp	Lj1126
Lj1125:
	incl	-16(%ebp)
Lj1126:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING:
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
	je	Lj1133
	movl	-4(%eax),%eax
Lj1133:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1134
	jmp	Lj1136
Lj1136:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jnc	Lj1134
	jmp	Lj1135
Lj1134:
	movl	-8(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	$_$SYSUTILS$_Ld49,%ecx
	call	fpc_ansistr_concat
Lj1135:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_INCLUDETRAILINGBACKSLASH$ANSISTRING$$ANSISTRING
SYSUTILS_INCLUDETRAILINGBACKSLASH$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXCLUDETRAILINGBACKSLASH$ANSISTRING$$ANSISTRING
SYSUTILS_EXCLUDETRAILINGBACKSLASH$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_EXCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
SYSUTILS_EXCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1159
	movl	-4(%eax),%eax
Lj1159:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1162
	jmp	Lj1161
Lj1162:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj1160
	jmp	Lj1161
Lj1160:
	decl	-12(%ebp)
Lj1161:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_INCLUDELEADINGPATHDELIMITER$ANSISTRING$$ANSISTRING
SYSUTILS_INCLUDELEADINGPATHDELIMITER$ANSISTRING$$ANSISTRING:
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
	je	Lj1177
	movl	-4(%eax),%eax
Lj1177:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1178
	jmp	Lj1180
Lj1180:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jnc	Lj1178
	jmp	Lj1179
Lj1178:
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	movl	$_$SYSUTILS$_Ld49,%edx
	call	fpc_ansistr_concat
Lj1179:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXCLUDELEADINGPATHDELIMITER$ANSISTRING$$ANSISTRING
SYSUTILS_EXCLUDELEADINGPATHDELIMITER$ANSISTRING$$ANSISTRING:
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
	je	Lj1193
	movl	-4(%eax),%eax
Lj1193:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1196
	jmp	Lj1195
Lj1196:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movzbl	(%eax),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj1194
	jmp	Lj1195
Lj1194:
	movl	-8(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj1195:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ISPATHDELIMITER$ANSISTRING$LONGINT$$BOOLEAN
SYSUTILS_ISPATHDELIMITER$ANSISTRING$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1208
	jmp	Lj1206
Lj1208:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1209
	movl	-4(%eax),%eax
Lj1209:
	cmpl	-8(%ebp),%eax
	jge	Lj1207
	jmp	Lj1206
Lj1207:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj1205
	jmp	Lj1206
Lj1205:
	movb	$1,-9(%ebp)
	jmp	Lj1210
Lj1206:
	movb	$0,-9(%ebp)
Lj1210:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_CONCATPATHS$array_of_ANSISTRING$$ANSISTRING
SYSUTILS_CONCATPATHS$array_of_ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1213
	movl	-8(%ebp),%eax
	incl	%eax
	cmpl	$0,%eax
	jg	Lj1216
	jmp	Lj1217
Lj1216:
	movl	-4(%ebp),%esi
	movl	(%esi),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	(%esi),%eax
	movl	%eax,(%ebx)
	movl	-8(%ebp),%ebx
	incl	%ebx
	decl	%ebx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj1221
	decl	-16(%ebp)
	.balign 4,0x90
Lj1222:
	incl	-16(%ebp)
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	leal	-60(%ebp),%edx
	call	SYSUTILS_EXCLUDELEADINGPATHDELIMITER$ANSISTRING$$ANSISTRING
	movl	-60(%ebp),%esi
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
	movl	-64(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%esi,%ecx
	call	fpc_ansistr_concat
	cmpl	-16(%ebp),%ebx
	jg	Lj1222
Lj1221:
	jmp	Lj1237
Lj1217:
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
Lj1237:
Lj1213:
	call	FPC_POPADDRSTACK
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj1214
	call	FPC_RERAISE
Lj1214:
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GETFILEHANDLE$file$$LONGINT
SYSUTILS_GETFILEHANDLE$file$$LONGINT:
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
.globl	SYSUTILS_GETFILEHANDLE$TEXT$$LONGINT
SYSUTILS_GETFILEHANDLE$TEXT$$LONGINT:
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
.globl	SYSUTILS_FILESEARCH$ANSISTRING$ANSISTRING$TFILESEARCHOPTIONS$$ANSISTRING
SYSUTILS_FILESEARCH$ANSISTRING$ANSISTRING$TFILESEARCHOPTIONS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-64(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1250
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSUTILS_SETDIRSEPARATORS$ANSISTRING$$ANSISTRING
	movl	-64(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-64(%ebp),%eax
	movl	%eax,-20(%ebp)
	testl	$1,-12(%ebp)
	jne	Lj1264
	jmp	Lj1262
Lj1264:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj1263
	jmp	Lj1262
Lj1263:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN
	testb	%al,%al
	jne	Lj1261
	jmp	Lj1262
Lj1261:
	jmp	Lj1250
Lj1262:
	jmp	Lj1268
	.balign 4,0x90
Lj1267:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj1270
	jmp	Lj1271
Lj1270:
	jmp	Lj1269
Lj1271:
	movl	-20(%ebp),%edx
	movb	$59,%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1278
	jmp	Lj1279
Lj1278:
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	decl	%ecx
	movl	-20(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-16(%ebp),%ecx
	leal	-20(%ebp),%eax
	movl	$1,%edx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	jmp	Lj1294
Lj1279:
	movl	-20(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-20(%ebp),%eax
	movl	%eax,(%ebx)
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
Lj1294:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj1299
	jmp	Lj1300
Lj1299:
	testl	$2,-12(%ebp)
	jne	Lj1304
	jmp	Lj1302
Lj1304:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$34,%al
	je	Lj1303
	jmp	Lj1302
Lj1303:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1305
	movl	-4(%eax),%eax
Lj1305:
	movb	-1(%edx,%eax,1),%al
	cmpb	$34,%al
	je	Lj1301
	jmp	Lj1302
Lj1301:
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	movl	(%eax),%ecx
	testl	%ecx,%ecx
	je	Lj1312
	movl	-4(%ecx),%ecx
Lj1312:
	subl	$2,%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	$2,%edx
	call	fpc_ansistr_copy
	movl	-64(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-64(%ebp),%eax
	movl	%eax,(%ebx)
Lj1302:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj1317
	jmp	Lj1318
Lj1317:
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
	movl	-64(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	8(%ebp),%eax
	call	fpc_ansistr_concat
Lj1318:
Lj1300:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj1331
	jmp	Lj1330
Lj1331:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	call	SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN
	testb	%al,%al
	jne	Lj1329
	jmp	Lj1330
Lj1329:
	jmp	Lj1250
Lj1330:
Lj1268:
	jmp	Lj1267
Lj1269:
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
Lj1250:
	call	FPC_POPADDRSTACK
	leal	-64(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj1251
	call	FPC_RERAISE
Lj1251:
	movl	-68(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_FILESEARCH$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING
SYSUTILS_FILESEARCH$ANSISTRING$ANSISTRING$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj1344
	jmp	Lj1345
Lj1344:
	movl	8(%ebp),%eax
	pushl	%eax
	movl	$1,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FILESEARCH$ANSISTRING$ANSISTRING$TFILESEARCHOPTIONS$$ANSISTRING
	jmp	Lj1354
Lj1345:
	movl	8(%ebp),%eax
	pushl	%eax
	movl	$0,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FILESEARCH$ANSISTRING$ANSISTRING$TFILESEARCHOPTIONS$$ANSISTRING
Lj1354:
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_EXESEARCH$ANSISTRING$ANSISTRING$$ANSISTRING
SYSUTILS_EXESEARCH$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
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
	jne	Lj1365
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj1370
	jmp	Lj1371
Lj1370:
	leal	-16(%ebp),%edx
	movl	$_$SYSUTILS$_Ld57,%eax
	call	SYSUTILS_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING
Lj1371:
	movl	$3,-20(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FILESEARCH$ANSISTRING$ANSISTRING$TFILESEARCHOPTIONS$$ANSISTRING
Lj1365:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj1366
	call	FPC_RERAISE
Lj1366:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FILEISREADONLY$ANSISTRING$$BOOLEAN
SYSUTILS_FILEISREADONLY$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSUTILS_FILEGETATTR$ANSISTRING$$LONGINT
	andl	$1,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FILESETDATE$ANSISTRING$LONGINT$$LONGINT
SYSUTILS_FILESETDATE$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	SYSUTILS_FILEOPEN$ANSISTRING$LONGINT$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	TC_SYSUTILS_FEINVALIDHANDLE,%eax
	jne	Lj1406
	jmp	Lj1407
Lj1406:
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj1408
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	SYSUTILS_FILESETDATE$LONGINT$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
Lj1408:
	call	FPC_POPADDRSTACK
	movl	-16(%ebp),%eax
	call	SYSUTILS_FILECLOSE$LONGINT
	popl	%eax
	testl	%eax,%eax
	je	Lj1409
	decl	%eax
	testl	%eax,%eax
	je	Lj1410
Lj1410:
	call	FPC_RERAISE
Lj1409:
	jmp	Lj1420
Lj1407:
	movl	$-1,-12(%ebp)
Lj1420:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_NEWSTR$ANSISTRING$$PSTRING
SYSUTILS_NEWSTR$ANSISTRING$$PSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1425
	jmp	Lj1426
Lj1425:
	movl	$0,-8(%ebp)
	jmp	Lj1429
Lj1426:
	movl	$4,%eax
	call	fpc_getmem
	movl	$0,(%eax)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1438
	jmp	Lj1439
Lj1438:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
Lj1439:
Lj1429:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_DISPOSESTR$PSTRING
SYSUTILS_DISPOSESTR$PSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1444
	jmp	Lj1445
Lj1444:
	movl	-4(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	call	fpc_freemem
	movl	$0,-4(%ebp)
Lj1445:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_DISPOSESTR$PSHORTSTRING
SYSUTILS_DISPOSESTR$PSHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1456
	jmp	Lj1457
Lj1456:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$LONGWORD
Lj1457:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ASSIGNSTR$PSTRING$ANSISTRING
SYSUTILS_ASSIGNSTR$PSTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%eax
	movl	(%eax),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_APPENDSTR$ANSISTRING$ANSISTRING
SYSUTILS_APPENDSTR$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_concat
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING
SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
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
	cmpl	$0,(%eax)
	jne	Lj1479
	jmp	Lj1478
Lj1478:
	jmp	Lj1474
Lj1479:
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_UNIQUE
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1487
	movl	-4(%eax),%eax
Lj1487:
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj1485
	decl	-12(%ebp)
	.balign 4,0x90
Lj1486:
	incl	-12(%ebp)
	movl	-16(%ebp),%edx
	movzbl	(%edx),%edx
	subl	$97,%edx
	cmpl	$26,%edx
	jb	Lj1490
Lj1490:
	jc	Lj1488
	jmp	Lj1489
Lj1488:
	movl	-16(%ebp),%edx
	movzbl	(%edx),%edx
	subl	$32,%edx
	movl	-16(%ebp),%ecx
	movb	%dl,(%ecx)
Lj1489:
	incl	-16(%ebp)
	cmpl	-12(%ebp),%eax
	jg	Lj1486
Lj1485:
Lj1474:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING
SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
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
	cmpl	$0,(%eax)
	jne	Lj1498
	jmp	Lj1497
Lj1497:
	jmp	Lj1493
Lj1498:
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_UNIQUE
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj1506
	movl	-4(%eax),%eax
Lj1506:
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%eax
	jl	Lj1504
	decl	-12(%ebp)
	.balign 4,0x90
Lj1505:
	incl	-12(%ebp)
	movl	-16(%ebp),%edx
	movzbl	(%edx),%edx
	subl	$65,%edx
	cmpl	$26,%edx
	jb	Lj1509
Lj1509:
	jc	Lj1507
	jmp	Lj1508
Lj1507:
	movl	-16(%ebp),%edx
	movzbl	(%edx),%edx
	addl	$32,%edx
	movl	-16(%ebp),%ecx
	movb	%dl,(%ecx)
Lj1508:
	incl	-16(%ebp)
	cmpl	-12(%ebp),%eax
	jg	Lj1505
Lj1504:
Lj1493:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_LOWERCASE$VARIANT$$ANSISTRING
SYSUTILS_LOWERCASE$VARIANT$$ANSISTRING:
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
	jne	Lj1514
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_assign$VARIANT$$ANSISTRING
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	SYSUTILS_LOWERCASE$ANSISTRING$$ANSISTRING
Lj1514:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj1515
	call	FPC_RERAISE
Lj1515:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_COMPARESTR$ANSISTRING$ANSISTRING$$LONGINT
SYSUTILS_COMPARESTR$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1531
	movl	-4(%eax),%eax
Lj1531:
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1534
	movl	-4(%eax),%eax
Lj1534:
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jg	Lj1535
	jmp	Lj1536
Lj1535:
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1539
Lj1536:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1539:
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_COMPAREMEMRANGE$POINTER$POINTER$LONGWORD$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1550
	jmp	Lj1551
Lj1550:
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
Lj1551:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_COMPAREMEMRANGE$POINTER$POINTER$LONGWORD$$LONGINT
SYSUTILS_COMPAREMEMRANGE$POINTER$POINTER$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%ecx
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_COMPAREMEM$POINTER$POINTER$LONGWORD$$BOOLEAN
SYSUTILS_COMPAREMEM$POINTER$POINTER$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%ecx
	call	SYSTEM_COMPAREBYTE$formal$formal$LONGINT$$LONGINT
	testl	%eax,%eax
	seteb	-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1578
	movl	-4(%eax),%eax
Lj1578:
	movl	%eax,-24(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1581
	movl	-4(%eax),%eax
Lj1581:
	movl	%eax,-28(%ebp)
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jg	Lj1582
	jmp	Lj1583
Lj1582:
	movl	-28(%ebp),%eax
	movl	%eax,-20(%ebp)
	jmp	Lj1586
Lj1583:
	movl	-24(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj1586:
	movl	$0,-16(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1591
	jmp	Lj1592
Lj1591:
	movl	-4(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj1598
	.balign 4,0x90
Lj1597:
	movl	-36(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-29(%ebp)
	movl	-40(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-30(%ebp)
	movb	-29(%ebp),%al
	cmpb	-30(%ebp),%al
	jne	Lj1604
	jmp	Lj1605
Lj1604:
	movzbl	-29(%ebp),%eax
	subl	$97,%eax
	cmpl	$26,%eax
	jb	Lj1608
Lj1608:
	jc	Lj1606
	jmp	Lj1607
Lj1606:
	subb	$32,-29(%ebp)
Lj1607:
	movzbl	-30(%ebp),%eax
	subl	$97,%eax
	cmpl	$26,%eax
	jb	Lj1611
Lj1611:
	jc	Lj1609
	jmp	Lj1610
Lj1609:
	subb	$32,-30(%ebp)
Lj1610:
	movb	-29(%ebp),%al
	cmpb	-30(%ebp),%al
	jne	Lj1612
	jmp	Lj1613
Lj1612:
	jmp	Lj1599
Lj1613:
Lj1605:
	incl	-36(%ebp)
	incl	-40(%ebp)
	incl	-16(%ebp)
Lj1598:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj1597
	jmp	Lj1599
Lj1599:
Lj1592:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jl	Lj1614
	jmp	Lj1615
Lj1614:
	movzbl	-29(%ebp),%edx
	movzbl	-30(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
	jmp	Lj1618
Lj1615:
	movl	-24(%ebp),%edx
	movl	-28(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
Lj1618:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN
SYSUTILS_SAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_GENERICANSIUPPERCASE$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1633
	movl	-4(%eax),%eax
Lj1633:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-12(%ebp),%ebx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj1639
	decl	-16(%ebp)
	.balign 4,0x90
Lj1640:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%esi
	movl	-16(%ebp),%edx
	movzbl	-1(%esi,%edx,1),%edx
	movb	U_SYSUTILS_UPPERCASETABLE(,%edx,1),%dl
	movb	%dl,-1(%eax,%ecx,1)
	cmpl	-16(%ebp),%ebx
	jg	Lj1640
Lj1639:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_GENERICANSILOWERCASE$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1649
	movl	-4(%eax),%eax
Lj1649:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-12(%ebp),%ebx
	movl	$1,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj1655
	decl	-16(%ebp)
	.balign 4,0x90
Lj1656:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%esi
	movl	-16(%ebp),%edx
	movzbl	-1(%esi,%edx,1),%edx
	movb	U_SYSUTILS_LOWERCASETABLE(,%edx,1),%dl
	movb	%dl,-1(%eax,%ecx,1)
	cmpl	-16(%ebp),%ebx
	jg	Lj1656
Lj1655:
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_GENERICANSICOMPARESTR$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1667
	movl	-4(%eax),%eax
Lj1667:
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1670
	movl	-4(%eax),%eax
Lj1670:
	movl	%eax,-24(%ebp)
	movl	$1,-16(%ebp)
	jmp	Lj1674
	.balign 4,0x90
Lj1673:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%ecx
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	subl	%eax,%ecx
	movl	%ecx,-12(%ebp)
	incl	-16(%ebp)
Lj1674:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1678
	jmp	Lj1675
Lj1678:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj1679
	jmp	Lj1675
Lj1679:
	movl	-16(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj1673
	jmp	Lj1675
Lj1675:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1680
	jmp	Lj1681
Lj1680:
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-12(%ebp)
Lj1681:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_GENERICANSICOMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1690
	movl	-4(%eax),%eax
Lj1690:
	movl	%eax,-20(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1693
	movl	-4(%eax),%eax
Lj1693:
	movl	%eax,-24(%ebp)
	movl	$1,-16(%ebp)
	jmp	Lj1697
	.balign 4,0x90
Lj1696:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	movzbl	U_SYSUTILS_LOWERCASETABLE(,%eax,1),%ecx
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	movzbl	U_SYSUTILS_LOWERCASETABLE(,%eax,1),%eax
	subl	%eax,%ecx
	movl	%ecx,-12(%ebp)
	incl	-16(%ebp)
Lj1697:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1701
	jmp	Lj1698
Lj1701:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jle	Lj1702
	jmp	Lj1698
Lj1702:
	movl	-16(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jle	Lj1696
	jmp	Lj1698
Lj1698:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1703
	jmp	Lj1704
Lj1703:
	movl	-20(%ebp),%edx
	movl	-24(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
Lj1704:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_GENERICANSISTRCOMP$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1711
	jmp	Lj1712
Lj1711:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1713
	jmp	Lj1714
Lj1713:
	jmp	Lj1707
Lj1714:
	movl	$-1,-12(%ebp)
	jmp	Lj1707
Lj1712:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1717
	jmp	Lj1718
Lj1717:
	movl	$1,-12(%ebp)
	jmp	Lj1707
Lj1718:
	jmp	Lj1722
	.balign 4,0x90
Lj1721:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
	incl	-4(%ebp)
	incl	-8(%ebp)
Lj1722:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1727
	jmp	Lj1723
Lj1727:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj1726
	jmp	Lj1723
Lj1726:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj1721
	jmp	Lj1723
Lj1723:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1730
	jmp	Lj1729
Lj1730:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj1728
	jmp	Lj1729
Lj1728:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj1731
	jmp	Lj1732
Lj1731:
	movl	$-1,-12(%ebp)
	jmp	Lj1735
Lj1732:
	movl	$1,-12(%ebp)
Lj1735:
Lj1729:
Lj1707:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_GENERICANSISTRICOMP$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1742
	jmp	Lj1743
Lj1742:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1744
	jmp	Lj1745
Lj1744:
	jmp	Lj1738
Lj1745:
	movl	$-1,-12(%ebp)
	jmp	Lj1738
Lj1743:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1748
	jmp	Lj1749
Lj1748:
	movl	$1,-12(%ebp)
	jmp	Lj1738
Lj1749:
	jmp	Lj1753
	.balign 4,0x90
Lj1752:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	U_SYSUTILS_LOWERCASETABLE(,%eax,1),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	U_SYSUTILS_LOWERCASETABLE(,%eax,1),%eax
	subl	%eax,%edx
	movl	%edx,-12(%ebp)
	incl	-4(%ebp)
	incl	-8(%ebp)
Lj1753:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1758
	jmp	Lj1754
Lj1758:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj1757
	jmp	Lj1754
Lj1757:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj1752
	jmp	Lj1754
Lj1754:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1761
	jmp	Lj1760
Lj1761:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movb	(%eax),%al
	cmpb	(%edx),%al
	jne	Lj1759
	jmp	Lj1760
Lj1759:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj1762
	jmp	Lj1763
Lj1762:
	movl	$-1,-12(%ebp)
	jmp	Lj1766
Lj1763:
	movl	$1,-12(%ebp)
Lj1766:
Lj1760:
Lj1738:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_GENERICANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1773
	jmp	Lj1774
Lj1773:
	jmp	Lj1769
Lj1774:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1775
	jmp	Lj1776
Lj1775:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1777
	jmp	Lj1778
Lj1777:
	jmp	Lj1769
Lj1778:
	movl	$-1,-16(%ebp)
	jmp	Lj1769
Lj1776:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1781
	jmp	Lj1782
Lj1781:
	movl	$1,-16(%ebp)
	jmp	Lj1769
Lj1782:
	movl	$0,-20(%ebp)
	.balign 4,0x90
Lj1787:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	subl	%eax,%edx
	movl	%edx,-16(%ebp)
	incl	-4(%ebp)
	incl	-8(%ebp)
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1789
	jmp	Lj1792
Lj1792:
	movl	-20(%ebp),%eax
	cmpl	-12(%ebp),%eax
	je	Lj1789
	jmp	Lj1787
Lj1789:
Lj1769:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_GENERICANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj1797
	jmp	Lj1798
Lj1797:
	jmp	Lj1793
Lj1798:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1799
	jmp	Lj1800
Lj1799:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1801
	jmp	Lj1802
Lj1801:
	jmp	Lj1793
Lj1802:
	movl	$-1,-16(%ebp)
	jmp	Lj1793
Lj1800:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj1805
	jmp	Lj1806
Lj1805:
	movl	$1,-16(%ebp)
	jmp	Lj1793
Lj1806:
	movl	$0,-20(%ebp)
	.balign 4,0x90
Lj1811:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	U_SYSUTILS_LOWERCASETABLE(,%eax,1),%edx
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	movzbl	U_SYSUTILS_LOWERCASETABLE(,%eax,1),%eax
	subl	%eax,%edx
	movl	%edx,-16(%ebp)
	incl	-4(%ebp)
	incl	-8(%ebp)
	incl	-20(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1813
	jmp	Lj1816
Lj1816:
	movl	-20(%ebp),%eax
	cmpl	-12(%ebp),%eax
	je	Lj1813
	jmp	Lj1811
Lj1813:
Lj1793:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_GENERICANSISTRLOWER$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1821
	jmp	Lj1822
Lj1821:
	jmp	Lj1824
	.balign 4,0x90
Lj1823:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-4(%ebp),%edx
	movb	U_SYSUTILS_LOWERCASETABLE(,%eax,1),%al
	movb	%al,(%edx)
	movl	-4(%ebp),%eax
	incl	%eax
	movl	%eax,-4(%ebp)
Lj1824:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj1823
	jmp	Lj1825
Lj1825:
Lj1822:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_GENERICANSISTRUPPER$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj1834
	jmp	Lj1835
Lj1834:
	jmp	Lj1837
	.balign 4,0x90
Lj1836:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	movl	-4(%ebp),%edx
	movb	U_SYSUTILS_UPPERCASETABLE(,%eax,1),%al
	movb	%al,(%edx)
	movl	-4(%ebp),%eax
	incl	%eax
	movl	%eax,-4(%ebp)
Lj1837:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj1836
	jmp	Lj1838
Lj1838:
Lj1835:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSISAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN
SYSUTILS_ANSISAMETEXT$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_ANSICOMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSISAMESTR$ANSISTRING$ANSISTRING$$BOOLEAN
SYSUTILS_ANSISAMESTR$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_ANSICOMPARESTR$ANSISTRING$ANSISTRING$$LONGINT
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSILASTCHAR$ANSISTRING$$PCHAR
SYSUTILS_ANSILASTCHAR$ANSISTRING$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSUTILS_STREND$PCHAR$$PCHAR
	movl	%eax,-8(%ebp)
	decl	-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSISTRLASTCHAR$PCHAR$$PCHAR
SYSUTILS_ANSISTRLASTCHAR$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSUTILS_STREND$PCHAR$$PCHAR
	movl	%eax,-8(%ebp)
	decl	-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSIUPPERCASE$ANSISTRING$$ANSISTRING
SYSUTILS_ANSIUPPERCASE$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+32,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSILOWERCASE$ANSISTRING$$ANSISTRING
SYSUTILS_ANSILOWERCASE$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+36,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSICOMPARESTR$ANSISTRING$ANSISTRING$$LONGINT
SYSUTILS_ANSICOMPARESTR$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+40,%ecx
	call	*%ecx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSICOMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
SYSUTILS_ANSICOMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+44,%ecx
	call	*%ecx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSISTRCOMP$PCHAR$PCHAR$$LONGINT
SYSUTILS_ANSISTRCOMP$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+48,%ecx
	call	*%ecx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSISTRICOMP$PCHAR$PCHAR$$LONGINT
SYSUTILS_ANSISTRICOMP$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+52,%ecx
	call	*%ecx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$LONGINT
SYSUTILS_ANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$LONGINT:
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
	movl	U_SYSTEM_WIDESTRINGMANAGER+56,%ebx
	call	*%ebx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$LONGINT
SYSUTILS_ANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$LONGINT:
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
	movl	U_SYSTEM_WIDESTRINGMANAGER+60,%ebx
	call	*%ebx
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSISTRLOWER$PCHAR$$PCHAR
SYSUTILS_ANSISTRLOWER$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+64,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSISTRUPPER$PCHAR$$PCHAR
SYSUTILS_ANSISTRUPPER$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+68,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRIM$ANSISTRING$$ANSISTRING
SYSUTILS_TRIM$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1951
	movl	-4(%eax),%eax
Lj1951:
	movl	%eax,-16(%ebp)
	jmp	Lj1953
	.balign 4,0x90
Lj1952:
	decl	-16(%ebp)
Lj1953:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj1955
	jmp	Lj1954
Lj1955:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	cmpl	$33,%eax
	jb	Lj1956
Lj1956:
	jc	Lj1952
	jmp	Lj1954
Lj1954:
	movl	$1,-12(%ebp)
	jmp	Lj1960
	.balign 4,0x90
Lj1959:
	incl	-12(%ebp)
Lj1960:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj1962
	jmp	Lj1961
Lj1962:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	cmpl	$33,%eax
	jb	Lj1963
Lj1963:
	jc	Lj1959
	jmp	Lj1961
Lj1961:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	incl	%ecx
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_copy
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRIMLEFT$ANSISTRING$$ANSISTRING
SYSUTILS_TRIMLEFT$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1976
	movl	-4(%eax),%eax
Lj1976:
	movl	%eax,-16(%ebp)
	movl	$1,-12(%ebp)
	jmp	Lj1980
	.balign 4,0x90
Lj1979:
	incl	-12(%ebp)
Lj1980:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj1982
	jmp	Lj1981
Lj1982:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	cmpl	$33,%eax
	jb	Lj1983
Lj1983:
	jc	Lj1979
	jmp	Lj1981
Lj1981:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_copy
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRIMRIGHT$ANSISTRING$$ANSISTRING
SYSUTILS_TRIMRIGHT$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1996
	movl	-4(%eax),%eax
Lj1996:
	movl	%eax,-12(%ebp)
	jmp	Lj1998
	.balign 4,0x90
Lj1997:
	decl	-12(%ebp)
Lj1998:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj2000
	jmp	Lj1999
Lj2000:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	cmpl	$33,%eax
	jb	Lj2001
Lj2001:
	jc	Lj1997
	jmp	Lj1999
Lj1999:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_QUOTEDSTR$ANSISTRING$$ANSISTRING
SYSUTILS_QUOTEDSTR$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$39,%dl
	call	SYSUTILS_ANSIQUOTEDSTR$ANSISTRING$CHAR$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSIQUOTEDSTR$ANSISTRING$CHAR$$ANSISTRING
SYSUTILS_ANSIQUOTEDSTR$ANSISTRING$CHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-88(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-84(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2020
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%edx
	movb	-8(%ebp),%al
	call	fpc_char_to_ansistr
	movl	-68(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-68(%ebp),%eax
	movl	%eax,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2031
	movl	-4(%eax),%eax
Lj2031:
	movl	%eax,-24(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	jmp	Lj2037
	.balign 4,0x90
Lj2036:
	movl	-16(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	-8(%ebp),%al
	je	Lj2041
	jmp	Lj2042
Lj2041:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-80(%ebp)
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	movl	-20(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_copy
	movl	-68(%ebp),%eax
	movl	%eax,-76(%ebp)
	leal	-84(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movb	-8(%ebp),%al
	call	fpc_char_to_ansistr
	movl	-84(%ebp),%eax
	movl	%eax,-72(%ebp)
	leal	-80(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj2042:
Lj2037:
	movl	-16(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jl	Lj2036
	jmp	Lj2038
Lj2038:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jne	Lj2063
	jmp	Lj2064
Lj2063:
	leal	-84(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	movl	-20(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_copy
	movl	-84(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_concat
Lj2064:
	leal	-84(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-84(%ebp)
	leal	-84(%ebp),%edx
	movb	-8(%ebp),%al
	call	fpc_char_to_ansistr
	movl	-84(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_concat
Lj2020:
	call	FPC_POPADDRSTACK
	leal	-84(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-84(%ebp)
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj2021
	call	FPC_RERAISE
Lj2021:
	movl	-88(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSIEXTRACTQUOTEDSTR$PCHAR$CHAR$$ANSISTRING
SYSUTILS_ANSIEXTRACTQUOTEDSTR$PCHAR$CHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	call	SYSUTILS_STREND$PCHAR$$PCHAR
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	je	Lj2099
	jmp	Lj2100
Lj2099:
	jmp	Lj2089
Lj2100:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	-8(%ebp),%al
	jne	Lj2101
	jmp	Lj2102
Lj2101:
	jmp	Lj2089
Lj2102:
	incl	-16(%ebp)
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj2110
	.balign 4,0x90
Lj2109:
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-24(%ebp)
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	-8(%ebp),%al
	je	Lj2114
	jmp	Lj2115
Lj2114:
	movl	-16(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	-8(%ebp),%al
	jne	Lj2118
	jmp	Lj2119
Lj2118:
	decl	-24(%ebp)
	jmp	Lj2111
Lj2119:
Lj2115:
	movl	-16(%ebp),%eax
	incl	%eax
	movl	%eax,-16(%ebp)
Lj2110:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jne	Lj2109
	jmp	Lj2111
Lj2111:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,(%eax)
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	movl	-24(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_setlength
Lj2089:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ADJUSTLINEBREAKS$ANSISTRING$$ANSISTRING
SYSUTILS_ADJUSTLINEBREAKS$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	TC_SYSTEM_DEFAULTTEXTLINEBREAKSTYLE,%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_ADJUSTLINEBREAKS$ANSISTRING$TTEXTLINEBREAKSTYLE$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ADJUSTLINEBREAKS$ANSISTRING$TTEXTLINEBREAKSTYLE$$ANSISTRING
SYSUTILS_ADJUSTLINEBREAKS$ANSISTRING$TTEXTLINEBREAKSTYLE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-40(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2142
	movl	-4(%eax),%eax
Lj2142:
	movl	%eax,-36(%ebp)
	movl	-36(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$1,-28(%ebp)
	jmp	Lj2148
	.balign 4,0x90
Lj2147:
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$10,%al
	jb	Lj2151
	subb	$10,%al
	je	Lj2152
	subb	$3,%al
	je	Lj2153
	jmp	Lj2151
Lj2152:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj2154
	jmp	Lj2155
Lj2154:
	incl	-24(%ebp)
Lj2155:
	jmp	Lj2150
Lj2153:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj2156
	jmp	Lj2157
Lj2156:
	movl	-28(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jl	Lj2160
	jmp	Lj2159
Lj2160:
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$10,%al
	je	Lj2158
	jmp	Lj2159
Lj2158:
	incl	-28(%ebp)
	jmp	Lj2161
Lj2159:
	incl	-24(%ebp)
Lj2161:
	jmp	Lj2162
Lj2157:
	movl	-28(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jl	Lj2165
	jmp	Lj2164
Lj2165:
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$10,%al
	je	Lj2163
	jmp	Lj2164
Lj2163:
	decl	-24(%ebp)
Lj2164:
Lj2162:
	jmp	Lj2150
Lj2151:
Lj2150:
	incl	-28(%ebp)
Lj2148:
	movl	-28(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jle	Lj2147
	jmp	Lj2149
Lj2149:
	movl	-24(%ebp),%eax
	cmpl	-36(%ebp),%eax
	je	Lj2166
	jmp	Lj2167
Lj2166:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj2170
Lj2167:
	movl	-24(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-12(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-24(%ebp),%edx
	movb	$0,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-28(%ebp)
	jmp	Lj2190
	.balign 4,0x90
Lj2189:
	movl	-16(%ebp),%edx
	movl	-28(%ebp),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$10,%al
	jb	Lj2193
	subb	$10,%al
	je	Lj2194
	subb	$3,%al
	je	Lj2195
	jmp	Lj2193
Lj2194:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj2196
	jmp	Lj2197
Lj2196:
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%edx
	movb	$13,(%eax,%edx,1)
	incl	-32(%ebp)
Lj2197:
	movl	-20(%ebp),%eax
	movl	-32(%ebp),%edx
	movb	$10,(%eax,%edx,1)
	incl	-32(%ebp)
	incl	-28(%ebp)
	jmp	Lj2192
Lj2195:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj2202
	jmp	Lj2203
Lj2202:
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%eax
	movb	$13,(%edx,%eax,1)
	incl	-32(%ebp)
Lj2203:
	movl	-20(%ebp),%edx
	movl	-32(%ebp),%eax
	movb	$10,(%edx,%eax,1)
	incl	-32(%ebp)
	incl	-28(%ebp)
	movl	-16(%ebp),%edx
	movl	-28(%ebp),%eax
	movb	(%edx,%eax,1),%al
	cmpb	$10,%al
	je	Lj2208
	jmp	Lj2209
Lj2208:
	incl	-28(%ebp)
Lj2209:
	jmp	Lj2192
Lj2193:
	movl	-20(%ebp),%ecx
	movl	-32(%ebp),%ebx
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%edx
	movb	(%eax,%edx,1),%al
	movb	%al,(%ecx,%ebx,1)
	incl	-32(%ebp)
	incl	-28(%ebp)
Lj2192:
Lj2190:
	movl	-28(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jl	Lj2189
	jmp	Lj2191
Lj2191:
Lj2170:
	movl	-40(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ISVALIDIDENT$ANSISTRING$$BOOLEAN
SYSUTILS_ISVALIDIDENT$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-5(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2218
	movl	-4(%eax),%eax
Lj2218:
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2219
	jmp	Lj2220
Lj2219:
	movl	-4(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$65,%eax
	cmpl	$26,%eax
	jb	Lj2223
	cmpl	$30,%eax
	stc
	je	Lj2223
	subl	$32,%eax
	cmpl	$26,%eax
	jb	Lj2223
Lj2223:
	setcb	-5(%ebp)
	movl	$1,-12(%ebp)
	jmp	Lj2227
	.balign 4,0x90
Lj2226:
	movl	-12(%ebp),%eax
	incl	%eax
	movl	%eax,-12(%ebp)
	cmpb	$0,-5(%ebp)
	jne	Lj2233
	jmp	Lj2232
Lj2233:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj2234
	subl	$17,%eax
	cmpl	$26,%eax
	jb	Lj2234
	cmpl	$30,%eax
	stc
	je	Lj2234
	subl	$32,%eax
	cmpl	$26,%eax
	jb	Lj2234
Lj2234:
	jc	Lj2231
	jmp	Lj2232
Lj2231:
	movb	$1,-5(%ebp)
	jmp	Lj2235
Lj2232:
	movb	$0,-5(%ebp)
Lj2235:
Lj2227:
	cmpb	$0,-5(%ebp)
	jne	Lj2236
	jmp	Lj2228
Lj2236:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jl	Lj2226
	jmp	Lj2228
Lj2228:
Lj2220:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING
SYSUTILS_INTTOSTR$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%ebx,-312(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-308(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2239
	pushl	$255
	leal	-304(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$-1,%edx
	call	fpc_shortstr_sint
	leal	-308(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-308(%ebp)
	leal	-308(%ebp),%edx
	leal	-304(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-308(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-308(%ebp),%eax
	movl	%eax,(%ebx)
Lj2239:
	call	FPC_POPADDRSTACK
	leal	-308(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-308(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj2240
	call	FPC_RERAISE
Lj2240:
	movl	-312(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_INTTOSTR$INT64$$ANSISTRING
SYSUTILS_INTTOSTR$INT64$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$308,%esp
	movl	%ebx,-308(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-304(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2259
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-300(%ebp),%edx
	movl	$255,%ecx
	movl	$-1,%eax
	call	fpc_shortstr_int64
	leal	-304(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-304(%ebp)
	leal	-304(%ebp),%edx
	leal	-300(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-304(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-304(%ebp),%eax
	movl	%eax,(%ebx)
Lj2259:
	call	FPC_POPADDRSTACK
	leal	-304(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-304(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj2260
	call	FPC_RERAISE
Lj2260:
	movl	-308(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_INTTOSTR$QWORD$$ANSISTRING
SYSUTILS_INTTOSTR$QWORD$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$308,%esp
	movl	%ebx,-308(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-304(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2279
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-300(%ebp),%edx
	movl	$255,%ecx
	movl	$-1,%eax
	call	fpc_shortstr_qword
	leal	-304(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-304(%ebp)
	leal	-304(%ebp),%edx
	leal	-300(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-304(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-304(%ebp),%eax
	movl	%eax,(%ebx)
Lj2279:
	call	FPC_POPADDRSTACK
	leal	-304(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-304(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj2280
	call	FPC_RERAISE
Lj2280:
	movl	-308(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_INTTOHEX$LONGINT$LONGINT$$ANSISTRING
SYSUTILS_INTTOHEX$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2299
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj2302
	jmp	Lj2303
Lj2302:
	movl	$1,-8(%ebp)
Lj2303:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-8(%ebp),%ebx
	decl	%ebx
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%ebx
	jl	Lj2311
	decl	-16(%ebp)
	.balign 4,0x90
Lj2312:
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%edx
	subl	%edx,%ecx
	movl	-4(%ebp),%edx
	andl	$15,%edx
	movb	TC_SYSUTILS_HEXDIGITS(,%edx,1),%dl
	movb	%dl,-1(%eax,%ecx,1)
	movl	-4(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-4(%ebp)
	cmpl	-16(%ebp),%ebx
	jg	Lj2312
Lj2311:
	jmp	Lj2320
	.balign 4,0x90
Lj2319:
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%eax
	andl	$15,%eax
	movb	TC_SYSUTILS_HEXDIGITS(,%eax,1),%al
	leal	-60(%ebp),%edx
	call	fpc_char_to_ansistr
	movl	-60(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%ecx
	movl	-12(%ebp),%eax
	call	fpc_ansistr_concat
	movl	-4(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-4(%ebp)
Lj2320:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2319
	jmp	Lj2321
Lj2321:
Lj2299:
	call	FPC_POPADDRSTACK
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj2300
	call	FPC_RERAISE
Lj2300:
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_INTTOHEX$INT64$LONGINT$$ANSISTRING
SYSUTILS_INTTOHEX$INT64$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%ebx,-64(%ebp)
	movl	%esi,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2336
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2339
	jmp	Lj2340
Lj2339:
	movl	$1,-4(%ebp)
Lj2340:
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-4(%ebp),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj2348
	decl	-12(%ebp)
	.balign 4,0x90
Lj2349:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%edx
	subl	%edx,%ecx
	movl	8(%ebp),%edx
	movl	12(%ebp),%esi
	andl	$15,%edx
	movl	$0,%esi
	movb	TC_SYSUTILS_HEXDIGITS(,%edx,1),%dl
	movb	%dl,-1(%eax,%ecx,1)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	shrdl	$4,%edx,%eax
	shrl	$4,%edx
	movl	%eax,8(%ebp)
	movl	%edx,12(%ebp)
	cmpl	-12(%ebp),%ebx
	jg	Lj2349
Lj2348:
	jmp	Lj2357
	.balign 4,0x90
Lj2356:
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	andl	$15,%eax
	movl	$0,%edx
	movb	TC_SYSUTILS_HEXDIGITS(,%eax,1),%al
	leal	-56(%ebp),%edx
	call	fpc_char_to_ansistr
	movl	-56(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%ecx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_concat
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	shrdl	$4,%edx,%eax
	shrl	$4,%edx
	movl	%eax,8(%ebp)
	movl	%edx,12(%ebp)
Lj2357:
	movl	8(%ebp),%eax
	movl	12(%ebp),%edx
	cmpl	$0,%edx
	jne	Lj2356
	cmpl	$0,%eax
	jne	Lj2356
	jmp	Lj2358
Lj2358:
Lj2336:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj2337
	call	FPC_RERAISE
Lj2337:
	movl	-64(%ebp),%ebx
	movl	-60(%ebp),%esi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_INTTOHEX$QWORD$LONGINT$$ANSISTRING
SYSUTILS_INTTOHEX$QWORD$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_INTTOHEX$INT64$LONGINT$$ANSISTRING
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTOINT$ANSISTRING$LONGINT$$BOOLEAN
SYSUTILS_TRYSTRTOINT$ANSISTRING$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$4,%eax
	call	fpc_val_sint_ansistr
	movl	-8(%ebp),%edx
	movl	%eax,(%edx)
	movw	-16(%ebp),%ax
	movw	%ax,-12(%ebp)
	movzwl	-12(%ebp),%eax
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOINT$ANSISTRING$$LONGINT
SYSUTILS_STRTOINT$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	leal	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$4,%eax
	call	fpc_val_sint_ansistr
	movl	%eax,-8(%ebp)
	movw	-16(%ebp),%ax
	movw	%ax,-10(%ebp)
	movzwl	-10(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2405
	jmp	Lj2406
Lj2405:
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$11,-24(%ebp)
	leal	-24(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SINVALIDINTEGER+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La1:
	movl	%ebp,%ecx
	movl	$La1,%edx
	call	FPC_RAISEEXCEPTION
Lj2406:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOINT64$ANSISTRING$$INT64
SYSUTILS_STRTOINT64$ANSISTRING$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%eax,-4(%ebp)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_val_int64_ansistr
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2427
	jmp	Lj2428
Lj2427:
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$11,-28(%ebp)
	leal	-28(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SINVALIDINTEGER+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La2:
	movl	%ebp,%ecx
	movl	$La2,%edx
	call	FPC_RAISEEXCEPTION
Lj2428:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTOINT64$ANSISTRING$INT64$$BOOLEAN
SYSUTILS_TRYSTRTOINT64$ANSISTRING$INT64$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_val_int64_ansistr
	movl	-8(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	movw	-16(%ebp),%ax
	movw	%ax,-12(%ebp)
	movzwl	-12(%ebp),%eax
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOQWORD$ANSISTRING$$QWORD
SYSUTILS_STRTOQWORD$ANSISTRING$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%eax,-4(%ebp)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_val_qword_ansistr
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2461
	jmp	Lj2462
Lj2461:
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$11,-28(%ebp)
	leal	-28(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SINVALIDINTEGER+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La3:
	movl	%ebp,%ecx
	movl	$La3,%edx
	call	FPC_RAISEEXCEPTION
Lj2462:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTOQWORD$ANSISTRING$QWORD$$BOOLEAN
SYSUTILS_TRYSTRTOQWORD$ANSISTRING$QWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_val_qword_ansistr
	movl	-8(%ebp),%ecx
	movl	%eax,(%ecx)
	movl	%edx,4(%ecx)
	movw	-16(%ebp),%ax
	movw	%ax,-12(%ebp)
	movzwl	-12(%ebp),%eax
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT
SYSUTILS_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	$4,%eax
	call	fpc_val_sint_ansistr
	movl	%eax,-12(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2497
	jmp	Lj2498
Lj2497:
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj2498:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOINT64DEF$ANSISTRING$INT64$$INT64
SYSUTILS_STRTOINT64DEF$ANSISTRING$INT64$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_val_int64_ansistr
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2511
	jmp	Lj2512
Lj2511:
	movl	8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj2512:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOQWORDDEF$ANSISTRING$QWORD$$QWORD
SYSUTILS_STRTOQWORDDEF$ANSISTRING$QWORD$$QWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_val_qword_ansistr
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movw	-20(%ebp),%ax
	movw	%ax,-14(%ebp)
	movzwl	-14(%ebp),%eax
	testl	%eax,%eax
	jne	Lj2525
	jmp	Lj2526
Lj2525:
	movl	8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj2526:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_LOADSTR$LONGINT$$ANSISTRING
SYSUTILS_LOADSTR$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_FMTLOADSTR$LONGINT$array_of_const$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-16(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
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
	jne	Lj2539
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-12(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj2545
	decl	%eax
	je	Lj2546
	decl	%eax
	je	Lj2547
	decl	%eax
	je	Lj2548
	jmp	Lj2545
Lj2546:
	movl	-12(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$11,-60(%ebp)
	leal	-60(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SINVALIDFORMAT+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La4:
	movl	%ebp,%ecx
	movl	$La4,%edx
	call	FPC_RAISEEXCEPTION
	jmp	Lj2544
Lj2547:
	movl	-12(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$11,-60(%ebp)
	leal	-60(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SARGUMENTMISSING+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La5:
	movl	%ebp,%ecx
	movl	$La5,%edx
	call	FPC_RAISEEXCEPTION
	jmp	Lj2544
Lj2548:
	movl	-12(%ebp),%eax
	movl	%eax,-56(%ebp)
	movl	$11,-60(%ebp)
	leal	-60(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SINVALIDARGINDEX+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La6:
	movl	%ebp,%ecx
	movl	$La6,%edx
	call	FPC_RAISEEXCEPTION
	jmp	Lj2544
Lj2545:
Lj2544:
Lj2539:
	call	FPC_POPADDRSTACK
	leal	-12(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-12(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj2540
	call	FPC_RERAISE
Lj2540:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FORMAT$ANSISTRING$array_of_const$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_FORMAT$ANSISTRING$array_of_const$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$896,%esp
	movl	%ebx,-896(%ebp)
	movl	%esi,-892(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-40(%ebp)
	movl	$0,-632(%ebp)
	movl	$0,-628(%ebp)
	movl	$0,-108(%ebp)
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj2601
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj2608
	movl	-4(%eax),%eax
Lj2608:
	movl	%eax,-32(%ebp)
	movl	$1,-16(%ebp)
	movl	$1,-20(%ebp)
	movl	$0,-24(%ebp)
	jmp	Lj2616
	.balign 4,0x90
Lj2615:
	jmp	Lj2619
	.balign 4,0x90
Lj2618:
	incl	-16(%ebp)
Lj2619:
	movl	-16(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jle	Lj2621
	jmp	Lj2620
Lj2621:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$37,%al
	jne	Lj2618
	jmp	Lj2620
Lj2620:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj2622
	jmp	Lj2623
Lj2622:
	leal	-108(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_copy
	movl	-108(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_concat
Lj2623:
	movl	-16(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jl	Lj2638
	jmp	Lj2639
Lj2638:
	movl	%ebp,%eax
	call	SYSUTILS_FORMAT$crc255394BC_READFORMAT$$CHAR
	movb	%al,-54(%ebp)
	movb	-54(%ebp),%al
	cmpb	$37,%al
	jb	Lj2645
	subb	$37,%al
	je	Lj2656
	subb	$31,%al
	je	Lj2646
	decb	%al
	je	Lj2648
	decb	%al
	je	Lj2649
	decb	%al
	je	Lj2650
	subb	$6,%al
	je	Lj2652
	decb	%al
	je	Lj2651
	subb	$2,%al
	je	Lj2654
	subb	$3,%al
	je	Lj2653
	subb	$2,%al
	je	Lj2647
	subb	$3,%al
	je	Lj2655
	jmp	Lj2645
Lj2646:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$0,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj2657
	jmp	Lj2658
Lj2657:
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	leal	4(%edx,%eax,8),%eax
	movl	%eax,-112(%ebp)
	pushl	$255
	leal	-368(%ebp),%ecx
	movl	-112(%ebp),%eax
	movl	(%eax),%eax
	movl	$-1,%edx
	call	fpc_shortstr_sint
	leal	-108(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	leal	-368(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-108(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-108(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj2682
Lj2658:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$16,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj2683
	jmp	Lj2684
Lj2683:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	(%eax),%edx
	movl	%edx,-116(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-112(%ebp)
	pushl	-112(%ebp)
	pushl	-116(%ebp)
	leal	-624(%ebp),%edx
	movl	$255,%ecx
	movl	$-1,%eax
	call	fpc_shortstr_int64
	leal	-108(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	leal	-624(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-108(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-108(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj2708
Lj2684:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$17,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj2709
	jmp	Lj2710
Lj2709:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%edx
	movl	(%edx),%eax
	movl	%eax,-116(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-112(%ebp)
	pushl	-112(%ebp)
	pushl	-116(%ebp)
	leal	-372(%ebp),%edx
	movl	$255,%ecx
	movl	$-1,%eax
	call	fpc_shortstr_int64
	leal	-108(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%edx
	leal	-372(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-108(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-108(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj2710:
Lj2708:
Lj2682:
	movl	-48(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-40(%ebp),%edx
	testl	%edx,%edx
	je	Lj2738
	movl	-4(%edx),%edx
Lj2738:
	movl	-52(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-44(%ebp)
	movl	-40(%ebp),%eax
	movb	(%eax),%al
	cmpb	$45,%al
	jne	Lj2739
	jmp	Lj2740
Lj2739:
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	leal	-628(%ebp),%ecx
	movl	-44(%ebp),%edx
	movb	$48,%al
	call	SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
	movl	-628(%ebp),%edx
	movl	-40(%ebp),%ecx
	leal	-40(%ebp),%eax
	call	fpc_ansistr_concat
	jmp	Lj2753
Lj2740:
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	movl	-44(%ebp),%edx
	incl	%edx
	leal	-628(%ebp),%ecx
	movb	$48,%al
	call	SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
	movl	-628(%ebp),%eax
	leal	-40(%ebp),%edx
	movl	$2,%ecx
	call	SYSTEM_INSERT$ANSISTRING$ANSISTRING$LONGINT
Lj2753:
	jmp	Lj2644
Lj2647:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$0,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj2766
	jmp	Lj2767
Lj2766:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	leal	4(%eax,%edx,8),%eax
	movl	%eax,-112(%ebp)
	pushl	$255
	leal	-368(%ebp),%ecx
	movl	-112(%ebp),%eax
	movl	(%eax),%eax
	movl	$-1,%edx
	call	fpc_shortstr_uint
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	leal	-628(%ebp),%edx
	leal	-368(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-628(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-628(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj2791
Lj2767:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$16,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj2792
	jmp	Lj2793
Lj2792:
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movl	(%eax),%edx
	movl	%edx,-116(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-112(%ebp)
	pushl	-112(%ebp)
	pushl	-116(%ebp)
	leal	-372(%ebp),%edx
	movl	$255,%ecx
	movl	$-1,%eax
	call	fpc_shortstr_qword
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	leal	-628(%ebp),%edx
	leal	-372(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-628(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-628(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj2817
Lj2793:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$17,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj2818
	jmp	Lj2819
Lj2818:
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movl	(%eax),%edx
	movl	%edx,-116(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-112(%ebp)
	pushl	-112(%ebp)
	pushl	-116(%ebp)
	leal	-372(%ebp),%edx
	movl	$255,%ecx
	movl	$-1,%eax
	call	fpc_shortstr_qword
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	leal	-628(%ebp),%edx
	leal	-372(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-628(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-628(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj2819:
Lj2817:
Lj2791:
	movl	-48(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-40(%ebp),%edx
	testl	%edx,%edx
	je	Lj2847
	movl	-4(%edx),%edx
Lj2847:
	movl	-52(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-44(%ebp)
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	leal	-628(%ebp),%ecx
	movl	-44(%ebp),%edx
	movb	$48,%al
	call	SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
	movl	-628(%ebp),%edx
	movl	-40(%ebp),%ecx
	leal	-40(%ebp),%eax
	call	fpc_ansistr_concat
	jmp	Lj2644
Lj2648:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$12,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj2860
	jmp	Lj2861
Lj2860:
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-628(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%edx
	movl	$3,%ecx
	movl	$1,%eax
	call	SYSUTILS_FLOATTOSTRF$crcDC46F419
	movl	-628(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-628(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj2882
Lj2861:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$3,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj2883
	jmp	Lj2884
Lj2883:
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movzwl	8(%eax),%edx
	pushl	%edx
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-628(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%edx
	movl	$3,%ecx
	movl	$1,%eax
	call	SYSUTILS_FLOATTOSTRF$crc4976C91A
	movl	-628(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-628(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj2884:
Lj2882:
	jmp	Lj2644
Lj2649:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$12,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj2905
	jmp	Lj2906
Lj2905:
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-628(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	movl	$9999,%edx
	movl	$2,%eax
	call	SYSUTILS_FLOATTOSTRF$crcDC46F419
	movl	-628(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-628(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj2927
Lj2906:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$3,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj2928
	jmp	Lj2929
Lj2928:
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movzwl	8(%eax),%edx
	pushl	%edx
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-628(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	movl	$9999,%edx
	movl	$2,%eax
	call	SYSUTILS_FLOATTOSTRF$crc4976C91A
	movl	-628(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-628(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj2929:
Lj2927:
	jmp	Lj2644
Lj2650:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$12,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj2950
	jmp	Lj2951
Lj2950:
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-628(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%edx
	movl	$3,%ecx
	movl	$0,%eax
	call	SYSUTILS_FLOATTOSTRF$crcDC46F419
	movl	-628(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-628(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj2972
Lj2951:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$3,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj2973
	jmp	Lj2974
Lj2973:
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%edx
	movzwl	8(%edx),%eax
	pushl	%eax
	pushl	4(%edx)
	pushl	(%edx)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-628(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%edx
	movl	$3,%ecx
	movl	$0,%eax
	call	SYSUTILS_FLOATTOSTRF$crc4976C91A
	movl	-628(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-628(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj2974:
Lj2972:
	jmp	Lj2644
Lj2651:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$12,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj2995
	jmp	Lj2996
Lj2995:
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-628(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	movl	$9999,%edx
	movl	$3,%eax
	call	SYSUTILS_FLOATTOSTRF$crcDC46F419
	movl	-628(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-628(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj3017
Lj2996:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$3,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj3018
	jmp	Lj3019
Lj3018:
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%edx
	movzwl	8(%edx),%eax
	pushl	%eax
	pushl	4(%edx)
	pushl	(%edx)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-628(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	movl	$9999,%edx
	movl	$3,%eax
	call	SYSUTILS_FLOATTOSTRF$crc4976C91A
	movl	-628(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-628(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj3019:
Lj3017:
	jmp	Lj2644
Lj2652:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$3,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj3040
	jmp	Lj3041
Lj3040:
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movzwl	8(%eax),%edx
	pushl	%edx
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-628(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	movl	$9999,%edx
	movl	$4,%eax
	call	SYSUTILS_FLOATTOSTRF$crc4976C91A
	movl	-628(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-628(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj3062
Lj3041:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$12,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj3063
	jmp	Lj3064
Lj3063:
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-628(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	movl	$9999,%edx
	movl	$4,%eax
	call	SYSUTILS_FLOATTOSTRF$crcDC46F419
	movl	-628(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-628(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj3064:
Lj3062:
	jmp	Lj2644
Lj2653:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$4,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj3085
	jmp	Lj3086
Lj3085:
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	leal	-36(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	jmp	Lj3097
Lj3086:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$2,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj3098
	jmp	Lj3099
Lj3098:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movb	4(%eax,%edx,8),%al
	leal	-36(%ebp),%edx
	call	fpc_char_to_ansistr
	jmp	Lj3110
Lj3099:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$6,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj3111
	jmp	Lj3112
Lj3111:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	leal	-36(%ebp),%edx
	call	fpc_pchar_to_ansistr
	jmp	Lj3123
Lj3112:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$10,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj3124
	jmp	Lj3125
Lj3124:
	leal	-632(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-632(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	leal	-632(%ebp),%edx
	call	fpc_pwidechar_to_unicodestr
	movl	-632(%ebp),%eax
	leal	-36(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
	jmp	Lj3140
Lj3125:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$9,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj3141
	jmp	Lj3142
Lj3141:
	leal	-632(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-632(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movw	4(%eax,%edx,8),%ax
	leal	-632(%ebp),%edx
	call	fpc_uchar_to_unicodestr
	movl	-632(%ebp),%eax
	leal	-36(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
	jmp	Lj3157
Lj3142:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$15,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj3158
	jmp	Lj3159
Lj3158:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	leal	-36(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
	jmp	Lj3170
Lj3159:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$11,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj3171
	jmp	Lj3172
Lj3171:
	movl	-8(%ebp),%esi
	movl	-28(%ebp),%ebx
	movl	4(%esi,%ebx,8),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-36(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	4(%esi,%ebx,8),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj3181
Lj3172:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$18,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj3182
	jmp	Lj3183
Lj3182:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	leal	-36(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
	jmp	Lj3194
Lj3183:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$13,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj3195
	jmp	Lj3196
Lj3195:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	leal	-36(%ebp),%edx
	call	SYSTEM_assign$VARIANT$$ANSISTRING
Lj3196:
Lj3194:
Lj3181:
Lj3170:
Lj3157:
Lj3140:
Lj3123:
Lj3110:
Lj3097:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj3209
	movl	-4(%eax),%eax
Lj3209:
	movl	%eax,-44(%ebp)
	movl	-52(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj3212
	jmp	Lj3211
Lj3212:
	movl	-44(%ebp),%eax
	cmpl	-52(%ebp),%eax
	jg	Lj3210
	jmp	Lj3211
Lj3210:
	movl	-52(%ebp),%eax
	movl	%eax,-44(%ebp)
Lj3211:
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	leal	-628(%ebp),%eax
	pushl	%eax
	movl	-44(%ebp),%ecx
	movl	-36(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-628(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-628(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj2644
Lj2654:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$5,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%edx
	movl	$0,%eax
	pushl	%eax
	pushl	%edx
	leal	-888(%ebp),%edx
	movb	$8,%al
	call	SYSTEM_HEXSTR$QWORD$BYTE$$SHORTSTRING
	leal	-888(%ebp),%eax
	leal	-628(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-628(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-628(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj2644
Lj2655:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$0,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj3243
	jmp	Lj3244
Lj3243:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	$0,%edx
	movl	%eax,-64(%ebp)
	movl	%edx,-60(%ebp)
	movl	$16,-44(%ebp)
	jmp	Lj3255
Lj3244:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$17,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj3256
	jmp	Lj3257
Lj3256:
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movl	(%eax),%edx
	movl	%edx,-64(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	$31,-44(%ebp)
	jmp	Lj3268
Lj3257:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$16,%edx
	call	SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%edx
	movl	(%edx),%eax
	movl	%eax,-64(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-60(%ebp)
	movl	$31,-44(%ebp)
Lj3268:
Lj3255:
	movl	-52(%ebp),%eax
	cmpl	-44(%ebp),%eax
	jg	Lj3279
	jmp	Lj3280
Lj3279:
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	pushl	-60(%ebp)
	pushl	-64(%ebp)
	leal	-888(%ebp),%edx
	movb	-44(%ebp),%al
	call	SYSTEM_HEXSTR$INT64$BYTE$$SHORTSTRING
	leal	-888(%ebp),%eax
	leal	-628(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-628(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-628(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj3293
Lj3280:
	movl	$1,-44(%ebp)
	jmp	Lj3297
	.balign 4,0x90
Lj3296:
	incl	-44(%ebp)
Lj3297:
	movl	-44(%ebp),%ecx
	shll	$2,%ecx
	movl	$1,%edx
	movl	$0,%eax
	cmpl	$64,%ecx
	jl	Lj3300
	xorl	%edx,%edx
	xorl	%eax,%eax
	jmp	Lj3302
Lj3300:
	cmpl	$32,%ecx
	jl	Lj3301
	subl	$32,%ecx
	shll	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj3302
Lj3301:
	shldl	%cl,%edx,%eax
	shll	%cl,%edx
Lj3302:
	cmpl	-60(%ebp),%eax
	jb	Lj3299
	ja	Lj3298
	cmpl	-64(%ebp),%edx
	jbe	Lj3299
	jmp	Lj3298
	jmp	Lj3298
Lj3299:
	movl	-44(%ebp),%eax
	cmpl	$16,%eax
	jl	Lj3296
	jmp	Lj3298
Lj3298:
	movl	-44(%ebp),%eax
	cmpl	-52(%ebp),%eax
	jg	Lj3303
	jmp	Lj3304
Lj3303:
	movl	-44(%ebp),%eax
	movl	%eax,-52(%ebp)
Lj3304:
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	pushl	-60(%ebp)
	pushl	-64(%ebp)
	leal	-888(%ebp),%edx
	movb	-52(%ebp),%al
	call	SYSTEM_HEXSTR$INT64$BYTE$$SHORTSTRING
	leal	-888(%ebp),%eax
	leal	-628(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-628(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-628(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj3293:
	jmp	Lj2644
Lj2656:
	movl	$_$SYSUTILS$_Ld58,%ebx
	leal	-40(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%ebx,-40(%ebp)
	jmp	Lj2644
Lj2645:
Lj2644:
	movl	-48(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj3321
	jmp	Lj3322
Lj3321:
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj3325
	movl	-4(%eax),%eax
Lj3325:
	cmpl	-48(%ebp),%eax
	jl	Lj3323
	jmp	Lj3324
Lj3323:
	movb	-53(%ebp),%al
	testb	%al,%al
	je	Lj3326
	jmp	Lj3327
Lj3326:
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj3334
	movl	-4(%eax),%eax
Lj3334:
	movl	-48(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-888(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-888(%ebp),%eax
	leal	-628(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-628(%ebp),%edx
	movl	-40(%ebp),%ecx
	leal	-40(%ebp),%eax
	call	fpc_ansistr_concat
	jmp	Lj3343
Lj3327:
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj3350
	movl	-4(%eax),%eax
Lj3350:
	movl	-48(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-888(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-888(%ebp),%eax
	leal	-628(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-628(%ebp),%ecx
	movl	-40(%ebp),%edx
	leal	-40(%ebp),%eax
	call	fpc_ansistr_concat
Lj3343:
Lj3324:
Lj3322:
	movl	-40(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_concat
Lj2639:
	incl	-16(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj2616:
	movl	-16(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jle	Lj2615
	jmp	Lj2617
Lj2617:
Lj2601:
	call	FPC_POPADDRSTACK
	leal	-632(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-632(%ebp)
	leal	-628(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-628(%ebp)
	leal	-108(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-36(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-36(%ebp)
	leal	-40(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-40(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj2602
	call	FPC_RERAISE
Lj2602:
	movl	-896(%ebp),%ebx
	movl	-892(%ebp),%esi
	leave
	ret	$8

.text
	.balign 4,0x90
SYSUTILS_FORMAT$crc255394BC_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movl	-44(%eax),%eax
	cmpl	$-1,%eax
	je	Lj3381
	jmp	Lj3382
Lj3381:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-24(%eax),%eax
	movl	%eax,-28(%edx)
	jmp	Lj3385
Lj3382:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-44(%eax),%eax
	movl	%eax,-28(%edx)
Lj3385:
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	incl	%eax
	movl	-12(%ebp),%edx
	movl	%eax,-24(%edx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-12(%edx),%eax
	jg	Lj3390
	jmp	Lj3392
Lj3392:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	movl	(%edx,%eax,8),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj3390
	jmp	Lj3391
Lj3390:
	cmpb	$0,-8(%ebp)
	jne	Lj3393
	jmp	Lj3394
Lj3393:
	movl	-12(%ebp),%eax
	movl	-4(%eax),%edx
	movl	$3,%eax
	call	SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING
Lj3394:
	movl	-12(%ebp),%eax
	decl	-24(%eax)
	jmp	Lj2599
Lj3391:
	movb	$1,-13(%ebp)
Lj2599:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_FORMAT$crc255394BC_READFORMAT$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$-1,-44(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,-48(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,-52(%eax)
	movl	$-1,-12(%ebp)
	movl	-4(%ebp),%eax
	incl	-16(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$37,%al
	je	Lj3409
	jmp	Lj3410
Lj3409:
	movb	$37,-5(%ebp)
	jmp	Lj2587
Lj3410:
	movl	%ebp,%eax
	call	SYSUTILS_FORMAT$crc255394BC_READFORMAT$$CHAR_READINDEX
	movl	%ebp,%eax
	call	SYSUTILS_FORMAT$crc255394BC_READFORMAT$$CHAR_READLEFT
	movl	%ebp,%eax
	call	SYSUTILS_FORMAT$crc255394BC_READFORMAT$$CHAR_READWIDTH
	movl	%ebp,%eax
	call	SYSUTILS_FORMAT$crc255394BC_READFORMAT$$CHAR_READPREC
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	movb	%al,-5(%ebp)
Lj2587:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_FORMAT$crc255394BC_READFORMAT$$CHAR_READPREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$46,%al
	je	Lj3425
	jmp	Lj3426
Lj3425:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	-16(%eax)
	movl	-4(%ebp),%eax
	call	SYSUTILS_FORMAT$crc255394BC_READFORMAT$$CHAR_READINTEGER
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	cmpl	$-1,%eax
	je	Lj3429
	jmp	Lj3430
Lj3429:
	movl	-4(%ebp),%eax
	movl	$0,-12(%eax)
Lj3430:
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	%eax,-52(%edx)
Lj3426:
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_FORMAT$crc255394BC_READFORMAT$$CHAR_READWIDTH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSUTILS_FORMAT$crc255394BC_READFORMAT$$CHAR_READINTEGER
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj3437
	jmp	Lj3438
Lj3437:
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	%eax,-48(%edx)
	movl	-4(%ebp),%eax
	movl	$-1,-12(%eax)
Lj3438:
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_FORMAT$crc255394BC_READFORMAT$$CHAR_READLEFT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$45,%al
	je	Lj3443
	jmp	Lj3444
Lj3443:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$1,-53(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	-16(%eax)
	jmp	Lj3447
Lj3444:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$0,-53(%eax)
Lj3447:
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_FORMAT$crc255394BC_READFORMAT$$CHAR_READINDEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$58,%al
	jne	Lj3450
	jmp	Lj3451
Lj3450:
	movl	-4(%ebp),%eax
	call	SYSUTILS_FORMAT$crc255394BC_READFORMAT$$CHAR_READINTEGER
	jmp	Lj3454
Lj3451:
	movl	-4(%ebp),%eax
	movl	$0,-12(%eax)
Lj3454:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$58,%al
	je	Lj3457
	jmp	Lj3458
Lj3457:
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	cmpl	$-1,%eax
	je	Lj3459
	jmp	Lj3460
Lj3459:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	$2,%eax
	call	SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING
Lj3460:
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	%eax,-44(%edx)
	movl	-4(%ebp),%eax
	movl	$-1,-12(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	-16(%eax)
Lj3458:
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_FORMAT$crc255394BC_READFORMAT$$CHAR_READINTEGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-60(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj3469
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj3472
	jmp	Lj3473
Lj3472:
	jmp	Lj3469
Lj3473:
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movl	%eax,-20(%edx)
	jmp	Lj3477
	.balign 4,0x90
Lj3476:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	-16(%eax)
Lj3477:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-16(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj3480
	jmp	Lj3478
Lj3480:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$57,%al
	jbe	Lj3479
	jmp	Lj3478
Lj3479:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$48,%al
	jae	Lj3476
	jmp	Lj3478
Lj3478:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-16(%eax),%eax
	cmpl	-32(%edx),%eax
	jg	Lj3481
	jmp	Lj3482
Lj3481:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	$1,%eax
	call	SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING
Lj3482:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$42,%al
	je	Lj3487
	jmp	Lj3488
Lj3487:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-44(%eax),%eax
	cmpl	$-1,%eax
	je	Lj3489
	jmp	Lj3490
Lj3489:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-24(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj3493
Lj3490:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-44(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	-44(%eax)
Lj3493:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-16(%eax),%eax
	cmpl	-20(%edx),%eax
	jg	Lj3496
	jmp	Lj3498
Lj3498:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-12(%eax),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj3496
	jmp	Lj3497
Lj3496:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	$1,%eax
	call	SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING
Lj3497:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%edx,-24(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,8),%eax
	testl	%eax,%eax
	jl	Lj3506
	testl	%eax,%eax
	je	Lj3507
	subl	$16,%eax
	je	Lj3508
	decl	%eax
	je	Lj3509
	jmp	Lj3506
Lj3507:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%eax,%edx,8),%eax
	movl	%eax,-12(%ecx)
	jmp	Lj3505
Lj3508:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-8(%eax),%edx
	movl	-12(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movl	-4(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,-12(%edx)
	jmp	Lj3505
Lj3509:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	-4(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,-12(%edx)
	jmp	Lj3505
Lj3506:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	$1,%eax
	call	SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING
Lj3505:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	-16(%eax)
	jmp	Lj3520
Lj3488:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-20(%eax),%eax
	cmpl	-16(%edx),%eax
	jl	Lj3521
	jmp	Lj3522
Lj3521:
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-16(%eax),%ecx
	movl	-20(%edx),%eax
	subl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%eax
	call	fpc_ansistr_copy
	movl	-60(%ebp),%edx
	leal	-56(%ebp),%ecx
	movl	$4,%eax
	call	fpc_val_sint_ansistr
	movl	-4(%ebp),%edx
	movl	%eax,-12(%edx)
	movw	-56(%ebp),%ax
	movw	%ax,-6(%ebp)
	movzwl	-6(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj3541
	jmp	Lj3542
Lj3541:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	$1,%eax
	call	SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING
Lj3542:
	jmp	Lj3547
Lj3522:
	movl	-4(%ebp),%eax
	movl	$-1,-12(%eax)
Lj3547:
Lj3520:
Lj3469:
	call	FPC_POPADDRSTACK
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj3470
	call	FPC_RERAISE
Lj3470:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$TFORMATSETTINGS$$ANSISTRING
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_FORMATBUF$crc90669634
SYSUTILS_FORMATBUF$crc90669634:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj3564
	movl	20(%ebp),%edx
	leal	-24(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	20(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj3571
	jmp	Lj3572
Lj3571:
	leal	-24(%ebp),%eax
	call	fpc_ansistr_unique
	movl	%eax,%edx
	movl	20(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj3572:
	movl	8(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	pushl	%eax
	movl	12(%ebp),%ecx
	movl	16(%ebp),%edx
	movl	-24(%ebp),%eax
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$TFORMATSETTINGS$$ANSISTRING
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj3593
	movl	-4(%eax),%eax
Lj3593:
	cmpl	-8(%ebp),%eax
	jb	Lj3591
	jmp	Lj3592
Lj3591:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj3596
	movl	-4(%eax),%eax
Lj3596:
	movl	%eax,-16(%ebp)
	jmp	Lj3597
Lj3592:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj3597:
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj3564:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-24(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj3565
	call	FPC_RERAISE
Lj3565:
	movl	-16(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	SYSUTILS_FORMATBUF$formal$LONGWORD$formal$LONGWORD$array_of_const$$LONGWORD
SYSUTILS_FORMATBUF$formal$LONGWORD$formal$LONGWORD$array_of_const$$LONGWORD:
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
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FORMATBUF$crc90669634
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_FMTSTR$ANSISTRING$ANSISTRING$array_of_const$TFORMATSETTINGS
SYSUTILS_FMTSTR$ANSISTRING$ANSISTRING$array_of_const$TFORMATSETTINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj3638
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	leal	-56(%ebp),%eax
	pushl	%eax
	movl	12(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$TFORMATSETTINGS$$ANSISTRING
	movl	-56(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-56(%ebp),%eax
	movl	%eax,(%ebx)
Lj3638:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj3639
	call	FPC_RERAISE
Lj3639:
	movl	-60(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_FMTSTR$ANSISTRING$ANSISTRING$array_of_const
SYSUTILS_FMTSTR$ANSISTRING$ANSISTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	8(%ebp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FMTSTR$ANSISTRING$ANSISTRING$array_of_const$TFORMATSETTINGS
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_STRFMT$PCHAR$PCHAR$array_of_const$$PCHAR
SYSUTILS_STRFMT$PCHAR$PCHAR$array_of_const$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	8(%ebp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRFMT$PCHAR$PCHAR$array_of_const$TFORMATSETTINGS$$PCHAR
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_STRFMT$PCHAR$PCHAR$array_of_const$TFORMATSETTINGS$$PCHAR
SYSUTILS_STRFMT$PCHAR$PCHAR$array_of_const$TFORMATSETTINGS$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	pushl	%eax
	movl	-12(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$2147483647,%edx
	call	SYSUTILS_FORMATBUF$crc90669634
	movb	$0,(%ebx,%eax,1)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_STRLFMT$PCHAR$LONGWORD$PCHAR$array_of_const$$PCHAR
SYSUTILS_STRLFMT$PCHAR$LONGWORD$PCHAR$array_of_const$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	12(%ebp),%eax
	pushl	%eax
	pushl	8(%ebp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRLFMT$PCHAR$LONGWORD$PCHAR$array_of_const$TFORMATSETTINGS$$PCHAR
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_STRLFMT$PCHAR$LONGWORD$PCHAR$array_of_const$TFORMATSETTINGS$$PCHAR
SYSUTILS_STRLFMT$PCHAR$LONGWORD$PCHAR$array_of_const$TFORMATSETTINGS$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%ebx
	movl	-12(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	pushl	%eax
	movl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	call	SYSUTILS_FORMATBUF$crc90669634
	movb	$0,(%ebx,%eax,1)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOFLOAT$ANSISTRING$$EXTENDED
SYSUTILS_STRTOFLOAT$ANSISTRING$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRTOFLOAT$ANSISTRING$TFORMATSETTINGS$$EXTENDED
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOFLOAT$ANSISTRING$TFORMATSETTINGS$$EXTENDED
SYSUTILS_STRTOFLOAT$ANSISTRING$TFORMATSETTINGS$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TEXTTOFLOAT$PCHAR$EXTENDED$TFORMATSETTINGS$$BOOLEAN
	testb	%al,%al
	je	Lj3749
	jmp	Lj3750
Lj3749:
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$11,-28(%ebp)
	leal	-28(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SINVALIDFLOAT+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La7:
	movl	%ebp,%ecx
	movl	$La7,%edx
	call	FPC_RAISEEXCEPTION
Lj3750:
	fldt	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOFLOATDEF$ANSISTRING$EXTENDED$$EXTENDED
SYSUTILS_STRTOFLOATDEF$ANSISTRING$EXTENDED$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRTOFLOATDEF$ANSISTRING$EXTENDED$TFORMATSETTINGS$$EXTENDED
	fstpt	-16(%ebp)
	fldt	-16(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOFLOATDEF$ANSISTRING$EXTENDED$TFORMATSETTINGS$$EXTENDED
SYSUTILS_STRTOFLOATDEF$ANSISTRING$EXTENDED$TFORMATSETTINGS$$EXTENDED:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	SYSUTILS_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$TFORMATSETTINGS$$BOOLEAN
	testb	%al,%al
	je	Lj3779
	jmp	Lj3780
Lj3779:
	movl	8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-16(%ebp)
	movw	16(%ebp),%ax
	movw	%ax,-12(%ebp)
Lj3780:
	fldt	-20(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_TEXTTOFLOAT$PCHAR$EXTENDED$TFORMATSETTINGS$$BOOLEAN
SYSUTILS_TEXTTOFLOAT$PCHAR$EXTENDED$TFORMATSETTINGS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj3793
	leal	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRPAS$PCHAR$$ANSISTRING
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	2(%eax),%al
	cmpb	3(%edx),%al
	jne	Lj3802
	jmp	Lj3801
Lj3802:
	movl	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	2(%eax),%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	testl	%eax,%eax
	jne	Lj3800
	jmp	Lj3801
Lj3800:
	movb	$0,-13(%ebp)
	jmp	Lj3793
Lj3801:
	movl	-12(%ebp),%eax
	movb	3(%eax),%al
	cmpb	$46,%al
	jne	Lj3811
	jmp	Lj3810
Lj3811:
	movl	-28(%ebp),%edx
	movb	$46,%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	testl	%eax,%eax
	jne	Lj3809
	jmp	Lj3810
Lj3809:
	movb	$0,-13(%ebp)
	jmp	Lj3793
Lj3810:
	movl	-28(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	3(%eax),%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3824
	jmp	Lj3825
Lj3824:
	leal	-28(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-24(%ebp),%edx
	movb	$46,-1(%eax,%edx,1)
Lj3825:
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-28(%ebp),%eax
	call	SYSUTILS_TRIM$ANSISTRING$$ANSISTRING
	movl	-72(%ebp),%eax
	leal	-20(%ebp),%edx
	call	fpc_val_real_ansistr
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj3793:
	call	FPC_POPADDRSTACK
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-28(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-28(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj3794
	call	FPC_RERAISE
Lj3794:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TEXTTOFLOAT$PCHAR$EXTENDED$$BOOLEAN
SYSUTILS_TEXTTOFLOAT$PCHAR$EXTENDED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TEXTTOFLOAT$PCHAR$EXTENDED$TFORMATSETTINGS$$BOOLEAN
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$$BOOLEAN
SYSUTILS_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$TFORMATSETTINGS$$BOOLEAN
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$TFORMATSETTINGS$$BOOLEAN
SYSUTILS_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$TFORMATSETTINGS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$76,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-28(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj3872
	leal	-28(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRPAS$PCHAR$$ANSISTRING
	movl	8(%ebp),%eax
	movl	8(%ebp),%edx
	movb	2(%eax),%al
	cmpb	3(%edx),%al
	jne	Lj3881
	jmp	Lj3880
Lj3881:
	movl	-28(%ebp),%edx
	movl	8(%ebp),%eax
	movb	2(%eax),%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	testl	%eax,%eax
	jne	Lj3879
	jmp	Lj3880
Lj3879:
	movb	$0,-13(%ebp)
	jmp	Lj3872
Lj3880:
	movl	8(%ebp),%eax
	movb	3(%eax),%al
	cmpb	$46,%al
	jne	Lj3890
	jmp	Lj3889
Lj3890:
	movl	-28(%ebp),%edx
	movb	$46,%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	testl	%eax,%eax
	jne	Lj3888
	jmp	Lj3889
Lj3888:
	movb	$0,-13(%ebp)
	jmp	Lj3872
Lj3889:
	movl	-28(%ebp),%edx
	movl	8(%ebp),%eax
	movb	3(%eax),%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj3903
	jmp	Lj3904
Lj3903:
	leal	-28(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-24(%ebp),%edx
	movb	$46,-1(%eax,%edx,1)
Lj3904:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj3912
	decl	%eax
	je	Lj3911
	decl	%eax
	je	Lj3914
	decl	%eax
	je	Lj3916
	decl	%eax
	je	Lj3913
	decl	%eax
	je	Lj3915
	jmp	Lj3910
Lj3911:
	leal	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	call	fpc_val_real_ansistr
	fldt	_$SYSUTILS$_Ld59
	fmulp	%st,%st(1)
	movl	-8(%ebp),%eax
	fistpq	(%eax)
	jmp	Lj3909
Lj3912:
	leal	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	call	fpc_val_real_ansistr
	movl	-8(%ebp),%eax
	fstpt	(%eax)
	jmp	Lj3909
Lj3913:
	leal	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	call	fpc_val_real_ansistr
	fstpl	-76(%ebp)
	fldl	-76(%ebp)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	jmp	Lj3909
Lj3914:
	leal	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	call	fpc_val_real_ansistr
	fstps	-72(%ebp)
	flds	-72(%ebp)
	movl	-8(%ebp),%eax
	fstps	(%eax)
	jmp	Lj3909
Lj3915:
	leal	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	call	fpc_val_real_ansistr
	movl	-8(%ebp),%eax
	fistpq	(%eax)
	jmp	Lj3909
Lj3916:
	leal	-20(%ebp),%edx
	movl	-28(%ebp),%eax
	call	fpc_val_real_ansistr
	fstpl	-76(%ebp)
	fldl	-76(%ebp)
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	jmp	Lj3909
Lj3910:
Lj3909:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj3872:
	call	FPC_POPADDRSTACK
	leal	-28(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-28(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj3873
	call	FPC_RERAISE
Lj3873:
	movb	-13(%ebp),%al
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTOFLOAT$ANSISTRING$SINGLE$$BOOLEAN
SYSUTILS_TRYSTRTOFLOAT$ANSISTRING$SINGLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TRYSTRTOFLOAT$ANSISTRING$SINGLE$TFORMATSETTINGS$$BOOLEAN
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTOFLOAT$ANSISTRING$SINGLE$TFORMATSETTINGS$$BOOLEAN
SYSUTILS_TRYSTRTOFLOAT$ANSISTRING$SINGLE$TFORMATSETTINGS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$2,%ecx
	call	SYSUTILS_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$TFORMATSETTINGS$$BOOLEAN
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTOFLOAT$ANSISTRING$DOUBLE$$BOOLEAN
SYSUTILS_TRYSTRTOFLOAT$ANSISTRING$DOUBLE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TRYSTRTOFLOAT$ANSISTRING$DOUBLE$TFORMATSETTINGS$$BOOLEAN
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTOFLOAT$ANSISTRING$DOUBLE$TFORMATSETTINGS$$BOOLEAN
SYSUTILS_TRYSTRTOFLOAT$ANSISTRING$DOUBLE$TFORMATSETTINGS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$4,%ecx
	call	SYSUTILS_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$TFORMATSETTINGS$$BOOLEAN
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTOFLOAT$ANSISTRING$EXTENDED$$BOOLEAN
SYSUTILS_TRYSTRTOFLOAT$ANSISTRING$EXTENDED$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TRYSTRTOFLOAT$ANSISTRING$EXTENDED$TFORMATSETTINGS$$BOOLEAN
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTOFLOAT$ANSISTRING$EXTENDED$TFORMATSETTINGS$$BOOLEAN
SYSUTILS_TRYSTRTOFLOAT$ANSISTRING$EXTENDED$TFORMATSETTINGS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TEXTTOFLOAT$PCHAR$EXTENDED$TFORMATSETTINGS$$BOOLEAN
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_FLOATTOSTRFINTL$crcAF83D1FD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$348,%esp
	movl	%ebx,-348(%ebp)
	movl	%esi,-344(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-340(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj4029
	movl	12(%ebp),%eax
	movb	3(%eax),%al
	movb	%al,-30(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj4036
	decl	%eax
	je	Lj4037
	decl	%eax
	je	Lj4038
	decl	%eax
	je	Lj4039
	decl	%eax
	je	Lj4040
	jmp	Lj4035
Lj4036:
	movl	16(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj4042
	decl	%eax
	je	Lj4043
	jmp	Lj4042
Lj4043:
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj4044
	jmp	Lj4046
Lj4046:
	movl	-12(%ebp),%eax
	cmpl	$19,%eax
	jg	Lj4044
	jmp	Lj4045
Lj4044:
	movl	$19,-12(%ebp)
Lj4045:
	jmp	Lj4041
Lj4042:
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj4049
	jmp	Lj4051
Lj4051:
	movl	-12(%ebp),%eax
	cmpl	$17,%eax
	jg	Lj4049
	jmp	Lj4050
Lj4049:
	movl	$17,-12(%ebp)
Lj4050:
Lj4041:
	movl	16(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj4055
	decl	%eax
	je	Lj4058
	decl	%eax
	je	Lj4057
	subl	$2,%eax
	je	Lj4056
	jmp	Lj4055
Lj4056:
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fstpl	-80(%ebp)
	fldl	-80(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	pushl	%ebx
	movl	-12(%ebp),%eax
	addl	$7,%eax
	movl	$1,%ecx
	movl	$-1,%edx
	call	fpc_ansistr_float
	jmp	Lj4054
Lj4057:
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fstps	-76(%ebp)
	flds	-76(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	pushl	%ebx
	movl	-12(%ebp),%eax
	addl	$6,%eax
	movl	$0,%ecx
	movl	$-1,%edx
	call	fpc_ansistr_float
	jmp	Lj4054
Lj4058:
	movl	-12(%ebp),%eax
	addl	$6,%eax
	movl	%eax,-76(%ebp)
	movl	-4(%ebp),%eax
	pushl	4(%eax)
	pushl	(%eax)
	pushl	$255
	leal	-336(%ebp),%ecx
	movl	-76(%ebp),%eax
	movl	$-1,%edx
	call	fpc_shortstr_currency
	leal	-340(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-340(%ebp)
	leal	-340(%ebp),%edx
	leal	-336(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-340(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-340(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj4054
Lj4055:
	movl	-4(%ebp),%eax
	movzwl	8(%eax),%edx
	pushl	%edx
	pushl	4(%eax)
	pushl	(%eax)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	pushl	%ebx
	movl	-12(%ebp),%eax
	addl	$8,%eax
	movl	$2,%ecx
	movl	$-1,%edx
	call	fpc_ansistr_float
Lj4054:
	jmp	Lj4109
	.balign 4,0x90
Lj4108:
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj4109:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$32,%al
	je	Lj4108
	jmp	Lj4110
Lj4110:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movb	$46,%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4123
	jmp	Lj4124
Lj4123:
	movl	8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-16(%ebp),%edx
	movb	-30(%ebp),%cl
	movb	%cl,-1(%eax,%edx,1)
	jmp	Lj4129
Lj4124:
	jmp	Lj4029
Lj4129:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movb	$69,%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4136
	jmp	Lj4137
Lj4136:
	movl	-20(%ebp),%eax
	addl	$2,%eax
	movl	%eax,-24(%ebp)
	movl	$0,-28(%ebp)
	jmp	Lj4143
	.balign 4,0x90
Lj4142:
	movl	-28(%ebp),%ecx
	imull	$10,%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	-24(%ebp),%edx
	movzbl	-1(%eax,%edx,1),%eax
	addl	%eax,%ecx
	subl	$48,%ecx
	movl	%ecx,-28(%ebp)
	incl	-24(%ebp)
Lj4143:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj4147
	movl	-4(%eax),%eax
Lj4147:
	cmpl	-24(%ebp),%eax
	jge	Lj4142
	jmp	Lj4144
Lj4144:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$45,%al
	je	Lj4148
	jmp	Lj4149
Lj4148:
	movl	-28(%ebp),%eax
	negl	%eax
	movl	%eax,-28(%ebp)
Lj4149:
	movl	-16(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	%eax,%edx
	cmpl	-20(%ebp),%edx
	jl	Lj4154
	jmp	Lj4153
Lj4154:
	movl	-28(%ebp),%eax
	cmpl	$-6,%eax
	jg	Lj4152
	jmp	Lj4153
Lj4152:
	movl	-20(%ebp),%edx
	decl	%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_setlength
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj4159
	jmp	Lj4160
Lj4159:
	movl	-28(%ebp),%ebx
	decl	%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj4162
	decl	-24(%ebp)
	.balign 4,0x90
Lj4163:
	incl	-24(%ebp)
	movl	8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-16(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	(%edx),%esi
	movl	-16(%ebp),%edx
	incl	%edx
	movb	-1(%esi,%edx,1),%dl
	movb	%dl,-1(%eax,%ecx,1)
	incl	-16(%ebp)
	cmpl	-24(%ebp),%ebx
	jg	Lj4163
Lj4162:
	movl	8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-16(%ebp),%edx
	movb	-30(%ebp),%cl
	movb	%cl,-1(%eax,%edx,1)
	movl	$1,-16(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$45,%al
	je	Lj4174
	jmp	Lj4175
Lj4174:
	incl	-16(%ebp)
Lj4175:
	jmp	Lj4177
	.balign 4,0x90
Lj4176:
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj4177:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	-16(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$48,%al
	je	Lj4186
	jmp	Lj4178
Lj4186:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj4187
	movl	-4(%eax),%eax
Lj4187:
	cmpl	-16(%ebp),%eax
	jg	Lj4185
	jmp	Lj4178
Lj4185:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	-30(%ebp),%al
	jne	Lj4176
	jmp	Lj4178
Lj4178:
	jmp	Lj4188
Lj4160:
	leal	-340(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-340(%ebp)
	leal	-328(%ebp),%eax
	pushl	%eax
	movl	-28(%ebp),%ecx
	negl	%ecx
	movl	$1,%edx
	movl	$_$SYSUTILS$_Ld60,%eax
	call	fpc_shortstr_copy
	leal	-328(%ebp),%eax
	leal	-340(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-340(%ebp),%eax
	movl	-16(%ebp),%ecx
	decl	%ecx
	movl	8(%ebp),%edx
	call	SYSTEM_INSERT$ANSISTRING$ANSISTRING$LONGINT
	movl	8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-16(%ebp),%edx
	movl	-28(%ebp),%ecx
	subl	%ecx,%edx
	movl	8(%ebp),%ecx
	movl	(%ecx),%esi
	movl	-16(%ebp),%ecx
	movl	-28(%ebp),%ebx
	subl	%ebx,%ecx
	decl	%ecx
	movb	-1(%esi,%ecx,1),%cl
	movb	%cl,-1(%eax,%edx,1)
	movl	8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-16(%ebp),%edx
	movb	-30(%ebp),%cl
	movb	%cl,-1(%eax,%edx,1)
	movl	-28(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj4215
	jmp	Lj4216
Lj4215:
	movl	8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-16(%ebp),%edx
	movl	-28(%ebp),%ecx
	subl	%ecx,%edx
	decl	%edx
	movb	$48,-1(%eax,%edx,1)
Lj4216:
Lj4188:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj4223
	movl	-4(%eax),%eax
Lj4223:
	movl	%eax,-24(%ebp)
	jmp	Lj4225
	.balign 4,0x90
Lj4224:
	decl	-24(%ebp)
Lj4225:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4227
	jmp	Lj4226
Lj4227:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	-24(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$48,%al
	je	Lj4224
	jmp	Lj4226
Lj4226:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	-24(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	-30(%ebp),%al
	je	Lj4228
	jmp	Lj4229
Lj4228:
	decl	-24(%ebp)
Lj4229:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj4230
	jmp	Lj4232
Lj4232:
	movl	-24(%ebp),%eax
	cmpl	$1,%eax
	je	Lj4233
	jmp	Lj4231
Lj4233:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$45,%al
	je	Lj4230
	jmp	Lj4231
Lj4230:
	movl	$_$SYSUTILS$_Ld61,%esi
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%esi,(%ebx)
	jmp	Lj4236
Lj4231:
	movl	-24(%ebp),%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_setlength
Lj4236:
	jmp	Lj4241
Lj4153:
	jmp	Lj4243
	.balign 4,0x90
Lj4242:
	movl	-20(%ebp),%edx
	decl	%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	decl	-20(%ebp)
Lj4243:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	decl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$48,%al
	je	Lj4242
	jmp	Lj4244
Lj4244:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	decl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	-30(%ebp),%al
	je	Lj4251
	jmp	Lj4252
Lj4251:
	movl	-20(%ebp),%edx
	decl	%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	decl	-20(%ebp)
Lj4252:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$43,%al
	je	Lj4259
	jmp	Lj4260
Lj4259:
	movl	-20(%ebp),%edx
	incl	%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	jmp	Lj4267
Lj4260:
	incl	-20(%ebp)
Lj4267:
	jmp	Lj4269
	.balign 4,0x90
Lj4268:
	movl	-20(%ebp),%edx
	incl	%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj4269:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$48,%al
	je	Lj4268
	jmp	Lj4270
Lj4270:
Lj4241:
Lj4137:
	jmp	Lj4034
Lj4037:
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj4277
	jmp	Lj4279
Lj4279:
	movl	-12(%ebp),%eax
	cmpl	$17,%eax
	jg	Lj4277
	jmp	Lj4278
Lj4277:
	movl	$17,-12(%ebp)
Lj4278:
	movl	16(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj4283
	decl	%eax
	je	Lj4286
	decl	%eax
	je	Lj4285
	subl	$2,%eax
	je	Lj4284
	jmp	Lj4283
Lj4284:
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fstpl	-80(%ebp)
	fldl	-80(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	pushl	%ebx
	movl	-12(%ebp),%eax
	addl	$7,%eax
	movl	$1,%ecx
	movl	$-1,%edx
	call	fpc_ansistr_float
	jmp	Lj4282
Lj4285:
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fstps	-76(%ebp)
	flds	-76(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	pushl	%ebx
	movl	-12(%ebp),%eax
	addl	$6,%eax
	movl	$0,%ecx
	movl	$-1,%edx
	call	fpc_ansistr_float
	jmp	Lj4282
Lj4286:
	movl	-12(%ebp),%eax
	addl	$6,%eax
	movl	%eax,-76(%ebp)
	movl	-4(%ebp),%eax
	pushl	4(%eax)
	pushl	(%eax)
	pushl	$255
	leal	-332(%ebp),%ecx
	movl	-76(%ebp),%eax
	movl	$-1,%edx
	call	fpc_shortstr_currency
	leal	-340(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-340(%ebp)
	leal	-340(%ebp),%edx
	leal	-332(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-340(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-340(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj4282
Lj4283:
	movl	-4(%ebp),%edx
	movzwl	8(%edx),%eax
	pushl	%eax
	pushl	4(%edx)
	pushl	(%edx)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	pushl	%ebx
	movl	-12(%ebp),%eax
	addl	$8,%eax
	movl	$2,%ecx
	movl	$-1,%edx
	call	fpc_ansistr_float
Lj4282:
	jmp	Lj4337
	.balign 4,0x90
Lj4336:
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj4337:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$32,%al
	je	Lj4336
	jmp	Lj4338
Lj4338:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$45,%al
	je	Lj4345
	jmp	Lj4346
Lj4345:
	movl	8(%ebp),%eax
	call	fpc_ansistr_unique
	movb	-30(%ebp),%dl
	movb	%dl,2(%eax)
	jmp	Lj4351
Lj4346:
	movl	8(%ebp),%eax
	call	fpc_ansistr_unique
	movb	-30(%ebp),%dl
	movb	%dl,1(%eax)
Lj4351:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movb	$69,%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4362
	jmp	Lj4363
Lj4362:
	addl	$2,-16(%ebp)
	movl	20(%ebp),%eax
	cmpl	$4,%eax
	jg	Lj4364
	jmp	Lj4365
Lj4364:
	movl	$4,20(%ebp)
Lj4365:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj4370
	movl	-4(%edx),%edx
Lj4370:
	movl	-16(%ebp),%eax
	subl	%eax,%edx
	movl	20(%ebp),%eax
	subl	%eax,%edx
	incl	%edx
	movl	%edx,20(%ebp)
	movl	20(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj4371
	jmp	Lj4372
Lj4371:
	leal	-340(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-340(%ebp)
	leal	-328(%ebp),%eax
	pushl	%eax
	movl	20(%ebp),%ecx
	negl	%ecx
	movl	$1,%edx
	movl	$_$SYSUTILS$_Ld62,%eax
	call	fpc_shortstr_copy
	leal	-328(%ebp),%eax
	leal	-340(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-340(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	8(%ebp),%edx
	call	SYSTEM_INSERT$ANSISTRING$ANSISTRING$LONGINT
	jmp	Lj4391
Lj4372:
	jmp	Lj4393
	.balign 4,0x90
Lj4392:
	movl	-16(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$1,%ecx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj4403
	movl	-4(%eax),%eax
Lj4403:
	cmpl	-16(%ebp),%eax
	jl	Lj4401
	jmp	Lj4402
Lj4401:
	movl	-16(%ebp),%edx
	subl	$2,%edx
	movl	8(%ebp),%eax
	movl	$2,%ecx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	jmp	Lj4394
Lj4402:
	decl	20(%ebp)
Lj4393:
	movl	20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj4410
	jmp	Lj4394
Lj4410:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$48,%al
	je	Lj4392
	jmp	Lj4394
Lj4394:
Lj4391:
Lj4363:
	jmp	Lj4034
Lj4038:
	movl	20(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj4411
	jmp	Lj4412
Lj4411:
	movl	$2,20(%ebp)
	jmp	Lj4415
Lj4412:
	movl	20(%ebp),%eax
	cmpl	$18,%eax
	jg	Lj4416
	jmp	Lj4417
Lj4416:
	movl	$18,20(%ebp)
Lj4417:
Lj4415:
	movl	16(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj4421
	decl	%eax
	je	Lj4424
	decl	%eax
	je	Lj4423
	subl	$2,%eax
	je	Lj4422
	jmp	Lj4421
Lj4422:
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fstpl	-80(%ebp)
	fldl	-80(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	pushl	%ebx
	movl	20(%ebp),%edx
	movl	$1,%ecx
	movl	$0,%eax
	call	fpc_ansistr_float
	jmp	Lj4420
Lj4423:
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fstps	-76(%ebp)
	flds	-76(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	pushl	%ebx
	movl	20(%ebp),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	fpc_ansistr_float
	jmp	Lj4420
Lj4424:
	movl	-4(%ebp),%eax
	pushl	4(%eax)
	pushl	(%eax)
	pushl	$255
	leal	-328(%ebp),%ecx
	movl	20(%ebp),%edx
	movl	$0,%eax
	call	fpc_shortstr_currency
	leal	-340(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-340(%ebp)
	leal	-340(%ebp),%edx
	leal	-328(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-340(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-340(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj4420
Lj4421:
	movl	-4(%ebp),%eax
	movzwl	8(%eax),%edx
	pushl	%edx
	pushl	4(%eax)
	pushl	(%eax)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	pushl	%ebx
	movl	20(%ebp),%edx
	movl	$2,%ecx
	movl	$0,%eax
	call	fpc_ansistr_float
Lj4420:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$32,%al
	je	Lj4472
	jmp	Lj4473
Lj4472:
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj4473:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movb	$46,%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4486
	jmp	Lj4487
Lj4486:
	movl	8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-16(%ebp),%edx
	movb	-30(%ebp),%cl
	movb	%cl,-1(%eax,%edx,1)
Lj4487:
	jmp	Lj4034
Lj4039:
	movl	20(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj4492
	jmp	Lj4493
Lj4492:
	movl	$2,20(%ebp)
	jmp	Lj4496
Lj4493:
	movl	20(%ebp),%eax
	cmpl	$17,%eax
	jg	Lj4497
	jmp	Lj4498
Lj4497:
	movl	$17,20(%ebp)
Lj4498:
Lj4496:
	movl	16(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj4502
	decl	%eax
	je	Lj4505
	decl	%eax
	je	Lj4504
	subl	$2,%eax
	je	Lj4503
	jmp	Lj4502
Lj4503:
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fstpl	-80(%ebp)
	fldl	-80(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	pushl	%ebx
	movl	20(%ebp),%edx
	movl	$1,%ecx
	movl	$0,%eax
	call	fpc_ansistr_float
	jmp	Lj4501
Lj4504:
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fstps	-76(%ebp)
	flds	-76(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	pushl	%ebx
	movl	20(%ebp),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	fpc_ansistr_float
	jmp	Lj4501
Lj4505:
	movl	-4(%ebp),%eax
	pushl	4(%eax)
	pushl	(%eax)
	pushl	$255
	leal	-328(%ebp),%ecx
	movl	20(%ebp),%edx
	movl	$0,%eax
	call	fpc_shortstr_currency
	leal	-340(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-340(%ebp)
	leal	-340(%ebp),%edx
	leal	-328(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-340(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-340(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj4501
Lj4502:
	movl	-4(%ebp),%eax
	movzwl	8(%eax),%edx
	pushl	%edx
	pushl	4(%eax)
	pushl	(%eax)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	pushl	%ebx
	movl	20(%ebp),%edx
	movl	$2,%ecx
	movl	$0,%eax
	call	fpc_ansistr_float
Lj4501:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$32,%al
	je	Lj4553
	jmp	Lj4554
Lj4553:
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj4554:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movb	$46,%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4567
	jmp	Lj4568
Lj4567:
	movl	8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-16(%ebp),%edx
	movb	-30(%ebp),%cl
	movb	%cl,-1(%eax,%edx,1)
	jmp	Lj4573
Lj4568:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj4576
	movl	-4(%eax),%eax
Lj4576:
	incl	%eax
	movl	%eax,-16(%ebp)
Lj4573:
	subl	$3,-16(%ebp)
	jmp	Lj4578
	.balign 4,0x90
Lj4577:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	-16(%ebp),%eax
	decl	%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$45,%al
	jne	Lj4582
	jmp	Lj4581
Lj4582:
	movl	12(%ebp),%eax
	movb	2(%eax),%al
	testb	%al,%al
	jne	Lj4580
	jmp	Lj4581
Lj4580:
	leal	-340(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-340(%ebp)
	leal	-340(%ebp),%edx
	movl	12(%ebp),%eax
	movb	2(%eax),%al
	call	fpc_char_to_ansistr
	movl	-340(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	8(%ebp),%edx
	call	SYSTEM_INSERT$ANSISTRING$ANSISTRING$LONGINT
Lj4581:
	subl	$3,-16(%ebp)
Lj4578:
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj4577
	jmp	Lj4579
Lj4579:
	jmp	Lj4034
Lj4040:
	movl	20(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj4593
	jmp	Lj4594
Lj4593:
	movl	12(%ebp),%eax
	movzbl	4(%eax),%eax
	movl	%eax,20(%ebp)
	jmp	Lj4597
Lj4594:
	movl	20(%ebp),%eax
	cmpl	$18,%eax
	jg	Lj4598
	jmp	Lj4599
Lj4598:
	movl	$18,20(%ebp)
Lj4599:
Lj4597:
	movl	16(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj4603
	decl	%eax
	je	Lj4606
	decl	%eax
	je	Lj4605
	subl	$2,%eax
	je	Lj4604
	jmp	Lj4603
Lj4604:
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fstpl	-80(%ebp)
	fldl	-80(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	pushl	%ebx
	movl	20(%ebp),%edx
	movl	$1,%ecx
	movl	$0,%eax
	call	fpc_ansistr_float
	jmp	Lj4602
Lj4605:
	movl	-4(%ebp),%eax
	fldt	(%eax)
	fstps	-76(%ebp)
	flds	-76(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	pushl	%ebx
	movl	20(%ebp),%edx
	movl	$0,%ecx
	movl	$0,%eax
	call	fpc_ansistr_float
	jmp	Lj4602
Lj4606:
	movl	-4(%ebp),%eax
	pushl	4(%eax)
	pushl	(%eax)
	pushl	$255
	leal	-328(%ebp),%ecx
	movl	20(%ebp),%edx
	movl	$0,%eax
	call	fpc_shortstr_currency
	leal	-340(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-340(%ebp)
	leal	-340(%ebp),%edx
	leal	-328(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-340(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-340(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj4602
Lj4603:
	movl	-4(%ebp),%edx
	movzwl	8(%edx),%eax
	pushl	%eax
	pushl	4(%edx)
	pushl	(%edx)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	pushl	%ebx
	movl	20(%ebp),%edx
	movl	$2,%ecx
	movl	$0,%eax
	call	fpc_ansistr_float
Lj4602:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$45,%al
	seteb	-29(%ebp)
	cmpb	$0,-29(%ebp)
	jne	Lj4656
	jmp	Lj4657
Lj4656:
	movl	8(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj4657:
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movb	$46,%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj4670
	jmp	Lj4671
Lj4670:
	movl	8(%ebp),%eax
	call	fpc_ansistr_unique
	movl	-16(%ebp),%edx
	movb	-30(%ebp),%cl
	movb	%cl,-1(%eax,%edx,1)
Lj4671:
	subl	$3,-16(%ebp)
	jmp	Lj4677
	.balign 4,0x90
Lj4676:
	movl	12(%ebp),%eax
	movb	2(%eax),%al
	testb	%al,%al
	jne	Lj4679
	jmp	Lj4680
Lj4679:
	leal	-340(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-340(%ebp)
	leal	-340(%ebp),%edx
	movl	12(%ebp),%eax
	movb	2(%eax),%al
	call	fpc_char_to_ansistr
	movl	-340(%ebp),%eax
	movl	-16(%ebp),%ecx
	movl	8(%ebp),%edx
	call	SYSTEM_INSERT$ANSISTRING$ANSISTRING$LONGINT
Lj4680:
	subl	$3,-16(%ebp)
Lj4677:
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj4676
	jmp	Lj4678
Lj4678:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj4694
	movl	-4(%eax),%eax
Lj4694:
	cmpl	$1,%eax
	jg	Lj4693
	jmp	Lj4692
Lj4693:
	cmpb	$0,-29(%ebp)
	jne	Lj4691
	jmp	Lj4692
Lj4691:
	movl	8(%ebp),%edx
	movl	%ebp,%eax
	call	SYSUTILS_FLOATTOSTRFINTL$crcAF83D1FD_REMOVELEADINGNEGATIVESIGN$ANSISTRING$$BOOLEAN
	testb	%al,%al
	seteb	-29(%ebp)
Lj4692:
	movb	-29(%ebp),%al
	testb	%al,%al
	je	Lj4701
	jmp	Lj4702
Lj4701:
	movl	12(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj4705
	decb	%al
	je	Lj4706
	decb	%al
	je	Lj4707
	decb	%al
	je	Lj4708
	jmp	Lj4704
Lj4705:
	movl	8(%ebp),%eax
	movl	(%eax),%ecx
	movl	12(%ebp),%eax
	movl	8(%eax),%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_concat
	jmp	Lj4703
Lj4706:
	movl	12(%ebp),%eax
	movl	8(%eax),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_concat
	jmp	Lj4703
Lj4707:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	$_$SYSUTILS$_Ld63,%eax
	movl	%eax,-80(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-76(%ebp)
	leal	-84(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj4703
Lj4708:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	$_$SYSUTILS$_Ld63,%eax
	movl	%eax,-80(%ebp)
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-76(%ebp)
	leal	-84(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj4703
Lj4704:
Lj4703:
	jmp	Lj4733
Lj4702:
	movl	12(%ebp),%eax
	movb	1(%eax),%al
	testb	%al,%al
	je	Lj4736
	decb	%al
	je	Lj4737
	decb	%al
	je	Lj4738
	decb	%al
	je	Lj4739
	decb	%al
	je	Lj4740
	decb	%al
	je	Lj4741
	decb	%al
	je	Lj4742
	decb	%al
	je	Lj4743
	decb	%al
	je	Lj4744
	decb	%al
	je	Lj4745
	decb	%al
	je	Lj4746
	decb	%al
	je	Lj4747
	decb	%al
	je	Lj4748
	decb	%al
	je	Lj4749
	decb	%al
	je	Lj4750
	decb	%al
	je	Lj4751
	jmp	Lj4735
Lj4736:
	movl	$_$SYSUTILS$_Ld64,%eax
	movl	%eax,-88(%ebp)
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	$_$SYSUTILS$_Ld65,%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$3,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj4734
Lj4737:
	movl	$_$SYSUTILS$_Ld66,%eax
	movl	%eax,-84(%ebp)
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-76(%ebp)
	leal	-84(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj4734
Lj4738:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	$_$SYSUTILS$_Ld66,%eax
	movl	%eax,-80(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-76(%ebp)
	leal	-84(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj4734
Lj4739:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	$_$SYSUTILS$_Ld66,%eax
	movl	%eax,-76(%ebp)
	leal	-84(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj4734
Lj4740:
	movl	$_$SYSUTILS$_Ld64,%eax
	movl	%eax,-88(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	$_$SYSUTILS$_Ld65,%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$3,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj4734
Lj4741:
	movl	$_$SYSUTILS$_Ld66,%eax
	movl	%eax,-84(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-76(%ebp)
	leal	-84(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj4734
Lj4742:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	$_$SYSUTILS$_Ld66,%eax
	movl	%eax,-80(%ebp)
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-76(%ebp)
	leal	-84(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj4734
Lj4743:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	$_$SYSUTILS$_Ld66,%eax
	movl	%eax,-76(%ebp)
	leal	-84(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj4734
Lj4744:
	movl	$_$SYSUTILS$_Ld66,%eax
	movl	%eax,-88(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	$_$SYSUTILS$_Ld63,%eax
	movl	%eax,-80(%ebp)
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$3,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj4734
Lj4745:
	movl	$_$SYSUTILS$_Ld66,%eax
	movl	%eax,-88(%ebp)
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	$_$SYSUTILS$_Ld63,%eax
	movl	%eax,-80(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$3,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj4734
Lj4746:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	$_$SYSUTILS$_Ld63,%eax
	movl	%eax,-84(%ebp)
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	$_$SYSUTILS$_Ld66,%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$3,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj4734
Lj4747:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	$_$SYSUTILS$_Ld63,%eax
	movl	%eax,-84(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	$_$SYSUTILS$_Ld66,%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$3,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj4734
Lj4748:
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	$_$SYSUTILS$_Ld63,%eax
	movl	%eax,-84(%ebp)
	movl	$_$SYSUTILS$_Ld66,%eax
	movl	%eax,-80(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$3,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj4734
Lj4749:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	$_$SYSUTILS$_Ld66,%eax
	movl	%eax,-84(%ebp)
	movl	$_$SYSUTILS$_Ld63,%eax
	movl	%eax,-80(%ebp)
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-76(%ebp)
	leal	-88(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$3,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj4734
Lj4750:
	movl	$_$SYSUTILS$_Ld64,%eax
	movl	%eax,-92(%ebp)
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	$_$SYSUTILS$_Ld63,%eax
	movl	%eax,-84(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	$_$SYSUTILS$_Ld65,%eax
	movl	%eax,-76(%ebp)
	leal	-92(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$4,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj4734
Lj4751:
	movl	$_$SYSUTILS$_Ld64,%eax
	movl	%eax,-92(%ebp)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-88(%ebp)
	movl	$_$SYSUTILS$_Ld63,%eax
	movl	%eax,-84(%ebp)
	movl	12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-80(%ebp)
	movl	$_$SYSUTILS$_Ld65,%eax
	movl	%eax,-76(%ebp)
	leal	-92(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$4,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj4734
Lj4735:
Lj4734:
Lj4733:
	jmp	Lj4034
Lj4035:
Lj4034:
	movl	-8(%ebp),%eax
	cmpl	$4,%eax
	je	Lj4852
Lj4852:
	jne	Lj4851
	jmp	Lj4849
Lj4851:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj4853
	movl	-4(%eax),%eax
Lj4853:
	cmpl	$1,%eax
	jg	Lj4850
	jmp	Lj4849
Lj4850:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	cmpb	$45,%al
	je	Lj4848
	jmp	Lj4849
Lj4848:
	movl	8(%ebp),%edx
	movl	%ebp,%eax
	call	SYSUTILS_FLOATTOSTRFINTL$crcAF83D1FD_REMOVELEADINGNEGATIVESIGN$ANSISTRING$$BOOLEAN
Lj4849:
Lj4029:
	call	FPC_POPADDRSTACK
	leal	-340(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-340(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj4030
	call	FPC_RERAISE
Lj4030:
	movl	-348(%ebp),%ebx
	movl	-344(%ebp),%esi
	leave
	ret	$16

.text
	.balign 4,0x90
SYSUTILS_FLOATTOSTRFINTL$crcAF83D1FD_REMOVELEADINGNEGATIVESIGN$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$100,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%edi,-92(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-9(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	cmpl	$4,%eax
	je	Lj4860
	jmp	Lj4861
Lj4860:
	movl	$1,-24(%ebp)
	jmp	Lj4864
Lj4861:
	movl	$2,-24(%ebp)
Lj4864:
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movb	2(%eax),%al
	movb	%al,-17(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj4872
	movl	-4(%eax),%eax
Lj4872:
	movl	%eax,%edi
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	-16(%ebp),%edi
	jl	Lj4870
	decl	-16(%ebp)
	.balign 4,0x90
Lj4871:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%ebx
	movl	-16(%ebp),%esi
	pushl	$32
	pushl	$32
	movl	$_$SYSUTILS$_Ld67,%eax
	movl	-8(%ebp),%edx
	movzbl	-30(%edx),%edx
	movl	%edx,%ecx
	leal	-88(%ebp),%edx
	call	fpc_varset_set
	leal	-88(%ebp),%eax
	movzbl	-17(%ebp),%edx
	movl	%edx,%ecx
	leal	-56(%ebp),%edx
	call	fpc_varset_set
	movzbl	-1(%ebx,%esi,1),%eax
	btl	%eax,-56(%ebp)
	setcb	-9(%ebp)
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj4891
	jmp	Lj4892
Lj4891:
	jmp	Lj4870
Lj4892:
	cmpl	-16(%ebp),%edi
	jg	Lj4871
Lj4870:
	cmpb	$0,-9(%ebp)
	jne	Lj4895
	jmp	Lj4894
Lj4895:
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	cmpl	$4,%eax
	jne	Lj4893
	jmp	Lj4894
Lj4893:
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	movl	$1,%edx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
Lj4894:
	movb	-9(%ebp),%al
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	movl	-92(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTR$EXTENDED$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_FLOATTOSTR$EXTENDED$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	pushl	$0
	pushl	$0
	movl	-4(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	8(%ebp),%eax
	movl	$15,%ecx
	movl	$0,%edx
	call	SYSUTILS_FLOATTOSTRFINTL$crcAF83D1FD
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTR$EXTENDED$$ANSISTRING
SYSUTILS_FLOATTOSTR$EXTENDED$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%edx
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%eax
	call	SYSUTILS_FLOATTOSTR$EXTENDED$TFORMATSETTINGS$$ANSISTRING
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTR$CURRENCY$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_FLOATTOSTR$CURRENCY$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	pushl	$0
	pushl	$1
	movl	-4(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	8(%ebp),%eax
	movl	$15,%ecx
	movl	$0,%edx
	call	SYSUTILS_FLOATTOSTRFINTL$crcAF83D1FD
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTR$CURRENCY$$ANSISTRING
SYSUTILS_FLOATTOSTR$CURRENCY$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%edx
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%eax
	call	SYSUTILS_FLOATTOSTR$CURRENCY$TFORMATSETTINGS$$ANSISTRING
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTR$DOUBLE$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_FLOATTOSTR$DOUBLE$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fldl	8(%ebp)
	fstpt	-20(%ebp)
	pushl	$0
	pushl	$4
	movl	-4(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	movl	$15,%ecx
	movl	$0,%edx
	call	SYSUTILS_FLOATTOSTRFINTL$crcAF83D1FD
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING
SYSUTILS_FLOATTOSTR$DOUBLE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%edx
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%eax
	call	SYSUTILS_FLOATTOSTR$DOUBLE$TFORMATSETTINGS$$ANSISTRING
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTR$SINGLE$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_FLOATTOSTR$SINGLE$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	flds	8(%ebp)
	fstpt	-20(%ebp)
	pushl	$0
	pushl	$2
	movl	-4(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	movl	$15,%ecx
	movl	$0,%edx
	call	SYSUTILS_FLOATTOSTRFINTL$crcAF83D1FD
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTR$SINGLE$$ANSISTRING
SYSUTILS_FLOATTOSTR$SINGLE$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%edx
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%eax
	call	SYSUTILS_FLOATTOSTR$SINGLE$TFORMATSETTINGS$$ANSISTRING
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTR$COMP$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_FLOATTOSTR$COMP$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fildq	8(%ebp)
	fstpt	-20(%ebp)
	pushl	$0
	pushl	$5
	movl	-4(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	movl	$15,%ecx
	movl	$0,%edx
	call	SYSUTILS_FLOATTOSTRFINTL$crcAF83D1FD
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTR$COMP$$ANSISTRING
SYSUTILS_FLOATTOSTR$COMP$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%edx
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%eax
	call	SYSUTILS_FLOATTOSTR$COMP$TFORMATSETTINGS$$ANSISTRING
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTR$INT64$$ANSISTRING
SYSUTILS_FLOATTOSTR$INT64$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%edx
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%eax
	call	SYSUTILS_FLOATTOSTR$INT64$TFORMATSETTINGS$$ANSISTRING
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTR$INT64$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_FLOATTOSTR$INT64$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	fildq	8(%ebp)
	fstpt	-20(%ebp)
	pushl	$0
	pushl	$5
	movl	-4(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	movl	$15,%ecx
	movl	$0,%edx
	call	SYSUTILS_FLOATTOSTRFINTL$crcAF83D1FD
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOTEXT$crcA3DD45F0
SYSUTILS_FLOATTOTEXT$crcA3DD45F0:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-104(%ebp)
	leal	-72(%ebp),%ecx
	leal	-96(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5056
	leal	-104(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-104(%ebp)
	movzwl	24(%ebp),%eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	16(%ebp)
	movl	8(%ebp),%eax
	pushl	%eax
	leal	-104(%ebp),%eax
	pushl	%eax
	movl	12(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSUTILS_FLOATTOSTRF$crc4976C91A
	movl	-104(%ebp),%ecx
	leal	-57(%ebp),%eax
	movl	$40,%edx
	call	fpc_ansistr_to_shortstr
	movzbl	-57(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%ecx
	leal	-56(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj5056:
	call	FPC_POPADDRSTACK
	leal	-104(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-104(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5057
	call	FPC_RERAISE
Lj5057:
	movl	-16(%ebp),%eax
	leave
	ret	$20

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOTEXT$PCHAR$EXTENDED$TFLOATFORMAT$LONGINT$LONGINT$$LONGINT
SYSUTILS_FLOATTOTEXT$PCHAR$EXTENDED$TFLOATFORMAT$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movzwl	20(%ebp),%eax
	pushl	%eax
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FLOATTOTEXT$crcA3DD45F0
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTRF$crc4976C91A
SYSUTILS_FLOATTOSTRF$crc4976C91A:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	-12(%ebp)
	pushl	$0
	movl	12(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	16(%ebp),%eax
	call	SYSUTILS_FLOATTOSTRFINTL$crcAF83D1FD
	leave
	ret	$20

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTRF$EXTENDED$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING
SYSUTILS_FLOATTOSTRF$EXTENDED$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movzwl	20(%ebp),%eax
	pushl	%eax
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FLOATTOSTRF$crc4976C91A
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTRF$crcDC46F419
SYSUTILS_FLOATTOSTRF$crcDC46F419:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	-12(%ebp)
	pushl	$1
	movl	12(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	16(%ebp),%eax
	call	SYSUTILS_FLOATTOSTRFINTL$crcAF83D1FD
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTRF$CURRENCY$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING
SYSUTILS_FLOATTOSTRF$CURRENCY$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FLOATTOSTRF$crcDC46F419
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTRF$DOUBLE$TFLOATFORMAT$LONGINT$LONGINT$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_FLOATTOSTRF$DOUBLE$TFLOATFORMAT$LONGINT$LONGINT$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	fldl	16(%ebp)
	fstpt	-24(%ebp)
	pushl	-12(%ebp)
	pushl	$4
	movl	12(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	-24(%ebp),%eax
	call	SYSUTILS_FLOATTOSTRFINTL$crcAF83D1FD
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTRF$DOUBLE$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING
SYSUTILS_FLOATTOSTRF$DOUBLE$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	subl	$8,%esp
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FLOATTOSTRF$DOUBLE$TFLOATFORMAT$LONGINT$LONGINT$TFORMATSETTINGS$$ANSISTRING
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTRF$SINGLE$TFLOATFORMAT$LONGINT$LONGINT$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_FLOATTOSTRF$SINGLE$TFLOATFORMAT$LONGINT$LONGINT$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	flds	16(%ebp)
	fstpt	-24(%ebp)
	pushl	-12(%ebp)
	pushl	$2
	movl	12(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	-24(%ebp),%eax
	call	SYSUTILS_FLOATTOSTRFINTL$crcAF83D1FD
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTRF$SINGLE$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING
SYSUTILS_FLOATTOSTRF$SINGLE$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	12(%ebp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FLOATTOSTRF$SINGLE$TFLOATFORMAT$LONGINT$LONGINT$TFORMATSETTINGS$$ANSISTRING
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTRF$COMP$TFLOATFORMAT$LONGINT$LONGINT$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_FLOATTOSTRF$COMP$TFLOATFORMAT$LONGINT$LONGINT$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	fildq	16(%ebp)
	fstpt	-24(%ebp)
	pushl	-12(%ebp)
	pushl	$5
	movl	12(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	-24(%ebp),%eax
	call	SYSUTILS_FLOATTOSTRFINTL$crcAF83D1FD
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTRF$COMP$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING
SYSUTILS_FLOATTOSTRF$COMP$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FLOATTOSTRF$COMP$TFLOATFORMAT$LONGINT$LONGINT$TFORMATSETTINGS$$ANSISTRING
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTRF$INT64$TFLOATFORMAT$LONGINT$LONGINT$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_FLOATTOSTRF$INT64$TFLOATFORMAT$LONGINT$LONGINT$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	fildq	16(%ebp)
	fstpt	-24(%ebp)
	pushl	-12(%ebp)
	pushl	$5
	movl	12(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	leal	-24(%ebp),%eax
	call	SYSUTILS_FLOATTOSTRFINTL$crcAF83D1FD
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOSTRF$INT64$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING
SYSUTILS_FLOATTOSTRF$INT64$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FLOATTOSTRF$INT64$TFLOATFORMAT$LONGINT$LONGINT$TFORMATSETTINGS$$ANSISTRING
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_CURRTOSTRF$CURRENCY$TFLOATFORMAT$LONGINT$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_CURRTOSTRF$CURRENCY$TFLOATFORMAT$LONGINT$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$19,%edx
	call	SYSUTILS_FLOATTOSTRF$crcDC46F419
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_CURRTOSTRF$CURRENCY$TFLOATFORMAT$LONGINT$$ANSISTRING
SYSUTILS_CURRTOSTRF$CURRENCY$TFLOATFORMAT$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_CURRTOSTRF$CURRENCY$TFLOATFORMAT$LONGINT$TFORMATSETTINGS$$ANSISTRING
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTODATETIME$EXTENDED$$TDATETIME
SYSUTILS_FLOATTODATETIME$EXTENDED$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	fldl	TC_SYSUTILS_MINDATETIME
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj5317
	jmp	Lj5319
Lj5319:
	fldl	TC_SYSUTILS_MAXDATETIME
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj5317
	jmp	Lj5318
Lj5317:
	leal	8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$3,-16(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SINVALIDDATETIME+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La8:
	movl	%ebp,%ecx
	movl	$La8,%edx
	call	FPC_RAISEEXCEPTION
Lj5318:
	fldt	8(%ebp)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYFLOATTOCURR$EXTENDED$CURRENCY$$BOOLEAN
SYSUTILS_TRYFLOATTOCURR$EXTENDED$CURRENCY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	fldt	_$SYSUTILS$_Ld59
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fildq	TC_SYSUTILS_MINCURRENCY
	fcompp
	fnstsw	%ax
	sahf
	jbe	Lj5336
	jmp	Lj5335
Lj5336:
	fldt	_$SYSUTILS$_Ld59
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fildq	TC_SYSUTILS_MAXCURRENCY
	fcompp
	fnstsw	%ax
	sahf
	jae	Lj5334
	jmp	Lj5335
Lj5334:
	movb	$1,-5(%ebp)
	jmp	Lj5337
Lj5335:
	movb	$0,-5(%ebp)
Lj5337:
	cmpb	$0,-5(%ebp)
	jne	Lj5338
	jmp	Lj5339
Lj5338:
	movl	-4(%ebp),%eax
	fldt	_$SYSUTILS$_Ld59
	fldt	8(%ebp)
	fmulp	%st,%st(1)
	fistpq	(%eax)
Lj5339:
	movb	-5(%ebp),%al
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOCURR$EXTENDED$$CURRENCY
SYSUTILS_FLOATTOCURR$EXTENDED$$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	$0,-60(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5344
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-8(%ebp),%eax
	call	SYSUTILS_TRYFLOATTOCURR$EXTENDED$CURRENCY$$BOOLEAN
	testb	%al,%al
	je	Lj5347
	jmp	Lj5348
Lj5347:
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-60(%ebp),%eax
	call	SYSUTILS_FLOATTOSTR$EXTENDED$$ANSISTRING
	movl	-60(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	$11,-56(%ebp)
	leal	-56(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SINVALIDCURRENCY+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La9:
	movl	%ebp,%ecx
	movl	$La9,%edx
	call	FPC_RAISEEXCEPTION
Lj5348:
Lj5344:
	call	FPC_POPADDRSTACK
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5345
	call	FPC_RERAISE
Lj5345:
	fildq	-8(%ebp)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_CURRTOSTR$CURRENCY$$ANSISTRING
SYSUTILS_CURRTOSTR$CURRENCY$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%eax
	pushl	%eax
	movl	$0,%ecx
	movl	$-1,%edx
	movl	$0,%eax
	call	SYSUTILS_FLOATTOSTRF$CURRENCY$TFLOATFORMAT$LONGINT$LONGINT$$ANSISTRING
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_CURRTOSTR$CURRENCY$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_CURRTOSTR$CURRENCY$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-4(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	$0,%ecx
	movl	$-1,%edx
	movl	$0,%eax
	call	SYSUTILS_FLOATTOSTRF$crcDC46F419
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOCURR$ANSISTRING$$CURRENCY
SYSUTILS_STRTOCURR$ANSISTRING$$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	SYSUTILS_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$$BOOLEAN
	testb	%al,%al
	je	Lj5395
	jmp	Lj5396
Lj5395:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$11,-20(%ebp)
	leal	-20(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SINVALIDFLOAT+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La10:
	movl	%ebp,%ecx
	movl	$La10,%edx
	call	FPC_RAISEEXCEPTION
Lj5396:
	fildq	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOCURR$ANSISTRING$TFORMATSETTINGS$$CURRENCY
SYSUTILS_STRTOCURR$ANSISTRING$TFORMATSETTINGS$$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	SYSUTILS_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$TFORMATSETTINGS$$BOOLEAN
	testb	%al,%al
	je	Lj5415
	jmp	Lj5416
Lj5415:
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	$11,-24(%ebp)
	leal	-24(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SINVALIDFLOAT+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La11:
	movl	%ebp,%ecx
	movl	$La11,%edx
	call	FPC_RAISEEXCEPTION
Lj5416:
	fildq	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTOCURR$ANSISTRING$CURRENCY$$BOOLEAN
SYSUTILS_TRYSTRTOCURR$ANSISTRING$CURRENCY$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	SYSUTILS_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$$BOOLEAN
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTOCURR$ANSISTRING$CURRENCY$TFORMATSETTINGS$$BOOLEAN
SYSUTILS_TRYSTRTOCURR$ANSISTRING$CURRENCY$TFORMATSETTINGS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	SYSUTILS_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$TFORMATSETTINGS$$BOOLEAN
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOCURRDEF$ANSISTRING$CURRENCY$$CURRENCY
SYSUTILS_STRTOCURRDEF$ANSISTRING$CURRENCY$$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	SYSUTILS_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$$BOOLEAN
	testb	%al,%al
	je	Lj5459
	jmp	Lj5460
Lj5459:
	movl	8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj5460:
	fildq	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOCURRDEF$ANSISTRING$CURRENCY$TFORMATSETTINGS$$CURRENCY
SYSUTILS_STRTOCURRDEF$ANSISTRING$CURRENCY$TFORMATSETTINGS$$CURRENCY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$1,%ecx
	call	SYSUTILS_TEXTTOFLOAT$PCHAR$formal$TFLOATVALUE$TFORMATSETTINGS$$BOOLEAN
	testb	%al,%al
	je	Lj5471
	jmp	Lj5472
Lj5471:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj5472:
	fildq	-16(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSIDEQUOTEDSTR$ANSISTRING$CHAR$$ANSISTRING
SYSUTILS_ANSIDEQUOTEDSTR$ANSISTRING$CHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%ecx
	movb	-8(%ebp),%dl
	leal	-16(%ebp),%eax
	call	SYSUTILS_ANSIEXTRACTQUOTEDSTR$PCHAR$CHAR$$ANSISTRING
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj5493
	jmp	Lj5494
Lj5493:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,(%ebx)
Lj5494:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOBOOL$ANSISTRING$$BOOLEAN
SYSUTILS_STRTOBOOL$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	leal	-5(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN
	testb	%al,%al
	je	Lj5499
	jmp	Lj5500
Lj5499:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$11,-16(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SINVALIDBOOLEAN+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La12:
	movl	%ebp,%ecx
	movl	$La12,%edx
	call	FPC_RAISEEXCEPTION
Lj5500:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_CHECKBOOLSTRS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	movl	U_SYSUTILS_TRUEBOOLSTRS,%eax
	call	fpc_dynarray_length
	testl	%eax,%eax
	je	Lj5517
	jmp	Lj5518
Lj5517:
	movl	$1,-4(%ebp)
	leal	-4(%ebp),%eax
	pushl	%eax
	movl	$INIT_SYSUTILS_DEF177,%edx
	movl	$U_SYSUTILS_TRUEBOOLSTRS,%eax
	movl	$1,%ecx
	call	fpc_dynarray_setlength
	movl	$_$SYSUTILS$_Ld68,%esi
	movl	U_SYSUTILS_TRUEBOOLSTRS,%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%esi,(%ebx)
Lj5518:
	movl	U_SYSUTILS_FALSEBOOLSTRS,%eax
	call	fpc_dynarray_length
	testl	%eax,%eax
	je	Lj5533
	jmp	Lj5534
Lj5533:
	movl	$1,-4(%ebp)
	leal	-4(%ebp),%eax
	pushl	%eax
	movl	$INIT_SYSUTILS_DEF177,%edx
	movl	$U_SYSUTILS_FALSEBOOLSTRS,%eax
	movl	$1,%ecx
	call	fpc_dynarray_setlength
	movl	$_$SYSUTILS$_Ld69,%esi
	movl	U_SYSUTILS_FALSEBOOLSTRS,%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%esi,(%ebx)
Lj5534:
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING
SYSUTILS_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movb	%al,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	cmpb	$0,-8(%ebp)
	jne	Lj5551
	jmp	Lj5552
Lj5551:
	call	SYSUTILS_CHECKBOOLSTRS
	cmpb	$0,-4(%ebp)
	jne	Lj5553
	jmp	Lj5554
Lj5553:
	movl	U_SYSUTILS_TRUEBOOLSTRS,%esi
	movl	(%esi),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	(%esi),%eax
	movl	%eax,(%ebx)
	jmp	Lj5557
Lj5554:
	movl	U_SYSUTILS_FALSEBOOLSTRS,%esi
	movl	(%esi),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	(%esi),%eax
	movl	%eax,(%ebx)
Lj5557:
	jmp	Lj5560
Lj5552:
	cmpb	$0,-4(%ebp)
	jne	Lj5561
	jmp	Lj5562
Lj5561:
	movl	$_$SYSUTILS$_Ld70,%esi
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%esi,(%ebx)
	jmp	Lj5565
Lj5562:
	movl	$_$SYSUTILS$_Ld61,%esi
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%esi,(%ebx)
Lj5565:
Lj5560:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_BOOLTOSTR$BOOLEAN$ANSISTRING$ANSISTRING$$ANSISTRING
SYSUTILS_BOOLTOSTR$BOOLEAN$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	cmpb	$0,-4(%ebp)
	jne	Lj5570
	jmp	Lj5571
Lj5570:
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj5574
Lj5571:
	movl	-12(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-12(%ebp),%eax
	movl	%eax,(%ebx)
Lj5574:
	movl	-16(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOBOOLDEF$ANSISTRING$BOOLEAN$$BOOLEAN
SYSUTILS_STRTOBOOLDEF$ANSISTRING$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	leal	-9(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN
	testb	%al,%al
	je	Lj5579
	jmp	Lj5580
Lj5579:
	movb	-8(%ebp),%al
	movb	%al,-9(%ebp)
Lj5580:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN
SYSUTILS_TRYSTRTOBOOL$ANSISTRING$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$92,%esp
	movl	%ebx,-92(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-88(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5589
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_UPCASE$ANSISTRING$$ANSISTRING
	leal	-76(%ebp),%edx
	movl	-16(%ebp),%eax
	call	fpc_val_real_ansistr
	fstpl	-84(%ebp)
	fldl	-84(%ebp)
	fstpl	-28(%ebp)
	movw	-76(%ebp),%ax
	movw	%ax,-30(%ebp)
	movb	$1,-9(%ebp)
	movzwl	-30(%ebp),%eax
	testl	%eax,%eax
	je	Lj5606
	jmp	Lj5607
Lj5606:
	movl	-8(%ebp),%edx
	fldz
	fldl	-28(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	setneb	(%edx)
	jmp	Lj5610
Lj5607:
	call	SYSUTILS_CHECKBOOLSTRS
	movl	U_SYSUTILS_TRUEBOOLSTRS,%eax
	call	fpc_dynarray_high
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj5612
	decl	-20(%ebp)
	.balign 4,0x90
Lj5613:
	incl	-20(%ebp)
	leal	-88(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-88(%ebp)
	movl	U_SYSUTILS_TRUEBOOLSTRS,%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	leal	-88(%ebp),%edx
	call	SYSTEM_UPCASE$ANSISTRING$$ANSISTRING
	movl	-88(%ebp),%edx
	movl	-16(%ebp),%eax
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	je	Lj5616
	jmp	Lj5617
Lj5616:
	movl	-8(%ebp),%eax
	movb	$1,(%eax)
	jmp	Lj5589
Lj5617:
	cmpl	-20(%ebp),%ebx
	jg	Lj5613
Lj5612:
	movl	U_SYSUTILS_FALSEBOOLSTRS,%eax
	call	fpc_dynarray_high
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj5629
	decl	-20(%ebp)
	.balign 4,0x90
Lj5630:
	incl	-20(%ebp)
	leal	-88(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-88(%ebp)
	movl	U_SYSUTILS_FALSEBOOLSTRS,%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	leal	-88(%ebp),%edx
	call	SYSTEM_UPCASE$ANSISTRING$$ANSISTRING
	movl	-88(%ebp),%edx
	movl	-16(%ebp),%eax
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	je	Lj5633
	jmp	Lj5634
Lj5633:
	movl	-8(%ebp),%eax
	movb	$0,(%eax)
	jmp	Lj5589
Lj5634:
	cmpl	-20(%ebp),%ebx
	jg	Lj5630
Lj5629:
	movb	$0,-9(%ebp)
Lj5610:
Lj5589:
	call	FPC_POPADDRSTACK
	leal	-88(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-88(%ebp)
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj5590
	call	FPC_RERAISE
Lj5590:
	movb	-9(%ebp),%al
	movl	-92(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOTEXTFMT$PCHAR$EXTENDED$PCHAR$$LONGINT
SYSUTILS_FLOATTOTEXTFMT$PCHAR$EXTENDED$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FLOATTOTEXTFMT$PCHAR$EXTENDED$PCHAR$TFORMATSETTINGS$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTOTEXTFMT$PCHAR$EXTENDED$PCHAR$TFORMATSETTINGS$$LONGINT
SYSUTILS_FLOATTOTEXTFMT$PCHAR$EXTENDED$PCHAR$TFORMATSETTINGS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$348,%esp
	movl	%esi,-348(%ebp)
	movl	%edi,-344(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%esi
	leal	-304(%ebp),%edi
	cld
	movl	$48,%ecx
	rep
	movsl
	movl	$INIT_SYSUTILS_TFORMATSETTINGS,%edx
	leal	-304(%ebp),%eax
	call	FPC_ADDREF
	leal	-316(%ebp),%ecx
	leal	-340(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj5677
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj5680
	jmp	Lj5681
Lj5680:
	movl	%ebp,%eax
	movl	$1,%edx
	call	SYSUTILS_FLOATTOTEXTFMT$crcB6407F57_GETSECTIONRANGE$LONGINT
	jmp	Lj5686
Lj5681:
	fldz
	fldt	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj5687
	jmp	Lj5688
Lj5687:
	movl	%ebp,%eax
	movl	$2,%edx
	call	SYSUTILS_FLOATTOTEXTFMT$crcB6407F57_GETSECTIONRANGE$LONGINT
	jmp	Lj5693
Lj5688:
	movl	%ebp,%eax
	movl	$3,%edx
	call	SYSUTILS_FLOATTOTEXTFMT$crcB6407F57_GETSECTIONRANGE$LONGINT
Lj5693:
Lj5686:
	movl	-72(%ebp),%eax
	testl	%eax,%eax
	je	Lj5698
	jmp	Lj5699
Lj5698:
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$4
	leal	-304(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	$15,%ecx
	movl	$0,%edx
	call	SYSUTILS_FLOATTOTEXT$crcA3DD45F0
	movl	%eax,-16(%ebp)
	jmp	Lj5714
Lj5699:
	movl	%ebp,%eax
	call	SYSUTILS_FLOATTOTEXTFMT$crcB6407F57_GETFORMATOPTIONS
	movl	-80(%ebp),%eax
	testl	%eax,%eax
	je	Lj5719
	jmp	Lj5718
Lj5719:
	fldt	8(%ebp)
	fabs
	fldt	_$SYSUTILS$_Ld71
	fcompp
	fnstsw	%ax
	sahf
	jbe	Lj5717
	jmp	Lj5718
Lj5717:
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$4
	leal	-304(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	$15,%ecx
	movl	$0,%edx
	call	SYSUTILS_FLOATTOTEXT$crcA3DD45F0
	movl	%eax,-16(%ebp)
	jmp	Lj5734
Lj5718:
	movl	%ebp,%eax
	call	SYSUTILS_FLOATTOTEXTFMT$crcB6407F57_FLOATTOSTR
	movl	%ebp,%eax
	call	SYSUTILS_FLOATTOTEXTFMT$crcB6407F57_PUTRESULT$$LONGINT
	movl	%eax,-16(%ebp)
Lj5734:
Lj5714:
Lj5677:
	call	FPC_POPADDRSTACK
	movl	$INIT_SYSUTILS_TFORMATSETTINGS,%edx
	leal	-304(%ebp),%eax
	call	FPC_DECREF
	popl	%eax
	testl	%eax,%eax
	je	Lj5678
	call	FPC_RERAISE
Lj5678:
	movl	-16(%ebp),%eax
	movl	-348(%ebp),%esi
	movl	-344(%ebp),%edi
	leave
	ret	$12

.text
	.balign 4,0x90
SYSUTILS_FLOATTOTEXTFMT$crcB6407F57_PUTRESULT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movl	%ebx,-36(%ebp)
	movl	%esi,-32(%ebp)
	movl	%eax,-4(%ebp)
	movb	$0,-9(%ebp)
	movb	$0,-10(%ebp)
	movl	-4(%ebp),%eax
	movl	-72(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$1,-24(%ebp)
	jmp	Lj5752
	.balign 4,0x90
Lj5751:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$34,%al
	jb	Lj5755
	subb	$34,%al
	je	Lj5756
	subb	$5,%al
	je	Lj5757
	jmp	Lj5755
Lj5756:
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj5758
	jmp	Lj5759
Lj5758:
	movb	-10(%ebp),%al
	testb	%al,%al
	seteb	-10(%ebp)
Lj5759:
	incl	-16(%ebp)
	jmp	Lj5754
Lj5757:
	movb	-10(%ebp),%al
	testb	%al,%al
	je	Lj5762
	jmp	Lj5763
Lj5762:
	movb	-9(%ebp),%al
	testb	%al,%al
	seteb	-9(%ebp)
Lj5763:
	incl	-16(%ebp)
	jmp	Lj5754
Lj5755:
	cmpb	$0,-9(%ebp)
	jne	Lj5767
	jmp	Lj5768
Lj5768:
	cmpb	$0,-10(%ebp)
	jne	Lj5767
	jmp	Lj5766
Lj5766:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$35,%al
	jb	Lj5770
	subb	$35,%al
	je	Lj5771
	subb	$11,%al
	je	Lj5771
	subb	$2,%al
	je	Lj5771
	subb	$21,%al
	je	Lj5772
	subb	$32,%al
	je	Lj5772
	jmp	Lj5770
Lj5771:
	movl	-24(%ebp),%eax
	cmpl	$1,%eax
	je	Lj5775
	jmp	Lj5774
Lj5775:
	movl	-4(%ebp),%eax
	movl	-108(%eax),%eax
	cmpl	$0,%eax
	jg	Lj5773
	jmp	Lj5774
Lj5773:
	movl	-4(%ebp),%eax
	movl	-108(%eax),%ecx
	movl	$1,-28(%ebp)
	cmpl	-28(%ebp),%ecx
	jl	Lj5777
	decl	-28(%ebp)
	.balign 4,0x90
Lj5778:
	incl	-28(%ebp)
	movl	-4(%ebp),%edx
	movzbl	-28(%ebp),%eax
	movb	-57(%edx,%eax,1),%al
	cmpb	$32,%al
	jne	Lj5779
	jmp	Lj5780
Lj5779:
	movl	-4(%ebp),%eax
	movzbl	-28(%ebp),%edx
	movl	-20(%ebp),%ebx
	movb	-57(%eax,%edx,1),%al
	movb	%al,(%ebx)
	incl	-20(%ebp)
Lj5780:
	movl	-4(%ebp),%eax
	cmpb	$0,-101(%eax)
	jne	Lj5785
	jmp	Lj5784
Lj5785:
	movl	-4(%ebp),%edx
	movzbl	-28(%ebp),%eax
	movb	-57(%edx,%eax,1),%al
	cmpb	$45,%al
	jne	Lj5783
	jmp	Lj5784
Lj5783:
	movl	-4(%ebp),%eax
	movl	-112(%eax),%eax
	cltd
	movl	$3,%ebx
	idivl	%ebx
	testl	%edx,%edx
	je	Lj5788
	jmp	Lj5787
Lj5788:
	movl	-4(%ebp),%eax
	movl	-112(%eax),%eax
	cmpl	$0,%eax
	jg	Lj5786
	jmp	Lj5787
Lj5786:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	-302(%eax),%al
	movb	%al,(%edx)
	incl	-20(%ebp)
Lj5787:
	movl	-4(%ebp),%eax
	decl	-112(%eax)
Lj5784:
	cmpl	-28(%ebp),%ecx
	jg	Lj5778
Lj5777:
	movl	-4(%ebp),%eax
	movl	-108(%eax),%eax
	addl	%eax,-24(%ebp)
Lj5774:
	movl	-4(%ebp),%eax
	movzbl	-24(%ebp),%edx
	movb	-57(%eax,%edx,1),%al
	cmpb	$32,%al
	jne	Lj5791
	jmp	Lj5792
Lj5791:
	movl	-4(%ebp),%edx
	movzbl	-24(%ebp),%eax
	movb	-57(%edx,%eax,1),%al
	cmpb	$46,%al
	je	Lj5793
	jmp	Lj5794
Lj5793:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	-301(%eax),%al
	movb	%al,(%edx)
	jmp	Lj5797
Lj5794:
	movl	-4(%ebp),%edx
	movzbl	-24(%ebp),%eax
	movl	-20(%ebp),%ecx
	movb	-57(%edx,%eax,1),%al
	movb	%al,(%ecx)
Lj5797:
	incl	-20(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,-101(%eax)
	jne	Lj5804
	jmp	Lj5801
Lj5804:
	movl	-4(%ebp),%eax
	movl	-112(%eax),%eax
	cltd
	movl	$3,%ecx
	idivl	%ecx
	testl	%edx,%edx
	je	Lj5803
	jmp	Lj5801
Lj5803:
	movl	-4(%ebp),%eax
	movl	-112(%eax),%eax
	cmpl	$0,%eax
	jg	Lj5802
	jmp	Lj5801
Lj5802:
	movl	-4(%ebp),%eax
	movzbl	-24(%ebp),%edx
	movb	-57(%eax,%edx,1),%al
	cmpb	$45,%al
	jne	Lj5800
	jmp	Lj5801
Lj5800:
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	-302(%eax),%al
	movb	%al,(%edx)
	incl	-20(%ebp)
Lj5801:
Lj5792:
	incl	-24(%ebp)
	movl	-4(%ebp),%eax
	decl	-112(%eax)
	incl	-16(%ebp)
	jmp	Lj5769
Lj5772:
	movl	-4(%ebp),%eax
	movl	-80(%eax),%eax
	testl	%eax,%eax
	jne	Lj5807
	jmp	Lj5808
Lj5807:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-76(%eax),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj5809
	jmp	Lj5810
Lj5809:
	movl	-16(%ebp),%eax
	movzbl	(%eax),%eax
	cmpl	$43,%eax
	je	Lj5813
	cmpl	$45,%eax
	je	Lj5813
Lj5813:
	je	Lj5811
	jmp	Lj5812
Lj5811:
	movl	-4(%ebp),%eax
	movl	-84(%eax),%eax
	addl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movzbl	-66(%eax),%eax
	movl	$1,-28(%ebp)
	cmpl	-28(%ebp),%eax
	jl	Lj5815
	decl	-28(%ebp)
	.balign 4,0x90
Lj5816:
	incl	-28(%ebp)
	movl	-20(%ebp),%ebx
	movl	-28(%ebp),%edx
	decl	%edx
	movl	-4(%ebp),%ecx
	movzbl	-28(%ebp),%esi
	movb	-66(%ecx,%esi,1),%cl
	movb	%cl,(%ebx,%edx,1)
	cmpl	-28(%ebp),%eax
	jg	Lj5816
Lj5815:
	movl	-4(%ebp),%eax
	movzbl	-66(%eax),%eax
	addl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,-80(%eax)
Lj5812:
	incl	-16(%ebp)
Lj5810:
	jmp	Lj5821
Lj5808:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-20(%ebp)
	incl	-16(%ebp)
Lj5821:
	jmp	Lj5769
Lj5770:
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$44,%al
	jne	Lj5824
	jmp	Lj5825
Lj5824:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-20(%ebp)
Lj5825:
	incl	-16(%ebp)
Lj5769:
	jmp	Lj5828
Lj5767:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	movb	%al,(%edx)
	incl	-20(%ebp)
	incl	-16(%ebp)
Lj5828:
Lj5754:
Lj5752:
	movl	-4(%ebp),%eax
	movl	-76(%eax),%eax
	cmpl	-16(%ebp),%eax
	ja	Lj5751
	jmp	Lj5753
Lj5753:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-20(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_FLOATTOTEXTFMT$crcB6407F57_FLOATTOSTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$288,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-80(%eax),%eax
	testl	%eax,%eax
	je	Lj5833
	jmp	Lj5834
Lj5833:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	-92(%eax),%edx
	movl	-88(%ecx),%eax
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-100(%eax),%ecx
	movl	-96(%edx),%eax
	addl	%eax,%ecx
	movl	-24(%ebp),%eax
	addl	%eax,%ecx
	movl	%ecx,-20(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj5839
	jmp	Lj5840
Lj5839:
	movl	-4(%ebp),%edx
	movzwl	16(%edx),%eax
	pushl	%eax
	pushl	12(%edx)
	pushl	8(%edx)
	movl	-4(%ebp),%eax
	leal	-57(%eax),%eax
	pushl	%eax
	pushl	$40
	movl	-20(%ebp),%eax
	movl	$2,%ecx
	movl	$0,%edx
	call	fpc_shortstr_float
	jmp	Lj5853
Lj5840:
	movl	-4(%ebp),%eax
	fldz
	fldt	8(%eax)
	fcompp
	fnstsw	%ax
	sahf
	jae	Lj5854
	jmp	Lj5855
Lj5854:
	movl	-4(%ebp),%edx
	movzwl	16(%edx),%eax
	pushl	%eax
	pushl	12(%edx)
	pushl	8(%edx)
	movl	-4(%ebp),%eax
	leal	-57(%eax),%eax
	pushl	%eax
	pushl	$40
	movl	-20(%ebp),%eax
	incl	%eax
	movl	-24(%ebp),%edx
	movl	$2,%ecx
	call	fpc_shortstr_float
	jmp	Lj5868
Lj5855:
	movl	-4(%ebp),%eax
	movzwl	16(%eax),%edx
	pushl	%edx
	pushl	12(%eax)
	pushl	8(%eax)
	movl	-4(%ebp),%eax
	leal	-57(%eax),%eax
	pushl	%eax
	pushl	$40
	movl	-20(%ebp),%eax
	addl	$2,%eax
	movl	-24(%ebp),%edx
	movl	$2,%ecx
	call	fpc_shortstr_float
Lj5868:
Lj5853:
	movl	-4(%ebp),%eax
	movzbl	-57(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj5883
	jmp	Lj5884
Lj5883:
	movl	-32(%ebp),%eax
	incl	%eax
	movl	%eax,-28(%ebp)
	jmp	Lj5887
Lj5884:
	movl	-32(%ebp),%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
Lj5887:
	movl	-4(%ebp),%eax
	fldt	8(%eax)
	fabs
	fld1
	fcompp
	fnstsw	%ax
	sahf
	ja	Lj5892
	jmp	Lj5891
Lj5892:
	movl	-4(%ebp),%eax
	movl	-96(%eax),%eax
	testl	%eax,%eax
	je	Lj5890
	jmp	Lj5891
Lj5890:
	movl	-4(%ebp),%eax
	movl	-100(%eax),%eax
	testl	%eax,%eax
	je	Lj5893
	jmp	Lj5894
Lj5893:
	pushl	$1
	movl	-28(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	leal	-57(%eax),%eax
	movl	$40,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	jmp	Lj5903
Lj5894:
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	decl	%eax
	movzbl	%al,%eax
	movb	$32,-57(%edx,%eax,1)
Lj5903:
Lj5891:
	movl	-32(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-92(%eax),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj5911
	.balign 4,0x90
Lj5910:
	movl	-4(%ebp),%edx
	movzbl	-8(%ebp),%eax
	movb	$32,-57(%edx,%eax,1)
	decl	-8(%ebp)
Lj5911:
	movl	-8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj5915
	jmp	Lj5912
Lj5915:
	movl	-4(%ebp),%eax
	movzbl	-8(%ebp),%edx
	movb	-57(%eax,%edx,1),%al
	cmpb	$48,%al
	je	Lj5910
	jmp	Lj5912
Lj5912:
	movl	-28(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jl	Lj5918
	jmp	Lj5917
Lj5918:
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	incl	%eax
	movzbl	%al,%eax
	movb	-57(%edx,%eax,1),%al
	cmpb	$32,%al
	je	Lj5916
	jmp	Lj5917
Lj5916:
	movl	-4(%ebp),%eax
	movzbl	-28(%ebp),%edx
	movb	$32,-57(%eax,%edx,1)
Lj5917:
	movl	-4(%ebp),%eax
	movl	-96(%eax),%edx
	movl	-28(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	jmp	Lj5926
	.balign 4,0x90
Lj5925:
	movl	-4(%ebp),%eax
	movzbl	-8(%ebp),%edx
	movb	-57(%eax,%edx,1),%al
	cmpb	$45,%al
	je	Lj5928
	jmp	Lj5929
Lj5928:
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj5929:
	movl	-4(%ebp),%eax
	movzbl	-8(%ebp),%edx
	movb	$48,-57(%eax,%edx,1)
	incl	-8(%ebp)
Lj5926:
	movl	-8(%ebp),%eax
	cmpl	-28(%ebp),%eax
	jl	Lj5934
	jmp	Lj5927
Lj5934:
	movl	-4(%ebp),%eax
	movzbl	-8(%ebp),%edx
	movzbl	-57(%eax,%edx,1),%eax
	cmpl	$32,%eax
	je	Lj5935
	cmpl	$45,%eax
	je	Lj5935
Lj5935:
	je	Lj5925
	jmp	Lj5927
Lj5927:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj5936
	jmp	Lj5937
Lj5936:
	movl	-4(%ebp),%eax
	movb	$45,-56(%eax)
Lj5937:
	movl	$0,-16(%ebp)
	jmp	Lj5942
Lj5834:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	-100(%eax),%edx
	movl	-96(%ecx),%eax
	addl	%eax,%edx
	testl	%edx,%edx
	je	Lj5943
	jmp	Lj5944
Lj5943:
	movl	-4(%ebp),%eax
	movl	$1,-100(%eax)
Lj5944:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	-92(%eax),%edx
	movl	-88(%ecx),%eax
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-100(%eax),%ecx
	movl	-96(%edx),%eax
	addl	%eax,%ecx
	movl	-24(%ebp),%eax
	addl	%eax,%ecx
	movl	%ecx,-20(%ebp)
	movl	-4(%ebp),%edx
	movzwl	16(%edx),%eax
	pushl	%eax
	pushl	12(%edx)
	pushl	8(%edx)
	movl	-4(%ebp),%eax
	leal	-57(%eax),%eax
	pushl	%eax
	pushl	$40
	movl	-20(%ebp),%eax
	addl	$8,%eax
	movl	$2,%ecx
	movl	$-1,%edx
	call	fpc_shortstr_float
	movl	-4(%ebp),%eax
	leal	-57(%eax),%edx
	movb	$69,%al
	call	SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
	movl	%eax,-8(%ebp)
	leal	-288(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	leal	-57(%eax),%eax
	movl	$255,%ecx
	call	fpc_shortstr_copy
	leal	-288(%ebp),%edx
	leal	-12(%ebp),%ecx
	movl	$4,%eax
	call	fpc_val_sint_shortstr
	movl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	-100(%eax),%edx
	movl	-96(%ecx),%eax
	addl	%eax,%edx
	movl	-16(%ebp),%eax
	incl	%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-16(%ebp)
	pushl	$255
	movl	-4(%ebp),%eax
	leal	-57(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	$40,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj5997
	jmp	Lj5996
Lj5997:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-100(%eax),%ecx
	movl	-96(%edx),%eax
	addl	%eax,%ecx
	cmpl	$1,%ecx
	jle	Lj5995
	jmp	Lj5996
Lj5995:
	movl	-4(%ebp),%eax
	movb	-53(%eax),%al
	cmpb	$53,%al
	jae	Lj5998
	jmp	Lj5999
Lj5998:
	movl	-4(%ebp),%eax
	incb	-55(%eax)
	movl	-4(%ebp),%eax
	movb	-55(%eax),%al
	cmpb	$57,%al
	ja	Lj6000
	jmp	Lj6001
Lj6000:
	movl	-4(%ebp),%eax
	movb	$49,-55(%eax)
	incl	-16(%ebp)
Lj6001:
Lj5999:
	pushl	$2
	movl	-4(%ebp),%eax
	leal	-57(%eax),%eax
	movl	$3,%ecx
	movl	$40,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	movl	-4(%ebp),%eax
	movzbl	-57(%eax),%eax
	incl	%eax
	movl	%eax,-28(%ebp)
	jmp	Lj6014
Lj5996:
	pushl	$1
	movl	-4(%ebp),%eax
	leal	-57(%eax),%eax
	movl	$3,%ecx
	movl	$40,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	movl	-4(%ebp),%eax
	movl	-100(%eax),%edx
	addl	$2,%edx
	movl	-4(%ebp),%eax
	movl	-96(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-28(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj6025
	jmp	Lj6026
Lj6025:
	pushl	-28(%ebp)
	movl	-4(%ebp),%eax
	leal	-57(%eax),%edx
	movl	$40,%ecx
	movb	$46,%al
	call	SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT
Lj6026:
Lj6014:
	movl	-4(%ebp),%eax
	movzbl	-57(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-92(%eax),%eax
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-12(%ebp)
	jmp	Lj6040
	.balign 4,0x90
Lj6039:
	movl	-4(%ebp),%eax
	movzbl	-8(%ebp),%edx
	movb	$32,-57(%eax,%edx,1)
	decl	-8(%ebp)
Lj6040:
	movl	-8(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj6044
	jmp	Lj6041
Lj6044:
	movl	-4(%ebp),%eax
	movzbl	-8(%ebp),%edx
	movb	-57(%eax,%edx,1),%al
	cmpb	$48,%al
	je	Lj6039
	jmp	Lj6041
Lj6041:
	movl	-4(%ebp),%eax
	movzbl	-57(%eax),%eax
	cmpl	-28(%ebp),%eax
	jg	Lj6047
	jmp	Lj6046
Lj6047:
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	incl	%eax
	movzbl	%al,%eax
	movb	-57(%edx,%eax,1),%al
	cmpb	$32,%al
	je	Lj6045
	jmp	Lj6046
Lj6045:
	movl	-4(%ebp),%edx
	movzbl	-28(%ebp),%eax
	movb	$32,-57(%edx,%eax,1)
Lj6046:
	movl	-4(%ebp),%eax
	movb	-56(%eax),%al
	cmpb	$32,%al
	je	Lj6050
	jmp	Lj6051
Lj6050:
	pushl	$1
	movl	-4(%ebp),%eax
	leal	-57(%eax),%eax
	movl	$1,%ecx
	movl	$40,%edx
	call	SYSTEM_DELETE$OPENSTRING$LONGINT$LONGINT
	decl	-28(%ebp)
Lj6051:
	pushl	$8
	movl	-16(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	movl	-4(%ebp),%edx
	leal	-66(%edx),%ecx
	movl	$-1,%edx
	call	fpc_shortstr_sint
	jmp	Lj6069
	.balign 4,0x90
Lj6068:
	pushl	$1
	movl	-4(%ebp),%eax
	leal	-66(%eax),%edx
	movl	$8,%ecx
	movb	$48,%al
	call	SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT
Lj6069:
	movl	-4(%ebp),%eax
	movzbl	-66(%eax),%eax
	movl	-4(%ebp),%edx
	cmpl	-84(%edx),%eax
	jl	Lj6068
	jmp	Lj6070
Lj6070:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj6079
	jmp	Lj6080
Lj6079:
	movl	-4(%ebp),%eax
	movl	-80(%eax),%eax
	cmpl	$1,%eax
	je	Lj6083
	cmpl	$3,%eax
	je	Lj6083
Lj6083:
	je	Lj6081
	jmp	Lj6082
Lj6081:
	pushl	$1
	movl	-4(%ebp),%eax
	leal	-66(%eax),%edx
	movl	$8,%ecx
	movb	$43,%al
	call	SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT
Lj6082:
	jmp	Lj6092
Lj6080:
	pushl	$1
	movl	-4(%ebp),%eax
	leal	-66(%eax),%edx
	movl	$8,%ecx
	movb	$45,%al
	call	SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT
Lj6092:
	movl	-4(%ebp),%eax
	movl	-80(%eax),%eax
	cmpl	$3,%eax
	jl	Lj6101
	jmp	Lj6102
Lj6101:
	pushl	$1
	movl	-4(%ebp),%eax
	leal	-66(%eax),%edx
	movl	$8,%ecx
	movb	$69,%al
	call	SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT
	jmp	Lj6111
Lj6102:
	pushl	$1
	movl	-4(%ebp),%eax
	leal	-66(%eax),%edx
	movl	$8,%ecx
	movb	$101,%al
	call	SYSTEM_INSERT$CHAR$OPENSTRING$LONGINT
Lj6111:
Lj5942:
	movl	-28(%ebp),%eax
	subl	$2,%eax
	movl	-4(%ebp),%edx
	movl	%eax,-112(%edx)
	movl	-4(%ebp),%eax
	movb	-56(%eax),%al
	cmpb	$45,%al
	je	Lj6122
	jmp	Lj6123
Lj6122:
	movl	-4(%ebp),%eax
	decl	-112(%eax)
Lj6123:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	-100(%eax),%edx
	movl	-96(%ecx),%eax
	addl	%eax,%edx
	movl	-28(%ebp),%eax
	decl	%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	%edx,-108(%eax)
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_FLOATTOTEXTFMT$crcB6407F57_GETFORMATOPTIONS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	$0,-9(%ebp)
	movb	$0,-10(%ebp)
	movl	-4(%ebp),%eax
	movl	-72(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,-80(%eax)
	movl	$1,-16(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,-101(%eax)
	movl	-4(%ebp),%eax
	movl	$0,-100(%eax)
	movl	-4(%ebp),%eax
	movl	$0,-96(%eax)
	movl	-4(%ebp),%eax
	movl	$0,-92(%eax)
	movl	-4(%ebp),%eax
	movl	$0,-88(%eax)
	jmp	Lj6147
	.balign 4,0x90
Lj6146:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	cmpb	$34,%al
	jb	Lj6150
	subb	$34,%al
	je	Lj6151
	subb	$5,%al
	je	Lj6152
	jmp	Lj6150
Lj6151:
	movb	-9(%ebp),%al
	testb	%al,%al
	je	Lj6153
	jmp	Lj6154
Lj6153:
	movb	-10(%ebp),%al
	testb	%al,%al
	seteb	-10(%ebp)
Lj6154:
	incl	-8(%ebp)
	jmp	Lj6149
Lj6152:
	movb	-10(%ebp),%al
	testb	%al,%al
	je	Lj6157
	jmp	Lj6158
Lj6157:
	movb	-9(%ebp),%al
	testb	%al,%al
	seteb	-9(%ebp)
Lj6158:
	incl	-8(%ebp)
	jmp	Lj6149
Lj6150:
	cmpb	$0,-9(%ebp)
	jne	Lj6162
	jmp	Lj6163
Lj6163:
	cmpb	$0,-10(%ebp)
	jne	Lj6162
	jmp	Lj6161
Lj6161:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	cmpb	$35,%al
	jb	Lj6165
	subb	$35,%al
	je	Lj6167
	subb	$9,%al
	je	Lj6169
	subb	$2,%al
	je	Lj6168
	subb	$2,%al
	je	Lj6166
	subb	$21,%al
	je	Lj6170
	subb	$32,%al
	je	Lj6170
	jmp	Lj6165
Lj6166:
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj6172
	decl	%eax
	je	Lj6173
	subl	$3,%eax
	je	Lj6174
	jmp	Lj6172
Lj6173:
	movl	$2,-16(%ebp)
	jmp	Lj6171
Lj6174:
	movl	$3,-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	-88(%eax),%eax
	addl	%eax,-92(%edx)
	movl	-4(%ebp),%eax
	movl	$0,-88(%eax)
	jmp	Lj6171
Lj6172:
Lj6171:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	incl	-104(%eax,%edx,4)
	incl	-8(%ebp)
	jmp	Lj6164
Lj6167:
	movl	-16(%ebp),%eax
	cmpl	$3,%eax
	je	Lj6181
	jmp	Lj6182
Lj6181:
	movl	$4,-16(%ebp)
Lj6182:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	incl	-104(%edx,%eax,4)
	incl	-8(%ebp)
	jmp	Lj6164
Lj6168:
	movl	-16(%ebp),%eax
	cmpl	$3,%eax
	jl	Lj6185
	jmp	Lj6186
Lj6185:
	movl	$3,-16(%ebp)
Lj6186:
	incl	-8(%ebp)
	jmp	Lj6164
Lj6169:
	movl	-4(%ebp),%eax
	movb	TC_SYSUTILS_DEFAULTFORMATSETTINGS+2,%dl
	testb	%dl,%dl
	setneb	-101(%eax)
	incl	-8(%ebp)
	jmp	Lj6164
Lj6170:
	movl	-4(%ebp),%eax
	movl	-80(%eax),%eax
	testl	%eax,%eax
	je	Lj6191
	jmp	Lj6192
Lj6191:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	cmpb	$69,%al
	je	Lj6193
	jmp	Lj6194
Lj6193:
	movl	-4(%ebp),%eax
	movl	$1,-80(%eax)
	jmp	Lj6197
Lj6194:
	movl	-4(%ebp),%eax
	movl	$3,-80(%eax)
Lj6197:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-76(%eax),%eax
	cmpl	-8(%ebp),%eax
	ja	Lj6200
	jmp	Lj6201
Lj6200:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	cmpb	$43,%al
	jb	Lj6203
	subb	$43,%al
	je	Lj6204
	subb	$2,%al
	je	Lj6205
	jmp	Lj6203
Lj6204:
	jmp	Lj6202
Lj6205:
	movl	-4(%ebp),%eax
	incl	-80(%eax)
	jmp	Lj6202
Lj6203:
	movl	-4(%ebp),%eax
	movl	$0,-80(%eax)
Lj6202:
	movl	-4(%ebp),%eax
	movl	-80(%eax),%eax
	testl	%eax,%eax
	jne	Lj6208
	jmp	Lj6209
Lj6208:
	incl	-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,-84(%eax)
	jmp	Lj6213
	.balign 4,0x90
Lj6212:
	movl	-4(%ebp),%eax
	incl	-84(%eax)
	incl	-8(%ebp)
Lj6213:
	movl	-4(%ebp),%eax
	movl	-76(%eax),%eax
	cmpl	-8(%ebp),%eax
	ja	Lj6216
	jmp	Lj6214
Lj6216:
	movl	-4(%ebp),%eax
	movl	-84(%eax),%eax
	cmpl	$4,%eax
	jl	Lj6215
	jmp	Lj6214
Lj6215:
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj6217
Lj6217:
	jc	Lj6212
	jmp	Lj6214
Lj6214:
Lj6209:
	jmp	Lj6218
Lj6201:
	movl	-4(%ebp),%eax
	movl	$0,-80(%eax)
Lj6218:
	jmp	Lj6221
Lj6192:
	incl	-8(%ebp)
Lj6221:
	jmp	Lj6164
Lj6165:
	incl	-8(%ebp)
Lj6164:
	jmp	Lj6222
Lj6162:
	incl	-8(%ebp)
Lj6222:
Lj6149:
Lj6147:
	movl	-4(%ebp),%eax
	movl	-76(%eax),%eax
	cmpl	-8(%ebp),%eax
	ja	Lj6146
	jmp	Lj6148
Lj6148:
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_FLOATTOTEXTFMT$crcB6407F57_GETSECTIONRANGE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$23,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	%eax,-20(%ebp)
	leal	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSUTILS_FLOATTOTEXTFMT$crcB6407F57_GETSECTIONEND$PCHAR$$BOOLEAN
	movb	%al,-23(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj6231
	jmp	Lj6232
Lj6231:
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj6235
	jmp	Lj6236
Lj6235:
	incl	-16(%ebp)
Lj6236:
	leal	-16(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSUTILS_FLOATTOTEXTFMT$crcB6407F57_GETSECTIONEND$PCHAR$$BOOLEAN
	movb	%al,-22(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj6243
	jmp	Lj6244
Lj6243:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	jne	Lj6247
	jmp	Lj6248
Lj6247:
	incl	-12(%ebp)
Lj6248:
	leal	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSUTILS_FLOATTOTEXTFMT$crcB6407F57_GETSECTIONEND$PCHAR$$BOOLEAN
	movb	%al,-21(%ebp)
Lj6244:
Lj6232:
	movb	-23(%ebp),%al
	testb	%al,%al
	je	Lj6255
	jmp	Lj6256
Lj6255:
	movl	-8(%ebp),%eax
	movl	$0,-72(%eax)
	jmp	Lj6259
Lj6256:
	movl	-4(%ebp),%eax
	movb	-24(%ebp,%eax,1),%al
	testb	%al,%al
	je	Lj6260
	jmp	Lj6261
Lj6260:
	movl	$1,-4(%ebp)
	jmp	Lj6264
Lj6261:
	movl	-4(%ebp),%eax
	cmpl	$2,%eax
	je	Lj6265
	jmp	Lj6266
Lj6265:
	movl	-8(%ebp),%eax
	fldt	8(%eax)
	fchs
	movl	-8(%ebp),%eax
	fstpt	8(%eax)
Lj6266:
Lj6264:
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	je	Lj6269
	jmp	Lj6270
Lj6269:
	movl	-8(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-8(%eax),%eax
	movl	%eax,-72(%edx)
	jmp	Lj6273
Lj6270:
	movl	-4(%ebp),%eax
	decl	%eax
	movl	-8(%ebp),%edx
	movl	-24(%ebp,%eax,4),%eax
	movl	%eax,-72(%edx)
	movl	-8(%ebp),%eax
	incl	-72(%eax)
Lj6273:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	-24(%ebp,%eax,4),%eax
	movl	%eax,-76(%edx)
Lj6259:
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_FLOATTOTEXTFMT$crcB6407F57_GETSECTIONEND$PCHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movb	$0,-9(%ebp)
	movb	$0,-11(%ebp)
	movb	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	movb	%al,-10(%ebp)
	jmp	Lj6287
	.balign 4,0x90
Lj6286:
	movb	$1,-9(%ebp)
	movb	-10(%ebp),%al
	cmpb	$34,%al
	jb	Lj6292
	subb	$34,%al
	je	Lj6293
	subb	$5,%al
	je	Lj6294
	jmp	Lj6292
Lj6293:
	movb	-11(%ebp),%al
	testb	%al,%al
	je	Lj6295
	jmp	Lj6296
Lj6295:
	movb	-12(%ebp),%al
	testb	%al,%al
	seteb	-12(%ebp)
Lj6296:
	jmp	Lj6291
Lj6294:
	movb	-12(%ebp),%al
	testb	%al,%al
	je	Lj6299
	jmp	Lj6300
Lj6299:
	movb	-11(%ebp),%al
	testb	%al,%al
	seteb	-11(%ebp)
Lj6300:
	jmp	Lj6291
Lj6292:
Lj6291:
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movb	(%eax),%al
	movb	%al,-10(%ebp)
Lj6287:
	movb	-10(%ebp),%al
	testb	%al,%al
	jne	Lj6305
	jmp	Lj6288
Lj6305:
	movb	-10(%ebp),%al
	cmpb	$59,%al
	jne	Lj6286
	jmp	Lj6307
Lj6307:
	cmpb	$0,-11(%ebp)
	jne	Lj6286
	jmp	Lj6306
Lj6306:
	cmpb	$0,-12(%ebp)
	jne	Lj6286
	jmp	Lj6288
Lj6288:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTODECIMAL$TFLOATREC$formal$TFLOATVALUE$LONGINT$LONGINT
SYSUTILS_FLOATTODECIMAL$TFLOATREC$formal$TFLOATVALUE$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$596,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-596(%ebp)
	leal	-308(%ebp),%ecx
	leal	-332(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj6310
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj6315
	decl	%eax
	je	Lj6318
	decl	%eax
	je	Lj6317
	decl	%eax
	jb	Lj6314
	subl	$1,%eax
	jbe	Lj6316
	decl	%eax
	je	Lj6319
	jmp	Lj6314
Lj6315:
	movl	-8(%ebp),%eax
	movzwl	8(%eax),%edx
	pushl	%edx
	pushl	4(%eax)
	pushl	(%eax)
	leal	-267(%ebp),%eax
	pushl	%eax
	pushl	$254
	movl	$2,%ecx
	movl	$-1,%edx
	movl	$25,%eax
	call	fpc_shortstr_float
	jmp	Lj6313
Lj6316:
	movl	-8(%ebp),%eax
	fldl	(%eax)
	subl	$12,%esp
	fstpt	(%esp)
	leal	-267(%ebp),%eax
	pushl	%eax
	pushl	$254
	movl	$1,%ecx
	movl	$-1,%edx
	movl	$23,%eax
	call	fpc_shortstr_float
	jmp	Lj6313
Lj6317:
	movl	-8(%ebp),%eax
	flds	(%eax)
	subl	$12,%esp
	fstpt	(%esp)
	leal	-267(%ebp),%eax
	pushl	%eax
	pushl	$254
	movl	$0,%ecx
	movl	$-1,%edx
	movl	$16,%eax
	call	fpc_shortstr_float
	jmp	Lj6313
Lj6318:
	movl	-8(%ebp),%eax
	pushl	4(%eax)
	pushl	(%eax)
	pushl	$254
	leal	-267(%ebp),%ecx
	movl	$-1,%edx
	movl	$25,%eax
	call	fpc_shortstr_currency
	jmp	Lj6313
Lj6319:
	movl	-8(%ebp),%eax
	pushl	4(%eax)
	pushl	(%eax)
	pushl	$254
	leal	-267(%ebp),%ecx
	movl	$-1,%edx
	movl	$23,%eax
	call	fpc_shortstr_currency
	jmp	Lj6313
Lj6314:
Lj6313:
	movl	$1,-280(%ebp)
	movzbl	-267(%ebp),%eax
	movl	%eax,-284(%ebp)
	jmp	Lj6381
	.balign 4,0x90
Lj6380:
	incl	-280(%ebp)
Lj6381:
	movzbl	-280(%ebp),%eax
	movb	-267(%ebp,%eax,1),%al
	cmpb	$32,%al
	je	Lj6380
	jmp	Lj6382
Lj6382:
	movl	-4(%ebp),%edx
	movzbl	-280(%ebp),%eax
	movb	-267(%ebp,%eax,1),%al
	cmpb	$45,%al
	seteb	4(%edx)
	movl	-4(%ebp),%eax
	cmpb	$0,4(%eax)
	jne	Lj6385
	jmp	Lj6386
Lj6385:
	incl	-280(%ebp)
	jmp	Lj6387
Lj6386:
	movzbl	-280(%ebp),%eax
	movb	-267(%ebp,%eax,1),%al
	cmpb	$43,%al
	je	Lj6388
	jmp	Lj6389
Lj6388:
	incl	-280(%ebp)
Lj6389:
Lj6387:
	movl	-280(%ebp),%eax
	addl	$2,%eax
	cmpl	-284(%ebp),%eax
	jle	Lj6390
	jmp	Lj6391
Lj6390:
	leal	-592(%ebp),%eax
	pushl	%eax
	movl	-280(%ebp),%edx
	leal	-267(%ebp),%eax
	movl	$3,%ecx
	call	fpc_shortstr_copy
	leal	-592(%ebp),%ecx
	leal	-271(%ebp),%eax
	movl	$3,%edx
	call	fpc_shortstr_to_shortstr
	leal	-596(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-596(%ebp)
	leal	-596(%ebp),%edx
	leal	-271(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-596(%ebp),%eax
	movl	$_$SYSUTILS$_Ld72,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	je	Lj6406
	jmp	Lj6407
Lj6406:
	movl	-4(%ebp),%eax
	movb	$0,5(%eax)
	movl	-4(%ebp),%eax
	movl	$32767,(%eax)
	jmp	Lj6310
Lj6407:
	leal	-596(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-596(%ebp)
	leal	-596(%ebp),%edx
	leal	-271(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-596(%ebp),%eax
	movl	$_$SYSUTILS$_Ld73,%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	je	Lj6420
	jmp	Lj6421
Lj6420:
	movl	-4(%ebp),%eax
	movb	$0,5(%eax)
	movl	-4(%ebp),%eax
	movl	$-32768,(%eax)
	jmp	Lj6310
Lj6421:
Lj6391:
	movl	-280(%ebp),%eax
	movl	%eax,-288(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movb	$1,-294(%ebp)
	movb	$0,-293(%ebp)
	jmp	Lj6443
	.balign 4,0x90
Lj6442:
	movzbl	-280(%ebp),%eax
	movb	-267(%ebp,%eax,1),%al
	cmpb	$46,%al
	je	Lj6445
	jmp	Lj6446
Lj6445:
	movb	$0,-294(%ebp)
	jmp	Lj6449
Lj6446:
	cmpb	$0,-294(%ebp)
	jne	Lj6450
	jmp	Lj6451
Lj6450:
	movl	-4(%ebp),%eax
	incl	(%eax)
	movl	-4(%ebp),%ecx
	movl	-280(%ebp),%eax
	movl	-288(%ebp),%edx
	subl	%edx,%eax
	movzbl	-280(%ebp),%edx
	movb	-267(%ebp,%edx,1),%dl
	movb	%dl,5(%ecx,%eax,1)
	movzbl	-280(%ebp),%eax
	movb	-267(%ebp,%eax,1),%al
	cmpb	$48,%al
	jne	Lj6454
	jmp	Lj6455
Lj6454:
	movb	$1,-293(%ebp)
Lj6455:
	jmp	Lj6458
Lj6451:
	movl	-4(%ebp),%ecx
	movl	-280(%ebp),%eax
	movl	-288(%ebp),%edx
	subl	%edx,%eax
	decl	%eax
	movzbl	-280(%ebp),%edx
	movb	-267(%ebp,%edx,1),%dl
	movb	%dl,5(%ecx,%eax,1)
Lj6458:
Lj6449:
	incl	-280(%ebp)
Lj6443:
	movl	-284(%ebp),%eax
	cmpl	-280(%ebp),%eax
	jge	Lj6461
	jmp	Lj6444
Lj6461:
	movzbl	-280(%ebp),%eax
	movb	-267(%ebp,%eax,1),%al
	cmpb	$69,%al
	jne	Lj6442
	jmp	Lj6444
Lj6444:
	incl	-280(%ebp)
	movl	-280(%ebp),%eax
	cmpl	-284(%ebp),%eax
	jle	Lj6462
	jmp	Lj6463
Lj6462:
	leal	-592(%ebp),%eax
	pushl	%eax
	movl	-284(%ebp),%ecx
	movl	-280(%ebp),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	-280(%ebp),%edx
	leal	-267(%ebp),%eax
	call	fpc_shortstr_copy
	leal	-592(%ebp),%edx
	leal	-276(%ebp),%ecx
	movl	$4,%eax
	call	fpc_val_sint_shortstr
	movl	%eax,-292(%ebp)
	movl	-4(%ebp),%edx
	movl	-292(%ebp),%eax
	addl	%eax,(%edx)
Lj6463:
	cmpb	$0,-294(%ebp)
	jne	Lj6480
	jmp	Lj6481
Lj6480:
	movl	-280(%ebp),%edx
	movl	-288(%ebp),%eax
	subl	%eax,%edx
	decl	%edx
	movl	%edx,-280(%ebp)
	jmp	Lj6484
Lj6481:
	movl	-280(%ebp),%edx
	movl	-288(%ebp),%eax
	subl	%eax,%edx
	subl	$2,%edx
	movl	%edx,-280(%ebp)
Lj6484:
	movl	$19,-284(%ebp)
	movl	-280(%ebp),%eax
	cmpl	-284(%ebp),%eax
	jl	Lj6489
	jmp	Lj6490
Lj6489:
	movl	-284(%ebp),%edx
	movl	-280(%ebp),%eax
	subl	%eax,%edx
	movl	-4(%ebp),%ecx
	movl	-280(%ebp),%eax
	leal	5(%ecx,%eax,1),%eax
	movb	$48,%cl
	call	SYSTEM_FILLCHAR$formal$LONGINT$CHAR
Lj6490:
	movl	-4(%ebp),%eax
	movl	8(%ebp),%edx
	movl	(%eax),%eax
	addl	%eax,%edx
	cmpl	12(%ebp),%edx
	jl	Lj6497
	jmp	Lj6498
Lj6497:
	movl	-4(%ebp),%eax
	movl	8(%ebp),%edx
	movl	(%eax),%eax
	addl	%eax,%edx
	movl	%edx,-280(%ebp)
	jmp	Lj6501
Lj6498:
	movl	12(%ebp),%eax
	movl	%eax,-280(%ebp)
Lj6501:
	movl	-280(%ebp),%eax
	cmpl	-284(%ebp),%eax
	jge	Lj6504
	jmp	Lj6505
Lj6504:
	movl	-284(%ebp),%eax
	decl	%eax
	movl	%eax,-280(%ebp)
Lj6505:
	movl	-280(%ebp),%eax
	testl	%eax,%eax
	je	Lj6508
	jmp	Lj6509
Lj6508:
	movl	-4(%ebp),%eax
	movb	5(%eax),%al
	cmpb	$53,%al
	jae	Lj6510
	jmp	Lj6511
Lj6510:
	movl	-4(%ebp),%eax
	movb	$49,5(%eax)
	movl	-4(%ebp),%eax
	movb	$0,6(%eax)
	movl	-4(%ebp),%eax
	incl	(%eax)
	jmp	Lj6516
Lj6511:
	movl	-4(%ebp),%eax
	movb	$0,5(%eax)
Lj6516:
	jmp	Lj6519
Lj6509:
	movl	-280(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6520
	jmp	Lj6521
Lj6520:
	movl	-4(%ebp),%edx
	movl	-280(%ebp),%eax
	movb	5(%edx,%eax,1),%al
	cmpb	$53,%al
	jae	Lj6522
	jmp	Lj6523
Lj6522:
	.balign 4,0x90
Lj6524:
	movl	-4(%ebp),%edx
	movl	-280(%ebp),%eax
	movb	$0,5(%edx,%eax,1)
	decl	-280(%ebp)
	movl	-4(%ebp),%edx
	movl	-280(%ebp),%eax
	incb	5(%edx,%eax,1)
	movl	-280(%ebp),%eax
	testl	%eax,%eax
	je	Lj6526
	jmp	Lj6529
Lj6529:
	movl	-4(%ebp),%edx
	movl	-280(%ebp),%eax
	movb	5(%edx,%eax,1),%al
	cmpb	$58,%al
	jb	Lj6526
	jmp	Lj6524
Lj6526:
	movl	-4(%ebp),%eax
	movb	5(%eax),%al
	cmpb	$58,%al
	je	Lj6530
	jmp	Lj6531
Lj6530:
	movl	-4(%ebp),%eax
	movb	$49,5(%eax)
	movl	-4(%ebp),%eax
	incl	(%eax)
Lj6531:
	jmp	Lj6534
Lj6523:
	movl	-4(%ebp),%edx
	movl	-280(%ebp),%eax
	movb	$48,5(%edx,%eax,1)
	jmp	Lj6538
	.balign 4,0x90
Lj6537:
	movl	-4(%ebp),%edx
	movl	-280(%ebp),%eax
	movb	$0,5(%edx,%eax,1)
	decl	-280(%ebp)
Lj6538:
	movl	-280(%ebp),%eax
	cmpl	$-1,%eax
	jg	Lj6542
	jmp	Lj6539
Lj6542:
	movl	-4(%ebp),%edx
	movl	-280(%ebp),%eax
	movb	5(%edx,%eax,1),%al
	cmpb	$48,%al
	je	Lj6537
	jmp	Lj6539
Lj6539:
Lj6534:
	jmp	Lj6543
Lj6521:
	movl	-4(%ebp),%eax
	movb	$0,5(%eax)
Lj6543:
Lj6519:
	movl	-4(%ebp),%eax
	movb	5(%eax),%al
	testb	%al,%al
	je	Lj6548
	jmp	Lj6547
Lj6548:
	movb	-293(%ebp),%al
	testb	%al,%al
	je	Lj6546
	jmp	Lj6547
Lj6546:
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	-4(%ebp),%eax
	movb	$0,4(%eax)
Lj6547:
Lj6310:
	call	FPC_POPADDRSTACK
	leal	-596(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-596(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6311
	call	FPC_RERAISE
Lj6311:
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_FLOATTODECIMAL$TFLOATREC$EXTENDED$LONGINT$LONGINT
SYSUTILS_FLOATTODECIMAL$TFLOATREC$EXTENDED$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	-8(%ebp)
	pushl	-12(%ebp)
	leal	8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	SYSUTILS_FLOATTODECIMAL$TFLOATREC$formal$TFLOATVALUE$LONGINT$LONGINT
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_FORMATFLOAT$ANSISTRING$EXTENDED$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_FORMATFLOAT$ANSISTRING$EXTENDED$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1037,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	leal	-1037(%ebp),%eax
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj6575
	movl	$FPC_EMPTYCHAR,%edx
Lj6575:
	movl	-8(%ebp),%ecx
	call	SYSUTILS_FLOATTOTEXTFMT$PCHAR$EXTENDED$PCHAR$TFORMATSETTINGS$$LONGINT
	movb	$0,-1037(%ebp,%eax,1)
	leal	-1037(%ebp),%eax
	movl	-12(%ebp),%edx
	call	SYSUTILS_STRPAS$PCHAR$$ANSISTRING
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_FORMATFLOAT$ANSISTRING$EXTENDED$$ANSISTRING
SYSUTILS_FORMATFLOAT$ANSISTRING$EXTENDED$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movzwl	16(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-8(%ebp),%ecx
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FORMATFLOAT$ANSISTRING$EXTENDED$TFORMATSETTINGS$$ANSISTRING
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_FORMATCURR$ANSISTRING$CURRENCY$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_FORMATCURR$ANSISTRING$CURRENCY$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	fildq	_$SYSUTILS$_Ld74
	fildq	8(%ebp)
	fdivp	%st,%st(1)
	subl	$12,%esp
	fstpt	(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FORMATFLOAT$ANSISTRING$EXTENDED$TFORMATSETTINGS$$ANSISTRING
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_FORMATCURR$ANSISTRING$CURRENCY$$ANSISTRING
SYSUTILS_FORMATCURR$ANSISTRING$CURRENCY$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	movl	-8(%ebp),%ecx
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FORMATCURR$ANSISTRING$CURRENCY$TFORMATSETTINGS$$ANSISTRING
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_LEFTSTR$ANSISTRING$LONGINT$$ANSISTRING
SYSUTILS_LEFTSTR$ANSISTRING$LONGINT$$ANSISTRING:
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
.globl	SYSUTILS_RIGHTSTR$ANSISTRING$LONGINT$$ANSISTRING
SYSUTILS_RIGHTSTR$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6626
	movl	-4(%eax),%eax
Lj6626:
	cmpl	-8(%ebp),%eax
	jl	Lj6624
	jmp	Lj6625
Lj6624:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6629
	movl	-4(%eax),%eax
Lj6629:
	movl	%eax,-8(%ebp)
Lj6625:
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj6634
	movl	-4(%edx),%edx
Lj6634:
	incl	%edx
	movl	-8(%ebp),%eax
	subl	%eax,%edx
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_copy
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_BCDTOINT$LONGINT$$LONGINT
SYSUTILS_BCDTOINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	$1,-16(%ebp)
	movl	$0,-12(%ebp)
	decl	-12(%ebp)
	.balign 4,0x90
Lj6647:
	incl	-12(%ebp)
	movl	-4(%ebp),%eax
	andl	$15,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$9,%eax
	jg	Lj6650
	jmp	Lj6651
Lj6650:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj6652
	jmp	Lj6653
Lj6652:
	movl	-20(%ebp),%eax
	cmpl	$11,%eax
	je	Lj6656
	cmpl	$13,%eax
	je	Lj6656
Lj6656:
	je	Lj6654
	jmp	Lj6655
Lj6654:
	movl	$-1,-16(%ebp)
Lj6655:
	jmp	Lj6659
Lj6653:
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-28(%ebp)
	leal	-28(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SINVALIDBCD+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La13:
	movl	%ebp,%ecx
	movl	$La13,%edx
	call	FPC_RAISEEXCEPTION
Lj6659:
	jmp	Lj6670
Lj6651:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	imull	%eax,%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-16(%ebp),%eax
	imull	$10,%eax
	movl	%eax,-16(%ebp)
Lj6670:
	movl	-4(%ebp),%eax
	shrl	$4,%eax
	movl	%eax,-4(%ebp)
	cmpl	$7,-12(%ebp)
	jl	Lj6647
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_LASTDELIMITER$ANSISTRING$ANSISTRING$$LONGINT
SYSUTILS_LASTDELIMITER$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%esi,-56(%ebp)
	movl	%edi,-52(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-44(%ebp),%edi
	movl	$_$SYSUTILS$_Ld75,%esi
	cld
	movl	$8,%ecx
	rep
	movsl
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6684
	movl	-4(%eax),%eax
Lj6684:
	movl	$1,-48(%ebp)
	cmpl	-48(%ebp),%eax
	jl	Lj6682
	decl	-48(%ebp)
	.balign 4,0x90
Lj6683:
	incl	-48(%ebp)
	movl	-4(%ebp),%edx
	movl	-48(%ebp),%ecx
	movzbl	-1(%edx,%ecx,1),%edx
	btsl	%edx,-44(%ebp)
	cmpl	-48(%ebp),%eax
	jg	Lj6683
Lj6682:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj6687
	movl	-4(%eax),%eax
Lj6687:
	movl	%eax,-12(%ebp)
	jmp	Lj6689
	.balign 4,0x90
Lj6688:
	decl	-12(%ebp)
Lj6689:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6691
	jmp	Lj6690
Lj6691:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,-44(%ebp)
	jnc	Lj6688
	jmp	Lj6690
Lj6690:
	movl	-12(%ebp),%eax
	movl	-56(%ebp),%esi
	movl	-52(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING
SYSUTILS_STRINGREPLACE$ANSISTRING$ANSISTRING$ANSISTRING$TREPLACEFLAGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-88(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj6694
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	testl	$2,12(%ebp)
	jne	Lj6701
	jmp	Lj6702
Lj6701:
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+32,%ecx
	call	*%ecx
	movl	-72(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-72(%ebp),%eax
	movl	%eax,-16(%ebp)
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+32,%ecx
	call	*%ecx
	movl	-72(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-72(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj6702:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj6720
	.balign 4,0x90
Lj6719:
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSUTILS_ANSIPOS$ANSISTRING$ANSISTRING$$LONGINT
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj6728
	jmp	Lj6729
Lj6728:
	movl	-24(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_concat
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-16(%ebp)
	jmp	Lj6738
Lj6729:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-84(%ebp)
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	pushl	%eax
	movl	-28(%ebp),%ecx
	decl	%ecx
	movl	-24(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-72(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-76(%ebp)
	leal	-84(%ebp),%edx
	movl	8(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj6755
	movl	-4(%eax),%eax
Lj6755:
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-28(%ebp)
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	pushl	%eax
	movl	-24(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj6762
	movl	-4(%ecx),%ecx
Lj6762:
	movl	-28(%ebp),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	-28(%ebp),%edx
	movl	-24(%ebp),%eax
	call	fpc_ansistr_copy
	movl	-72(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-72(%ebp),%eax
	movl	%eax,-24(%ebp)
	testl	$1,12(%ebp)
	je	Lj6767
	jmp	Lj6768
Lj6767:
	movl	-24(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_concat
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-16(%ebp)
	jmp	Lj6777
Lj6768:
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj6784
	movl	-4(%ecx),%ecx
Lj6784:
	movl	-28(%ebp),%eax
	subl	%eax,%ecx
	incl	%ecx
	movl	-28(%ebp),%edx
	movl	-16(%ebp),%eax
	call	fpc_ansistr_copy
	movl	-72(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-72(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj6777:
Lj6738:
Lj6720:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj6789
	movl	-4(%eax),%eax
Lj6789:
	testl	%eax,%eax
	jne	Lj6719
	jmp	Lj6721
Lj6721:
Lj6694:
	call	FPC_POPADDRSTACK
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-24(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6695
	call	FPC_RERAISE
Lj6695:
	movl	-88(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_ISDELIMITER$ANSISTRING$ANSISTRING$LONGINT$$BOOLEAN
SYSUTILS_ISDELIMITER$ANSISTRING$ANSISTRING$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6814
	jmp	Lj6813
Lj6814:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj6815
	movl	-4(%eax),%eax
Lj6815:
	cmpl	-12(%ebp),%eax
	jge	Lj6812
	jmp	Lj6813
Lj6812:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	movl	-4(%ebp),%edx
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	testl	%eax,%eax
	setneb	-13(%ebp)
Lj6813:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_BYTETOCHARLEN$ANSISTRING$LONGINT$$LONGINT
SYSUTILS_BYTETOCHARLEN$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6826
	movl	-4(%eax),%eax
Lj6826:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj6827
	jmp	Lj6828
Lj6827:
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj6828:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_BYTETOCHARINDEX$ANSISTRING$LONGINT$$LONGINT
SYSUTILS_BYTETOCHARINDEX$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_CHARTOBYTELEN$ANSISTRING$LONGINT$$LONGINT
SYSUTILS_CHARTOBYTELEN$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj6839
	movl	-4(%eax),%eax
Lj6839:
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jg	Lj6840
	jmp	Lj6841
Lj6840:
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj6841:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_CHARTOBYTEINDEX$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_BYTETYPE$ANSISTRING$LONGINT$$TMBCSBYTETYPE
SYSUTILS_BYTETYPE$ANSISTRING$LONGINT$$TMBCSBYTETYPE:
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
.globl	SYSUTILS_STRBYTETYPE$PCHAR$LONGWORD$$TMBCSBYTETYPE
SYSUTILS_STRBYTETYPE$PCHAR$LONGWORD$$TMBCSBYTETYPE:
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
.globl	SYSUTILS_STRCHARLENGTH$PCHAR$$LONGINT
SYSUTILS_STRCHARLENGTH$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+24,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRNEXTCHAR$PCHAR$$PCHAR
SYSUTILS_STRNEXTCHAR$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRCHARLENGTH$PCHAR$$LONGINT
	movl	-4(%ebp),%edx
	addl	%eax,%edx
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FINDCMDLINESWITCH$ANSISTRING$TSYSCHARSET$BOOLEAN$$BOOLEAN
SYSUTILS_FINDCMDLINESWITCH$ANSISTRING$TSYSCHARSET$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$80,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-80(%ebp)
	movl	$0,-76(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj6870
	movb	$0,-13(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,-28(%ebp)
	cmpb	$0,-12(%ebp)
	jne	Lj6877
	jmp	Lj6878
Lj6877:
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-28(%ebp),%eax
	call	SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING
	movl	-76(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-28(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-76(%ebp),%eax
	movl	%eax,-28(%ebp)
Lj6878:
	call	SYSTEM_PARAMCOUNT$$LONGINT
	movl	%eax,-20(%ebp)
	jmp	Lj6888
	.balign 4,0x90
Lj6887:
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-20(%ebp),%eax
	call	OBJPAS_PARAMSTR$LONGINT$$ANSISTRING
	movl	-76(%ebp),%eax
	testl	%eax,%eax
	je	Lj6896
	movl	-4(%eax),%eax
Lj6896:
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6899
	jmp	Lj6898
Lj6899:
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%edx
	movl	-20(%ebp),%eax
	call	OBJPAS_PARAMSTR$LONGINT$$ANSISTRING
	movl	-76(%ebp),%eax
	movl	-8(%ebp),%edx
	movzbl	(%eax),%eax
	btl	%eax,(%edx)
	jc	Lj6897
	jmp	Lj6898
Lj6897:
	leal	-32(%ebp),%eax
	pushl	%eax
	leal	-80(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-20(%ebp),%eax
	call	OBJPAS_PARAMSTR$LONGINT$$ANSISTRING
	movl	-80(%ebp),%eax
	movl	-24(%ebp),%ecx
	decl	%ecx
	movl	$2,%edx
	call	fpc_ansistr_copy
	cmpb	$0,-12(%ebp)
	jne	Lj6916
	jmp	Lj6917
Lj6916:
	leal	-80(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	-32(%ebp),%eax
	call	SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING
	movl	-80(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-32(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-80(%ebp),%eax
	movl	%eax,-32(%ebp)
Lj6917:
	movl	-32(%ebp),%edx
	movl	-28(%ebp),%eax
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj6898:
	decl	-20(%ebp)
Lj6888:
	movb	-13(%ebp),%al
	testb	%al,%al
	je	Lj6930
	jmp	Lj6889
Lj6930:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6887
	jmp	Lj6889
Lj6889:
Lj6870:
	call	FPC_POPADDRSTACK
	leal	-80(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-80(%ebp)
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	leal	-28(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-28(%ebp)
	leal	-32(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-32(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6871
	call	FPC_RERAISE
Lj6871:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FINDCMDLINESWITCH$ANSISTRING$BOOLEAN$$BOOLEAN
SYSUTILS_FINDCMDLINESWITCH$ANSISTRING$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	$_$SYSUTILS$_Ld76,%edx
	movb	-8(%ebp),%cl
	movl	-4(%ebp),%eax
	call	SYSUTILS_FINDCMDLINESWITCH$ANSISTRING$TSYSCHARSET$BOOLEAN$$BOOLEAN
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FINDCMDLINESWITCH$ANSISTRING$$BOOLEAN
SYSUTILS_FINDCMDLINESWITCH$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	$_$SYSUTILS$_Ld76,%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	SYSUTILS_FINDCMDLINESWITCH$ANSISTRING$TSYSCHARSET$BOOLEAN$$BOOLEAN
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_WRAPTEXT$ANSISTRING$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING
SYSUTILS_WRAPTEXT$ANSISTRING$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$84,%esp
	movl	%ebx,-84(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-80(%ebp)
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj6965
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj6974
	movl	-4(%eax),%eax
Lj6974:
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6975
	jmp	Lj6976
Lj6975:
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-19(%ebp)
	jmp	Lj6979
Lj6976:
	movb	$0,-19(%ebp)
Lj6979:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj6984
	movl	-4(%eax),%eax
Lj6984:
	movl	%eax,-32(%ebp)
	jmp	Lj6986
	.balign 4,0x90
Lj6985:
	movl	$1,-24(%ebp)
	movb	$0,-18(%ebp)
	movb	$0,-33(%ebp)
	movb	$0,-34(%ebp)
	jmp	Lj6997
	.balign 4,0x90
Lj6996:
	movl	-16(%ebp),%edx
	movl	-24(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	movb	%al,-17(%ebp)
	movb	-17(%ebp),%al
	cmpb	-18(%ebp),%al
	je	Lj7001
	jmp	Lj7002
Lj7001:
	movb	$0,-18(%ebp)
	jmp	Lj7005
Lj7002:
	movzbl	-17(%ebp),%eax
	cmpl	$34,%eax
	je	Lj7008
	cmpl	$39,%eax
	je	Lj7008
Lj7008:
	je	Lj7006
	jmp	Lj7007
Lj7006:
	movb	-17(%ebp),%al
	movb	%al,-18(%ebp)
Lj7007:
Lj7005:
	movb	-18(%ebp),%al
	testb	%al,%al
	jne	Lj7011
	jmp	Lj7012
Lj7011:
	incl	-24(%ebp)
	jmp	Lj7013
Lj7012:
	movb	-17(%ebp),%al
	cmpb	-19(%ebp),%al
	je	Lj7016
	jmp	Lj7015
Lj7016:
	leal	-80(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%eax
	pushl	%eax
	movl	-28(%ebp),%ecx
	movl	-24(%ebp),%edx
	movl	-16(%ebp),%eax
	call	fpc_ansistr_copy
	movl	-80(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	je	Lj7014
	jmp	Lj7015
Lj7014:
	movb	$1,-33(%ebp)
	jmp	Lj7029
Lj7015:
	movb	$0,-33(%ebp)
Lj7029:
	cmpb	$0,-33(%ebp)
	jne	Lj7030
	jmp	Lj7031
Lj7030:
	movl	-28(%ebp),%eax
	addl	%eax,-24(%ebp)
	jmp	Lj7032
Lj7031:
	movl	-24(%ebp),%eax
	cmpl	12(%ebp),%eax
	jg	Lj7033
	jmp	Lj7034
Lj7033:
	movl	-12(%ebp),%eax
	movzbl	-17(%ebp),%edx
	btl	%edx,(%eax)
	setcb	-34(%ebp)
Lj7034:
	incl	-24(%ebp)
Lj7032:
Lj7013:
Lj6997:
	movl	-24(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jle	Lj7038
	jmp	Lj6998
Lj7038:
	movl	-24(%ebp),%eax
	cmpl	12(%ebp),%eax
	jle	Lj7037
	jmp	Lj7039
Lj7039:
	movb	-34(%ebp),%al
	testb	%al,%al
	je	Lj7037
	jmp	Lj6998
Lj7037:
	movb	-18(%ebp),%al
	testb	%al,%al
	jne	Lj6996
	jmp	Lj7040
Lj7040:
	movb	-33(%ebp),%al
	testb	%al,%al
	je	Lj6996
	jmp	Lj6998
Lj6998:
	leal	-80(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%eax
	pushl	%eax
	movl	-24(%ebp),%ecx
	decl	%ecx
	movl	-16(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-80(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_concat
	movb	-33(%ebp),%al
	testb	%al,%al
	je	Lj7055
	jmp	Lj7056
Lj7055:
	movl	-8(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	fpc_ansistr_concat
Lj7056:
	movl	-24(%ebp),%ecx
	decl	%ecx
	leal	-16(%ebp),%eax
	movl	$1,%edx
	call	SYSTEM_DELETE$ANSISTRING$LONGINT$LONGINT
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj7071
	movl	-4(%eax),%eax
Lj7071:
	movl	%eax,-32(%ebp)
Lj6986:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj6985
	jmp	Lj6987
Lj6987:
Lj6965:
	call	FPC_POPADDRSTACK
	leal	-80(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-80(%ebp)
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj6966
	call	FPC_RERAISE
Lj6966:
	movl	-84(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_WRAPTEXT$ANSISTRING$LONGINT$$ANSISTRING
SYSUTILS_WRAPTEXT$ANSISTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	-8(%ebp)
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	$_$SYSUTILS$_Ld77,%ecx
	movl	-4(%ebp),%eax
	movl	$_$SYSUTILS$_Ld78,%edx
	call	SYSUTILS_WRAPTEXT$ANSISTRING$ANSISTRING$TSYSCHARSET$LONGINT$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_SSCANF$ANSISTRING$ANSISTRING$array_of_POINTER$$LONGINT
SYSUTILS_SSCANF$ANSISTRING$ANSISTRING$array_of_POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$84,%esp
	movl	%ebx,-84(%ebp)
	movl	%esi,-80(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-36(%ebp)
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7102
	movl	$1,-28(%ebp)
	movl	$1,-32(%ebp)
	movl	$0,-16(%ebp)
	movl	8(%ebp),%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj7112
	decl	-20(%ebp)
	.balign 4,0x90
Lj7113:
	incl	-20(%ebp)
	movl	%ebp,%eax
	call	SYSUTILS_SSCANF$crc2C21944E_GETFMT$$LONGINT
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jl	Lj7119
	testl	%eax,%eax
	je	Lj7120
	subl	$2,%eax
	je	Lj7121
	decl	%eax
	je	Lj7122
	decl	%eax
	je	Lj7123
	jmp	Lj7119
Lj7120:
	movl	%ebp,%eax
	movb	$0,%dl
	call	SYSUTILS_SSCANF$crc2C21944E_GETINT$BOOLEAN$$LONGINT
	cmpl	$0,%eax
	jg	Lj7124
	jmp	Lj7125
Lj7124:
	movl	-36(%ebp),%eax
	call	SYSUTILS_STRTOINT$ANSISTRING$$LONGINT
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%ecx
	movl	(%edx,%ecx,4),%edx
	movl	%eax,(%edx)
	incl	-16(%ebp)
	jmp	Lj7134
Lj7125:
	jmp	Lj7112
Lj7134:
	jmp	Lj7118
Lj7121:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj7137
	movl	-4(%eax),%eax
Lj7137:
	cmpl	-28(%ebp),%eax
	jg	Lj7135
	jmp	Lj7136
Lj7135:
	movl	-12(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	(%edx,%eax,4),%ecx
	movl	-4(%ebp),%edx
	movl	-28(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	movb	%al,(%ecx)
	incl	-28(%ebp)
	incl	-16(%ebp)
	jmp	Lj7140
Lj7136:
	jmp	Lj7112
Lj7140:
	jmp	Lj7118
Lj7122:
	movl	%ebp,%eax
	call	SYSUTILS_SSCANF$crc2C21944E_GETFLOAT$$LONGINT
	cmpl	$0,%eax
	jg	Lj7141
	jmp	Lj7142
Lj7141:
	movl	-36(%ebp),%eax
	call	SYSUTILS_STRTOFLOAT$ANSISTRING$$EXTENDED
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	fstpt	(%eax)
	incl	-16(%ebp)
	jmp	Lj7149
Lj7142:
	jmp	Lj7112
Lj7149:
	jmp	Lj7118
Lj7123:
	movl	%ebp,%eax
	call	SYSUTILS_SSCANF$crc2C21944E_GETSTRING$$LONGINT
	cmpl	$0,%eax
	jg	Lj7150
	jmp	Lj7151
Lj7150:
	movl	-36(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%esi
	movl	%esi,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-36(%ebp),%eax
	movl	%eax,(%esi)
	incl	-16(%ebp)
	jmp	Lj7156
Lj7151:
	jmp	Lj7112
Lj7156:
	jmp	Lj7118
Lj7119:
	jmp	Lj7112
Lj7118:
	cmpl	-20(%ebp),%ebx
	jg	Lj7113
Lj7112:
Lj7102:
	call	FPC_POPADDRSTACK
	leal	-36(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-36(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7103
	call	FPC_RERAISE
Lj7103:
	movl	-16(%ebp),%eax
	movl	-84(%ebp),%ebx
	movl	-80(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
SYSUTILS_SSCANF$crc2C21944E_GETFMT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	$-1,-8(%ebp)
	jmp	Lj7166
	.balign 4,0x90
Lj7165:
	jmp	Lj7169
	.balign 4,0x90
Lj7168:
	movl	-4(%ebp),%eax
	incl	-32(%eax)
Lj7169:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	testl	%edx,%edx
	je	Lj7172
	movl	-4(%edx),%edx
Lj7172:
	movl	-4(%ebp),%eax
	cmpl	-32(%eax),%edx
	jg	Lj7171
	jmp	Lj7170
Lj7171:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-32(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$32,%al
	je	Lj7168
	jmp	Lj7170
Lj7170:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	testl	%edx,%edx
	je	Lj7175
	movl	-4(%edx),%edx
Lj7175:
	movl	-4(%ebp),%eax
	cmpl	-32(%eax),%edx
	jle	Lj7173
	jmp	Lj7174
Lj7173:
	jmp	Lj7167
Lj7174:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-32(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$37,%al
	je	Lj7176
	jmp	Lj7177
Lj7176:
	movl	-4(%ebp),%eax
	incl	-32(%eax)
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-32(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$99,%al
	jb	Lj7179
	subb	$99,%al
	je	Lj7183
	decb	%al
	je	Lj7180
	subb	$2,%al
	je	Lj7181
	subb	$13,%al
	je	Lj7182
	jmp	Lj7179
Lj7180:
	movl	$0,-8(%ebp)
	jmp	Lj7178
Lj7181:
	movl	$3,-8(%ebp)
	jmp	Lj7178
Lj7182:
	movl	$4,-8(%ebp)
	jmp	Lj7178
Lj7183:
	movl	$2,-8(%ebp)
	jmp	Lj7178
Lj7179:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	$11,-16(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SINVALIDFORMAT+4,%ecx
	movl	$VMT_SYSUTILS_EFORMATERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La14:
	movl	%ebp,%ecx
	movl	$La14,%edx
	call	FPC_RAISEEXCEPTION
Lj7178:
	movl	-4(%ebp),%eax
	incl	-32(%eax)
	jmp	Lj7167
Lj7177:
	movl	-4(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-32(%eax),%eax
	movb	-1(%edx,%eax,1),%dl
	movl	-4(%ebp),%eax
	call	SYSUTILS_SSCANF$crc2C21944E_SCANSTR$CHAR$$BOOLEAN
	testb	%al,%al
	je	Lj7202
	jmp	Lj7203
Lj7202:
	jmp	Lj7167
Lj7203:
	movl	-4(%ebp),%eax
	incl	-32(%eax)
Lj7166:
	jmp	Lj7165
Lj7167:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_SSCANF$crc2C21944E_SCANSTR$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	jmp	Lj7209
	.balign 4,0x90
Lj7208:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj7209:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	testl	%edx,%edx
	je	Lj7212
	movl	-4(%edx),%edx
Lj7212:
	movl	-8(%ebp),%eax
	cmpl	-28(%eax),%edx
	jg	Lj7211
	jmp	Lj7210
Lj7211:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	-4(%ebp),%al
	jne	Lj7208
	jmp	Lj7210
Lj7210:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	testl	%edx,%edx
	je	Lj7215
	movl	-4(%edx),%edx
Lj7215:
	movl	-8(%ebp),%eax
	cmpl	-28(%eax),%edx
	jge	Lj7213
	jmp	Lj7214
Lj7213:
	movb	$1,-9(%ebp)
	jmp	Lj7218
Lj7214:
	movb	$0,-9(%ebp)
Lj7218:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_SSCANF$crc2C21944E_GETSTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7221
	movl	-4(%ebp),%ebx
	leal	-36(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-36(%ebx)
	jmp	Lj7227
	.balign 4,0x90
Lj7226:
	movl	-4(%ebp),%eax
	incl	-28(%eax)
Lj7227:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	testl	%eax,%eax
	je	Lj7230
	movl	-4(%eax),%eax
Lj7230:
	movl	-4(%ebp),%edx
	cmpl	-28(%edx),%eax
	jg	Lj7229
	jmp	Lj7228
Lj7229:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$32,%al
	je	Lj7226
	jmp	Lj7228
Lj7228:
	jmp	Lj7232
	.balign 4,0x90
Lj7231:
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	leal	-52(%ebp),%edx
	call	fpc_char_to_ansistr
	movl	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-36(%eax),%edx
	movl	-4(%ebp),%eax
	leal	-36(%eax),%eax
	call	fpc_ansistr_concat
	movl	-4(%ebp),%eax
	incl	-28(%eax)
Lj7232:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	testl	%edx,%edx
	je	Lj7245
	movl	-4(%edx),%edx
Lj7245:
	movl	-4(%ebp),%eax
	cmpl	-28(%eax),%edx
	jge	Lj7244
	jmp	Lj7233
Lj7244:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$32,%al
	jne	Lj7231
	jmp	Lj7233
Lj7233:
	movl	-4(%ebp),%eax
	movl	-36(%eax),%eax
	testl	%eax,%eax
	je	Lj7248
	movl	-4(%eax),%eax
Lj7248:
	movl	%eax,-8(%ebp)
Lj7221:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7222
	call	FPC_RERAISE
Lj7222:
	movl	-8(%ebp),%eax
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_SSCANF$crc2C21944E_GETFLOAT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$92,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7249
	movl	-4(%ebp),%ebx
	leal	-36(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-36(%ebx)
	jmp	Lj7255
	.balign 4,0x90
Lj7254:
	movl	-4(%ebp),%eax
	incl	-28(%eax)
Lj7255:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	testl	%eax,%eax
	je	Lj7258
	movl	-4(%eax),%eax
Lj7258:
	movl	-4(%ebp),%edx
	cmpl	-28(%edx),%eax
	jg	Lj7257
	jmp	Lj7256
Lj7257:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$32,%al
	je	Lj7254
	jmp	Lj7256
Lj7256:
	jmp	Lj7260
	.balign 4,0x90
Lj7259:
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	leal	-52(%ebp),%edx
	call	fpc_char_to_ansistr
	movl	-52(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	-36(%eax),%edx
	movl	-4(%ebp),%eax
	leal	-36(%eax),%eax
	call	fpc_ansistr_concat
	movl	-4(%ebp),%eax
	incl	-28(%eax)
Lj7260:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	testl	%edx,%edx
	je	Lj7273
	movl	-4(%edx),%edx
Lj7273:
	movl	-4(%ebp),%eax
	cmpl	-28(%eax),%edx
	jge	Lj7272
	jmp	Lj7261
Lj7272:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%esi
	movl	-4(%ebp),%eax
	movl	-28(%eax),%ebx
	pushl	$32
	movl	$_$SYSUTILS$_Ld79,%eax
	movzbl	TC_SYSUTILS_DEFAULTFORMATSETTINGS+3,%ecx
	leal	-84(%ebp),%edx
	call	fpc_varset_set
	movzbl	-1(%esi,%ebx,1),%eax
	btl	%eax,-84(%ebp)
	jc	Lj7259
	jmp	Lj7261
Lj7261:
	movl	-4(%ebp),%eax
	movl	-36(%eax),%eax
	testl	%eax,%eax
	je	Lj7284
	movl	-4(%eax),%eax
Lj7284:
	movl	%eax,-8(%ebp)
Lj7249:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7250
	call	FPC_RERAISE
Lj7250:
	movl	-8(%ebp),%eax
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_SSCANF$crc2C21944E_GETINT$BOOLEAN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7285
	movl	-8(%ebp),%ebx
	leal	-36(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-36(%ebx)
	jmp	Lj7291
	.balign 4,0x90
Lj7290:
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj7291:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	testl	%edx,%edx
	je	Lj7294
	movl	-4(%edx),%edx
Lj7294:
	movl	-8(%ebp),%eax
	cmpl	-28(%eax),%edx
	jg	Lj7293
	jmp	Lj7292
Lj7293:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$32,%al
	je	Lj7290
	jmp	Lj7292
Lj7292:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	testl	%edx,%edx
	je	Lj7298
	movl	-4(%edx),%edx
Lj7298:
	movl	-8(%ebp),%eax
	cmpl	-28(%eax),%edx
	jge	Lj7297
	jmp	Lj7296
Lj7297:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movzbl	-1(%edx,%eax,1),%eax
	cmpl	$43,%eax
	je	Lj7299
	cmpl	$45,%eax
	je	Lj7299
Lj7299:
	je	Lj7295
	jmp	Lj7296
Lj7295:
	cmpb	$0,-4(%ebp)
	jne	Lj7302
	jmp	Lj7301
Lj7302:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$45,%al
	je	Lj7300
	jmp	Lj7301
Lj7300:
	movl	-8(%ebp),%eax
	movl	-36(%eax),%eax
	testl	%eax,%eax
	je	Lj7305
	movl	-4(%eax),%eax
Lj7305:
	movl	%eax,-12(%ebp)
	jmp	Lj7285
	jmp	Lj7306
Lj7301:
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	leal	-56(%ebp),%edx
	call	fpc_char_to_ansistr
	movl	-56(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-36(%eax),%edx
	movl	-8(%ebp),%eax
	leal	-36(%eax),%eax
	call	fpc_ansistr_concat
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj7306:
Lj7296:
	jmp	Lj7318
	.balign 4,0x90
Lj7317:
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movb	-1(%edx,%eax,1),%al
	leal	-56(%ebp),%edx
	call	fpc_char_to_ansistr
	movl	-56(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	-36(%eax),%edx
	movl	-8(%ebp),%eax
	leal	-36(%eax),%eax
	call	fpc_ansistr_concat
	movl	-8(%ebp),%eax
	incl	-28(%eax)
Lj7318:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	testl	%edx,%edx
	je	Lj7331
	movl	-4(%edx),%edx
Lj7331:
	movl	-8(%ebp),%eax
	cmpl	-28(%eax),%edx
	jge	Lj7330
	jmp	Lj7319
Lj7330:
	movl	-8(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-8(%ebp),%eax
	movl	-28(%eax),%eax
	movzbl	-1(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj7332
Lj7332:
	jc	Lj7317
	jmp	Lj7319
Lj7319:
	movl	-8(%ebp),%eax
	movl	-36(%eax),%eax
	testl	%eax,%eax
	je	Lj7335
	movl	-4(%eax),%eax
Lj7335:
	movl	%eax,-12(%ebp)
Lj7285:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7286
	call	FPC_RERAISE
Lj7286:
	movl	-12(%ebp),%eax
	movl	-60(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_DOENCODEDATE$WORD$WORD$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	leal	-24(%ebp),%eax
	pushl	%eax
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	SYSUTILS_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	testb	%al,%al
	jne	Lj7338
	jmp	Lj7339
Lj7338:
	fnstcw	-28(%ebp)
	fnstcw	-26(%ebp)
	orw	$3840,-28(%ebp)
	fldl	-24(%ebp)
	fldcw	-28(%ebp)
	fistpq	-36(%ebp)
	fldcw	-26(%ebp)
	fwait
	movl	-36(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj7350
Lj7339:
	movl	$0,-16(%ebp)
Lj7350:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_DOENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	8(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	pushl	%eax
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	SYSUTILS_TRYENCODETIME$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	testb	%al,%al
	je	Lj7355
	jmp	Lj7356
Lj7355:
	fldz
	fstpl	-20(%ebp)
Lj7356:
	fldl	-20(%ebp)
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	fldz
	fldl	16(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj7371
	jmp	Lj7372
Lj7371:
	fldl	8(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	call	fpc_frac_real
	fabs
	fnstcw	-12(%ebp)
	fnstcw	-10(%ebp)
	orw	$3840,-12(%ebp)
	fldl	16(%ebp)
	fldcw	-12(%ebp)
	fistpq	-20(%ebp)
	fldcw	-10(%ebp)
	fwait
	fildq	-20(%ebp)
	fsubp	%st,%st(1)
	fstpl	-8(%ebp)
	jmp	Lj7377
Lj7372:
	fldl	8(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	call	fpc_frac_real
	fabs
	fnstcw	-12(%ebp)
	fnstcw	-10(%ebp)
	orw	$3840,-12(%ebp)
	fldl	16(%ebp)
	fldcw	-12(%ebp)
	fistpq	-20(%ebp)
	fldcw	-10(%ebp)
	fwait
	fildq	-20(%ebp)
	faddp	%st,%st(1)
	fstpl	-8(%ebp)
Lj7377:
	fldl	-8(%ebp)
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	SYSUTILS_DATETIMETOTIMESTAMP$TDATETIME$$TTIMESTAMP
SYSUTILS_DATETIMETOTIMESTAMP$TDATETIME$$TTIMESTAMP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$32,%esp
	movl	%eax,-4(%ebp)
	fldl	_$SYSUTILS$_Ld80
	fldl	8(%ebp)
	fmulp	%st,%st(1)
	fstpl	-12(%ebp)
	fldz
	fldl	-12(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	Lj7386
	jmp	Lj7387
Lj7386:
	fldl	_$SYSUTILS$_Ld81
	fldl	-12(%ebp)
	fsubp	%st,%st(1)
	fstpl	-12(%ebp)
	jmp	Lj7390
Lj7387:
	fldl	_$SYSUTILS$_Ld81
	fldl	-12(%ebp)
	faddp	%st,%st(1)
	fstpl	-12(%ebp)
Lj7390:
	pushl	$0
	pushl	$86400000
	fnstcw	-24(%ebp)
	fnstcw	-22(%ebp)
	orw	$3840,-24(%ebp)
	fldl	-12(%ebp)
	fldcw	-24(%ebp)
	fistpq	-32(%ebp)
	fldcw	-22(%ebp)
	fwait
	movl	-32(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	cmpl	$0,%edx
	jl	Lj7401
	jg	Lj7402
	cmpl	$0,%eax
	jb	Lj7401
	jmp	Lj7402
Lj7401:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	notl	%edx
	negl	%eax
	sbbl	$-1,%edx
	jmp	Lj7405
Lj7402:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
Lj7405:
	pushl	%edx
	pushl	%eax
	call	fpc_mod_int64
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	pushl	$0
	pushl	$86400000
	fnstcw	-16(%ebp)
	fnstcw	-14(%ebp)
	orw	$3840,-16(%ebp)
	fldl	-12(%ebp)
	fldcw	-16(%ebp)
	fistpq	-24(%ebp)
	fldcw	-14(%ebp)
	fwait
	pushl	-20(%ebp)
	pushl	-24(%ebp)
	call	fpc_div_int64
	addl	$693594,%eax
	adcl	$0,%edx
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_TIMESTAMPTODATETIME$TTIMESTAMP$$TDATETIME
SYSUTILS_TIMESTAMPTODATETIME$TTIMESTAMP$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	subl	$693594,%eax
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	subl	$8,%esp
	fstpl	(%esp)
	movl	-4(%ebp),%eax
	fildl	(%eax)
	fldt	_$SYSUTILS$_Ld82
	fdivrp	%st,%st(1)
	fstpl	-24(%ebp)
	fldl	-24(%ebp)
	subl	$8,%esp
	fstpl	(%esp)
	call	SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_MSECSTOTIMESTAMP$COMP$$TTIMESTAMP
SYSUTILS_MSECSTOTIMESTAMP$COMP$$TTIMESTAMP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	fnstcw	-8(%ebp)
	fnstcw	-6(%ebp)
	orw	$3840,-8(%ebp)
	fildq	_$SYSUTILS$_Ld83
	fildq	8(%ebp)
	fdivp	%st,%st(1)
	fldcw	-8(%ebp)
	fistpq	-16(%ebp)
	fldcw	-6(%ebp)
	fwait
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	fildl	4(%eax)
	fildq	_$SYSUTILS$_Ld83
	fmulp	%st,%st(1)
	fildq	8(%ebp)
	fsubp	%st,%st(1)
	fistpq	8(%ebp)
	fildq	8(%ebp)
	fistpq	-12(%ebp)
	fwait
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,(%eax)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_TIMESTAMPTOMSECS$TTIMESTAMP$$COMP
SYSUTILS_TIMESTAMPTOMSECS$TTIMESTAMP$$COMP:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	fildl	4(%eax)
	fildq	_$SYSUTILS$_Ld83
	fmulp	%st,%st(1)
	movl	-4(%ebp),%eax
	fildl	(%eax)
	faddp	%st,%st(1)
	fistpq	-12(%ebp)
	fildq	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
SYSUTILS_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj7441
	jmp	Lj7437
Lj7441:
	movzwl	-4(%ebp),%eax
	cmpl	$10000,%eax
	jl	Lj7440
	jmp	Lj7437
Lj7440:
	movzwl	-8(%ebp),%eax
	decl	%eax
	cmpl	$12,%eax
	jb	Lj7442
Lj7442:
	jc	Lj7439
	jmp	Lj7437
Lj7439:
	movzwl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj7438
	jmp	Lj7437
Lj7438:
	movw	-4(%ebp),%ax
	call	SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
	movzbl	%al,%eax
	imull	$24,%eax
	movzwl	-8(%ebp),%ecx
	movw	-12(%ebp),%dx
	cmpw	TC_SYSUTILS_MONTHDAYS-2(%eax,%ecx,2),%dx
	jbe	Lj7436
	jmp	Lj7437
Lj7436:
	movb	$1,-13(%ebp)
	jmp	Lj7445
Lj7437:
	movb	$0,-13(%ebp)
Lj7445:
	cmpb	$0,-13(%ebp)
	jne	Lj7446
	jmp	Lj7447
Lj7446:
	movzwl	-8(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj7448
	jmp	Lj7449
Lj7448:
	subw	$3,-8(%ebp)
	jmp	Lj7450
Lj7449:
	addw	$9,-8(%ebp)
	decw	-4(%ebp)
Lj7450:
	movzwl	-4(%ebp),%ecx
	movl	$1374389535,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	$100,%eax
	mull	-20(%ebp)
	movzwl	-4(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-24(%ebp)
	movl	$146097,%eax
	mull	-20(%ebp)
	movl	%eax,%ecx
	shrl	$2,%ecx
	movl	$1461,%eax
	mull	-24(%ebp)
	shrl	$2,%eax
	addl	%eax,%ecx
	movzwl	-8(%ebp),%edx
	movl	$153,%eax
	mull	%edx
	movl	%eax,%edx
	addl	$2,%edx
	movl	$-858993459,%eax
	mull	%edx
	shrl	$2,%edx
	addl	%edx,%ecx
	movzwl	-12(%ebp),%eax
	addl	%eax,%ecx
	movl	%ecx,-28(%ebp)
	movl	-28(%ebp),%eax
	movl	%eax,-36(%ebp)
	movl	$0,-32(%ebp)
	fildq	-36(%ebp)
	movl	8(%ebp),%eax
	fstpl	(%eax)
	movl	8(%ebp),%eax
	movl	8(%ebp),%edx
	fldl	_$SYSUTILS$_Ld84
	fldl	(%edx)
	fsubp	%st,%st(1)
	fstpl	(%eax)
Lj7447:
	movb	-13(%ebp),%al
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYENCODETIME$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
SYSUTILS_TRYENCODETIME$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	-4(%ebp),%eax
	cmpl	$24,%eax
	jl	Lj7465
	jmp	Lj7462
Lj7465:
	movzwl	-8(%ebp),%eax
	cmpl	$60,%eax
	jl	Lj7464
	jmp	Lj7462
Lj7464:
	movzwl	-12(%ebp),%eax
	cmpl	$60,%eax
	jl	Lj7463
	jmp	Lj7462
Lj7463:
	movzwl	12(%ebp),%eax
	cmpl	$1000,%eax
	jl	Lj7461
	jmp	Lj7462
Lj7461:
	movb	$1,-13(%ebp)
	jmp	Lj7466
Lj7462:
	movb	$0,-13(%ebp)
Lj7466:
	cmpb	$0,-13(%ebp)
	jne	Lj7467
	jmp	Lj7468
Lj7467:
	movzwl	-4(%ebp),%edx
	movl	$3600000,%eax
	mull	%edx
	movl	%eax,%ecx
	movzwl	-8(%ebp),%edx
	movl	$60000,%eax
	mull	%edx
	addl	%eax,%ecx
	movzwl	-12(%ebp),%edx
	movl	$1000,%eax
	mull	%edx
	addl	%eax,%ecx
	movzwl	12(%ebp),%eax
	addl	%eax,%ecx
	movl	%ecx,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-28(%ebp)
	movl	$0,-24(%ebp)
	fildq	-28(%ebp)
	fldl	_$SYSUTILS$_Ld80
	fdivrp	%st,%st(1)
	movl	8(%ebp),%eax
	fstpl	(%eax)
Lj7468:
	movb	-13(%ebp),%al
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$44,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	leal	-20(%ebp),%eax
	pushl	%eax
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	SYSUTILS_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	testb	%al,%al
	je	Lj7473
	jmp	Lj7474
Lj7473:
	movzwl	-4(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	$0,-44(%ebp)
	movzwl	-8(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-36(%ebp)
	movzwl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-28(%ebp)
	leal	-44(%ebp),%eax
	pushl	%eax
	pushl	$2
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$_$SYSUTILS$_Ld85,%ecx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La15:
	movl	%ebp,%ecx
	movl	$La15,%edx
	call	FPC_RAISEEXCEPTION
Lj7474:
	fldl	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movw	%ax,-4(%ebp)
	movw	%dx,-8(%ebp)
	movw	%cx,-12(%ebp)
	movzwl	8(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	pushl	%eax
	movw	-12(%ebp),%cx
	movw	-8(%ebp),%dx
	movw	-4(%ebp),%ax
	call	SYSUTILS_TRYENCODETIME$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	testb	%al,%al
	je	Lj7495
	jmp	Lj7496
Lj7495:
	movzwl	-4(%ebp),%eax
	movl	%eax,-48(%ebp)
	movl	$0,-52(%ebp)
	movzwl	-8(%ebp),%eax
	movl	%eax,-40(%ebp)
	movl	$0,-44(%ebp)
	movzwl	-12(%ebp),%eax
	movl	%eax,-32(%ebp)
	movl	$0,-36(%ebp)
	movzwl	8(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-28(%ebp)
	leal	-52(%ebp),%eax
	pushl	%eax
	pushl	$3
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$_$SYSUTILS$_Ld86,%ecx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La16:
	movl	%ebp,%ecx
	movl	$La16,%edx
	call	FPC_RAISEEXCEPTION
Lj7496:
	fldl	-20(%ebp)
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$44,%esp
	movl	%ebx,-44(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	fldl	_$SYSUTILS$_Ld87
	fldl	8(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jbe	Lj7519
	jmp	Lj7520
Lj7519:
	movl	-4(%ebp),%eax
	movw	$0,(%eax)
	movl	-8(%ebp),%eax
	movw	$0,(%eax)
	movl	-12(%ebp),%eax
	movw	$0,(%eax)
	jmp	Lj7527
Lj7520:
	fnstcw	-32(%ebp)
	fnstcw	-30(%ebp)
	orw	$3840,-32(%ebp)
	fldl	8(%ebp)
	subl	$12,%esp
	fstpt	(%esp)
	call	fpc_int_real
	fldcw	-32(%ebp)
	fistpq	-40(%ebp)
	fldcw	-30(%ebp)
	fwait
	movl	-40(%ebp),%eax
	movl	-36(%ebp),%edx
	addl	$693900,%eax
	adcl	$0,%edx
	shldl	$2,%eax,%edx
	shll	$2,%eax
	subl	$1,%eax
	sbbl	$0,%edx
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%edx
	movl	$963315389,%eax
	mull	%edx
	shrl	$15,%edx
	movl	%edx,-16(%ebp)
	movl	$146097,%eax
	mull	-16(%ebp)
	movl	-28(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	shrl	$2,%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	shll	$2,%edx
	addl	$3,%edx
	movl	$376287347,%eax
	mull	%edx
	shrl	$7,%edx
	movl	%edx,-28(%ebp)
	movl	$1461,%eax
	mull	-28(%ebp)
	movl	$0,%ebx
	movl	-20(%ebp),%edx
	shll	$2,%edx
	addl	$7,%edx
	movl	$0,%ecx
	subl	%eax,%edx
	sbbl	%ebx,%ecx
	shrdl	$2,%ecx,%edx
	shrl	$2,%ecx
	movl	%edx,-20(%ebp)
	movl	$5,%eax
	mull	-20(%ebp)
	movl	%eax,%edx
	subl	$3,%edx
	movl	$-701792041,%eax
	mull	%edx
	shrl	$7,%edx
	movl	%edx,-24(%ebp)
	movl	$5,%eax
	mull	-20(%ebp)
	movl	%eax,%ecx
	addl	$2,%ecx
	movl	$153,%eax
	mull	-24(%ebp)
	subl	%eax,%ecx
	movl	$-858993459,%eax
	mull	%ecx
	shrl	$2,%edx
	movl	%edx,-20(%ebp)
	movl	$100,%eax
	mull	-16(%ebp)
	movl	-28(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-16(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$10,%eax
	jb	Lj7548
	jmp	Lj7549
Lj7548:
	addl	$3,-24(%ebp)
	jmp	Lj7550
Lj7549:
	subl	$9,-24(%ebp)
	incl	-16(%ebp)
Lj7550:
	movl	-4(%ebp),%eax
	movw	-16(%ebp),%dx
	movw	%dx,(%eax)
	movl	-8(%ebp),%eax
	movw	-24(%ebp),%dx
	movw	%dx,(%eax)
	movl	-12(%ebp),%edx
	movw	-20(%ebp),%ax
	movw	%ax,(%edx)
Lj7527:
	movl	-44(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_DECODEDATEFULLY$TDATETIME$WORD$WORD$WORD$WORD$$BOOLEAN
SYSUTILS_DECODEDATEFULLY$TDATETIME$WORD$WORD$WORD$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	subl	$8,%esp
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	subl	$8,%esp
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	call	SYSUTILS_DAYOFWEEK$TDATETIME$$LONGINT
	movl	8(%ebp),%edx
	movw	%ax,(%edx)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	subl	$8,%esp
	movl	12(%ebp),%eax
	movl	%eax,(%esp)
	movl	16(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-24(%ebp),%eax
	call	SYSUTILS_DATETIMETOTIMESTAMP$TDATETIME$$TTIMESTAMP
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	$-1792967503,%eax
	mull	%edx
	shrl	$21,%edx
	movl	-4(%ebp),%eax
	movw	%dx,(%eax)
	movl	-16(%ebp),%eax
	xorl	%edx,%edx
	movl	$3600000,%ecx
	divl	%ecx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	$1172812403,%eax
	mull	%edx
	shrl	$14,%edx
	movl	-8(%ebp),%eax
	movw	%dx,(%eax)
	movl	-16(%ebp),%eax
	xorl	%edx,%edx
	movl	$60000,%ecx
	divl	%ecx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	$274877907,%eax
	mull	%edx
	shrl	$6,%edx
	movl	-12(%ebp),%eax
	movw	%dx,(%eax)
	movl	-16(%ebp),%eax
	xorl	%edx,%edx
	movl	$1000,%ecx
	divl	%ecx
	movl	%edx,-16(%ebp)
	movl	8(%ebp),%edx
	movw	-16(%ebp),%ax
	movw	%ax,(%edx)
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_DATETIMETOSYSTEMTIME$TDATETIME$TSYSTEMTIME
SYSUTILS_DATETIMETOSYSTEMTIME$TDATETIME$TSYSTEMTIME:
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
	leal	4(%eax),%ecx
	movl	-4(%ebp),%eax
	leal	2(%eax),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	leal	10(%eax),%ecx
	movl	-4(%ebp),%eax
	leal	8(%eax),%edx
	movl	-4(%ebp),%eax
	leal	6(%eax),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_SYSTEMTIMETODATETIME$TSYSTEMTIME$$TDATETIME
SYSUTILS_SYSTEMTIMETODATETIME$TSYSTEMTIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	4(%eax),%cx
	movl	-4(%ebp),%eax
	movw	2(%eax),%dx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	SYSUTILS_DOENCODEDATE$WORD$WORD$WORD$$LONGINT
	movl	%eax,-16(%ebp)
	fildl	-16(%ebp)
	subl	$8,%esp
	fstpl	(%esp)
	movl	-4(%ebp),%eax
	movzwl	12(%eax),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movw	10(%eax),%cx
	movl	-4(%ebp),%eax
	movw	8(%eax),%dx
	movl	-4(%ebp),%eax
	movw	6(%eax),%ax
	call	SYSUTILS_DOENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
	subl	$8,%esp
	fstpl	(%esp)
	call	SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_DAYOFWEEK$TDATETIME$$LONGINT
SYSUTILS_DAYOFWEEK$TDATETIME$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	pushl	$0
	pushl	$7
	fnstcw	-8(%ebp)
	fnstcw	-6(%ebp)
	orw	$3840,-8(%ebp)
	fldl	8(%ebp)
	fldcw	-8(%ebp)
	fistpq	-16(%ebp)
	fldcw	-6(%ebp)
	fwait
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%eax
	subl	$1,%edx
	sbbl	$0,%eax
	pushl	%eax
	pushl	%edx
	call	fpc_mod_int64
	addl	$1,%eax
	adcl	$0,%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj7647
	jmp	Lj7648
Lj7647:
	addl	$7,-4(%ebp)
Lj7648:
	movl	-4(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_DATE$$TDATETIME
SYSUTILS_DATE$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	leal	-22(%ebp),%eax
	call	SYSUTILS_GETLOCALTIME$TSYSTEMTIME
	movw	-18(%ebp),%cx
	movw	-20(%ebp),%dx
	movw	-22(%ebp),%ax
	call	SYSUTILS_DOENCODEDATE$WORD$WORD$WORD$$LONGINT
	movl	%eax,-28(%ebp)
	fildl	-28(%ebp)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TIME$$TDATETIME
SYSUTILS_TIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$22,%esp
	leal	-22(%ebp),%eax
	call	SYSUTILS_GETLOCALTIME$TSYSTEMTIME
	movzwl	-10(%ebp),%eax
	pushl	%eax
	movw	-12(%ebp),%cx
	movw	-14(%ebp),%dx
	movw	-16(%ebp),%ax
	call	SYSUTILS_DOENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_NOW$$TDATETIME
SYSUTILS_NOW$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$22,%esp
	leal	-22(%ebp),%eax
	call	SYSUTILS_GETLOCALTIME$TSYSTEMTIME
	leal	-22(%ebp),%eax
	call	SYSUTILS_SYSTEMTIMETODATETIME$TSYSTEMTIME$$TDATETIME
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_INCMONTH$TDATETIME$LONGINT$$TDATETIME
SYSUTILS_INCMONTH$TDATETIME$LONGINT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-18(%ebp),%ecx
	leal	-16(%ebp),%edx
	leal	-14(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	pushl	-4(%ebp)
	leal	-18(%ebp),%ecx
	leal	-16(%ebp),%edx
	leal	-14(%ebp),%eax
	call	SYSUTILS_INCAMONTH$WORD$WORD$WORD$LONGINT
	movw	-18(%ebp),%cx
	movw	-16(%ebp),%dx
	movw	-14(%ebp),%ax
	call	SYSUTILS_DOENCODEDATE$WORD$WORD$WORD$$LONGINT
	movl	%eax,-24(%ebp)
	fildl	-24(%ebp)
	subl	$8,%esp
	fstpl	(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_INCAMONTH$WORD$WORD$WORD$LONGINT
SYSUTILS_INCAMONTH$WORD$WORD$WORD$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	8(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj7715
	jmp	Lj7716
Lj7715:
	movl	$1,-20(%ebp)
	jmp	Lj7719
Lj7716:
	movl	$-1,-20(%ebp)
Lj7719:
	movl	8(%ebp),%ecx
	movl	$715827883,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$1,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	-4(%ebp),%eax
	addw	%dx,(%eax)
	movl	8(%ebp),%eax
	cltd
	movl	$12,%ecx
	idivl	%ecx
	movl	-8(%ebp),%eax
	movzwl	(%eax),%eax
	addl	%eax,%edx
	decl	%edx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$11,%eax
	jg	Lj7724
	jmp	Lj7726
Lj7726:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj7724
	jmp	Lj7725
Lj7724:
	movl	-20(%ebp),%eax
	imull	$12,%eax
	subl	%eax,-16(%ebp)
	movl	-4(%ebp),%eax
	movw	-20(%ebp),%dx
	addw	%dx,(%eax)
Lj7725:
	movl	-16(%ebp),%eax
	incl	%eax
	movl	-8(%ebp),%edx
	movw	%ax,(%edx)
	movl	-12(%ebp),%ebx
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
	movzbl	%al,%eax
	imull	$24,%eax
	movl	-8(%ebp),%edx
	movzwl	(%edx),%ecx
	movw	(%ebx),%dx
	cmpw	TC_SYSUTILS_MONTHDAYS-2(%eax,%ecx,2),%dx
	ja	Lj7729
	jmp	Lj7730
Lj7729:
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
	movzbl	%al,%eax
	imull	$24,%eax
	movl	-8(%ebp),%edx
	movzwl	(%edx),%edx
	movl	-12(%ebp),%ecx
	movw	TC_SYSUTILS_MONTHDAYS-2(%eax,%edx,2),%ax
	movw	%ax,(%ecx)
Lj7730:
	movl	-24(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN
SYSUTILS_ISLEAPYEAR$WORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movw	%ax,-4(%ebp)
	movzwl	-4(%ebp),%eax
	cltd
	movl	$4,%ecx
	idivl	%ecx
	testl	%edx,%edx
	je	Lj7741
	jmp	Lj7740
Lj7741:
	movzwl	-4(%ebp),%eax
	cltd
	movl	$100,%ecx
	idivl	%ecx
	testl	%edx,%edx
	jne	Lj7739
	jmp	Lj7742
Lj7742:
	movzwl	-4(%ebp),%eax
	cltd
	movl	$400,%ecx
	idivl	%ecx
	testl	%edx,%edx
	je	Lj7739
	jmp	Lj7740
Lj7739:
	movb	$1,-5(%ebp)
	jmp	Lj7743
Lj7740:
	movb	$0,-5(%ebp)
Lj7743:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_DATETOSTR$TDATETIME$$ANSISTRING
SYSUTILS_DATETOSTR$TDATETIME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%ebx,%eax
	movl	$_$SYSUTILS$_Ld88,%edx
	call	SYSUTILS_DATETIMETOSTRING$ANSISTRING$ANSISTRING$TDATETIME
	movl	-8(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_DATETOSTR$TDATETIME$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_DATETOSTR$TDATETIME$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	12(%eax),%edi
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%esi,%eax
	movl	%ebx,%ecx
	movl	%edi,%edx
	call	SYSUTILS_DATETIMETOSTRING$ANSISTRING$ANSISTRING$TDATETIME$TFORMATSETTINGS
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_TIMETOSTR$TDATETIME$$ANSISTRING
SYSUTILS_TIMETOSTR$TDATETIME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%ebx,%eax
	movl	$_$SYSUTILS$_Ld89,%edx
	call	SYSUTILS_DATETIMETOSTRING$ANSISTRING$ANSISTRING$TDATETIME
	movl	-8(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_TIMETOSTR$TDATETIME$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_TIMETOSTR$TDATETIME$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	movl	32(%eax),%edi
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%esi,%eax
	movl	%ebx,%ecx
	movl	%edi,%edx
	call	SYSUTILS_DATETIMETOSTRING$ANSISTRING$ANSISTRING$TDATETIME$TFORMATSETTINGS
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_DATETIMETOSTR$TDATETIME$$ANSISTRING
SYSUTILS_DATETIMETOSTR$TDATETIME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%ebx,%eax
	movl	$_$SYSUTILS$_Ld90,%edx
	call	SYSUTILS_DATETIMETOSTRING$ANSISTRING$ANSISTRING$TDATETIME
	movl	-8(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_DATETIMETOSTR$TDATETIME$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_DATETIMETOSTR$TDATETIME$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%esi
	movl	%esi,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%esi,%eax
	movl	$_$SYSUTILS$_Ld90,%edx
	movl	%ebx,%ecx
	call	SYSUTILS_DATETIMETOSTRING$ANSISTRING$ANSISTRING$TDATETIME$TFORMATSETTINGS
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%esi
	leave
	ret	$8

.text
	.balign 4,0x90
SYSUTILS_INTSTRTODATE$crcAF8CE8A7:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$648,%esp
	movl	%ebx,-648(%ebp)
	movl	%esi,-644(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-24(%ebp)
	movl	$0,-640(%ebp)
	leal	-96(%ebp),%ecx
	leal	-120(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj7802
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	fldz
	fstpl	-20(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj7809
	jmp	Lj7810
Lj7809:
	movl	%ebp,%eax
	movl	$0,%ecx
	movl	$_$SYSUTILS$_Ld91,%edx
	call	SYSUTILS_INTSTRTODATE$crcAF8CE8A7_FIXERRORMSG$ANSISTRING$ANSISTRING
	jmp	Lj7802
Lj7810:
	movb	$0,-83(%ebp)
	movb	8(%ebp),%al
	testb	%al,%al
	je	Lj7819
	jmp	Lj7820
Lj7819:
	movl	12(%ebp),%eax
	movb	5(%eax),%al
	movb	%al,8(%ebp)
Lj7820:
	leal	-24(%ebp),%edx
	movl	16(%ebp),%eax
	call	SYSUTILS_UPPERCASE$ANSISTRING$$ANSISTRING
	movb	$0,-45(%ebp)
	movb	$0,-44(%ebp)
	movb	$0,-43(%ebp)
	movb	$0,-46(%ebp)
	movl	$0,-40(%ebp)
	jmp	Lj7838
	.balign 4,0x90
Lj7837:
	incl	-40(%ebp)
	movl	-24(%ebp),%eax
	movl	-40(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$68,%al
	jb	Lj7841
	subb	$68,%al
	je	Lj7844
	subb	$9,%al
	je	Lj7843
	subb	$12,%al
	je	Lj7842
	jmp	Lj7841
Lj7842:
	movzbl	-45(%ebp),%eax
	testl	%eax,%eax
	je	Lj7845
	jmp	Lj7846
Lj7845:
	incb	-46(%ebp)
	movb	-46(%ebp),%al
	movb	%al,-45(%ebp)
Lj7846:
	jmp	Lj7840
Lj7843:
	movzbl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj7849
	jmp	Lj7850
Lj7849:
	incb	-46(%ebp)
	movb	-46(%ebp),%al
	movb	%al,-44(%ebp)
Lj7850:
	jmp	Lj7840
Lj7844:
	movzbl	-43(%ebp),%eax
	testl	%eax,%eax
	je	Lj7853
	jmp	Lj7854
Lj7853:
	incb	-46(%ebp)
	movb	-46(%ebp),%al
	movb	%al,-43(%ebp)
Lj7854:
	jmp	Lj7840
Lj7841:
Lj7840:
Lj7838:
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj7858
	movl	-4(%eax),%eax
Lj7858:
	cmpl	-40(%ebp),%eax
	jg	Lj7857
	jmp	Lj7839
Lj7857:
	movzbl	-46(%ebp),%eax
	cmpl	$3,%eax
	jl	Lj7837
	jmp	Lj7839
Lj7839:
	movl	$1,-40(%ebp)
	decl	-40(%ebp)
	.balign 4,0x90
Lj7861:
	incl	-40(%ebp)
	movl	-40(%ebp),%eax
	movl	$0,-68(%ebp,%eax,4)
	cmpl	$3,-40(%ebp)
	jl	Lj7861
	movb	$0,-51(%ebp)
	movl	$0,-36(%ebp)
	decl	-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	$0,-40(%ebp)
	cmpl	-40(%ebp),%ebx
	jl	Lj7869
	decl	-40(%ebp)
	.balign 4,0x90
Lj7870:
	incl	-40(%ebp)
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj7873
Lj7873:
	jc	Lj7871
	jmp	Lj7872
Lj7871:
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movzbl	(%edx,%eax,1),%eax
	shll	$8,%eax
	orl	$1,%eax
	movw	%ax,-636(%ebp)
	leal	-636(%ebp),%eax
	pushl	%eax
	leal	-51(%ebp),%ecx
	leal	-380(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_concat
	leal	-380(%ebp),%ecx
	leal	-51(%ebp),%eax
	movl	$4,%edx
	call	fpc_shortstr_to_shortstr
Lj7872:
	movb	8(%ebp),%al
	cmpb	$32,%al
	jne	Lj7890
	jmp	Lj7889
Lj7890:
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$32,%al
	je	Lj7888
	jmp	Lj7889
Lj7888:
	jmp	Lj7868
Lj7889:
	movl	-8(%ebp),%edx
	movl	-40(%ebp),%eax
	movb	(%edx,%eax,1),%al
	cmpb	8(%ebp),%al
	je	Lj7891
	jmp	Lj7893
Lj7893:
	movl	-40(%ebp),%eax
	cmpl	-12(%ebp),%eax
	je	Lj7894
	jmp	Lj7892
Lj7894:
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj7895
Lj7895:
	jc	Lj7891
	jmp	Lj7892
Lj7891:
	incl	-36(%ebp)
	movl	-36(%ebp),%eax
	cmpl	$3,%eax
	jg	Lj7896
	jmp	Lj7897
Lj7896:
	leal	-640(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-640(%ebp)
	leal	-640(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_pchar_to_ansistr
	movl	-640(%ebp),%ecx
	movl	%ebp,%eax
	movl	$_$SYSUTILS$_Ld91,%edx
	call	SYSUTILS_INTSTRTODATE$crcAF8CE8A7_FIXERRORMSG$ANSISTRING$ANSISTRING
	jmp	Lj7802
Lj7897:
	movzbl	-45(%ebp),%eax
	cmpl	-36(%ebp),%eax
	je	Lj7910
	jmp	Lj7909
Lj7910:
	movzbl	-51(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj7908
	jmp	Lj7909
Lj7908:
	movb	$1,-83(%ebp)
Lj7909:
	leal	-128(%ebp),%ecx
	leal	-51(%ebp),%edx
	movl	$4,%eax
	call	fpc_val_sint_shortstr
	movl	-36(%ebp),%edx
	movl	%eax,-68(%ebp,%edx,4)
	movw	-128(%ebp),%ax
	movw	%ax,-42(%ebp)
	movzwl	-42(%ebp),%eax
	testl	%eax,%eax
	jne	Lj7923
	jmp	Lj7924
Lj7923:
	leal	-640(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-640(%ebp)
	leal	-640(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_pchar_to_ansistr
	movl	-640(%ebp),%ecx
	movl	%ebp,%eax
	movl	$_$SYSUTILS$_Ld91,%edx
	call	SYSUTILS_INTSTRTODATE$crcAF8CE8A7_FIXERRORMSG$ANSISTRING$ANSISTRING
	jmp	Lj7802
Lj7924:
	movb	$0,-51(%ebp)
	jmp	Lj7937
Lj7892:
	movl	-8(%ebp),%eax
	movl	-40(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj7940
Lj7940:
	jnc	Lj7938
	jmp	Lj7939
Lj7938:
	leal	-640(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-640(%ebp)
	leal	-640(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_pchar_to_ansistr
	movl	-640(%ebp),%ecx
	movl	%ebp,%eax
	movl	$_$SYSUTILS$_Ld91,%edx
	call	SYSUTILS_INTSTRTODATE$crcAF8CE8A7_FIXERRORMSG$ANSISTRING$ANSISTRING
	jmp	Lj7802
Lj7939:
Lj7937:
Lj7868:
	cmpl	-40(%ebp),%ebx
	jg	Lj7870
Lj7869:
	movzbl	-46(%ebp),%eax
	cmpl	$3,%eax
	jl	Lj7953
	jmp	Lj7952
Lj7953:
	movzbl	-46(%ebp),%eax
	cmpl	-36(%ebp),%eax
	jl	Lj7951
	jmp	Lj7952
Lj7951:
	leal	-640(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-640(%ebp)
	leal	-640(%ebp),%edx
	movl	-8(%ebp),%eax
	call	fpc_pchar_to_ansistr
	movl	-640(%ebp),%ecx
	movl	%ebp,%eax
	movl	$_$SYSUTILS$_Ld91,%edx
	call	SYSUTILS_INTSTRTODATE$crcAF8CE8A7_FIXERRORMSG$ANSISTRING$ANSISTRING
	jmp	Lj7802
Lj7952:
	leal	-82(%ebp),%eax
	call	SYSUTILS_GETLOCALTIME$TSYSTEMTIME
	movw	-82(%ebp),%ax
	movw	%ax,-32(%ebp)
	movl	-36(%ebp),%eax
	cmpl	$3,%eax
	je	Lj7968
	jmp	Lj7969
Lj7968:
	movzbl	-45(%ebp),%eax
	movw	-68(%ebp,%eax,4),%ax
	movw	%ax,-30(%ebp)
	movzbl	-44(%ebp),%eax
	movw	-68(%ebp,%eax,4),%ax
	movw	%ax,-28(%ebp)
	movzbl	-43(%ebp),%eax
	movw	-68(%ebp,%eax,4),%ax
	movw	%ax,-26(%ebp)
	jmp	Lj7976
Lj7969:
	movw	-32(%ebp),%ax
	movw	%ax,-30(%ebp)
	movl	-36(%ebp),%eax
	cmpl	$2,%eax
	jl	Lj7979
	jmp	Lj7980
Lj7979:
	movw	-64(%ebp),%ax
	movw	%ax,-26(%ebp)
	movw	-80(%ebp),%ax
	movw	%ax,-28(%ebp)
	jmp	Lj7985
Lj7980:
	movb	-43(%ebp),%al
	cmpb	-44(%ebp),%al
	jb	Lj7986
	jmp	Lj7987
Lj7986:
	movw	-64(%ebp),%ax
	movw	%ax,-26(%ebp)
	movw	-60(%ebp),%ax
	movw	%ax,-28(%ebp)
	jmp	Lj7992
Lj7987:
	movw	-60(%ebp),%ax
	movw	%ax,-26(%ebp)
	movw	-64(%ebp),%ax
	movw	%ax,-28(%ebp)
Lj7992:
Lj7985:
Lj7976:
	jmp	Lj8000
Lj8000:
	movzwl	-30(%ebp),%eax
	cmpl	$100,%eax
	jl	Lj7999
	jmp	Lj7998
Lj7999:
	movb	-83(%ebp),%al
	testb	%al,%al
	je	Lj7997
	jmp	Lj7998
Lj7997:
	movzwl	-32(%ebp),%eax
	movl	12(%ebp),%edx
	movzwl	188(%edx),%edx
	subl	%edx,%eax
	movw	%ax,-32(%ebp)
	movzwl	-32(%ebp),%ecx
	movl	$1374389535,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$5,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	imull	$100,%edx
	addw	%dx,-30(%ebp)
	movl	12(%ebp),%eax
	movzwl	188(%eax),%eax
	cmpl	$0,%eax
	jg	Lj8005
	jmp	Lj8004
Lj8005:
	movw	-30(%ebp),%ax
	cmpw	-32(%ebp),%ax
	jb	Lj8003
	jmp	Lj8004
Lj8003:
	addw	$100,-30(%ebp)
Lj8004:
Lj7998:
	leal	-20(%ebp),%eax
	pushl	%eax
	movw	-26(%ebp),%cx
	movw	-28(%ebp),%dx
	movw	-30(%ebp),%ax
	call	SYSUTILS_TRYENCODEDATE$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	testb	%al,%al
	je	Lj8006
	jmp	Lj8007
Lj8006:
	movl	$_$SYSUTILS$_Ld93,%esi
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%esi,(%ebx)
Lj8007:
Lj7802:
	call	FPC_POPADDRSTACK
	leal	-640(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-640(%ebp)
	leal	-24(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-24(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj7803
	call	FPC_RERAISE
Lj7803:
	fldl	-20(%ebp)
	movl	-648(%ebp),%ebx
	movl	-644(%ebp),%esi
	leave
	ret	$12

.text
	.balign 4,0x90
SYSUTILS_INTSTRTODATE$crcAF8CE8A7_FIXERRORMSG$ANSISTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8024
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$11,-64(%ebp)
	leal	-64(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	movl	-56(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%eax
	movl	-4(%eax),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-56(%ebp),%eax
	movl	%eax,(%ebx)
Lj8024:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8025
	call	FPC_RERAISE
Lj8025:
	movl	-68(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTODATE$PCHAR$LONGINT$ANSISTRING$CHAR$$TDATETIME
SYSUTILS_STRTODATE$PCHAR$LONGINT$ANSISTRING$CHAR$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-24(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8039
	pushl	-12(%ebp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movzbl	8(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-24(%ebp),%eax
	movl	%ebx,%ecx
	movl	%esi,%edx
	call	SYSUTILS_INTSTRTODATE$crcAF8CE8A7
	fstpl	-20(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8056
	jmp	Lj8057
Lj8056:
	movl	-24(%ebp),%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La17:
	movl	%ebp,%ecx
	movl	$La17,%edx
	call	FPC_RAISEEXCEPTION
Lj8057:
Lj8039:
	call	FPC_POPADDRSTACK
	leal	-24(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-24(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8040
	call	FPC_RERAISE
Lj8040:
	fldl	-20(%ebp)
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTODATE$ANSISTRING$TFORMATSETTINGS$$TDATETIME
SYSUTILS_STRTODATE$ANSISTRING$TFORMATSETTINGS$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$260,%esp
	movl	%ebx,-260(%ebp)
	movl	%esi,-256(%ebp)
	movl	%edi,-252(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%esi
	leal	-212(%ebp),%edi
	cld
	movl	$48,%ecx
	rep
	movsl
	movl	$INIT_SYSUTILS_TFORMATSETTINGS,%edx
	leal	-212(%ebp),%eax
	call	FPC_ADDREF
	movl	$0,-20(%ebp)
	leal	-224(%ebp),%ecx
	leal	-248(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8072
	pushl	-200(%ebp)
	leal	-212(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%esi
	testl	%esi,%esi
	je	Lj8087
	movl	-4(%esi),%esi
Lj8087:
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-20(%ebp),%eax
	movl	%ebx,%edx
	movl	%esi,%ecx
	call	SYSUTILS_INTSTRTODATE$crcAF8CE8A7
	fstpl	-16(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8090
	jmp	Lj8091
Lj8090:
	movl	-20(%ebp),%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La18:
	movl	%ebp,%ecx
	movl	$La18,%edx
	call	FPC_RAISEEXCEPTION
Lj8091:
Lj8072:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	movl	$INIT_SYSUTILS_TFORMATSETTINGS,%edx
	leal	-212(%ebp),%eax
	call	FPC_DECREF
	popl	%eax
	testl	%eax,%eax
	je	Lj8073
	call	FPC_RERAISE
Lj8073:
	fldl	-16(%ebp)
	movl	-260(%ebp),%ebx
	movl	-256(%ebp),%esi
	movl	-252(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTODATE$SHORTSTRING$ANSISTRING$CHAR$$TDATETIME
SYSUTILS_STRTODATE$SHORTSTRING$ANSISTRING$CHAR$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movzbl	-12(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	movl	-4(%ebp),%edx
	movzbl	(%edx),%edx
	movl	-8(%ebp),%ecx
	call	SYSUTILS_STRTODATE$PCHAR$LONGINT$ANSISTRING$CHAR$$TDATETIME
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTODATE$ANSISTRING$ANSISTRING$CHAR$$TDATETIME
SYSUTILS_STRTODATE$ANSISTRING$ANSISTRING$CHAR$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movzbl	-12(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj8126
	movl	-4(%edx),%edx
Lj8126:
	movl	-8(%ebp),%ecx
	call	SYSUTILS_STRTODATE$PCHAR$LONGINT$ANSISTRING$CHAR$$TDATETIME
	fstpl	-20(%ebp)
	fldl	-20(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTODATE$SHORTSTRING$CHAR$$TDATETIME
SYSUTILS_STRTODATE$SHORTSTRING$CHAR$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movzbl	-8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	movl	-4(%ebp),%edx
	movzbl	(%edx),%edx
	movl	TC_SYSUTILS_DEFAULTFORMATSETTINGS+12,%ecx
	call	SYSUTILS_STRTODATE$PCHAR$LONGINT$ANSISTRING$CHAR$$TDATETIME
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTODATE$SHORTSTRING$$TDATETIME
SYSUTILS_STRTODATE$SHORTSTRING$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	pushl	$0
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	movl	-4(%ebp),%edx
	movzbl	(%edx),%edx
	movl	TC_SYSUTILS_DEFAULTFORMATSETTINGS+12,%ecx
	call	SYSUTILS_STRTODATE$PCHAR$LONGINT$ANSISTRING$CHAR$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTODATE$ANSISTRING$CHAR$$TDATETIME
SYSUTILS_STRTODATE$ANSISTRING$CHAR$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movzbl	-8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj8163
	movl	-4(%edx),%edx
Lj8163:
	movl	TC_SYSUTILS_DEFAULTFORMATSETTINGS+12,%ecx
	call	SYSUTILS_STRTODATE$PCHAR$LONGINT$ANSISTRING$CHAR$$TDATETIME
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTODATE$ANSISTRING$$TDATETIME
SYSUTILS_STRTODATE$ANSISTRING$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	pushl	$0
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj8176
	movl	-4(%edx),%edx
Lj8176:
	movl	TC_SYSUTILS_DEFAULTFORMATSETTINGS+12,%ecx
	call	SYSUTILS_STRTODATE$PCHAR$LONGINT$ANSISTRING$CHAR$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_INTSTRTOTIME$ANSISTRING$PCHAR$LONGINT$TFORMATSETTINGS$CHAR$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-344(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-76(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8185
	movb	8(%ebp),%al
	testb	%al,%al
	je	Lj8188
	jmp	Lj8189
Lj8188:
	movl	12(%ebp),%eax
	movb	6(%eax),%al
	movb	%al,8(%ebp)
Lj8189:
	movl	$0,-24(%ebp)
	leal	-24(%ebp),%ecx
	leal	-32(%ebp),%edx
	movl	%ebp,%eax
	call	SYSUTILS_INTSTRTOTIME$crc318DCF0C_SPLITELEMENTS$TTIMEVALUES$LONGINT$$BOOLEAN
	testb	%al,%al
	je	Lj8194
	jmp	Lj8195
Lj8194:
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	pushl	%eax
	leal	-340(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	%ebp,%eax
	call	SYSUTILS_INTSTRTOTIME$crc318DCF0C_STRPAS$PCHAR$LONGINT$$SHORTSTRING
	leal	-340(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	$4,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	RESSTR_SYSCONST_SERRINVALIDTIMEFORMAT+4,%eax
	movl	$0,%ecx
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	movl	-76(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-76(%ebp),%eax
	movl	%eax,(%ebx)
	jmp	Lj8185
Lj8195:
	movl	-24(%ebp),%eax
	cmpl	$2,%eax
	je	Lj8222
	jmp	Lj8221
Lj8222:
	movzwl	-32(%ebp),%eax
	cmpl	$12,%eax
	jne	Lj8220
	jmp	Lj8221
Lj8220:
	addw	$12,-32(%ebp)
	jmp	Lj8223
Lj8221:
	movl	-24(%ebp),%eax
	cmpl	$1,%eax
	je	Lj8226
	jmp	Lj8225
Lj8226:
	movzwl	-32(%ebp),%eax
	cmpl	$12,%eax
	je	Lj8224
	jmp	Lj8225
Lj8224:
	movw	$0,-32(%ebp)
Lj8225:
Lj8223:
	movzwl	-26(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	pushl	%eax
	movw	-28(%ebp),%cx
	movw	-30(%ebp),%dx
	movw	-32(%ebp),%ax
	call	SYSUTILS_TRYENCODETIME$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
	testb	%al,%al
	je	Lj8229
	jmp	Lj8230
Lj8229:
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	pushl	%eax
	leal	-340(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	%ebp,%eax
	call	SYSUTILS_INTSTRTOTIME$crc318DCF0C_STRPAS$PCHAR$LONGINT$$SHORTSTRING
	leal	-340(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	$4,-84(%ebp)
	leal	-84(%ebp),%edx
	movl	RESSTR_SYSCONST_SERRINVALIDTIMEFORMAT+4,%eax
	movl	$0,%ecx
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	movl	-76(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-76(%ebp),%eax
	movl	%eax,(%ebx)
Lj8230:
Lj8185:
	call	FPC_POPADDRSTACK
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8186
	call	FPC_RERAISE
Lj8186:
	fldl	-20(%ebp)
	movl	-344(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
SYSUTILS_INTSTRTOTIME$crc318DCF0C_SPLITELEMENTS$TTIMEVALUES$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$620,%esp
	movl	%ebx,-620(%ebp)
	movl	%esi,-616(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-608(%ebp)
	movl	$0,-604(%ebp)
	leal	-316(%ebp),%ecx
	leal	-340(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8259
	movb	$0,-13(%ebp)
	movl	-8(%ebp),%eax
	movl	$0,(%eax)
	movb	$0,-44(%ebp)
	movl	$0,-36(%ebp)
	movl	-4(%ebp),%eax
	movb	$0,%cl
	movl	$8,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	$0,-20(%ebp)
	jmp	Lj8279
	.balign 4,0x90
Lj8278:
	incl	-20(%ebp)
Lj8279:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj8281
	jmp	Lj8280
Lj8281:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$32,%al
	je	Lj8278
	jmp	Lj8280
Lj8280:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	decl	%eax
	cmpl	-20(%ebp),%eax
	jl	Lj8284
	jmp	Lj8287
Lj8287:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%ecx
	movb	(%eax,%edx,1),%al
	cmpb	8(%ecx),%al
	je	Lj8284
	jmp	Lj8286
Lj8286:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movb	(%edx,%ecx,1),%dl
	cmpb	3(%eax),%dl
	je	Lj8284
	jmp	Lj8285
Lj8284:
	jmp	Lj8259
Lj8285:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-20(%ebp),%edx
	movzbl	(%eax,%edx,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj8290
Lj8290:
	setcb	-43(%ebp)
	jmp	Lj8292
	.balign 4,0x90
Lj8291:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-20(%ebp),%eax
	movb	(%edx,%eax,1),%al
	movb	%al,-301(%ebp)
	movzbl	-301(%ebp),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj8298
Lj8298:
	jc	Lj8296
	jmp	Lj8297
Lj8296:
	movb	-43(%ebp),%al
	testb	%al,%al
	je	Lj8299
	jmp	Lj8301
Lj8301:
	movl	-36(%ebp),%eax
	cmpl	$3,%eax
	jg	Lj8299
	jmp	Lj8300
Lj8299:
	jmp	Lj8259
Lj8300:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	movb	-301(%ebp),%al
	cmpb	$48,%al
	jne	Lj8304
	jmp	Lj8305
Lj8304:
	movl	-24(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj8308
Lj8305:
	movl	$-1,-40(%ebp)
Lj8308:
	jmp	Lj8312
	.balign 4,0x90
Lj8311:
	movl	-40(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj8316
	jmp	Lj8315
Lj8316:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$48,%al
	jne	Lj8314
	jmp	Lj8315
Lj8314:
	movl	-20(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj8315:
	incl	-20(%ebp)
Lj8312:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	decl	%eax
	cmpl	-20(%ebp),%eax
	jg	Lj8319
	jmp	Lj8313
Lj8319:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj8320
Lj8320:
	jc	Lj8311
	jmp	Lj8313
Lj8313:
	movl	-40(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj8321
	jmp	Lj8322
Lj8321:
	movl	-20(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj8322:
	movl	-20(%ebp),%edx
	incl	%edx
	movl	-40(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$2,%eax
	jle	Lj8327
	jmp	Lj8329
Lj8329:
	movl	-28(%ebp),%eax
	cmpl	$3,%eax
	jle	Lj8330
	jmp	Lj8328
Lj8330:
	movl	-36(%ebp),%eax
	cmpl	$3,%eax
	je	Lj8327
	jmp	Lj8328
Lj8327:
	leal	-600(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-40(%ebp),%eax
	addl	%eax,%edx
	movl	-28(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	SYSUTILS_INTSTRTOTIME$crc318DCF0C_STRPAS$PCHAR$LONGINT$$SHORTSTRING
	leal	-600(%ebp),%eax
	leal	-32(%ebp),%edx
	call	fpc_val_uint_shortstr
	movw	%ax,-42(%ebp)
	movl	-4(%ebp),%ecx
	movl	-36(%ebp),%eax
	movw	-42(%ebp),%dx
	movw	%dx,(%ecx,%eax,2)
	incl	-36(%ebp)
	movb	$0,-43(%ebp)
	jmp	Lj8349
Lj8328:
	jmp	Lj8259
Lj8349:
	jmp	Lj8350
Lj8297:
	movb	-301(%ebp),%al
	cmpb	$32,%al
	je	Lj8351
	jmp	Lj8352
Lj8351:
	jmp	Lj8353
Lj8352:
	movl	-12(%ebp),%eax
	movb	8(%eax),%al
	cmpb	-301(%ebp),%al
	je	Lj8354
	jmp	Lj8355
Lj8354:
	cmpb	$0,-43(%ebp)
	jne	Lj8356
	jmp	Lj8358
Lj8358:
	movl	-36(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj8356
	jmp	Lj8357
Lj8356:
	jmp	Lj8259
Lj8357:
	movb	$1,-43(%ebp)
	movb	$0,-44(%ebp)
	jmp	Lj8363
Lj8355:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movb	3(%eax),%al
	cmpb	-301(%ebp),%al
	je	Lj8364
	jmp	Lj8365
Lj8364:
	cmpb	$0,-43(%ebp)
	jne	Lj8366
	jmp	Lj8369
Lj8369:
	cmpb	$0,-44(%ebp)
	jne	Lj8366
	jmp	Lj8368
Lj8368:
	movl	-36(%ebp),%eax
	cmpl	$3,%eax
	jne	Lj8366
	jmp	Lj8367
Lj8366:
	jmp	Lj8259
Lj8367:
	movb	$1,-43(%ebp)
	movb	$1,-44(%ebp)
	jmp	Lj8374
Lj8365:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj8375
	jmp	Lj8377
Lj8377:
	cmpb	$0,-43(%ebp)
	jne	Lj8375
	jmp	Lj8376
Lj8375:
	jmp	Lj8259
Lj8376:
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj8381
	.balign 4,0x90
Lj8380:
	incl	-20(%ebp)
Lj8381:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	decl	%eax
	cmpl	-20(%ebp),%eax
	jg	Lj8384
	jmp	Lj8382
Lj8384:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%esi
	movl	-20(%ebp),%ebx
	incl	%ebx
	pushl	$32
	pushl	$32
	movl	$_$SYSUTILS$_Ld94,%eax
	movl	-12(%ebp),%edx
	movzbl	8(%edx),%ecx
	leal	-408(%ebp),%edx
	call	fpc_varset_set
	leal	-408(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	12(%edx),%edx
	movzbl	3(%edx),%ecx
	leal	-376(%ebp),%edx
	call	fpc_varset_set
	movzbl	(%esi,%ebx,1),%eax
	btl	%eax,-376(%ebp)
	jnc	Lj8383
	jmp	Lj8382
Lj8383:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-20(%ebp),%eax
	incl	%eax
	movzbl	(%edx,%eax,1),%eax
	subl	$48,%eax
	cmpl	$10,%eax
	jb	Lj8401
Lj8401:
	jnc	Lj8380
	jmp	Lj8382
Lj8382:
	movl	-20(%ebp),%eax
	incl	%eax
	movl	-24(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
	leal	-600(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-24(%ebp),%eax
	addl	%eax,%edx
	movl	-28(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	SYSUTILS_INTSTRTOTIME$crc318DCF0C_STRPAS$PCHAR$LONGINT$$SHORTSTRING
	leal	-600(%ebp),%ecx
	leal	-300(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	leal	20(%eax),%eax
	movl	%eax,-348(%ebp)
	leal	-604(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-604(%ebp)
	leal	-608(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-608(%ebp)
	leal	-608(%ebp),%edx
	leal	-300(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-608(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-604(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-608(%ebp),%eax
	movl	%eax,-604(%ebp)
	movl	-348(%ebp),%eax
	movl	(%eax),%edx
	movl	-604(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+44,%ecx
	call	*%ecx
	testl	%eax,%eax
	je	Lj8418
	jmp	Lj8419
Lj8418:
	movl	-8(%ebp),%eax
	movl	$1,(%eax)
	jmp	Lj8436
Lj8419:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	leal	24(%eax),%eax
	movl	%eax,-612(%ebp)
	leal	-608(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-608(%ebp)
	leal	-604(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-604(%ebp)
	leal	-604(%ebp),%edx
	leal	-300(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-604(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-608(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-604(%ebp),%eax
	movl	%eax,-608(%ebp)
	movl	-612(%ebp),%eax
	movl	(%eax),%edx
	movl	-608(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+44,%ecx
	call	*%ecx
	testl	%eax,%eax
	je	Lj8437
	jmp	Lj8438
Lj8437:
	movl	-8(%ebp),%eax
	movl	$2,(%eax)
	jmp	Lj8455
Lj8438:
	leal	-608(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-608(%ebp)
	leal	-608(%ebp),%edx
	leal	-300(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-608(%ebp),%eax
	movl	$_$SYSUTILS$_Ld95,%edx
	call	SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
	testl	%eax,%eax
	je	Lj8456
	jmp	Lj8457
Lj8456:
	movl	-8(%ebp),%eax
	movl	$1,(%eax)
	jmp	Lj8468
Lj8457:
	leal	-608(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-608(%ebp)
	leal	-608(%ebp),%edx
	leal	-300(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-608(%ebp),%eax
	movl	$_$SYSUTILS$_Ld96,%edx
	call	SYSUTILS_COMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT
	testl	%eax,%eax
	je	Lj8469
	jmp	Lj8470
Lj8469:
	movl	-8(%ebp),%eax
	movl	$2,(%eax)
	jmp	Lj8481
Lj8470:
	jmp	Lj8259
Lj8481:
Lj8468:
Lj8455:
Lj8436:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj8482
	jmp	Lj8483
Lj8482:
	movb	$1,-43(%ebp)
	jmp	Lj8486
Lj8483:
	movl	$4,-36(%ebp)
	movb	$0,-43(%ebp)
Lj8486:
Lj8374:
Lj8363:
Lj8353:
Lj8350:
	incl	-20(%ebp)
Lj8292:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj8291
	jmp	Lj8293
Lj8293:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj8491
	jmp	Lj8494
Lj8494:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj8495
	jmp	Lj8493
Lj8495:
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	cmpl	$12,%eax
	jg	Lj8491
	jmp	Lj8496
Lj8496:
	movl	-4(%ebp),%eax
	movzwl	(%eax),%eax
	testl	%eax,%eax
	je	Lj8491
	jmp	Lj8493
Lj8493:
	cmpb	$0,-43(%ebp)
	jne	Lj8491
	jmp	Lj8492
Lj8491:
	jmp	Lj8259
Lj8492:
	movb	$1,-13(%ebp)
Lj8259:
	call	FPC_POPADDRSTACK
	leal	-608(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-608(%ebp)
	leal	-604(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-604(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8260
	call	FPC_RERAISE
Lj8260:
	movb	-13(%ebp),%al
	movl	-620(%ebp),%ebx
	movl	-616(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_INTSTRTOTIME$crc318DCF0C_STRPAS$PCHAR$LONGINT$$SHORTSTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$255,%eax
	jg	Lj8499
	jmp	Lj8500
Lj8499:
	movl	$255,-8(%ebp)
Lj8500:
	movl	-8(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%ecx
	movl	8(%ebp),%edx
	leal	1(%edx),%edx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOTIME$PCHAR$LONGINT$CHAR$$TDATETIME
SYSUTILS_STRTOTIME$PCHAR$LONGINT$CHAR$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%esi,-68(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$0,-24(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8517
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movzbl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leal	-24(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-24(%ebp),%eax
	movl	%ebx,%ecx
	movl	%esi,%edx
	call	SYSUTILS_INTSTRTOTIME$ANSISTRING$PCHAR$LONGINT$TFORMATSETTINGS$CHAR$$TDATETIME
	fstpl	-20(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8532
	jmp	Lj8533
Lj8532:
	movl	-24(%ebp),%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La19:
	movl	%ebp,%ecx
	movl	$La19,%edx
	call	FPC_RAISEEXCEPTION
Lj8533:
Lj8517:
	call	FPC_POPADDRSTACK
	leal	-24(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-24(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8518
	call	FPC_RERAISE
Lj8518:
	fldl	-20(%ebp)
	movl	-72(%ebp),%ebx
	movl	-68(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOTIME$ANSISTRING$TFORMATSETTINGS$$TDATETIME
SYSUTILS_STRTOTIME$ANSISTRING$TFORMATSETTINGS$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$260,%esp
	movl	%ebx,-260(%ebp)
	movl	%esi,-256(%ebp)
	movl	%edi,-252(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%esi
	leal	-212(%ebp),%edi
	cld
	movl	$48,%ecx
	rep
	movsl
	movl	$INIT_SYSUTILS_TFORMATSETTINGS,%edx
	leal	-212(%ebp),%eax
	call	FPC_ADDREF
	movl	$0,-20(%ebp)
	leal	-224(%ebp),%ecx
	leal	-248(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8548
	leal	-212(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%esi
	testl	%esi,%esi
	je	Lj8561
	movl	-4(%esi),%esi
Lj8561:
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-20(%ebp),%eax
	movl	%ebx,%edx
	movl	%esi,%ecx
	call	SYSUTILS_INTSTRTOTIME$ANSISTRING$PCHAR$LONGINT$TFORMATSETTINGS$CHAR$$TDATETIME
	fstpl	-16(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8564
	jmp	Lj8565
Lj8564:
	movl	-20(%ebp),%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La20:
	movl	%ebp,%ecx
	movl	$La20,%edx
	call	FPC_RAISEEXCEPTION
Lj8565:
Lj8548:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	movl	$INIT_SYSUTILS_TFORMATSETTINGS,%edx
	leal	-212(%ebp),%eax
	call	FPC_DECREF
	popl	%eax
	testl	%eax,%eax
	je	Lj8549
	call	FPC_RERAISE
Lj8549:
	fldl	-16(%ebp)
	movl	-260(%ebp),%ebx
	movl	-256(%ebp),%esi
	movl	-252(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOTIME$SHORTSTRING$CHAR$$TDATETIME
SYSUTILS_STRTOTIME$SHORTSTRING$CHAR$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	movl	-4(%ebp),%edx
	movzbl	(%edx),%edx
	movb	-8(%ebp),%cl
	call	SYSUTILS_STRTOTIME$PCHAR$LONGINT$CHAR$$TDATETIME
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOTIME$ANSISTRING$CHAR$$TDATETIME
SYSUTILS_STRTOTIME$ANSISTRING$CHAR$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj8596
	movl	-4(%edx),%edx
Lj8596:
	movb	-8(%ebp),%cl
	call	SYSUTILS_STRTOTIME$PCHAR$LONGINT$CHAR$$TDATETIME
	fstpl	-16(%ebp)
	fldl	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOTIME$SHORTSTRING$$TDATETIME
SYSUTILS_STRTOTIME$SHORTSTRING$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	1(%eax),%eax
	movl	-4(%ebp),%edx
	movzbl	(%edx),%edx
	movb	$0,%cl
	call	SYSUTILS_STRTOTIME$PCHAR$LONGINT$CHAR$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOTIME$ANSISTRING$$TDATETIME
SYSUTILS_STRTOTIME$ANSISTRING$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	je	Lj8617
	movl	-4(%edx),%edx
Lj8617:
	movb	$0,%cl
	call	SYSUTILS_STRTOTIME$PCHAR$LONGINT$CHAR$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTODATETIME$ANSISTRING$$TDATETIME
SYSUTILS_STRTODATETIME$ANSISTRING$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$80,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-68(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8622
	movl	-4(%ebp),%edx
	movb	TC_SYSUTILS_DEFAULTFORMATSETTINGS+6,%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj8631
	jmp	Lj8632
Lj8631:
	jmp	Lj8634
	.balign 4,0x90
Lj8633:
	decl	-16(%ebp)
Lj8634:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj8636
	jmp	Lj8635
Lj8636:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	-1(%edx,%eax,1),%al
	cmpb	$32,%al
	jne	Lj8633
	jmp	Lj8635
Lj8635:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj8637
	jmp	Lj8638
Lj8637:
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-72(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-72(%ebp),%eax
	movl	%eax,-68(%ebp)
	pushl	$0
	movl	-68(%ebp),%eax
	movl	TC_SYSUTILS_DEFAULTFORMATSETTINGS+12,%ecx
	movl	-68(%ebp),%edx
	testl	%edx,%edx
	je	Lj8663
	movl	-4(%edx),%edx
Lj8663:
	call	SYSUTILS_STRTODATE$PCHAR$LONGINT$ANSISTRING$CHAR$$TDATETIME
	fstpl	-64(%ebp)
	subl	$8,%esp
	movl	-64(%ebp),%eax
	movl	%eax,(%esp)
	movl	-60(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	leal	-68(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj8672
	movl	-4(%ecx),%ecx
Lj8672:
	movl	-16(%ebp),%eax
	subl	%eax,%ecx
	movl	-16(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_copy
	movl	-68(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-68(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	-72(%ebp),%eax
	movl	-72(%ebp),%edx
	testl	%edx,%edx
	je	Lj8683
	movl	-4(%edx),%edx
Lj8683:
	movb	$0,%cl
	call	SYSUTILS_STRTOTIME$PCHAR$LONGINT$CHAR$$TDATETIME
	fstpl	-80(%ebp)
	subl	$8,%esp
	movl	-80(%ebp),%eax
	movl	%eax,(%esp)
	movl	-76(%ebp),%eax
	movl	%eax,4(%esp)
	call	SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
	fstpl	-12(%ebp)
	jmp	Lj8686
Lj8638:
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	-72(%ebp),%eax
	movl	-72(%ebp),%edx
	testl	%edx,%edx
	je	Lj8695
	movl	-4(%edx),%edx
Lj8695:
	movb	$0,%cl
	call	SYSUTILS_STRTOTIME$PCHAR$LONGINT$CHAR$$TDATETIME
	fstpl	-12(%ebp)
Lj8686:
	jmp	Lj8698
Lj8632:
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,-72(%ebp)
	pushl	$0
	movl	-72(%ebp),%eax
	movl	TC_SYSUTILS_DEFAULTFORMATSETTINGS+12,%ecx
	movl	-72(%ebp),%edx
	testl	%edx,%edx
	je	Lj8711
	movl	-4(%edx),%edx
Lj8711:
	call	SYSUTILS_STRTODATE$PCHAR$LONGINT$ANSISTRING$CHAR$$TDATETIME
	fstpl	-12(%ebp)
Lj8698:
Lj8622:
	call	FPC_POPADDRSTACK
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8623
	call	FPC_RERAISE
Lj8623:
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTODATETIME$ANSISTRING$TFORMATSETTINGS$$TDATETIME
SYSUTILS_STRTODATETIME$ANSISTRING$TFORMATSETTINGS$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$76,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-76(%ebp)
	movl	$0,-72(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8714
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	6(%eax),%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj8723
	jmp	Lj8724
Lj8723:
	jmp	Lj8726
	.balign 4,0x90
Lj8725:
	decl	-20(%ebp)
Lj8726:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj8728
	jmp	Lj8727
Lj8728:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$32,%al
	jne	Lj8725
	jmp	Lj8727
Lj8727:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj8729
	jmp	Lj8730
Lj8729:
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	pushl	%eax
	movl	-20(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-76(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-76(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	-8(%ebp),%eax
	movzbl	5(%eax),%eax
	pushl	%eax
	movl	-72(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	12(%edx),%ecx
	movl	-72(%ebp),%edx
	testl	%edx,%edx
	je	Lj8755
	movl	-4(%edx),%edx
Lj8755:
	call	SYSUTILS_STRTODATE$PCHAR$LONGINT$ANSISTRING$CHAR$$TDATETIME
	fstpl	-68(%ebp)
	subl	$8,%esp
	movl	-68(%ebp),%eax
	movl	%eax,(%esp)
	movl	-64(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj8764
	movl	-4(%ecx),%ecx
Lj8764:
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	movl	-20(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_copy
	movl	-76(%ebp),%eax
	movl	-8(%ebp),%edx
	call	SYSUTILS_STRTOTIME$ANSISTRING$TFORMATSETTINGS$$TDATETIME
	subl	$8,%esp
	fstpl	(%esp)
	call	SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
	fstpl	-16(%ebp)
	jmp	Lj8771
Lj8730:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRTOTIME$ANSISTRING$TFORMATSETTINGS$$TDATETIME
	fstpl	-16(%ebp)
Lj8771:
	jmp	Lj8778
Lj8724:
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	-8(%ebp),%eax
	movzbl	5(%eax),%eax
	pushl	%eax
	movl	-76(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	12(%edx),%ecx
	movl	-76(%ebp),%edx
	testl	%edx,%edx
	je	Lj8791
	movl	-4(%edx),%edx
Lj8791:
	call	SYSUTILS_STRTODATE$PCHAR$LONGINT$ANSISTRING$CHAR$$TDATETIME
	fstpl	-16(%ebp)
Lj8778:
Lj8714:
	call	FPC_POPADDRSTACK
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8715
	call	FPC_RERAISE
Lj8715:
	fldl	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTODATETIME$SHORTSTRING$TFORMATSETTINGS$$TDATETIME
SYSUTILS_STRTODATETIME$SHORTSTRING$TFORMATSETTINGS$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$796,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movb	6(%eax),%al
	call	SYSTEM_POS$CHAR$SHORTSTRING$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj8800
	jmp	Lj8801
Lj8800:
	jmp	Lj8803
	.balign 4,0x90
Lj8802:
	decl	-20(%ebp)
Lj8803:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj8805
	jmp	Lj8804
Lj8805:
	movl	-4(%ebp),%eax
	movzbl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	cmpb	$32,%al
	jne	Lj8802
	jmp	Lj8804
Lj8804:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj8806
	jmp	Lj8807
Lj8806:
	leal	-540(%ebp),%eax
	pushl	%eax
	movl	-20(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_shortstr_copy
	leal	-540(%ebp),%ecx
	leal	-284(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	-8(%ebp),%eax
	movzbl	5(%eax),%eax
	pushl	%eax
	leal	-283(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	12(%edx),%ecx
	movzbl	-284(%ebp),%edx
	call	SYSUTILS_STRTODATE$PCHAR$LONGINT$ANSISTRING$CHAR$$TDATETIME
	fstpl	-28(%ebp)
	subl	$8,%esp
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-796(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	movl	-20(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	fpc_shortstr_copy
	leal	-796(%ebp),%ecx
	leal	-292(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	leal	-291(%ebp),%eax
	movl	-8(%ebp),%edx
	movb	6(%edx),%cl
	movzbl	-292(%ebp),%edx
	call	SYSUTILS_STRTOTIME$PCHAR$LONGINT$CHAR$$TDATETIME
	fstpl	-36(%ebp)
	subl	$8,%esp
	movl	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,4(%esp)
	call	SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
	fstpl	-16(%ebp)
	jmp	Lj8860
Lj8807:
	movl	-4(%ebp),%ecx
	leal	-276(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	leal	-275(%ebp),%eax
	movl	-8(%ebp),%edx
	movb	6(%edx),%cl
	movzbl	-276(%ebp),%edx
	call	SYSUTILS_STRTOTIME$PCHAR$LONGINT$CHAR$$TDATETIME
	fstpl	-16(%ebp)
Lj8860:
	jmp	Lj8875
Lj8801:
	movl	-4(%ebp),%ecx
	leal	-276(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_to_shortstr
	movl	-8(%ebp),%eax
	movzbl	5(%eax),%eax
	pushl	%eax
	leal	-275(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	12(%edx),%ecx
	movzbl	-276(%ebp),%edx
	call	SYSUTILS_STRTODATE$PCHAR$LONGINT$ANSISTRING$CHAR$$TDATETIME
	fstpl	-16(%ebp)
Lj8875:
	fldl	-16(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FORMATDATETIME$ANSISTRING$TDATETIME$$ANSISTRING
SYSUTILS_FORMATDATETIME$ANSISTRING$TDATETIME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%edi
	movl	-4(%ebp),%esi
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%ebx,%eax
	movl	%edi,%ecx
	movl	%esi,%edx
	call	SYSUTILS_DATETIMETOSTRING$ANSISTRING$ANSISTRING$TDATETIME$TFORMATSETTINGS
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_FORMATDATETIME$ANSISTRING$TDATETIME$TFORMATSETTINGS$$ANSISTRING
SYSUTILS_FORMATDATETIME$ANSISTRING$TDATETIME$TFORMATSETTINGS$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%edi
	movl	-12(%ebp),%esi
	movl	%esi,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%esi,%eax
	movl	%ebx,%ecx
	movl	%edi,%edx
	call	SYSUTILS_DATETIMETOSTRING$ANSISTRING$ANSISTRING$TDATETIME$TFORMATSETTINGS
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	movl	-16(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_DATETIMETOSTRING$ANSISTRING$ANSISTRING$TDATETIME
SYSUTILS_DATETIMETOSTRING$ANSISTRING$ANSISTRING$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%edi,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%edi
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%ebx,%eax
	movl	%edi,%ecx
	movl	%esi,%edx
	call	SYSUTILS_DATETIMETOSTRING$ANSISTRING$ANSISTRING$TDATETIME$TFORMATSETTINGS
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	movl	-12(%ebp),%edi
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_DATETIMETOSTRING$ANSISTRING$ANSISTRING$TDATETIME$TFORMATSETTINGS
SYSUTILS_DATETIMETOSTRING$ANSISTRING$ANSISTRING$TDATETIME$TFORMATSETTINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$348,%esp
	movl	%ebx,-348(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	$0,-344(%ebp)
	leal	-312(%ebp),%ecx
	leal	-336(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj8932
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-284(%ebp),%eax
	pushl	%eax
	leal	-282(%ebp),%ecx
	leal	-280(%ebp),%edx
	leal	-278(%ebp),%eax
	call	SYSUTILS_DECODEDATEFULLY$TDATETIME$WORD$WORD$WORD$WORD$$BOOLEAN
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-292(%ebp),%eax
	pushl	%eax
	leal	-290(%ebp),%ecx
	leal	-288(%ebp),%edx
	leal	-286(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	movl	$0,-16(%ebp)
	leal	-272(%ebp),%eax
	movl	%eax,-276(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8959
	jmp	Lj8960
Lj8959:
	pushl	$0
	movl	-8(%ebp),%edx
	movl	%ebp,%eax
	movl	$0,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREFORMAT$ANSISTRING$LONGINT$BOOLEAN
	jmp	Lj8969
Lj8960:
	pushl	$0
	movl	%ebp,%eax
	movl	$0,%ecx
	movl	$_$SYSUTILS$_Ld97,%edx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREFORMAT$ANSISTRING$LONGINT$BOOLEAN
Lj8969:
	movl	-16(%ebp),%eax
	movb	$0,-272(%ebp,%eax,1)
	leal	-344(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-344(%ebp)
	leal	-272(%ebp),%eax
	leal	-344(%ebp),%edx
	call	SYSUTILS_STRPAS$PCHAR$$ANSISTRING
	movl	-344(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-344(%ebp),%eax
	movl	%eax,(%ebx)
Lj8932:
	call	FPC_POPADDRSTACK
	leal	-344(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-344(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj8933
	call	FPC_RERAISE
Lj8933:
	movl	-348(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREFORMAT$ANSISTRING$LONGINT$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj8986
	jmp	Lj8987
Lj8986:
	jmp	Lj8930
Lj8987:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj8990
	movl	$FPC_EMPTYCHAR,%eax
Lj8990:
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj8993
	movl	-4(%eax),%eax
Lj8993:
	movl	-20(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-24(%ebp)
	movb	$0,-29(%ebp)
	movl	-20(%ebp),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj8999
	.balign 4,0x90
Lj8998:
	movl	-36(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	cmpb	$34,%al
	jb	Lj9004
	subb	$34,%al
	je	Lj9005
	subb	$5,%al
	je	Lj9005
	subb	$26,%al
	je	Lj9006
	subb	$32,%al
	je	Lj9006
	jmp	Lj9004
Lj9005:
	incl	-36(%ebp)
	jmp	Lj9008
	.balign 4,0x90
Lj9007:
	incl	-36(%ebp)
Lj9008:
	movl	-36(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj9010
	jmp	Lj9009
Lj9010:
	movl	-36(%ebp),%eax
	movb	(%eax),%al
	cmpb	-13(%ebp),%al
	jne	Lj9007
	jmp	Lj9009
Lj9009:
	jmp	Lj9003
Lj9006:
	movl	$_$SYSUTILS$_Ld98,%edx
	movl	-36(%ebp),%eax
	movl	$3,%ecx
	call	SYSUTILS_STRLICOMP$PCHAR$PCHAR$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj9011
	jmp	Lj9014
Lj9014:
	movl	$_$SYSUTILS$_Ld99,%edx
	movl	-36(%ebp),%eax
	movl	$4,%ecx
	call	SYSUTILS_STRLICOMP$PCHAR$PCHAR$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj9011
	jmp	Lj9013
Lj9013:
	movl	$_$SYSUTILS$_Ld100,%edx
	movl	-36(%ebp),%eax
	movl	$5,%ecx
	call	SYSUTILS_STRLICOMP$PCHAR$PCHAR$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj9011
	jmp	Lj9012
Lj9011:
	movb	$1,-29(%ebp)
	jmp	Lj9000
Lj9012:
	jmp	Lj9003
Lj9004:
Lj9003:
	incl	-36(%ebp)
Lj8999:
	movl	-36(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj8998
	jmp	Lj9000
Lj9000:
	movb	$255,-13(%ebp)
	movb	$32,-14(%ebp)
	jmp	Lj9040
	.balign 4,0x90
Lj9039:
	movl	-20(%ebp),%eax
	movb	(%eax),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	movb	%al,-13(%ebp)
	movl	$1,-28(%ebp)
	movl	-20(%ebp),%eax
	incl	%eax
	movl	%eax,-36(%ebp)
	movb	-13(%ebp),%al
	cmpb	$32,%al
	jb	Lj9051
	subb	$32,%al
	je	Lj9056
	subb	$2,%al
	je	Lj9052
	subb	$5,%al
	je	Lj9052
	subb	$8,%al
	je	Lj9054
	subb	$11,%al
	je	Lj9055
	subb	$7,%al
	je	Lj9053
	subb	$2,%al
	jb	Lj9051
	subb	$1,%al
	jbe	Lj9056
	subb	$4,%al
	je	Lj9056
	subb	$5,%al
	jb	Lj9051
	subb	$1,%al
	jbe	Lj9056
	subb	$5,%al
	jb	Lj9051
	subb	$1,%al
	jbe	Lj9056
	subb	$5,%al
	jb	Lj9051
	subb	$1,%al
	jbe	Lj9056
	jmp	Lj9051
Lj9052:
	jmp	Lj9058
	.balign 4,0x90
Lj9057:
	incl	-36(%ebp)
Lj9058:
	movl	-36(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj9060
	jmp	Lj9059
Lj9060:
	movl	-36(%ebp),%eax
	movb	(%eax),%al
	cmpb	-13(%ebp),%al
	jne	Lj9057
	jmp	Lj9059
Lj9059:
	incl	-36(%ebp)
	movl	-36(%ebp),%edx
	movl	-20(%ebp),%eax
	subl	%eax,%edx
	movl	%edx,-28(%ebp)
	movl	-28(%ebp),%ecx
	subl	$2,%ecx
	movl	-20(%ebp),%edx
	incl	%edx
	movl	-12(%ebp),%eax
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTR$PCHAR$LONGINT
	jmp	Lj9050
Lj9053:
	movl	$_$SYSUTILS$_Ld99,%edx
	movl	-20(%ebp),%eax
	movl	$4,%ecx
	call	SYSUTILS_STRLICOMP$PCHAR$PCHAR$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj9069
	jmp	Lj9070
Lj9069:
	movl	$4,-28(%ebp)
	movl	-12(%ebp),%eax
	movzwl	-286(%eax),%eax
	cmpl	$12,%eax
	jl	Lj9079
	jmp	Lj9080
Lj9079:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	20(%eax),%edx
	movl	-12(%ebp),%eax
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTRING$ANSISTRING
	jmp	Lj9085
Lj9080:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	24(%eax),%edx
	movl	-12(%ebp),%eax
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTRING$ANSISTRING
Lj9085:
	jmp	Lj9090
Lj9070:
	movl	$_$SYSUTILS$_Ld100,%edx
	movl	-20(%ebp),%eax
	movl	$5,%ecx
	call	SYSUTILS_STRLICOMP$PCHAR$PCHAR$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj9091
	jmp	Lj9092
Lj9091:
	movl	$5,-28(%ebp)
	movl	-12(%ebp),%eax
	movzwl	-286(%eax),%eax
	cmpl	$12,%eax
	jl	Lj9101
	jmp	Lj9102
Lj9101:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTR$PCHAR$LONGINT
	jmp	Lj9109
Lj9102:
	movl	-20(%ebp),%edx
	addl	$3,%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTR$PCHAR$LONGINT
Lj9109:
	jmp	Lj9116
Lj9092:
	movl	$_$SYSUTILS$_Ld98,%edx
	movl	-20(%ebp),%eax
	movl	$3,%ecx
	call	SYSUTILS_STRLICOMP$PCHAR$PCHAR$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj9117
	jmp	Lj9118
Lj9117:
	movl	$3,-28(%ebp)
	movl	-12(%ebp),%eax
	movzwl	-286(%eax),%eax
	cmpl	$12,%eax
	jl	Lj9127
	jmp	Lj9128
Lj9127:
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$1,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTR$PCHAR$LONGINT
	jmp	Lj9135
Lj9128:
	movl	-20(%ebp),%edx
	addl	$2,%edx
	movl	-12(%ebp),%eax
	movl	$1,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTR$PCHAR$LONGINT
Lj9135:
	jmp	Lj9142
Lj9118:
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$_$SYSUTILS$_Ld101,%ecx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La21:
	movl	%ebp,%ecx
	movl	$La21,%edx
	call	FPC_RAISEEXCEPTION
Lj9142:
Lj9116:
Lj9090:
	jmp	Lj9050
Lj9054:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	leal	5(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$1,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTR$PCHAR$LONGINT
	jmp	Lj9050
Lj9055:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	leal	6(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$1,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTR$PCHAR$LONGINT
	jmp	Lj9050
Lj9056:
	jmp	Lj9162
	.balign 4,0x90
Lj9161:
	incl	-36(%ebp)
Lj9162:
	movl	-36(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj9164
	jmp	Lj9163
Lj9164:
	movl	-36(%ebp),%eax
	movb	(%eax),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	cmpb	-13(%ebp),%al
	je	Lj9161
	jmp	Lj9163
Lj9163:
	movl	-36(%ebp),%eax
	movl	-20(%ebp),%edx
	subl	%edx,%eax
	movl	%eax,-28(%ebp)
	movb	-13(%ebp),%al
	cmpb	$32,%al
	jb	Lj9170
	subb	$32,%al
	je	Lj9171
	subb	$35,%al
	je	Lj9180
	decb	%al
	je	Lj9174
	subb	$4,%al
	je	Lj9175
	subb	$5,%al
	je	Lj9173
	decb	%al
	je	Lj9176
	subb	$5,%al
	je	Lj9177
	decb	%al
	je	Lj9179
	subb	$5,%al
	je	Lj9172
	decb	%al
	je	Lj9178
	jmp	Lj9170
Lj9171:
	movl	-28(%ebp),%ecx
	movl	-20(%ebp),%edx
	movl	-12(%ebp),%eax
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTR$PCHAR$LONGINT
	jmp	Lj9169
Lj9172:
	movl	-28(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj9187
	jmp	Lj9188
Lj9187:
	movl	-12(%ebp),%eax
	movzwl	-278(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$4,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT
	jmp	Lj9195
Lj9188:
	movl	-12(%ebp),%eax
	movzwl	-278(%eax),%eax
	cltd
	movl	$100,%ecx
	idivl	%ecx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT
Lj9195:
	jmp	Lj9169
Lj9173:
	movb	-14(%ebp),%al
	cmpb	$72,%al
	je	Lj9202
	jmp	Lj9204
Lj9204:
	cmpb	$0,8(%ebp)
	jne	Lj9202
	jmp	Lj9203
Lj9202:
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	je	Lj9205
	jmp	Lj9206
Lj9205:
	movl	-12(%ebp),%eax
	movzwl	-288(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT
	jmp	Lj9213
Lj9206:
	movl	-12(%ebp),%eax
	movzwl	-288(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT
Lj9213:
	jmp	Lj9220
Lj9203:
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj9222
	decl	%eax
	je	Lj9223
	decl	%eax
	je	Lj9224
	decl	%eax
	je	Lj9225
	jmp	Lj9222
Lj9223:
	movl	-12(%ebp),%eax
	movzwl	-280(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT
	jmp	Lj9221
Lj9224:
	movl	-12(%ebp),%eax
	movzwl	-280(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT
	jmp	Lj9221
Lj9225:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%edx
	movl	-12(%ebp),%eax
	movzwl	-280(%eax),%eax
	movl	32(%edx,%eax,4),%edx
	movl	-12(%ebp),%eax
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTRING$ANSISTRING
	jmp	Lj9221
Lj9222:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%edx
	movl	-12(%ebp),%eax
	movzwl	-280(%eax),%eax
	movl	80(%edx,%eax,4),%edx
	movl	-12(%ebp),%eax
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTRING$ANSISTRING
Lj9221:
Lj9220:
	jmp	Lj9169
Lj9174:
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj9247
	decl	%eax
	je	Lj9248
	decl	%eax
	je	Lj9249
	decl	%eax
	je	Lj9250
	decl	%eax
	je	Lj9251
	decl	%eax
	je	Lj9252
	jmp	Lj9247
Lj9248:
	movl	-12(%ebp),%eax
	movzwl	-282(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT
	jmp	Lj9246
Lj9249:
	movl	-12(%ebp),%eax
	movzwl	-282(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT
	jmp	Lj9246
Lj9250:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%edx
	movl	-12(%ebp),%eax
	movzwl	-284(%eax),%eax
	movl	128(%edx,%eax,4),%edx
	movl	-12(%ebp),%eax
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTRING$ANSISTRING
	jmp	Lj9246
Lj9251:
	movl	-12(%ebp),%eax
	movl	-12(%eax),%edx
	movl	-12(%ebp),%eax
	movzwl	-284(%eax),%eax
	movl	156(%edx,%eax,4),%edx
	movl	-12(%ebp),%eax
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTRING$ANSISTRING
	jmp	Lj9246
Lj9252:
	pushl	$0
	movl	-8(%ebp),%ecx
	incl	%ecx
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREFORMAT$ANSISTRING$LONGINT$BOOLEAN
	jmp	Lj9246
Lj9247:
	pushl	$0
	movl	-8(%ebp),%ecx
	incl	%ecx
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	16(%eax),%edx
	movl	-12(%ebp),%eax
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREFORMAT$ANSISTRING$LONGINT$BOOLEAN
Lj9246:
	jmp	Lj9169
Lj9175:
	cmpb	$0,-29(%ebp)
	jne	Lj9289
	jmp	Lj9290
Lj9289:
	movl	-12(%ebp),%eax
	movzwl	-286(%eax),%eax
	cltd
	movl	$12,%ecx
	idivl	%ecx
	movl	%edx,-40(%ebp)
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj9293
	jmp	Lj9294
Lj9293:
	movl	$12,-40(%ebp)
Lj9294:
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	je	Lj9297
	jmp	Lj9298
Lj9297:
	movl	-40(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT
	jmp	Lj9305
Lj9298:
	movl	-40(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT
Lj9305:
	jmp	Lj9312
Lj9290:
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	je	Lj9313
	jmp	Lj9314
Lj9313:
	movl	-12(%ebp),%eax
	movzwl	-286(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT
	jmp	Lj9321
Lj9314:
	movl	-12(%ebp),%eax
	movzwl	-286(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT
Lj9321:
Lj9312:
	jmp	Lj9169
Lj9176:
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	je	Lj9328
	jmp	Lj9329
Lj9328:
	movl	-12(%ebp),%eax
	movzwl	-288(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT
	jmp	Lj9336
Lj9329:
	movl	-12(%ebp),%eax
	movzwl	-288(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT
Lj9336:
	jmp	Lj9169
Lj9177:
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	je	Lj9343
	jmp	Lj9344
Lj9343:
	movl	-12(%ebp),%eax
	movzwl	-290(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT
	jmp	Lj9351
Lj9344:
	movl	-12(%ebp),%eax
	movzwl	-290(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT
Lj9351:
	jmp	Lj9169
Lj9178:
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	je	Lj9358
	jmp	Lj9359
Lj9358:
	movl	-12(%ebp),%eax
	movzwl	-292(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$0,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT
	jmp	Lj9366
Lj9359:
	movl	-12(%ebp),%eax
	movzwl	-292(%eax),%edx
	movl	-12(%ebp),%eax
	movl	$3,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT
Lj9366:
	jmp	Lj9169
Lj9179:
	movl	-28(%ebp),%eax
	cmpl	$1,%eax
	je	Lj9373
	jmp	Lj9374
Lj9373:
	pushl	$1
	movl	-8(%ebp),%ecx
	incl	%ecx
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	28(%eax),%edx
	movl	-12(%ebp),%eax
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREFORMAT$ANSISTRING$LONGINT$BOOLEAN
	jmp	Lj9383
Lj9374:
	pushl	$1
	movl	-8(%ebp),%ecx
	incl	%ecx
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	32(%eax),%edx
	movl	-12(%ebp),%eax
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREFORMAT$ANSISTRING$LONGINT$BOOLEAN
Lj9383:
	jmp	Lj9169
Lj9180:
	pushl	$0
	movl	-8(%ebp),%ecx
	incl	%ecx
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	12(%eax),%edx
	movl	-12(%ebp),%eax
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREFORMAT$ANSISTRING$LONGINT$BOOLEAN
	movl	-12(%ebp),%eax
	movzwl	-286(%eax),%eax
	testl	%eax,%eax
	jne	Lj9400
	jmp	Lj9403
Lj9403:
	movl	-12(%ebp),%eax
	movzwl	-288(%eax),%eax
	testl	%eax,%eax
	jne	Lj9400
	jmp	Lj9402
Lj9402:
	movl	-12(%ebp),%eax
	movzwl	-290(%eax),%eax
	testl	%eax,%eax
	jne	Lj9400
	jmp	Lj9401
Lj9400:
	movl	-12(%ebp),%eax
	movl	$_$SYSUTILS$_Ld63,%edx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTRING$ANSISTRING
	pushl	$1
	movl	-8(%ebp),%ecx
	incl	%ecx
	movl	-12(%ebp),%eax
	movl	-12(%eax),%eax
	movl	32(%eax),%edx
	movl	-12(%ebp),%eax
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREFORMAT$ANSISTRING$LONGINT$BOOLEAN
Lj9401:
	jmp	Lj9169
Lj9170:
Lj9169:
	movb	-13(%ebp),%al
	movb	%al,-14(%ebp)
	jmp	Lj9050
Lj9051:
	leal	-13(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$1,%ecx
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTR$PCHAR$LONGINT
Lj9050:
	movl	-28(%ebp),%eax
	addl	%eax,-20(%ebp)
Lj9040:
	movl	-20(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jb	Lj9039
	jmp	Lj9041
Lj9041:
Lj8930:
	leave
	ret	$4

.text
	.balign 4,0x90
SYSUTILS_DATETIMETOSTRING$crc782201FE_STOREINT$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$36,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	pushl	$16
	leal	-29(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_shortstr_sint
	movzbl	-29(%ebp),%eax
	movl	$1,-36(%ebp)
	cmpl	-36(%ebp),%eax
	jl	Lj9433
	decl	-36(%ebp)
	.balign 4,0x90
Lj9434:
	incl	-36(%ebp)
	movzbl	-36(%ebp),%edx
	movb	-29(%ebp,%edx,1),%dl
	cmpb	$32,%dl
	je	Lj9435
	jmp	Lj9436
Lj9435:
	movzbl	-36(%ebp),%edx
	movb	$48,-29(%ebp,%edx,1)
	jmp	Lj9439
Lj9436:
	jmp	Lj9433
Lj9439:
	cmpl	-36(%ebp),%eax
	jg	Lj9434
Lj9433:
	leal	-28(%ebp),%edx
	movzbl	-29(%ebp),%ecx
	movl	-12(%ebp),%eax
	call	SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTR$PCHAR$LONGINT
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTRING$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9448
	movl	-4(%eax),%eax
Lj9448:
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	cmpl	$256,%edx
	jl	Lj9449
	jmp	Lj9450
Lj9449:
	movl	-4(%ebp),%edx
	testl	%edx,%edx
	jne	Lj9453
	movl	$FPC_EMPTYCHAR,%edx
Lj9453:
	movl	-8(%ebp),%eax
	movl	-276(%eax),%eax
	movl	-12(%ebp),%ecx
	call	SYSUTILS_STRMOVE$PCHAR$PCHAR$LONGINT$$PCHAR
	movl	-8(%ebp),%eax
	movl	-276(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,-276(%eax)
	movl	-8(%ebp),%eax
	movl	-16(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	movl	-8(%ebp),%eax
	movl	%edx,-16(%eax)
Lj9450:
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_DATETIMETOSTRING$crc782201FE_STORESTR$PCHAR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	cmpl	$256,%edx
	jl	Lj9462
	jmp	Lj9463
Lj9462:
	movl	-12(%ebp),%eax
	movl	-276(%eax),%eax
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	SYSUTILS_STRMOVE$PCHAR$PCHAR$LONGINT$$PCHAR
	movl	-12(%ebp),%eax
	movl	-276(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	%edx,-276(%eax)
	movl	-12(%ebp),%eax
	movl	-16(%eax),%edx
	movl	-8(%ebp),%eax
	addl	%eax,%edx
	movl	-12(%ebp),%eax
	movl	%edx,-16(%eax)
Lj9463:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_DATETIMETOFILEDATE$TDATETIME$$LONGINT
SYSUTILS_DATETIMETOFILEDATE$TDATETIME$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$18,%esp
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-10(%ebp),%ecx
	leal	-8(%ebp),%edx
	leal	-6(%ebp),%eax
	call	SYSUTILS_DECODEDATE$TDATETIME$WORD$WORD$WORD
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-18(%ebp),%eax
	pushl	%eax
	leal	-16(%ebp),%ecx
	leal	-14(%ebp),%edx
	leal	-12(%ebp),%eax
	call	SYSUTILS_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
	movzwl	-6(%ebp),%eax
	cmpl	$1980,%eax
	jl	Lj9494
	jmp	Lj9496
Lj9496:
	movzwl	-6(%ebp),%eax
	cmpl	$2099,%eax
	jg	Lj9494
	jmp	Lj9495
Lj9494:
	movl	$0,-4(%ebp)
	jmp	Lj9499
Lj9495:
	movzwl	-16(%ebp),%eax
	shrl	$1,%eax
	movzwl	-14(%ebp),%edx
	shll	$5,%edx
	orl	%edx,%eax
	movzwl	-12(%ebp),%edx
	shll	$11,%edx
	orl	%edx,%eax
	movl	%eax,-4(%ebp)
	movzwl	-10(%ebp),%eax
	shll	$16,%eax
	movzwl	-8(%ebp),%edx
	shll	$21,%edx
	orl	%edx,%eax
	movzwl	-6(%ebp),%edx
	subl	$1980,%edx
	movzwl	%dx,%edx
	shll	$25,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	orl	%edx,%eax
	movl	%eax,-4(%ebp)
Lj9499:
	movl	-4(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_CURRENTYEAR$$WORD
SYSUTILS_CURRENTYEAR$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	leal	-16(%ebp),%eax
	call	SYSUTILS_GETLOCALTIME$TSYSTEMTIME
	movw	-16(%ebp),%ax
	movw	%ax,-2(%ebp)
	movw	-2(%ebp),%ax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FILEDATETODATETIME$LONGINT$$TDATETIME
SYSUTILS_FILEDATETODATETIME$LONGINT$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	shrl	$16,%eax
	movw	%ax,-14(%ebp)
	movl	-4(%ebp),%eax
	andl	$65535,%eax
	movw	%ax,-16(%ebp)
	movzwl	-14(%ebp),%edx
	shrl	$5,%edx
	andl	$15,%edx
	movzwl	-14(%ebp),%eax
	shrl	$9,%eax
	addl	$1980,%eax
	movw	-14(%ebp),%cx
	andw	$31,%cx
	call	SYSUTILS_ENCODEDATE$WORD$WORD$WORD$$TDATETIME
	subl	$8,%esp
	fstpl	(%esp)
	pushl	$0
	movw	-16(%ebp),%cx
	andw	$31,%cx
	movzwl	%cx,%ecx
	shll	$1,%ecx
	movzwl	-16(%ebp),%edx
	shrl	$5,%edx
	andl	$63,%edx
	movzwl	-16(%ebp),%eax
	shrl	$11,%eax
	call	SYSUTILS_ENCODETIME$WORD$WORD$WORD$WORD$$TDATETIME
	subl	$8,%esp
	fstpl	(%esp)
	call	SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTODATE$SHORTSTRING$TDATETIME$$BOOLEAN
SYSUTILS_TRYSTRTODATE$SHORTSTRING$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	SYSUTILS_TRYSTRTODATE$SHORTSTRING$TDATETIME$CHAR$$BOOLEAN
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTODATE$SHORTSTRING$TDATETIME$ANSISTRING$CHAR$$BOOLEAN
SYSUTILS_TRYSTRTODATE$SHORTSTRING$TDATETIME$ANSISTRING$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
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
	jne	Lj9548
	pushl	-12(%ebp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movzbl	8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	leal	1(%eax),%ebx
	movl	-4(%ebp),%eax
	movzbl	(%eax),%esi
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-20(%ebp),%eax
	movl	%ebx,%edx
	movl	%esi,%ecx
	call	SYSUTILS_INTSTRTODATE$crcAF8CE8A7
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj9548:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9549
	call	FPC_RERAISE
Lj9549:
	movb	-13(%ebp),%al
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$ANSISTRING$CHAR$$BOOLEAN
SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$ANSISTRING$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
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
	jne	Lj9575
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9580
	movl	-4(%eax),%eax
Lj9580:
	testl	%eax,%eax
	setneb	-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj9581
	jmp	Lj9582
Lj9581:
	pushl	-12(%ebp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movzbl	8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%esi
	testl	%esi,%esi
	je	Lj9595
	movl	-4(%esi),%esi
Lj9595:
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-20(%ebp),%eax
	movl	%ebx,%edx
	movl	%esi,%ecx
	call	SYSUTILS_INTSTRTODATE$crcAF8CE8A7
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj9582:
Lj9575:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9576
	call	FPC_RERAISE
Lj9576:
	movb	-13(%ebp),%al
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTODATE$SHORTSTRING$TDATETIME$CHAR$$BOOLEAN
SYSUTILS_TRYSTRTODATE$SHORTSTRING$TDATETIME$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movzbl	-12(%ebp),%eax
	pushl	%eax
	movl	TC_SYSUTILS_DEFAULTFORMATSETTINGS+12,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TRYSTRTODATE$SHORTSTRING$TDATETIME$ANSISTRING$CHAR$$BOOLEAN
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$$BOOLEAN
SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	pushl	$0
	movl	TC_SYSUTILS_DEFAULTFORMATSETTINGS+12,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$ANSISTRING$CHAR$$BOOLEAN
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$CHAR$$BOOLEAN
SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movzbl	-12(%ebp),%eax
	pushl	%eax
	movl	TC_SYSUTILS_DEFAULTFORMATSETTINGS+12,%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$ANSISTRING$CHAR$$BOOLEAN
	movb	%al,-13(%ebp)
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
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
	jne	Lj9644
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9649
	movl	-4(%eax),%eax
Lj9649:
	testl	%eax,%eax
	setneb	-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj9650
	jmp	Lj9651
Lj9650:
	movl	-12(%ebp),%eax
	pushl	12(%eax)
	movl	-12(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%esi
	testl	%esi,%esi
	je	Lj9664
	movl	-4(%esi),%esi
Lj9664:
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-20(%ebp),%eax
	movl	%ebx,%edx
	movl	%esi,%ecx
	call	SYSUTILS_INTSTRTODATE$crcAF8CE8A7
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj9651:
Lj9644:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9645
	call	FPC_RERAISE
Lj9645:
	movb	-13(%ebp),%al
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTOTIME$SHORTSTRING$TDATETIME$CHAR$$BOOLEAN
SYSUTILS_TRYSTRTOTIME$SHORTSTRING$TDATETIME$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj9677
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movzbl	-12(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	leal	1(%eax),%ebx
	movl	-4(%ebp),%eax
	movzbl	(%eax),%esi
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-20(%ebp),%eax
	movl	%ebx,%edx
	movl	%esi,%ecx
	call	SYSUTILS_INTSTRTOTIME$ANSISTRING$PCHAR$LONGINT$TFORMATSETTINGS$CHAR$$TDATETIME
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj9677:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9678
	call	FPC_RERAISE
Lj9678:
	movb	-13(%ebp),%al
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTOTIME$SHORTSTRING$TDATETIME$$BOOLEAN
SYSUTILS_TRYSTRTOTIME$SHORTSTRING$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	SYSUTILS_TRYSTRTOTIME$SHORTSTRING$TDATETIME$CHAR$$BOOLEAN
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTOTIME$ANSISTRING$TDATETIME$CHAR$$BOOLEAN
SYSUTILS_TRYSTRTOTIME$ANSISTRING$TDATETIME$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj9712
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9717
	movl	-4(%eax),%eax
Lj9717:
	testl	%eax,%eax
	setneb	-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj9718
	jmp	Lj9719
Lj9718:
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movzbl	-12(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%esi
	testl	%esi,%esi
	je	Lj9730
	movl	-4(%esi),%esi
Lj9730:
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-20(%ebp),%eax
	movl	%ebx,%edx
	movl	%esi,%ecx
	call	SYSUTILS_INTSTRTOTIME$ANSISTRING$PCHAR$LONGINT$TFORMATSETTINGS$CHAR$$TDATETIME
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj9719:
Lj9712:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9713
	call	FPC_RERAISE
Lj9713:
	movb	-13(%ebp),%al
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTOTIME$ANSISTRING$TDATETIME$$BOOLEAN
SYSUTILS_TRYSTRTOTIME$ANSISTRING$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movb	$0,%cl
	call	SYSUTILS_TRYSTRTOTIME$ANSISTRING$TDATETIME$CHAR$$BOOLEAN
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTOTIME$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
SYSUTILS_TRYSTRTOTIME$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%ebx,-68(%ebp)
	movl	%esi,-64(%ebp)
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
	jne	Lj9753
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj9758
	movl	-4(%eax),%eax
Lj9758:
	testl	%eax,%eax
	setneb	-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj9759
	jmp	Lj9760
Lj9759:
	movl	-12(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%esi
	testl	%esi,%esi
	je	Lj9771
	movl	-4(%esi),%esi
Lj9771:
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	leal	-20(%ebp),%eax
	movl	%ebx,%edx
	movl	%esi,%ecx
	call	SYSUTILS_INTSTRTOTIME$ANSISTRING$PCHAR$LONGINT$TFORMATSETTINGS$CHAR$$TDATETIME
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	seteb	-13(%ebp)
Lj9760:
Lj9753:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9754
	call	FPC_RERAISE
Lj9754:
	movb	-13(%ebp),%al
	movl	-68(%ebp),%ebx
	movl	-64(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTODATETIME$SHORTSTRING$TDATETIME$$BOOLEAN
SYSUTILS_TRYSTRTODATETIME$SHORTSTRING$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$140,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-96(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj9784
	movb	$1,-9(%ebp)
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj9791
	leal	-96(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-96(%ebp),%eax
	call	SYSUTILS_STRTODATETIME$ANSISTRING$$TDATETIME
	movl	-8(%ebp),%eax
	fstpl	(%eax)
Lj9791:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj9793
	movl	$VMT_SYSUTILS_ECONVERTERROR,%eax
	call	FPC_CATCHES
	testl	%eax,%eax
	je	Lj9803
	movl	%eax,-100(%ebp)
	leal	-112(%ebp),%ecx
	leal	-136(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj9804
	movb	$0,-9(%ebp)
Lj9804:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj9808
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj9808:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj9793
Lj9803:
	call	FPC_RERAISE
Lj9793:
Lj9784:
	call	FPC_POPADDRSTACK
	leal	-96(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-96(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9785
	call	FPC_RERAISE
Lj9785:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTODATETIME$ANSISTRING$TDATETIME$$BOOLEAN
SYSUTILS_TRYSTRTODATETIME$ANSISTRING$TDATETIME$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$96,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$1,-9(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj9815
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRTODATETIME$ANSISTRING$$TDATETIME
	movl	-8(%ebp),%eax
	fstpl	(%eax)
Lj9815:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj9817
	movl	$VMT_SYSUTILS_ECONVERTERROR,%eax
	call	FPC_CATCHES
	testl	%eax,%eax
	je	Lj9823
	movl	%eax,-56(%ebp)
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj9824
	movb	$0,-9(%ebp)
Lj9824:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj9828
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj9828:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj9817
Lj9823:
	call	FPC_RERAISE
Lj9817:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRTODATETIME$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
SYSUTILS_TRYSTRTODATETIME$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$80,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-80(%ebp)
	leal	-48(%ebp),%ecx
	leal	-72(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj9831
	movb	$0,-13(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movb	6(%eax),%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj9842
	jmp	Lj9843
Lj9842:
	jmp	Lj9845
	.balign 4,0x90
Lj9844:
	decl	-20(%ebp)
Lj9845:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj9847
	jmp	Lj9846
Lj9847:
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$32,%al
	jne	Lj9844
	jmp	Lj9846
Lj9846:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj9848
	jmp	Lj9849
Lj9848:
	leal	-80(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%eax
	pushl	%eax
	movl	-20(%ebp),%ecx
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-80(%ebp),%eax
	movl	-12(%ebp),%ecx
	leal	-28(%ebp),%edx
	call	SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
	testb	%al,%al
	je	Lj9850
	jmp	Lj9851
Lj9850:
	jmp	Lj9831
Lj9851:
	leal	-80(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj9874
	movl	-4(%ecx),%ecx
Lj9874:
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	movl	-20(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	call	fpc_ansistr_copy
	movl	-80(%ebp),%eax
	movl	-12(%ebp),%ecx
	leal	-36(%ebp),%edx
	call	SYSUTILS_TRYSTRTOTIME$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
	testb	%al,%al
	je	Lj9866
	jmp	Lj9867
Lj9866:
	jmp	Lj9831
Lj9867:
	subl	$8,%esp
	movl	-28(%ebp),%eax
	movl	%eax,(%esp)
	movl	-24(%ebp),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	-36(%ebp),%eax
	movl	%eax,(%esp)
	movl	-32(%ebp),%eax
	movl	%eax,4(%esp)
	call	SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
	movl	-8(%ebp),%eax
	fstpl	(%eax)
	movb	$1,-13(%ebp)
	jmp	Lj9891
Lj9849:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TRYSTRTOTIME$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
	movb	%al,-13(%ebp)
Lj9891:
	jmp	Lj9900
Lj9843:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
	movb	%al,-13(%ebp)
Lj9900:
Lj9831:
	call	FPC_POPADDRSTACK
	leal	-80(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-80(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj9832
	call	FPC_RERAISE
Lj9832:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTODATEDEF$SHORTSTRING$TDATETIME$$TDATETIME
SYSUTILS_STRTODATEDEF$SHORTSTRING$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	SYSUTILS_STRTODATEDEF$SHORTSTRING$TDATETIME$CHAR$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOTIMEDEF$SHORTSTRING$TDATETIME$$TDATETIME
SYSUTILS_STRTOTIMEDEF$SHORTSTRING$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	SYSUTILS_STRTOTIMEDEF$SHORTSTRING$TDATETIME$CHAR$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTODATETIMEDEF$SHORTSTRING$TDATETIME$$TDATETIME
SYSUTILS_STRTODATETIMEDEF$SHORTSTRING$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TRYSTRTODATETIME$SHORTSTRING$TDATETIME$$BOOLEAN
	testb	%al,%al
	je	Lj9931
	jmp	Lj9932
Lj9931:
	movl	8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj9932:
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTODATEDEF$SHORTSTRING$TDATETIME$CHAR$$TDATETIME
SYSUTILS_STRTODATEDEF$SHORTSTRING$TDATETIME$CHAR$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-8(%ebp),%cl
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TRYSTRTODATE$SHORTSTRING$TDATETIME$CHAR$$BOOLEAN
	testb	%al,%al
	je	Lj9941
	jmp	Lj9942
Lj9941:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj9942:
	fldl	-16(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOTIMEDEF$SHORTSTRING$TDATETIME$CHAR$$TDATETIME
SYSUTILS_STRTOTIMEDEF$SHORTSTRING$TDATETIME$CHAR$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-8(%ebp),%cl
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TRYSTRTOTIME$SHORTSTRING$TDATETIME$CHAR$$BOOLEAN
	testb	%al,%al
	je	Lj9953
	jmp	Lj9954
Lj9953:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj9954:
	fldl	-16(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTODATEDEF$ANSISTRING$TDATETIME$$TDATETIME
SYSUTILS_STRTODATEDEF$ANSISTRING$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	SYSUTILS_STRTODATEDEF$ANSISTRING$TDATETIME$CHAR$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOTIMEDEF$ANSISTRING$TDATETIME$$TDATETIME
SYSUTILS_STRTOTIMEDEF$ANSISTRING$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movb	$0,%dl
	call	SYSUTILS_STRTOTIMEDEF$ANSISTRING$TDATETIME$CHAR$$TDATETIME
	fstpl	-12(%ebp)
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTODATETIMEDEF$ANSISTRING$TDATETIME$$TDATETIME
SYSUTILS_STRTODATETIMEDEF$ANSISTRING$TDATETIME$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	leal	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TRYSTRTODATETIME$ANSISTRING$TDATETIME$$BOOLEAN
	testb	%al,%al
	je	Lj9985
	jmp	Lj9986
Lj9985:
	movl	8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj9986:
	fldl	-12(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTODATEDEF$ANSISTRING$TDATETIME$CHAR$$TDATETIME
SYSUTILS_STRTODATEDEF$ANSISTRING$TDATETIME$CHAR$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-8(%ebp),%cl
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TRYSTRTODATE$ANSISTRING$TDATETIME$CHAR$$BOOLEAN
	testb	%al,%al
	je	Lj9995
	jmp	Lj9996
Lj9995:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj9996:
	fldl	-16(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_STRTOTIMEDEF$ANSISTRING$TDATETIME$CHAR$$TDATETIME
SYSUTILS_STRTOTIMEDEF$ANSISTRING$TDATETIME$CHAR$$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-8(%ebp),%cl
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TRYSTRTOTIME$ANSISTRING$TDATETIME$CHAR$$BOOLEAN
	testb	%al,%al
	je	Lj10007
	jmp	Lj10008
Lj10007:
	movl	8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp)
Lj10008:
	fldl	-16(%ebp)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_REPLACETIME$TDATETIME$TDATETIME
SYSUTILS_REPLACETIME$TDATETIME$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	subl	$8,%esp
	movl	(%eax),%edx
	movl	%edx,(%esp)
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	subl	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	movl	12(%ebp),%eax
	movl	%eax,4(%esp)
	call	SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
	movl	-4(%ebp),%eax
	fstpl	(%eax)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_REPLACEDATE$TDATETIME$TDATETIME
SYSUTILS_REPLACEDATE$TDATETIME$TDATETIME:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	subl	$8,%esp
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%edx
	subl	$8,%esp
	movl	(%edx),%eax
	movl	%eax,(%esp)
	movl	4(%edx),%eax
	movl	%eax,4(%esp)
	call	SYSUTILS_COMPOSEDATETIME$TDATETIME$TDATETIME$$TDATETIME
	fstpl	-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%eax
	movl	%eax,4(%edx)
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_GETLOCALTIMEOFFSET$$LONGINT
SYSUTILS_GETLOCALTIMEOFFSET$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	$0,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRCOPY$PCHAR$PCHAR$$PCHAR
SYSUTILS_STRCOPY$PCHAR$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%edi,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%edx,%edi
	testl	%edi,%edi
	jz	Lj10043
	leal	3(%edi),%ecx
	andl	$-4,%ecx
	movl	%edi,%esi
	subl	%edi,%ecx
	movl	%eax,%edi
	jz	Lj10044
Lj10045:
	movb	(%esi),%al
	incl	%edi
	incl	%esi
	testb	%al,%al
	movb	%al,-1(%edi)
	jz	Lj10043
	decl	%ecx
	jnz	Lj10045
	.balign 16,0x90
Lj10044:
	movl	(%esi),%eax
	movl	%eax,%edx
	leal	-16843009(%eax),%ecx
	notl	%edx
	addl	$4,%esi
	andl	%edx,%ecx
	andl	$-2139062144,%ecx
	jnz	Lj10046
	movl	%eax,(%edi)
	addl	$4,%edi
	jmp	Lj10044
Lj10046:
	testl	$255,%eax
	jz	Lj10047
	testl	$65280,%eax
	jz	Lj10048
	testl	$16711680,%eax
	jz	Lj10049
	movl	%eax,(%edi)
	jmp	Lj10043
Lj10049:
	xorb	%dl,%dl
	movw	%ax,(%edi)
	movb	%dl,2(%edi)
	jmp	Lj10043
Lj10048:
	movw	%ax,(%edi)
	jmp	Lj10043
Lj10047:
	movb	%al,(%edi)
Lj10043:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edi
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRECOPY$PCHAR$PCHAR$$PCHAR
SYSUTILS_STRECOPY$PCHAR$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
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
	.balign 4,0x90
.globl	SYSUTILS_STRLCOPY$PCHAR$PCHAR$LONGINT$$PCHAR
SYSUTILS_STRLCOPY$PCHAR$PCHAR$LONGINT$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%edi,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%edx,%esi
	movl	%ecx,%ecx
	movl	%eax,%edi
	movl	%edi,-8(%ebp)
	orl	%ecx,%ecx
	jz	Lj10054
	cld
Lj10055:
	lodsb
	stosb
	decl	%ecx
	jz	Lj10054
	orb	%al,%al
	jnz	Lj10055
	jmp	Lj10056
Lj10054:
	xorb	%al,%al
	stosb
Lj10056:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edi
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STREND$PCHAR$$PCHAR
SYSUTILS_STREND$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%edi,-8(%ebp)
	cld
	movl	%eax,%edi
	xorl	%eax,%eax
	orl	%edi,%edi
	jz	Lj10059
	movl	$-1,%ecx
	xorl	%eax,%eax
	repne
	scasb
	movl	%edi,%eax
	decl	%eax
Lj10059:
	movl	-8(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT
SYSUTILS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT:
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
	jl	Lj10062
	movl	-16(%ebp),%ecx
Lj10062:
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
	.balign 4,0x90
.globl	SYSUTILS_STRICOMP$PCHAR$PCHAR$$LONGINT
SYSUTILS_STRICOMP$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
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
Lj10065:
	repe
	cmpsb
	jz	Lj10066
	movzbl	-1(%esi),%eax
	movzbl	-1(%edi),%edx
	cmpb	$97,%al
	jb	Lj10067
	cmpb	$122,%al
	ja	Lj10067
	subb	$32,%al
Lj10067:
	cmpb	$97,%dl
	jb	Lj10068
	cmpb	$122,%dl
	ja	Lj10068
	subb	$32,%dl
Lj10068:
	subl	%edx,%eax
	jz	Lj10065
Lj10066:
	movl	-20(%ebp),%edi
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRLICOMP$PCHAR$PCHAR$LONGINT$$LONGINT
SYSUTILS_STRLICOMP$PCHAR$PCHAR$LONGINT$$LONGINT:
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
	jl	Lj10071
	movl	-16(%ebp),%ecx
Lj10071:
	movl	-12(%ebp),%edi
	movl	-8(%ebp),%esi
Lj10072:
	repe
	cmpsb
	jz	Lj10073
	movzbl	-1(%esi),%eax
	movzbl	-1(%edi),%edx
	cmpb	$97,%al
	jb	Lj10074
	cmpb	$122,%al
	ja	Lj10074
	subb	$32,%al
Lj10074:
	cmpb	$97,%dl
	jb	Lj10075
	cmpb	$122,%dl
	ja	Lj10075
	subb	$32,%dl
Lj10075:
	subl	%edx,%eax
	jz	Lj10072
Lj10073:
	movl	-24(%ebp),%edi
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR
SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%edi,-12(%ebp)
	movl	%esi,-8(%ebp)
	xorl	%ecx,%ecx
	testl	%eax,%eax
	jz	Lj10078
	movb	%dl,%cl
	leal	3(%eax),%esi
	andl	$-4,%esi
	movl	%eax,%edi
	subl	%eax,%esi
	jz	Lj10079
	xorl	%eax,%eax
Lj10080:
	movb	(%edi),%al
	incl	%edi
	testb	%al,%al
	jz	Lj10078
	cmpb	%cl,%al
	je	Lj10081
	decl	%esi
	jnz	Lj10080
Lj10079:
	movl	%ecx,%eax
	shll	$8,%eax
	orl	%eax,%ecx
	movl	%ecx,%eax
	shll	$16,%eax
	orl	%eax,%ecx
	.balign 16,0x90
Lj10082:
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
	jnz	Lj10083
	addl	$-16843009,%eax
	andl	$-2139062144,%esi
	andl	%esi,%eax
	jz	Lj10082
	shrl	$8,%eax
	jc	Lj10084
	shrl	$8,%eax
	jc	Lj10085
	shrl	$8,%eax
	jc	Lj10086
	jmp	Lj10081
Lj10083:
	addl	$-16843009,%eax
	andl	$-2139062144,%esi
	andl	%esi,%eax
	shrl	$8,%eax
	jc	Lj10084
	shrl	$8,%edx
	jc	Lj10087
	shrl	$8,%eax
	jc	Lj10085
	shrl	$8,%edx
	jc	Lj10087
	shrl	$8,%eax
	jc	Lj10086
	shrl	$8,%edx
	jc	Lj10087
	shrl	$8,%eax
	jc	Lj10081
	jmp	Lj10087
Lj10086:
	leal	-2(%edi),%eax
	jmp	Lj10078
Lj10085:
	leal	-3(%edi),%eax
	jmp	Lj10078
Lj10084:
	leal	-4(%edi),%eax
	jmp	Lj10078
Lj10081:
	leal	-1(%edi),%eax
	jmp	Lj10078
Lj10087:
	xorl	%eax,%eax
Lj10078:
	movl	-12(%ebp),%edi
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRRSCAN$PCHAR$CHAR$$PCHAR
SYSUTILS_STRRSCAN$PCHAR$CHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%edi,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%eax,%edi
	xorl	%eax,%eax
	orl	%edi,%edi
	jz	Lj10090
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
	jnz	Lj10090
	movl	%edi,%eax
	incl	%eax
Lj10090:
	movl	-12(%ebp),%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRUPPER$PCHAR$$PCHAR
SYSUTILS_STRUPPER$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%edi,-16(%ebp)
	movl	%esi,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	%eax,%esi
	orl	%esi,%esi
	jz	Lj10093
	movl	%esi,%edi
Lj10094:
	lodsb
	cmpb	$97,%al
	jb	Lj10095
	cmpb	$122,%al
	ja	Lj10095
	subb	$32,%al
Lj10095:
	stosb
	orb	%al,%al
	jnz	Lj10094
Lj10093:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edi
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRLOWER$PCHAR$$PCHAR
SYSUTILS_STRLOWER$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%esi,-12(%ebp)
	movl	%edi,-16(%ebp)
	movl	%eax,-8(%ebp)
	movl	%eax,%esi
	orl	%esi,%esi
	jz	Lj10098
	movl	%esi,%edi
Lj10099:
	lodsb
	cmpb	$65,%al
	jb	Lj10100
	cmpb	$90,%al
	ja	Lj10100
	addb	$32,%al
Lj10100:
	stosb
	orb	%al,%al
	jnz	Lj10099
Lj10098:
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%edi
	movl	-12(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_STRISCAN$PCHAR$CHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-8(%ebp),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	movb	%al,-17(%ebp)
	movl	$0,-16(%ebp)
	movb	-17(%ebp),%al
	testb	%al,%al
	je	Lj10109
	jmp	Lj10110
Lj10109:
	movl	-4(%ebp),%ebx
	movl	-4(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	leal	(%ebx,%eax,1),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj10101
Lj10110:
	jmp	Lj10116
	.balign 4,0x90
Lj10115:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%edx,%eax,1),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	cmpb	-17(%ebp),%al
	je	Lj10118
	jmp	Lj10119
Lj10118:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	leal	(%eax,%edx,1),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj10101
Lj10119:
	incl	-16(%ebp)
Lj10116:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	jne	Lj10115
	jmp	Lj10117
Lj10117:
	movl	$0,-12(%ebp)
Lj10101:
	movl	-12(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_STRRISCAN$PCHAR$CHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$21,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-8(%ebp),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	movb	%al,-21(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	movl	%eax,-16(%ebp)
	movb	-21(%ebp),%al
	testb	%al,%al
	je	Lj10136
	jmp	Lj10137
Lj10136:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	leal	(%edx,%eax,1),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj10126
Lj10137:
	decl	-16(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
	cmpl	$0,-20(%ebp)
	jl	Lj10141
	incl	-20(%ebp)
	.balign 4,0x90
Lj10142:
	decl	-20(%ebp)
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	(%eax,%edx,1),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	cmpb	-21(%ebp),%al
	je	Lj10143
	jmp	Lj10144
Lj10143:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	leal	(%edx,%eax,1),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj10126
Lj10144:
	cmpl	$0,-20(%ebp)
	jg	Lj10142
Lj10141:
	movl	$0,-12(%ebp)
Lj10126:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRCOMP$PCHAR$PCHAR$$LONGINT
SYSUTILS_STRCOMP$PCHAR$PCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj10156
	.balign 4,0x90
Lj10155:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj10158
	jmp	Lj10160
Lj10160:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movb	(%edx,%eax,1),%al
	testb	%al,%al
	je	Lj10158
	jmp	Lj10159
Lj10158:
	jmp	Lj10157
Lj10159:
	incl	-16(%ebp)
Lj10156:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	-16(%ebp),%ebx
	movb	(%eax,%edx,1),%al
	cmpb	(%ecx,%ebx,1),%al
	je	Lj10155
	jmp	Lj10157
Lj10157:
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
	.balign 4,0x90
.globl	SYSUTILS_STRCAT$PCHAR$PCHAR$$PCHAR
SYSUTILS_STRCAT$PCHAR$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	call	SYSUTILS_STREND$PCHAR$$PCHAR
	movl	-8(%ebp),%edx
	call	SYSUTILS_STRCOPY$PCHAR$PCHAR$$PCHAR
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRLCAT$PCHAR$PCHAR$LONGINT$$PCHAR
SYSUTILS_STRLCAT$PCHAR$PCHAR$LONGINT$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	call	SYSUTILS_STREND$PCHAR$$PCHAR
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	-4(%ebp),%edx
	subl	%edx,%eax
	subl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj10179
	jmp	Lj10180
Lj10179:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSUTILS_STRLCOPY$PCHAR$PCHAR$LONGINT$$PCHAR
Lj10180:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRMOVE$PCHAR$PCHAR$LONGINT$$PCHAR
SYSUTILS_STRMOVE$PCHAR$PCHAR$LONGINT$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRPOS$PCHAR$PCHAR$$PCHAR
SYSUTILS_STRPOS$PCHAR$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj10203
	jmp	Lj10205
Lj10205:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj10203
	jmp	Lj10204
Lj10203:
	jmp	Lj10199
Lj10204:
	movl	-8(%ebp),%eax
	movb	(%eax),%dl
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj10212
	jmp	Lj10213
Lj10212:
	jmp	Lj10199
Lj10213:
	movl	-8(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	movl	%eax,-20(%ebp)
	jmp	Lj10219
	.balign 4,0x90
Lj10218:
	movl	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	SYSUTILS_STRLCOMP$PCHAR$PCHAR$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj10221
	jmp	Lj10222
Lj10221:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj10199
Lj10222:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%dl
	movl	-16(%ebp),%eax
	call	SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR
	movl	%eax,-16(%ebp)
Lj10219:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10218
	jmp	Lj10220
Lj10220:
Lj10199:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_STRIPOS$PCHAR$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj10241
	jmp	Lj10243
Lj10243:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj10241
	jmp	Lj10242
Lj10241:
	jmp	Lj10237
Lj10242:
	movl	-8(%ebp),%eax
	movb	(%eax),%dl
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRISCAN$PCHAR$CHAR$$PCHAR
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj10250
	jmp	Lj10251
Lj10250:
	jmp	Lj10237
Lj10251:
	movl	-8(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	movl	%eax,-20(%ebp)
	jmp	Lj10257
	.balign 4,0x90
Lj10256:
	movl	-20(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	SYSUTILS_STRLICOMP$PCHAR$PCHAR$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj10259
	jmp	Lj10260
Lj10259:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj10237
Lj10260:
	incl	-16(%ebp)
	movl	-8(%ebp),%eax
	movb	(%eax),%dl
	movl	-16(%ebp),%eax
	call	SYSUTILS_STRISCAN$PCHAR$CHAR$$PCHAR
	movl	%eax,-16(%ebp)
Lj10257:
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10256
	jmp	Lj10258
Lj10258:
Lj10237:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRPAS$PCHAR$$ANSISTRING
SYSUTILS_STRPAS$PCHAR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_pchar_to_ansistr
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRALLOC$LONGWORD$$PCHAR
SYSUTILS_STRALLOC$LONGWORD$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	addl	$4,-4(%ebp)
	movl	-4(%ebp),%edx
	leal	-8(%ebp),%eax
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,(%edx)
	addl	$4,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRNEW$PCHAR$$PCHAR
SYSUTILS_STRNEW$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj10293
	jmp	Lj10295
Lj10295:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	testb	%al,%al
	je	Lj10293
	jmp	Lj10294
Lj10293:
	jmp	Lj10289
Lj10294:
	movl	-4(%ebp),%eax
	call	FPC_PCHAR_LENGTH
	incl	%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	call	SYSUTILS_STRALLOC$LONGWORD$$PCHAR
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10304
	jmp	Lj10305
Lj10304:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSUTILS_STRMOVE$PCHAR$PCHAR$LONGINT$$PCHAR
Lj10305:
Lj10289:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRPCOPY$PCHAR$ANSISTRING$$PCHAR
SYSUTILS_STRPCOPY$PCHAR$ANSISTRING$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj10314
	movl	-8(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj10321
	movl	-4(%ecx),%ecx
Lj10321:
	incl	%ecx
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj10324
	movl	$FPC_EMPTYCHAR,%edx
Lj10324:
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRMOVE$PCHAR$PCHAR$LONGINT$$PCHAR
	movl	%eax,-12(%ebp)
Lj10314:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj10315
	call	FPC_RERAISE
Lj10315:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRPLCOPY$PCHAR$ANSISTRING$LONGWORD$$PCHAR
SYSUTILS_STRPLCOPY$PCHAR$ANSISTRING$LONGWORD$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj10329
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10336
	jmp	Lj10335
Lj10336:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10334
	jmp	Lj10335
Lj10334:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj10339
	movl	-4(%eax),%eax
Lj10339:
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-12(%ebp),%eax
	ja	Lj10340
	jmp	Lj10341
Lj10340:
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj10341:
	movl	-8(%ebp),%edx
	testl	%edx,%edx
	jne	Lj10346
	movl	$FPC_EMPTYCHAR,%edx
Lj10346:
	movl	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRMOVE$PCHAR$PCHAR$LONGINT$$PCHAR
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movb	$0,(%eax,%edx,1)
Lj10335:
Lj10329:
	call	FPC_POPADDRSTACK
	leal	-8(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj10330
	call	FPC_RERAISE
Lj10330:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRDISPOSE$PCHAR
SYSUTILS_STRDISPOSE$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10355
	jmp	Lj10356
Lj10355:
	subl	$4,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_FREEMEM$POINTER$LONGWORD
Lj10356:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRBUFSIZE$PCHAR$$LONGWORD
SYSUTILS_STRBUFSIZE$PCHAR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10363
	jmp	Lj10364
Lj10363:
	movl	-4(%ebp),%eax
	subl	$4,%eax
	movl	(%eax),%eax
	subl	$4,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj10367
Lj10364:
	movl	$0,-8(%ebp)
Lj10367:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_INITINTERNATIONALGENERIC:
	pushl	%ebp
	movl	%esp,%ebp
	movl	$U_SYSUTILS_SYSLOCALE,%eax
	movb	$0,%cl
	movl	$16,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	cmpl	$0,U_SYSTEM_WIDESTRINGMANAGER+32
	jne	Lj10379
	jmp	Lj10378
Lj10378:
	movl	$SYSUTILS_GENERICANSIUPPERCASE$ANSISTRING$$ANSISTRING,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+32
Lj10379:
	cmpl	$0,U_SYSTEM_WIDESTRINGMANAGER+36
	jne	Lj10383
	jmp	Lj10382
Lj10382:
	movl	$SYSUTILS_GENERICANSILOWERCASE$ANSISTRING$$ANSISTRING,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+36
Lj10383:
	cmpl	$0,U_SYSTEM_WIDESTRINGMANAGER+40
	jne	Lj10387
	jmp	Lj10386
Lj10386:
	movl	$SYSUTILS_GENERICANSICOMPARESTR$ANSISTRING$ANSISTRING$$LONGINT,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+40
Lj10387:
	cmpl	$0,U_SYSTEM_WIDESTRINGMANAGER+44
	jne	Lj10391
	jmp	Lj10390
Lj10390:
	movl	$SYSUTILS_GENERICANSICOMPARETEXT$ANSISTRING$ANSISTRING$$LONGINT,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+44
Lj10391:
	cmpl	$0,U_SYSTEM_WIDESTRINGMANAGER+48
	jne	Lj10395
	jmp	Lj10394
Lj10394:
	movl	$SYSUTILS_GENERICANSISTRCOMP$PCHAR$PCHAR$$LONGINT,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+48
Lj10395:
	cmpl	$0,U_SYSTEM_WIDESTRINGMANAGER+52
	jne	Lj10399
	jmp	Lj10398
Lj10398:
	movl	$SYSUTILS_GENERICANSISTRICOMP$PCHAR$PCHAR$$LONGINT,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+52
Lj10399:
	cmpl	$0,U_SYSTEM_WIDESTRINGMANAGER+56
	jne	Lj10403
	jmp	Lj10402
Lj10402:
	movl	$SYSUTILS_GENERICANSISTRLCOMP$PCHAR$PCHAR$LONGWORD$$LONGINT,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+56
Lj10403:
	cmpl	$0,U_SYSTEM_WIDESTRINGMANAGER+60
	jne	Lj10407
	jmp	Lj10406
Lj10406:
	movl	$SYSUTILS_GENERICANSISTRLICOMP$PCHAR$PCHAR$LONGWORD$$LONGINT,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+60
Lj10407:
	cmpl	$0,U_SYSTEM_WIDESTRINGMANAGER+64
	jne	Lj10411
	jmp	Lj10410
Lj10410:
	movl	$SYSUTILS_GENERICANSISTRLOWER$PCHAR$$PCHAR,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+64
Lj10411:
	cmpl	$0,U_SYSTEM_WIDESTRINGMANAGER+68
	jne	Lj10415
	jmp	Lj10414
Lj10414:
	movl	$SYSUTILS_GENERICANSISTRUPPER$PCHAR$$PCHAR,%eax
	movl	%eax,U_SYSTEM_WIDESTRINGMANAGER+68
Lj10415:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSICOMPAREFILENAME$ANSISTRING$ANSISTRING$$LONGINT
SYSUTILS_ANSICOMPAREFILENAME$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	cmpb	$0,TC_SYSTEM_FILENAMECASESENSITIVE
	jne	Lj10420
	jmp	Lj10421
Lj10420:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+40,%ecx
	call	*%ecx
	movl	%eax,-12(%ebp)
	jmp	Lj10430
Lj10421:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+44,%ecx
	call	*%ecx
	movl	%eax,-12(%ebp)
Lj10430:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_SAMEFILENAME$ANSISTRING$ANSISTRING$$BOOLEAN
SYSUTILS_SAMEFILENAME$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_ANSICOMPAREFILENAME$ANSISTRING$ANSISTRING$$LONGINT
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSILOWERCASEFILENAME$ANSISTRING$$ANSISTRING
SYSUTILS_ANSILOWERCASEFILENAME$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+36,%ecx
	call	*%ecx
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSIUPPERCASEFILENAME$ANSISTRING$$ANSISTRING
SYSUTILS_ANSIUPPERCASEFILENAME$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+32,%ecx
	call	*%ecx
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSIPOS$ANSISTRING$ANSISTRING$$LONGINT
SYSUTILS_ANSIPOS$ANSISTRING$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_POS$ANSISTRING$ANSISTRING$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSISTRPOS$PCHAR$PCHAR$$PCHAR
SYSUTILS_ANSISTRPOS$PCHAR$PCHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRPOS$PCHAR$PCHAR$$PCHAR
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSISTRRSCAN$PCHAR$CHAR$$PCHAR
SYSUTILS_ANSISTRRSCAN$PCHAR$CHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-8(%ebp),%dl
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRRSCAN$PCHAR$CHAR$$PCHAR
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ANSISTRSCAN$PCHAR$CHAR$$PCHAR
SYSUTILS_ANSISTRSCAN$PCHAR$CHAR$$PCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	-8(%ebp),%dl
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRSCAN$PCHAR$CHAR$$PCHAR
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_HASHNAME$PCHAR$$LONGWORD
SYSUTILS_HASHNAME$PCHAR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	call	fpc_pchar_length
	movl	%eax,%ebx
	movl	$1,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jb	Lj10496
	decl	-20(%ebp)
	.balign 4,0x90
Lj10497:
	incl	-20(%ebp)
	movl	-12(%ebp),%eax
	shll	$4,%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movb	(%edx,%eax,1),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	movzbl	%al,%eax
	addl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	andl	$-268435456,%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj10506
	jmp	Lj10507
Lj10506:
	movl	-16(%ebp),%eax
	shrl	$24,%eax
	movl	-12(%ebp),%edx
	xorl	%edx,%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	xorl	%eax,%edx
	movl	%edx,-12(%ebp)
Lj10507:
	cmpl	-20(%ebp),%ebx
	ja	Lj10497
Lj10496:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj10512
	jmp	Lj10513
Lj10512:
	movl	$-1,-8(%ebp)
	jmp	Lj10516
Lj10513:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj10516:
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRIM$WIDESTRING$$WIDESTRING
SYSUTILS_TRIM$WIDESTRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj10523
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj10523:
	movl	%eax,-16(%ebp)
	jmp	Lj10525
	.balign 4,0x90
Lj10524:
	decl	-16(%ebp)
Lj10525:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj10527
	jmp	Lj10526
Lj10527:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movw	-2(%eax,%edx,2),%ax
	cmpw	$32,%ax
	jbe	Lj10524
	jmp	Lj10526
Lj10526:
	movl	$1,-12(%ebp)
	jmp	Lj10531
	.balign 4,0x90
Lj10530:
	incl	-12(%ebp)
Lj10531:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj10533
	jmp	Lj10532
Lj10533:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movw	-2(%eax,%edx,2),%ax
	cmpw	$32,%ax
	jbe	Lj10530
	jmp	Lj10532
Lj10532:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	incl	%ecx
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_copy
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRIMLEFT$WIDESTRING$$WIDESTRING
SYSUTILS_TRIMLEFT$WIDESTRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj10546
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj10546:
	movl	%eax,-16(%ebp)
	movl	$1,-12(%ebp)
	jmp	Lj10550
	.balign 4,0x90
Lj10549:
	incl	-12(%ebp)
Lj10550:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj10552
	jmp	Lj10551
Lj10552:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movw	-2(%eax,%edx,2),%ax
	cmpw	$32,%ax
	jbe	Lj10549
	jmp	Lj10551
Lj10551:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_copy
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRIMRIGHT$WIDESTRING$$WIDESTRING
SYSUTILS_TRIMRIGHT$WIDESTRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj10565
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj10565:
	movl	%eax,-12(%ebp)
	jmp	Lj10567
	.balign 4,0x90
Lj10566:
	decl	-12(%ebp)
Lj10567:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj10569
	jmp	Lj10568
Lj10569:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movw	-2(%eax,%edx,2),%ax
	cmpw	$32,%ax
	jbe	Lj10566
	jmp	Lj10568
Lj10568:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_unicodestr_copy
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_WIDEUPPERCASE$WIDESTRING$$WIDESTRING
SYSUTILS_WIDEUPPERCASE$WIDESTRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+8,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_WIDELOWERCASE$WIDESTRING$$WIDESTRING
SYSUTILS_WIDELOWERCASE$WIDESTRING$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+12,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_WIDECOMPARESTR$WIDESTRING$WIDESTRING$$LONGINT
SYSUTILS_WIDECOMPARESTR$WIDESTRING$WIDESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+16,%ecx
	call	*%ecx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_WIDESAMESTR$WIDESTRING$WIDESTRING$$BOOLEAN
SYSUTILS_WIDESAMESTR$WIDESTRING$WIDESTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+16,%ecx
	call	*%ecx
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_WIDECOMPARETEXT$WIDESTRING$WIDESTRING$$LONGINT
SYSUTILS_WIDECOMPARETEXT$WIDESTRING$WIDESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+20,%ecx
	call	*%ecx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_WIDESAMETEXT$WIDESTRING$WIDESTRING$$BOOLEAN
SYSUTILS_WIDESAMETEXT$WIDESTRING$WIDESTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+20,%ecx
	call	*%ecx
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_WIDEFORMAT$WIDESTRING$array_of_const$TFORMATSETTINGS$$WIDESTRING
SYSUTILS_WIDEFORMAT$WIDESTRING$array_of_const$TFORMATSETTINGS$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$384,%esp
	movl	%ebx,-384(%ebp)
	movl	%esi,-380(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-40(%ebp)
	movl	$0,-376(%ebp)
	movl	$0,-116(%ebp)
	movl	$0,-112(%ebp)
	movl	$0,-108(%ebp)
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj10638
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj10645
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj10645:
	movl	%eax,-32(%ebp)
	movl	$1,-16(%ebp)
	movl	$1,-20(%ebp)
	movl	$0,-24(%ebp)
	jmp	Lj10653
	.balign 4,0x90
Lj10652:
	jmp	Lj10656
	.balign 4,0x90
Lj10655:
	incl	-16(%ebp)
Lj10656:
	movl	-16(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jle	Lj10658
	jmp	Lj10657
Lj10658:
	movl	-4(%ebp),%edx
	movl	-16(%ebp),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$37,%ax
	jne	Lj10655
	jmp	Lj10657
Lj10657:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj10659
	jmp	Lj10660
Lj10659:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_copy
	movl	-108(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	fpc_unicodestr_concat
Lj10660:
	movl	-16(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jl	Lj10675
	jmp	Lj10676
Lj10675:
	movl	%ebp,%eax
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_READFORMAT$$CHAR
	movb	%al,-54(%ebp)
	movb	-54(%ebp),%al
	cmpb	$37,%al
	jb	Lj10682
	subb	$37,%al
	je	Lj10693
	subb	$31,%al
	je	Lj10683
	decb	%al
	je	Lj10685
	decb	%al
	je	Lj10686
	decb	%al
	je	Lj10687
	subb	$6,%al
	je	Lj10689
	decb	%al
	je	Lj10688
	subb	$2,%al
	je	Lj10691
	subb	$3,%al
	je	Lj10690
	subb	$2,%al
	je	Lj10684
	subb	$3,%al
	je	Lj10692
	jmp	Lj10682
Lj10683:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$0,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj10694
	jmp	Lj10695
Lj10694:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%ebx
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	leal	-40(%ebp),%ecx
	movl	$-1,%edx
	movl	%ebx,%eax
	call	fpc_unicodestr_sint
	jmp	Lj10708
Lj10695:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$16,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj10709
	jmp	Lj10710
Lj10709:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	leal	-40(%ebp),%edx
	movl	$-1,%eax
	call	fpc_unicodestr_int64
	jmp	Lj10723
Lj10710:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$17,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj10724
	jmp	Lj10725
Lj10724:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	leal	-40(%ebp),%edx
	movl	$-1,%eax
	call	fpc_unicodestr_int64
Lj10725:
Lj10723:
Lj10708:
	movl	-48(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-40(%ebp),%edx
	testl	%edx,%edx
	je	Lj10742
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj10742:
	movl	-52(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-44(%ebp)
	movl	-40(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$45,%ax
	jne	Lj10743
	jmp	Lj10744
Lj10743:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%ecx
	movl	-44(%ebp),%edx
	movb	$48,%al
	call	SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
	movl	-112(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-108(%ebp),%edx
	movl	-40(%ebp),%ecx
	leal	-40(%ebp),%eax
	call	fpc_unicodestr_concat
	jmp	Lj10761
Lj10744:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-44(%ebp),%edx
	incl	%edx
	leal	-112(%ebp),%ecx
	movb	$48,%al
	call	SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
	movl	-112(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-108(%ebp),%eax
	leal	-40(%ebp),%edx
	movl	$2,%ecx
	call	SYSTEM_INSERT$UNICODESTRING$UNICODESTRING$LONGINT
Lj10761:
	jmp	Lj10681
Lj10684:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$0,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj10778
	jmp	Lj10779
Lj10778:
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%ebx
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	leal	-40(%ebp),%ecx
	movl	$-1,%edx
	movl	%ebx,%eax
	call	fpc_unicodestr_uint
	jmp	Lj10792
Lj10779:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$16,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj10793
	jmp	Lj10794
Lj10793:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	leal	-40(%ebp),%edx
	movl	$-1,%eax
	call	fpc_unicodestr_qword
	jmp	Lj10807
Lj10794:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$17,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj10808
	jmp	Lj10809
Lj10808:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	leal	-40(%ebp),%edx
	movl	$-1,%eax
	call	fpc_unicodestr_qword
Lj10809:
Lj10807:
Lj10792:
	movl	-48(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-40(%ebp),%edx
	testl	%edx,%edx
	je	Lj10826
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj10826:
	movl	-52(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-44(%ebp)
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%ecx
	movl	-44(%ebp),%edx
	movb	$48,%al
	call	SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
	movl	-112(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-108(%ebp),%edx
	movl	-40(%ebp),%ecx
	leal	-40(%ebp),%eax
	call	fpc_unicodestr_concat
	jmp	Lj10681
Lj10685:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$12,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj10843
	jmp	Lj10844
Lj10843:
	leal	-116(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-116(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%edx
	movl	$3,%ecx
	movl	$1,%eax
	call	SYSUTILS_FLOATTOSTRF$crcDC46F419
	movl	-112(%ebp),%eax
	leal	-116(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-116(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-116(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj10869
Lj10844:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$3,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj10870
	jmp	Lj10871
Lj10870:
	leal	-116(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-116(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movzwl	8(%eax),%edx
	pushl	%edx
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%edx
	movl	$3,%ecx
	movl	$1,%eax
	call	SYSUTILS_FLOATTOSTRF$crc4976C91A
	movl	-112(%ebp),%eax
	leal	-116(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-116(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-116(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj10871:
Lj10869:
	jmp	Lj10681
Lj10686:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$12,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj10896
	jmp	Lj10897
Lj10896:
	leal	-116(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-116(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	movl	$9999,%edx
	movl	$2,%eax
	call	SYSUTILS_FLOATTOSTRF$crcDC46F419
	movl	-112(%ebp),%eax
	leal	-116(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-116(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-116(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj10922
Lj10897:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$3,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj10923
	jmp	Lj10924
Lj10923:
	leal	-116(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-116(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movzwl	8(%eax),%edx
	pushl	%edx
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	movl	$9999,%edx
	movl	$2,%eax
	call	SYSUTILS_FLOATTOSTRF$crc4976C91A
	movl	-112(%ebp),%eax
	leal	-116(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-116(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-116(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj10924:
Lj10922:
	jmp	Lj10681
Lj10687:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$12,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj10949
	jmp	Lj10950
Lj10949:
	leal	-116(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-116(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%edx
	movl	$3,%ecx
	movl	$0,%eax
	call	SYSUTILS_FLOATTOSTRF$crcDC46F419
	movl	-112(%ebp),%eax
	leal	-116(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-116(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-116(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj10975
Lj10950:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$3,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj10976
	jmp	Lj10977
Lj10976:
	leal	-116(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-116(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%edx
	movzwl	8(%edx),%eax
	pushl	%eax
	pushl	4(%edx)
	pushl	(%edx)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%edx
	movl	$3,%ecx
	movl	$0,%eax
	call	SYSUTILS_FLOATTOSTRF$crc4976C91A
	movl	-112(%ebp),%eax
	leal	-116(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-116(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-116(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj10977:
Lj10975:
	jmp	Lj10681
Lj10688:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$12,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11002
	jmp	Lj11003
Lj11002:
	leal	-116(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-116(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	movl	$9999,%edx
	movl	$3,%eax
	call	SYSUTILS_FLOATTOSTRF$crcDC46F419
	movl	-112(%ebp),%eax
	leal	-116(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-116(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-116(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj11028
Lj11003:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$3,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11029
	jmp	Lj11030
Lj11029:
	leal	-116(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-116(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%edx
	movzwl	8(%edx),%eax
	pushl	%eax
	pushl	4(%edx)
	pushl	(%edx)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	movl	$9999,%edx
	movl	$3,%eax
	call	SYSUTILS_FLOATTOSTRF$crc4976C91A
	movl	-112(%ebp),%eax
	leal	-116(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-116(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-116(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj11030:
Lj11028:
	jmp	Lj10681
Lj10689:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$3,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11055
	jmp	Lj11056
Lj11055:
	leal	-116(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-116(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movzwl	8(%eax),%edx
	pushl	%edx
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	movl	$9999,%edx
	movl	$4,%eax
	call	SYSUTILS_FLOATTOSTRF$crc4976C91A
	movl	-112(%ebp),%eax
	leal	-116(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-116(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-116(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj11081
Lj11056:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$12,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11082
	jmp	Lj11083
Lj11082:
	leal	-116(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-116(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	movl	$9999,%edx
	movl	$4,%eax
	call	SYSUTILS_FLOATTOSTRF$crcDC46F419
	movl	-112(%ebp),%eax
	leal	-116(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-116(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-116(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj11083:
Lj11081:
	jmp	Lj10681
Lj10690:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$4,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11108
	jmp	Lj11109
Lj11108:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	leal	-36(%ebp),%edx
	call	fpc_shortstr_to_unicodestr
	jmp	Lj11120
Lj11109:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$2,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11121
	jmp	Lj11122
Lj11121:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movb	4(%eax,%edx,8),%al
	leal	-36(%ebp),%edx
	call	fpc_char_to_unicodestr
	jmp	Lj11133
Lj11122:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$6,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11134
	jmp	Lj11135
Lj11134:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	leal	-36(%ebp),%edx
	call	fpc_pchar_to_unicodestr
	jmp	Lj11146
Lj11135:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$10,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11147
	jmp	Lj11148
Lj11147:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	leal	-36(%ebp),%edx
	call	fpc_pwidechar_to_unicodestr
	jmp	Lj11159
Lj11148:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$9,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11160
	jmp	Lj11161
Lj11160:
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movw	4(%edx,%eax,8),%ax
	leal	-36(%ebp),%edx
	call	fpc_uchar_to_unicodestr
	jmp	Lj11172
Lj11161:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$15,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11173
	jmp	Lj11174
Lj11173:
	movl	-8(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	4(%ebx,%esi,8),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-36(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	4(%ebx,%esi,8),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj11183
Lj11174:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$11,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11184
	jmp	Lj11185
Lj11184:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	leal	-36(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	jmp	Lj11196
Lj11185:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$18,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11197
	jmp	Lj11198
Lj11197:
	movl	-8(%ebp),%esi
	movl	-28(%ebp),%ebx
	movl	4(%esi,%ebx,8),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-36(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	4(%esi,%ebx,8),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj11207
Lj11198:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$13,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11208
	jmp	Lj11209
Lj11208:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	leal	-36(%ebp),%edx
	call	SYSTEM_assign$VARIANT$$WIDESTRING
Lj11209:
Lj11207:
Lj11196:
Lj11183:
Lj11172:
Lj11159:
Lj11146:
Lj11133:
Lj11120:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj11222
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj11222:
	movl	%eax,-44(%ebp)
	movl	-52(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj11225
	jmp	Lj11224
Lj11225:
	movl	-44(%ebp),%eax
	cmpl	-52(%ebp),%eax
	jg	Lj11223
	jmp	Lj11224
Lj11223:
	movl	-52(%ebp),%eax
	movl	%eax,-44(%ebp)
Lj11224:
	leal	-116(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-116(%ebp)
	leal	-116(%ebp),%eax
	pushl	%eax
	movl	-44(%ebp),%ecx
	movl	-36(%ebp),%eax
	movl	$1,%edx
	call	fpc_unicodestr_copy
	movl	-116(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-116(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj10681
Lj10691:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$5,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	leal	-116(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-116(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	leal	-372(%ebp),%edx
	movb	$8,%al
	call	SYSTEM_HEXSTR$QWORD$BYTE$$SHORTSTRING
	leal	-372(%ebp),%eax
	leal	-116(%ebp),%edx
	call	fpc_shortstr_to_unicodestr
	movl	-116(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-116(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj10681
Lj10692:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$0,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11256
	jmp	Lj11257
Lj11256:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	$0,%edx
	movl	%eax,-64(%ebp)
	movl	%edx,-60(%ebp)
	movl	$16,-44(%ebp)
	jmp	Lj11268
Lj11257:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$17,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11269
	jmp	Lj11270
Lj11269:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	(%eax),%edx
	movl	%edx,-64(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	$31,-44(%ebp)
	jmp	Lj11281
Lj11270:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$16,%edx
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	(%eax),%edx
	movl	%edx,-64(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	$31,-44(%ebp)
Lj11281:
Lj11268:
	movl	-52(%ebp),%eax
	cmpl	-44(%ebp),%eax
	jg	Lj11292
	jmp	Lj11293
Lj11292:
	leal	-116(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-116(%ebp)
	pushl	-60(%ebp)
	pushl	-64(%ebp)
	leal	-372(%ebp),%edx
	movb	-44(%ebp),%al
	call	SYSTEM_HEXSTR$INT64$BYTE$$SHORTSTRING
	leal	-372(%ebp),%eax
	leal	-116(%ebp),%edx
	call	fpc_shortstr_to_unicodestr
	movl	-116(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-116(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj11306
Lj11293:
	movl	$1,-44(%ebp)
	jmp	Lj11310
	.balign 4,0x90
Lj11309:
	incl	-44(%ebp)
Lj11310:
	movl	-44(%ebp),%ecx
	shll	$2,%ecx
	movl	$1,%edx
	movl	$0,%eax
	cmpl	$64,%ecx
	jl	Lj11313
	xorl	%edx,%edx
	xorl	%eax,%eax
	jmp	Lj11315
Lj11313:
	cmpl	$32,%ecx
	jl	Lj11314
	subl	$32,%ecx
	shll	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj11315
Lj11314:
	shldl	%cl,%edx,%eax
	shll	%cl,%edx
Lj11315:
	cmpl	-60(%ebp),%eax
	jb	Lj11312
	ja	Lj11311
	cmpl	-64(%ebp),%edx
	jbe	Lj11312
	jmp	Lj11311
	jmp	Lj11311
Lj11312:
	movl	-44(%ebp),%eax
	cmpl	$16,%eax
	jl	Lj11309
	jmp	Lj11311
Lj11311:
	movl	-44(%ebp),%eax
	cmpl	-52(%ebp),%eax
	jg	Lj11316
	jmp	Lj11317
Lj11316:
	movl	-44(%ebp),%eax
	movl	%eax,-52(%ebp)
Lj11317:
	leal	-116(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-116(%ebp)
	pushl	-60(%ebp)
	pushl	-64(%ebp)
	leal	-372(%ebp),%edx
	movb	-52(%ebp),%al
	call	SYSTEM_HEXSTR$INT64$BYTE$$SHORTSTRING
	leal	-372(%ebp),%eax
	leal	-116(%ebp),%edx
	call	fpc_shortstr_to_unicodestr
	movl	-116(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-116(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj11306:
	jmp	Lj10681
Lj10693:
	movl	$_$SYSUTILS$_Ld102,%ebx
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	%ebx,-40(%ebp)
	jmp	Lj10681
Lj10682:
Lj10681:
	movl	-48(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj11334
	jmp	Lj11335
Lj11334:
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj11338
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj11338:
	cmpl	-48(%ebp),%eax
	jl	Lj11336
	jmp	Lj11337
Lj11336:
	movb	-53(%ebp),%al
	testb	%al,%al
	je	Lj11339
	jmp	Lj11340
Lj11339:
	leal	-376(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-376(%ebp)
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj11347
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj11347:
	movl	-48(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-372(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-372(%ebp),%eax
	leal	-376(%ebp),%edx
	call	fpc_shortstr_to_unicodestr
	movl	-376(%ebp),%edx
	movl	-40(%ebp),%ecx
	leal	-40(%ebp),%eax
	call	fpc_unicodestr_concat
	jmp	Lj11356
Lj11340:
	leal	-376(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-376(%ebp)
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj11363
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj11363:
	movl	-48(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-372(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-372(%ebp),%eax
	leal	-376(%ebp),%edx
	call	fpc_shortstr_to_unicodestr
	movl	-376(%ebp),%ecx
	movl	-40(%ebp),%edx
	leal	-40(%ebp),%eax
	call	fpc_unicodestr_concat
Lj11356:
Lj11337:
Lj11335:
	movl	-40(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	fpc_unicodestr_concat
Lj10676:
	incl	-16(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj10653:
	movl	-16(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jle	Lj10652
	jmp	Lj10654
Lj10654:
Lj10638:
	call	FPC_POPADDRSTACK
	leal	-376(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-376(%ebp)
	leal	-116(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-116(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-36(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-36(%ebp)
	leal	-40(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-40(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj10639
	call	FPC_RERAISE
Lj10639:
	movl	-384(%ebp),%ebx
	movl	-380(%ebp),%esi
	leave
	ret	$8

.text
	.balign 4,0x90
SYSUTILS_WIDEFORMAT$crcEF06C965_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj11392
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movl	-44(%eax),%eax
	cmpl	$-1,%eax
	je	Lj11397
	jmp	Lj11398
Lj11397:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-24(%eax),%eax
	movl	%eax,-28(%edx)
	jmp	Lj11401
Lj11398:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-44(%eax),%eax
	movl	%eax,-28(%edx)
Lj11401:
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	incl	%eax
	movl	-12(%ebp),%edx
	movl	%eax,-24(%edx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-12(%edx),%eax
	jg	Lj11406
	jmp	Lj11408
Lj11408:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	movl	(%edx,%eax,8),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj11406
	jmp	Lj11407
Lj11406:
	cmpb	$0,-8(%ebp)
	jne	Lj11409
	jmp	Lj11410
Lj11409:
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%eax),%eax
	leal	-60(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
	movl	-60(%ebp),%edx
	movl	$3,%eax
	call	SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING
Lj11410:
	movl	-12(%ebp),%eax
	decl	-24(%eax)
	jmp	Lj11392
Lj11407:
	movb	$1,-13(%ebp)
Lj11392:
	call	FPC_POPADDRSTACK
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj11393
	call	FPC_RERAISE
Lj11393:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_WIDEFORMAT$crcEF06C965_READFORMAT$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$14,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$-1,-44(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,-48(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,-52(%eax)
	movl	$-1,-12(%ebp)
	movl	-4(%ebp),%eax
	incl	-16(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$37,%ax
	je	Lj11429
	jmp	Lj11430
Lj11429:
	movb	$37,-5(%ebp)
	jmp	Lj10624
Lj11430:
	movl	%ebp,%eax
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_READFORMAT$$CHAR_READINDEX
	movl	%ebp,%eax
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_READFORMAT$$CHAR_READLEFT
	movl	%ebp,%eax
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_READFORMAT$$CHAR_READWIDTH
	movl	%ebp,%eax
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_READFORMAT$$CHAR_READPREC
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	call	SYSTEM_UPCASE$WIDECHAR$$WIDECHAR
	movw	%ax,-14(%ebp)
	movw	-14(%ebp),%ax
	cmpw	$255,%ax
	ja	Lj11445
	jmp	Lj11446
Lj11445:
	movb	$255,-5(%ebp)
	jmp	Lj11449
Lj11446:
	movw	-14(%ebp),%ax
	call	fpc_uchar_to_char
	movb	%al,-5(%ebp)
Lj11449:
Lj10624:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_WIDEFORMAT$crcEF06C965_READFORMAT$$CHAR_READPREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$46,%ax
	je	Lj11454
	jmp	Lj11455
Lj11454:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	-16(%eax)
	movl	-4(%ebp),%eax
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_READFORMAT$$CHAR_READINTEGER
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	cmpl	$-1,%eax
	je	Lj11458
	jmp	Lj11459
Lj11458:
	movl	-4(%ebp),%eax
	movl	$0,-12(%eax)
Lj11459:
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	%eax,-52(%edx)
Lj11455:
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_WIDEFORMAT$crcEF06C965_READFORMAT$$CHAR_READWIDTH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_READFORMAT$$CHAR_READINTEGER
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj11466
	jmp	Lj11467
Lj11466:
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	%eax,-48(%edx)
	movl	-4(%ebp),%eax
	movl	$-1,-12(%eax)
Lj11467:
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_WIDEFORMAT$crcEF06C965_READFORMAT$$CHAR_READLEFT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$45,%ax
	je	Lj11472
	jmp	Lj11473
Lj11472:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$1,-53(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	-16(%eax)
	jmp	Lj11476
Lj11473:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$0,-53(%eax)
Lj11476:
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_WIDEFORMAT$crcEF06C965_READFORMAT$$CHAR_READINDEX:
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
	jne	Lj11479
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$58,%ax
	jne	Lj11482
	jmp	Lj11483
Lj11482:
	movl	-4(%ebp),%eax
	call	SYSUTILS_WIDEFORMAT$crcEF06C965_READFORMAT$$CHAR_READINTEGER
	jmp	Lj11486
Lj11483:
	movl	-4(%ebp),%eax
	movl	$0,-12(%eax)
Lj11486:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$58,%ax
	je	Lj11489
	jmp	Lj11490
Lj11489:
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	cmpl	$-1,%eax
	je	Lj11491
	jmp	Lj11492
Lj11491:
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%eax
	leal	-48(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
	movl	-48(%ebp),%edx
	movl	$2,%eax
	call	SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING
Lj11492:
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	%eax,-44(%edx)
	movl	-4(%ebp),%eax
	movl	$-1,-12(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	-16(%eax)
Lj11490:
Lj11479:
	call	FPC_POPADDRSTACK
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj11480
	call	FPC_RERAISE
Lj11480:
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_WIDEFORMAT$crcEF06C965_READFORMAT$$CHAR_READINTEGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj11505
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj11508
	jmp	Lj11509
Lj11508:
	jmp	Lj11505
Lj11509:
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movl	%eax,-20(%edx)
	jmp	Lj11513
	.balign 4,0x90
Lj11512:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	-16(%eax)
Lj11513:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-16(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj11516
	jmp	Lj11514
Lj11516:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$57,%ax
	jbe	Lj11515
	jmp	Lj11514
Lj11515:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$48,%ax
	jae	Lj11512
	jmp	Lj11514
Lj11514:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-16(%eax),%eax
	cmpl	-32(%edx),%eax
	jg	Lj11517
	jmp	Lj11518
Lj11517:
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%eax
	leal	-56(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
	movl	-56(%ebp),%edx
	movl	$1,%eax
	call	SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING
Lj11518:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$42,%ax
	je	Lj11527
	jmp	Lj11528
Lj11527:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-44(%eax),%eax
	cmpl	$-1,%eax
	je	Lj11529
	jmp	Lj11530
Lj11529:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-24(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj11533
Lj11530:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-44(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	-44(%eax)
Lj11533:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-16(%eax),%eax
	cmpl	-20(%edx),%eax
	jg	Lj11536
	jmp	Lj11538
Lj11538:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-12(%eax),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj11536
	jmp	Lj11537
Lj11536:
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%eax
	leal	-56(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
	movl	-56(%ebp),%edx
	movl	$1,%eax
	call	SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING
Lj11537:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%edx,-24(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,8),%eax
	testl	%eax,%eax
	jl	Lj11550
	testl	%eax,%eax
	je	Lj11551
	subl	$16,%eax
	je	Lj11552
	decl	%eax
	je	Lj11553
	jmp	Lj11550
Lj11551:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%eax,%edx,8),%eax
	movl	%eax,-12(%ecx)
	jmp	Lj11549
Lj11552:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	-4(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,-12(%edx)
	jmp	Lj11549
Lj11553:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-8(%eax),%edx
	movl	-12(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movl	-4(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,-12(%edx)
	jmp	Lj11549
Lj11550:
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%eax
	leal	-56(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
	movl	-56(%ebp),%edx
	movl	$1,%eax
	call	SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING
Lj11549:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	-16(%eax)
	jmp	Lj11568
Lj11528:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-20(%eax),%eax
	cmpl	-16(%edx),%eax
	jl	Lj11569
	jmp	Lj11570
Lj11569:
	leal	-64(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-16(%eax),%ecx
	movl	-20(%edx),%eax
	subl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%eax
	call	fpc_unicodestr_copy
	movl	-64(%ebp),%edx
	leal	-60(%ebp),%ecx
	movl	$4,%eax
	call	fpc_val_sint_unicodestr
	movl	-4(%ebp),%edx
	movl	%eax,-12(%edx)
	movw	-60(%ebp),%ax
	movw	%ax,-6(%ebp)
	movzwl	-6(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj11589
	jmp	Lj11590
Lj11589:
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%eax
	leal	-68(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
	movl	-68(%ebp),%edx
	movl	$1,%eax
	call	SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING
Lj11590:
	jmp	Lj11599
Lj11570:
	movl	-4(%ebp),%eax
	movl	$-1,-12(%eax)
Lj11599:
Lj11568:
Lj11505:
	call	FPC_POPADDRSTACK
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj11506
	call	FPC_RERAISE
Lj11506:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_WIDEFORMAT$WIDESTRING$array_of_const$$WIDESTRING
SYSUTILS_WIDEFORMAT$WIDESTRING$array_of_const$$WIDESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_WIDEFORMAT$WIDESTRING$array_of_const$TFORMATSETTINGS$$WIDESTRING
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_WIDEFORMATBUF$crc90669634
SYSUTILS_WIDEFORMATBUF$crc90669634:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj11616
	movl	20(%ebp),%edx
	leal	-24(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	20(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj11623
	jmp	Lj11624
Lj11623:
	leal	-24(%ebp),%eax
	call	fpc_unicodestr_unique
	movl	%eax,%edx
	movl	20(%ebp),%ecx
	shll	$1,%ecx
	movl	-12(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj11624:
	leal	-20(%ebp),%eax
	pushl	%eax
	movl	12(%ebp),%ecx
	movl	16(%ebp),%edx
	movl	-24(%ebp),%eax
	call	SYSUTILS_WIDEFORMAT$WIDESTRING$array_of_const$$WIDESTRING
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj11643
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj11643:
	cmpl	-8(%ebp),%eax
	jb	Lj11641
	jmp	Lj11642
Lj11641:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj11646
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj11646:
	movl	%eax,-16(%ebp)
	jmp	Lj11647
Lj11642:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj11647:
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj11616:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-24(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj11617
	call	FPC_RERAISE
Lj11617:
	movl	-16(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	SYSUTILS_WIDEFORMATBUF$formal$LONGWORD$formal$LONGWORD$array_of_const$$LONGWORD
SYSUTILS_WIDEFORMATBUF$formal$LONGWORD$formal$LONGWORD$array_of_const$$LONGWORD:
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
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_WIDEFORMATBUF$crc90669634
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_WIDEFMTSTR$WIDESTRING$WIDESTRING$array_of_const$TFORMATSETTINGS
SYSUTILS_WIDEFMTSTR$WIDESTRING$WIDESTRING$array_of_const$TFORMATSETTINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj11688
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	pushl	%eax
	movl	12(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSUTILS_WIDEFORMAT$WIDESTRING$array_of_const$$WIDESTRING
	movl	-56(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-56(%ebp),%eax
	movl	%eax,(%ebx)
Lj11688:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj11689
	call	FPC_RERAISE
Lj11689:
	movl	-60(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_WIDEFMTSTR$WIDESTRING$WIDESTRING$array_of_const
SYSUTILS_WIDEFMTSTR$WIDESTRING$WIDESTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	8(%ebp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_WIDEFMTSTR$WIDESTRING$WIDESTRING$array_of_const$TFORMATSETTINGS
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_STRCOPY$PWIDECHAR$PWIDECHAR$$PWIDECHAR
SYSUTILS_STRCOPY$PWIDECHAR$PWIDECHAR$$PWIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-16(%ebp)
	jmp	Lj11718
	.balign 4,0x90
Lj11717:
	movl	-4(%ebp),%ebx
	movl	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movw	(%edx,%eax,2),%ax
	movw	%ax,(%ebx,%ecx,2)
	incl	-16(%ebp)
Lj11718:
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	movw	(%edx,%eax,2),%ax
	testw	%ax,%ax
	jne	Lj11717
	jmp	Lj11719
Lj11719:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movw	$0,(%eax,%edx,2)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRLCOPY$PWIDECHAR$PWIDECHAR$LONGINT$$PWIDECHAR
SYSUTILS_STRLCOPY$PWIDECHAR$PWIDECHAR$LONGINT$$PWIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	jmp	Lj11731
	.balign 4,0x90
Lj11730:
	movl	-4(%ebp),%ecx
	movl	-20(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movw	(%eax,%edx,2),%ax
	movw	%ax,(%ecx,%ebx,2)
	incl	-20(%ebp)
Lj11731:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movw	(%edx,%eax,2),%ax
	testw	%ax,%ax
	jne	Lj11735
	jmp	Lj11732
Lj11735:
	movl	-20(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj11730
	jmp	Lj11732
Lj11732:
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movw	$0,(%edx,%eax,2)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRIM$UNICODESTRING$$UNICODESTRING
SYSUTILS_TRIM$UNICODESTRING$$UNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj11744
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj11744:
	movl	%eax,-16(%ebp)
	jmp	Lj11746
	.balign 4,0x90
Lj11745:
	decl	-16(%ebp)
Lj11746:
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj11748
	jmp	Lj11747
Lj11748:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movw	-2(%eax,%edx,2),%ax
	cmpw	$32,%ax
	jbe	Lj11745
	jmp	Lj11747
Lj11747:
	movl	$1,-12(%ebp)
	jmp	Lj11752
	.balign 4,0x90
Lj11751:
	incl	-12(%ebp)
Lj11752:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj11754
	jmp	Lj11753
Lj11754:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movw	-2(%eax,%edx,2),%ax
	cmpw	$32,%ax
	jbe	Lj11751
	jmp	Lj11753
Lj11753:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	incl	%ecx
	movl	-12(%ebp),%eax
	subl	%eax,%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_copy
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRIMLEFT$UNICODESTRING$$UNICODESTRING
SYSUTILS_TRIMLEFT$UNICODESTRING$$UNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj11767
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj11767:
	movl	%eax,-16(%ebp)
	movl	$1,-12(%ebp)
	jmp	Lj11771
	.balign 4,0x90
Lj11770:
	incl	-12(%ebp)
Lj11771:
	movl	-12(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jle	Lj11773
	jmp	Lj11772
Lj11773:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movw	-2(%eax,%edx,2),%ax
	cmpw	$32,%ax
	jbe	Lj11770
	jmp	Lj11772
Lj11772:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_copy
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRIMRIGHT$UNICODESTRING$$UNICODESTRING
SYSUTILS_TRIMRIGHT$UNICODESTRING$$UNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj11786
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj11786:
	movl	%eax,-12(%ebp)
	jmp	Lj11788
	.balign 4,0x90
Lj11787:
	decl	-12(%ebp)
Lj11788:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj11790
	jmp	Lj11789
Lj11790:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movw	-2(%eax,%edx,2),%ax
	cmpw	$32,%ax
	jbe	Lj11787
	jmp	Lj11789
Lj11789:
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_unicodestr_copy
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_UNICODEUPPERCASE$UNICODESTRING$$UNICODESTRING
SYSUTILS_UNICODEUPPERCASE$UNICODESTRING$$UNICODESTRING:
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
.globl	SYSUTILS_UNICODELOWERCASE$UNICODESTRING$$UNICODESTRING
SYSUTILS_UNICODELOWERCASE$UNICODESTRING$$UNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+92,%ecx
	call	*%ecx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_UNICODECOMPARESTR$UNICODESTRING$UNICODESTRING$$LONGINT
SYSUTILS_UNICODECOMPARESTR$UNICODESTRING$UNICODESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+96,%ecx
	call	*%ecx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_UNICODESAMESTR$UNICODESTRING$UNICODESTRING$$BOOLEAN
SYSUTILS_UNICODESAMESTR$UNICODESTRING$UNICODESTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+96,%ecx
	call	*%ecx
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_UNICODECOMPARETEXT$UNICODESTRING$UNICODESTRING$$LONGINT
SYSUTILS_UNICODECOMPARETEXT$UNICODESTRING$UNICODESTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+100,%ecx
	call	*%ecx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_UNICODESAMETEXT$UNICODESTRING$UNICODESTRING$$BOOLEAN
SYSUTILS_UNICODESAMETEXT$UNICODESTRING$UNICODESTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSTEM_WIDESTRINGMANAGER+100,%ecx
	call	*%ecx
	testl	%eax,%eax
	seteb	-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_UNICODEFORMAT$UNICODESTRING$array_of_const$TFORMATSETTINGS$$UNICODESTRING
SYSUTILS_UNICODEFORMAT$UNICODESTRING$array_of_const$TFORMATSETTINGS$$UNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$380,%esp
	movl	%ebx,-380(%ebp)
	movl	%esi,-376(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-40(%ebp)
	movl	$0,-116(%ebp)
	movl	$0,-112(%ebp)
	movl	$0,-108(%ebp)
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj11859
	movl	8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,(%ebx)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj11866
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj11866:
	movl	%eax,-32(%ebp)
	movl	$1,-16(%ebp)
	movl	$1,-20(%ebp)
	movl	$0,-24(%ebp)
	jmp	Lj11874
	.balign 4,0x90
Lj11873:
	jmp	Lj11877
	.balign 4,0x90
Lj11876:
	incl	-16(%ebp)
Lj11877:
	movl	-16(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jle	Lj11879
	jmp	Lj11878
Lj11879:
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movw	-2(%eax,%edx,2),%ax
	cmpw	$37,%ax
	jne	Lj11876
	jmp	Lj11878
Lj11878:
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jg	Lj11880
	jmp	Lj11881
Lj11880:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%eax
	pushl	%eax
	movl	-16(%ebp),%ecx
	movl	-20(%ebp),%eax
	subl	%eax,%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_unicodestr_copy
	movl	-108(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	fpc_unicodestr_concat
Lj11881:
	movl	-16(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jl	Lj11896
	jmp	Lj11897
Lj11896:
	movl	%ebp,%eax
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_READFORMAT$$CHAR
	movb	%al,-54(%ebp)
	movb	-54(%ebp),%al
	cmpb	$37,%al
	jb	Lj11903
	subb	$37,%al
	je	Lj11914
	subb	$31,%al
	je	Lj11904
	decb	%al
	je	Lj11906
	decb	%al
	je	Lj11907
	decb	%al
	je	Lj11908
	subb	$6,%al
	je	Lj11910
	decb	%al
	je	Lj11909
	subb	$2,%al
	je	Lj11912
	subb	$3,%al
	je	Lj11911
	subb	$2,%al
	je	Lj11905
	subb	$3,%al
	je	Lj11913
	jmp	Lj11903
Lj11904:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$0,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11915
	jmp	Lj11916
Lj11915:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%ebx
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	leal	-40(%ebp),%ecx
	movl	$-1,%edx
	movl	%ebx,%eax
	call	fpc_unicodestr_sint
	jmp	Lj11929
Lj11916:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$16,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11930
	jmp	Lj11931
Lj11930:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	leal	-40(%ebp),%edx
	movl	$-1,%eax
	call	fpc_unicodestr_int64
	jmp	Lj11944
Lj11931:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$17,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11945
	jmp	Lj11946
Lj11945:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	leal	-40(%ebp),%edx
	movl	$-1,%eax
	call	fpc_unicodestr_int64
Lj11946:
Lj11944:
Lj11929:
	movl	-48(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-40(%ebp),%edx
	testl	%edx,%edx
	je	Lj11963
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj11963:
	movl	-52(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-44(%ebp)
	movl	-40(%ebp),%eax
	movw	(%eax),%ax
	cmpw	$45,%ax
	jne	Lj11964
	jmp	Lj11965
Lj11964:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%ecx
	movl	-44(%ebp),%edx
	movb	$48,%al
	call	SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
	movl	-112(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-108(%ebp),%edx
	movl	-40(%ebp),%ecx
	leal	-40(%ebp),%eax
	call	fpc_unicodestr_concat
	jmp	Lj11982
Lj11965:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-44(%ebp),%edx
	incl	%edx
	leal	-112(%ebp),%ecx
	movb	$48,%al
	call	SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
	movl	-112(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-108(%ebp),%eax
	leal	-40(%ebp),%edx
	movl	$2,%ecx
	call	SYSTEM_INSERT$UNICODESTRING$UNICODESTRING$LONGINT
Lj11982:
	jmp	Lj11902
Lj11905:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$0,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj11999
	jmp	Lj12000
Lj11999:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%ebx
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	leal	-40(%ebp),%ecx
	movl	$-1,%edx
	movl	%ebx,%eax
	call	fpc_unicodestr_uint
	jmp	Lj12013
Lj12000:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$16,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12014
	jmp	Lj12015
Lj12014:
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	leal	-40(%ebp),%edx
	movl	$-1,%eax
	call	fpc_unicodestr_qword
	jmp	Lj12028
Lj12015:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$17,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12029
	jmp	Lj12030
Lj12029:
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	leal	-40(%ebp),%edx
	movl	$-1,%eax
	call	fpc_unicodestr_qword
Lj12030:
Lj12028:
Lj12013:
	movl	-48(%ebp),%edx
	movl	%edx,%eax
	sarl	$31,%edx
	xorl	%edx,%eax
	subl	%edx,%eax
	movl	%eax,-48(%ebp)
	movl	-40(%ebp),%edx
	testl	%edx,%edx
	je	Lj12047
	movl	-4(%edx),%edx
	shrl	$1,%edx
Lj12047:
	movl	-52(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-44(%ebp)
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	leal	-112(%ebp),%ecx
	movl	-44(%ebp),%edx
	movb	$48,%al
	call	SYSTEM_STRINGOFCHAR$CHAR$LONGINT$$ANSISTRING
	movl	-112(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-108(%ebp),%edx
	movl	-40(%ebp),%ecx
	leal	-40(%ebp),%eax
	call	fpc_unicodestr_concat
	jmp	Lj11902
Lj11906:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$12,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12064
	jmp	Lj12065
Lj12064:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%edx
	movl	$3,%ecx
	movl	$1,%eax
	call	SYSUTILS_FLOATTOSTRF$crcDC46F419
	movl	-112(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-108(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-108(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj12090
Lj12065:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$3,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12091
	jmp	Lj12092
Lj12091:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movzwl	8(%eax),%edx
	pushl	%edx
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%edx
	movl	$3,%ecx
	movl	$1,%eax
	call	SYSUTILS_FLOATTOSTRF$crc4976C91A
	movl	-112(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-108(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-108(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj12092:
Lj12090:
	jmp	Lj11902
Lj11907:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$12,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12117
	jmp	Lj12118
Lj12117:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	movl	$9999,%edx
	movl	$2,%eax
	call	SYSUTILS_FLOATTOSTRF$crcDC46F419
	movl	-112(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-108(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-108(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj12143
Lj12118:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$3,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12144
	jmp	Lj12145
Lj12144:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movzwl	8(%eax),%edx
	pushl	%edx
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	movl	$9999,%edx
	movl	$2,%eax
	call	SYSUTILS_FLOATTOSTRF$crc4976C91A
	movl	-112(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-108(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-108(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj12145:
Lj12143:
	jmp	Lj11902
Lj11908:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$12,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12170
	jmp	Lj12171
Lj12170:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%edx
	movl	$3,%ecx
	movl	$0,%eax
	call	SYSUTILS_FLOATTOSTRF$crcDC46F419
	movl	-112(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-108(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-108(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj12196
Lj12171:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$3,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12197
	jmp	Lj12198
Lj12197:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%edx
	movzwl	8(%edx),%eax
	pushl	%eax
	pushl	4(%edx)
	pushl	(%edx)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%edx
	movl	$3,%ecx
	movl	$0,%eax
	call	SYSUTILS_FLOATTOSTRF$crc4976C91A
	movl	-112(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-108(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-108(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj12198:
Lj12196:
	jmp	Lj11902
Lj11909:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$12,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12223
	jmp	Lj12224
Lj12223:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	movl	$9999,%edx
	movl	$3,%eax
	call	SYSUTILS_FLOATTOSTRF$crcDC46F419
	movl	-112(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-108(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-108(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj12249
Lj12224:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$3,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12250
	jmp	Lj12251
Lj12250:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%edx
	movzwl	8(%edx),%eax
	pushl	%eax
	pushl	4(%edx)
	pushl	(%edx)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	movl	$9999,%edx
	movl	$3,%eax
	call	SYSUTILS_FLOATTOSTRF$crc4976C91A
	movl	-112(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-108(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-108(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj12251:
Lj12249:
	jmp	Lj11902
Lj11910:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$3,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12276
	jmp	Lj12277
Lj12276:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%edx
	movzwl	8(%edx),%eax
	pushl	%eax
	pushl	4(%edx)
	pushl	(%edx)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	movl	$9999,%edx
	movl	$4,%eax
	call	SYSUTILS_FLOATTOSTRF$crc4976C91A
	movl	-112(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-108(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-108(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj12302
Lj12277:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$12,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12303
	jmp	Lj12304
Lj12303:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	pushl	4(%eax)
	pushl	(%eax)
	movl	12(%ebp),%eax
	pushl	%eax
	leal	-112(%ebp),%eax
	pushl	%eax
	movl	-52(%ebp),%ecx
	movl	$9999,%edx
	movl	$4,%eax
	call	SYSUTILS_FLOATTOSTRF$crcDC46F419
	movl	-112(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	movl	-108(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-108(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj12304:
Lj12302:
	jmp	Lj11902
Lj11911:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$4,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12329
	jmp	Lj12330
Lj12329:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	leal	-36(%ebp),%edx
	call	fpc_shortstr_to_unicodestr
	jmp	Lj12341
Lj12330:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$2,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12342
	jmp	Lj12343
Lj12342:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movb	4(%eax,%edx,8),%al
	leal	-36(%ebp),%edx
	call	fpc_char_to_unicodestr
	jmp	Lj12354
Lj12343:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$6,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12355
	jmp	Lj12356
Lj12355:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	leal	-36(%ebp),%edx
	call	fpc_pchar_to_unicodestr
	jmp	Lj12367
Lj12356:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$10,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12368
	jmp	Lj12369
Lj12368:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	leal	-36(%ebp),%edx
	call	fpc_pwidechar_to_unicodestr
	jmp	Lj12380
Lj12369:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$9,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12381
	jmp	Lj12382
Lj12381:
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movw	4(%edx,%eax,8),%ax
	leal	-36(%ebp),%edx
	call	fpc_uchar_to_unicodestr
	jmp	Lj12393
Lj12382:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$15,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12394
	jmp	Lj12395
Lj12394:
	movl	-8(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	4(%ebx,%esi,8),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-36(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	4(%ebx,%esi,8),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj12404
Lj12395:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$11,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12405
	jmp	Lj12406
Lj12405:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	leal	-36(%ebp),%edx
	call	fpc_ansistr_to_unicodestr
	jmp	Lj12417
Lj12406:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$18,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12418
	jmp	Lj12419
Lj12418:
	movl	-8(%ebp),%ebx
	movl	-28(%ebp),%esi
	movl	4(%ebx,%esi,8),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-36(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	4(%ebx,%esi,8),%eax
	movl	%eax,-36(%ebp)
	jmp	Lj12428
Lj12419:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$13,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12429
	jmp	Lj12430
Lj12429:
	leal	-116(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-116(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	leal	-116(%ebp),%edx
	call	SYSTEM_assign$VARIANT$$WIDESTRING
	movl	-116(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-36(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-116(%ebp),%eax
	movl	%eax,-36(%ebp)
Lj12430:
Lj12428:
Lj12417:
Lj12404:
Lj12393:
Lj12380:
Lj12367:
Lj12354:
Lj12341:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	je	Lj12445
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj12445:
	movl	%eax,-44(%ebp)
	movl	-52(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj12448
	jmp	Lj12447
Lj12448:
	movl	-44(%ebp),%eax
	cmpl	-52(%ebp),%eax
	jg	Lj12446
	jmp	Lj12447
Lj12446:
	movl	-52(%ebp),%eax
	movl	%eax,-44(%ebp)
Lj12447:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-108(%ebp),%eax
	pushl	%eax
	movl	-44(%ebp),%ecx
	movl	-36(%ebp),%eax
	movl	$1,%edx
	call	fpc_unicodestr_copy
	movl	-108(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-108(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj11902
Lj11912:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$5,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	leal	-372(%ebp),%edx
	movb	$8,%al
	call	SYSTEM_HEXSTR$QWORD$BYTE$$SHORTSTRING
	leal	-372(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_shortstr_to_unicodestr
	movl	-108(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-108(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj11902
Lj11913:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$0,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12479
	jmp	Lj12480
Lj12479:
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movl	$0,%edx
	movl	%eax,-64(%ebp)
	movl	%edx,-60(%ebp)
	movl	$16,-44(%ebp)
	jmp	Lj12491
Lj12480:
	movl	%ebp,%eax
	movb	$0,%cl
	movl	$17,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	testb	%al,%al
	jne	Lj12492
	jmp	Lj12493
Lj12492:
	movl	-8(%ebp),%eax
	movl	-28(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	(%eax),%edx
	movl	%edx,-64(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	$31,-44(%ebp)
	jmp	Lj12504
Lj12493:
	movl	%ebp,%eax
	movb	$1,%cl
	movl	$16,%edx
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN
	movl	-8(%ebp),%edx
	movl	-28(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movl	(%eax),%edx
	movl	%edx,-64(%ebp)
	movl	4(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	$31,-44(%ebp)
Lj12504:
Lj12491:
	movl	-52(%ebp),%eax
	cmpl	-44(%ebp),%eax
	jg	Lj12515
	jmp	Lj12516
Lj12515:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	pushl	-60(%ebp)
	pushl	-64(%ebp)
	leal	-372(%ebp),%edx
	movb	-44(%ebp),%al
	call	SYSTEM_HEXSTR$INT64$BYTE$$SHORTSTRING
	leal	-372(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_shortstr_to_unicodestr
	movl	-108(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-108(%ebp),%eax
	movl	%eax,-40(%ebp)
	jmp	Lj12529
Lj12516:
	movl	$1,-44(%ebp)
	jmp	Lj12533
	.balign 4,0x90
Lj12532:
	incl	-44(%ebp)
Lj12533:
	movl	-44(%ebp),%ecx
	shll	$2,%ecx
	movl	$1,%edx
	movl	$0,%eax
	cmpl	$64,%ecx
	jl	Lj12536
	xorl	%edx,%edx
	xorl	%eax,%eax
	jmp	Lj12538
Lj12536:
	cmpl	$32,%ecx
	jl	Lj12537
	subl	$32,%ecx
	shll	%cl,%edx
	movl	%edx,%eax
	xorl	%edx,%edx
	jmp	Lj12538
Lj12537:
	shldl	%cl,%edx,%eax
	shll	%cl,%edx
Lj12538:
	cmpl	-60(%ebp),%eax
	jb	Lj12535
	ja	Lj12534
	cmpl	-64(%ebp),%edx
	jbe	Lj12535
	jmp	Lj12534
	jmp	Lj12534
Lj12535:
	movl	-44(%ebp),%eax
	cmpl	$16,%eax
	jl	Lj12532
	jmp	Lj12534
Lj12534:
	movl	-44(%ebp),%eax
	cmpl	-52(%ebp),%eax
	jg	Lj12539
	jmp	Lj12540
Lj12539:
	movl	-44(%ebp),%eax
	movl	%eax,-52(%ebp)
Lj12540:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	pushl	-60(%ebp)
	pushl	-64(%ebp)
	leal	-372(%ebp),%edx
	movb	-52(%ebp),%al
	call	SYSTEM_HEXSTR$INT64$BYTE$$SHORTSTRING
	leal	-372(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_shortstr_to_unicodestr
	movl	-108(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-108(%ebp),%eax
	movl	%eax,-40(%ebp)
Lj12529:
	jmp	Lj11902
Lj11914:
	movl	$_$SYSUTILS$_Ld102,%ebx
	leal	-40(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	%ebx,-40(%ebp)
	jmp	Lj11902
Lj11903:
Lj11902:
	movl	-48(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj12557
	jmp	Lj12558
Lj12557:
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj12561
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj12561:
	cmpl	-48(%ebp),%eax
	jl	Lj12559
	jmp	Lj12560
Lj12559:
	movb	-53(%ebp),%al
	testb	%al,%al
	je	Lj12562
	jmp	Lj12563
Lj12562:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj12570
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj12570:
	movl	-48(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-372(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-372(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_shortstr_to_unicodestr
	movl	-108(%ebp),%edx
	movl	-40(%ebp),%ecx
	leal	-40(%ebp),%eax
	call	fpc_unicodestr_concat
	jmp	Lj12579
Lj12563:
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	je	Lj12586
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj12586:
	movl	-48(%ebp),%edx
	subl	%eax,%edx
	movl	%edx,%eax
	leal	-372(%ebp),%edx
	call	SYSTEM_SPACE$BYTE$$SHORTSTRING
	leal	-372(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_shortstr_to_unicodestr
	movl	-108(%ebp),%ecx
	movl	-40(%ebp),%edx
	leal	-40(%ebp),%eax
	call	fpc_unicodestr_concat
Lj12579:
Lj12560:
Lj12558:
	movl	-40(%ebp),%ecx
	movl	8(%ebp),%eax
	movl	(%eax),%edx
	movl	8(%ebp),%eax
	call	fpc_unicodestr_concat
Lj11897:
	incl	-16(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj11874:
	movl	-16(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jle	Lj11873
	jmp	Lj11875
Lj11875:
Lj11859:
	call	FPC_POPADDRSTACK
	leal	-116(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-116(%ebp)
	leal	-112(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-112(%ebp)
	leal	-108(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-36(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-36(%ebp)
	leal	-40(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-40(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj11860
	call	FPC_RERAISE
Lj11860:
	movl	-380(%ebp),%ebx
	movl	-376(%ebp),%esi
	leave
	ret	$8

.text
	.balign 4,0x90
SYSUTILS_UNICODEFORMAT$crc712EACB0_CHECKARG$LONGINT$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movb	%cl,-8(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12615
	movb	$0,-13(%ebp)
	movl	-12(%ebp),%eax
	movl	-44(%eax),%eax
	cmpl	$-1,%eax
	je	Lj12620
	jmp	Lj12621
Lj12620:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-24(%eax),%eax
	movl	%eax,-28(%edx)
	jmp	Lj12624
Lj12621:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	-44(%eax),%eax
	movl	%eax,-28(%edx)
Lj12624:
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	incl	%eax
	movl	-12(%ebp),%edx
	movl	%eax,-24(%edx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	-28(%eax),%eax
	cmpl	-12(%edx),%eax
	jg	Lj12629
	jmp	Lj12631
Lj12631:
	movl	-12(%ebp),%eax
	movl	-8(%eax),%edx
	movl	-12(%ebp),%eax
	movl	-28(%eax),%eax
	movl	(%edx,%eax,8),%eax
	cmpl	-4(%ebp),%eax
	jne	Lj12629
	jmp	Lj12630
Lj12629:
	cmpb	$0,-8(%ebp)
	jne	Lj12632
	jmp	Lj12633
Lj12632:
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	movl	-12(%ebp),%eax
	movl	-4(%eax),%eax
	leal	-60(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
	movl	-60(%ebp),%edx
	movl	$3,%eax
	call	SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING
Lj12633:
	movl	-12(%ebp),%eax
	decl	-24(%eax)
	jmp	Lj12615
Lj12630:
	movb	$1,-13(%ebp)
Lj12615:
	call	FPC_POPADDRSTACK
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj12616
	call	FPC_RERAISE
Lj12616:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_UNICODEFORMAT$crc712EACB0_READFORMAT$$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$14,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$-1,-44(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,-48(%eax)
	movl	-4(%ebp),%eax
	movl	$-1,-52(%eax)
	movl	$-1,-12(%ebp)
	movl	-4(%ebp),%eax
	incl	-16(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$37,%ax
	je	Lj12652
	jmp	Lj12653
Lj12652:
	movb	$37,-5(%ebp)
	jmp	Lj11845
Lj12653:
	movl	%ebp,%eax
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_READFORMAT$$CHAR_READINDEX
	movl	%ebp,%eax
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_READFORMAT$$CHAR_READLEFT
	movl	%ebp,%eax
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_READFORMAT$$CHAR_READWIDTH
	movl	%ebp,%eax
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_READFORMAT$$CHAR_READPREC
	movl	-4(%ebp),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	call	SYSTEM_UPCASE$WIDECHAR$$WIDECHAR
	movw	%ax,-14(%ebp)
	movw	-14(%ebp),%ax
	cmpw	$255,%ax
	ja	Lj12668
	jmp	Lj12669
Lj12668:
	movb	$255,-5(%ebp)
	jmp	Lj12672
Lj12669:
	movw	-14(%ebp),%ax
	call	fpc_uchar_to_char
	movb	%al,-5(%ebp)
Lj12672:
Lj11845:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_UNICODEFORMAT$crc712EACB0_READFORMAT$$CHAR_READPREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$46,%ax
	je	Lj12677
	jmp	Lj12678
Lj12677:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	-16(%eax)
	movl	-4(%ebp),%eax
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_READFORMAT$$CHAR_READINTEGER
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	cmpl	$-1,%eax
	je	Lj12681
	jmp	Lj12682
Lj12681:
	movl	-4(%ebp),%eax
	movl	$0,-12(%eax)
Lj12682:
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	%eax,-52(%edx)
Lj12678:
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_UNICODEFORMAT$crc712EACB0_READFORMAT$$CHAR_READWIDTH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_READFORMAT$$CHAR_READINTEGER
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj12689
	jmp	Lj12690
Lj12689:
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	%eax,-48(%edx)
	movl	-4(%ebp),%eax
	movl	$-1,-12(%eax)
Lj12690:
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_UNICODEFORMAT$crc712EACB0_READFORMAT$$CHAR_READLEFT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$45,%ax
	je	Lj12695
	jmp	Lj12696
Lj12695:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$1,-53(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	-16(%eax)
	jmp	Lj12699
Lj12696:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movb	$0,-53(%eax)
Lj12699:
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_UNICODEFORMAT$crc712EACB0_READFORMAT$$CHAR_READINDEX:
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
	jne	Lj12702
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$58,%ax
	jne	Lj12705
	jmp	Lj12706
Lj12705:
	movl	-4(%ebp),%eax
	call	SYSUTILS_UNICODEFORMAT$crc712EACB0_READFORMAT$$CHAR_READINTEGER
	jmp	Lj12709
Lj12706:
	movl	-4(%ebp),%eax
	movl	$0,-12(%eax)
Lj12709:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$58,%ax
	je	Lj12712
	jmp	Lj12713
Lj12712:
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	cmpl	$-1,%eax
	je	Lj12714
	jmp	Lj12715
Lj12714:
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%eax
	leal	-48(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
	movl	-48(%ebp),%edx
	movl	$2,%eax
	call	SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING
Lj12715:
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	movl	%eax,-44(%edx)
	movl	-4(%ebp),%eax
	movl	$-1,-12(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	-16(%eax)
Lj12713:
Lj12702:
	call	FPC_POPADDRSTACK
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj12703
	call	FPC_RERAISE
Lj12703:
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_UNICODEFORMAT$crc712EACB0_READFORMAT$$CHAR_READINTEGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$68,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12728
	movl	-4(%ebp),%eax
	movl	-12(%eax),%eax
	cmpl	$-1,%eax
	jne	Lj12731
	jmp	Lj12732
Lj12731:
	jmp	Lj12728
Lj12732:
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movl	%eax,-20(%edx)
	jmp	Lj12736
	.balign 4,0x90
Lj12735:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	-16(%eax)
Lj12736:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-16(%eax),%eax
	cmpl	-32(%edx),%eax
	jle	Lj12739
	jmp	Lj12737
Lj12739:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$57,%ax
	jbe	Lj12738
	jmp	Lj12737
Lj12738:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$48,%ax
	jae	Lj12735
	jmp	Lj12737
Lj12737:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-16(%eax),%eax
	cmpl	-32(%edx),%eax
	jg	Lj12740
	jmp	Lj12741
Lj12740:
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%eax
	leal	-56(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
	movl	-56(%ebp),%edx
	movl	$1,%eax
	call	SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING
Lj12741:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-16(%eax),%eax
	movw	-2(%edx,%eax,2),%ax
	cmpw	$42,%ax
	je	Lj12750
	jmp	Lj12751
Lj12750:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-44(%eax),%eax
	cmpl	$-1,%eax
	je	Lj12752
	jmp	Lj12753
Lj12752:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-24(%eax),%eax
	movl	%eax,-12(%ebp)
	jmp	Lj12756
Lj12753:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-44(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	-44(%eax)
Lj12756:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-16(%eax),%eax
	cmpl	-20(%edx),%eax
	jg	Lj12759
	jmp	Lj12761
Lj12761:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-12(%eax),%eax
	cmpl	-12(%ebp),%eax
	jl	Lj12759
	jmp	Lj12760
Lj12759:
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%eax
	leal	-56(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
	movl	-56(%ebp),%edx
	movl	$1,%eax
	call	SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING
Lj12760:
	movl	-12(%ebp),%edx
	incl	%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	%edx,-24(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	(%eax,%edx,8),%eax
	testl	%eax,%eax
	jl	Lj12773
	testl	%eax,%eax
	je	Lj12774
	subl	$16,%eax
	je	Lj12775
	decl	%eax
	je	Lj12776
	jmp	Lj12773
Lj12774:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%ecx
	movl	4(%eax,%edx,8),%eax
	movl	%eax,-12(%ecx)
	jmp	Lj12772
Lj12775:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-8(%eax),%eax
	movl	-12(%ebp),%edx
	movl	4(%eax,%edx,8),%eax
	movl	-4(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,-12(%edx)
	jmp	Lj12772
Lj12776:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-8(%eax),%edx
	movl	-12(%ebp),%eax
	movl	4(%edx,%eax,8),%eax
	movl	-4(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,-12(%edx)
	jmp	Lj12772
Lj12773:
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%eax
	leal	-56(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
	movl	-56(%ebp),%edx
	movl	$1,%eax
	call	SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING
Lj12772:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	incl	-16(%eax)
	jmp	Lj12791
Lj12751:
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-20(%eax),%eax
	cmpl	-16(%edx),%eax
	jl	Lj12792
	jmp	Lj12793
Lj12792:
	leal	-64(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-64(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-4(%edx),%edx
	movl	-16(%eax),%ecx
	movl	-20(%edx),%eax
	subl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-20(%eax),%edx
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%eax
	call	fpc_unicodestr_copy
	movl	-64(%ebp),%edx
	leal	-60(%ebp),%ecx
	movl	$4,%eax
	call	fpc_val_sint_unicodestr
	movl	-4(%ebp),%edx
	movl	%eax,-12(%edx)
	movw	-60(%ebp),%ax
	movw	%ax,-6(%ebp)
	movzwl	-6(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj12812
	jmp	Lj12813
Lj12812:
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%eax),%eax
	movl	-4(%eax),%eax
	leal	-68(%ebp),%edx
	call	fpc_unicodestr_to_ansistr
	movl	-68(%ebp),%edx
	movl	$1,%eax
	call	SYSUTILS_DOFORMATERROR$LONGINT$ANSISTRING
Lj12813:
	jmp	Lj12822
Lj12793:
	movl	-4(%ebp),%eax
	movl	$-1,-12(%eax)
Lj12822:
Lj12791:
Lj12728:
	call	FPC_POPADDRSTACK
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	leal	-64(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-64(%ebp)
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj12729
	call	FPC_RERAISE
Lj12729:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_UNICODEFORMAT$UNICODESTRING$array_of_const$$UNICODESTRING
SYSUTILS_UNICODEFORMAT$UNICODESTRING$array_of_const$$UNICODESTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	8(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_UNICODEFORMAT$UNICODESTRING$array_of_const$TFORMATSETTINGS$$UNICODESTRING
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_UNICODEFORMATBUF$crc90669634
SYSUTILS_UNICODEFORMATBUF$crc90669634:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12839
	movl	20(%ebp),%edx
	leal	-24(%ebp),%eax
	call	fpc_unicodestr_setlength
	movl	20(%ebp),%eax
	cmpl	$0,%eax
	ja	Lj12846
	jmp	Lj12847
Lj12846:
	leal	-24(%ebp),%eax
	call	fpc_unicodestr_unique
	movl	%eax,%edx
	movl	20(%ebp),%ecx
	shll	$1,%ecx
	movl	-12(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj12847:
	leal	-20(%ebp),%eax
	pushl	%eax
	movl	12(%ebp),%ecx
	movl	16(%ebp),%edx
	movl	-24(%ebp),%eax
	call	SYSUTILS_UNICODEFORMAT$UNICODESTRING$array_of_const$$UNICODESTRING
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj12866
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj12866:
	cmpl	-8(%ebp),%eax
	jb	Lj12864
	jmp	Lj12865
Lj12864:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj12869
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj12869:
	movl	%eax,-16(%ebp)
	jmp	Lj12870
Lj12865:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj12870:
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj12839:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,-24(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj12840
	call	FPC_RERAISE
Lj12840:
	movl	-16(%ebp),%eax
	leave
	ret	$16

.text
	.balign 4,0x90
.globl	SYSUTILS_UNICODEFORMATBUF$formal$LONGWORD$formal$LONGWORD$array_of_const$$LONGWORD
SYSUTILS_UNICODEFORMATBUF$formal$LONGWORD$formal$LONGWORD$array_of_const$$LONGWORD:
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
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_UNICODEFORMATBUF$crc90669634
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_UNICODEFMTSTR$UNICODESTRING$UNICODESTRING$array_of_const$TFORMATSETTINGS
SYSUTILS_UNICODEFMTSTR$UNICODESTRING$UNICODESTRING$array_of_const$TFORMATSETTINGS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%ebx,-60(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12911
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	pushl	%eax
	movl	12(%ebp),%ecx
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSUTILS_UNICODEFORMAT$UNICODESTRING$array_of_const$$UNICODESTRING
	movl	-56(%ebp),%eax
	call	FPC_UNICODESTR_INCR_REF
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	-56(%ebp),%eax
	movl	%eax,(%ebx)
Lj12911:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_UNICODESTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj12912
	call	FPC_RERAISE
Lj12912:
	movl	-60(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_UNICODEFMTSTR$UNICODESTRING$UNICODESTRING$array_of_const
SYSUTILS_UNICODEFMTSTR$UNICODESTRING$UNICODESTRING$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	pushl	8(%ebp)
	pushl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_UNICODEFMTSTR$UNICODESTRING$UNICODESTRING$array_of_const$TFORMATSETTINGS
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_STRPLCOPY$PWIDECHAR$UNICODESTRING$LONGINT$$PWIDECHAR
SYSUTILS_STRPLCOPY$PWIDECHAR$UNICODESTRING$LONGINT$$PWIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj12940
	movl	-4(%eax),%eax
	shrl	$1,%eax
Lj12940:
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj12941
	jmp	Lj12942
Lj12941:
	movl	-12(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj12942:
	movl	-20(%ebp),%ecx
	shll	$1,%ecx
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movw	$0,(%edx,%eax,2)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRPCOPY$PWIDECHAR$UNICODESTRING$$PWIDECHAR
SYSUTILS_STRPCOPY$PWIDECHAR$UNICODESTRING$$PWIDECHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj12961
	movl	-4(%ecx),%ecx
	shrl	$1,%ecx
Lj12961:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRPLCOPY$PWIDECHAR$UNICODESTRING$LONGINT$$PWIDECHAR
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TSIMPLERWSYNC_$__CREATE$$TSIMPLERWSYNC
SYSUTILS_TSIMPLERWSYNC_$__CREATE$$TSIMPLERWSYNC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj12968
	jmp	Lj12969
Lj12968:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj12969:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj12974
	jmp	Lj12975
Lj12974:
	jmp	Lj12966
Lj12975:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12978
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12982
	movl	-8(%ebp),%eax
	leal	12(%eax),%eax
	call	SYSTEM_INITCRITICALSECTION$TRTLCRITICALSECTION
Lj12982:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj12983
	call	FPC_RERAISE
Lj12983:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj12989
	jmp	Lj12988
Lj12989:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj12987
	jmp	Lj12988
Lj12987:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj12988:
Lj12978:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj12980
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj12993
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj12994
	jmp	Lj12995
Lj12994:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj12995:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj12993:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj12992
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj12992:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj12980
Lj12980:
Lj12966:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TSIMPLERWSYNC_$__DESTROY
SYSUTILS_TSIMPLERWSYNC_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj13002
	jmp	Lj13003
Lj13002:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj13003:
	movl	-8(%ebp),%eax
	leal	12(%eax),%eax
	call	SYSTEM_DONECRITICALSECTION$TRTLCRITICALSECTION
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13010
	jmp	Lj13009
Lj13010:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13008
	jmp	Lj13009
Lj13008:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj13009:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TSIMPLERWSYNC_$__BEGINWRITE$$BOOLEAN
SYSUTILS_TSIMPLERWSYNC_$__BEGINWRITE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	movb	$1,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TSIMPLERWSYNC_$__ENDWRITE
SYSUTILS_TSIMPLERWSYNC_$__ENDWRITE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TSIMPLERWSYNC_$__BEGINREAD
SYSUTILS_TSIMPLERWSYNC_$__BEGINREAD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TSIMPLERWSYNC_$__ENDREAD
SYSUTILS_TSIMPLERWSYNC_$__ENDREAD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__CREATE$$TMULTIREADEXCLUSIVEWRITESYNCHRONIZER
SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__CREATE$$TMULTIREADEXCLUSIVEWRITESYNCHRONIZER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj13033
	jmp	Lj13034
Lj13033:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-8(%ebp)
Lj13034:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj13039
	jmp	Lj13040
Lj13039:
	jmp	Lj13031
Lj13040:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj13043
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj13047
	movl	-8(%ebp),%eax
	leal	16(%eax),%eax
	call	SYSTEM_INITCRITICALSECTION$TRTLCRITICALSECTION
	call	SYSTEM_RTLEVENTCREATE$$PRTLEVENT
	movl	-8(%ebp),%edx
	movl	%eax,40(%edx)
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	call	SYSTEM_RTLEVENTRESETEVENT$PRTLEVENT
	movl	-8(%ebp),%eax
	leal	44(%eax),%eax
	movl	$0,%edx
	call	FPC_INTERLOCKEDEXCHANGE
	movl	-8(%ebp),%eax
	leal	48(%eax),%eax
	movl	$0,%edx
	call	SYSTEM_INTERLOCKEDEXCHANGE$LONGINT$LONGINT$$LONGINT
	pushl	$0
	movb	$0,%cl
	movb	$1,%dl
	movl	$0,%eax
	call	SYSTEM_BASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER
	movl	-8(%ebp),%edx
	movl	%eax,12(%edx)
Lj13047:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj13048
	call	FPC_RERAISE
Lj13048:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13076
	jmp	Lj13075
Lj13076:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13074
	jmp	Lj13075
Lj13074:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj13075:
Lj13043:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj13045
	leal	-60(%ebp),%ecx
	leal	-84(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj13080
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13081
	jmp	Lj13082
Lj13081:
	movl	-8(%ebp),%eax
	movl	$-1,%edx
	movl	-8(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj13082:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj13080:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj13079
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj13079:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj13045
Lj13045:
Lj13031:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__DESTROY
SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj13089
	jmp	Lj13090
Lj13089:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj13090:
	movl	-8(%ebp),%eax
	leal	48(%eax),%eax
	movl	$0,%edx
	call	SYSTEM_INTERLOCKEDEXCHANGE$LONGINT$LONGINT$$LONGINT
	movl	-8(%ebp),%eax
	leal	16(%eax),%eax
	call	SYSTEM_DONECRITICALSECTION$TRTLCRITICALSECTION
	movl	-8(%ebp),%eax
	movl	40(%eax),%eax
	call	SYSTEM_RTLEVENTDESTROY$PRTLEVENT
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	call	SYSTEM_BASICEVENTDESTROY$POINTER
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13105
	jmp	Lj13104
Lj13105:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13103
	jmp	Lj13104
Lj13103:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj13104:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__BEGINWRITE$$BOOLEAN
SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__BEGINWRITE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	call	SYSTEM_ENTERCRITICALSECTION$TRTLCRITICALSECTION
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	call	SYSTEM_RTLEVENTRESETEVENT$PRTLEVENT
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	SYSTEM_BASICEVENTRESETEVENT$POINTER
	movl	-4(%ebp),%eax
	leal	48(%eax),%eax
	call	SYSTEM_INTERLOCKEDINCREMENT$LONGINT$$LONGINT
	jmp	Lj13119
	.balign 4,0x90
Lj13118:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	call	SYSTEM_RTLEVENTWAITFOR$PRTLEVENT
Lj13119:
	movl	-4(%ebp),%eax
	leal	44(%eax),%eax
	movl	$0,%edx
	call	FPC_INTERLOCKEDEXCHANGEADD
	testl	%eax,%eax
	jne	Lj13118
	jmp	Lj13120
Lj13120:
	call	SYSTEM_READBARRIER
	movb	$1,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__ENDWRITE
SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__ENDWRITE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	call	SYSTEM_WRITEBARRIER
	movl	-4(%ebp),%eax
	leal	48(%eax),%eax
	call	SYSTEM_INTERLOCKEDDECREMENT$LONGINT$$LONGINT
	testl	%eax,%eax
	je	Lj13131
	jmp	Lj13132
Lj13131:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	call	SYSTEM_BASICEVENTSETEVENT$POINTER
Lj13132:
	movl	-4(%ebp),%eax
	leal	16(%eax),%eax
	call	SYSTEM_LEAVECRITICALSECTION$TRTLCRITICALSECTION
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__BEGINREAD
SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__BEGINREAD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	44(%eax),%eax
	call	FPC_INTERLOCKEDINCREMENT
	jmp	Lj13144
	.balign 4,0x90
Lj13143:
	movl	-4(%ebp),%eax
	leal	44(%eax),%eax
	call	FPC_INTERLOCKEDDECREMENT
	testl	%eax,%eax
	je	Lj13146
	jmp	Lj13147
Lj13146:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	call	SYSTEM_RTLEVENTSETEVENT$PRTLEVENT
Lj13147:
	movl	-4(%ebp),%eax
	movl	12(%eax),%edx
	movl	$-1,%eax
	call	SYSTEM_BASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT
	subl	$2,%eax
	cmpl	$2,%eax
	jb	Lj13158
Lj13158:
	jc	Lj13152
	jmp	Lj13153
Lj13152:
	movl	$VMT_SYSUTILS_EXCEPTION,%edx
	movl	$_$SYSUTILS$_Ld103,%ecx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La22:
	movl	%ebp,%ecx
	movl	$La22,%edx
	call	FPC_RAISEEXCEPTION
Lj13153:
	movl	-4(%ebp),%eax
	leal	44(%eax),%eax
	call	FPC_INTERLOCKEDINCREMENT
Lj13144:
	movl	-4(%ebp),%eax
	leal	48(%eax),%eax
	movl	$0,%edx
	call	SYSTEM_INTERLOCKEDEXCHANGEADD$LONGINT$LONGINT$$LONGINT
	testl	%eax,%eax
	jne	Lj13143
	jmp	Lj13145
Lj13145:
	call	SYSTEM_READBARRIER
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__ENDREAD
SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__ENDREAD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	44(%eax),%eax
	call	FPC_INTERLOCKEDDECREMENT
	testl	%eax,%eax
	je	Lj13175
	jmp	Lj13174
Lj13175:
	movl	-4(%ebp),%eax
	leal	48(%eax),%eax
	movl	$0,%edx
	call	SYSTEM_INTERLOCKEDEXCHANGEADD$LONGINT$LONGINT$$LONGINT
	testl	%eax,%eax
	jne	Lj13173
	jmp	Lj13174
Lj13173:
	movl	-4(%ebp),%eax
	movl	40(%eax),%eax
	call	SYSTEM_RTLEVENTSETEVENT$PRTLEVENT
Lj13174:
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_FPCCOUNTENVVAR$PPCHAR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	TC_SYSUTILS_FPC_ENVCOUNT,%eax
	cmpl	$-1,%eax
	je	Lj13186
	jmp	Lj13187
Lj13186:
	movl	$0,TC_SYSUTILS_FPC_ENVCOUNT
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13190
	jmp	Lj13191
Lj13190:
	jmp	Lj13193
	.balign 4,0x90
Lj13192:
	incl	TC_SYSUTILS_FPC_ENVCOUNT
	addl	$4,-4(%ebp)
Lj13193:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj13192
	jmp	Lj13194
Lj13194:
Lj13191:
Lj13187:
	movl	TC_SYSUTILS_FPC_ENVCOUNT,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_FPCGETENVVARFROMP$PPCHAR$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$80,%esp
	movl	%ebx,-80(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	$0,-20(%ebp)
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
	jne	Lj13199
	leal	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSTEM_UPCASE$ANSISTRING$$ANSISTRING
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13210
	jmp	Lj13211
Lj13210:
	jmp	Lj13213
	.balign 4,0x90
Lj13212:
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	leal	-24(%ebp),%edx
	call	SYSUTILS_STRPAS$PCHAR$$ANSISTRING
	movl	-24(%ebp),%edx
	movb	$61,%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	movl	%eax,-28(%ebp)
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	leal	-76(%ebp),%eax
	pushl	%eax
	movl	-28(%ebp),%ecx
	decl	%ecx
	movl	-24(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-76(%ebp),%eax
	leal	-72(%ebp),%edx
	call	SYSTEM_UPCASE$ANSISTRING$$ANSISTRING
	movl	-72(%ebp),%eax
	movl	-20(%ebp),%edx
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	je	Lj13225
	jmp	Lj13226
Lj13225:
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-24(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj13247
	movl	-4(%ecx),%ecx
Lj13247:
	movl	-28(%ebp),%eax
	subl	%eax,%ecx
	movl	-28(%ebp),%edx
	incl	%edx
	movl	-24(%ebp),%eax
	call	fpc_ansistr_copy
	jmp	Lj13199
Lj13226:
	addl	$4,-16(%ebp)
Lj13213:
	movl	-16(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj13212
	jmp	Lj13214
Lj13214:
Lj13211:
Lj13199:
	call	FPC_POPADDRSTACK
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-24(%ebp)
	leal	-8(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj13200
	call	FPC_RERAISE
Lj13200:
	movl	-80(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_FPCGETENVSTRFROMP$PPCHAR$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	jmp	Lj13269
	.balign 4,0x90
Lj13268:
	decl	-8(%ebp)
	addl	$4,-4(%ebp)
Lj13269:
	movl	-4(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj13271
	jmp	Lj13270
Lj13271:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jg	Lj13268
	jmp	Lj13270
Lj13270:
	movl	-4(%ebp),%eax
	cmpl	$0,(%eax)
	jne	Lj13272
	jmp	Lj13273
Lj13272:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	-12(%ebp),%edx
	call	SYSUTILS_STRPAS$PCHAR$$ANSISTRING
Lj13273:
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_VENDORNAME$$ANSISTRING
SYSUTILS_VENDORNAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	cmpl	$0,U_SYSUTILS_ONGETVENDORNAME
	jne	Lj13280
	jmp	Lj13281
Lj13280:
	movl	-4(%ebp),%eax
	movl	U_SYSUTILS_ONGETVENDORNAME,%edx
	call	*%edx
	jmp	Lj13284
Lj13281:
	movl	-4(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
Lj13284:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_APPLICATIONNAME$$ANSISTRING
SYSUTILS_APPLICATIONNAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$52,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	movl	$0,-48(%ebp)
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj13289
	cmpl	$0,U_SYSUTILS_ONGETAPPLICATIONNAME
	jne	Lj13292
	jmp	Lj13293
Lj13292:
	movl	-4(%ebp),%eax
	movl	U_SYSUTILS_ONGETAPPLICATIONNAME,%edx
	call	*%edx
	jmp	Lj13296
Lj13293:
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	$0,%eax
	call	OBJPAS_PARAMSTR$LONGINT$$ANSISTRING
	movl	-52(%ebp),%eax
	leal	-48(%ebp),%edx
	call	SYSUTILS_EXTRACTFILENAME$ANSISTRING$$ANSISTRING
	movl	-48(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	call	SYSUTILS_CHANGEFILEEXT$ANSISTRING$ANSISTRING$$ANSISTRING
Lj13296:
Lj13289:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj13290
	call	FPC_RERAISE
Lj13290:
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_DGETAPPCONFIGDIR$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj13313
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movl	$0,%eax
	call	OBJPAS_PARAMSTR$LONGINT$$ANSISTRING
	movl	-56(%ebp),%eax
	leal	-52(%ebp),%edx
	call	SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING
	movl	-52(%ebp),%eax
	movl	-8(%ebp),%edx
	call	SYSUTILS_EXCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
Lj13313:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj13314
	call	FPC_RERAISE
Lj13314:
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_DGETAPPCONFIGFILE$BOOLEAN$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$76,%esp
	movl	%ebx,-76(%ebp)
	movb	%al,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj13330
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%edx
	movb	-4(%ebp),%al
	call	SYSUTILS_GETAPPCONFIGDIR$BOOLEAN$$ANSISTRING
	movl	-56(%ebp),%eax
	movl	-12(%ebp),%edx
	call	SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
	cmpb	$0,-8(%ebp)
	jne	Lj13341
	jmp	Lj13342
Lj13341:
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%edx
	leal	-60(%ebp),%eax
	movl	$_$SYSUTILS$_Ld104,%ecx
	call	fpc_ansistr_concat
	movl	-60(%ebp),%eax
	leal	-56(%ebp),%edx
	call	SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
	movl	-56(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-56(%ebp),%eax
	movl	%eax,(%ebx)
Lj13342:
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-72(%ebp)
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%eax
	call	SYSUTILS_APPLICATIONNAME$$ANSISTRING
	movl	-60(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	TC_SYSUTILS_CONFIGEXTENSION,%eax
	movl	%eax,-64(%ebp)
	leal	-72(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
Lj13330:
	call	FPC_POPADDRSTACK
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj13331
	call	FPC_RERAISE
Lj13331:
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GETAPPCONFIGFILE$BOOLEAN$$ANSISTRING
SYSUTILS_GETAPPCONFIGFILE$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movb	-4(%ebp),%al
	movb	$0,%dl
	call	SYSUTILS_GETAPPCONFIGFILE$BOOLEAN$BOOLEAN$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_DGETUSERDIR$$ANSISTRING:
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
	jne	Lj13373
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	leal	-48(%ebp),%edx
	movl	$0,%eax
	call	OBJPAS_PARAMSTR$LONGINT$$ANSISTRING
	movl	-48(%ebp),%eax
	movl	-4(%ebp),%edx
	call	SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING
Lj13373:
	call	FPC_POPADDRSTACK
	leal	-48(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-48(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj13374
	call	FPC_RERAISE
Lj13374:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GETAPPCONFIGDIR$BOOLEAN$$ANSISTRING
SYSUTILS_GETAPPCONFIGDIR$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movb	-4(%ebp),%al
	call	SYSUTILS_DGETAPPCONFIGDIR$BOOLEAN$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GETAPPCONFIGFILE$BOOLEAN$BOOLEAN$$ANSISTRING
SYSUTILS_GETAPPCONFIGFILE$BOOLEAN$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movb	%al,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%ecx
	movb	-8(%ebp),%dl
	movb	-4(%ebp),%al
	call	SYSUTILS_DGETAPPCONFIGFILE$BOOLEAN$BOOLEAN$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GETUSERDIR$$ANSISTRING
SYSUTILS_GETUSERDIR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	SYSUTILS_DGETUSERDIR$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GETTEMPDIR$BOOLEAN$$ANSISTRING
SYSUTILS_GETTEMPDIR$BOOLEAN$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-56(%ebp)
	movb	%al,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj13404
	cmpl	$0,U_SYSUTILS_ONGETTEMPDIR
	jne	Lj13407
	jmp	Lj13408
Lj13407:
	movl	-8(%ebp),%edx
	movb	-4(%ebp),%al
	movl	U_SYSUTILS_ONGETTEMPDIR,%ecx
	call	*%ecx
	jmp	Lj13413
Lj13408:
	movl	-8(%ebp),%edx
	movl	$_$SYSUTILS$_Ld105,%eax
	call	SYSUTILS_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj13418
	jmp	Lj13419
Lj13418:
	movl	-8(%ebp),%edx
	movl	$_$SYSUTILS$_Ld106,%eax
	call	SYSUTILS_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING
Lj13419:
Lj13413:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj13424
	jmp	Lj13425
Lj13424:
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-52(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
	movl	-52(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-52(%ebp),%eax
	movl	%eax,(%ebx)
Lj13425:
Lj13404:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj13405
	call	FPC_RERAISE
Lj13405:
	movl	-56(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GETTEMPDIR$$ANSISTRING
SYSUTILS_GETTEMPDIR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movb	$1,%al
	call	SYSUTILS_GETTEMPDIR$BOOLEAN$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GETTEMPFILENAME$ANSISTRING$ANSISTRING$$ANSISTRING
SYSUTILS_GETTEMPFILENAME$ANSISTRING$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$80,%esp
	movl	%ebx,-80(%ebp)
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
	jne	Lj13440
	cmpl	$0,U_SYSUTILS_ONGETTEMPFILE
	jne	Lj13443
	jmp	Lj13444
Lj13443:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	U_SYSUTILS_ONGETTEMPFILE,%ebx
	call	*%ebx
	jmp	Lj13451
Lj13444:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj13452
	jmp	Lj13453
Lj13452:
	leal	-20(%ebp),%eax
	call	SYSUTILS_GETTEMPDIR$$ANSISTRING
	jmp	Lj13456
Lj13453:
	leal	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_INCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
Lj13456:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj13461
	jmp	Lj13462
Lj13461:
	movl	-20(%ebp),%edx
	leal	-20(%ebp),%eax
	movl	$_$SYSUTILS$_Ld106,%ecx
	call	fpc_ansistr_concat
	jmp	Lj13469
Lj13462:
	movl	-8(%ebp),%ecx
	movl	-20(%ebp),%edx
	leal	-20(%ebp),%eax
	call	fpc_ansistr_concat
Lj13469:
	movl	$0,-16(%ebp)
	.balign 4,0x90
Lj13478:
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-20(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	$11,-76(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$0,-68(%ebp)
	leal	-76(%ebp),%edx
	movl	$1,%ecx
	movl	$_$SYSUTILS$_Ld107,%eax
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	incl	-16(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	call	SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN
	testb	%al,%al
	jne	Lj13478
	jmp	Lj13480
Lj13480:
Lj13451:
Lj13440:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj13441
	call	FPC_RERAISE
Lj13441:
	movl	-80(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GETTEMPFILENAME$$ANSISTRING
SYSUTILS_GETTEMPFILENAME$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%ecx
	movl	$0,%edx
	movl	$0,%eax
	call	SYSUTILS_GETTEMPFILENAME$ANSISTRING$ANSISTRING$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GETTEMPFILENAME$PCHAR$PCHAR$LONGWORD$PCHAR$$LONGWORD
SYSUTILS_GETTEMPFILENAME$PCHAR$PCHAR$LONGWORD$PCHAR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$80,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj13507
	leal	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSUTILS_STRPAS$PCHAR$$ANSISTRING
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13514
	jmp	Lj13515
Lj13514:
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$0,-80(%ebp)
	leal	-80(%ebp),%edx
	movl	$0,%ecx
	movl	$_$SYSUTILS$_Ld108,%eax
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	movl	-72(%ebp),%ecx
	movl	-20(%ebp),%edx
	leal	-20(%ebp),%eax
	call	fpc_ansistr_concat
Lj13515:
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-72(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_STRPAS$PCHAR$$ANSISTRING
	movl	-72(%ebp),%eax
	leal	-24(%ebp),%ecx
	movl	-20(%ebp),%edx
	call	SYSUTILS_GETTEMPFILENAME$ANSISTRING$ANSISTRING$$ANSISTRING
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj13542
	movl	-4(%eax),%eax
Lj13542:
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj13543
	jmp	Lj13544
Lj13543:
	movl	-28(%ebp),%ecx
	incl	%ecx
	movl	8(%ebp),%edx
	movl	-24(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj13544:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13551
	jmp	Lj13552
Lj13551:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj13555
Lj13552:
	movl	$1,-16(%ebp)
Lj13555:
Lj13507:
	call	FPC_POPADDRSTACK
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	leal	-24(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-24(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj13508
	call	FPC_RERAISE
Lj13508:
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_FREEANDNIL$formal
SYSUTILS_FREEANDNIL$formal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,(%eax)
	movl	-8(%ebp),%eax
	call	SYSTEM_TOBJECT_$__FREE
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FILEAGE$ANSISTRING$TDATETIME$BOOLEAN$$BOOLEAN
SYSUTILS_FILEAGE$ANSISTRING$TDATETIME$BOOLEAN$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$92,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$INIT_SYSUTILS_TSEARCHREC,%edx
	leal	-48(%ebp),%eax
	call	fpc_initialize
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj13580
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj13586
	movl	-4(%eax),%eax
Lj13586:
	movl	$1,-52(%ebp)
	cmpl	-52(%ebp),%eax
	jl	Lj13584
	decl	-52(%ebp)
	.balign 4,0x90
Lj13585:
	incl	-52(%ebp)
	movl	-4(%ebp),%ecx
	movl	-52(%ebp),%edx
	movzbl	-1(%ecx,%edx,1),%edx
	cmpl	$42,%edx
	je	Lj13589
	cmpl	$63,%edx
	je	Lj13589
Lj13589:
	je	Lj13587
	jmp	Lj13588
Lj13587:
	movb	$0,-13(%ebp)
	jmp	Lj13580
Lj13588:
	cmpl	-52(%ebp),%eax
	jg	Lj13585
Lj13584:
	movl	$0,-52(%ebp)
	movb	-12(%ebp),%al
	testb	%al,%al
	je	Lj13594
	jmp	Lj13595
Lj13594:
	movl	-52(%ebp),%eax
	orl	$64,%eax
	movl	%eax,-52(%ebp)
Lj13595:
	movl	$INIT_SYSUTILS_TSEARCHREC,%edx
	leal	-48(%ebp),%eax
	call	FPC_DECREF
	leal	-48(%ebp),%ecx
	movl	-52(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FINDFIRST$ANSISTRING$LONGINT$TSEARCHREC$$LONGINT
	testl	%eax,%eax
	seteb	-13(%ebp)
	cmpb	$0,-13(%ebp)
	jne	Lj13606
	jmp	Lj13607
Lj13606:
	movl	-48(%ebp),%eax
	call	SYSUTILS_FILEDATETODATETIME$LONGINT$$TDATETIME
	movl	-8(%ebp),%eax
	fstpl	(%eax)
Lj13607:
	leal	-48(%ebp),%eax
	call	SYSUTILS_FINDCLOSE$TSEARCHREC
Lj13580:
	call	FPC_POPADDRSTACK
	movl	$INIT_SYSUTILS_TSEARCHREC,%edx
	leal	-48(%ebp),%eax
	call	fpc_finalize
	popl	%eax
	testl	%eax,%eax
	je	Lj13581
	call	FPC_RERAISE
Lj13581:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_SUPPORTS$IUNKNOWN$TCLASS$formal$$BOOLEAN
SYSUTILS_SUPPORTS$IUNKNOWN$TCLASS$formal$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13627
	jmp	Lj13625
Lj13627:
	movl	-12(%ebp),%eax
	pushl	%eax
	pushl	$TC_SYSTEM_IOBJECTINSTANCE
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj13626
	jmp	Lj13625
Lj13626:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__INHERITSFROM$TCLASS$$BOOLEAN
	testb	%al,%al
	jne	Lj13624
	jmp	Lj13625
Lj13624:
	movb	$1,-13(%ebp)
	jmp	Lj13638
Lj13625:
	movb	$0,-13(%ebp)
Lj13638:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_SUPPORTS$IUNKNOWN$TGUID$formal$$BOOLEAN
SYSUTILS_SUPPORTS$IUNKNOWN$TGUID$formal$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13643
	jmp	Lj13642
Lj13643:
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj13641
	jmp	Lj13642
Lj13641:
	movb	$1,-13(%ebp)
	jmp	Lj13650
Lj13642:
	movb	$0,-13(%ebp)
Lj13650:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_SUPPORTS$TOBJECT$TGUID$formal$$BOOLEAN
SYSUTILS_SUPPORTS$TOBJECT$TGUID$formal$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13655
	jmp	Lj13654
Lj13655:
	movl	$_$SYSUTILS$_Ld109,%edx
	leal	-20(%ebp),%ecx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj13657
	jmp	Lj13656
Lj13657:
	movl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	-20(%ebp)
	movl	-20(%ebp),%eax
	movl	(%eax),%eax
	call	*(%eax)
	addl	$12,%esp
	testl	%eax,%eax
	je	Lj13653
	jmp	Lj13656
Lj13656:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACE$TGUID$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj13653
	jmp	Lj13654
Lj13653:
	movb	$1,-13(%ebp)
	jmp	Lj13676
Lj13654:
	movb	$0,-13(%ebp)
Lj13676:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_SUPPORTS$TOBJECT$SHORTSTRING$formal$$BOOLEAN
SYSUTILS_SUPPORTS$TOBJECT$SHORTSTRING$formal$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$13,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13681
	jmp	Lj13680
Lj13681:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACE$SHORTSTRING$formal$$BOOLEAN
	testb	%al,%al
	jne	Lj13679
	jmp	Lj13680
Lj13679:
	movb	$1,-13(%ebp)
	jmp	Lj13688
Lj13680:
	movb	$0,-13(%ebp)
Lj13688:
	movb	-13(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_SUPPORTS$IUNKNOWN$TCLASS$$BOOLEAN
SYSUTILS_SUPPORTS$IUNKNOWN$TCLASS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_SUPPORTS$IUNKNOWN$TCLASS$formal$$BOOLEAN
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_SUPPORTS$IUNKNOWN$TGUID$$BOOLEAN
SYSUTILS_SUPPORTS$IUNKNOWN$TGUID$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
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
	jne	Lj13701
	leal	-16(%ebp),%eax
	call	FPC_INTF_DECR_REF
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_SUPPORTS$IUNKNOWN$TGUID$formal$$BOOLEAN
	movb	%al,-9(%ebp)
Lj13701:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_intf_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj13702
	call	FPC_RERAISE
Lj13702:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_SUPPORTS$TOBJECT$TGUID$$BOOLEAN
SYSUTILS_SUPPORTS$TOBJECT$TGUID$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
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
	jne	Lj13720
	leal	-16(%ebp),%eax
	call	FPC_INTF_DECR_REF
	leal	-16(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_SUPPORTS$TOBJECT$TGUID$formal$$BOOLEAN
	movb	%al,-9(%ebp)
Lj13720:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_intf_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj13721
	call	FPC_RERAISE
Lj13721:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_SUPPORTS$TOBJECT$SHORTSTRING$$BOOLEAN
SYSUTILS_SUPPORTS$TOBJECT$SHORTSTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13741
	jmp	Lj13740
Lj13741:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY
	testl	%eax,%eax
	jne	Lj13739
	jmp	Lj13740
Lj13739:
	movb	$1,-9(%ebp)
	jmp	Lj13746
Lj13740:
	movb	$0,-9(%ebp)
Lj13746:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_SUPPORTS$TCLASS$TGUID$$BOOLEAN
SYSUTILS_SUPPORTS$TCLASS$TGUID$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13751
	jmp	Lj13750
Lj13751:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
	testl	%eax,%eax
	jne	Lj13749
	jmp	Lj13750
Lj13749:
	movb	$1,-9(%ebp)
	jmp	Lj13756
Lj13750:
	movb	$0,-9(%ebp)
Lj13756:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_SUPPORTS$TCLASS$SHORTSTRING$$BOOLEAN
SYSUTILS_SUPPORTS$TCLASS$SHORTSTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13761
	jmp	Lj13760
Lj13761:
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY
	testl	%eax,%eax
	jne	Lj13759
	jmp	Lj13760
Lj13759:
	movb	$1,-9(%ebp)
	jmp	Lj13766
Lj13760:
	movb	$0,-9(%ebp)
Lj13766:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_STRINGTOGUID$ANSISTRING$$TGUID
SYSUTILS_STRINGTOGUID$ANSISTRING$$TGUID:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN
	testb	%al,%al
	je	Lj13769
	jmp	Lj13770
Lj13769:
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$11,-16(%ebp)
	leal	-16(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SINVALIDGUID+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La23:
	movl	%ebp,%ecx
	movl	$La23,%edx
	call	FPC_RAISEEXCEPTION
Lj13770:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN
SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj13793
	movl	-4(%eax),%eax
Lj13793:
	cmpl	$38,%eax
	jne	Lj13791
	jmp	Lj13792
Lj13791:
	movb	$0,-9(%ebp)
	jmp	Lj13785
Lj13792:
	movb	$1,-10(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj13800
	movl	$FPC_EMPTYCHAR,%eax
Lj13800:
	movl	%eax,-16(%ebp)
	movl	%ebp,-20(%ebp)
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$123,%al
	jne	Lj13804
	jmp	Lj13805
Lj13804:
	movb	$0,-10(%ebp)
Lj13805:
	incl	-16(%ebp)
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%ebx
	shll	$28,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	shll	$24,%eax
	orl	%eax,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	shll	$20,%eax
	orl	%eax,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	shll	$16,%eax
	orl	%eax,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	shll	$12,%eax
	orl	%eax,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	shll	$8,%eax
	orl	%eax,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	shll	$4,%eax
	orl	%eax,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	orl	%eax,%ebx
	movl	-8(%ebp),%eax
	movl	%ebx,(%eax)
	movl	%ebp,-20(%ebp)
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$45,%al
	jne	Lj13829
	jmp	Lj13830
Lj13829:
	movb	$0,-10(%ebp)
Lj13830:
	incl	-16(%ebp)
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%ebx
	shll	$12,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	shll	$8,%eax
	orl	%eax,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	shll	$4,%eax
	orl	%eax,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	orl	%eax,%ebx
	movl	-8(%ebp),%eax
	movw	%bx,4(%eax)
	movl	%ebp,-20(%ebp)
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$45,%al
	jne	Lj13846
	jmp	Lj13847
Lj13846:
	movb	$0,-10(%ebp)
Lj13847:
	incl	-16(%ebp)
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%ebx
	shll	$12,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	shll	$8,%eax
	orl	%eax,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	shll	$4,%eax
	orl	%eax,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	orl	%eax,%ebx
	movl	-8(%ebp),%eax
	movw	%bx,6(%eax)
	movl	%ebp,-20(%ebp)
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$45,%al
	jne	Lj13863
	jmp	Lj13864
Lj13863:
	movb	$0,-10(%ebp)
Lj13864:
	incl	-16(%ebp)
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	movl	%eax,%ebx
	shll	$4,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	orl	%eax,%ebx
	movb	%bl,%al
	movl	-8(%ebp),%edx
	movb	%al,8(%edx)
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	movl	%eax,%ebx
	shll	$4,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	orl	%eax,%ebx
	movb	%bl,%al
	movl	-8(%ebp),%edx
	movb	%al,9(%edx)
	movl	%ebp,-20(%ebp)
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$45,%al
	jne	Lj13882
	jmp	Lj13883
Lj13882:
	movb	$0,-10(%ebp)
Lj13883:
	incl	-16(%ebp)
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	movl	%eax,%ebx
	shll	$4,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	orl	%eax,%ebx
	movb	%bl,%al
	movl	-8(%ebp),%edx
	movb	%al,10(%edx)
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	movl	%eax,%ebx
	shll	$4,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	orl	%eax,%ebx
	movb	%bl,%al
	movl	-8(%ebp),%edx
	movb	%al,11(%edx)
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	movl	%eax,%ebx
	shll	$4,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	orl	%eax,%ebx
	movb	%bl,%al
	movl	-8(%ebp),%edx
	movb	%al,12(%edx)
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	movl	%eax,%ebx
	shll	$4,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	orl	%eax,%ebx
	movb	%bl,%al
	movl	-8(%ebp),%edx
	movb	%al,13(%edx)
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	movl	%eax,%ebx
	shll	$4,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	orl	%eax,%ebx
	movb	%bl,%al
	movl	-8(%ebp),%edx
	movb	%al,14(%edx)
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	movl	%eax,%ebx
	shll	$4,%ebx
	movl	%ebp,%eax
	call	SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE
	movzbl	%al,%eax
	orl	%eax,%ebx
	movb	%bl,%al
	movl	-8(%ebp),%edx
	movb	%al,15(%edx)
	movl	%ebp,-20(%ebp)
	movl	-16(%ebp),%eax
	movb	(%eax),%al
	cmpb	$125,%al
	jne	Lj13925
	jmp	Lj13926
Lj13925:
	movb	$0,-10(%ebp)
Lj13926:
	incl	-16(%ebp)
	movb	-10(%ebp),%al
	movb	%al,-9(%ebp)
Lj13785:
	movb	-9(%ebp),%al
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_NEXTCHAR$CHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movb	%dl,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%eax),%eax
	movb	(%eax),%al
	cmpb	-4(%ebp),%al
	jne	Lj13931
	jmp	Lj13932
Lj13931:
	movl	-8(%ebp),%eax
	movb	$0,-10(%eax)
Lj13932:
	movl	-8(%ebp),%eax
	incl	-16(%eax)
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_TRYSTRINGTOGUID$ANSISTRING$TGUID$$BOOLEAN_RB$$BYTE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movb	(%eax),%al
	cmpb	$48,%al
	jb	Lj13936
	subb	$48,%al
	subb	$9,%al
	jbe	Lj13937
	subb	$8,%al
	jb	Lj13936
	subb	$5,%al
	jbe	Lj13939
	subb	$27,%al
	jb	Lj13936
	subb	$5,%al
	jbe	Lj13938
	jmp	Lj13936
Lj13937:
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movzbl	(%eax),%eax
	subl	$48,%eax
	movb	%al,-5(%ebp)
	jmp	Lj13935
Lj13938:
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movzbl	(%eax),%eax
	subl	$97,%eax
	addl	$10,%eax
	movb	%al,-5(%ebp)
	jmp	Lj13935
Lj13939:
	movl	-4(%ebp),%eax
	movl	-16(%eax),%eax
	movzbl	(%eax),%eax
	subl	$65,%eax
	addl	$10,%eax
	movb	%al,-5(%ebp)
	jmp	Lj13935
Lj13936:
	movl	-4(%ebp),%eax
	movb	$0,-10(%eax)
Lj13935:
	movl	-4(%ebp),%eax
	incl	-16(%eax)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ISEQUALGUID$TGUID$TGUID$$BOOLEAN
SYSUTILS_ISEQUALGUID$TGUID$TGUID$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax),%eax
	cmpl	(%edx),%eax
	je	Lj13958
	jmp	Lj13955
Lj13958:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	4(%eax),%eax
	cmpl	4(%edx),%eax
	je	Lj13957
	jmp	Lj13955
Lj13957:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	8(%eax),%eax
	cmpl	8(%edx),%eax
	je	Lj13956
	jmp	Lj13955
Lj13956:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	12(%eax),%eax
	cmpl	12(%edx),%eax
	je	Lj13954
	jmp	Lj13955
Lj13954:
	movb	$1,-9(%ebp)
	jmp	Lj13959
Lj13955:
	movb	$0,-9(%ebp)
Lj13959:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GUIDCASE$TGUID$array_of_TGUID$$LONGINT
SYSUTILS_GUIDCASE$TGUID$array_of_TGUID$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	cmpl	$0,-16(%ebp)
	jl	Lj13963
	incl	-16(%ebp)
	.balign 4,0x90
Lj13964:
	decl	-16(%ebp)
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	shll	$4,%eax
	leal	(%edx,%eax),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_ISEQUALGUID$TGUID$TGUID$$BOOLEAN
	testb	%al,%al
	jne	Lj13965
	jmp	Lj13966
Lj13965:
	jmp	Lj13960
Lj13966:
	cmpl	$0,-16(%ebp)
	jg	Lj13964
Lj13963:
	movl	$-1,-16(%ebp)
Lj13960:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GUIDTOSTRING$TGUID$$ANSISTRING
SYSUTILS_GUIDTOSTRING$TGUID$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$96,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	$38,%edx
	call	fpc_ansistr_setlength
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-92(%ebp)
	movl	$0,-96(%ebp)
	movl	-4(%ebp),%eax
	movzwl	4(%eax),%eax
	movl	%eax,-84(%ebp)
	movl	$0,-88(%ebp)
	movl	-4(%ebp),%eax
	movzwl	6(%eax),%eax
	movl	%eax,-76(%ebp)
	movl	$0,-80(%ebp)
	movl	-4(%ebp),%eax
	movzbl	8(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	$0,-72(%ebp)
	movl	-4(%ebp),%eax
	movzbl	9(%eax),%eax
	movl	%eax,-60(%ebp)
	movl	$0,-64(%ebp)
	movl	-4(%ebp),%eax
	movzbl	10(%eax),%eax
	movl	%eax,-52(%ebp)
	movl	$0,-56(%ebp)
	movl	-4(%ebp),%eax
	movzbl	11(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	$0,-48(%ebp)
	movl	-4(%ebp),%eax
	movzbl	12(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	$0,-40(%ebp)
	movl	-4(%ebp),%eax
	movzbl	13(%eax),%eax
	movl	%eax,-28(%ebp)
	movl	$0,-32(%ebp)
	movl	-4(%ebp),%eax
	movzbl	14(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	-4(%ebp),%eax
	movzbl	15(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-96(%ebp),%eax
	pushl	%eax
	pushl	$10
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj13985
	movl	$FPC_EMPTYCHAR,%eax
Lj13985:
	movl	$_$SYSUTILS$_Ld110,%ecx
	movl	$38,%edx
	call	SYSUTILS_STRLFMT$PCHAR$LONGWORD$PCHAR$array_of_const$$PCHAR
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$96,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj13992
	jmp	Lj13993
Lj13992:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj13993:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj13998
	jmp	Lj13999
Lj13998:
	jmp	Lj13990
Lj13999:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14002
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14006
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	leal	4(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,4(%ebx)
Lj14006:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14007
	call	FPC_RERAISE
Lj14007:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14017
	jmp	Lj14016
Lj14017:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14015
	jmp	Lj14016
Lj14015:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj14016:
Lj14002:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14004
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14021
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14022
	jmp	Lj14023
Lj14022:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj14023:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj14021:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14020
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj14020:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj14004
Lj14004:
Lj13990:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$100,%esp
	movl	%ebx,-100(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	$0,-96(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj14030
	jmp	Lj14031
Lj14030:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj14031:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj14036
	jmp	Lj14037
Lj14036:
	jmp	Lj14028
Lj14037:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14040
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14044
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	leal	-96(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	movl	-96(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	leal	4(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-96(%ebp),%eax
	movl	%eax,4(%ebx)
Lj14044:
	call	FPC_POPADDRSTACK
	leal	-96(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-96(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj14045
	call	FPC_RERAISE
Lj14045:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14063
	jmp	Lj14062
Lj14063:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14061
	jmp	Lj14062
Lj14061:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj14062:
Lj14040:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14042
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14067
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14068
	jmp	Lj14069
Lj14068:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj14069:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj14067:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14066
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj14066:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj14042
Lj14042:
Lj14028:
	movl	-12(%ebp),%eax
	movl	-100(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_EXCEPTION_$__CREATERES$PSTRING$$EXCEPTION
SYSUTILS_EXCEPTION_$__CREATERES$PSTRING$$EXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$100,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj14076
	jmp	Lj14077
Lj14076:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj14077:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj14082
	jmp	Lj14083
Lj14082:
	jmp	Lj14074
Lj14083:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14086
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14090
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	movl	-4(%ebp),%esi
	movl	(%esi),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	leal	4(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	(%esi),%eax
	movl	%eax,4(%ebx)
Lj14090:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14091
	call	FPC_RERAISE
Lj14091:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14101
	jmp	Lj14100
Lj14101:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14099
	jmp	Lj14100
Lj14099:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj14100:
Lj14086:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14088
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14105
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14106
	jmp	Lj14107
Lj14106:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj14107:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj14105:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14104
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj14104:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj14088
Lj14088:
Lj14074:
	movl	-12(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXCEPTION_$__CREATERESFMT$PSTRING$array_of_const$$EXCEPTION
SYSUTILS_EXCEPTION_$__CREATERESFMT$PSTRING$array_of_const$$EXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$100,%esp
	movl	%ebx,-100(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	$0,-96(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj14114
	jmp	Lj14115
Lj14114:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj14115:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj14120
	jmp	Lj14121
Lj14120:
	jmp	Lj14112
Lj14121:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14124
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14128
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	leal	-96(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	8(%ebp),%ecx
	movl	12(%ebp),%edx
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	movl	-96(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	leal	4(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-96(%ebp),%eax
	movl	%eax,4(%ebx)
Lj14128:
	call	FPC_POPADDRSTACK
	leal	-96(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-96(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj14129
	call	FPC_RERAISE
Lj14129:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14147
	jmp	Lj14146
Lj14147:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14145
	jmp	Lj14146
Lj14145:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj14146:
Lj14124:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14126
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14151
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14152
	jmp	Lj14153
Lj14152:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj14153:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj14151:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14150
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj14150:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj14126
Lj14126:
Lj14112:
	movl	-12(%ebp),%eax
	movl	-100(%ebp),%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_EXCEPTION_$__CREATEHELP$ANSISTRING$LONGINT$$EXCEPTION
SYSUTILS_EXCEPTION_$__CREATEHELP$ANSISTRING$LONGINT$$EXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$96,%esp
	movl	%ebx,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj14160
	jmp	Lj14161
Lj14160:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj14161:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj14166
	jmp	Lj14167
Lj14166:
	jmp	Lj14158
Lj14167:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14170
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14174
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	leal	4(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,4(%ebx)
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,8(%edx)
Lj14174:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14175
	call	FPC_RERAISE
Lj14175:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14187
	jmp	Lj14186
Lj14187:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14185
	jmp	Lj14186
Lj14185:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj14186:
Lj14170:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14172
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14191
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14192
	jmp	Lj14193
Lj14192:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj14193:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj14191:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14190
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj14190:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj14172
Lj14172:
Lj14158:
	movl	-12(%ebp),%eax
	movl	-96(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_EXCEPTION_$__CREATEFMTHELP$ANSISTRING$array_of_const$LONGINT$$EXCEPTION
SYSUTILS_EXCEPTION_$__CREATEFMTHELP$ANSISTRING$array_of_const$LONGINT$$EXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$100,%esp
	movl	%ebx,-100(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	$0,-96(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj14200
	jmp	Lj14201
Lj14200:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj14201:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj14206
	jmp	Lj14207
Lj14206:
	jmp	Lj14198
Lj14207:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14210
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14214
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	leal	-96(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%eax
	pushl	%eax
	movl	12(%ebp),%ecx
	movl	16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	movl	-96(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	leal	4(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-96(%ebp),%eax
	movl	%eax,4(%ebx)
	movl	-12(%ebp),%eax
	movl	8(%ebp),%edx
	movl	%edx,8(%eax)
Lj14214:
	call	FPC_POPADDRSTACK
	leal	-96(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-96(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj14215
	call	FPC_RERAISE
Lj14215:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14235
	jmp	Lj14234
Lj14235:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14233
	jmp	Lj14234
Lj14233:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj14234:
Lj14210:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14212
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14239
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14240
	jmp	Lj14241
Lj14240:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj14241:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj14239:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14238
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj14238:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj14212
Lj14212:
Lj14198:
	movl	-12(%ebp),%eax
	movl	-100(%ebp),%ebx
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_EXCEPTION_$__CREATERESHELP$PSTRING$LONGINT$$EXCEPTION
SYSUTILS_EXCEPTION_$__CREATERESHELP$PSTRING$LONGINT$$EXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$100,%esp
	movl	%ebx,-100(%ebp)
	movl	%esi,-96(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj14248
	jmp	Lj14249
Lj14248:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj14249:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj14254
	jmp	Lj14255
Lj14254:
	jmp	Lj14246
Lj14255:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14258
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14262
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	movl	-4(%ebp),%esi
	movl	(%esi),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	leal	4(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	(%esi),%eax
	movl	%eax,4(%ebx)
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,8(%edx)
Lj14262:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14263
	call	FPC_RERAISE
Lj14263:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14275
	jmp	Lj14274
Lj14275:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14273
	jmp	Lj14274
Lj14273:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj14274:
Lj14258:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14260
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14279
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14280
	jmp	Lj14281
Lj14280:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj14281:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj14279:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14278
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj14278:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj14260
Lj14260:
Lj14246:
	movl	-12(%ebp),%eax
	movl	-100(%ebp),%ebx
	movl	-96(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_EXCEPTION_$__CREATERESFMTHELP$PSTRING$array_of_const$LONGINT$$EXCEPTION
SYSUTILS_EXCEPTION_$__CREATERESFMTHELP$PSTRING$array_of_const$LONGINT$$EXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$100,%esp
	movl	%ebx,-100(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	$0,-96(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj14288
	jmp	Lj14289
Lj14288:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj14289:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj14294
	jmp	Lj14295
Lj14294:
	jmp	Lj14286
Lj14295:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14298
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14302
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSTEM_TOBJECT_$__CREATE$$TOBJECT
	leal	-96(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-96(%ebp)
	leal	-96(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	12(%ebp),%ecx
	movl	16(%ebp),%edx
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	movl	-96(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	leal	4(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-96(%ebp),%eax
	movl	%eax,4(%ebx)
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,8(%edx)
Lj14302:
	call	FPC_POPADDRSTACK
	leal	-96(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-96(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj14303
	call	FPC_RERAISE
Lj14303:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14323
	jmp	Lj14322
Lj14323:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14321
	jmp	Lj14322
Lj14321:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj14322:
Lj14298:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14300
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14327
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14328
	jmp	Lj14329
Lj14328:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj14329:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj14327:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14326
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj14326:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj14300
Lj14300:
Lj14286:
	movl	-12(%ebp),%eax
	movl	-100(%ebp),%ebx
	leave
	ret	$12

.text
	.balign 4,0x90
.globl	SYSUTILS_EHEAPMEMORYERROR_$__FREEINSTANCE
SYSUTILS_EHEAPMEMORYERROR_$__FREEINSTANCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,12(%eax)
	jne	Lj14336
	jmp	Lj14337
Lj14336:
	movl	-4(%ebp),%eax
	call	SYSTEM_TOBJECT_$__FREEINSTANCE
Lj14337:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EVARIANTERROR_$__CREATECODE$LONGINT$$EVARIANTERROR
SYSUTILS_EVARIANTERROR_$__CREATECODE$LONGINT$$EVARIANTERROR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$100,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj14342
	jmp	Lj14343
Lj14342:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj14343:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj14348
	jmp	Lj14349
Lj14348:
	jmp	Lj14340
Lj14349:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14352
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14356
	movl	-4(%ebp),%eax
	cmpl	$-2147467263,%eax
	je	Lj14368
	cmpl	$-2147418113,%eax
	je	Lj14371
	cmpl	$-2147352572,%eax
	je	Lj14362
	cmpl	$-2147352571,%eax
	je	Lj14363
	cmpl	$-2147352568,%eax
	je	Lj14364
	cmpl	$-2147352567,%eax
	je	Lj14371
	cmpl	$-2147352566,%eax
	je	Lj14365
	cmpl	$-2147352565,%eax
	je	Lj14366
	cmpl	$-2147352563,%eax
	je	Lj14367
	cmpl	$-2147024882,%eax
	je	Lj14369
	cmpl	$-2147024809,%eax
	je	Lj14370
	testl	%eax,%eax
	je	Lj14361
	jmp	Lj14360
Lj14361:
	movl	RESSTR_SYSCONST_SNOERROR+4,%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	jmp	Lj14359
Lj14362:
	movl	RESSTR_SYSCONST_SVARPARAMNOTFOUND+4,%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	jmp	Lj14359
Lj14363:
	movl	RESSTR_SYSCONST_SINVALIDVARCAST+4,%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	jmp	Lj14359
Lj14364:
	movl	RESSTR_SYSCONST_SVARBADTYPE+4,%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	jmp	Lj14359
Lj14365:
	movl	RESSTR_SYSCONST_SVAROVERFLOW+4,%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	jmp	Lj14359
Lj14366:
	movl	RESSTR_SYSCONST_SVARARRAYBOUNDS+4,%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	jmp	Lj14359
Lj14367:
	movl	RESSTR_SYSCONST_SVARARRAYLOCKED+4,%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	jmp	Lj14359
Lj14368:
	movl	RESSTR_SYSCONST_SVARNOTIMPLEMENTED+4,%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	jmp	Lj14359
Lj14369:
	movl	RESSTR_SYSCONST_SVAROUTOFMEMORY+4,%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	jmp	Lj14359
Lj14370:
	movl	RESSTR_SYSCONST_SVARINVALID+4,%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	jmp	Lj14359
Lj14371:
	movl	RESSTR_SYSCONST_SVARUNEXPECTED+4,%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	jmp	Lj14359
Lj14360:
	movl	-4(%ebp),%eax
	movl	%eax,-96(%ebp)
	movl	$0,-100(%ebp)
	leal	-100(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SUNKNOWNERRORCODE+4,%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
Lj14359:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,12(%edx)
Lj14356:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14357
	call	FPC_RERAISE
Lj14357:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14452
	jmp	Lj14451
Lj14452:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14450
	jmp	Lj14451
Lj14450:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj14451:
Lj14352:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14354
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14456
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj14457
	jmp	Lj14458
Lj14457:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj14458:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj14456:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj14455
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj14455:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj14354
Lj14354:
Lj14340:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_CATCHUNHANDLEDEXCEPTION$TOBJECT$POINTER$LONGINT$PPOINTER
SYSUTILS_CATCHUNHANDLEDEXCEPTION$TOBJECT$POINTER$LONGINT$PPOINTER:
.globl	FPC_BREAK_UNHANDLED_EXCEPTION
FPC_BREAK_UNHANDLED_EXCEPTION:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$588,%esp
	movl	%ebx,-588(%ebp)
	movl	%esi,-584(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-324(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14465
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj14470
	movl	U_SYSTEM_STDOUT,%eax
	call	*%edx
	jmp	Lj14471
Lj14470:
	movl	$U_SYSTEM_STDOUT+4,%eax
Lj14471:
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%ebx
	movl	%ebx,%edx
	movl	$_$SYSUTILS$_Ld111,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	-8(%ebp),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	leal	-320(%ebp),%edx
	movb	$8,%al
	call	SYSTEM_HEXSTR$QWORD$BYTE$$SHORTSTRING
	leal	-320(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%edx
	movl	$_$SYSUTILS$_Ld112,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	movl	-4(%ebp),%edx
	movl	$VMT_SYSUTILS_EXCEPTION,%eax
	call	fpc_do_is
	testb	%al,%al
	jne	Lj14500
	jmp	Lj14501
Lj14500:
	leal	-324(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-324(%ebp)
	leal	-580(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING
	leal	-580(%ebp),%eax
	leal	-324(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-324(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$_$SYSUTILS$_Ld113,%eax
	movl	%eax,-72(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-68(%ebp)
	leal	-76(%ebp),%edx
	leal	-16(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
	movl	-24(%ebp),%ebx
	movl	-16(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	fpc_write_text_ansistr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	jmp	Lj14530
Lj14501:
	movl	-24(%ebp),%ebx
	movl	%ebx,%edx
	movl	$_$SYSUTILS$_Ld114,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	leal	-580(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING
	leal	-580(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%edx
	movl	$_$SYSUTILS$_Ld115,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
Lj14530:
	movl	-24(%ebp),%ebx
	leal	-580(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	TC_SYSTEM_BACKTRACESTRFUNC,%ecx
	call	*%ecx
	leal	-580(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj14571
	jmp	Lj14572
Lj14571:
	movl	-12(%ebp),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj14574
	decl	-20(%ebp)
	.balign 4,0x90
Lj14575:
	incl	-20(%ebp)
	movl	-24(%ebp),%esi
	movl	8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	leal	-580(%ebp),%edx
	movl	TC_SYSTEM_BACKTRACESTRFUNC,%ecx
	call	*%ecx
	leal	-580(%ebp),%ecx
	movl	%esi,%edx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%esi,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	cmpl	-20(%ebp),%ebx
	jg	Lj14575
Lj14574:
Lj14572:
	movl	-24(%ebp),%ebx
	movl	%ebx,%edx
	movl	$_$SYSUTILS$_Ld92,%ecx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
Lj14465:
	call	FPC_POPADDRSTACK
	leal	-324(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-324(%ebp)
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj14466
	call	FPC_RERAISE
Lj14466:
	movl	-588(%ebp),%ebx
	movl	-584(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
SYSUTILS_RUNERRORTOEXCEPT$LONGINT$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$28,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1,%eax
	jl	Lj14609
	decl	%eax
	je	Lj14610
	decl	%eax
	jl	Lj14609
	subl	$4,%eax
	jle	Lj14612
	subl	$94,%eax
	jl	Lj14609
	subl	$3,%eax
	jle	Lj14612
	subl	$2,%eax
	jl	Lj14609
	subl	$1,%eax
	jle	Lj14612
	subl	$94,%eax
	je	Lj14613
	decl	%eax
	je	Lj14614
	subl	$2,%eax
	je	Lj14610
	decl	%eax
	je	Lj14611
	decl	%eax
	je	Lj14615
	decl	%eax
	je	Lj14616
	decl	%eax
	je	Lj14617
	subl	$4,%eax
	je	Lj14618
	decl	%eax
	je	Lj14619
	subl	$2,%eax
	je	Lj14620
	decl	%eax
	je	Lj14621
	decl	%eax
	je	Lj14622
	decl	%eax
	je	Lj14623
	decl	%eax
	je	Lj14624
	decl	%eax
	je	Lj14625
	decl	%eax
	je	Lj14626
	decl	%eax
	je	Lj14627
	decl	%eax
	je	Lj14628
	decl	%eax
	je	Lj14629
	decl	%eax
	je	Lj14630
	decl	%eax
	je	Lj14631
	subl	$2,%eax
	je	Lj14632
	decl	%eax
	je	Lj14633
	decl	%eax
	je	Lj14634
	subl	$2,%eax
	je	Lj14635
	decl	%eax
	je	Lj14636
	decl	%eax
	je	Lj14637
	decl	%eax
	je	Lj14638
	jmp	Lj14609
Lj14610:
	movl	U_SYSUTILS_OUTOFMEMORY,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14611:
	movl	U_SYSUTILS_INVALIDPOINTER,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14612:
	movl	-4(%ebp),%eax
	cmpl	$2,%eax
	jl	Lj14644
	subl	$2,%eax
	je	Lj14645
	decl	%eax
	je	Lj14646
	decl	%eax
	je	Lj14647
	decl	%eax
	je	Lj14648
	decl	%eax
	je	Lj14649
	subl	$9,%eax
	je	Lj14650
	subl	$85,%eax
	je	Lj14651
	decl	%eax
	je	Lj14652
	decl	%eax
	je	Lj14653
	decl	%eax
	je	Lj14654
	decl	%eax
	je	Lj14655
	decl	%eax
	je	Lj14656
	decl	%eax
	je	Lj14657
	jmp	Lj14644
Lj14645:
	movl	$RESSTR_SYSCONST_SFILENOTFOUND+4,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj14643
Lj14646:
	movl	$RESSTR_SYSCONST_SINVALIDFILENAME+4,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj14643
Lj14647:
	movl	$RESSTR_SYSCONST_STOOMANYOPENFILES+4,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj14643
Lj14648:
	movl	$RESSTR_SYSCONST_SACCESSDENIED+4,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj14643
Lj14649:
	movl	$RESSTR_SYSCONST_SINVALIDFILEHANDLE+4,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj14643
Lj14650:
	movl	$RESSTR_SYSCONST_SINVALIDDRIVE+4,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj14643
Lj14651:
	movl	$RESSTR_SYSCONST_SENDOFFILE+4,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj14643
Lj14652:
	movl	$RESSTR_SYSCONST_SDISKFULL+4,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj14643
Lj14653:
	movl	$RESSTR_SYSCONST_SFILENOTASSIGNED+4,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj14643
Lj14654:
	movl	$RESSTR_SYSCONST_SFILENOTOPEN+4,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj14643
Lj14655:
	movl	$RESSTR_SYSCONST_SFILENOTOPENFORINPUT+4,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj14643
Lj14656:
	movl	$RESSTR_SYSCONST_SFILENOTOPENFOROUTPUT+4,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj14643
Lj14657:
	movl	$RESSTR_SYSCONST_SINVALIDINPUT+4,%eax
	movl	%eax,-20(%ebp)
	jmp	Lj14643
Lj14644:
Lj14643:
	movl	-20(%ebp),%eax
	movl	(%eax),%ecx
	movl	$VMT_SYSUTILS_EINOUTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	%eax,12(%edx)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj14696
	movl	U_SYSTEM_INOUTRES,%eax
	call	*%edx
	jmp	Lj14697
Lj14696:
	movl	$U_SYSTEM_INOUTRES+4,%eax
Lj14697:
	movw	$0,(%eax)
	jmp	Lj14608
Lj14613:
	movl	RESSTR_SYSCONST_SDIVBYZERO+4,%ecx
	movl	$VMT_SYSUTILS_EDIVBYZERO,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14614:
	movl	RESSTR_SYSCONST_SRANGEERROR+4,%ecx
	movl	$VMT_SYSUTILS_ERANGEERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14615:
	movl	RESSTR_SYSCONST_SOVERFLOW+4,%ecx
	movl	$VMT_SYSUTILS_EOVERFLOW,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14616:
	movl	RESSTR_SYSCONST_SUNDERFLOW+4,%ecx
	movl	$VMT_SYSUTILS_EOVERFLOW,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14617:
	movl	RESSTR_SYSCONST_SINVALIDOP+4,%ecx
	movl	$VMT_SYSUTILS_EINVALIDOP,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14618:
	movl	RESSTR_SYSCONST_SABSTRACTERROR+4,%ecx
	movl	$VMT_SYSUTILS_EABSTRACTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14619:
	movl	RESSTR_SYSCONST_SEXTERNALEXCEPTION+4,%ecx
	movl	$VMT_SYSUTILS_EEXTERNALEXCEPTION,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14620:
	movl	RESSTR_SYSCONST_SBUSERROR+4,%ecx
	movl	$VMT_SYSUTILS_EBUSERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14621:
	movl	RESSTR_SYSCONST_SINTOVERFLOW+4,%ecx
	movl	$VMT_SYSUTILS_EINTOVERFLOW,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14622:
	movl	RESSTR_SYSCONST_SACCESSVIOLATION+4,%ecx
	movl	$VMT_SYSUTILS_EACCESSVIOLATION,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14623:
	movl	RESSTR_SYSCONST_SCONTROLC+4,%ecx
	movl	$VMT_SYSUTILS_ECONTROLC,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14624:
	movl	RESSTR_SYSCONST_SPRIVILEGE+4,%ecx
	movl	$VMT_SYSUTILS_EPRIVILEGE,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14625:
	movl	RESSTR_SYSCONST_SINVALIDCAST+4,%ecx
	movl	$VMT_SYSUTILS_EINVALIDCAST,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14626:
	movl	RESSTR_SYSCONST_SINVALIDVARCAST+4,%ecx
	movl	$VMT_SYSUTILS_EVARIANTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14627:
	movl	RESSTR_SYSCONST_SINVALIDVAROP+4,%ecx
	movl	$VMT_SYSUTILS_EVARIANTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14628:
	movl	RESSTR_SYSCONST_SDISPATCHERROR+4,%ecx
	movl	$VMT_SYSUTILS_EVARIANTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14629:
	movl	RESSTR_SYSCONST_SVARARRAYCREATE+4,%ecx
	movl	$VMT_SYSUTILS_EVARIANTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14630:
	movl	RESSTR_SYSCONST_SVARNOTARRAY+4,%ecx
	movl	$VMT_SYSUTILS_EVARIANTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14631:
	movl	RESSTR_SYSCONST_SVARARRAYBOUNDS+4,%ecx
	movl	$VMT_SYSUTILS_EVARIANTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14632:
	movl	RESSTR_SYSCONST_SASSERTIONFAILED+4,%ecx
	movl	$VMT_SYSUTILS_EASSERTIONFAILED,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14633:
	movl	RESSTR_SYSCONST_SINTFCASTERROR+4,%ecx
	movl	$VMT_SYSUTILS_EINTFCASTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14634:
	movl	RESSTR_SYSCONST_SSAFECALLEXCEPTION+4,%ecx
	movl	$VMT_SYSUTILS_ESAFECALLEXCEPTION,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14635:
	movl	RESSTR_SYSCONST_SICONVERROR+4,%ecx
	movl	$VMT_SYSUTILS_ECONVERTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14636:
	movl	RESSTR_SYSCONST_SNOTHREADSUPPORT+4,%ecx
	movl	$VMT_SYSUTILS_ENOTHREADSUPPORT,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14637:
	movl	RESSTR_SYSCONST_SSIGQUIT+4,%ecx
	movl	$VMT_SYSUTILS_ENOWIDESTRINGSUPPORT,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14638:
	movl	RESSTR_SYSCONST_SMISSINGWSTRINGMANAGER+4,%ecx
	movl	$VMT_SYSUTILS_ENOWIDESTRINGSUPPORT,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-16(%ebp)
	jmp	Lj14608
Lj14609:
	movl	-4(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-28(%ebp)
	leal	-28(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_SYSCONST_SUNKNOWNRUNTIMEERROR+4,%ecx
	movl	$VMT_SYSUTILS_EXCEPTION,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
	movl	%eax,-16(%ebp)
Lj14608:
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-16(%ebp),%eax
	call	FPC_RAISEEXCEPTION
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_RAISELASTOSERROR
SYSUTILS_RAISELASTOSERROR:
	pushl	%ebp
	movl	%esp,%ebp
	movl	$VMT_SYSUTILS_EXCEPTION,%edx
	movl	$_$SYSUTILS$_Ld116,%ecx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La24:
	movl	%ebp,%ecx
	movl	$La24,%edx
	call	FPC_RAISEEXCEPTION
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_RAISELASTOSERROR$LONGINT
SYSUTILS_RAISELASTOSERROR$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	call	SYSUTILS_RAISELASTOSERROR
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_ASSERTERRORHANDLER$SHORTSTRING$SHORTSTRING$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$92,%esp
	movl	%ebx,-92(%ebp)
	movl	%esi,-88(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj14930
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-60(%ebp),%eax
	testl	%eax,%eax
	je	Lj14933
	jmp	Lj14934
Lj14933:
	movl	RESSTR_SYSCONST_SASSERTIONFAILED+4,%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-16(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	RESSTR_SYSCONST_SASSERTIONFAILED+4,%eax
	movl	%eax,-16(%ebp)
	jmp	Lj14941
Lj14934:
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	fpc_shortstr_to_ansistr
Lj14941:
	movl	8(%ebp),%eax
	call	SYSTEM_GET_CALLER_FRAME$POINTER$$POINTER
	movl	%eax,%ebx
	movl	8(%ebp),%eax
	call	SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
	movl	%eax,%esi
	movl	-16(%ebp),%eax
	movl	%eax,-80(%ebp)
	movl	$11,-84(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-72(%ebp)
	movl	$4,-76(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-64(%ebp)
	movl	$0,-68(%ebp)
	leal	-84(%ebp),%eax
	pushl	%eax
	pushl	$2
	movl	RESSTR_SYSCONST_SASSERTERROR+4,%ecx
	movl	$VMT_SYSUTILS_EASSERTIONFAILED,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
	movl	%ebx,%ecx
	movl	%esi,%edx
	call	FPC_RAISEEXCEPTION
Lj14930:
	call	FPC_POPADDRSTACK
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj14931
	call	FPC_RERAISE
Lj14931:
	movl	-92(%ebp),%ebx
	movl	-88(%ebp),%esi
	leave
	ret	$4

.text
	.balign 4,0x90
SYSUTILS_INITEXCEPTIONS:
	pushl	%ebp
	movl	%esp,%ebp
	movl	$VMT_SYSUTILS_EXCEPTION,%eax
	movl	%eax,U_OBJPAS_EXCEPTIONCLASS
	movl	$SYSUTILS_CATCHUNHANDLEDEXCEPTION$TOBJECT$POINTER$LONGINT$PPOINTER,%eax
	movl	%eax,TC_SYSTEM_EXCEPTPROC
	movl	RESSTR_SYSCONST_SOUTOFMEMORY+4,%ecx
	movl	$VMT_SYSUTILS_EOUTOFMEMORY,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,U_SYSUTILS_OUTOFMEMORY
	movl	U_SYSUTILS_OUTOFMEMORY,%eax
	movb	$0,12(%eax)
	movl	RESSTR_SYSCONST_SINVALIDPOINTER+4,%ecx
	movl	$VMT_SYSUTILS_EINVALIDPOINTER,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,U_SYSUTILS_INVALIDPOINTER
	movl	U_SYSUTILS_INVALIDPOINTER,%eax
	movb	$0,12(%eax)
	movl	$SYSUTILS_ASSERTERRORHANDLER$SHORTSTRING$SHORTSTRING$LONGINT$POINTER,%eax
	movl	%eax,TC_SYSTEM_ASSERTERRORPROC
	movl	$SYSUTILS_RUNERRORTOEXCEPT$LONGINT$POINTER$POINTER,%eax
	movl	%eax,TC_SYSTEM_ERRORPROC
	movl	$0,U_SYSUTILS_ONSHOWEXCEPTION
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_DONEEXCEPTIONS:
	pushl	%ebp
	movl	%esp,%ebp
	movl	U_SYSUTILS_OUTOFMEMORY,%eax
	movb	$1,12(%eax)
	movl	U_SYSUTILS_OUTOFMEMORY,%eax
	call	SYSTEM_TOBJECT_$__FREE
	movl	U_SYSUTILS_INVALIDPOINTER,%eax
	movb	$1,12(%eax)
	movl	U_SYSUTILS_INVALIDPOINTER,%eax
	call	SYSTEM_TOBJECT_$__FREE
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXCEPTOBJECT$$TOBJECT
SYSUTILS_EXCEPTOBJECT$$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	call	SYSTEM_RAISELIST$$PEXCEPTOBJECT
	testl	%eax,%eax
	je	Lj15010
	jmp	Lj15011
Lj15010:
	movl	$0,-4(%ebp)
	jmp	Lj15014
Lj15011:
	call	SYSTEM_RAISELIST$$PEXCEPTOBJECT
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
Lj15014:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXCEPTADDR$$POINTER
SYSUTILS_EXCEPTADDR$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	call	SYSTEM_RAISELIST$$PEXCEPTOBJECT
	testl	%eax,%eax
	je	Lj15019
	jmp	Lj15020
Lj15019:
	movl	$0,-4(%ebp)
	jmp	Lj15023
Lj15020:
	call	SYSTEM_RAISELIST$$PEXCEPTOBJECT
	movl	4(%eax),%eax
	movl	%eax,-4(%ebp)
Lj15023:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXCEPTFRAMECOUNT$$LONGINT
SYSUTILS_EXCEPTFRAMECOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	call	SYSTEM_RAISELIST$$PEXCEPTOBJECT
	testl	%eax,%eax
	je	Lj15028
	jmp	Lj15029
Lj15028:
	movl	$0,-4(%ebp)
	jmp	Lj15032
Lj15029:
	call	SYSTEM_RAISELIST$$PEXCEPTOBJECT
	movl	16(%eax),%eax
	movl	%eax,-4(%ebp)
Lj15032:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXCEPTFRAMES$$PPOINTER
SYSUTILS_EXCEPTFRAMES$$PPOINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	call	SYSTEM_RAISELIST$$PEXCEPTOBJECT
	testl	%eax,%eax
	je	Lj15037
	jmp	Lj15038
Lj15037:
	movl	$0,-4(%ebp)
	jmp	Lj15041
Lj15038:
	call	SYSTEM_RAISELIST$$PEXCEPTOBJECT
	movl	20(%eax),%eax
	movl	%eax,-4(%ebp)
Lj15041:
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXCEPTIONERRORMESSAGE$TOBJECT$POINTER$PCHAR$LONGINT$$LONGINT
SYSUTILS_EXCEPTIONERRORMESSAGE$TOBJECT$POINTER$PCHAR$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$340,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-340(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj15046
	leal	-20(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$5,-80(%ebp)
	leal	-336(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	SYSTEM_TOBJECT_$__CLASSNAME$$SHORTSTRING
	leal	-336(%ebp),%eax
	movl	%eax,-68(%ebp)
	movl	$4,-72(%ebp)
	leal	-80(%ebp),%edx
	movl	RESSTR_SYSCONST_SEXCEPTIONERRORMESSAGE+4,%eax
	movl	$1,%ecx
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	movl	-4(%ebp),%edx
	movl	$VMT_SYSUTILS_EXCEPTION,%eax
	call	fpc_do_is
	testb	%al,%al
	jne	Lj15061
	jmp	Lj15062
Lj15061:
	leal	-340(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-340(%ebp)
	leal	-340(%ebp),%eax
	pushl	%eax
	movl	-20(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$11,-80(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-68(%ebp)
	movl	$11,-72(%ebp)
	leal	-80(%ebp),%edx
	movl	$1,%ecx
	movl	$_$SYSUTILS$_Ld117,%eax
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	movl	-340(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-340(%ebp),%eax
	movl	%eax,-20(%ebp)
Lj15062:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj15079
	movl	-4(%eax),%eax
Lj15079:
	movl	%eax,-24(%ebp)
	movl	-20(%ebp),%eax
	movl	-24(%ebp),%edx
	movb	-1(%eax,%edx,1),%al
	cmpb	$46,%al
	jne	Lj15080
	jmp	Lj15081
Lj15080:
	movl	-20(%ebp),%edx
	leal	-20(%ebp),%eax
	movl	$_$SYSUTILS$_Ld118,%ecx
	call	fpc_ansistr_concat
	incl	-24(%ebp)
Lj15081:
	movl	-24(%ebp),%eax
	cmpl	8(%ebp),%eax
	jg	Lj15088
	jmp	Lj15089
Lj15088:
	movl	8(%ebp),%eax
	movl	%eax,-24(%ebp)
Lj15089:
	movl	-24(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj15092
	jmp	Lj15093
Lj15092:
	movl	-12(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	-20(%ebp),%eax
	call	SYSTEM_MOVE$formal$formal$LONGINT
Lj15093:
	movl	-24(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj15046:
	call	FPC_POPADDRSTACK
	leal	-340(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-340(%ebp)
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj15047
	call	FPC_RERAISE
Lj15047:
	movl	-16(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	SYSUTILS_SHOWEXCEPTION$TOBJECT$POINTER
SYSUTILS_SHOWEXCEPTION$TOBJECT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$268,%esp
	movl	%ebx,-268(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	pushl	$255
	leal	-263(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_EXCEPTIONERRORMESSAGE$TOBJECT$POINTER$PCHAR$LONGINT$$LONGINT
	movl	%eax,%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	fpc_shortstr_setlength
	cmpb	$0,operatingsystem_isconsole
	jne	Lj15124
	jmp	Lj15125
Lj15124:
	call	fpc_get_output
	movl	%eax,%ebx
	leal	-264(%ebp),%ecx
	movl	%ebx,%edx
	movl	$0,%eax
	call	fpc_write_text_shortstr
	call	FPC_IOCHECK
	movl	%ebx,%eax
	call	fpc_writeln_end
	call	FPC_IOCHECK
	jmp	Lj15136
Lj15125:
	cmpl	$0,U_SYSUTILS_ONSHOWEXCEPTION
	jne	Lj15137
	jmp	Lj15138
Lj15137:
	leal	-264(%ebp),%eax
	movl	U_SYSUTILS_ONSHOWEXCEPTION,%edx
	call	*%edx
Lj15138:
Lj15136:
	movl	-268(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ABORT
SYSUTILS_ABORT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%ebx,-4(%ebp)
	movl	%ebp,%eax
	call	SYSTEM_GET_CALLER_ADDR$POINTER$$POINTER
	movl	%eax,%ebx
	movl	RESSTR_SYSCONST_SABORTERROR+4,%ecx
	movl	$VMT_SYSUTILS_EABORT,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	$0,%ecx
	movl	%ebx,%edx
	call	FPC_RAISEEXCEPTION
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_OUTOFMEMORYERROR
SYSUTILS_OUTOFMEMORYERROR:
	pushl	%ebp
	movl	%esp,%ebp
La25:
	movl	%ebp,%ecx
	movl	$La25,%edx
	movl	U_SYSUTILS_OUTOFMEMORY,%eax
	call	FPC_RAISEEXCEPTION
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_ADDTERMINATEPROC$TTERMINATEPROC
SYSUTILS_ADDTERMINATEPROC$TTERMINATEPROC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$8,%eax
	call	fpc_getmem
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	TC_SYSUTILS_TPLIST,%edx
	movl	%edx,4(%eax)
	movl	-4(%ebp),%edx
	movl	%edx,(%eax)
	movl	-8(%ebp),%eax
	movl	%eax,TC_SYSUTILS_TPLIST
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_CALLTERMINATEPROCS$$BOOLEAN
SYSUTILS_CALLTERMINATEPROCS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	$1,-1(%ebp)
	movl	TC_SYSUTILS_TPLIST,%eax
	movl	%eax,-8(%ebp)
	jmp	Lj15176
	.balign 4,0x90
Lj15175:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	call	*%eax
	movb	%al,-1(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
Lj15176:
	cmpb	$0,-1(%ebp)
	jne	Lj15182
	jmp	Lj15177
Lj15182:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj15175
	jmp	Lj15177
Lj15177:
	movb	-1(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FORCEDIRECTORIES$ANSISTRING$$BOOLEAN
SYSUTILS_FORCEDIRECTORIES$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-60(%ebp)
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj15189
	movb	$0,-5(%ebp)
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_EXTRACTFILEDRIVE$ANSISTRING$$ANSISTRING
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jne	Lj15201
	jmp	Lj15199
Lj15201:
	movl	-16(%ebp),%eax
	call	SYSUTILS_DIRECTORYEXISTS$ANSISTRING$$BOOLEAN
	testb	%al,%al
	je	Lj15200
	jmp	Lj15199
Lj15200:
	movl	-16(%ebp),%edx
	movl	%ebp,%eax
	call	SYSUTILS_FORCEDIRECTORIES$ANSISTRING$$BOOLEAN_ISUNCDRIVE$ANSISTRING$$BOOLEAN
	testb	%al,%al
	je	Lj15198
	jmp	Lj15199
Lj15198:
	jmp	Lj15189
Lj15199:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj15208
	jmp	Lj15209
Lj15208:
	movl	RESSTR_SYSCONST_SCANNOTCREATEEMPTYDIR+4,%ecx
	movl	$VMT_SYSUTILS_EINOUTERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$3,12(%eax)
La26:
	movl	%ebp,%ecx
	movl	$La26,%edx
	movl	-12(%ebp),%eax
	call	FPC_RAISEEXCEPTION
Lj15209:
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	leal	-60(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_SETDIRSEPARATORS$ANSISTRING$$ANSISTRING
	movl	-60(%ebp),%edx
	movl	%ebp,%eax
	call	SYSUTILS_FORCEDIRECTORIES$ANSISTRING$$BOOLEAN_DOFORCEDIRECTORIES$ANSISTRING$$BOOLEAN
	movb	%al,-5(%ebp)
Lj15189:
	call	FPC_POPADDRSTACK
	leal	-60(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-60(%ebp)
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj15190
	call	FPC_RERAISE
Lj15190:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_FORCEDIRECTORIES$ANSISTRING$$BOOLEAN_ISUNCDRIVE$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$9,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj15240
	movl	-4(%eax),%eax
Lj15240:
	cmpl	$2,%eax
	jg	Lj15239
	jmp	Lj15237
Lj15239:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	cmpb	$92,%al
	je	Lj15238
	jmp	Lj15237
Lj15238:
	movl	-4(%ebp),%eax
	movb	1(%eax),%al
	cmpb	$92,%al
	je	Lj15236
	jmp	Lj15237
Lj15236:
	movb	$1,-9(%ebp)
	jmp	Lj15241
Lj15237:
	movb	$0,-9(%ebp)
Lj15241:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_FORCEDIRECTORIES$ANSISTRING$$BOOLEAN_DOFORCEDIRECTORIES$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$60,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	leal	-32(%ebp),%ecx
	leal	-56(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj15242
	movb	$1,-9(%ebp)
	leal	-16(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_EXCLUDETRAILINGPATHDELIMITER$ANSISTRING$$ANSISTRING
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj15251
	jmp	Lj15252
Lj15251:
	jmp	Lj15242
Lj15252:
	movl	-16(%ebp),%eax
	call	SYSUTILS_DIRECTORYEXISTS$ANSISTRING$$BOOLEAN
	testb	%al,%al
	je	Lj15253
	jmp	Lj15254
Lj15253:
	leal	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	call	SYSUTILS_EXTRACTFILEPATH$ANSISTRING$$ANSISTRING
	movl	-16(%ebp),%edx
	movl	-20(%ebp),%eax
	call	fpc_ansistr_compare_equal
	testl	%eax,%eax
	je	Lj15261
	jmp	Lj15262
Lj15261:
	movb	$0,-9(%ebp)
	jmp	Lj15269
Lj15262:
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	call	SYSUTILS_FORCEDIRECTORIES$ANSISTRING$$BOOLEAN_DOFORCEDIRECTORIES$ANSISTRING$$BOOLEAN
	movb	%al,-9(%ebp)
Lj15269:
	cmpb	$0,-9(%ebp)
	jne	Lj15276
	jmp	Lj15277
Lj15276:
	movl	-16(%ebp),%eax
	call	SYSUTILS_CREATEDIR$ANSISTRING$$BOOLEAN
	movb	%al,-9(%ebp)
Lj15277:
Lj15254:
Lj15242:
	call	FPC_POPADDRSTACK
	leal	-16(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-16(%ebp)
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj15243
	call	FPC_RERAISE
Lj15243:
	movb	-9(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_GETRANDOMBYTES$formal$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%ebx,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movb	TC_SYSUTILS_GUIDCALLEDRANDOMIZE,%al
	testb	%al,%al
	je	Lj15298
	jmp	Lj15299
Lj15298:
	call	SYSTEM_RANDOMIZE
	movb	$1,TC_SYSUTILS_GUIDCALLEDRANDOMIZE
Lj15299:
	movl	-8(%ebp),%ebx
	decl	%ebx
	movl	$0,-12(%ebp)
	cmpl	-12(%ebp),%ebx
	jl	Lj15303
	decl	-12(%ebp)
	.balign 4,0x90
Lj15304:
	incl	-12(%ebp)
	movl	$256,%eax
	call	SYSTEM_RANDOM$LONGINT$$LONGINT
	movl	-16(%ebp),%edx
	movl	-12(%ebp),%ecx
	movb	%al,(%edx,%ecx,1)
	cmpl	-12(%ebp),%ebx
	jg	Lj15304
Lj15303:
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_CREATEGUID$TGUID$$LONGINT
SYSUTILS_CREATEGUID$TGUID$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	cmpl	$0,TC_SYSUTILS_ONCREATEGUID
	jne	Lj15311
	jmp	Lj15312
Lj15311:
	movl	-4(%ebp),%eax
	movl	TC_SYSUTILS_ONCREATEGUID,%edx
	call	*%edx
	movl	%eax,-8(%ebp)
	jmp	Lj15317
Lj15312:
	movl	-4(%ebp),%eax
	movl	$16,%edx
	call	SYSUTILS_GETRANDOMBYTES$formal$LONGINT
	movl	-4(%ebp),%eax
	movb	8(%eax),%al
	andb	$63,%al
	movzbl	%al,%eax
	addl	$64,%eax
	movl	-4(%ebp),%edx
	movb	%al,8(%edx)
	movl	-4(%ebp),%eax
	movw	6(%eax),%ax
	andw	$4095,%ax
	movzwl	%ax,%eax
	addl	$16384,%eax
	movl	-4(%ebp),%edx
	movw	%ax,6(%edx)
	movl	$0,-8(%ebp)
Lj15317:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_SAFELOADLIBRARY$ANSISTRING$LONGWORD$$LONGWORD
SYSUTILS_SAFELOADLIBRARY$ANSISTRING$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$64,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj15330
	call	SYSTEM_GET8087CW$$WORD
	movw	%ax,-18(%ebp)
	cmpb	$0,TC_SYSTEM_HAS_SSE_SUPPORT
	jne	Lj15336
	jmp	Lj15337
Lj15336:
	call	SYSTEM_GETSSECSR$$LONGWORD
	movl	%eax,-24(%ebp)
Lj15337:
	movl	$0,-12(%ebp)
Lj15330:
	call	FPC_POPADDRSTACK
	movw	-18(%ebp),%ax
	call	SYSTEM_SET8087CW$WORD
	cmpb	$0,TC_SYSTEM_HAS_SSE_SUPPORT
	jne	Lj15344
	jmp	Lj15345
Lj15344:
	movl	-24(%ebp),%eax
	call	SYSTEM_SETSSECSR$LONGWORD
Lj15345:
	popl	%eax
	testl	%eax,%eax
	je	Lj15331
	decl	%eax
	testl	%eax,%eax
	je	Lj15332
Lj15332:
	call	FPC_RERAISE
Lj15331:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GETMODULENAME$LONGWORD$$ANSISTRING
SYSUTILS_GETMODULENAME$LONGWORD$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ebx
	movl	%ebx,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,(%ebx)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_BEEP
SYSUTILS_BEEP:
	pushl	%ebp
	movl	%esp,%ebp
	cmpl	$0,TC_SYSUTILS_ONBEEP
	jne	Lj15354
	jmp	Lj15355
Lj15354:
	movl	TC_SYSUTILS_ONBEEP,%eax
	call	*%eax
Lj15355:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FILEOPEN$ANSISTRING$LONGINT$$LONGINT
SYSUTILS_FILEOPEN$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	pushl	%ebx
	movl	%edx,%ecx
	movl	%eax,%edx
	movl	%ecx,%eax
	xorl	$112,%eax
	jz	Lj15358
	cmpl	$64,%eax
	jbe	Lj15359
Lj15358:
	orl	$64,%ecx
Lj15359:
	movl	$32555,%eax
	call	___SYSCALL
	popl	%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FILECREATE$ANSISTRING$$LONGINT
SYSUTILS_FILECREATE$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$777,%ecx
	movl	$327698,%edx
	call	SYSUTILS_FILECREATE$ANSISTRING$LONGINT$LONGINT$$LONGINT
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FILECREATE$ANSISTRING$LONGINT$$LONGINT
SYSUTILS_FILECREATE$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	$327698,%edx
	call	SYSUTILS_FILECREATE$ANSISTRING$LONGINT$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FILECREATE$ANSISTRING$LONGINT$LONGINT$$LONGINT
SYSUTILS_FILECREATE$ANSISTRING$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	pushl	%ebx
	movl	%edx,%ecx
	movl	%eax,%edx
	andl	$112,%ecx
	orl	%ecx,%ecx
	jz	Lj15382
	cmpl	$64,%ecx
	jbe	Lj15383
Lj15382:
	movl	$16,%ecx
Lj15383:
	orl	$327682,%ecx
	movl	$32555,%eax
	call	___SYSCALL
	popl	%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FILEREAD$LONGINT$formal$LONGINT$$LONGINT
SYSUTILS_FILEREAD$LONGINT$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	pushl	%ebx
	movl	%eax,%ebx
	movl	$16128,%eax
	call	___SYSCALL
	jnc	Lj15386
	movl	$-1,%eax
Lj15386:
	popl	%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FILEWRITE$LONGINT$formal$LONGINT$$LONGINT
SYSUTILS_FILEWRITE$LONGINT$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	pushl	%ebx
	movl	%eax,%ebx
	movl	$16384,%eax
	call	___SYSCALL
	jnc	Lj15389
	movl	$-1,%eax
Lj15389:
	popl	%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FILESEEK$LONGINT$LONGINT$LONGINT$$LONGINT
SYSUTILS_FILESEEK$LONGINT$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	pushl	%ebx
	movl	%eax,%ebx
	movl	%ecx,%eax
	movb	$66,%ah
	call	___SYSCALL
	jnc	Lj15392
	movl	$-1,%eax
Lj15392:
	popl	%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FILESEEK$LONGINT$INT64$LONGINT$$INT64
SYSUTILS_FILESEEK$LONGINT$INT64$LONGINT$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_FILESEEK$LONGINT$LONGINT$LONGINT$$LONGINT
	movl	%eax,%edx
	sarl	$31,%edx
	movl	%eax,-16(%ebp)
	movl	%edx,-12(%ebp)
	movl	-12(%ebp),%edx
	movl	-16(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_FILECLOSE$LONGINT
SYSUTILS_FILECLOSE$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$4,%eax
	jg	Lj15405
	jmp	Lj15407
Lj15407:
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj15408
	jmp	Lj15406
Lj15408:
	movl	-4(%ebp),%eax
	cmpl	$2,%eax
	jg	Lj15405
	jmp	Lj15406
Lj15405:
	pushl	%ebx
	movl	$15872,%eax
	movl	-4(%ebp),%ebx
	call	___SYSCALL
	popl	%ebx
Lj15406:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FILETRUNCATE$LONGINT$INT64$$BOOLEAN
SYSUTILS_FILETRUNCATE$LONGINT$INT64$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	pushl	%ebx
	movl	%eax,%ebx
	movl	8(%ebp),%edx
	movl	12(%ebp),%eax
	orl	%eax,%eax
	movl	$0,%eax
	jz	Lj15411
	movl	$32549,%eax
	pushl	%ebx
	call	___SYSCALL
	popl	%ebx
	jc	Lj15411
	movl	$16898,%eax
	movl	$0,%edx
	call	___SYSCALL
	movl	$0,%eax
	jnc	Lj15411
	decl	%eax
Lj15411:
	popl	%ebx
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	SYSUTILS_FILEAGE$ANSISTRING$$LONGINT
SYSUTILS_FILEAGE$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,%edx
	call	SYSUTILS_FILEOPEN$ANSISTRING$LONGINT$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj15420
	jmp	Lj15421
Lj15420:
	movl	-12(%ebp),%eax
	call	SYSUTILS_FILEGETDATE$LONGINT$$LONGINT
	movl	%eax,-8(%ebp)
	movl	-12(%ebp),%eax
	call	SYSUTILS_FILECLOSE$LONGINT
	jmp	Lj15428
Lj15421:
	movl	$-1,-8(%ebp)
Lj15428:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN
SYSUTILS_FILEEXISTS$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj15433
	jmp	Lj15434
Lj15433:
	movb	$0,-5(%ebp)
	jmp	Lj15437
Lj15434:
	movl	-4(%ebp),%eax
	call	SYSUTILS_FILEGETATTR$ANSISTRING$$LONGINT
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jge	Lj15444
	jmp	Lj15443
Lj15444:
	movl	-12(%ebp),%eax
	andl	$24,%eax
	testl	%eax,%eax
	je	Lj15442
	jmp	Lj15443
Lj15442:
	movb	$1,-5(%ebp)
	jmp	Lj15445
Lj15443:
	movb	$0,-5(%ebp)
Lj15445:
Lj15437:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FINDFIRST$ANSISTRING$LONGINT$TSEARCHREC$$LONGINT
SYSUTILS_FINDFIRST$ANSISTRING$LONGINT$TSEARCHREC$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$336,%esp
	movl	%ebx,-336(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	$INIT_SYSUTILS_TSEARCHREC,%edx
	call	FPC_INITIALIZE
	movl	$0,-76(%ebp)
	leal	-44(%ebp),%ecx
	leal	-68(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj15448
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj15451
	jmp	Lj15452
Lj15451:
	movl	$296,%eax
	call	fpc_getmem
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%eax
	movl	$-1,28(%eax)
	movl	$1,-28(%ebp)
	cmpb	$0,TC_SYSTEM_FSAPI64
	jne	Lj15463
	jmp	Lj15464
Lj15463:
	pushl	$11
	leal	-28(%ebp),%eax
	pushl	%eax
	pushl	$296
	pushl	-24(%ebp)
	movl	-8(%ebp),%eax
	andl	$14135,%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	leal	28(%eax),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj15481
	movl	$FPC_EMPTYCHAR,%eax
Lj15481:
	pushl	%eax
	call	_$dll$doscalls$_index_264
	addl	$28,%esp
	movl	%eax,-32(%ebp)
	jmp	Lj15482
Lj15464:
	pushl	$1
	leal	-28(%ebp),%eax
	pushl	%eax
	pushl	$296
	pushl	-24(%ebp)
	movl	-8(%ebp),%eax
	andl	$14135,%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	leal	28(%eax),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj15499
	movl	$FPC_EMPTYCHAR,%eax
Lj15499:
	pushl	%eax
	call	_$dll$doscalls$_index_264
	addl	$28,%esp
	movl	%eax,-32(%ebp)
Lj15482:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj15502
	jmp	Lj15501
Lj15502:
	movl	-28(%ebp),%eax
	testl	%eax,%eax
	je	Lj15500
	jmp	Lj15501
Lj15500:
	movl	$18,-32(%ebp)
Lj15501:
	movl	-32(%ebp),%eax
	negl	%eax
	movl	%eax,-16(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj15507
	jmp	Lj15508
Lj15507:
	movl	-12(%ebp),%eax
	movl	$0,24(%eax)
	movl	-24(%ebp),%eax
	movl	-12(%ebp),%edx
	movw	14(%eax),%ax
	movw	%ax,(%edx)
	movl	-24(%ebp),%eax
	movl	-12(%ebp),%edx
	movw	12(%eax),%ax
	movw	%ax,2(%edx)
	cmpb	$0,TC_SYSTEM_FSAPI64
	jne	Lj15515
	jmp	Lj15516
Lj15515:
	movl	-24(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	16(%eax),%edx
	movl	%edx,8(%ecx)
	movl	20(%eax),%eax
	movl	%eax,12(%ecx)
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	movl	-24(%ebp),%eax
	leal	36(%eax),%eax
	leal	-76(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-76(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	leal	20(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-76(%ebp),%eax
	movl	%eax,20(%ebx)
	movl	-24(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	32(%eax),%eax
	movl	%eax,16(%edx)
	jmp	Lj15527
Lj15516:
	movl	-24(%ebp),%eax
	movl	16(%eax),%ecx
	movl	$0,%edx
	movl	-12(%ebp),%eax
	movl	%ecx,8(%eax)
	movl	%edx,12(%eax)
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	movl	-24(%ebp),%eax
	leal	28(%eax),%eax
	leal	-76(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-76(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	leal	20(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-76(%ebp),%eax
	movl	%eax,20(%ebx)
	movl	-24(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	24(%eax),%eax
	movl	%eax,16(%edx)
Lj15527:
	jmp	Lj15538
Lj15508:
	movl	-12(%ebp),%eax
	call	SYSUTILS_FINDCLOSE$TSEARCHREC
Lj15538:
	movl	-24(%ebp),%eax
	call	fpc_freemem
	jmp	Lj15543
Lj15452:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15546
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj15547
Lj15546:
	movl	$U_DOS_DOSERROR+4,%eax
Lj15547:
	movl	(%eax),%eax
	movl	%eax,-32(%ebp)
	leal	-20(%ebp),%eax
	movl	$286,%edx
	call	SYSTEM_GETMEM$POINTER$LONGWORD
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,28(%eax)
	movl	-4(%ebp),%ecx
	leal	-332(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	leal	-332(%ebp),%eax
	movl	-20(%ebp),%ecx
	movw	-8(%ebp),%dx
	call	DOS_FINDFIRST$SHORTSTRING$WORD$SEARCHREC
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15568
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj15569
Lj15568:
	movl	$U_DOS_DOSERROR+4,%eax
Lj15569:
	movl	(%eax),%eax
	negl	%eax
	movl	%eax,-16(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15572
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj15573
Lj15572:
	movl	$U_DOS_DOSERROR+4,%eax
Lj15573:
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj15570
	jmp	Lj15571
Lj15570:
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	22(%eax),%eax
	movl	%eax,(%edx)
	movl	-20(%ebp),%eax
	movl	26(%eax),%eax
	movl	$0,%edx
	movl	-12(%ebp),%ecx
	movl	%eax,8(%ecx)
	movl	%edx,12(%ecx)
	movl	-20(%ebp),%eax
	movzbl	21(%eax),%edx
	movl	-12(%ebp),%eax
	movl	%edx,16(%eax)
	movl	-12(%ebp),%eax
	movl	$0,24(%eax)
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	movl	-20(%ebp),%eax
	leal	30(%eax),%eax
	leal	-76(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-76(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-12(%ebp),%ebx
	leal	20(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-76(%ebp),%eax
	movl	%eax,20(%ebx)
Lj15571:
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15590
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj15591
Lj15590:
	movl	$U_DOS_DOSERROR+4,%eax
Lj15591:
	movl	-32(%ebp),%edx
	movl	%edx,(%eax)
Lj15543:
Lj15448:
	call	FPC_POPADDRSTACK
	leal	-76(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-76(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj15449
	call	FPC_RERAISE
Lj15449:
	movl	-16(%ebp),%eax
	movl	-336(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FINDNEXT$TSEARCHREC$$LONGINT
SYSUTILS_FINDNEXT$TSEARCHREC$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$72,%esp
	movl	%ebx,-72(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj15594
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj15597
	jmp	Lj15598
Lj15597:
	movl	$296,%eax
	call	fpc_getmem
	movl	%eax,-16(%ebp)
	movl	$1,-20(%ebp)
	leal	-20(%ebp),%eax
	pushl	%eax
	pushl	$296
	pushl	-16(%ebp)
	movl	-4(%ebp),%eax
	pushl	28(%eax)
	call	_$dll$doscalls$_index_265
	addl	$16,%esp
	movl	%eax,-24(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj15619
	jmp	Lj15618
Lj15619:
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj15617
	jmp	Lj15618
Lj15617:
	movl	$18,-24(%ebp)
Lj15618:
	movl	-24(%ebp),%eax
	negl	%eax
	movl	%eax,-8(%ebp)
	movl	-24(%ebp),%eax
	testl	%eax,%eax
	je	Lj15624
	jmp	Lj15625
Lj15624:
	movl	-4(%ebp),%eax
	movl	$0,24(%eax)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movw	14(%eax),%ax
	movw	%ax,(%edx)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movw	12(%eax),%ax
	movw	%ax,2(%edx)
	cmpb	$0,TC_SYSTEM_FSAPI64
	jne	Lj15632
	jmp	Lj15633
Lj15632:
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	16(%eax),%edx
	movl	%edx,8(%ecx)
	movl	20(%eax),%eax
	movl	%eax,12(%ecx)
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	movl	-16(%ebp),%eax
	leal	36(%eax),%eax
	leal	-68(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-68(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	leal	20(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-68(%ebp),%eax
	movl	%eax,20(%ebx)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	32(%eax),%eax
	movl	%eax,16(%edx)
	jmp	Lj15644
Lj15633:
	movl	-16(%ebp),%eax
	movl	16(%eax),%eax
	movl	$0,%edx
	movl	-4(%ebp),%ecx
	movl	%eax,8(%ecx)
	movl	%edx,12(%ecx)
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	movl	-16(%ebp),%eax
	leal	28(%eax),%eax
	leal	-68(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-68(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	leal	20(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-68(%ebp),%eax
	movl	%eax,20(%ebx)
	movl	-16(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	24(%eax),%eax
	movl	%eax,16(%edx)
Lj15644:
Lj15625:
	movl	-16(%ebp),%eax
	call	fpc_freemem
	jmp	Lj15657
Lj15598:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj15660
	jmp	Lj15661
Lj15660:
	movl	-12(%ebp),%eax
	call	DOS_FINDNEXT$SEARCHREC
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15666
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj15667
Lj15666:
	movl	$U_DOS_DOSERROR+4,%eax
Lj15667:
	movl	(%eax),%eax
	negl	%eax
	movl	%eax,-8(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj15670
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj15671
Lj15670:
	movl	$U_DOS_DOSERROR+4,%eax
Lj15671:
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj15668
	jmp	Lj15669
Lj15668:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	22(%eax),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%eax
	movl	26(%eax),%eax
	movl	$0,%ecx
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	movl	%ecx,12(%edx)
	movl	-12(%ebp),%eax
	movzbl	21(%eax),%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	movl	-4(%ebp),%eax
	movl	$0,24(%eax)
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	movl	-12(%ebp),%eax
	leal	30(%eax),%eax
	leal	-68(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-68(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-4(%ebp),%ebx
	leal	20(%ebx),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-68(%ebp),%eax
	movl	%eax,20(%ebx)
Lj15669:
Lj15661:
Lj15657:
Lj15594:
	call	FPC_POPADDRSTACK
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj15595
	call	FPC_RERAISE
Lj15595:
	movl	-8(%ebp),%eax
	movl	-72(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FINDCLOSE$TSEARCHREC
SYSUTILS_FINDCLOSE$TSEARCHREC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj15688
	jmp	Lj15689
Lj15688:
	movl	-4(%ebp),%eax
	pushl	28(%eax)
	call	_$dll$doscalls$_index_263
	popl	%ebx
	jmp	Lj15692
Lj15689:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	call	DOS_FINDCLOSE$SEARCHREC
	movl	-8(%ebp),%eax
	movl	$286,%edx
	call	SYSTEM_FREEMEM$POINTER$LONGWORD
Lj15692:
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FILEGETDATE$LONGINT$$LONGINT
SYSUTILS_FILEGETDATE$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	pushl	%ebx
	movl	%eax,%ebx
	movw	$22272,%ax
	call	___SYSCALL
	movl	$-1,%eax
	jc	Lj15705
	movw	%dx,%ax
	shldl	$16,%ecx,%eax
Lj15705:
	popl	%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FILESETDATE$LONGINT$LONGINT$$LONGINT
SYSUTILS_FILESETDATE$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj15709
	jmp	Lj15710
Lj15709:
	movl	$24,%eax
	call	fpc_getmem
	movl	%eax,-16(%ebp)
	pushl	$24
	pushl	-16(%ebp)
	pushl	$1
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_279
	addl	$16,%esp
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj15727
	jmp	Lj15728
Lj15727:
	movl	$-1,-12(%ebp)
	jmp	Lj15731
Lj15728:
	movl	-8(%ebp),%eax
	shrl	$16,%eax
	movl	-16(%ebp),%edx
	movw	%ax,4(%edx)
	movl	-8(%ebp),%eax
	shrl	$16,%eax
	movl	-16(%ebp),%edx
	movw	%ax,8(%edx)
	movl	-16(%ebp),%edx
	movw	-8(%ebp),%ax
	movw	%ax,6(%edx)
	movl	-16(%ebp),%eax
	movw	-8(%ebp),%dx
	movw	%dx,10(%eax)
	pushl	$24
	pushl	-16(%ebp)
	pushl	$1
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_218
	addl	$16,%esp
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj15750
	jmp	Lj15751
Lj15750:
	movl	$-1,-12(%ebp)
	jmp	Lj15754
Lj15751:
	movl	$0,-12(%ebp)
Lj15754:
Lj15731:
	movl	-16(%ebp),%eax
	call	fpc_freemem
	jmp	Lj15759
Lj15710:
	pushl	%ebx
	movw	$22273,%ax
	movl	-4(%ebp),%ebx
	movw	-8(%ebp),%cx
	movw	-6(%ebp),%dx
	call	___SYSCALL
	jnc	Lj15708
	movl	$-1,%eax
Lj15708:
	movl	%eax,-12(%ebp)
	popl	%ebx
Lj15759:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FILEGETATTR$ANSISTRING$$LONGINT
SYSUTILS_FILEGETATTR$ANSISTRING$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,%edx
	movw	$17152,%ax
	call	___SYSCALL
	jnc	Lj15762
	movl	$-1,%eax
Lj15762:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_FILESETATTR$ANSISTRING$LONGINT$$LONGINT
SYSUTILS_FILESETATTR$ANSISTRING$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%edx,%ecx
	movl	%eax,%edx
	movw	$17153,%ax
	call	___SYSCALL
	movl	$0,%eax
	jnc	Lj15765
	movl	$-1,%eax
Lj15765:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN
SYSUTILS_DELETEFILE$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	movl	%eax,%edx
	movw	$16640,%ax
	call	___SYSCALL
	movl	$0,%eax
	jc	Lj15768
	incl	%eax
Lj15768:
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_RENAMEFILE$ANSISTRING$ANSISTRING$$BOOLEAN
SYSUTILS_RENAMEFILE$ANSISTRING$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1,%esp
	pushl	%edi
	movl	%eax,%edx
	movl	%edx,%edi
	movw	$22016,%ax
	call	___SYSCALL
	movl	$0,%eax
	jc	Lj15771
	incl	%eax
Lj15771:
	popl	%edi
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_DISKFREE$BYTE$$INT64
SYSUTILS_DISKFREE$BYTE$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$276,%esp
	movb	%al,-4(%ebp)
	movl	U_SYSTEM_OS_MODE,%eax
	testl	%eax,%eax
	je	Lj15776
	jmp	Lj15778
Lj15778:
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$2,%eax
	je	Lj15776
	jmp	Lj15777
Lj15776:
	pushl	%ebx
	movb	-4(%ebp),%dl
	movb	$54,%ah
	call	___SYSCALL
	cmpw	$-1,%ax
	je	Lj15774
	mulw	%cx
	mulw	%bx
	shll	$16,%edx
	movw	%ax,%dx
	movl	$0,%eax
	xchgl	%edx,%eax
	jmp	Lj15775
Lj15774:
	cltd
Lj15775:
	popl	%ebx
	leave
	ret
	jmp	Lj15779
Lj15777:
	pushl	$260
	leal	-272(%ebp),%eax
	pushl	%eax
	pushl	$1
	movzbl	-4(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_278
	addl	$16,%esp
	movl	%eax,-276(%ebp)
	movl	-276(%ebp),%eax
	testl	%eax,%eax
	je	Lj15790
	jmp	Lj15791
Lj15790:
	movl	-268(%ebp),%eax
	mull	-260(%ebp)
	pushl	%edx
	pushl	%eax
	movzwl	-256(%ebp),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj15800
Lj15791:
	movl	$-1,-12(%ebp)
	movl	$-1,-8(%ebp)
Lj15800:
Lj15779:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_DISKSIZE$BYTE$$INT64
SYSUTILS_DISKSIZE$BYTE$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$276,%esp
	movb	%al,-4(%ebp)
	movl	U_SYSTEM_OS_MODE,%eax
	testl	%eax,%eax
	je	Lj15807
	jmp	Lj15809
Lj15809:
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$2,%eax
	je	Lj15807
	jmp	Lj15808
Lj15807:
	pushl	%ebx
	movb	-4(%ebp),%dl
	movb	$54,%ah
	call	___SYSCALL
	movw	%dx,%bx
	cmpw	$-1,%ax
	je	Lj15805
	mulw	%cx
	mulw	%bx
	shll	$16,%edx
	movw	%ax,%dx
	movl	$0,%eax
	xchgl	%edx,%eax
	jmp	Lj15806
Lj15805:
	cltd
Lj15806:
	popl	%ebx
	leave
	ret
	jmp	Lj15810
Lj15808:
	pushl	$260
	leal	-272(%ebp),%eax
	pushl	%eax
	pushl	$1
	movzbl	-4(%ebp),%eax
	pushl	%eax
	call	_$dll$doscalls$_index_278
	addl	$16,%esp
	movl	%eax,-276(%ebp)
	movl	-276(%ebp),%eax
	testl	%eax,%eax
	je	Lj15821
	jmp	Lj15822
Lj15821:
	movl	-268(%ebp),%eax
	mull	-264(%ebp)
	pushl	%edx
	pushl	%eax
	movzwl	-256(%ebp),%eax
	movl	$0,%edx
	pushl	%edx
	pushl	%eax
	movl	$0,%eax
	call	fpc_mul_int64
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	jmp	Lj15831
Lj15822:
	movl	$-1,-12(%ebp)
	movl	$-1,-8(%ebp)
Lj15831:
Lj15810:
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GETCURRENTDIR$$ANSISTRING
SYSUTILS_GETCURRENTDIR$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%edx
	movb	$0,%al
	call	SYSTEM_GETDIR$BYTE$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_SETCURRENTDIR$ANSISTRING$$BOOLEAN
SYSUTILS_SETCURRENTDIR$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	OBJPAS_CHDIR$ANSISTRING
	call	SYSTEM_IORESULT$$WORD
	movzwl	%ax,%eax
	testl	%eax,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_CREATEDIR$ANSISTRING$$BOOLEAN
SYSUTILS_CREATEDIR$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	OBJPAS_MKDIR$ANSISTRING
	call	SYSTEM_IORESULT$$WORD
	movzwl	%ax,%eax
	testl	%eax,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_REMOVEDIR$ANSISTRING$$BOOLEAN
SYSUTILS_REMOVEDIR$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$5,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	OBJPAS_RMDIR$ANSISTRING
	call	SYSTEM_IORESULT$$WORD
	movzwl	%ax,%eax
	testl	%eax,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_DIRECTORYEXISTS$ANSISTRING$$BOOLEAN
SYSUTILS_DIRECTORYEXISTS$ANSISTRING$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj15860
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj15863
	jmp	Lj15864
Lj15863:
	movb	$0,-5(%ebp)
	jmp	Lj15867
Lj15864:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj15873
	movl	-4(%eax),%eax
Lj15873:
	cmpl	$2,%eax
	je	Lj15871
	jmp	Lj15872
Lj15872:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj15875
	movl	-4(%eax),%eax
Lj15875:
	cmpl	$3,%eax
	je	Lj15874
	jmp	Lj15869
Lj15874:
	movl	-4(%ebp),%eax
	movzbl	2(%eax),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj15871
	jmp	Lj15869
Lj15871:
	movl	-4(%ebp),%eax
	movzbl	1(%eax),%eax
	btl	%eax,TC_SYSTEM_ALLOWDRIVESEPARATORS
	jc	Lj15870
	jmp	Lj15869
Lj15870:
	movl	-4(%ebp),%eax
	movb	(%eax),%al
	call	SYSTEM_UPCASE$CHAR$$CHAR
	movzbl	%al,%eax
	subl	$65,%eax
	cmpl	$26,%eax
	jb	Lj15878
Lj15878:
	jc	Lj15868
	jmp	Lj15869
Lj15868:
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	movl	-4(%ebp),%edx
	leal	-56(%ebp),%eax
	movl	$_$SYSUTILS$_Ld118,%ecx
	call	fpc_ansistr_concat
	movl	-56(%ebp),%eax
	call	SYSUTILS_FILEGETATTR$ANSISTRING$$LONGINT
	movl	%eax,-12(%ebp)
	jmp	Lj15889
Lj15869:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj15894
	movl	-4(%eax),%eax
Lj15894:
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jc	Lj15893
	jmp	Lj15891
Lj15893:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj15895
	movl	-4(%eax),%eax
Lj15895:
	cmpl	$1,%eax
	jg	Lj15892
	jmp	Lj15891
Lj15892:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj15896
	movl	-4(%eax),%eax
Lj15896:
	decl	%eax
	movzbl	-1(%edx,%eax,1),%eax
	btl	%eax,TC_SYSTEM_ALLOWDIRECTORYSEPARATORS
	jnc	Lj15890
	jmp	Lj15891
Lj15890:
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%ecx
	testl	%ecx,%ecx
	je	Lj15905
	movl	-4(%ecx),%ecx
Lj15905:
	decl	%ecx
	movl	-4(%ebp),%eax
	movl	$1,%edx
	call	fpc_ansistr_copy
	movl	-56(%ebp),%eax
	call	SYSUTILS_FILEGETATTR$ANSISTRING$$LONGINT
	movl	%eax,-12(%ebp)
	jmp	Lj15910
Lj15891:
	movl	-4(%ebp),%eax
	call	SYSUTILS_FILEGETATTR$ANSISTRING$$LONGINT
	movl	%eax,-12(%ebp)
Lj15910:
Lj15889:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj15917
	jmp	Lj15916
Lj15917:
	movl	-12(%ebp),%eax
	andl	$16,%eax
	cmpl	$16,%eax
	je	Lj15915
	jmp	Lj15916
Lj15915:
	movb	$1,-5(%ebp)
	jmp	Lj15918
Lj15916:
	movb	$0,-5(%ebp)
Lj15918:
Lj15867:
Lj15860:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj15861
	call	FPC_RERAISE
Lj15861:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GETLOCALTIME$TSYSTEMTIME
SYSUTILS_GETLOCALTIME$TSYSTEMTIME:
	pushl	%ebp
	movl	%esp,%ebp
	pushl	%edi
	pushl	%eax
	movb	$42,%ah
	call	___SYSCALL
	popl	%eax
	movw	%cx,%ax
	stosw
	xorl	%eax,%eax
	movb	$10,%al
	mulb	%dl
	shll	$16,%eax
	movb	%dh,%al
	stosl
	pushl	%edi
	movb	$44,%ah
	call	___SYSCALL
	popl	%edi
	xorl	%eax,%eax
	movb	%cl,%al
	shll	$16,%eax
	movb	%ch,%al
	stosl
	movb	%dl,%al
	shll	$16,%eax
	movb	%dh,%al
	stosl
	popl	%edi
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_INITANSI:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movb	$0,-1(%ebp)
	decb	-1(%ebp)
	.balign 4,0x90
Lj15925:
	incb	-1(%ebp)
	movzbl	-1(%ebp),%eax
	movb	-1(%ebp),%dl
	movb	%dl,U_SYSUTILS_UPPERCASETABLE(,%eax,1)
	cmpb	$255,-1(%ebp)
	jb	Lj15925
	movl	$U_SYSUTILS_LOWERCASETABLE,%edx
	movl	$U_SYSUTILS_UPPERCASETABLE,%eax
	movl	$256,%ecx
	call	SYSTEM_MOVE$formal$formal$LONGINT
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj15934
	jmp	Lj15935
Lj15934:
	leal	-12(%ebp),%eax
	movb	$0,%cl
	movl	$8,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movl	$U_SYSUTILS_UPPERCASETABLE,%eax
	pushl	%eax
	leal	-12(%ebp),%eax
	pushl	%eax
	pushl	$256
	call	_$dll$nls$_index_7
	addl	$12,%esp
	jmp	Lj15948
Lj15935:
Lj15948:
	movb	$0,-1(%ebp)
	decb	-1(%ebp)
	.balign 4,0x90
Lj15951:
	incb	-1(%ebp)
	movzbl	-1(%ebp),%eax
	movb	U_SYSUTILS_UPPERCASETABLE(,%eax,1),%al
	cmpb	-1(%ebp),%al
	jne	Lj15952
	jmp	Lj15953
Lj15952:
	movzbl	-1(%ebp),%eax
	movzbl	U_SYSUTILS_UPPERCASETABLE(,%eax,1),%eax
	movb	-1(%ebp),%dl
	movb	%dl,U_SYSUTILS_LOWERCASETABLE(,%eax,1)
Lj15953:
	cmpb	$255,-1(%ebp)
	jb	Lj15951
	leave
	ret

.text
	.balign 4,0x90
SYSUTILS_INITINTERNATIONAL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$112,%esp
	movl	%ebx,-112(%ebp)
	movl	$0,-108(%ebp)
	leal	-76(%ebp),%ecx
	leal	-100(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj15958
	movl	$0,-60(%ebp)
	leal	-8(%ebp),%eax
	movb	$0,%cl
	movl	$8,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leal	-56(%ebp),%eax
	movb	$0,%cl
	movl	$48,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	leal	-60(%ebp),%eax
	pushl	%eax
	leal	-56(%ebp),%eax
	pushl	%eax
	leal	-8(%ebp),%eax
	pushl	%eax
	pushl	$48
	call	_$dll$nls$_index_5
	addl	$16,%esp
	movl	%eax,-64(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj15985
	jmp	Lj15986
Lj15985:
	movb	-35(%ebp),%al
	movb	%al,TC_SYSUTILS_DEFAULTFORMATSETTINGS+5
	movl	-48(%ebp),%eax
	cmpl	$1,%eax
	jb	Lj15990
	decl	%eax
	je	Lj15991
	decl	%eax
	je	Lj15992
	decl	%eax
	je	Lj15993
	jmp	Lj15990
Lj15991:
	movl	$_$SYSUTILS$_Ld119,%ebx
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS+12,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%ebx,TC_SYSUTILS_DEFAULTFORMATSETTINGS+12
	movl	$_$SYSUTILS$_Ld120,%ebx
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS+16,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%ebx,TC_SYSUTILS_DEFAULTFORMATSETTINGS+16
	jmp	Lj15989
Lj15992:
	movl	$_$SYSUTILS$_Ld121,%ebx
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS+12,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%ebx,TC_SYSUTILS_DEFAULTFORMATSETTINGS+12
	movl	$_$SYSUTILS$_Ld122,%ebx
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS+16,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%ebx,TC_SYSUTILS_DEFAULTFORMATSETTINGS+16
	jmp	Lj15989
Lj15993:
	movl	$_$SYSUTILS$_Ld123,%ebx
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS+12,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%ebx,TC_SYSUTILS_DEFAULTFORMATSETTINGS+12
	movl	$_$SYSUTILS$_Ld124,%ebx
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS+16,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	%ebx,TC_SYSUTILS_DEFAULTFORMATSETTINGS+16
	jmp	Lj15989
Lj15990:
Lj15989:
	movb	-33(%ebp),%al
	movb	%al,TC_SYSUTILS_DEFAULTFORMATSETTINGS+6
	movb	-37(%ebp),%al
	movb	%al,TC_SYSUTILS_DEFAULTFORMATSETTINGS+3
	movb	-39(%ebp),%al
	movb	%al,TC_SYSUTILS_DEFAULTFORMATSETTINGS+2
	movb	-31(%ebp),%al
	movb	%al,TC_SYSUTILS_DEFAULTFORMATSETTINGS
	leal	-108(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-108(%ebp)
	leal	-44(%ebp),%eax
	leal	-108(%ebp),%edx
	call	fpc_pchar_to_ansistr
	movl	-108(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS+8,%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-108(%ebp),%eax
	movl	%eax,TC_SYSUTILS_DEFAULTFORMATSETTINGS+8
Lj15986:
	call	SYSUTILS_INITANSI
	call	SYSUTILS_INITINTERNATIONALGENERIC
Lj15958:
	call	FPC_POPADDRSTACK
	leal	-108(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-108(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj15959
	call	FPC_RERAISE
Lj15959:
	movl	-112(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_SYSERRORMESSAGE$LONGINT$$ANSISTRING
SYSUTILS_SYSERRORMESSAGE$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	pushl	%eax
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-16(%ebp)
	leal	-16(%ebp),%edx
	movl	RESSTR_SYSCONST_SUNKNOWNERRORCODE+4,%eax
	movl	$0,%ecx
	call	SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING
SYSUTILS_GETENVIRONMENTVARIABLE$ANSISTRING$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$264,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ecx
	leal	-264(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	leal	-264(%ebp),%eax
	call	DOS_GETENVPCHAR$SHORTSTRING$$PCHAR
	movl	-8(%ebp),%edx
	call	SYSUTILS_STRPAS$PCHAR$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GETENVIRONMENTVARIABLECOUNT$$LONGINT
SYSUTILS_GETENVIRONMENTVARIABLECOUNT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$4,%esp
	movl	_envc,%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_GETENVIRONMENTSTRING$LONGINT$$ANSISTRING
SYSUTILS_GETENVIRONMENTSTRING$LONGINT$$ANSISTRING:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	movl	_environ,%eax
	call	SYSUTILS_FPCGETENVSTRFROMP$PPCHAR$LONGINT$$ANSISTRING
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_SLEEP$LONGWORD
SYSUTILS_SLEEP$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%eax,-4(%ebp)
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj16058
	jmp	Lj16059
Lj16058:
	pushl	-4(%ebp)
	call	_$dll$doscalls$_index_229
	popl	%ebx
	jmp	Lj16062
Lj16059:
	movl	-4(%ebp),%edx
	movl	$32560,%eax
	call	___SYSCALL
Lj16062:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXECUTEPROCESS$ANSISTRING$ANSISTRING$TEXECUTEFLAGS$$LONGINT
SYSUTILS_EXECUTEPROCESS$ANSISTRING$ANSISTRING$TEXECUTEFLAGS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$1472,%esp
	movl	%ebx,-1472(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-884(%ebp)
	movl	$0,-956(%ebp)
	movl	$0,-952(%ebp)
	movl	$0,-928(%ebp)
	leal	-896(%ebp),%ecx
	leal	-920(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj16065
	movl	U_SYSTEM_OS_MODE,%eax
	cmpl	$1,%eax
	je	Lj16068
	jmp	Lj16069
Lj16068:
	leal	-848(%ebp),%eax
	movb	$0,%cl
	movl	$60,%edx
	call	SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	movw	$24,-848(%ebp)
	movw	$1,-846(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj16082
	movl	$FPC_EMPTYCHAR,%eax
Lj16082:
	movl	%eax,-836(%ebp)
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj16085
	movl	$FPC_EMPTYCHAR,%eax
Lj16085:
	movl	%eax,-832(%ebp)
	pushl	$255
	call	SYSTEM_GETPROCESSID$$LONGWORD
	leal	-276(%ebp),%ecx
	movl	$-1,%edx
	call	fpc_shortstr_uint
	pushl	$255
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16098
	movl	U_SYSTEM_THREADID,%eax
	call	*%edx
	jmp	Lj16099
Lj16098:
	movl	$U_SYSTEM_THREADID+4,%eax
Lj16099:
	movl	(%eax),%eax
	leal	-532(%ebp),%ecx
	movl	$-1,%edx
	call	fpc_shortstr_uint
	leal	-928(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-928(%ebp)
	movl	$_$SYSUTILS$_Ld125,%eax
	movl	%eax,-948(%ebp)
	leal	-952(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-952(%ebp)
	leal	-952(%ebp),%edx
	leal	-276(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-952(%ebp),%eax
	movl	%eax,-944(%ebp)
	movl	$_$SYSUTILS$_Ld126,%eax
	movl	%eax,-940(%ebp)
	leal	-956(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-956(%ebp)
	leal	-956(%ebp),%edx
	leal	-532(%ebp),%eax
	call	fpc_shortstr_to_ansistr
	movl	-956(%ebp),%eax
	movl	%eax,-936(%ebp)
	movl	$_$SYSUTILS$_Ld127,%eax
	movl	%eax,-932(%ebp)
	leal	-948(%ebp),%edx
	leal	-928(%ebp),%eax
	movl	$4,%ecx
	call	fpc_ansistr_concat_multi
	movl	-928(%ebp),%ecx
	leal	-788(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	leal	-787(%ebp),%eax
	movl	%eax,-828(%ebp)
	leal	-787(%ebp),%eax
	pushl	%eax
	pushl	$4
	leal	-20(%ebp),%eax
	pushl	%eax
	call	_$dll$quecalls$_index_16
	addl	$12,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj16134
	jmp	Lj16135
Lj16134:
	leal	-856(%ebp),%eax
	pushl	%eax
	leal	-852(%ebp),%eax
	pushl	%eax
	leal	-848(%ebp),%eax
	pushl	%eax
	call	_$dll$sesmgr$_index_37
	addl	$12,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj16144
	jmp	Lj16146
Lj16146:
	movl	-16(%ebp),%eax
	cmpl	$457,%eax
	je	Lj16144
	jmp	Lj16145
Lj16144:
	pushl	$0
	leal	-873(%ebp),%eax
	pushl	%eax
	pushl	$0
	pushl	$0
	leal	-868(%ebp),%eax
	pushl	%eax
	leal	-872(%ebp),%eax
	pushl	%eax
	leal	-864(%ebp),%eax
	pushl	%eax
	pushl	-20(%ebp)
	call	_$dll$quecalls$_index_9
	addl	$32,%esp
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj16165
	jmp	Lj16166
Lj16165:
	movl	-868(%ebp),%eax
	movzwl	2(%eax),%eax
	movl	%eax,-16(%ebp)
	pushl	-20(%ebp)
	call	_$dll$quecalls$_index_11
	popl	%ebx
	pushl	-868(%ebp)
	call	_$dll$doscalls$_index_304
	popl	%ebx
	jmp	Lj16065
Lj16166:
Lj16145:
	pushl	-20(%ebp)
	call	_$dll$quecalls$_index_11
	popl	%ebx
Lj16135:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj16175
	jmp	Lj16176
Lj16175:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-884(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,-884(%ebp)
	jmp	Lj16179
Lj16176:
	movl	-4(%ebp),%eax
	movl	%eax,-940(%ebp)
	movl	$_$SYSUTILS$_Ld63,%eax
	movl	%eax,-936(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-932(%ebp)
	leal	-940(%ebp),%edx
	leal	-884(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
Lj16179:
	movl	-884(%ebp),%eax
	movl	%eax,-940(%ebp)
	movl	$11,-944(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-932(%ebp)
	movl	$0,-936(%ebp)
	leal	-944(%ebp),%eax
	pushl	%eax
	pushl	$1
	movl	RESSTR_SYSCONST_SEXECUTEPROCESSFAILED+4,%ecx
	movl	$VMT_SYSUTILS_EOSERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
	movl	%eax,-880(%ebp)
	movl	-880(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,12(%eax)
La27:
	movl	%ebp,%ecx
	movl	$La27,%edx
	movl	-880(%ebp),%eax
	call	FPC_RAISEEXCEPTION
	jmp	Lj16200
Lj16069:
	movl	-8(%ebp),%ecx
	leal	-1212(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	leal	-1212(%ebp),%ebx
	movl	-4(%ebp),%ecx
	leal	-1468(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	leal	-1468(%ebp),%eax
	movl	%ebx,%edx
	call	DOS_EXEC$SHORTSTRING$SHORTSTRING
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16219
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj16220
Lj16219:
	movl	$U_DOS_DOSERROR+4,%eax
Lj16220:
	movl	(%eax),%eax
	testl	%eax,%eax
	jne	Lj16217
	jmp	Lj16218
Lj16217:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj16221
	jmp	Lj16222
Lj16221:
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	leal	-884(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	-4(%ebp),%eax
	movl	%eax,-884(%ebp)
	jmp	Lj16225
Lj16222:
	movl	-4(%ebp),%eax
	movl	%eax,-968(%ebp)
	movl	$_$SYSUTILS$_Ld63,%eax
	movl	%eax,-964(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-960(%ebp)
	leal	-968(%ebp),%edx
	leal	-884(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
Lj16225:
	movl	-884(%ebp),%eax
	movl	%eax,-968(%ebp)
	movl	$11,-972(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16236
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj16237
Lj16236:
	movl	$U_DOS_DOSERROR+4,%eax
Lj16237:
	movl	(%eax),%eax
	movl	%eax,-960(%ebp)
	movl	$0,-964(%ebp)
	leal	-972(%ebp),%eax
	pushl	%eax
	pushl	$1
	movl	RESSTR_SYSCONST_SEXECUTEPROCESSFAILED+4,%ecx
	movl	$VMT_SYSUTILS_EOSERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
	movl	%eax,-880(%ebp)
	movl	FPC_THREADVAR_RELOCATE,%edx
	testl	%edx,%edx
	je	Lj16248
	movl	U_DOS_DOSERROR,%eax
	call	*%edx
	jmp	Lj16249
Lj16248:
	movl	$U_DOS_DOSERROR+4,%eax
Lj16249:
	movl	-880(%ebp),%edx
	movl	(%eax),%eax
	movl	%eax,12(%edx)
La28:
	movl	%ebp,%ecx
	movl	$La28,%edx
	movl	-880(%ebp),%eax
	call	FPC_RAISEEXCEPTION
Lj16218:
	call	DOS_DOSEXITCODE$$WORD
	movzwl	%ax,%eax
	movl	%eax,-16(%ebp)
Lj16200:
Lj16065:
	call	FPC_POPADDRSTACK
	leal	-956(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-956(%ebp)
	leal	-952(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-952(%ebp)
	leal	-928(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-928(%ebp)
	leal	-884(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-884(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj16066
	call	FPC_RERAISE
Lj16066:
	movl	-16(%ebp),%eax
	movl	-1472(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	SYSUTILS_EXECUTEPROCESS$ANSISTRING$array_of_ANSISTRING$TEXECUTEFLAGS$$LONGINT
SYSUTILS_EXECUTEPROCESS$ANSISTRING$array_of_ANSISTRING$TEXECUTEFLAGS$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-88(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,-20(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj16260
	leal	-20(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-20(%ebp)
	movl	-12(%ebp),%ebx
	movl	$0,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj16266
	decl	-24(%ebp)
	.balign 4,0x90
Lj16267:
	incl	-24(%ebp)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,4),%edx
	movb	$32,%al
	call	SYSTEM_POS$CHAR$ANSISTRING$$LONGINT
	testl	%eax,%eax
	jne	Lj16268
	jmp	Lj16269
Lj16268:
	movl	-20(%ebp),%eax
	movl	%eax,-84(%ebp)
	movl	$_$SYSUTILS$_Ld63,%eax
	movl	%eax,-80(%ebp)
	movl	$_$SYSUTILS$_Ld128,%eax
	movl	%eax,-76(%ebp)
	movl	-8(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-72(%ebp)
	movl	$_$SYSUTILS$_Ld128,%eax
	movl	%eax,-68(%ebp)
	leal	-84(%ebp),%edx
	leal	-20(%ebp),%eax
	movl	$4,%ecx
	call	fpc_ansistr_concat_multi
	jmp	Lj16280
Lj16269:
	movl	-20(%ebp),%eax
	movl	%eax,-76(%ebp)
	movl	$_$SYSUTILS$_Ld63,%eax
	movl	%eax,-72(%ebp)
	movl	-8(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	movl	%eax,-68(%ebp)
	leal	-76(%ebp),%edx
	leal	-20(%ebp),%eax
	movl	$2,%ecx
	call	fpc_ansistr_concat_multi
Lj16280:
	cmpl	-24(%ebp),%ebx
	jg	Lj16267
Lj16266:
	movl	$0,%ecx
	movl	-20(%ebp),%edx
	movl	-4(%ebp),%eax
	call	SYSUTILS_EXECUTEPROCESS$ANSISTRING$ANSISTRING$TEXECUTEFLAGS$$LONGINT
	movl	%eax,-16(%ebp)
Lj16260:
	call	FPC_POPADDRSTACK
	leal	-20(%ebp),%eax
	call	fpc_ansistr_decr_ref
	movl	$0,-20(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj16261
	call	FPC_RERAISE
Lj16261:
	movl	-16(%ebp),%eax
	movl	-88(%ebp),%ebx
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	INIT$_SYSUTILS
INIT$_SYSUTILS:
.globl	_SYSUTILS_init
_SYSUTILS_init:
	pushl	%ebp
	movl	%esp,%ebp
	call	SYSUTILS_INITEXCEPTIONS
	call	SYSUTILS_INITINTERNATIONAL
	leave
	ret

.text
	.balign 4,0x90
.globl	FINALIZE$_SYSUTILS
FINALIZE$_SYSUTILS:
.globl	_SYSUTILS_finalize
_SYSUTILS_finalize:
	pushl	%ebp
	movl	%esp,%ebp
	call	SYSUTILS_DONEEXCEPTIONS
	movl	$INIT_SYSUTILS_TFORMATSETTINGS,%edx
	movl	$TC_SYSUTILS_DEFAULTFORMATSETTINGS,%eax
	call	fpc_finalize
	movl	$TC_SYSUTILS_CONFIGEXTENSION,%eax
	call	fpc_ansistr_decr_ref
	movl	$0,TC_SYSUTILS_CONFIGEXTENSION
	movl	$TC_SYSUTILS_SYSCONFIGDIR,%eax
	call	fpc_ansistr_decr_ref
	movl	$0,TC_SYSUTILS_SYSCONFIGDIR
	movl	$TC_SYSUTILS_EMPTYSTR,%eax
	call	fpc_ansistr_decr_ref
	movl	$0,TC_SYSUTILS_EMPTYSTR
	movl	$TC_SYSUTILS_EMPTYWIDESTR,%eax
	call	fpc_unicodestr_decr_ref
	movl	$0,TC_SYSUTILS_EMPTYWIDESTR
	movl	$INIT_SYSUTILS_DEF177,%edx
	movl	$U_SYSUTILS_TRUEBOOLSTRS,%eax
	call	fpc_finalize
	movl	$INIT_SYSUTILS_DEF177,%edx
	movl	$U_SYSUTILS_FALSEBOOLSTRS,%eax
	call	fpc_finalize
	movl	$TC_SYSUTILS_HEXDISPLAYPREFIX,%eax
	call	fpc_ansistr_decr_ref
	movl	$0,TC_SYSUTILS_HEXDISPLAYPREFIX
	leave
	ret

.text
.globl	WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_0_$_SYSTEM_TINTERFACEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT
WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_0_$_SYSTEM_TINTERFACEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT:
	subl	$36,4(%esp)
	jmp	SYSTEM_TINTERFACEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT

.text
.globl	WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_1_$_SYSTEM_TINTERFACEDOBJECT_$___ADDREF$$LONGINT
WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_1_$_SYSTEM_TINTERFACEDOBJECT_$___ADDREF$$LONGINT:
	subl	$36,4(%esp)
	jmp	SYSTEM_TINTERFACEDOBJECT_$___ADDREF$$LONGINT

.text
.globl	WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_2_$_SYSTEM_TINTERFACEDOBJECT_$___RELEASE$$LONGINT
WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_2_$_SYSTEM_TINTERFACEDOBJECT_$___RELEASE$$LONGINT:
	subl	$36,4(%esp)
	jmp	SYSTEM_TINTERFACEDOBJECT_$___RELEASE$$LONGINT

.text
.globl	WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_3_$_SYSUTILS_TSIMPLERWSYNC_$__BEGINREAD
WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_3_$_SYSUTILS_TSIMPLERWSYNC_$__BEGINREAD:
	subl	$36,%eax
	jmp	SYSUTILS_TSIMPLERWSYNC_$__BEGINREAD

.text
.globl	WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_4_$_SYSUTILS_TSIMPLERWSYNC_$__ENDREAD
WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_4_$_SYSUTILS_TSIMPLERWSYNC_$__ENDREAD:
	subl	$36,%eax
	jmp	SYSUTILS_TSIMPLERWSYNC_$__ENDREAD

.text
.globl	WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_5_$_SYSUTILS_TSIMPLERWSYNC_$__BEGINWRITE$$BOOLEAN
WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_5_$_SYSUTILS_TSIMPLERWSYNC_$__BEGINWRITE$$BOOLEAN:
	subl	$36,%eax
	jmp	SYSUTILS_TSIMPLERWSYNC_$__BEGINWRITE$$BOOLEAN

.text
.globl	WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_6_$_SYSUTILS_TSIMPLERWSYNC_$__ENDWRITE
WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_6_$_SYSUTILS_TSIMPLERWSYNC_$__ENDWRITE:
	subl	$36,%eax
	jmp	SYSUTILS_TSIMPLERWSYNC_$__ENDWRITE

.text
.globl	WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_0_$_SYSTEM_TINTERFACEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT
WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_0_$_SYSTEM_TINTERFACEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT:
	subl	$52,4(%esp)
	jmp	SYSTEM_TINTERFACEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT

.text
.globl	WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_1_$_SYSTEM_TINTERFACEDOBJECT_$___ADDREF$$LONGINT
WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_1_$_SYSTEM_TINTERFACEDOBJECT_$___ADDREF$$LONGINT:
	subl	$52,4(%esp)
	jmp	SYSTEM_TINTERFACEDOBJECT_$___ADDREF$$LONGINT

.text
.globl	WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_2_$_SYSTEM_TINTERFACEDOBJECT_$___RELEASE$$LONGINT
WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_2_$_SYSTEM_TINTERFACEDOBJECT_$___RELEASE$$LONGINT:
	subl	$52,4(%esp)
	jmp	SYSTEM_TINTERFACEDOBJECT_$___RELEASE$$LONGINT

.text
.globl	WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_3_$_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__BEGINREAD
WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_3_$_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__BEGINREAD:
	subl	$52,%eax
	jmp	SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__BEGINREAD

.text
.globl	WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_4_$_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__ENDREAD
WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_4_$_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__ENDREAD:
	subl	$52,%eax
	jmp	SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__ENDREAD

.text
.globl	WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_5_$_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__BEGINWRITE$$BOOLEAN
WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_5_$_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__BEGINWRITE$$BOOLEAN:
	subl	$52,%eax
	jmp	SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__BEGINWRITE$$BOOLEAN

.text
.globl	WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_6_$_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__ENDWRITE
WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_6_$_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__ENDWRITE:
	subl	$52,%eax
	jmp	SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__ENDWRITE
# End asmlist al_procedures
# Begin asmlist al_globals

.bss
	.balign 4
	.globl U_SYSUTILS_SYSLOCALE
U_SYSUTILS_SYSLOCALE:
	.zero 16

.bss
	.balign 4
	.globl U_SYSUTILS_ONGETVENDORNAME
U_SYSUTILS_ONGETVENDORNAME:
	.zero 4

.bss
	.balign 4
	.globl U_SYSUTILS_ONGETAPPLICATIONNAME
U_SYSUTILS_ONGETAPPLICATIONNAME:
	.zero 4

.bss
	.balign 4
	.globl U_SYSUTILS_ONGETTEMPDIR
U_SYSUTILS_ONGETTEMPDIR:
	.zero 4

.bss
	.balign 4
	.globl U_SYSUTILS_ONGETTEMPFILE
U_SYSUTILS_ONGETTEMPFILE:
	.zero 4

.bss
	.balign 4
	.globl U_SYSUTILS_TRUEBOOLSTRS
U_SYSUTILS_TRUEBOOLSTRS:
	.zero 4

.bss
	.balign 4
	.globl U_SYSUTILS_FALSEBOOLSTRS
U_SYSUTILS_FALSEBOOLSTRS:
	.zero 4

.bss
	.balign 4
	.globl U_SYSUTILS_ONSHOWEXCEPTION
U_SYSUTILS_ONSHOWEXCEPTION:
	.zero 4

.bss
U_SYSUTILS_UPPERCASETABLE:
	.zero 256

.bss
U_SYSUTILS_LOWERCASETABLE:
	.zero 256

.bss
	.balign 4
U_SYSUTILS_OUTOFMEMORY:
	.zero 4

.bss
	.balign 4
U_SYSUTILS_INVALIDPOINTER:
	.zero 4

.data
	.balign 4
.globl	_$SYSUTILS$_Ld129
_$SYSUTILS$_Ld129:
	.byte	9
	.ascii	"Exception"

.data
	.balign 4
.globl	VMT_SYSUTILS_EXCEPTION
VMT_SYSUTILS_EXCEPTION:
	.long	12,-12
	.long	VMT_SYSTEM_TOBJECT
	.long	_$SYSUTILS$_Ld129
	.long	0,0
	.long	_$SYSUTILS$_Ld130
	.long	RTTI_SYSUTILS_EXCEPTION
	.long	INIT_SYSUTILS_EXCEPTION
	.long	0
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
.globl	_$SYSUTILS$_Ld132
_$SYSUTILS$_Ld132:
	.byte	9
	.ascii	"EExternal"

.data
	.balign 4
.globl	VMT_SYSUTILS_EEXTERNAL
VMT_SYSUTILS_EEXTERNAL:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld132
	.long	0,0
	.long	_$SYSUTILS$_Ld133
	.long	RTTI_SYSUTILS_EEXTERNAL
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
.globl	_$SYSUTILS$_Ld135
_$SYSUTILS$_Ld135:
	.byte	9
	.ascii	"EInterror"

.data
	.balign 4
.globl	VMT_SYSUTILS_EINTERROR
VMT_SYSUTILS_EINTERROR:
	.long	12,-12
	.long	VMT_SYSUTILS_EEXTERNAL
	.long	_$SYSUTILS$_Ld135
	.long	0,0
	.long	_$SYSUTILS$_Ld136
	.long	RTTI_SYSUTILS_EINTERROR
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
.globl	_$SYSUTILS$_Ld138
_$SYSUTILS$_Ld138:
	.byte	10
	.ascii	"EDivByZero"

.data
	.balign 4
.globl	VMT_SYSUTILS_EDIVBYZERO
VMT_SYSUTILS_EDIVBYZERO:
	.long	12,-12
	.long	VMT_SYSUTILS_EINTERROR
	.long	_$SYSUTILS$_Ld138
	.long	0,0
	.long	_$SYSUTILS$_Ld139
	.long	RTTI_SYSUTILS_EDIVBYZERO
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
.globl	_$SYSUTILS$_Ld141
_$SYSUTILS$_Ld141:
	.byte	11
	.ascii	"ERangeError"

.data
	.balign 4
.globl	VMT_SYSUTILS_ERANGEERROR
VMT_SYSUTILS_ERANGEERROR:
	.long	12,-12
	.long	VMT_SYSUTILS_EINTERROR
	.long	_$SYSUTILS$_Ld141
	.long	0,0
	.long	_$SYSUTILS$_Ld142
	.long	RTTI_SYSUTILS_ERANGEERROR
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
.globl	_$SYSUTILS$_Ld144
_$SYSUTILS$_Ld144:
	.byte	12
	.ascii	"EIntOverflow"

.data
	.balign 4
.globl	VMT_SYSUTILS_EINTOVERFLOW
VMT_SYSUTILS_EINTOVERFLOW:
	.long	12,-12
	.long	VMT_SYSUTILS_EINTERROR
	.long	_$SYSUTILS$_Ld144
	.long	0,0
	.long	_$SYSUTILS$_Ld145
	.long	RTTI_SYSUTILS_EINTOVERFLOW
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
.globl	_$SYSUTILS$_Ld147
_$SYSUTILS$_Ld147:
	.byte	10
	.ascii	"EMathError"

.data
	.balign 4
.globl	VMT_SYSUTILS_EMATHERROR
VMT_SYSUTILS_EMATHERROR:
	.long	12,-12
	.long	VMT_SYSUTILS_EEXTERNAL
	.long	_$SYSUTILS$_Ld147
	.long	0,0
	.long	_$SYSUTILS$_Ld148
	.long	RTTI_SYSUTILS_EMATHERROR
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
.globl	_$SYSUTILS$_Ld150
_$SYSUTILS$_Ld150:
	.byte	10
	.ascii	"EInvalidOp"

.data
	.balign 4
.globl	VMT_SYSUTILS_EINVALIDOP
VMT_SYSUTILS_EINVALIDOP:
	.long	12,-12
	.long	VMT_SYSUTILS_EMATHERROR
	.long	_$SYSUTILS$_Ld150
	.long	0,0
	.long	_$SYSUTILS$_Ld151
	.long	RTTI_SYSUTILS_EINVALIDOP
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
.globl	_$SYSUTILS$_Ld153
_$SYSUTILS$_Ld153:
	.byte	11
	.ascii	"EZeroDivide"

.data
	.balign 4
.globl	VMT_SYSUTILS_EZERODIVIDE
VMT_SYSUTILS_EZERODIVIDE:
	.long	12,-12
	.long	VMT_SYSUTILS_EMATHERROR
	.long	_$SYSUTILS$_Ld153
	.long	0,0
	.long	_$SYSUTILS$_Ld154
	.long	RTTI_SYSUTILS_EZERODIVIDE
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
.globl	_$SYSUTILS$_Ld156
_$SYSUTILS$_Ld156:
	.byte	9
	.ascii	"EOverflow"

.data
	.balign 4
.globl	VMT_SYSUTILS_EOVERFLOW
VMT_SYSUTILS_EOVERFLOW:
	.long	12,-12
	.long	VMT_SYSUTILS_EMATHERROR
	.long	_$SYSUTILS$_Ld156
	.long	0,0
	.long	_$SYSUTILS$_Ld157
	.long	RTTI_SYSUTILS_EOVERFLOW
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
.globl	_$SYSUTILS$_Ld159
_$SYSUTILS$_Ld159:
	.byte	10
	.ascii	"EUnderflow"

.data
	.balign 4
.globl	VMT_SYSUTILS_EUNDERFLOW
VMT_SYSUTILS_EUNDERFLOW:
	.long	12,-12
	.long	VMT_SYSUTILS_EMATHERROR
	.long	_$SYSUTILS$_Ld159
	.long	0,0
	.long	_$SYSUTILS$_Ld160
	.long	RTTI_SYSUTILS_EUNDERFLOW
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
.globl	_$SYSUTILS$_Ld162
_$SYSUTILS$_Ld162:
	.byte	11
	.ascii	"EInOutError"

.data
	.balign 4
.globl	VMT_SYSUTILS_EINOUTERROR
VMT_SYSUTILS_EINOUTERROR:
	.long	16,-16
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld162
	.long	0,0
	.long	_$SYSUTILS$_Ld163
	.long	RTTI_SYSUTILS_EINOUTERROR
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
.globl	_$SYSUTILS$_Ld165
_$SYSUTILS$_Ld165:
	.byte	16
	.ascii	"EHeapMemoryError"

.data
	.balign 4
.globl	VMT_SYSUTILS_EHEAPMEMORYERROR
VMT_SYSUTILS_EHEAPMEMORYERROR:
	.long	16,-16
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld165
	.long	0,0
	.long	_$SYSUTILS$_Ld166
	.long	RTTI_SYSUTILS_EHEAPMEMORYERROR
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	SYSTEM_TOBJECT_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSUTILS_EHEAPMEMORYERROR_$__FREEINSTANCE
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
.globl	_$SYSUTILS$_Ld168
_$SYSUTILS$_Ld168:
	.byte	18
	.ascii	"EExternalException"

.data
	.balign 4
.globl	VMT_SYSUTILS_EEXTERNALEXCEPTION
VMT_SYSUTILS_EEXTERNALEXCEPTION:
	.long	12,-12
	.long	VMT_SYSUTILS_EEXTERNAL
	.long	_$SYSUTILS$_Ld168
	.long	0,0
	.long	_$SYSUTILS$_Ld169
	.long	RTTI_SYSUTILS_EEXTERNALEXCEPTION
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
.globl	_$SYSUTILS$_Ld171
_$SYSUTILS$_Ld171:
	.byte	15
	.ascii	"EInvalidPointer"

.data
	.balign 4
.globl	VMT_SYSUTILS_EINVALIDPOINTER
VMT_SYSUTILS_EINVALIDPOINTER:
	.long	16,-16
	.long	VMT_SYSUTILS_EHEAPMEMORYERROR
	.long	_$SYSUTILS$_Ld171
	.long	0,0
	.long	_$SYSUTILS$_Ld172
	.long	RTTI_SYSUTILS_EINVALIDPOINTER
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	SYSTEM_TOBJECT_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSUTILS_EHEAPMEMORYERROR_$__FREEINSTANCE
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
.globl	_$SYSUTILS$_Ld174
_$SYSUTILS$_Ld174:
	.byte	12
	.ascii	"EOutOfMemory"

.data
	.balign 4
.globl	VMT_SYSUTILS_EOUTOFMEMORY
VMT_SYSUTILS_EOUTOFMEMORY:
	.long	16,-16
	.long	VMT_SYSUTILS_EHEAPMEMORYERROR
	.long	_$SYSUTILS$_Ld174
	.long	0,0
	.long	_$SYSUTILS$_Ld175
	.long	RTTI_SYSUTILS_EOUTOFMEMORY
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	SYSTEM_TOBJECT_$__DESTROY
	.long	SYSTEM_TOBJECT_$__NEWINSTANCE$$TOBJECT
	.long	SYSUTILS_EHEAPMEMORYERROR_$__FREEINSTANCE
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
.globl	_$SYSUTILS$_Ld177
_$SYSUTILS$_Ld177:
	.byte	12
	.ascii	"EInvalidCast"

.data
	.balign 4
.globl	VMT_SYSUTILS_EINVALIDCAST
VMT_SYSUTILS_EINVALIDCAST:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld177
	.long	0,0
	.long	_$SYSUTILS$_Ld178
	.long	RTTI_SYSUTILS_EINVALIDCAST
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
.globl	_$SYSUTILS$_Ld180
_$SYSUTILS$_Ld180:
	.byte	13
	.ascii	"EVariantError"

.data
	.balign 4
.globl	VMT_SYSUTILS_EVARIANTERROR
VMT_SYSUTILS_EVARIANTERROR:
	.long	16,-16
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld180
	.long	0,0
	.long	_$SYSUTILS$_Ld181
	.long	RTTI_SYSUTILS_EVARIANTERROR
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
.globl	_$SYSUTILS$_Ld183
_$SYSUTILS$_Ld183:
	.byte	16
	.ascii	"EAccessViolation"

.data
	.balign 4
.globl	VMT_SYSUTILS_EACCESSVIOLATION
VMT_SYSUTILS_EACCESSVIOLATION:
	.long	12,-12
	.long	VMT_SYSUTILS_EEXTERNAL
	.long	_$SYSUTILS$_Ld183
	.long	0,0
	.long	_$SYSUTILS$_Ld184
	.long	RTTI_SYSUTILS_EACCESSVIOLATION
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
.globl	_$SYSUTILS$_Ld186
_$SYSUTILS$_Ld186:
	.byte	9
	.ascii	"EBusError"

.data
	.balign 4
.globl	VMT_SYSUTILS_EBUSERROR
VMT_SYSUTILS_EBUSERROR:
	.long	12,-12
	.long	VMT_SYSUTILS_EACCESSVIOLATION
	.long	_$SYSUTILS$_Ld186
	.long	0,0
	.long	_$SYSUTILS$_Ld187
	.long	RTTI_SYSUTILS_EBUSERROR
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
.globl	_$SYSUTILS$_Ld189
_$SYSUTILS$_Ld189:
	.byte	10
	.ascii	"EPrivilege"

.data
	.balign 4
.globl	VMT_SYSUTILS_EPRIVILEGE
VMT_SYSUTILS_EPRIVILEGE:
	.long	12,-12
	.long	VMT_SYSUTILS_EEXTERNAL
	.long	_$SYSUTILS$_Ld189
	.long	0,0
	.long	_$SYSUTILS$_Ld190
	.long	RTTI_SYSUTILS_EPRIVILEGE
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
.globl	_$SYSUTILS$_Ld192
_$SYSUTILS$_Ld192:
	.byte	14
	.ascii	"EStackOverflow"

.data
	.balign 4
.globl	VMT_SYSUTILS_ESTACKOVERFLOW
VMT_SYSUTILS_ESTACKOVERFLOW:
	.long	12,-12
	.long	VMT_SYSUTILS_EEXTERNAL
	.long	_$SYSUTILS$_Ld192
	.long	0,0
	.long	_$SYSUTILS$_Ld193
	.long	RTTI_SYSUTILS_ESTACKOVERFLOW
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
.globl	_$SYSUTILS$_Ld195
_$SYSUTILS$_Ld195:
	.byte	9
	.ascii	"EControlC"

.data
	.balign 4
.globl	VMT_SYSUTILS_ECONTROLC
VMT_SYSUTILS_ECONTROLC:
	.long	12,-12
	.long	VMT_SYSUTILS_EEXTERNAL
	.long	_$SYSUTILS$_Ld195
	.long	0,0
	.long	_$SYSUTILS$_Ld196
	.long	RTTI_SYSUTILS_ECONTROLC
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
.globl	_$SYSUTILS$_Ld198
_$SYSUTILS$_Ld198:
	.byte	13
	.ascii	"EConvertError"

.data
	.balign 4
.globl	VMT_SYSUTILS_ECONVERTERROR
VMT_SYSUTILS_ECONVERTERROR:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld198
	.long	0,0
	.long	_$SYSUTILS$_Ld199
	.long	RTTI_SYSUTILS_ECONVERTERROR
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
.globl	_$SYSUTILS$_Ld201
_$SYSUTILS$_Ld201:
	.byte	12
	.ascii	"EFormatError"

.data
	.balign 4
.globl	VMT_SYSUTILS_EFORMATERROR
VMT_SYSUTILS_EFORMATERROR:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld201
	.long	0,0
	.long	_$SYSUTILS$_Ld202
	.long	RTTI_SYSUTILS_EFORMATERROR
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
.globl	_$SYSUTILS$_Ld204
_$SYSUTILS$_Ld204:
	.byte	6
	.ascii	"EAbort"

.data
	.balign 4
.globl	VMT_SYSUTILS_EABORT
VMT_SYSUTILS_EABORT:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld204
	.long	0,0
	.long	_$SYSUTILS$_Ld205
	.long	RTTI_SYSUTILS_EABORT
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
.globl	_$SYSUTILS$_Ld207
_$SYSUTILS$_Ld207:
	.byte	14
	.ascii	"EAbstractError"

.data
	.balign 4
.globl	VMT_SYSUTILS_EABSTRACTERROR
VMT_SYSUTILS_EABSTRACTERROR:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld207
	.long	0,0
	.long	_$SYSUTILS$_Ld208
	.long	RTTI_SYSUTILS_EABSTRACTERROR
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
.globl	_$SYSUTILS$_Ld210
_$SYSUTILS$_Ld210:
	.byte	16
	.ascii	"EAssertionFailed"

.data
	.balign 4
.globl	VMT_SYSUTILS_EASSERTIONFAILED
VMT_SYSUTILS_EASSERTIONFAILED:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld210
	.long	0,0
	.long	_$SYSUTILS$_Ld211
	.long	RTTI_SYSUTILS_EASSERTIONFAILED
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
.globl	_$SYSUTILS$_Ld213
_$SYSUTILS$_Ld213:
	.byte	13
	.ascii	"EPropReadOnly"

.data
	.balign 4
.globl	VMT_SYSUTILS_EPROPREADONLY
VMT_SYSUTILS_EPROPREADONLY:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld213
	.long	0,0
	.long	_$SYSUTILS$_Ld214
	.long	RTTI_SYSUTILS_EPROPREADONLY
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
.globl	_$SYSUTILS$_Ld216
_$SYSUTILS$_Ld216:
	.byte	14
	.ascii	"EPropWriteOnly"

.data
	.balign 4
.globl	VMT_SYSUTILS_EPROPWRITEONLY
VMT_SYSUTILS_EPROPWRITEONLY:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld216
	.long	0,0
	.long	_$SYSUTILS$_Ld217
	.long	RTTI_SYSUTILS_EPROPWRITEONLY
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
.globl	_$SYSUTILS$_Ld219
_$SYSUTILS$_Ld219:
	.byte	14
	.ascii	"EIntfCastError"

.data
	.balign 4
.globl	VMT_SYSUTILS_EINTFCASTERROR
VMT_SYSUTILS_EINTFCASTERROR:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld219
	.long	0,0
	.long	_$SYSUTILS$_Ld220
	.long	RTTI_SYSUTILS_EINTFCASTERROR
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
.globl	_$SYSUTILS$_Ld222
_$SYSUTILS$_Ld222:
	.byte	17
	.ascii	"EInvalidContainer"

.data
	.balign 4
.globl	VMT_SYSUTILS_EINVALIDCONTAINER
VMT_SYSUTILS_EINVALIDCONTAINER:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld222
	.long	0,0
	.long	_$SYSUTILS$_Ld223
	.long	RTTI_SYSUTILS_EINVALIDCONTAINER
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
.globl	_$SYSUTILS$_Ld225
_$SYSUTILS$_Ld225:
	.byte	14
	.ascii	"EInvalidInsert"

.data
	.balign 4
.globl	VMT_SYSUTILS_EINVALIDINSERT
VMT_SYSUTILS_EINVALIDINSERT:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld225
	.long	0,0
	.long	_$SYSUTILS$_Ld226
	.long	RTTI_SYSUTILS_EINVALIDINSERT
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
.globl	_$SYSUTILS$_Ld228
_$SYSUTILS$_Ld228:
	.byte	13
	.ascii	"EPackageError"

.data
	.balign 4
.globl	VMT_SYSUTILS_EPACKAGEERROR
VMT_SYSUTILS_EPACKAGEERROR:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld228
	.long	0,0
	.long	_$SYSUTILS$_Ld229
	.long	RTTI_SYSUTILS_EPACKAGEERROR
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
.globl	_$SYSUTILS$_Ld231
_$SYSUTILS$_Ld231:
	.byte	8
	.ascii	"EOSError"

.data
	.balign 4
.globl	VMT_SYSUTILS_EOSERROR
VMT_SYSUTILS_EOSERROR:
	.long	16,-16
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld231
	.long	0,0
	.long	_$SYSUTILS$_Ld232
	.long	RTTI_SYSUTILS_EOSERROR
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
.globl	_$SYSUTILS$_Ld234
_$SYSUTILS$_Ld234:
	.byte	18
	.ascii	"ESafecallException"

.data
	.balign 4
.globl	VMT_SYSUTILS_ESAFECALLEXCEPTION
VMT_SYSUTILS_ESAFECALLEXCEPTION:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld234
	.long	0,0
	.long	_$SYSUTILS$_Ld235
	.long	RTTI_SYSUTILS_ESAFECALLEXCEPTION
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
.globl	_$SYSUTILS$_Ld237
_$SYSUTILS$_Ld237:
	.byte	16
	.ascii	"ENoThreadSupport"

.data
	.balign 4
.globl	VMT_SYSUTILS_ENOTHREADSUPPORT
VMT_SYSUTILS_ENOTHREADSUPPORT:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld237
	.long	0,0
	.long	_$SYSUTILS$_Ld238
	.long	RTTI_SYSUTILS_ENOTHREADSUPPORT
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
.globl	_$SYSUTILS$_Ld240
_$SYSUTILS$_Ld240:
	.byte	20
	.ascii	"ENoWideStringSupport"

.data
	.balign 4
.globl	VMT_SYSUTILS_ENOWIDESTRINGSUPPORT
VMT_SYSUTILS_ENOWIDESTRINGSUPPORT:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld240
	.long	0,0
	.long	_$SYSUTILS$_Ld241
	.long	RTTI_SYSUTILS_ENOWIDESTRINGSUPPORT
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
.globl	_$SYSUTILS$_Ld243
_$SYSUTILS$_Ld243:
	.byte	15
	.ascii	"ENotImplemented"

.data
	.balign 4
.globl	VMT_SYSUTILS_ENOTIMPLEMENTED
VMT_SYSUTILS_ENOTIMPLEMENTED:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld243
	.long	0,0
	.long	_$SYSUTILS$_Ld244
	.long	RTTI_SYSUTILS_ENOTIMPLEMENTED
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
.globl	_$SYSUTILS$_Ld246
_$SYSUTILS$_Ld246:
	.byte	18
	.ascii	"EArgumentException"

.data
	.balign 4
.globl	VMT_SYSUTILS_EARGUMENTEXCEPTION
VMT_SYSUTILS_EARGUMENTEXCEPTION:
	.long	12,-12
	.long	VMT_SYSUTILS_EXCEPTION
	.long	_$SYSUTILS$_Ld246
	.long	0,0
	.long	_$SYSUTILS$_Ld247
	.long	RTTI_SYSUTILS_EARGUMENTEXCEPTION
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
.globl	_$SYSUTILS$_Ld249
_$SYSUTILS$_Ld249:
	.byte	28
	.ascii	"EArgumentOutOfRangeException"

.data
	.balign 4
.globl	VMT_SYSUTILS_EARGUMENTOUTOFRANGEEXCEPTION
VMT_SYSUTILS_EARGUMENTOUTOFRANGEEXCEPTION:
	.long	12,-12
	.long	VMT_SYSUTILS_EARGUMENTEXCEPTION
	.long	_$SYSUTILS$_Ld249
	.long	0,0
	.long	_$SYSUTILS$_Ld250
	.long	RTTI_SYSUTILS_EARGUMENTOUTOFRANGEEXCEPTION
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
.globl	IID_SYSUTILS_IREADWRITESYNC
IID_SYSUTILS_IREADWRITESYNC:
	.long	2064682066
	.short	7567,19675
	.byte	156,223,87,224,113,25,61,63

.data
.globl	IIDSTR_SYSUTILS_IREADWRITESYNC
IIDSTR_SYSUTILS_IREADWRITESYNC:
	.byte	38
	.ascii	"{7B108C52-1D8F-4CDB-9CDF-57E071193D3F}"

.data
	.balign 4
	.balign 4
.globl	_$SYSUTILS$_Ld253
_$SYSUTILS$_Ld253:
	.long	1
	.long	_$SYSUTILS$_Ld254
	.long	VTBL_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC
	.long	36
	.long	_$SYSUTILS$_Ld255
	.long	0

.data
	.balign 4
.globl	VTBL_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC
VTBL_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC:
	.long	WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_0_$_SYSTEM_TINTERFACEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT
	.long	WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_1_$_SYSTEM_TINTERFACEDOBJECT_$___ADDREF$$LONGINT
	.long	WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_2_$_SYSTEM_TINTERFACEDOBJECT_$___RELEASE$$LONGINT
	.long	WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_3_$_SYSUTILS_TSIMPLERWSYNC_$__BEGINREAD
	.long	WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_4_$_SYSUTILS_TSIMPLERWSYNC_$__ENDREAD
	.long	WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_5_$_SYSUTILS_TSIMPLERWSYNC_$__BEGINWRITE$$BOOLEAN
	.long	WRPR_SYSUTILS_TSIMPLERWSYNC_$_IREADWRITESYNC_$_6_$_SYSUTILS_TSIMPLERWSYNC_$__ENDWRITE
	.balign 4
.globl	_$SYSUTILS$_Ld254
_$SYSUTILS$_Ld254:
	.long	2064682066
	.short	7567,19675
	.byte	156,223,87,224,113,25,61,63
	.balign 4
.globl	_$SYSUTILS$_Ld255
_$SYSUTILS$_Ld255:
	.byte	38
	.ascii	"{7B108C52-1D8F-4CDB-9CDF-57E071193D3F}"
.globl	_$SYSUTILS$_Ld252
_$SYSUTILS$_Ld252:
	.byte	13
	.ascii	"TSimpleRWSync"

.data
	.balign 4
.globl	VMT_SYSUTILS_TSIMPLERWSYNC
VMT_SYSUTILS_TSIMPLERWSYNC:
	.long	40,-40
	.long	VMT_SYSTEM_TINTERFACEDOBJECT
	.long	_$SYSUTILS$_Ld252
	.long	0,0
	.long	_$SYSUTILS$_Ld256
	.long	RTTI_SYSUTILS_TSIMPLERWSYNC
	.long	0,0
	.long	_$SYSUTILS$_Ld253
	.long	0
	.long	SYSUTILS_TSIMPLERWSYNC_$__DESTROY
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
	.long	SYSUTILS_TSIMPLERWSYNC_$__CREATE$$TSIMPLERWSYNC
	.long	0

.data
	.balign 4
	.balign 4
.globl	_$SYSUTILS$_Ld259
_$SYSUTILS$_Ld259:
	.long	1
	.long	_$SYSUTILS$_Ld260
	.long	VTBL_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC
	.long	52
	.long	_$SYSUTILS$_Ld261
	.long	0

.data
	.balign 4
.globl	VTBL_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC
VTBL_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC:
	.long	WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_0_$_SYSTEM_TINTERFACEDOBJECT_$__QUERYINTERFACE$TGUID$formal$$LONGINT
	.long	WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_1_$_SYSTEM_TINTERFACEDOBJECT_$___ADDREF$$LONGINT
	.long	WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_2_$_SYSTEM_TINTERFACEDOBJECT_$___RELEASE$$LONGINT
	.long	WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_3_$_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__BEGINREAD
	.long	WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_4_$_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__ENDREAD
	.long	WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_5_$_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__BEGINWRITE$$BOOLEAN
	.long	WRPR_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$_IREADWRITESYNC_$_6_$_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__ENDWRITE
	.balign 4
.globl	_$SYSUTILS$_Ld260
_$SYSUTILS$_Ld260:
	.long	2064682066
	.short	7567,19675
	.byte	156,223,87,224,113,25,61,63
	.balign 4
.globl	_$SYSUTILS$_Ld261
_$SYSUTILS$_Ld261:
	.byte	38
	.ascii	"{7B108C52-1D8F-4CDB-9CDF-57E071193D3F}"
.globl	_$SYSUTILS$_Ld258
_$SYSUTILS$_Ld258:
	.byte	36
	.ascii	"TMultiReadExclusiveWriteSynchronizer"

.data
	.balign 4
.globl	VMT_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER
VMT_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER:
	.long	56,-56
	.long	VMT_SYSTEM_TINTERFACEDOBJECT
	.long	_$SYSUTILS$_Ld258
	.long	0,0
	.long	_$SYSUTILS$_Ld262
	.long	RTTI_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER
	.long	0,0
	.long	_$SYSUTILS$_Ld259
	.long	0
	.long	SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__DESTROY
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
	.long	SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__CREATE$$TMULTIREADEXCLUSIVEWRITESYNCHRONIZER
	.long	0

.data
	.balign 4
.globl	THREADVARLIST_SYSUTILS
THREADVARLIST_SYSUTILS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$SYSUTILS$_Ld1
_$SYSUTILS$_Ld1:
	.ascii	"$\000"

.data
	.balign 4
	.short	0,1
	.long	-1,5
.globl	_$SYSUTILS$_Ld2
_$SYSUTILS$_Ld2:
	.ascii	"d/m/y\000"

.data
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$SYSUTILS$_Ld3
_$SYSUTILS$_Ld3:
	.ascii	"dd\" \"mmmm\" \"yyyy\000"

.data
	.balign 4
	.short	0,1
	.long	-1,2
.globl	_$SYSUTILS$_Ld4
_$SYSUTILS$_Ld4:
	.ascii	"AM\000"

.data
	.balign 4
	.short	0,1
	.long	-1,2
.globl	_$SYSUTILS$_Ld5
_$SYSUTILS$_Ld5:
	.ascii	"PM\000"

.data
	.balign 4
	.short	0,1
	.long	-1,5
.globl	_$SYSUTILS$_Ld6
_$SYSUTILS$_Ld6:
	.ascii	"hh:nn\000"

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$SYSUTILS$_Ld7
_$SYSUTILS$_Ld7:
	.ascii	"hh:nn:ss\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld8
_$SYSUTILS$_Ld8:
	.ascii	"Jan\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld9
_$SYSUTILS$_Ld9:
	.ascii	"Feb\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld10
_$SYSUTILS$_Ld10:
	.ascii	"Mar\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld11
_$SYSUTILS$_Ld11:
	.ascii	"Apr\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld12
_$SYSUTILS$_Ld12:
	.ascii	"May\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld13
_$SYSUTILS$_Ld13:
	.ascii	"Jun\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld14
_$SYSUTILS$_Ld14:
	.ascii	"Jul\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld15
_$SYSUTILS$_Ld15:
	.ascii	"Aug\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld16
_$SYSUTILS$_Ld16:
	.ascii	"Sep\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld17
_$SYSUTILS$_Ld17:
	.ascii	"Oct\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld18
_$SYSUTILS$_Ld18:
	.ascii	"Nov\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld19
_$SYSUTILS$_Ld19:
	.ascii	"Dec\000"

.data
	.balign 4
	.short	0,1
	.long	-1,7
.globl	_$SYSUTILS$_Ld20
_$SYSUTILS$_Ld20:
	.ascii	"January\000"

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$SYSUTILS$_Ld21
_$SYSUTILS$_Ld21:
	.ascii	"February\000"

.data
	.balign 4
	.short	0,1
	.long	-1,5
.globl	_$SYSUTILS$_Ld22
_$SYSUTILS$_Ld22:
	.ascii	"March\000"

.data
	.balign 4
	.short	0,1
	.long	-1,5
.globl	_$SYSUTILS$_Ld23
_$SYSUTILS$_Ld23:
	.ascii	"April\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld24
_$SYSUTILS$_Ld24:
	.ascii	"May\000"

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$SYSUTILS$_Ld25
_$SYSUTILS$_Ld25:
	.ascii	"June\000"

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$SYSUTILS$_Ld26
_$SYSUTILS$_Ld26:
	.ascii	"July\000"

.data
	.balign 4
	.short	0,1
	.long	-1,6
.globl	_$SYSUTILS$_Ld27
_$SYSUTILS$_Ld27:
	.ascii	"August\000"

.data
	.balign 4
	.short	0,1
	.long	-1,9
.globl	_$SYSUTILS$_Ld28
_$SYSUTILS$_Ld28:
	.ascii	"September\000"

.data
	.balign 4
	.short	0,1
	.long	-1,7
.globl	_$SYSUTILS$_Ld29
_$SYSUTILS$_Ld29:
	.ascii	"October\000"

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$SYSUTILS$_Ld30
_$SYSUTILS$_Ld30:
	.ascii	"November\000"

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$SYSUTILS$_Ld31
_$SYSUTILS$_Ld31:
	.ascii	"December\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld32
_$SYSUTILS$_Ld32:
	.ascii	"Sun\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld33
_$SYSUTILS$_Ld33:
	.ascii	"Mon\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld34
_$SYSUTILS$_Ld34:
	.ascii	"Tue\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld35
_$SYSUTILS$_Ld35:
	.ascii	"Wed\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld36
_$SYSUTILS$_Ld36:
	.ascii	"Thu\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld37
_$SYSUTILS$_Ld37:
	.ascii	"Fri\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld38
_$SYSUTILS$_Ld38:
	.ascii	"Sat\000"

.data
	.balign 4
	.short	0,1
	.long	-1,6
.globl	_$SYSUTILS$_Ld39
_$SYSUTILS$_Ld39:
	.ascii	"Sunday\000"

.data
	.balign 4
	.short	0,1
	.long	-1,6
.globl	_$SYSUTILS$_Ld40
_$SYSUTILS$_Ld40:
	.ascii	"Monday\000"

.data
	.balign 4
	.short	0,1
	.long	-1,7
.globl	_$SYSUTILS$_Ld41
_$SYSUTILS$_Ld41:
	.ascii	"Tuesday\000"

.data
	.balign 4
	.short	0,1
	.long	-1,9
.globl	_$SYSUTILS$_Ld42
_$SYSUTILS$_Ld42:
	.ascii	"Wednesday\000"

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$SYSUTILS$_Ld43
_$SYSUTILS$_Ld43:
	.ascii	"Thursday\000"

.data
	.balign 4
	.short	0,1
	.long	-1,6
.globl	_$SYSUTILS$_Ld44
_$SYSUTILS$_Ld44:
	.ascii	"Friday\000"

.data
	.balign 4
	.short	0,1
	.long	-1,8
.globl	_$SYSUTILS$_Ld45
_$SYSUTILS$_Ld45:
	.ascii	"Saturday\000"

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$SYSUTILS$_Ld46
_$SYSUTILS$_Ld46:
	.ascii	".cfg\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$SYSUTILS$_Ld47
_$SYSUTILS$_Ld47:
	.ascii	"$\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 4
.globl	TC_SYSUTILS_DEFAULTFORMATSETTINGS
TC_SYSUTILS_DEFAULTFORMATSETTINGS:
	.byte	1,5,44,46,2,45,58,44
	.long	_$SYSUTILS$_Ld1
	.long	_$SYSUTILS$_Ld2
	.long	_$SYSUTILS$_Ld3
	.long	_$SYSUTILS$_Ld4
	.long	_$SYSUTILS$_Ld5
	.long	_$SYSUTILS$_Ld6
	.long	_$SYSUTILS$_Ld7
	.long	_$SYSUTILS$_Ld8
	.long	_$SYSUTILS$_Ld9
	.long	_$SYSUTILS$_Ld10
	.long	_$SYSUTILS$_Ld11
	.long	_$SYSUTILS$_Ld12
	.long	_$SYSUTILS$_Ld13
	.long	_$SYSUTILS$_Ld14
	.long	_$SYSUTILS$_Ld15
	.long	_$SYSUTILS$_Ld16
	.long	_$SYSUTILS$_Ld17
	.long	_$SYSUTILS$_Ld18
	.long	_$SYSUTILS$_Ld19
	.long	_$SYSUTILS$_Ld20
	.long	_$SYSUTILS$_Ld21
	.long	_$SYSUTILS$_Ld22
	.long	_$SYSUTILS$_Ld23
	.long	_$SYSUTILS$_Ld24
	.long	_$SYSUTILS$_Ld25
	.long	_$SYSUTILS$_Ld26
	.long	_$SYSUTILS$_Ld27
	.long	_$SYSUTILS$_Ld28
	.long	_$SYSUTILS$_Ld29
	.long	_$SYSUTILS$_Ld30
	.long	_$SYSUTILS$_Ld31
	.long	_$SYSUTILS$_Ld32
	.long	_$SYSUTILS$_Ld33
	.long	_$SYSUTILS$_Ld34
	.long	_$SYSUTILS$_Ld35
	.long	_$SYSUTILS$_Ld36
	.long	_$SYSUTILS$_Ld37
	.long	_$SYSUTILS$_Ld38
	.long	_$SYSUTILS$_Ld39
	.long	_$SYSUTILS$_Ld40
	.long	_$SYSUTILS$_Ld41
	.long	_$SYSUTILS$_Ld42
	.long	_$SYSUTILS$_Ld43
	.long	_$SYSUTILS$_Ld44
	.long	_$SYSUTILS$_Ld45
	.short	50
	.byte	0,0

.data
	.balign 4
.globl	TC_SYSUTILS_CONFIGEXTENSION
TC_SYSUTILS_CONFIGEXTENSION:
	.long	_$SYSUTILS$_Ld46

.data
	.balign 4
.globl	TC_SYSUTILS_SYSCONFIGDIR
TC_SYSUTILS_SYSCONFIGDIR:
	.long	0

.data
	.balign 2
.globl	TC_SYSUTILS_MONTHDAYS
TC_SYSUTILS_MONTHDAYS:
	.short	31,28,31,30,31,30,31,31,30,31,30,31,31,29,31,30,31,30,31,31,30,31,30,31

.data
	.balign 4
.globl	TC_SYSUTILS_MINDATETIME
TC_SYSUTILS_MINDATETIME:
	.byte	0,0,0,0,178,42,37,193

.data
	.balign 4
.globl	TC_SYSUTILS_MAXDATETIME
TC_SYSUTILS_MAXDATETIME:
	.byte	29,172,255,255,64,146,70,65

.data
	.balign 4
.globl	TC_SYSUTILS_MINCURRENCY
TC_SYSUTILS_MINCURRENCY:
	.byte	1,0,0,0,0,0,0,128

.data
	.balign 4
.globl	TC_SYSUTILS_MAXCURRENCY
TC_SYSUTILS_MAXCURRENCY:
	.byte	255,255,255,255,255,255,255,127

.data
	.balign 4
.globl	TC_SYSUTILS_LEADBYTES
TC_SYSUTILS_LEADBYTES:
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.balign 4
.globl	TC_SYSUTILS_EMPTYSTR
TC_SYSUTILS_EMPTYSTR:
	.long	0

.data
	.balign 4
.globl	TC_SYSUTILS_NULLSTR
TC_SYSUTILS_NULLSTR:
	.long	TC_SYSUTILS_EMPTYSTR

.data
	.balign 4
.globl	TC_SYSUTILS_EMPTYWIDESTR
TC_SYSUTILS_EMPTYWIDESTR:
	.long	0

.data
	.balign 4
.globl	TC_SYSUTILS_ONBEEP
TC_SYSUTILS_ONBEEP:
	.long	0

.data
	.balign 4
.globl	TC_SYSUTILS_ONCREATEGUID
TC_SYSUTILS_ONCREATEGUID:
	.long	0

.data
	.balign 4
.globl	TC_SYSUTILS_HEXDISPLAYPREFIX
TC_SYSUTILS_HEXDISPLAYPREFIX:
	.long	_$SYSUTILS$_Ld47

.data
	.balign 4
.globl	TC_SYSUTILS_FEINVALIDHANDLE
TC_SYSUTILS_FEINVALIDHANDLE:
	.long	-1

.data
	.balign 4
.globl	TC_SYSUTILS_GUID_NULL
TC_SYSUTILS_GUID_NULL:
	.long	0
	.short	0,0
	.byte	0,0,0,0,0,0,0,0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld48
_$SYSUTILS$_Ld48:
	.byte	0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$SYSUTILS$_Ld49
_$SYSUTILS$_Ld49:
	.ascii	"\\\000"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld50
_$SYSUTILS$_Ld50:
	.ascii	"\001:\000"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld51
_$SYSUTILS$_Ld51:
	.ascii	"\001\\\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld52
_$SYSUTILS$_Ld52:
	.ascii	"\\.\\\000"

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$SYSUTILS$_Ld53
_$SYSUTILS$_Ld53:
	.ascii	"\\..\\\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld54
_$SYSUTILS$_Ld54:
	.ascii	"\\..\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$SYSUTILS$_Ld55
_$SYSUTILS$_Ld55:
	.ascii	"*\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld56
_$SYSUTILS$_Ld56:
	.ascii	"..\\\000"

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$SYSUTILS$_Ld57
_$SYSUTILS$_Ld57:
	.ascii	"PATH\000"

.data
TC_SYSUTILS_HEXDIGITS:
	.byte	48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$SYSUTILS$_Ld58
_$SYSUTILS$_Ld58:
	.ascii	"%\000"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld59
_$SYSUTILS$_Ld59:
	.byte	0,0,0,0,0,0,64,156,12,64

.data
	.balign 4
.globl	_$SYSUTILS$_Ld60
_$SYSUTILS$_Ld60:
	.ascii	"\00500000\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$SYSUTILS$_Ld61
_$SYSUTILS$_Ld61:
	.ascii	"0\000"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld62
_$SYSUTILS$_Ld62:
	.ascii	"\0040000\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$SYSUTILS$_Ld63
_$SYSUTILS$_Ld63:
	.ascii	" \000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$SYSUTILS$_Ld64
_$SYSUTILS$_Ld64:
	.ascii	"(\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$SYSUTILS$_Ld65
_$SYSUTILS$_Ld65:
	.ascii	")\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$SYSUTILS$_Ld66
_$SYSUTILS$_Ld66:
	.ascii	"-\000"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld67
_$SYSUTILS$_Ld67:
	.byte	0,0,0,0,0,8,1,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$SYSUTILS$_Ld68
_$SYSUTILS$_Ld68:
	.ascii	"True\000"

.data
	.balign 4
	.short	0,1
	.long	-1,5
.globl	_$SYSUTILS$_Ld69
_$SYSUTILS$_Ld69:
	.ascii	"False\000"

.data
	.balign 4
	.short	0,1
	.long	-1,2
.globl	_$SYSUTILS$_Ld70
_$SYSUTILS$_Ld70:
	.ascii	"-1\000"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld71
_$SYSUTILS$_Ld71:
	.byte	0,0,64,118,58,107,11,222,58,64

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld72
_$SYSUTILS$_Ld72:
	.ascii	"Inf\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld73
_$SYSUTILS$_Ld73:
	.ascii	"Nan\000"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld74
_$SYSUTILS$_Ld74:
	.byte	16,39,0,0,0,0,0,0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld75
_$SYSUTILS$_Ld75:
	.byte	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld76
_$SYSUTILS$_Ld76:
	.byte	0,0,0,0,0,160,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld77
_$SYSUTILS$_Ld77:
	.byte	0,2,0,0,1,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.balign 4
	.short	0,1
	.long	-1,2
.globl	_$SYSUTILS$_Ld78
_$SYSUTILS$_Ld78:
	.ascii	"\015\012\000"

.data
TC_SYSUTILS_CP850UCT:
	.byte	128,154,144,182,142,182,143,128,210,211,212,216,215,222,142,143,144,146,146,226,153,227,234,235
	.byte	89,153,154,157,156,157,158,159,181,214,224,233,165,165,166,167,168,169,170,171,172,173,174,175
	.byte	176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,199,199
	.byte	200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223
	.byte	224,225,226,227,229,229,230,237,232,233,234,235,237,237,238,239,240,241,242,243,244,245,246,247
	.byte	248,249,250,251,252,253,254,255

.data
TC_SYSUTILS_CP850LCT:
	.byte	135,129,130,131,132,133,134,135,136,137,138,139,140,141,132,134,130,145,145,147,148,149,150,151
	.byte	152,148,129,155,156,155,158,159,160,161,162,163,164,164,166,167,168,169,170,171,172,173,174,175
	.byte	176,177,178,179,180,160,131,133,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,198
	.byte	200,201,202,203,204,205,206,207,208,209,136,137,138,213,161,140,139,217,218,219,220,221,141,223
	.byte	162,225,147,149,228,228,230,237,232,163,150,151,236,236,238,239,240,241,242,243,244,245,246,247
	.byte	248,249,250,251,252,253,254,255

.data
TC_SYSUTILS_CPISO88591UCT:
	.byte	192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215
	.byte	216,217,218,219,220,221,222,223,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207
	.byte	208,209,210,211,212,213,214,247,216,217,218,219,220,221,222,89

.data
TC_SYSUTILS_CPISO88591LCT:
	.byte	224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,215
	.byte	248,249,250,251,252,253,254,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239
	.byte	240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255

.data
	.balign 4
.globl	_$SYSUTILS$_Ld79
_$SYSUTILS$_Ld79:
	.byte	0,0,0,0,0,40,255,3,32,0,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld80
_$SYSUTILS$_Ld80:
	.byte	0,0,0,0,112,153,148,65

.data
	.balign 4
.globl	_$SYSUTILS$_Ld81
_$SYSUTILS$_Ld81:
	.byte	0,0,0,0,0,0,224,63

.data
	.balign 4
.globl	_$SYSUTILS$_Ld82
_$SYSUTILS$_Ld82:
	.byte	0,0,0,0,0,128,203,164,25,64

.data
	.balign 4
.globl	_$SYSUTILS$_Ld83
_$SYSUTILS$_Ld83:
	.byte	0,92,38,5,0,0,0,0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld84
_$SYSUTILS$_Ld84:
	.byte	0,0,0,0,24,45,37,65

.data
	.balign 4
	.short	0,1
	.long	-1,42
.globl	_$SYSUTILS$_Ld85
_$SYSUTILS$_Ld85:
	.ascii	"%d-%d-%d is not a valid date specification\000"

.data
	.balign 4
	.short	0,1
	.long	-1,45
.globl	_$SYSUTILS$_Ld86
_$SYSUTILS$_Ld86:
	.ascii	"%d:%d:%d.%d is not a valid time specification\000"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld87
_$SYSUTILS$_Ld87:
	.byte	0,0,0,0,180,42,37,193

.data
	.balign 4
	.short	0,1
	.long	-1,5
.globl	_$SYSUTILS$_Ld88
_$SYSUTILS$_Ld88:
	.ascii	"ddddd\000"

.data
	.balign 4
	.short	0,1
	.long	-1,2
.globl	_$SYSUTILS$_Ld89
_$SYSUTILS$_Ld89:
	.ascii	"tt\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$SYSUTILS$_Ld90
_$SYSUTILS$_Ld90:
	.ascii	"c\000"

.data
	.balign 4
	.short	0,1
	.long	-1,31
.globl	_$SYSUTILS$_Ld91
_$SYSUTILS$_Ld91:
	.ascii	"\"%s\" is not a valid date format\000"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld92
_$SYSUTILS$_Ld92:
	.ascii	"\000\000"

.data
	.balign 4
	.short	0,1
	.long	-1,12
.globl	_$SYSUTILS$_Ld93
_$SYSUTILS$_Ld93:
	.ascii	"Invalid date\000"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld94
_$SYSUTILS$_Ld94:
	.byte	0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.data
	.balign 4
	.short	0,1
	.long	-1,2
.globl	_$SYSUTILS$_Ld95
_$SYSUTILS$_Ld95:
	.ascii	"AM\000"

.data
	.balign 4
	.short	0,1
	.long	-1,2
.globl	_$SYSUTILS$_Ld96
_$SYSUTILS$_Ld96:
	.ascii	"PM\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$SYSUTILS$_Ld97
_$SYSUTILS$_Ld97:
	.ascii	"C\000"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld98
_$SYSUTILS$_Ld98:
	.ascii	"A/P\000"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld99
_$SYSUTILS$_Ld99:
	.ascii	"AMPM\000"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld100
_$SYSUTILS$_Ld100:
	.ascii	"AM/PM\000"

.data
	.balign 4
	.short	0,1
	.long	-1,34
.globl	_$SYSUTILS$_Ld101
_$SYSUTILS$_Ld101:
	.ascii	"Illegal character in format string\000"

.data
	.balign 4
	.long	-1,2
.globl	_$SYSUTILS$_Ld102
_$SYSUTILS$_Ld102:
	.short	37,0

.data
	.balign 4
	.short	0,1
	.long	-1,74
.globl	_$SYSUTILS$_Ld103
_$SYSUTILS$_Ld103:
	.ascii	"BasicEventWaitFor failed in TMultiReadExclusiveWrit"
	.ascii	"eSynchronizer.Beginread\000"

.data
	.balign 4
TC_SYSUTILS_FPC_ENVCOUNT:
	.long	-1

.data
	.balign 4
	.short	0,1
	.long	-1,6
.globl	_$SYSUTILS$_Ld104
_$SYSUTILS$_Ld104:
	.ascii	"Config\000"

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$SYSUTILS$_Ld105
_$SYSUTILS$_Ld105:
	.ascii	"TEMP\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld106
_$SYSUTILS$_Ld106:
	.ascii	"TMP\000"

.data
	.balign 4
	.short	0,1
	.long	-1,10
.globl	_$SYSUTILS$_Ld107
_$SYSUTILS$_Ld107:
	.ascii	"%s%.5d.tmp\000"

.data
	.balign 4
	.short	0,1
	.long	-1,4
.globl	_$SYSUTILS$_Ld108
_$SYSUTILS$_Ld108:
	.ascii	"%.4x\000"
	.balign 4
.globl	_$SYSUTILS$_Ld109
_$SYSUTILS$_Ld109:
	.long	0
	.short	0,0
	.byte	192,0,0,0,0,0,0,70

.data
	.balign 4
.globl	_$SYSUTILS$_Ld110
_$SYSUTILS$_Ld110:
	.ascii	"{%.8x-%.4x-%.4x-%.2x%.2x-%.2x%.2x%.2x%.2x%.2x%.2x}\000"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld111
_$SYSUTILS$_Ld111:
	.ascii	"$An unhandled exception occurred at $\000"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld112
_$SYSUTILS$_Ld112:
	.ascii	"\002 :\000"

.data
	.balign 4
	.short	0,1
	.long	-1,3
.globl	_$SYSUTILS$_Ld113
_$SYSUTILS$_Ld113:
	.ascii	" : \000"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld114
_$SYSUTILS$_Ld114:
	.ascii	"\021Exception object \000"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld115
_$SYSUTILS$_Ld115:
	.ascii	"\033 is not of class Exception.\000"

.data
	.balign 4
	.short	0,1
	.long	-1,50
.globl	_$SYSUTILS$_Ld116
_$SYSUTILS$_Ld116:
	.ascii	"RaiseLastOSError not implemented on this platform.\000"

.data
	.balign 4
	.short	0,1
	.long	-1,6
.globl	_$SYSUTILS$_Ld117
_$SYSUTILS$_Ld117:
	.ascii	"%s:\012%s\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$SYSUTILS$_Ld118
_$SYSUTILS$_Ld118:
	.ascii	".\000"

.data
	.balign 4
TC_SYSUTILS_TPLIST:
	.long	0

.data
TC_SYSUTILS_GUIDCALLEDRANDOMIZE:
	.byte	0

.data
	.balign 4
	.short	0,1
	.long	-1,5
.globl	_$SYSUTILS$_Ld119
_$SYSUTILS$_Ld119:
	.ascii	"d/m/y\000"

.data
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$SYSUTILS$_Ld120
_$SYSUTILS$_Ld120:
	.ascii	"dd\" \"mmmm\" \"yyyy\000"

.data
	.balign 4
	.short	0,1
	.long	-1,5
.globl	_$SYSUTILS$_Ld121
_$SYSUTILS$_Ld121:
	.ascii	"y/m/d\000"

.data
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$SYSUTILS$_Ld122
_$SYSUTILS$_Ld122:
	.ascii	"yyyy\" \"mmmm\" \"dd\000"

.data
	.balign 4
	.short	0,1
	.long	-1,5
.globl	_$SYSUTILS$_Ld123
_$SYSUTILS$_Ld123:
	.ascii	"m/d/y\000"

.data
	.balign 4
	.short	0,1
	.long	-1,16
.globl	_$SYSUTILS$_Ld124
_$SYSUTILS$_Ld124:
	.ascii	"mmmm\" \"dd\" \"yyyy\000"

.data
	.balign 4
	.short	0,1
	.long	-1,28
.globl	_$SYSUTILS$_Ld125
_$SYSUTILS$_Ld125:
	.ascii	"\\QUEUES\\FPC_ExecuteProcess_p\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$SYSUTILS$_Ld126
_$SYSUTILS$_Ld126:
	.ascii	"t\000"

.data
	.balign 4
	.short	0,1
	.long	-1,5
.globl	_$SYSUTILS$_Ld127
_$SYSUTILS$_Ld127:
	.ascii	".QUE\000\000"

.data
	.balign 4
	.short	0,1
	.long	-1,1
.globl	_$SYSUTILS$_Ld128
_$SYSUTILS$_Ld128:
	.ascii	"\"\000"
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
.globl	INIT_SYSUTILS_TMONTHNAMEARRAY
INIT_SYSUTILS_TMONTHNAMEARRAY:
	.byte	12
	.ascii	"\017TMonthNameArray"
	.long	4,12
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	RTTI_SYSUTILS_TMONTHNAMEARRAY
RTTI_SYSUTILS_TMONTHNAMEARRAY:
	.byte	12
	.ascii	"\017TMonthNameArray"
	.long	4,12
	.long	RTTI_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_TWEEKNAMEARRAY
INIT_SYSUTILS_TWEEKNAMEARRAY:
	.byte	12
	.ascii	"\016TWeekNameArray"
	.long	4,7
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	RTTI_SYSUTILS_TWEEKNAMEARRAY
RTTI_SYSUTILS_TWEEKNAMEARRAY:
	.byte	12
	.ascii	"\016TWeekNameArray"
	.long	4,7
	.long	RTTI_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_TFORMATSETTINGS
INIT_SYSUTILS_TFORMATSETTINGS:
	.byte	13,15
	.ascii	"TFormatSettings"
	.long	192,11
	.long	INIT_SYSTEM_ANSISTRING
	.long	8
	.long	INIT_SYSTEM_ANSISTRING
	.long	12
	.long	INIT_SYSTEM_ANSISTRING
	.long	16
	.long	INIT_SYSTEM_ANSISTRING
	.long	20
	.long	INIT_SYSTEM_ANSISTRING
	.long	24
	.long	INIT_SYSTEM_ANSISTRING
	.long	28
	.long	INIT_SYSTEM_ANSISTRING
	.long	32
	.long	INIT_SYSUTILS_TMONTHNAMEARRAY
	.long	36
	.long	INIT_SYSUTILS_TMONTHNAMEARRAY
	.long	84
	.long	INIT_SYSUTILS_TWEEKNAMEARRAY
	.long	132
	.long	INIT_SYSUTILS_TWEEKNAMEARRAY
	.long	160

.data
	.balign 4
.globl	RTTI_SYSUTILS_TFORMATSETTINGS
RTTI_SYSUTILS_TFORMATSETTINGS:
	.byte	13,15
	.ascii	"TFormatSettings"
	.long	192,20
	.long	RTTI_SYSTEM_BYTE
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	1
	.long	RTTI_SYSTEM_CHAR
	.long	2
	.long	RTTI_SYSTEM_CHAR
	.long	3
	.long	RTTI_SYSTEM_BYTE
	.long	4
	.long	RTTI_SYSTEM_CHAR
	.long	5
	.long	RTTI_SYSTEM_CHAR
	.long	6
	.long	RTTI_SYSTEM_CHAR
	.long	7
	.long	RTTI_SYSTEM_ANSISTRING
	.long	8
	.long	RTTI_SYSTEM_ANSISTRING
	.long	12
	.long	RTTI_SYSTEM_ANSISTRING
	.long	16
	.long	RTTI_SYSTEM_ANSISTRING
	.long	20
	.long	RTTI_SYSTEM_ANSISTRING
	.long	24
	.long	RTTI_SYSTEM_ANSISTRING
	.long	28
	.long	RTTI_SYSTEM_ANSISTRING
	.long	32
	.long	RTTI_SYSUTILS_TMONTHNAMEARRAY
	.long	36
	.long	RTTI_SYSUTILS_TMONTHNAMEARRAY
	.long	84
	.long	RTTI_SYSUTILS_TWEEKNAMEARRAY
	.long	132
	.long	RTTI_SYSUTILS_TWEEKNAMEARRAY
	.long	160
	.long	RTTI_SYSTEM_WORD
	.long	188

.data
	.balign 4
.globl	INIT_SYSUTILS_TSYSLOCALE
INIT_SYSUTILS_TSYSLOCALE:
	.byte	13,10
	.ascii	"TSysLocale"
	.long	16,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_TSYSLOCALE
RTTI_SYSUTILS_TSYSLOCALE:
	.byte	13,10
	.ascii	"TSysLocale"
	.long	16,7
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4
	.long	RTTI_SYSTEM_LONGINT
	.long	8
	.long	RTTI_SYSTEM_BOOLEAN
	.long	12
	.long	RTTI_SYSTEM_BOOLEAN
	.long	13
	.long	RTTI_SYSTEM_BOOLEAN
	.long	12
	.long	RTTI_SYSTEM_BOOLEAN
	.long	13

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF49
INIT_SYSUTILS_DEF49:
	.byte	3
	.ascii	"\000"
	.byte	5
	.long	0,0,0
	.byte	19
	.ascii	"ExecInheritsHandles"
	.byte	8
	.ascii	"sysutils"
	.byte	0

.data
	.balign 4
.globl	INIT_SYSUTILS_TEXECUTEFLAGS
INIT_SYSUTILS_TEXECUTEFLAGS:
	.byte	5,13
	.ascii	"TExecuteFlags"
	.byte	5
	.long	INIT_SYSUTILS_DEF49

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF49
RTTI_SYSUTILS_DEF49:
	.byte	3
	.ascii	"\000"
	.byte	5
	.long	0,0,0
	.byte	19
	.ascii	"ExecInheritsHandles"
	.byte	8
	.ascii	"sysutils"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF49_s2o
RTTI_SYSUTILS_DEF49_s2o:
	.long	1,0
	.long	RTTI_SYSUTILS_DEF49+15

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF49_o2s
RTTI_SYSUTILS_DEF49_o2s:
	.long	0
	.long	RTTI_SYSUTILS_DEF49+15

.data
	.balign 4
.globl	RTTI_SYSUTILS_TEXECUTEFLAGS
RTTI_SYSUTILS_TEXECUTEFLAGS:
	.byte	5,13
	.ascii	"TExecuteFlags"
	.byte	5
	.long	RTTI_SYSUTILS_DEF49

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF1944
INIT_SYSUTILS_DEF1944:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF1947
INIT_SYSUTILS_DEF1947:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF1948
INIT_SYSUTILS_DEF1948:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF1949
INIT_SYSUTILS_DEF1949:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF1950
INIT_SYSUTILS_DEF1950:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF1955
INIT_SYSUTILS_DEF1955:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF1956
INIT_SYSUTILS_DEF1956:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF60
INIT_SYSUTILS_DEF60:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF1608
INIT_SYSUTILS_DEF1608:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_TGETVENDORNAMEEVENT
INIT_SYSUTILS_TGETVENDORNAMEEVENT:
	.byte	23,19
	.ascii	"TGetVendorNameEvent"

.data
	.balign 4
.globl	RTTI_SYSUTILS_TGETVENDORNAMEEVENT
RTTI_SYSUTILS_TGETVENDORNAMEEVENT:
	.byte	23,19
	.ascii	"TGetVendorNameEvent"

.data
	.balign 4
.globl	INIT_SYSUTILS_TGETAPPNAMEEVENT
INIT_SYSUTILS_TGETAPPNAMEEVENT:
	.byte	23,16
	.ascii	"TGetAppNameEvent"

.data
	.balign 4
.globl	RTTI_SYSUTILS_TGETAPPNAMEEVENT
RTTI_SYSUTILS_TGETAPPNAMEEVENT:
	.byte	23,16
	.ascii	"TGetAppNameEvent"

.data
	.balign 4
.globl	INIT_SYSUTILS_TGETTEMPDIREVENT
INIT_SYSUTILS_TGETTEMPDIREVENT:
	.byte	23,16
	.ascii	"TGetTempDirEvent"

.data
	.balign 4
.globl	RTTI_SYSUTILS_TGETTEMPDIREVENT
RTTI_SYSUTILS_TGETTEMPDIREVENT:
	.byte	23,16
	.ascii	"TGetTempDirEvent"

.data
	.balign 4
.globl	INIT_SYSUTILS_TGETTEMPFILEEVENT
INIT_SYSUTILS_TGETTEMPFILEEVENT:
	.byte	23,17
	.ascii	"TGetTempFileEvent"

.data
	.balign 4
.globl	RTTI_SYSUTILS_TGETTEMPFILEEVENT
RTTI_SYSUTILS_TGETTEMPFILEEVENT:
	.byte	23,17
	.ascii	"TGetTempFileEvent"

.data
	.balign 4
.globl	INIT_SYSUTILS_TEVENTTYPE
INIT_SYSUTILS_TEVENTTYPE:
	.byte	3,10
	.ascii	"TEventType"
	.byte	5
	.long	0,4,0
	.byte	8
	.ascii	"etCustom"
	.byte	6
	.ascii	"etInfo"
	.byte	9
	.ascii	"etWarning"
	.byte	7
	.ascii	"etError"
	.byte	7
	.ascii	"etDebug"
	.byte	8
	.ascii	"sysutils"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSUTILS_TEVENTTYPE
RTTI_SYSUTILS_TEVENTTYPE:
	.byte	3,10
	.ascii	"TEventType"
	.byte	5
	.long	0,4,0
	.byte	8
	.ascii	"etCustom"
	.byte	6
	.ascii	"etInfo"
	.byte	9
	.ascii	"etWarning"
	.byte	7
	.ascii	"etError"
	.byte	7
	.ascii	"etDebug"
	.byte	8
	.ascii	"sysutils"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSUTILS_TEVENTTYPE_s2o
RTTI_SYSUTILS_TEVENTTYPE_s2o:
	.long	5,0
	.long	RTTI_SYSUTILS_TEVENTTYPE+25
	.long	4
	.long	RTTI_SYSUTILS_TEVENTTYPE+59
	.long	3
	.long	RTTI_SYSUTILS_TEVENTTYPE+51
	.long	1
	.long	RTTI_SYSUTILS_TEVENTTYPE+34
	.long	2
	.long	RTTI_SYSUTILS_TEVENTTYPE+41

.data
	.balign 4
.globl	RTTI_SYSUTILS_TEVENTTYPE_o2s
RTTI_SYSUTILS_TEVENTTYPE_o2s:
	.long	0
	.long	RTTI_SYSUTILS_TEVENTTYPE+25
	.long	RTTI_SYSUTILS_TEVENTTYPE+34
	.long	RTTI_SYSUTILS_TEVENTTYPE+41
	.long	RTTI_SYSUTILS_TEVENTTYPE+51
	.long	RTTI_SYSUTILS_TEVENTTYPE+59

.data
	.balign 4
.globl	INIT_SYSUTILS_TEVENTTYPES
INIT_SYSUTILS_TEVENTTYPES:
	.byte	5,11
	.ascii	"TEventTypes"
	.byte	5
	.long	INIT_SYSUTILS_TEVENTTYPE

.data
	.balign 4
.globl	RTTI_SYSUTILS_TEVENTTYPES
RTTI_SYSUTILS_TEVENTTYPES:
	.byte	5,11
	.ascii	"TEventTypes"
	.byte	5
	.long	RTTI_SYSUTILS_TEVENTTYPE

.data
	.balign 4
.globl	INIT_SYSUTILS_PDAYTABLE
INIT_SYSUTILS_PDAYTABLE:
	.byte	0
	.ascii	"\011PDayTable"

.data
	.balign 4
.globl	RTTI_SYSUTILS_PDAYTABLE
RTTI_SYSUTILS_PDAYTABLE:
	.byte	0
	.ascii	"\011PDayTable"

.data
	.balign 4
.globl	INIT_SYSUTILS_TDAYTABLE
INIT_SYSUTILS_TDAYTABLE:
	.byte	12
	.ascii	"\011TDayTable"
	.long	2,12
	.long	INIT_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	RTTI_SYSUTILS_TDAYTABLE
RTTI_SYSUTILS_TDAYTABLE:
	.byte	12
	.ascii	"\011TDayTable"
	.long	2,12
	.long	RTTI_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	INIT_SYSUTILS_TSYSTEMTIME
INIT_SYSUTILS_TSYSTEMTIME:
	.byte	13,11
	.ascii	"TSystemTime"
	.long	14,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_TSYSTEMTIME
RTTI_SYSUTILS_TSYSTEMTIME:
	.byte	13,11
	.ascii	"TSystemTime"
	.long	14,7
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSTEM_WORD
	.long	4
	.long	RTTI_SYSTEM_WORD
	.long	6
	.long	RTTI_SYSTEM_WORD
	.long	8
	.long	RTTI_SYSTEM_WORD
	.long	10
	.long	RTTI_SYSTEM_WORD
	.long	12

.data
	.balign 4
.globl	INIT_SYSUTILS_TTIMESTAMP
INIT_SYSUTILS_TTIMESTAMP:
	.byte	13,10
	.ascii	"TTimeStamp"
	.long	8,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_TTIMESTAMP
RTTI_SYSUTILS_TTIMESTAMP:
	.byte	13,10
	.ascii	"TTimeStamp"
	.long	8,2
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4

.data
	.balign 4
.globl	INIT_SYSUTILS_PSTRING
INIT_SYSUTILS_PSTRING:
	.byte	0
	.ascii	"\007PString"

.data
	.balign 4
.globl	RTTI_SYSUTILS_PSTRING
RTTI_SYSUTILS_PSTRING:
	.byte	0
	.ascii	"\007PString"

.data
	.balign 4
.globl	INIT_SYSUTILS_TFLOATFORMAT
INIT_SYSUTILS_TFLOATFORMAT:
	.byte	3,12
	.ascii	"TFloatFormat"
	.byte	5
	.long	0,4,0
	.byte	9
	.ascii	"ffGeneral"
	.byte	10
	.ascii	"ffExponent"
	.byte	7
	.ascii	"ffFixed"
	.byte	8
	.ascii	"ffNumber"
	.byte	10
	.ascii	"ffCurrency"
	.byte	8
	.ascii	"sysutils"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSUTILS_TFLOATFORMAT
RTTI_SYSUTILS_TFLOATFORMAT:
	.byte	3,12
	.ascii	"TFloatFormat"
	.byte	5
	.long	0,4,0
	.byte	9
	.ascii	"ffGeneral"
	.byte	10
	.ascii	"ffExponent"
	.byte	7
	.ascii	"ffFixed"
	.byte	8
	.ascii	"ffNumber"
	.byte	10
	.ascii	"ffCurrency"
	.byte	8
	.ascii	"sysutils"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSUTILS_TFLOATFORMAT_s2o
RTTI_SYSUTILS_TFLOATFORMAT_s2o:
	.long	5,4
	.long	RTTI_SYSUTILS_TFLOATFORMAT+65
	.long	1
	.long	RTTI_SYSUTILS_TFLOATFORMAT+37
	.long	2
	.long	RTTI_SYSUTILS_TFLOATFORMAT+48
	.long	0
	.long	RTTI_SYSUTILS_TFLOATFORMAT+27
	.long	3
	.long	RTTI_SYSUTILS_TFLOATFORMAT+56

.data
	.balign 4
.globl	RTTI_SYSUTILS_TFLOATFORMAT_o2s
RTTI_SYSUTILS_TFLOATFORMAT_o2s:
	.long	0
	.long	RTTI_SYSUTILS_TFLOATFORMAT+27
	.long	RTTI_SYSUTILS_TFLOATFORMAT+37
	.long	RTTI_SYSUTILS_TFLOATFORMAT+48
	.long	RTTI_SYSUTILS_TFLOATFORMAT+56
	.long	RTTI_SYSUTILS_TFLOATFORMAT+65

.data
	.balign 4
.globl	INIT_SYSUTILS_TFLOATVALUE
INIT_SYSUTILS_TFLOATVALUE:
	.byte	3,11
	.ascii	"TFloatValue"
	.byte	5
	.long	0,5,0
	.byte	10
	.ascii	"fvExtended"
	.byte	10
	.ascii	"fvCurrency"
	.byte	8
	.ascii	"fvSingle"
	.byte	6
	.ascii	"fvReal"
	.byte	8
	.ascii	"fvDouble"
	.byte	6
	.ascii	"fvComp"
	.byte	8
	.ascii	"sysutils"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSUTILS_TFLOATVALUE
RTTI_SYSUTILS_TFLOATVALUE:
	.byte	3,11
	.ascii	"TFloatValue"
	.byte	5
	.long	0,5,0
	.byte	10
	.ascii	"fvExtended"
	.byte	10
	.ascii	"fvCurrency"
	.byte	8
	.ascii	"fvSingle"
	.byte	6
	.ascii	"fvReal"
	.byte	8
	.ascii	"fvDouble"
	.byte	6
	.ascii	"fvComp"
	.byte	8
	.ascii	"sysutils"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSUTILS_TFLOATVALUE_s2o
RTTI_SYSUTILS_TFLOATVALUE_s2o:
	.long	6,5
	.long	RTTI_SYSUTILS_TFLOATVALUE+73
	.long	1
	.long	RTTI_SYSUTILS_TFLOATVALUE+37
	.long	4
	.long	RTTI_SYSUTILS_TFLOATVALUE+64
	.long	0
	.long	RTTI_SYSUTILS_TFLOATVALUE+26
	.long	3
	.long	RTTI_SYSUTILS_TFLOATVALUE+57
	.long	2
	.long	RTTI_SYSUTILS_TFLOATVALUE+48

.data
	.balign 4
.globl	RTTI_SYSUTILS_TFLOATVALUE_o2s
RTTI_SYSUTILS_TFLOATVALUE_o2s:
	.long	0
	.long	RTTI_SYSUTILS_TFLOATVALUE+26
	.long	RTTI_SYSUTILS_TFLOATVALUE+37
	.long	RTTI_SYSUTILS_TFLOATVALUE+48
	.long	RTTI_SYSUTILS_TFLOATVALUE+57
	.long	RTTI_SYSUTILS_TFLOATVALUE+64
	.long	RTTI_SYSUTILS_TFLOATVALUE+73

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF169
INIT_SYSUTILS_DEF169:
	.byte	3
	.ascii	"\000"
	.byte	5
	.long	0,1,0
	.byte	12
	.ascii	"rfReplaceAll"
	.byte	12
	.ascii	"rfIgnoreCase"
	.byte	8
	.ascii	"sysutils"
	.byte	0

.data
	.balign 4
.globl	INIT_SYSUTILS_TREPLACEFLAGS
INIT_SYSUTILS_TREPLACEFLAGS:
	.byte	5,13
	.ascii	"TReplaceFlags"
	.byte	5
	.long	INIT_SYSUTILS_DEF169

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF169
RTTI_SYSUTILS_DEF169:
	.byte	3
	.ascii	"\000"
	.byte	5
	.long	0,1,0
	.byte	12
	.ascii	"rfReplaceAll"
	.byte	12
	.ascii	"rfIgnoreCase"
	.byte	8
	.ascii	"sysutils"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF169_s2o
RTTI_SYSUTILS_DEF169_s2o:
	.long	2,1
	.long	RTTI_SYSUTILS_DEF169+28
	.long	0
	.long	RTTI_SYSUTILS_DEF169+15

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF169_o2s
RTTI_SYSUTILS_DEF169_o2s:
	.long	0
	.long	RTTI_SYSUTILS_DEF169+15
	.long	RTTI_SYSUTILS_DEF169+28

.data
	.balign 4
.globl	RTTI_SYSUTILS_TREPLACEFLAGS
RTTI_SYSUTILS_TREPLACEFLAGS:
	.byte	5,13
	.ascii	"TReplaceFlags"
	.byte	5
	.long	RTTI_SYSUTILS_DEF169

.data
	.balign 4
.globl	INIT_SYSUTILS_TFLOATREC
INIT_SYSUTILS_TFLOATREC:
	.byte	13,9
	.ascii	"TFloatRec"
	.long	24,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF172
RTTI_SYSUTILS_DEF172:
	.byte	12
	.ascii	"\000"
	.long	1,19
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_SYSUTILS_TFLOATREC
RTTI_SYSUTILS_TFLOATREC:
	.byte	13,9
	.ascii	"TFloatRec"
	.long	24,3
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_BOOLEAN
	.long	4
	.long	RTTI_SYSUTILS_DEF172
	.long	5

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF177
INIT_SYSUTILS_DEF177:
	.byte	21
	.ascii	"\000"
	.long	4
	.long	INIT_SYSTEM_ANSISTRING
	.long	256
	.long	INIT_SYSTEM_ANSISTRING
	.byte	8
	.ascii	"sysutils"

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF801
INIT_SYSUTILS_DEF801:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF832
INIT_SYSUTILS_DEF832:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF835
INIT_SYSUTILS_DEF835:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF839
INIT_SYSUTILS_DEF839:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF893
INIT_SYSUTILS_DEF893:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF967
INIT_SYSUTILS_DEF967:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF972
INIT_SYSUTILS_DEF972:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF975
INIT_SYSUTILS_DEF975:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF984
INIT_SYSUTILS_DEF984:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF1168
INIT_SYSUTILS_DEF1168:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF1207
INIT_SYSUTILS_DEF1207:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_TMBCSBYTETYPE
INIT_SYSUTILS_TMBCSBYTETYPE:
	.byte	3,13
	.ascii	"TMbcsByteType"
	.byte	5
	.long	0,2,0
	.byte	12
	.ascii	"mbSingleByte"
	.byte	10
	.ascii	"mbLeadByte"
	.byte	11
	.ascii	"mbTrailByte"
	.byte	8
	.ascii	"sysutils"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSUTILS_TMBCSBYTETYPE
RTTI_SYSUTILS_TMBCSBYTETYPE:
	.byte	3,13
	.ascii	"TMbcsByteType"
	.byte	5
	.long	0,2,0
	.byte	12
	.ascii	"mbSingleByte"
	.byte	10
	.ascii	"mbLeadByte"
	.byte	11
	.ascii	"mbTrailByte"
	.byte	8
	.ascii	"sysutils"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSUTILS_TMBCSBYTETYPE_s2o
RTTI_SYSUTILS_TMBCSBYTETYPE_s2o:
	.long	3,1
	.long	RTTI_SYSUTILS_TMBCSBYTETYPE+41
	.long	0
	.long	RTTI_SYSUTILS_TMBCSBYTETYPE+28
	.long	2
	.long	RTTI_SYSUTILS_TMBCSBYTETYPE+52

.data
	.balign 4
.globl	RTTI_SYSUTILS_TMBCSBYTETYPE_o2s
RTTI_SYSUTILS_TMBCSBYTETYPE_o2s:
	.long	0
	.long	RTTI_SYSUTILS_TMBCSBYTETYPE+28
	.long	RTTI_SYSUTILS_TMBCSBYTETYPE+41
	.long	RTTI_SYSUTILS_TMBCSBYTETYPE+52

.data
	.balign 4
.globl	INIT_SYSUTILS_TSYSCHARSET
INIT_SYSUTILS_TSYSCHARSET:
	.byte	5,11
	.ascii	"TSysCharSet"
	.byte	1
	.long	INIT_SYSTEM_CHAR

.data
	.balign 4
.globl	RTTI_SYSUTILS_TSYSCHARSET
RTTI_SYSUTILS_TSYSCHARSET:
	.byte	5,11
	.ascii	"TSysCharSet"
	.byte	1
	.long	RTTI_SYSTEM_CHAR

.data
	.balign 4
.globl	INIT_SYSUTILS_PSYSCHARSET
INIT_SYSUTILS_PSYSCHARSET:
	.byte	0
	.ascii	"\013PSysCharSet"

.data
	.balign 4
.globl	RTTI_SYSUTILS_PSYSCHARSET
RTTI_SYSUTILS_PSYSCHARSET:
	.byte	0
	.ascii	"\013PSysCharSet"

.data
	.balign 4
.globl	INIT_SYSUTILS_TPROCEDURE
INIT_SYSUTILS_TPROCEDURE:
	.byte	23,10
	.ascii	"TProcedure"

.data
	.balign 4
.globl	RTTI_SYSUTILS_TPROCEDURE
RTTI_SYSUTILS_TPROCEDURE:
	.byte	23,10
	.ascii	"TProcedure"

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF342
INIT_SYSUTILS_DEF342:
	.byte	1
	.ascii	"\000"
	.byte	0
	.long	0,31

.data
	.balign 4
.globl	INIT_SYSUTILS_TINTEGERSET
INIT_SYSUTILS_TINTEGERSET:
	.byte	5,11
	.ascii	"TIntegerSet"
	.byte	5
	.long	INIT_SYSUTILS_DEF342

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF342
RTTI_SYSUTILS_DEF342:
	.byte	1
	.ascii	"\000"
	.byte	0
	.long	0,31

.data
	.balign 4
.globl	RTTI_SYSUTILS_TINTEGERSET
RTTI_SYSUTILS_TINTEGERSET:
	.byte	5,11
	.ascii	"TIntegerSet"
	.byte	5
	.long	RTTI_SYSUTILS_DEF342

.data
	.balign 4
.globl	INIT_SYSUTILS_LONGREC
INIT_SYSUTILS_LONGREC:
	.byte	13,7
	.ascii	"LongRec"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF346
RTTI_SYSUTILS_DEF346:
	.byte	12
	.ascii	"\000"
	.long	1,4
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_SYSUTILS_LONGREC
RTTI_SYSUTILS_LONGREC:
	.byte	13,7
	.ascii	"LongRec"
	.long	4,3
	.long	RTTI_SYSTEM_WORD
	.long	0
	.long	RTTI_SYSTEM_WORD
	.long	2
	.long	RTTI_SYSUTILS_DEF346
	.long	0

.data
	.balign 4
.globl	INIT_SYSUTILS_WORDREC
INIT_SYSUTILS_WORDREC:
	.byte	13,7
	.ascii	"WordRec"
	.long	2,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_WORDREC
RTTI_SYSUTILS_WORDREC:
	.byte	13,7
	.ascii	"WordRec"
	.long	2,2
	.long	RTTI_SYSTEM_BYTE
	.long	0
	.long	RTTI_SYSTEM_BYTE
	.long	1

.data
	.balign 4
.globl	INIT_SYSUTILS_INT64REC
INIT_SYSUTILS_INT64REC:
	.byte	13,8
	.ascii	"Int64Rec"
	.long	8,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF350
RTTI_SYSUTILS_DEF350:
	.byte	12
	.ascii	"\000"
	.long	2,4
	.long	RTTI_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF351
RTTI_SYSUTILS_DEF351:
	.byte	12
	.ascii	"\000"
	.long	1,8
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_SYSUTILS_INT64REC
RTTI_SYSUTILS_INT64REC:
	.byte	13,8
	.ascii	"Int64Rec"
	.long	8,4
	.long	RTTI_SYSTEM_LONGWORD
	.long	0
	.long	RTTI_SYSTEM_LONGWORD
	.long	4
	.long	RTTI_SYSUTILS_DEF350
	.long	0
	.long	RTTI_SYSUTILS_DEF351
	.long	0

.data
	.balign 4
.globl	INIT_SYSUTILS_INT128REC
INIT_SYSUTILS_INT128REC:
	.byte	13,9
	.ascii	"Int128Rec"
	.long	16,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF354
RTTI_SYSUTILS_DEF354:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	RTTI_SYSTEM_LONGWORD
	.long	19

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF355
RTTI_SYSUTILS_DEF355:
	.byte	12
	.ascii	"\000"
	.long	2,8
	.long	RTTI_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF356
RTTI_SYSUTILS_DEF356:
	.byte	12
	.ascii	"\000"
	.long	1,16
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_SYSUTILS_INT128REC
RTTI_SYSUTILS_INT128REC:
	.byte	13,9
	.ascii	"Int128Rec"
	.long	16,5
	.long	RTTI_SYSTEM_QWORD
	.long	0
	.long	RTTI_SYSTEM_QWORD
	.long	8
	.long	RTTI_SYSUTILS_DEF354
	.long	0
	.long	RTTI_SYSUTILS_DEF355
	.long	0
	.long	RTTI_SYSUTILS_DEF356
	.long	0

.data
	.balign 4
.globl	INIT_SYSUTILS_OWORDREC
INIT_SYSUTILS_OWORDREC:
	.byte	13,8
	.ascii	"OWordRec"
	.long	16,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF359
RTTI_SYSUTILS_DEF359:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	RTTI_SYSTEM_LONGWORD
	.long	19

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF360
RTTI_SYSUTILS_DEF360:
	.byte	12
	.ascii	"\000"
	.long	2,8
	.long	RTTI_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF361
RTTI_SYSUTILS_DEF361:
	.byte	12
	.ascii	"\000"
	.long	1,16
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_SYSUTILS_OWORDREC
RTTI_SYSUTILS_OWORDREC:
	.byte	13,8
	.ascii	"OWordRec"
	.long	16,5
	.long	RTTI_SYSTEM_QWORD
	.long	0
	.long	RTTI_SYSTEM_QWORD
	.long	8
	.long	RTTI_SYSUTILS_DEF359
	.long	0
	.long	RTTI_SYSUTILS_DEF360
	.long	0
	.long	RTTI_SYSUTILS_DEF361
	.long	0

.data
	.balign 4
.globl	INIT_SYSUTILS_PBYTEARRAY
INIT_SYSUTILS_PBYTEARRAY:
	.byte	0
	.ascii	"\012PByteArray"

.data
	.balign 4
.globl	RTTI_SYSUTILS_PBYTEARRAY
RTTI_SYSUTILS_PBYTEARRAY:
	.byte	0
	.ascii	"\012PByteArray"

.data
	.balign 4
.globl	INIT_SYSUTILS_TBYTEARRAY
INIT_SYSUTILS_TBYTEARRAY:
	.byte	12
	.ascii	"\012TByteArray"
	.long	1,32768
	.long	INIT_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_SYSUTILS_TBYTEARRAY
RTTI_SYSUTILS_TBYTEARRAY:
	.byte	12
	.ascii	"\012TByteArray"
	.long	1,32768
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	INIT_SYSUTILS_PWORDARRAY
INIT_SYSUTILS_PWORDARRAY:
	.byte	0
	.ascii	"\012PWordarray"

.data
	.balign 4
.globl	RTTI_SYSUTILS_PWORDARRAY
RTTI_SYSUTILS_PWORDARRAY:
	.byte	0
	.ascii	"\012PWordarray"

.data
	.balign 4
.globl	INIT_SYSUTILS_TWORDARRAY
INIT_SYSUTILS_TWORDARRAY:
	.byte	12
	.ascii	"\012TWordArray"
	.long	2,16384
	.long	INIT_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	RTTI_SYSUTILS_TWORDARRAY
RTTI_SYSUTILS_TWORDARRAY:
	.byte	12
	.ascii	"\012TWordArray"
	.long	2,16384
	.long	RTTI_SYSTEM_WORD
	.long	18

.data
	.balign 4
.globl	INIT_SYSUTILS_TBYTES
INIT_SYSUTILS_TBYTES:
	.byte	21
	.ascii	"\006TBytes"
	.long	1
	.long	INIT_SYSTEM_BYTE
	.long	17,0
	.byte	8
	.ascii	"sysutils"

.data
	.balign 4
.globl	RTTI_SYSUTILS_TBYTES
RTTI_SYSUTILS_TBYTES:
	.byte	21
	.ascii	"\006TBytes"
	.long	1
	.long	RTTI_SYSTEM_BYTE
	.long	17,0
	.byte	8
	.ascii	"sysutils"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld130
_$SYSUTILS$_Ld130:
	.short	0
	.long	_$SYSUTILS$_Ld131
	.balign 4
.globl	_$SYSUTILS$_Ld131
_$SYSUTILS$_Ld131:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EXCEPTION
INIT_SYSUTILS_EXCEPTION:
	.byte	15,9
	.ascii	"Exception"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	4

.data
	.balign 4
.globl	RTTI_SYSUTILS_EXCEPTION
RTTI_SYSUTILS_EXCEPTION:
	.byte	15,9
	.ascii	"Exception"
	.long	VMT_SYSUTILS_EXCEPTION
	.long	RTTI_SYSTEM_TOBJECT
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EXCEPTCLASS
INIT_SYSUTILS_EXCEPTCLASS:
	.byte	0
	.ascii	"\013ExceptClass"

.data
	.balign 4
.globl	RTTI_SYSUTILS_EXCEPTCLASS
RTTI_SYSUTILS_EXCEPTCLASS:
	.byte	0
	.ascii	"\013ExceptClass"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld133
_$SYSUTILS$_Ld133:
	.short	0
	.long	_$SYSUTILS$_Ld134
	.balign 4
.globl	_$SYSUTILS$_Ld134
_$SYSUTILS$_Ld134:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EEXTERNAL
INIT_SYSUTILS_EEXTERNAL:
	.byte	15,9
	.ascii	"EExternal"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EEXTERNAL
RTTI_SYSUTILS_EEXTERNAL:
	.byte	15,9
	.ascii	"EExternal"
	.long	VMT_SYSUTILS_EEXTERNAL
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld136
_$SYSUTILS$_Ld136:
	.short	0
	.long	_$SYSUTILS$_Ld137
	.balign 4
.globl	_$SYSUTILS$_Ld137
_$SYSUTILS$_Ld137:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EINTERROR
INIT_SYSUTILS_EINTERROR:
	.byte	15,9
	.ascii	"EInterror"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EINTERROR
RTTI_SYSUTILS_EINTERROR:
	.byte	15,9
	.ascii	"EInterror"
	.long	VMT_SYSUTILS_EINTERROR
	.long	RTTI_SYSUTILS_EEXTERNAL
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld139
_$SYSUTILS$_Ld139:
	.short	0
	.long	_$SYSUTILS$_Ld140
	.balign 4
.globl	_$SYSUTILS$_Ld140
_$SYSUTILS$_Ld140:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EDIVBYZERO
INIT_SYSUTILS_EDIVBYZERO:
	.byte	15,10
	.ascii	"EDivByZero"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EDIVBYZERO
RTTI_SYSUTILS_EDIVBYZERO:
	.byte	15,10
	.ascii	"EDivByZero"
	.long	VMT_SYSUTILS_EDIVBYZERO
	.long	RTTI_SYSUTILS_EINTERROR
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld142
_$SYSUTILS$_Ld142:
	.short	0
	.long	_$SYSUTILS$_Ld143
	.balign 4
.globl	_$SYSUTILS$_Ld143
_$SYSUTILS$_Ld143:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_ERANGEERROR
INIT_SYSUTILS_ERANGEERROR:
	.byte	15,11
	.ascii	"ERangeError"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_ERANGEERROR
RTTI_SYSUTILS_ERANGEERROR:
	.byte	15,11
	.ascii	"ERangeError"
	.long	VMT_SYSUTILS_ERANGEERROR
	.long	RTTI_SYSUTILS_EINTERROR
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld145
_$SYSUTILS$_Ld145:
	.short	0
	.long	_$SYSUTILS$_Ld146
	.balign 4
.globl	_$SYSUTILS$_Ld146
_$SYSUTILS$_Ld146:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EINTOVERFLOW
INIT_SYSUTILS_EINTOVERFLOW:
	.byte	15,12
	.ascii	"EIntOverflow"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EINTOVERFLOW
RTTI_SYSUTILS_EINTOVERFLOW:
	.byte	15,12
	.ascii	"EIntOverflow"
	.long	VMT_SYSUTILS_EINTOVERFLOW
	.long	RTTI_SYSUTILS_EINTERROR
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld148
_$SYSUTILS$_Ld148:
	.short	0
	.long	_$SYSUTILS$_Ld149
	.balign 4
.globl	_$SYSUTILS$_Ld149
_$SYSUTILS$_Ld149:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EMATHERROR
INIT_SYSUTILS_EMATHERROR:
	.byte	15,10
	.ascii	"EMathError"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EMATHERROR
RTTI_SYSUTILS_EMATHERROR:
	.byte	15,10
	.ascii	"EMathError"
	.long	VMT_SYSUTILS_EMATHERROR
	.long	RTTI_SYSUTILS_EEXTERNAL
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld151
_$SYSUTILS$_Ld151:
	.short	0
	.long	_$SYSUTILS$_Ld152
	.balign 4
.globl	_$SYSUTILS$_Ld152
_$SYSUTILS$_Ld152:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EINVALIDOP
INIT_SYSUTILS_EINVALIDOP:
	.byte	15,10
	.ascii	"EInvalidOp"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EINVALIDOP
RTTI_SYSUTILS_EINVALIDOP:
	.byte	15,10
	.ascii	"EInvalidOp"
	.long	VMT_SYSUTILS_EINVALIDOP
	.long	RTTI_SYSUTILS_EMATHERROR
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld154
_$SYSUTILS$_Ld154:
	.short	0
	.long	_$SYSUTILS$_Ld155
	.balign 4
.globl	_$SYSUTILS$_Ld155
_$SYSUTILS$_Ld155:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EZERODIVIDE
INIT_SYSUTILS_EZERODIVIDE:
	.byte	15,11
	.ascii	"EZeroDivide"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EZERODIVIDE
RTTI_SYSUTILS_EZERODIVIDE:
	.byte	15,11
	.ascii	"EZeroDivide"
	.long	VMT_SYSUTILS_EZERODIVIDE
	.long	RTTI_SYSUTILS_EMATHERROR
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld157
_$SYSUTILS$_Ld157:
	.short	0
	.long	_$SYSUTILS$_Ld158
	.balign 4
.globl	_$SYSUTILS$_Ld158
_$SYSUTILS$_Ld158:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EOVERFLOW
INIT_SYSUTILS_EOVERFLOW:
	.byte	15,9
	.ascii	"EOverflow"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EOVERFLOW
RTTI_SYSUTILS_EOVERFLOW:
	.byte	15,9
	.ascii	"EOverflow"
	.long	VMT_SYSUTILS_EOVERFLOW
	.long	RTTI_SYSUTILS_EMATHERROR
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld160
_$SYSUTILS$_Ld160:
	.short	0
	.long	_$SYSUTILS$_Ld161
	.balign 4
.globl	_$SYSUTILS$_Ld161
_$SYSUTILS$_Ld161:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EUNDERFLOW
INIT_SYSUTILS_EUNDERFLOW:
	.byte	15,10
	.ascii	"EUnderflow"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EUNDERFLOW
RTTI_SYSUTILS_EUNDERFLOW:
	.byte	15,10
	.ascii	"EUnderflow"
	.long	VMT_SYSUTILS_EUNDERFLOW
	.long	RTTI_SYSUTILS_EMATHERROR
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld163
_$SYSUTILS$_Ld163:
	.short	0
	.long	_$SYSUTILS$_Ld164
	.balign 4
.globl	_$SYSUTILS$_Ld164
_$SYSUTILS$_Ld164:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EINOUTERROR
INIT_SYSUTILS_EINOUTERROR:
	.byte	15,11
	.ascii	"EInOutError"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EINOUTERROR
RTTI_SYSUTILS_EINOUTERROR:
	.byte	15,11
	.ascii	"EInOutError"
	.long	VMT_SYSUTILS_EINOUTERROR
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld166
_$SYSUTILS$_Ld166:
	.short	0
	.long	_$SYSUTILS$_Ld167
	.balign 4
.globl	_$SYSUTILS$_Ld167
_$SYSUTILS$_Ld167:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EHEAPMEMORYERROR
INIT_SYSUTILS_EHEAPMEMORYERROR:
	.byte	15,16
	.ascii	"EHeapMemoryError"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EHEAPMEMORYERROR
RTTI_SYSUTILS_EHEAPMEMORYERROR:
	.byte	15,16
	.ascii	"EHeapMemoryError"
	.long	VMT_SYSUTILS_EHEAPMEMORYERROR
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld169
_$SYSUTILS$_Ld169:
	.short	0
	.long	_$SYSUTILS$_Ld170
	.balign 4
.globl	_$SYSUTILS$_Ld170
_$SYSUTILS$_Ld170:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EEXTERNALEXCEPTION
INIT_SYSUTILS_EEXTERNALEXCEPTION:
	.byte	15,18
	.ascii	"EExternalException"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EEXTERNALEXCEPTION
RTTI_SYSUTILS_EEXTERNALEXCEPTION:
	.byte	15,18
	.ascii	"EExternalException"
	.long	VMT_SYSUTILS_EEXTERNALEXCEPTION
	.long	RTTI_SYSUTILS_EEXTERNAL
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld172
_$SYSUTILS$_Ld172:
	.short	0
	.long	_$SYSUTILS$_Ld173
	.balign 4
.globl	_$SYSUTILS$_Ld173
_$SYSUTILS$_Ld173:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EINVALIDPOINTER
INIT_SYSUTILS_EINVALIDPOINTER:
	.byte	15,15
	.ascii	"EInvalidPointer"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EINVALIDPOINTER
RTTI_SYSUTILS_EINVALIDPOINTER:
	.byte	15,15
	.ascii	"EInvalidPointer"
	.long	VMT_SYSUTILS_EINVALIDPOINTER
	.long	RTTI_SYSUTILS_EHEAPMEMORYERROR
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld175
_$SYSUTILS$_Ld175:
	.short	0
	.long	_$SYSUTILS$_Ld176
	.balign 4
.globl	_$SYSUTILS$_Ld176
_$SYSUTILS$_Ld176:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EOUTOFMEMORY
INIT_SYSUTILS_EOUTOFMEMORY:
	.byte	15,12
	.ascii	"EOutOfMemory"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EOUTOFMEMORY
RTTI_SYSUTILS_EOUTOFMEMORY:
	.byte	15,12
	.ascii	"EOutOfMemory"
	.long	VMT_SYSUTILS_EOUTOFMEMORY
	.long	RTTI_SYSUTILS_EHEAPMEMORYERROR
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld178
_$SYSUTILS$_Ld178:
	.short	0
	.long	_$SYSUTILS$_Ld179
	.balign 4
.globl	_$SYSUTILS$_Ld179
_$SYSUTILS$_Ld179:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EINVALIDCAST
INIT_SYSUTILS_EINVALIDCAST:
	.byte	15,12
	.ascii	"EInvalidCast"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EINVALIDCAST
RTTI_SYSUTILS_EINVALIDCAST:
	.byte	15,12
	.ascii	"EInvalidCast"
	.long	VMT_SYSUTILS_EINVALIDCAST
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld181
_$SYSUTILS$_Ld181:
	.short	0
	.long	_$SYSUTILS$_Ld182
	.balign 4
.globl	_$SYSUTILS$_Ld182
_$SYSUTILS$_Ld182:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EVARIANTERROR
INIT_SYSUTILS_EVARIANTERROR:
	.byte	15,13
	.ascii	"EVariantError"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EVARIANTERROR
RTTI_SYSUTILS_EVARIANTERROR:
	.byte	15,13
	.ascii	"EVariantError"
	.long	VMT_SYSUTILS_EVARIANTERROR
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld184
_$SYSUTILS$_Ld184:
	.short	0
	.long	_$SYSUTILS$_Ld185
	.balign 4
.globl	_$SYSUTILS$_Ld185
_$SYSUTILS$_Ld185:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EACCESSVIOLATION
INIT_SYSUTILS_EACCESSVIOLATION:
	.byte	15,16
	.ascii	"EAccessViolation"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EACCESSVIOLATION
RTTI_SYSUTILS_EACCESSVIOLATION:
	.byte	15,16
	.ascii	"EAccessViolation"
	.long	VMT_SYSUTILS_EACCESSVIOLATION
	.long	RTTI_SYSUTILS_EEXTERNAL
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld187
_$SYSUTILS$_Ld187:
	.short	0
	.long	_$SYSUTILS$_Ld188
	.balign 4
.globl	_$SYSUTILS$_Ld188
_$SYSUTILS$_Ld188:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EBUSERROR
INIT_SYSUTILS_EBUSERROR:
	.byte	15,9
	.ascii	"EBusError"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EBUSERROR
RTTI_SYSUTILS_EBUSERROR:
	.byte	15,9
	.ascii	"EBusError"
	.long	VMT_SYSUTILS_EBUSERROR
	.long	RTTI_SYSUTILS_EACCESSVIOLATION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld190
_$SYSUTILS$_Ld190:
	.short	0
	.long	_$SYSUTILS$_Ld191
	.balign 4
.globl	_$SYSUTILS$_Ld191
_$SYSUTILS$_Ld191:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EPRIVILEGE
INIT_SYSUTILS_EPRIVILEGE:
	.byte	15,10
	.ascii	"EPrivilege"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EPRIVILEGE
RTTI_SYSUTILS_EPRIVILEGE:
	.byte	15,10
	.ascii	"EPrivilege"
	.long	VMT_SYSUTILS_EPRIVILEGE
	.long	RTTI_SYSUTILS_EEXTERNAL
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld193
_$SYSUTILS$_Ld193:
	.short	0
	.long	_$SYSUTILS$_Ld194
	.balign 4
.globl	_$SYSUTILS$_Ld194
_$SYSUTILS$_Ld194:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_ESTACKOVERFLOW
INIT_SYSUTILS_ESTACKOVERFLOW:
	.byte	15,14
	.ascii	"EStackOverflow"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_ESTACKOVERFLOW
RTTI_SYSUTILS_ESTACKOVERFLOW:
	.byte	15,14
	.ascii	"EStackOverflow"
	.long	VMT_SYSUTILS_ESTACKOVERFLOW
	.long	RTTI_SYSUTILS_EEXTERNAL
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld196
_$SYSUTILS$_Ld196:
	.short	0
	.long	_$SYSUTILS$_Ld197
	.balign 4
.globl	_$SYSUTILS$_Ld197
_$SYSUTILS$_Ld197:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_ECONTROLC
INIT_SYSUTILS_ECONTROLC:
	.byte	15,9
	.ascii	"EControlC"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_ECONTROLC
RTTI_SYSUTILS_ECONTROLC:
	.byte	15,9
	.ascii	"EControlC"
	.long	VMT_SYSUTILS_ECONTROLC
	.long	RTTI_SYSUTILS_EEXTERNAL
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld199
_$SYSUTILS$_Ld199:
	.short	0
	.long	_$SYSUTILS$_Ld200
	.balign 4
.globl	_$SYSUTILS$_Ld200
_$SYSUTILS$_Ld200:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_ECONVERTERROR
INIT_SYSUTILS_ECONVERTERROR:
	.byte	15,13
	.ascii	"EConvertError"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_ECONVERTERROR
RTTI_SYSUTILS_ECONVERTERROR:
	.byte	15,13
	.ascii	"EConvertError"
	.long	VMT_SYSUTILS_ECONVERTERROR
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld202
_$SYSUTILS$_Ld202:
	.short	0
	.long	_$SYSUTILS$_Ld203
	.balign 4
.globl	_$SYSUTILS$_Ld203
_$SYSUTILS$_Ld203:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EFORMATERROR
INIT_SYSUTILS_EFORMATERROR:
	.byte	15,12
	.ascii	"EFormatError"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EFORMATERROR
RTTI_SYSUTILS_EFORMATERROR:
	.byte	15,12
	.ascii	"EFormatError"
	.long	VMT_SYSUTILS_EFORMATERROR
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld205
_$SYSUTILS$_Ld205:
	.short	0
	.long	_$SYSUTILS$_Ld206
	.balign 4
.globl	_$SYSUTILS$_Ld206
_$SYSUTILS$_Ld206:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EABORT
INIT_SYSUTILS_EABORT:
	.byte	15,6
	.ascii	"EAbort"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EABORT
RTTI_SYSUTILS_EABORT:
	.byte	15,6
	.ascii	"EAbort"
	.long	VMT_SYSUTILS_EABORT
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld208
_$SYSUTILS$_Ld208:
	.short	0
	.long	_$SYSUTILS$_Ld209
	.balign 4
.globl	_$SYSUTILS$_Ld209
_$SYSUTILS$_Ld209:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EABSTRACTERROR
INIT_SYSUTILS_EABSTRACTERROR:
	.byte	15,14
	.ascii	"EAbstractError"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EABSTRACTERROR
RTTI_SYSUTILS_EABSTRACTERROR:
	.byte	15,14
	.ascii	"EAbstractError"
	.long	VMT_SYSUTILS_EABSTRACTERROR
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld211
_$SYSUTILS$_Ld211:
	.short	0
	.long	_$SYSUTILS$_Ld212
	.balign 4
.globl	_$SYSUTILS$_Ld212
_$SYSUTILS$_Ld212:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EASSERTIONFAILED
INIT_SYSUTILS_EASSERTIONFAILED:
	.byte	15,16
	.ascii	"EAssertionFailed"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EASSERTIONFAILED
RTTI_SYSUTILS_EASSERTIONFAILED:
	.byte	15,16
	.ascii	"EAssertionFailed"
	.long	VMT_SYSUTILS_EASSERTIONFAILED
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld214
_$SYSUTILS$_Ld214:
	.short	0
	.long	_$SYSUTILS$_Ld215
	.balign 4
.globl	_$SYSUTILS$_Ld215
_$SYSUTILS$_Ld215:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EPROPREADONLY
INIT_SYSUTILS_EPROPREADONLY:
	.byte	15,13
	.ascii	"EPropReadOnly"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EPROPREADONLY
RTTI_SYSUTILS_EPROPREADONLY:
	.byte	15,13
	.ascii	"EPropReadOnly"
	.long	VMT_SYSUTILS_EPROPREADONLY
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld217
_$SYSUTILS$_Ld217:
	.short	0
	.long	_$SYSUTILS$_Ld218
	.balign 4
.globl	_$SYSUTILS$_Ld218
_$SYSUTILS$_Ld218:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EPROPWRITEONLY
INIT_SYSUTILS_EPROPWRITEONLY:
	.byte	15,14
	.ascii	"EPropWriteOnly"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EPROPWRITEONLY
RTTI_SYSUTILS_EPROPWRITEONLY:
	.byte	15,14
	.ascii	"EPropWriteOnly"
	.long	VMT_SYSUTILS_EPROPWRITEONLY
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld220
_$SYSUTILS$_Ld220:
	.short	0
	.long	_$SYSUTILS$_Ld221
	.balign 4
.globl	_$SYSUTILS$_Ld221
_$SYSUTILS$_Ld221:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EINTFCASTERROR
INIT_SYSUTILS_EINTFCASTERROR:
	.byte	15,14
	.ascii	"EIntfCastError"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EINTFCASTERROR
RTTI_SYSUTILS_EINTFCASTERROR:
	.byte	15,14
	.ascii	"EIntfCastError"
	.long	VMT_SYSUTILS_EINTFCASTERROR
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld223
_$SYSUTILS$_Ld223:
	.short	0
	.long	_$SYSUTILS$_Ld224
	.balign 4
.globl	_$SYSUTILS$_Ld224
_$SYSUTILS$_Ld224:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EINVALIDCONTAINER
INIT_SYSUTILS_EINVALIDCONTAINER:
	.byte	15,17
	.ascii	"EInvalidContainer"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EINVALIDCONTAINER
RTTI_SYSUTILS_EINVALIDCONTAINER:
	.byte	15,17
	.ascii	"EInvalidContainer"
	.long	VMT_SYSUTILS_EINVALIDCONTAINER
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld226
_$SYSUTILS$_Ld226:
	.short	0
	.long	_$SYSUTILS$_Ld227
	.balign 4
.globl	_$SYSUTILS$_Ld227
_$SYSUTILS$_Ld227:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EINVALIDINSERT
INIT_SYSUTILS_EINVALIDINSERT:
	.byte	15,14
	.ascii	"EInvalidInsert"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EINVALIDINSERT
RTTI_SYSUTILS_EINVALIDINSERT:
	.byte	15,14
	.ascii	"EInvalidInsert"
	.long	VMT_SYSUTILS_EINVALIDINSERT
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld229
_$SYSUTILS$_Ld229:
	.short	0
	.long	_$SYSUTILS$_Ld230
	.balign 4
.globl	_$SYSUTILS$_Ld230
_$SYSUTILS$_Ld230:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EPACKAGEERROR
INIT_SYSUTILS_EPACKAGEERROR:
	.byte	15,13
	.ascii	"EPackageError"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EPACKAGEERROR
RTTI_SYSUTILS_EPACKAGEERROR:
	.byte	15,13
	.ascii	"EPackageError"
	.long	VMT_SYSUTILS_EPACKAGEERROR
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld232
_$SYSUTILS$_Ld232:
	.short	0
	.long	_$SYSUTILS$_Ld233
	.balign 4
.globl	_$SYSUTILS$_Ld233
_$SYSUTILS$_Ld233:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EOSERROR
INIT_SYSUTILS_EOSERROR:
	.byte	15,8
	.ascii	"EOSError"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EOSERROR
RTTI_SYSUTILS_EOSERROR:
	.byte	15,8
	.ascii	"EOSError"
	.long	VMT_SYSUTILS_EOSERROR
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld235
_$SYSUTILS$_Ld235:
	.short	0
	.long	_$SYSUTILS$_Ld236
	.balign 4
.globl	_$SYSUTILS$_Ld236
_$SYSUTILS$_Ld236:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_ESAFECALLEXCEPTION
INIT_SYSUTILS_ESAFECALLEXCEPTION:
	.byte	15,18
	.ascii	"ESafecallException"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_ESAFECALLEXCEPTION
RTTI_SYSUTILS_ESAFECALLEXCEPTION:
	.byte	15,18
	.ascii	"ESafecallException"
	.long	VMT_SYSUTILS_ESAFECALLEXCEPTION
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld238
_$SYSUTILS$_Ld238:
	.short	0
	.long	_$SYSUTILS$_Ld239
	.balign 4
.globl	_$SYSUTILS$_Ld239
_$SYSUTILS$_Ld239:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_ENOTHREADSUPPORT
INIT_SYSUTILS_ENOTHREADSUPPORT:
	.byte	15,16
	.ascii	"ENoThreadSupport"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_ENOTHREADSUPPORT
RTTI_SYSUTILS_ENOTHREADSUPPORT:
	.byte	15,16
	.ascii	"ENoThreadSupport"
	.long	VMT_SYSUTILS_ENOTHREADSUPPORT
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld241
_$SYSUTILS$_Ld241:
	.short	0
	.long	_$SYSUTILS$_Ld242
	.balign 4
.globl	_$SYSUTILS$_Ld242
_$SYSUTILS$_Ld242:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_ENOWIDESTRINGSUPPORT
INIT_SYSUTILS_ENOWIDESTRINGSUPPORT:
	.byte	15,20
	.ascii	"ENoWideStringSupport"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_ENOWIDESTRINGSUPPORT
RTTI_SYSUTILS_ENOWIDESTRINGSUPPORT:
	.byte	15,20
	.ascii	"ENoWideStringSupport"
	.long	VMT_SYSUTILS_ENOWIDESTRINGSUPPORT
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld244
_$SYSUTILS$_Ld244:
	.short	0
	.long	_$SYSUTILS$_Ld245
	.balign 4
.globl	_$SYSUTILS$_Ld245
_$SYSUTILS$_Ld245:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_ENOTIMPLEMENTED
INIT_SYSUTILS_ENOTIMPLEMENTED:
	.byte	15,15
	.ascii	"ENotImplemented"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_ENOTIMPLEMENTED
RTTI_SYSUTILS_ENOTIMPLEMENTED:
	.byte	15,15
	.ascii	"ENotImplemented"
	.long	VMT_SYSUTILS_ENOTIMPLEMENTED
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld247
_$SYSUTILS$_Ld247:
	.short	0
	.long	_$SYSUTILS$_Ld248
	.balign 4
.globl	_$SYSUTILS$_Ld248
_$SYSUTILS$_Ld248:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EARGUMENTEXCEPTION
INIT_SYSUTILS_EARGUMENTEXCEPTION:
	.byte	15,18
	.ascii	"EArgumentException"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EARGUMENTEXCEPTION
RTTI_SYSUTILS_EARGUMENTEXCEPTION:
	.byte	15,18
	.ascii	"EArgumentException"
	.long	VMT_SYSUTILS_EARGUMENTEXCEPTION
	.long	RTTI_SYSUTILS_EXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld250
_$SYSUTILS$_Ld250:
	.short	0
	.long	_$SYSUTILS$_Ld251
	.balign 4
.globl	_$SYSUTILS$_Ld251
_$SYSUTILS$_Ld251:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_EARGUMENTOUTOFRANGEEXCEPTION
INIT_SYSUTILS_EARGUMENTOUTOFRANGEEXCEPTION:
	.byte	15,28
	.ascii	"EArgumentOutOfRangeException"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_EARGUMENTOUTOFRANGEEXCEPTION
RTTI_SYSUTILS_EARGUMENTOUTOFRANGEEXCEPTION:
	.byte	15,28
	.ascii	"EArgumentOutOfRangeException"
	.long	VMT_SYSUTILS_EARGUMENTOUTOFRANGEEXCEPTION
	.long	RTTI_SYSUTILS_EARGUMENTEXCEPTION
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF1785
INIT_SYSUTILS_DEF1785:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_TBEEPHANDLER
INIT_SYSUTILS_TBEEPHANDLER:
	.byte	23,12
	.ascii	"TBeepHandler"

.data
	.balign 4
.globl	RTTI_SYSUTILS_TBEEPHANDLER
RTTI_SYSUTILS_TBEEPHANDLER:
	.byte	23,12
	.ascii	"TBeepHandler"

.data
	.balign 4
.globl	INIT_SYSUTILS_TCREATEGUIDFUNC
INIT_SYSUTILS_TCREATEGUIDFUNC:
	.byte	23,15
	.ascii	"TCreateGUIDFunc"

.data
	.balign 4
.globl	RTTI_SYSUTILS_TCREATEGUIDFUNC
RTTI_SYSUTILS_TCREATEGUIDFUNC:
	.byte	23,15
	.ascii	"TCreateGUIDFunc"

.data
	.balign 4
.globl	INIT_SYSUTILS_TTERMINATEPROC
INIT_SYSUTILS_TTERMINATEPROC:
	.byte	23,14
	.ascii	"TTerminateProc"

.data
	.balign 4
.globl	RTTI_SYSUTILS_TTERMINATEPROC
RTTI_SYSUTILS_TTERMINATEPROC:
	.byte	23,14
	.ascii	"TTerminateProc"

.data
	.balign 4
.globl	INIT_SYSUTILS_FILEREC
INIT_SYSUTILS_FILEREC:
	.byte	13,7
	.ascii	"FileRec"
	.long	332,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF445
RTTI_SYSUTILS_DEF445:
	.byte	12
	.ascii	"\000"
	.long	1,32
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF446
RTTI_SYSUTILS_DEF446:
	.byte	12
	.ascii	"\000"
	.long	1,32
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF447
RTTI_SYSUTILS_DEF447:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_SYSUTILS_FILEREC
RTTI_SYSUTILS_FILEREC:
	.byte	13,7
	.ascii	"FileRec"
	.long	332,6
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4
	.long	RTTI_SYSTEM_LONGINT
	.long	8
	.long	RTTI_SYSUTILS_DEF445
	.long	12
	.long	RTTI_SYSUTILS_DEF446
	.long	44
	.long	RTTI_SYSUTILS_DEF447
	.long	76

.data
	.balign 4
.globl	INIT_SYSUTILS_TLINEENDSTR
INIT_SYSUTILS_TLINEENDSTR:
	.byte	7,11
	.ascii	"TLineEndStr"
	.byte	3

.data
	.balign 4
.globl	RTTI_SYSUTILS_TLINEENDSTR
RTTI_SYSUTILS_TLINEENDSTR:
	.byte	7,11
	.ascii	"TLineEndStr"
	.byte	3

.data
	.balign 4
.globl	INIT_SYSUTILS_TEXTBUF
INIT_SYSUTILS_TEXTBUF:
	.byte	12
	.ascii	"\007TextBuf"
	.long	1,256
	.long	INIT_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_SYSUTILS_TEXTBUF
RTTI_SYSUTILS_TEXTBUF:
	.byte	12
	.ascii	"\007TextBuf"
	.long	1,256
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	INIT_SYSUTILS_TEXTREC
INIT_SYSUTILS_TEXTREC:
	.byte	13,7
	.ascii	"TextRec"
	.long	592,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF451
RTTI_SYSUTILS_DEF451:
	.byte	0
	.ascii	"\000"

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF452
RTTI_SYSUTILS_DEF452:
	.byte	12
	.ascii	"\000"
	.long	1,32
	.long	RTTI_SYSTEM_BYTE
	.long	17

.data
	.balign 4
.globl	RTTI_SYSUTILS_DEF453
RTTI_SYSUTILS_DEF453:
	.byte	12
	.ascii	"\000"
	.long	1,256
	.long	RTTI_SYSTEM_CHAR
	.long	-1

.data
	.balign 4
.globl	RTTI_SYSUTILS_TEXTREC
RTTI_SYSUTILS_TEXTREC:
	.byte	13,7
	.ascii	"TextRec"
	.long	592,15
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_LONGINT
	.long	4
	.long	RTTI_SYSTEM_LONGINT
	.long	8
	.long	RTTI_SYSTEM_LONGINT
	.long	12
	.long	RTTI_SYSTEM_LONGINT
	.long	16
	.long	RTTI_SYSTEM_LONGINT
	.long	20
	.long	RTTI_SYSUTILS_DEF451
	.long	24
	.long	RTTI_SYSTEM_POINTER
	.long	28
	.long	RTTI_SYSTEM_POINTER
	.long	32
	.long	RTTI_SYSTEM_POINTER
	.long	36
	.long	RTTI_SYSTEM_POINTER
	.long	40
	.long	RTTI_SYSUTILS_DEF452
	.long	44
	.long	RTTI_SYSUTILS_DEF453
	.long	76
	.long	RTTI_SYSUTILS_TLINEENDSTR
	.long	332
	.long	RTTI_SYSUTILS_TEXTBUF
	.long	336

.data
	.balign 4
.globl	INIT_SYSUTILS_TUNICODECHARARRAY
INIT_SYSUTILS_TUNICODECHARARRAY:
	.byte	21
	.ascii	"\021TUnicodeCharArray"
	.long	2
	.long	INIT_SYSTEM_WIDECHAR
	.long	-1,0
	.byte	8
	.ascii	"sysutils"

.data
	.balign 4
.globl	RTTI_SYSUTILS_TUNICODECHARARRAY
RTTI_SYSUTILS_TUNICODECHARARRAY:
	.byte	21
	.ascii	"\021TUnicodeCharArray"
	.long	2
	.long	RTTI_SYSTEM_WIDECHAR
	.long	-1,0
	.byte	8
	.ascii	"sysutils"

.data
	.balign 4
.globl	INIT_SYSUTILS_TFILENAMECASEMATCH
INIT_SYSUTILS_TFILENAMECASEMATCH:
	.byte	3,18
	.ascii	"TFilenameCaseMatch"
	.byte	5
	.long	0,3,0
	.byte	6
	.ascii	"mkNone"
	.byte	12
	.ascii	"mkExactMatch"
	.byte	13
	.ascii	"mkSingleMatch"
	.byte	11
	.ascii	"mkAmbiguous"
	.byte	8
	.ascii	"sysutils"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSUTILS_TFILENAMECASEMATCH
RTTI_SYSUTILS_TFILENAMECASEMATCH:
	.byte	3,18
	.ascii	"TFilenameCaseMatch"
	.byte	5
	.long	0,3,0
	.byte	6
	.ascii	"mkNone"
	.byte	12
	.ascii	"mkExactMatch"
	.byte	13
	.ascii	"mkSingleMatch"
	.byte	11
	.ascii	"mkAmbiguous"
	.byte	8
	.ascii	"sysutils"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSUTILS_TFILENAMECASEMATCH_s2o
RTTI_SYSUTILS_TFILENAMECASEMATCH_s2o:
	.long	4,3
	.long	RTTI_SYSUTILS_TFILENAMECASEMATCH+67
	.long	1
	.long	RTTI_SYSUTILS_TFILENAMECASEMATCH+40
	.long	0
	.long	RTTI_SYSUTILS_TFILENAMECASEMATCH+33
	.long	2
	.long	RTTI_SYSUTILS_TFILENAMECASEMATCH+53

.data
	.balign 4
.globl	RTTI_SYSUTILS_TFILENAMECASEMATCH_o2s
RTTI_SYSUTILS_TFILENAMECASEMATCH_o2s:
	.long	0
	.long	RTTI_SYSUTILS_TFILENAMECASEMATCH+33
	.long	RTTI_SYSUTILS_TFILENAMECASEMATCH+40
	.long	RTTI_SYSUTILS_TFILENAMECASEMATCH+53
	.long	RTTI_SYSUTILS_TFILENAMECASEMATCH+67

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF692
INIT_SYSUTILS_DEF692:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF702
INIT_SYSUTILS_DEF702:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF561
INIT_SYSUTILS_DEF561:
	.byte	12
	.ascii	"\012AnsiString"
	.long	4,0
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_TSEARCHREC
INIT_SYSUTILS_TSEARCHREC:
	.byte	13,10
	.ascii	"TSearchRec"
	.long	32,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	20

.data
	.balign 4
.globl	RTTI_SYSUTILS_TSEARCHREC
RTTI_SYSUTILS_TSEARCHREC:
	.byte	13,10
	.ascii	"TSearchRec"
	.long	32,6
	.long	RTTI_SYSTEM_LONGINT
	.long	0
	.long	RTTI_SYSTEM_INT64
	.long	8
	.long	RTTI_SYSTEM_LONGINT
	.long	16
	.long	RTTI_SYSTEM_ANSISTRING
	.long	20
	.long	RTTI_SYSTEM_LONGINT
	.long	24
	.long	RTTI_SYSTEM_LONGINT
	.long	28

.data
	.balign 4
.globl	INIT_SYSUTILS_TFILESEARCHOPTION
INIT_SYSUTILS_TFILESEARCHOPTION:
	.byte	3,17
	.ascii	"TFileSearchOption"
	.byte	5
	.long	0,1,0
	.byte	21
	.ascii	"sfoImplicitCurrentDir"
	.byte	14
	.ascii	"sfoStripQuotes"
	.byte	8
	.ascii	"sysutils"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSUTILS_TFILESEARCHOPTION
RTTI_SYSUTILS_TFILESEARCHOPTION:
	.byte	3,17
	.ascii	"TFileSearchOption"
	.byte	5
	.long	0,1,0
	.byte	21
	.ascii	"sfoImplicitCurrentDir"
	.byte	14
	.ascii	"sfoStripQuotes"
	.byte	8
	.ascii	"sysutils"
	.byte	0

.data
	.balign 4
.globl	RTTI_SYSUTILS_TFILESEARCHOPTION_s2o
RTTI_SYSUTILS_TFILESEARCHOPTION_s2o:
	.long	2,0
	.long	RTTI_SYSUTILS_TFILESEARCHOPTION+32
	.long	1
	.long	RTTI_SYSUTILS_TFILESEARCHOPTION+54

.data
	.balign 4
.globl	RTTI_SYSUTILS_TFILESEARCHOPTION_o2s
RTTI_SYSUTILS_TFILESEARCHOPTION_o2s:
	.long	0
	.long	RTTI_SYSUTILS_TFILESEARCHOPTION+32
	.long	RTTI_SYSUTILS_TFILESEARCHOPTION+54

.data
	.balign 4
.globl	INIT_SYSUTILS_TFILESEARCHOPTIONS
INIT_SYSUTILS_TFILESEARCHOPTIONS:
	.byte	5,18
	.ascii	"TFileSearchOptions"
	.byte	5
	.long	INIT_SYSUTILS_TFILESEARCHOPTION

.data
	.balign 4
.globl	RTTI_SYSUTILS_TFILESEARCHOPTIONS
RTTI_SYSUTILS_TFILESEARCHOPTIONS:
	.byte	5,18
	.ascii	"TFileSearchOptions"
	.byte	5
	.long	RTTI_SYSUTILS_TFILESEARCHOPTION

.data
	.balign 4
.globl	INIT_SYSUTILS_IREADWRITESYNC
INIT_SYSUTILS_IREADWRITESYNC:
	.byte	14,14
	.ascii	"IReadWriteSync"
	.long	4

.data
	.balign 4
.globl	RTTI_SYSUTILS_IREADWRITESYNC
RTTI_SYSUTILS_IREADWRITESYNC:
	.byte	14,14
	.ascii	"IReadWriteSync"
	.long	RTTI_SYSTEM_IUNKNOWN
	.byte	9
	.long	2064682066
	.short	7567,19675
	.byte	156,223,87,224,113,25,61,63,8
	.ascii	"sysutils"
	.byte	38
	.ascii	"{7B108C52-1D8F-4CDB-9CDF-57E071193D3F}"

.data
	.balign 4
.globl	_$SYSUTILS$_Ld256
_$SYSUTILS$_Ld256:
	.short	0
	.long	_$SYSUTILS$_Ld257
	.balign 4
.globl	_$SYSUTILS$_Ld257
_$SYSUTILS$_Ld257:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_TSIMPLERWSYNC
INIT_SYSUTILS_TSIMPLERWSYNC:
	.byte	15,13
	.ascii	"TSimpleRWSync"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_TSIMPLERWSYNC
RTTI_SYSUTILS_TSIMPLERWSYNC:
	.byte	15,13
	.ascii	"TSimpleRWSync"
	.long	VMT_SYSUTILS_TSIMPLERWSYNC
	.long	RTTI_SYSTEM_TINTERFACEDOBJECT
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	_$SYSUTILS$_Ld262
_$SYSUTILS$_Ld262:
	.short	0
	.long	_$SYSUTILS$_Ld263
	.balign 4
.globl	_$SYSUTILS$_Ld263
_$SYSUTILS$_Ld263:
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER
INIT_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER:
	.byte	15,36
	.ascii	"TMultiReadExclusiveWriteSynchronizer"
	.long	4,0

.data
	.balign 4
.globl	RTTI_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER
RTTI_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER:
	.byte	15,36
	.ascii	"TMultiReadExclusiveWriteSynchronizer"
	.long	VMT_SYSUTILS_TMULTIREADEXCLUSIVEWRITESYNCHRONIZER
	.long	RTTI_SYSTEM_TINTERFACEDOBJECT
	.short	0
	.byte	8
	.ascii	"sysutils"
	.short	0

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF1632
INIT_SYSUTILS_DEF1632:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF682
INIT_SYSUTILS_DEF682:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF684
INIT_SYSUTILS_DEF684:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF851
INIT_SYSUTILS_DEF851:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF853
INIT_SYSUTILS_DEF853:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF855
INIT_SYSUTILS_DEF855:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF912
INIT_SYSUTILS_DEF912:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF913
INIT_SYSUTILS_DEF913:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF914
INIT_SYSUTILS_DEF914:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF915
INIT_SYSUTILS_DEF915:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF916
INIT_SYSUTILS_DEF916:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF917
INIT_SYSUTILS_DEF917:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF918
INIT_SYSUTILS_DEF918:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF919
INIT_SYSUTILS_DEF919:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF920
INIT_SYSUTILS_DEF920:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF921
INIT_SYSUTILS_DEF921:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF922
INIT_SYSUTILS_DEF922:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF923
INIT_SYSUTILS_DEF923:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF924
INIT_SYSUTILS_DEF924:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF925
INIT_SYSUTILS_DEF925:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF926
INIT_SYSUTILS_DEF926:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF927
INIT_SYSUTILS_DEF927:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF928
INIT_SYSUTILS_DEF928:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF929
INIT_SYSUTILS_DEF929:
	.byte	12
	.ascii	"\000"
	.long	4,5
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF1252
INIT_SYSUTILS_DEF1252:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF1591
INIT_SYSUTILS_DEF1591:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF1728
INIT_SYSUTILS_DEF1728:
	.byte	12
	.ascii	"\000"
	.long	4,3
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	INIT_SYSUTILS_DEF1768
INIT_SYSUTILS_DEF1768:
	.byte	12
	.ascii	"\000"
	.long	4,3
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
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end

