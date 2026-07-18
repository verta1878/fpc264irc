# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JCMASTER_INITIAL_SETUP$J_COMPRESS_PTR
_JCMASTER_INITIAL_SETUP$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$0,%eax
	jbe	Lj5
	jmp	Lj9
Lj9:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	$0,%eax
	jbe	Lj5
	jmp	Lj8
Lj8:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$0,%eax
	jle	Lj5
	jmp	Lj7
Lj7:
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	$0,%eax
	jle	Lj5
	jmp	Lj6
Lj5:
	movl	-4(%ebp),%eax
	movb	$33,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj6:
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	cmpl	$65500,%eax
	jg	Lj14
	jmp	Lj16
Lj16:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	$65500,%eax
	jg	Lj14
	jmp	Lj15
Lj14:
	movl	-4(%ebp),%eax
	movl	$65500,%ecx
	movb	$42,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj15:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	28(%eax),%ecx
	movl	36(%edx),%eax
	imull	%eax,%ecx
	movl	%ecx,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jne	Lj27
	jmp	Lj28
Lj27:
	movl	-4(%ebp),%eax
	movb	$71,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj28:
	movl	-4(%ebp),%eax
	movl	52(%eax),%eax
	cmpl	$8,%eax
	jne	Lj33
	jmp	Lj34
