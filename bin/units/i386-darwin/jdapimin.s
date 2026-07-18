# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_JDAPIMIN_JPEG_CREATE_DECOMPRESS$J_DECOMPRESS_PTR
_JDAPIMIN_JPEG_CREATE_DECOMPRESS$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$412,%ecx
	movl	$62,%edx
	call	L_JDAPIMIN_JPEG_CREATEDECOMPRESS$J_DECOMPRESS_PTR$LONGINT$LONGINT$stub
	leave
	ret

.text
	.align 4
.globl	_JDAPIMIN_JPEG_CREATEDECOMPRESS$J_DECOMPRESS_PTR$LONGINT$LONGINT
_JDAPIMIN_JPEG_CREATEDECOMPRESS$J_DECOMPRESS_PTR$LONGINT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	$0,4(%eax)
	movl	-8(%ebp),%eax
	cmpl	$62,%eax
	jne	Lj15
	jmp	Lj16
Lj15:
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	$62,%ecx
	movb	$12,%dl
	call	L_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub
Lj16:
	movl	-12(%ebp),%eax
	cmpl	$412,%eax
	jne	Lj25
	jmp	Lj26
Lj25:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-4(%ebp),%eax
	movl	$412,%ecx
	movb	$21,%dl
	call	L_JERROR_ERREXIT2$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$LONGINT$stub