Lj33:
	movl	-4(%ebp),%eax
	movl	52(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$15,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj34:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$10,%eax
	jg	Lj41
	jmp	Lj42
Lj41:
	movl	$10,(%esp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$26,%dl
	call	L_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub
Lj42:
	movl	-4(%ebp),%eax
	movl	$1,212(%eax)
	movl	-4(%ebp),%eax
	movl	$1,216(%eax)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj58
	decl	-8(%ebp)
	.align 2
Lj59:
	incl	-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$0,%eax
	jle	Lj60
	jmp	Lj64
Lj64:
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$4,%eax
	jg	Lj60
	jmp	Lj63
Lj63:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$0,%eax
	jle	Lj60
	jmp	Lj62
Lj62:
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	cmpl	$4,%eax
	jg	Lj60
	jmp	Lj61
Lj60:
	movl	-4(%ebp),%eax
	movb	$18,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj61:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	212(%eax),%eax
	cmpl	8(%edx),%eax
	jg	Lj69
	jmp	Lj70
Lj69:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	212(%eax),%eax
	movl	%eax,212(%edx)
	jmp	Lj73
Lj70:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,212(%edx)
Lj73:
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	216(%eax),%eax
	cmpl	12(%edx),%eax
	jg	Lj76
	jmp	Lj77
Lj76:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	216(%eax),%eax
	movl	%eax,216(%edx)
	jmp	Lj80
Lj77:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,216(%edx)
Lj80:
	addl	$84,-12(%ebp)
	cmpl	-8(%ebp),%ebx
	jg	Lj59
Lj58:
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj86
	decl	-8(%ebp)
	.align 2
Lj87:
	incl	-8(%ebp)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,4(%eax)
	movl	-12(%ebp),%eax
	movl	$8,36(%eax)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	28(%eax),%eax
	movl	8(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	movl	212(%edx),%edx
	shll	$3,%edx
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,28(%edx)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	32(%eax),%eax
	movl	12(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	movl	216(%edx),%edx
	shll	$3,%edx
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,32(%edx)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	28(%eax),%eax
	movl	8(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	movl	212(%edx),%edx
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,40(%edx)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	32(%eax),%eax
	movl	12(%edx),%edx
	imull	%edx,%eax
	movl	-4(%ebp),%edx
	movl	216(%edx),%edx
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-12(%ebp),%edx
	movl	%eax,44(%edx)
	movl	-12(%ebp),%eax
	movb	$1,48(%eax)
	addl	$84,-12(%ebp)
	cmpl	-8(%ebp),%ebx
	jg	Lj87
Lj86:
	movl	-4(%ebp),%eax
	movl	216(%eax),%edx
	shll	$3,%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,220(%edx)
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCMASTER_VALIDATE_SCRIPT$J_COMPRESS_PTR
_JCMASTER_VALIDATE_SCRIPT$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$2648,%esp
	movl	%ebx,-2636(%ebp)
	movl	%esi,-2632(%ebp)
	movl	%edi,-2628(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	164(%eax),%eax
	cmpl	$0,%eax
	jle	Lj126
	jmp	Lj127
Lj126:
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	movb	$19,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj127:
	movl	-4(%ebp),%eax
	movl	168(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	testl	%eax,%eax
	jne	Lj136
	jmp	Lj138
Lj138:
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	$63,%eax
	jne	Lj136
	jmp	Lj137
Lj136:
	movl	-4(%ebp),%eax
	movb	$1,208(%eax)
	leal	-2624(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj144
	decl	-20(%ebp)
	.align 2
Lj145:
	incl	-20(%ebp)
	movl	$0,-24(%ebp)
	decl	-24(%ebp)
	.align 2
Lj148:
	incl	-24(%ebp)
	movl	-60(%ebp),%edx
	movl	$-1,(%edx)
	addl	$4,-60(%ebp)
	cmpl	$63,-24(%ebp)
	jl	Lj148
	cmpl	-20(%ebp),%eax
	jg	Lj145
Lj144:
	jmp	Lj151
Lj137:
	movl	-4(%ebp),%eax
	movb	$0,208(%eax)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	decl	%eax
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%eax
	jl	Lj155
	decl	-20(%ebp)
	.align 2
Lj156:
	incl	-20(%ebp)
	movl	-20(%ebp),%edx
	movb	$0,-54(%ebp,%edx,1)
	cmpl	-20(%ebp),%eax
	jg	Lj156
Lj155:
Lj151:
	movl	-4(%ebp),%eax
	movl	164(%eax),%edi
	movl	$1,-12(%ebp)
	cmpl	-12(%ebp),%edi
	jl	Lj160
	decl	-12(%ebp)
	.align 2
Lj161:
	incl	-12(%ebp)
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$0,%eax
	jle	Lj164
	jmp	Lj166
Lj166:
	movl	-16(%ebp),%eax
	cmpl	$4,%eax
	jg	Lj164
	jmp	Lj165
Lj164:
	movl	$4,(%esp)
	movl	-16(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$26,%dl
	call	L_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub
Lj165:
	movl	-16(%ebp),%eax
	decl	%eax
	movl	%eax,%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj176
	decl	-20(%ebp)
	.align 2
Lj177:
	incl	-20(%ebp)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	4(%edx,%eax,4),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj180
	jmp	Lj182
Lj182:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	-28(%ebp),%eax
	jle	Lj180
	jmp	Lj181
Lj180:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$19,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj181:
	movl	-20(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj191
	jmp	Lj190
Lj191:
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	decl	%eax
	movl	4(%edx,%eax,4),%eax
	cmpl	-28(%ebp),%eax
	jge	Lj189
	jmp	Lj190
Lj189:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$19,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj190:
	cmpl	-20(%ebp),%ebx
	jg	Lj177
Lj176:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-32(%ebp)
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-36(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-40(%ebp)
	movl	-8(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	-4(%ebp),%eax
	cmpb	$0,208(%eax)
	jne	Lj206
	jmp	Lj207
Lj206:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj208
	jmp	Lj216
Lj216:
	movl	-32(%ebp),%eax
	cmpl	$64,%eax
	jge	Lj208
	jmp	Lj215
Lj215:
	movl	-36(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jl	Lj208
	jmp	Lj214
Lj214:
	movl	-36(%ebp),%eax
	cmpl	$64,%eax
	jge	Lj208
	jmp	Lj213
Lj213:
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj208
	jmp	Lj212
Lj212:
	movl	-40(%ebp),%eax
	cmpl	$10,%eax
	jg	Lj208
	jmp	Lj211
Lj211:
	movl	-44(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj208
	jmp	Lj210
Lj210:
	movl	-44(%ebp),%eax
	cmpl	$10,%eax
	jg	Lj208
	jmp	Lj209
Lj208:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$17,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj209:
	movl	-32(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj223
	jmp	Lj231
Lj231:
	movl	-32(%ebp),%eax
	cmpl	$64,%eax
	jge	Lj223
	jmp	Lj230
Lj230:
	movl	-36(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jl	Lj223
	jmp	Lj229
Lj229:
	movl	-36(%ebp),%eax
	cmpl	$64,%eax
	jge	Lj223
	jmp	Lj228
Lj228:
	movl	-40(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj223
	jmp	Lj227
Lj227:
	movl	-40(%ebp),%eax
	cmpl	$10,%eax
	jg	Lj223
	jmp	Lj226
Lj226:
	movl	-44(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj223
	jmp	Lj225
Lj225:
	movl	-44(%ebp),%eax
	cmpl	$10,%eax
	jg	Lj223
	jmp	Lj224
Lj223:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$17,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj224:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj238
	jmp	Lj239
Lj238:
	movl	-36(%ebp),%eax
	testl	%eax,%eax
	jne	Lj240
	jmp	Lj241
Lj240:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$17,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj241:
	jmp	Lj248
Lj239:
	movl	-16(%ebp),%eax
	cmpl	$1,%eax
	jne	Lj249
	jmp	Lj250
Lj249:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$17,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj250:
Lj248:
	movl	-16(%ebp),%eax
	decl	%eax
	movl	%eax,%esi
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%esi
	jl	Lj258
	decl	-20(%ebp)
	.align 2
Lj259:
	incl	-20(%ebp)
	movl	-8(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	4(%eax,%edx,4),%eax
	shll	$8,%eax
	leal	-2624(%ebp,%eax),%eax
	movl	%eax,-64(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj264
	jmp	Lj263
Lj264:
	movl	-64(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$0,%eax
	jl	Lj262
	jmp	Lj263
Lj262:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$17,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj263:
	movl	-36(%ebp),%ebx
	movl	-32(%ebp),%eax
	movl	%eax,-24(%ebp)
	cmpl	-24(%ebp),%ebx
	jl	Lj272
	decl	-24(%ebp)
	.align 2
Lj273:
	incl	-24(%ebp)
	movl	-64(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	cmpl	$0,%eax
	jl	Lj274
	jmp	Lj275
Lj274:
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	jne	Lj276
	jmp	Lj277
Lj276:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$17,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj277:
	jmp	Lj284
Lj275:
	movl	-64(%ebp),%eax
	movl	-24(%ebp),%edx
	movl	(%eax,%edx,4),%eax
	cmpl	-40(%ebp),%eax
	jne	Lj285
	jmp	Lj287
Lj287:
	movl	-40(%ebp),%eax
	decl	%eax
	cmpl	-44(%ebp),%eax
	jne	Lj285
	jmp	Lj286
Lj285:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$17,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj286:
Lj284:
	movl	-64(%ebp),%edx
	movl	-24(%ebp),%ecx
	movl	-44(%ebp),%eax
	movl	%eax,(%edx,%ecx,4)
	cmpl	-24(%ebp),%ebx
	jg	Lj273
Lj272:
	cmpl	-20(%ebp),%esi
	jg	Lj259
Lj258:
	jmp	Lj296
Lj207:
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj297
	jmp	Lj301
Lj301:
	movl	-36(%ebp),%eax
	cmpl	$63,%eax
	jne	Lj297
	jmp	Lj300
Lj300:
	movl	-40(%ebp),%eax
	testl	%eax,%eax
	jne	Lj297
	jmp	Lj299
Lj299:
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	jne	Lj297
	jmp	Lj298
Lj297:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$17,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj298:
	movl	-16(%ebp),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj309
	decl	-20(%ebp)
	.align 2
Lj310:
	incl	-20(%ebp)
	movl	-8(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	4(%edx,%eax,4),%eax
	movl	%eax,-28(%ebp)
	movl	-28(%ebp),%eax
	cmpb	$0,-54(%ebp,%eax,1)
	jne	Lj313
	jmp	Lj314
Lj313:
	movl	-12(%ebp),%ecx
	movl	-4(%ebp),%eax
	movb	$19,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj314:
	movl	-28(%ebp),%eax
	movb	$1,-54(%ebp,%eax,1)
	cmpl	-20(%ebp),%ebx
	jg	Lj310
Lj309:
Lj296:
	addl	$36,-8(%ebp)
	cmpl	-12(%ebp),%edi
	jg	Lj161
Lj160:
	movl	-4(%ebp),%eax
	cmpb	$0,208(%eax)
	jne	Lj323
	jmp	Lj324
Lj323:
	movl	-4(%ebp),%eax
	movl	56(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj326
	decl	-20(%ebp)
	.align 2
Lj327:
	incl	-20(%ebp)
	movl	-20(%ebp),%eax
	shll	$8,%eax
	movl	-2624(%ebp,%eax),%eax
	cmpl	$0,%eax
	jl	Lj328
	jmp	Lj329
Lj328:
	movl	-4(%ebp),%eax
	movb	$46,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj329:
	cmpl	-20(%ebp),%ebx
	jg	Lj327
Lj326:
	jmp	Lj334
Lj324:
	movl	-4(%ebp),%eax
	movl	56(%eax),%ebx
	decl	%ebx
	movl	$0,-20(%ebp)
	cmpl	-20(%ebp),%ebx
	jl	Lj336
	decl	-20(%ebp)
	.align 2
Lj337:
	incl	-20(%ebp)
	movl	-20(%ebp),%eax
	movb	-54(%ebp,%eax,1),%al
	testb	%al,%al
	je	Lj338
	jmp	Lj339
Lj338:
	movl	-4(%ebp),%eax
	movb	$46,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj339:
	cmpl	-20(%ebp),%ebx
	jg	Lj337
Lj336:
Lj334:
	movl	-2636(%ebp),%ebx
	movl	-2632(%ebp),%esi
	movl	-2628(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_JCMASTER_SELECT_SCAN_PARAMETERS$J_COMPRESS_PTR
_JCMASTER_SELECT_SCAN_PARAMETERS$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	168(%eax),%eax
	testl	%eax,%eax
	jne	Lj346
	jmp	Lj347
Lj346:
	movl	-4(%ebp),%eax
	movl	312(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	168(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	imull	$36,%eax
	addl	%eax,-12(%ebp)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,224(%edx)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj357
	decl	-16(%ebp)
	.align 2
Lj358:
	incl	-16(%ebp)
	movl	-20(%ebp),%ebx
	movl	-12(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	4(%ecx,%edx,4),%edx
	imull	$84,%edx
	leal	(%ebx,%edx),%ebx
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%edx
	movl	%ebx,228(%ecx,%edx,4)
	cmpl	-16(%ebp),%eax
	jg	Lj358
Lj357:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,296(%edx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,300(%edx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,304(%edx)
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,308(%edx)
	jmp	Lj369
Lj347:
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	cmpl	$4,%eax
	jg	Lj370
	jmp	Lj371
Lj370:
	movl	$4,(%esp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$26,%dl
	call	L_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub
Lj371:
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,224(%edx)
	movl	-4(%ebp),%eax
	movl	64(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	56(%eax),%eax
	decl	%eax
	movl	$0,-16(%ebp)
	cmpl	-16(%ebp),%eax
	jl	Lj385
	decl	-16(%ebp)
	.align 2
Lj386:
	incl	-16(%ebp)
	movl	-20(%ebp),%ecx
	movl	-16(%ebp),%edx
	imull	$84,%edx
	leal	(%ecx,%edx),%edx
	movl	-4(%ebp),%ecx
	movl	-16(%ebp),%ebx
	movl	%edx,228(%ecx,%ebx,4)
	cmpl	-16(%ebp),%eax
	jg	Lj386
Lj385:
	movl	-4(%ebp),%eax
	movl	$0,296(%eax)
	movl	-4(%ebp),%eax
	movl	$63,300(%eax)
	movl	-4(%ebp),%eax
	movl	$0,304(%eax)
	movl	-4(%ebp),%eax
	movl	$0,308(%eax)
Lj369:
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCMASTER_PER_SCAN_SETUP$J_COMPRESS_PTR
_JCMASTER_PER_SCAN_SETUP$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%ebx,-28(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	224(%eax),%eax
	cmpl	$1,%eax
	je	Lj399
	jmp	Lj400
Lj399:
	movl	-4(%ebp),%eax
	movl	228(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,244(%edx)
	movl	-4(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,248(%edx)
	movl	-20(%ebp),%eax
	movl	$1,52(%eax)
	movl	-20(%ebp),%eax
	movl	$1,56(%eax)
	movl	-20(%ebp),%eax
	movl	$1,60(%eax)
	movl	-20(%ebp),%eax
	movl	$8,64(%eax)
	movl	-20(%ebp),%eax
	movl	$1,68(%eax)
	movl	-20(%ebp),%eax
	movl	32(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	12(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	call	Lfpc_mod_int64$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj423
	jmp	Lj424
Lj423:
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-16(%ebp)
Lj424:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,72(%edx)
	movl	-4(%ebp),%eax
	movl	$1,252(%eax)
	movl	-4(%ebp),%eax
	movl	$0,256(%eax)
	jmp	Lj433
Lj400:
	movl	-4(%ebp),%eax
	movl	224(%eax),%eax
	cmpl	$0,%eax
	jle	Lj434
	jmp	Lj436
Lj436:
	movl	-4(%ebp),%eax
	movl	224(%eax),%eax
	cmpl	$4,%eax
	jg	Lj434
	jmp	Lj435
Lj434:
	movl	$4,(%esp)
	movl	-4(%ebp),%eax
	movl	224(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$26,%dl
	call	L_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub
Lj435:
	movl	-4(%ebp),%eax
	movl	212(%eax),%edx
	shll	$3,%edx
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,244(%edx)
	movl	-4(%ebp),%eax
	movl	216(%eax),%edx
	shll	$3,%edx
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	call	L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,248(%edx)
	movl	-4(%ebp),%eax
	movl	$0,252(%eax)
	movl	-4(%ebp),%eax
	movl	224(%eax),%ebx
	decl	%ebx
	movl	$0,-8(%ebp)
	cmpl	-8(%ebp),%ebx
	jl	Lj460
	decl	-8(%ebp)
	.align 2
Lj461:
	incl	-8(%ebp)
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	228(%edx,%eax,4),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,52(%edx)
	movl	-20(%ebp),%edx
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,56(%edx)
	movl	-20(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	52(%eax),%ecx
	movl	56(%edx),%eax
	imull	%eax,%ecx
	movl	-20(%ebp),%eax
	movl	%ecx,60(%eax)
	movl	-20(%ebp),%eax
	movl	52(%eax),%eax
	shll	$3,%eax
	movl	-20(%ebp),%edx
	movl	%eax,64(%edx)
	movl	-20(%ebp),%eax
	movl	28(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	52(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	call	Lfpc_mod_int64$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj478
	jmp	Lj479
Lj478:
	movl	-20(%ebp),%eax
	movl	52(%eax),%eax
	movl	%eax,-16(%ebp)
Lj479:
	movl	-20(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	%edx,68(%eax)
	movl	-20(%ebp),%eax
	movl	32(%eax),%eax
	movl	$0,%edx
	movl	%edx,4(%esp)
	movl	%eax,(%esp)
	movl	-20(%ebp),%eax
	movl	56(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%eax,12(%esp)
	movl	%edx,8(%esp)
	call	Lfpc_mod_int64$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	je	Lj490
	jmp	Lj491
Lj490:
	movl	-20(%ebp),%eax
	movl	56(%eax),%eax
	movl	%eax,-16(%ebp)
Lj491:
	movl	-20(%ebp),%edx
	movl	-16(%ebp),%eax
	movl	%eax,72(%edx)
	movl	-20(%ebp),%eax
	movl	60(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	252(%eax),%edx
	movl	-12(%ebp),%eax
	addl	%eax,%edx
	cmpl	$10,%edx
	jg	Lj498
	jmp	Lj499
Lj498:
	movl	-4(%ebp),%eax
	movb	$13,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj499:
	jmp	Lj505
	.align 2
Lj504:
	decl	-12(%ebp)
	movl	-4(%ebp),%ecx
	movl	-4(%ebp),%eax
	movl	252(%eax),%eax
	movl	-8(%ebp),%edx
	movl	%edx,256(%ecx,%eax,4)
	movl	-4(%ebp),%eax
	incl	252(%eax)
Lj505:
	movl	-12(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj504
	jmp	Lj506
Lj506:
	cmpl	-8(%ebp),%ebx
	jg	Lj461
Lj460:
Lj433:
	movl	-4(%ebp),%eax
	movl	188(%eax),%eax
	cmpl	$0,%eax
	jg	Lj509
	jmp	Lj510
Lj509:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	188(%eax),%edx
	movl	244(%ecx),%eax
	imull	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-24(%ebp),%eax
	cmpl	$65535,%eax
	jl	Lj513
	jmp	Lj514
Lj513:
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,184(%edx)
	jmp	Lj517
Lj514:
	movl	-4(%ebp),%eax
	movl	$65535,184(%eax)
Lj517:
Lj510:
	movl	-28(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_JCMASTER_PREPARE_FOR_PASS$J_COMPRESS_PTR
_JCMASTER_PREPARE_FOR_PASS$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	312(%eax),%eax
	movl	%eax,-8(%ebp)
	movb	$1,-9(%ebp)
	movl	-8(%ebp),%eax
	movb	16(%eax),%al
	testb	%al,%al
	je	Lj528
	decb	%al
	jb	Lj527
	subb	$1,%al
	jbe	Lj529
	jmp	Lj527
Lj528:
	movl	-4(%ebp),%eax
	call	L_JCMASTER_SELECT_SCAN_PARAMETERS$J_COMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	call	L_JCMASTER_PER_SCAN_SETUP$J_COMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	movb	172(%eax),%al
	testb	%al,%al
	je	Lj534
	jmp	Lj535
Lj534:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	332(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	336(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movb	$0,%dl
	movl	-4(%ebp),%ecx
	movl	320(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
Lj535:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	340(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movb	174(%eax),%dl
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	344(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	cmpl	$1,%eax
	jg	Lj550
	jmp	Lj551
Lj550:
	movl	-4(%ebp),%eax
	movb	$3,%dl
	movl	-4(%ebp),%ecx
	movl	324(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
	jmp	Lj556
Lj551:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	movl	-4(%ebp),%ecx
	movl	324(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
Lj556:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	movl	-4(%ebp),%ecx
	movl	316(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
	movl	-4(%ebp),%eax
	cmpb	$0,174(%eax)
	jne	Lj565
	jmp	Lj566
Lj565:
	movl	-8(%ebp),%eax
	movb	$0,12(%eax)
	jmp	Lj569
Lj566:
	movl	-8(%ebp),%eax
	movb	$1,12(%eax)
Lj569:
	jmp	Lj526
Lj529:
	movl	-8(%ebp),%eax
	movb	16(%eax),%al
	cmpb	$1,%al
	je	Lj572
	jmp	Lj573
Lj572:
	movl	-4(%ebp),%eax
	call	L_JCMASTER_SELECT_SCAN_PARAMETERS$J_COMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	call	L_JCMASTER_PER_SCAN_SETUP$J_COMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	movl	296(%eax),%eax
	testl	%eax,%eax
	jne	Lj578
	jmp	Lj581
Lj581:
	movl	-4(%ebp),%eax
	movl	304(%eax),%eax
	testl	%eax,%eax
	je	Lj578
	jmp	Lj580
Lj580:
	movl	-4(%ebp),%eax
	cmpb	$0,173(%eax)
	jne	Lj578
	jmp	Lj579
Lj578:
	movl	-4(%ebp),%eax
	movb	$1,%dl
	movl	-4(%ebp),%ecx
	movl	344(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
	movl	-4(%ebp),%eax
	movb	$2,%dl
	movl	-4(%ebp),%ecx
	movl	324(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
	movl	-8(%ebp),%eax
	movb	$0,12(%eax)
	movb	$0,-9(%ebp)
Lj579:
	cmpb	$0,-9(%ebp)
	jne	Lj594
	jmp	Lj595
Lj594:
	movl	-8(%ebp),%eax
	movb	$2,16(%eax)
	movl	-8(%ebp),%eax
	incl	20(%eax)
Lj595:
Lj573:
	cmpb	$0,-9(%ebp)
	jne	Lj598
	jmp	Lj599
Lj598:
	movl	-4(%ebp),%eax
	movb	174(%eax),%al
	testb	%al,%al
	je	Lj600
	jmp	Lj601
Lj600:
	movl	-4(%ebp),%eax
	call	L_JCMASTER_SELECT_SCAN_PARAMETERS$J_COMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	call	L_JCMASTER_PER_SCAN_SETUP$J_COMPRESS_PTR$stub
Lj601:
	movl	-4(%ebp),%eax
	movb	$0,%dl
	movl	-4(%ebp),%ecx
	movl	344(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
	movl	-4(%ebp),%eax
	movb	$2,%dl
	movl	-4(%ebp),%ecx
	movl	324(%ecx),%ecx
	movl	(%ecx),%ecx
	call	*%ecx
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj614
	jmp	Lj615
Lj614:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	328(%edx),%edx
	movl	4(%edx),%edx
	call	*%edx
Lj615:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	328(%edx),%edx
	movl	8(%edx),%edx
	call	*%edx
	movl	-8(%ebp),%eax
	movb	$0,12(%eax)
Lj599:
	jmp	Lj526
Lj527:
	movl	-4(%ebp),%eax
	movb	$49,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj526:
	movl	-8(%ebp),%ecx
	movl	-8(%ebp),%eax
	movl	24(%eax),%edx
	decl	%edx
	movl	-8(%ebp),%eax
	cmpl	20(%eax),%edx
	seteb	13(%ecx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	jne	Lj628
	jmp	Lj629
Lj628:
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%edx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,16(%edx)
Lj629:
	leave
	ret

.text
	.align 4
.globl	_JCMASTER_PASS_STARTUP$J_COMPRESS_PTR
_JCMASTER_PASS_STARTUP$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	312(%eax),%eax
	movb	$0,12(%eax)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	328(%edx),%edx
	movl	4(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	328(%edx),%edx
	movl	8(%edx),%edx
	call	*%edx
	leave
	ret

.text
	.align 4
.globl	_JCMASTER_FINISH_PASS_MASTER$J_COMPRESS_PTR
_JCMASTER_FINISH_PASS_MASTER$J_COMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	312(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	344(%edx),%edx
	movl	8(%edx),%edx
	call	*%edx
	movl	-8(%ebp),%eax
	movb	16(%eax),%al
	testb	%al,%al
	je	Lj650
	decb	%al
	je	Lj651
	decb	%al
	je	Lj652
	jmp	Lj649
Lj650:
	movl	-8(%ebp),%eax
	movb	$2,16(%eax)
	movl	-4(%ebp),%eax
	movb	174(%eax),%al
	testb	%al,%al
	je	Lj655
	jmp	Lj656
Lj655:
	movl	-8(%ebp),%eax
	incl	28(%eax)
Lj656:
	jmp	Lj648
Lj651:
	movl	-8(%ebp),%eax
	movb	$2,16(%eax)
	jmp	Lj648
Lj652:
	movl	-4(%ebp),%eax
	cmpb	$0,174(%eax)
	jne	Lj659
	jmp	Lj660
Lj659:
	movl	-8(%ebp),%eax
	movb	$1,16(%eax)
Lj660:
	movl	-8(%ebp),%eax
	incl	28(%eax)
	jmp	Lj648
Lj649:
Lj648:
	movl	-8(%ebp),%eax
	incl	20(%eax)
	leave
	ret

.text
	.align 4
.globl	_JCMASTER_JINIT_C_MASTER_CONTROL$J_COMPRESS_PTR$BOOLEAN
_JCMASTER_JINIT_C_MASTER_CONTROL$J_COMPRESS_PTR$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	call	Lj664
Lj664:
	popl	%esi
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	$32,%ecx
	movl	$1,%edx
	movl	-4(%ebp),%ebx
	movl	4(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*%ebx
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,312(%eax)
	movl	-12(%ebp),%edx
	movl	L_JCMASTER_PREPARE_FOR_PASS$J_COMPRESS_PTR$non_lazy_ptr-Lj664(%esi),%eax
	movl	%eax,(%edx)
	movl	-12(%ebp),%edx
	movl	L_JCMASTER_PASS_STARTUP$J_COMPRESS_PTR$non_lazy_ptr-Lj664(%esi),%eax
	movl	%eax,4(%edx)
	movl	-12(%ebp),%edx
	movl	L_JCMASTER_FINISH_PASS_MASTER$J_COMPRESS_PTR$non_lazy_ptr-Lj664(%esi),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movb	$0,13(%eax)
	movl	-4(%ebp),%eax
	call	L_JCMASTER_INITIAL_SETUP$J_COMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	movl	168(%eax),%eax
	testl	%eax,%eax
	jne	Lj685
	jmp	Lj686
Lj685:
	movl	-4(%ebp),%eax
	call	L_JCMASTER_VALIDATE_SCRIPT$J_COMPRESS_PTR$stub
	jmp	Lj689
Lj686:
	movl	-4(%ebp),%eax
	movb	$0,208(%eax)
	movl	-4(%ebp),%eax
	movl	$1,164(%eax)
Lj689:
	movl	-4(%ebp),%eax
	cmpb	$0,208(%eax)
	jne	Lj694
	jmp	Lj695
Lj694:
	movl	-4(%ebp),%eax
	movb	$1,174(%eax)
Lj695:
	cmpb	$0,-8(%ebp)
	jne	Lj698
	jmp	Lj699
Lj698:
	movl	-4(%ebp),%eax
	cmpb	$0,174(%eax)
	jne	Lj700
	jmp	Lj701
Lj700:
	movl	-12(%ebp),%eax
	movb	$1,16(%eax)
	jmp	Lj704
Lj701:
	movl	-12(%ebp),%eax
	movb	$2,16(%eax)
Lj704:
	jmp	Lj707
Lj699:
	movl	-12(%ebp),%eax
	movb	$0,16(%eax)
Lj707:
	movl	-12(%ebp),%eax
	movl	$0,28(%eax)
	movl	-12(%ebp),%eax
	movl	$0,20(%eax)
	movl	-4(%ebp),%eax
	cmpb	$0,174(%eax)
	jne	Lj714
	jmp	Lj715
Lj714:
	movl	-4(%ebp),%eax
	movl	164(%eax),%eax
	shll	$1,%eax
	movl	-12(%ebp),%edx
	movl	%eax,24(%edx)
	jmp	Lj718
Lj715:
	movl	-12(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	164(%eax),%eax
	movl	%eax,24(%edx)
Lj718:
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JCMASTER
_THREADVARLIST_JCMASTER:
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

L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub:
.indirect_symbol _JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub:
.indirect_symbol _JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _JUTILS_JDIV_ROUND_UP$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_mod_int64$stub:
.indirect_symbol fpc_mod_int64
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMASTER_SELECT_SCAN_PARAMETERS$J_COMPRESS_PTR$stub:
.indirect_symbol _JCMASTER_SELECT_SCAN_PARAMETERS$J_COMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMASTER_PER_SCAN_SETUP$J_COMPRESS_PTR$stub:
.indirect_symbol _JCMASTER_PER_SCAN_SETUP$J_COMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMASTER_INITIAL_SETUP$J_COMPRESS_PTR$stub:
.indirect_symbol _JCMASTER_INITIAL_SETUP$J_COMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCMASTER_VALIDATE_SCRIPT$J_COMPRESS_PTR$stub:
.indirect_symbol _JCMASTER_VALIDATE_SCRIPT$J_COMPRESS_PTR
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
L_JCMASTER_PREPARE_FOR_PASS$J_COMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JCMASTER_PREPARE_FOR_PASS$J_COMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCMASTER_PASS_STARTUP$J_COMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JCMASTER_PASS_STARTUP$J_COMPRESS_PTR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_JCMASTER_FINISH_PASS_MASTER$J_COMPRESS_PTR$non_lazy_ptr:
.indirect_symbol _JCMASTER_FINISH_PASS_MASTER$J_COMPRESS_PTR
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