Lj26:
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-20(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-4(%ebp),%eax
	movl	$412,%edx
	call	L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	-20(%ebp),%edx
	movl	%edx,(%eax)
	movl	-4(%ebp),%edx
	movl	-24(%ebp),%eax
	movl	%eax,12(%edx)
	movl	-4(%ebp),%eax
	movb	$1,16(%eax)
	movl	-4(%ebp),%eax
	call	L_JMEMMGR_JINIT_MEMORY_MGR$J_COMMON_PTR$stub
	movl	-4(%ebp),%eax
	movl	$0,8(%eax)
	movl	-4(%ebp),%eax
	movl	$0,24(%eax)
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj57:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	$0,128(%eax,%edx,4)
	cmpl	$3,-16(%ebp)
	jl	Lj57
	movl	$0,-16(%ebp)
	decl	-16(%ebp)
	.align 2
Lj62:
	incl	-16(%ebp)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	$0,144(%eax,%edx,4)
	movl	-4(%ebp),%eax
	movl	-16(%ebp),%edx
	movl	$0,160(%eax,%edx,4)
	cmpl	$3,-16(%ebp)
	jl	Lj62
	movl	-4(%ebp),%eax
	movl	$0,252(%eax)
	movl	-4(%ebp),%eax
	call	L_JDMARKER_JINIT_MARKER_READER$J_DECOMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	call	L_JDINPUT_JINIT_INPUT_CONTROLLER$J_DECOMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	movl	$200,20(%eax)
	leave
	ret

.text
	.align 4
.globl	_JDAPIMIN_JPEG_DESTROY_DECOMPRESS$J_DECOMPRESS_PTR
_JDAPIMIN_JPEG_DESTROY_DECOMPRESS$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_JCOMAPI_JPEG_DESTROY$J_COMMON_PTR$stub
	leave
	ret

.text
	.align 4
.globl	_JDAPIMIN_JPEG_ABORT_DECOMPRESS$J_DECOMPRESS_PTR
_JDAPIMIN_JPEG_ABORT_DECOMPRESS$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_JCOMAPI_JPEG_ABORT$J_COMMON_PTR$stub
	leave
	ret

.text
	.align 4
.globl	_JDAPIMIN_DEFAULT_DECOMPRESS_PARMS$J_DECOMPRESS_PTR
_JDAPIMIN_DEFAULT_DECOMPRESS_PARMS$J_DECOMPRESS_PTR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	cmpl	$1,%eax
	jl	Lj86
	decl	%eax
	je	Lj87
	subl	$2,%eax
	je	Lj88
	decl	%eax
	je	Lj89
	jmp	Lj86
Lj87:
	movl	-4(%ebp),%eax
	movb	$1,40(%eax)
	movl	-4(%ebp),%eax
	movb	$1,41(%eax)
	jmp	Lj85
Lj88:
	movl	-4(%ebp),%eax
	cmpb	$0,240(%eax)
	jne	Lj94
	jmp	Lj95
Lj94:
	movl	-4(%ebp),%eax
	movb	$3,40(%eax)
	jmp	Lj98
Lj95:
	movl	-4(%ebp),%eax
	cmpb	$0,248(%eax)
	jne	Lj99
	jmp	Lj100
Lj99:
	movl	-4(%ebp),%eax
	movb	249(%eax),%al
	testb	%al,%al
	je	Lj103
	decb	%al
	je	Lj104
	jmp	Lj102
Lj103:
	movl	-4(%ebp),%eax
	movb	$2,40(%eax)
	jmp	Lj101
Lj104:
	movl	-4(%ebp),%eax
	movb	$3,40(%eax)
	jmp	Lj101
Lj102:
	movl	-4(%ebp),%eax
	movzbl	249(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$115,%dl
	call	L_JERROR_WARNMS1$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$stub
	movl	-4(%ebp),%eax
	movb	$3,40(%eax)
Lj101:
	jmp	Lj117
Lj100:
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	84(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	180(%eax),%eax
	movl	168(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj127
	jmp	Lj125
Lj127:
	movl	-12(%ebp),%eax
	cmpl	$2,%eax
	je	Lj126
	jmp	Lj125
Lj126:
	movl	-16(%ebp),%eax
	cmpl	$3,%eax
	je	Lj124
	jmp	Lj125
Lj124:
	movl	-4(%ebp),%eax
	movb	$3,40(%eax)
	jmp	Lj130
Lj125:
	movl	-8(%ebp),%eax
	cmpl	$82,%eax
	je	Lj134
	jmp	Lj132
Lj134:
	movl	-12(%ebp),%eax
	cmpl	$71,%eax
	je	Lj133
	jmp	Lj132
Lj133:
	movl	-16(%ebp),%eax
	cmpl	$66,%eax
	je	Lj131
	jmp	Lj132
Lj131:
	movl	-4(%ebp),%eax
	movb	$2,40(%eax)
	jmp	Lj137
Lj132:
	movl	-4(%ebp),%eax
	movb	$3,40(%eax)
Lj137:
Lj130:
Lj117:
Lj98:
	movl	-4(%ebp),%eax
	movb	$2,41(%eax)
	jmp	Lj85
Lj89:
	movl	-4(%ebp),%eax
	cmpb	$0,248(%eax)
	jne	Lj142
	jmp	Lj143
Lj142:
	movl	-4(%ebp),%eax
	movb	249(%eax),%al
	testb	%al,%al
	je	Lj146
	subb	$2,%al
	je	Lj147
	jmp	Lj145
Lj146:
	movl	-4(%ebp),%eax
	movb	$4,40(%eax)
	jmp	Lj144
Lj147:
	movl	-4(%ebp),%eax
	movb	$5,40(%eax)
	jmp	Lj144
Lj145:
	movl	-4(%ebp),%eax
	movzbl	249(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$115,%dl
	call	L_JERROR_WARNMS1$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$stub
	movl	-4(%ebp),%eax
	movb	$5,40(%eax)
Lj144:
	jmp	Lj160
Lj143:
	movl	-4(%ebp),%eax
	movb	$4,40(%eax)
Lj160:
	movl	-4(%ebp),%eax
	movb	$4,41(%eax)
	jmp	Lj85
Lj86:
	movl	-4(%ebp),%eax
	movb	$0,40(%eax)
	movl	-4(%ebp),%eax
	movb	$0,41(%eax)
Lj85:
	movl	-4(%ebp),%eax
	movl	$1,44(%eax)
	movl	-4(%ebp),%eax
	movl	$1,48(%eax)
	movl	-4(%ebp),%eax
	fld1
	fstpl	52(%eax)
	movl	-4(%ebp),%eax
	movb	$0,60(%eax)
	movl	-4(%ebp),%eax
	movb	$0,61(%eax)
	movl	-4(%ebp),%eax
	movb	$0,62(%eax)
	movl	-4(%ebp),%eax
	movb	$1,63(%eax)
	movl	-4(%ebp),%eax
	movb	$1,64(%eax)
	movl	-4(%ebp),%eax
	movb	$0,65(%eax)
	movl	-4(%ebp),%eax
	movb	$2,66(%eax)
	movl	-4(%ebp),%eax
	movb	$1,67(%eax)
	movl	-4(%ebp),%eax
	movl	$256,68(%eax)
	movl	-4(%ebp),%eax
	movl	$0,100(%eax)
	movl	-4(%ebp),%eax
	movb	$0,72(%eax)
	movl	-4(%ebp),%eax
	movb	$0,73(%eax)
	movl	-4(%ebp),%eax
	movb	$0,74(%eax)
	leave
	ret

.text
	.align 4
.globl	_JDAPIMIN_JPEG_READ_HEADER$J_DECOMPRESS_PTR$BOOLEAN$$LONGINT
_JDAPIMIN_JPEG_READ_HEADER$J_DECOMPRESS_PTR$BOOLEAN$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$200,%eax
	jne	Lj205
	jmp	Lj204
Lj205:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$201,%eax
	jne	Lj203
	jmp	Lj204
Lj203:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj204:
	movl	-4(%ebp),%eax
	call	L_JDAPIMIN_JPEG_CONSUME_INPUT$J_DECOMPRESS_PTR$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	testl	%eax,%eax
	jl	Lj217
	testl	%eax,%eax
	je	Lj220
	decl	%eax
	je	Lj218
	decl	%eax
	je	Lj219
	jmp	Lj217
Lj218:
	movl	$1,-16(%ebp)
	jmp	Lj216
Lj219:
	cmpb	$0,-8(%ebp)
	jne	Lj223
	jmp	Lj224
Lj223:
	movl	-4(%ebp),%eax
	movb	$52,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj224:
	movl	-4(%ebp),%eax
	call	L_JCOMAPI_JPEG_ABORT$J_COMMON_PTR$stub
	movl	$2,-16(%ebp)
	jmp	Lj216
Lj220:
	jmp	Lj216
Lj217:
Lj216:
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JDAPIMIN_JPEG_CONSUME_INPUT$J_DECOMPRESS_PTR$$LONGINT
_JDAPIMIN_JPEG_CONSUME_INPUT$J_DECOMPRESS_PTR$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$200,%eax
	je	Lj239
	jmp	Lj240
Lj239:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	384(%edx),%edx
	movl	4(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	24(%edx),%edx
	movl	8(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	$201,20(%eax)
Lj240:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$200,%eax
	jl	Lj248
	subl	$200,%eax
	subl	$1,%eax
	jle	Lj249
	decl	%eax
	je	Lj250
	decl	%eax
	jl	Lj248
	subl	$5,%eax
	jle	Lj251
	subl	$2,%eax
	je	Lj251
	jmp	Lj248
Lj249:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	je	Lj256
	jmp	Lj257
Lj256:
	movl	-4(%ebp),%eax
	call	L_JDAPIMIN_DEFAULT_DECOMPRESS_PARMS$J_DECOMPRESS_PTR$stub
	movl	-4(%ebp),%eax
	movl	$202,20(%eax)
Lj257:
	jmp	Lj247
Lj250:
	movl	$1,-12(%ebp)
	jmp	Lj247
Lj251:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	movl	%eax,-12(%ebp)
	jmp	Lj247
Lj248:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj247:
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_JDAPIMIN_JPEG_INPUT_COMPLETE$J_DECOMPRESS_PTR$$BOOLEAN
_JDAPIMIN_JPEG_INPUT_COMPLETE$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$200,%eax
	jl	Lj278
	jmp	Lj280
Lj280:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$210,%eax
	jg	Lj278
	jmp	Lj279
Lj278:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj279:
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movb	17(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JDAPIMIN_JPEG_HAS_MULTIPLE_SCANS$J_DECOMPRESS_PTR$$BOOLEAN
_JDAPIMIN_JPEG_HAS_MULTIPLE_SCANS$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$202,%eax
	jl	Lj291
	jmp	Lj293
Lj293:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$210,%eax
	jg	Lj291
	jmp	Lj292
Lj291:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj292:
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	movb	16(%eax),%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_JDAPIMIN_JPEG_FINISH_DECOMPRESS$J_DECOMPRESS_PTR$$BOOLEAN
_JDAPIMIN_JPEG_FINISH_DECOMPRESS$J_DECOMPRESS_PTR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$205,%eax
	je	Lj304
	jmp	Lj306
Lj306:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$206,%eax
	je	Lj307
	jmp	Lj305
Lj307:
	movl	-4(%ebp),%eax
	movb	60(%eax),%al
	testb	%al,%al
	je	Lj304
	jmp	Lj305
Lj304:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	104(%eax),%eax
	cmpl	80(%edx),%eax
	jb	Lj308
	jmp	Lj309
Lj308:
	movl	-4(%ebp),%eax
	movb	$68,%dl
	call	L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub
Lj309:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	368(%edx),%edx
	movl	4(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	movl	$210,20(%eax)
	jmp	Lj318
Lj305:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$207,%eax
	je	Lj319
	jmp	Lj320
Lj319:
	movl	-4(%ebp),%eax
	movl	$210,20(%eax)
	jmp	Lj323
Lj320:
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$210,%eax
	jne	Lj324
	jmp	Lj325
Lj324:
	movl	-4(%ebp),%eax
	movl	20(%eax),%ecx
	movl	-4(%ebp),%eax
	movb	$20,%dl
	call	L_JERROR_ERREXIT1$J_COMMON_PTR$J_MESSAGE_CODE$LONGWORD$stub
Lj325:
Lj323:
Lj318:
	jmp	Lj333
	.align 2
Lj332:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	384(%edx),%edx
	movl	(%edx),%edx
	call	*%edx
	testl	%eax,%eax
	je	Lj335
	jmp	Lj336
Lj335:
	movb	$0,-5(%ebp)
	jmp	Lj302
Lj336:
Lj333:
	movl	-4(%ebp),%eax
	movl	384(%eax),%eax
	cmpb	$0,17(%eax)
	jne	Lj334
	jmp	Lj332
Lj334:
	movl	-4(%ebp),%eax
	movl	-4(%ebp),%edx
	movl	24(%edx),%edx
	movl	24(%edx),%edx
	call	*%edx
	movl	-4(%ebp),%eax
	call	L_JCOMAPI_JPEG_ABORT$J_COMMON_PTR$stub
	movb	$1,-5(%ebp)
Lj302:
	movb	-5(%ebp),%al
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_JDAPIMIN
_THREADVARLIST_JDAPIMIN:
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

L_JDAPIMIN_JPEG_CREATEDECOMPRESS$J_DECOMPRESS_PTR$LONGINT$LONGINT$stub:
.indirect_symbol _JDAPIMIN_JPEG_CREATEDECOMPRESS$J_DECOMPRESS_PTR$LONGINT$LONGINT
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

L_JINCLUDE_MEMZERO$POINTER$LONGINT$stub:
.indirect_symbol _JINCLUDE_MEMZERO$POINTER$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JMEMMGR_JINIT_MEMORY_MGR$J_COMMON_PTR$stub:
.indirect_symbol _JMEMMGR_JINIT_MEMORY_MGR$J_COMMON_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDMARKER_JINIT_MARKER_READER$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDMARKER_JINIT_MARKER_READER$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDINPUT_JINIT_INPUT_CONTROLLER$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDINPUT_JINIT_INPUT_CONTROLLER$J_DECOMPRESS_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCOMAPI_JPEG_DESTROY$J_COMMON_PTR$stub:
.indirect_symbol _JCOMAPI_JPEG_DESTROY$J_COMMON_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JCOMAPI_JPEG_ABORT$J_COMMON_PTR$stub:
.indirect_symbol _JCOMAPI_JPEG_ABORT$J_COMMON_PTR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_WARNMS1$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT$stub:
.indirect_symbol _JERROR_WARNMS1$J_COMMON_PTR$J_MESSAGE_CODE$LONGINT
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

L_JDAPIMIN_JPEG_CONSUME_INPUT$J_DECOMPRESS_PTR$$LONGINT$stub:
.indirect_symbol _JDAPIMIN_JPEG_CONSUME_INPUT$J_DECOMPRESS_PTR$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE$stub:
.indirect_symbol _JERROR_ERREXIT$J_COMMON_PTR$J_MESSAGE_CODE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_JDAPIMIN_DEFAULT_DECOMPRESS_PARMS$J_DECOMPRESS_PTR$stub:
.indirect_symbol _JDAPIMIN_DEFAULT_DECOMPRESS_PARMS$J_DECOMPRESS_PTR
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

