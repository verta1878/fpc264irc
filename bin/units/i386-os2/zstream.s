	.file "zstream.pp"
# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.balign 4,0x90
.globl	ZSTREAM_TCUSTOMZLIBSTREAM_$__CREATE$TSTREAM$$TCUSTOMZLIBSTREAM
ZSTREAM_TCUSTOMZLIBSTREAM_$__CREATE$TSTREAM$$TCUSTOMZLIBSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$92,%esp
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
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj15
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj19
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	CLASSES_TOWNERSTREAM_$__CREATE$TSTREAM$$TOWNERSTREAM
	movl	-12(%ebp),%eax
	leal	308(%eax),%eax
	movl	$16384,%edx
	call	SYSTEM_GETMEM$POINTER$LONGWORD
Lj19:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj20
	call	FPC_RERAISE
Lj20:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj34
	jmp	Lj33
Lj34:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj32
	jmp	Lj33
Lj32:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj33:
Lj15:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj17
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj38
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj39
	jmp	Lj40
Lj39:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj40:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj38:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj37
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj37:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj17
Lj17:
Lj3:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	ZSTREAM_TCUSTOMZLIBSTREAM_$__PROGRESS$TOBJECT
ZSTREAM_TCUSTOMZLIBSTREAM_$__PROGRESS$TOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-8(%ebp),%eax
	movl	312(%eax),%eax
	testl	%eax,%eax
	jne	Lj47
	jmp	Lj48
Lj47:
	movl	-8(%ebp),%eax
	movl	316(%eax),%eax
	movl	-4(%ebp),%edx
	movl	-8(%ebp),%ecx
	movl	312(%ecx),%ecx
	call	*%ecx
Lj48:
	leave
	ret

.text
	.balign 4,0x90
.globl	ZSTREAM_TCUSTOMZLIBSTREAM_$__DESTROY
ZSTREAM_TCUSTOMZLIBSTREAM_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj55
	jmp	Lj56
Lj55:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj56:
	movl	-8(%ebp),%eax
	movl	308(%eax),%eax
	call	SYSTEM_FREEMEM$POINTER$$LONGWORD
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	CLASSES_TOWNERSTREAM_$__DESTROY
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
	.balign 4,0x90
.globl	ZSTREAM_TCOMPRESSIONSTREAM_$__CREATE$TCOMPRESSIONLEVEL$TSTREAM$BOOLEAN$$TCOMPRESSIONSTREAM
ZSTREAM_TCOMPRESSIONSTREAM_$__CREATE$TCOMPRESSIONLEVEL$TSTREAM$BOOLEAN$$TCOMPRESSIONSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$356,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	$0,-100(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj72
	jmp	Lj73
Lj72:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj73:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj78
	jmp	Lj79
Lj78:
	jmp	Lj70
Lj79:
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj82
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj86
	movl	12(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	ZSTREAM_TCUSTOMZLIBSTREAM_$__CREATE$TSTREAM$$TCUSTOMZLIBSTREAM
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	308(%eax),%eax
	movl	%eax,24(%edx)
	movl	-12(%ebp),%eax
	movl	$16384,28(%eax)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj101
	decl	%eax
	je	Lj102
	decl	%eax
	je	Lj103
	decl	%eax
	je	Lj104
	jmp	Lj100
Lj101:
	movw	$0,-16(%ebp)
	jmp	Lj99
Lj102:
	movw	$1,-16(%ebp)
	jmp	Lj99
Lj103:
	movw	$-1,-16(%ebp)
	jmp	Lj99
Lj104:
	movw	$9,-16(%ebp)
	jmp	Lj99
Lj100:
Lj99:
	cmpb	$0,8(%ebp)
	jne	Lj113
	jmp	Lj114
Lj113:
	pushl	$-15
	pushl	$8
	pushl	$0
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	movswl	-16(%ebp),%edx
	movl	$8,%ecx
	call	ZDEFLATE_DEFLATEINIT2$Z_STREAM$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$$LONGINT
	movw	%ax,-14(%ebp)
	jmp	Lj129
Lj114:
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	movswl	-16(%ebp),%edx
	call	ZDEFLATE_DEFLATEINIT$Z_STREAM$LONGINT$$LONGINT
	movw	%ax,-14(%ebp)
Lj129:
	movw	-14(%ebp),%ax
	testw	%ax,%ax
	jne	Lj136
	jmp	Lj137
Lj136:
	leal	-100(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-100(%ebp)
	leal	-356(%ebp),%edx
	movswl	-14(%ebp),%eax
	call	ZBASE_ZERROR$LONGINT$$SHORTSTRING
	leal	-356(%ebp),%eax
	leal	-100(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-100(%ebp),%ecx
	movl	$VMT_ZSTREAM_ECOMPRESSIONERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La1:
	movl	%ebp,%ecx
	movl	$La1,%edx
	call	FPC_RAISEEXCEPTION
Lj137:
Lj86:
	call	FPC_POPADDRSTACK
	leal	-100(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-100(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj87
	call	FPC_RERAISE
Lj87:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj154
	jmp	Lj153
Lj154:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj152
	jmp	Lj153
Lj152:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj153:
Lj82:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj84
	leal	-112(%ebp),%ecx
	leal	-136(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj158
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj159
	jmp	Lj160
Lj159:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj160:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj158:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj157
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj157:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj84
Lj84:
Lj70:
	movl	-12(%ebp),%eax
	leave
	ret	$8

.text
	.balign 4,0x90
.globl	ZSTREAM_TCOMPRESSIONSTREAM_$__WRITE$formal$LONGINT$$LONGINT
ZSTREAM_TCOMPRESSIONSTREAM_$__WRITE$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$332,%esp
	movl	%ebx,-332(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj167
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%eax,12(%edx)
	movl	-12(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,16(%eax)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj177
	.balign 4,0x90
Lj176:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj179
	jmp	Lj180
Lj179:
	movl	-12(%ebp),%eax
	movl	308(%eax),%edx
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	$16384,%ecx
	movl	-12(%ebp),%ebx
	movl	8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	%eax,-28(%ebp)
	movl	-12(%ebp),%edx
	movl	-28(%ebp),%eax
	addl	%eax,324(%edx)
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-24(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	addl	%edx,320(%eax)
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	call	ZSTREAM_TCUSTOMZLIBSTREAM_$__PROGRESS$TOBJECT
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	308(%eax),%eax
	movl	%eax,24(%edx)
	movl	-12(%ebp),%eax
	movl	$16384,28(%eax)
Lj180:
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	movl	$0,%edx
	call	ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT
	movw	%ax,-18(%ebp)
	movw	-18(%ebp),%ax
	testw	%ax,%ax
	jne	Lj205
	jmp	Lj206
Lj205:
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	leal	-328(%ebp),%edx
	movswl	-18(%ebp),%eax
	call	ZBASE_ZERROR$LONGINT$$SHORTSTRING
	leal	-328(%ebp),%eax
	leal	-72(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-72(%ebp),%ecx
	movl	$VMT_ZSTREAM_ECOMPRESSIONERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La2:
	movl	%ebp,%ecx
	movl	$La2,%edx
	call	FPC_RAISEEXCEPTION
Lj206:
Lj177:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj176
	jmp	Lj178
Lj178:
	movl	-12(%ebp),%eax
	movl	16(%eax),%edx
	movl	-24(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	addl	%edx,320(%eax)
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj167:
	call	FPC_POPADDRSTACK
	leal	-72(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-72(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj168
	call	FPC_RERAISE
Lj168:
	movl	-16(%ebp),%eax
	movl	-332(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZSTREAM_TCOMPRESSIONSTREAM_$__GET_COMPRESSIONRATE$$SINGLE
ZSTREAM_TCOMPRESSIONSTREAM_$__GET_COMPRESSIONRATE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	324(%eax),%eax
	imull	$100,%eax
	movl	%eax,-12(%ebp)
	fildl	-12(%ebp)
	movl	-4(%ebp),%eax
	fildl	320(%eax)
	fdivrp	%st,%st(1)
	fstps	-8(%ebp)
	flds	-8(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	ZSTREAM_TCOMPRESSIONSTREAM_$__FLUSH
ZSTREAM_TCOMPRESSIONSTREAM_$__FLUSH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$316,%esp
	movl	%ebx,-316(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj229
	.balign 4,0x90
Lj232:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	je	Lj235
	jmp	Lj236
Lj235:
	movl	-4(%ebp),%eax
	movl	308(%eax),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	$16384,%ecx
	movl	-4(%ebp),%ebx
	movl	8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*132(%ebx)
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,324(%eax)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	call	ZSTREAM_TCUSTOMZLIBSTREAM_$__PROGRESS$TOBJECT
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	308(%eax),%eax
	movl	%eax,24(%edx)
	movl	-4(%ebp),%eax
	movl	$16384,28(%eax)
Lj236:
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	movl	$4,%edx
	call	ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	cmpw	$1,%ax
	je	Lj259
	jmp	Lj260
Lj259:
	jmp	Lj234
Lj260:
	movw	-6(%ebp),%ax
	testw	%ax,%ax
	jne	Lj261
	jmp	Lj262
Lj261:
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	leal	-312(%ebp),%edx
	movswl	-6(%ebp),%eax
	call	ZBASE_ZERROR$LONGINT$$SHORTSTRING
	leal	-312(%ebp),%eax
	leal	-56(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-56(%ebp),%ecx
	movl	$VMT_ZSTREAM_ECOMPRESSIONERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La3:
	movl	%ebp,%ecx
	movl	$La3,%edx
	call	FPC_RAISEEXCEPTION
Lj262:
	jmp	Lj232
Lj234:
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	cmpl	$16384,%eax
	jb	Lj277
	jmp	Lj278
Lj277:
	movl	-4(%ebp),%eax
	movl	28(%eax),%ecx
	movl	$16384,%eax
	subl	%ecx,%eax
	movl	%eax,%ecx
	movl	-4(%ebp),%eax
	movl	308(%eax),%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	$16384,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	addl	%edx,324(%eax)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	call	ZSTREAM_TCUSTOMZLIBSTREAM_$__PROGRESS$TOBJECT
Lj278:
Lj229:
	call	FPC_POPADDRSTACK
	leal	-56(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-56(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj230
	call	FPC_RERAISE
Lj230:
	movl	-316(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZSTREAM_TCOMPRESSIONSTREAM_$__DESTROY
ZSTREAM_TCOMPRESSIONSTREAM_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$48,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj291
	jmp	Lj292
Lj291:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj292:
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj295
	movl	-8(%ebp),%eax
	call	ZSTREAM_TCOMPRESSIONSTREAM_$__FLUSH
Lj295:
	call	FPC_POPADDRSTACK
	movl	-8(%ebp),%eax
	leal	12(%eax),%eax
	call	ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	ZSTREAM_TCUSTOMZLIBSTREAM_$__DESTROY
	popl	%eax
	testl	%eax,%eax
	je	Lj296
	decl	%eax
	testl	%eax,%eax
	je	Lj297
Lj297:
	call	FPC_RERAISE
Lj296:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj309
	jmp	Lj308
Lj309:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj307
	jmp	Lj308
Lj307:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj308:
	leave
	ret

.text
	.balign 4,0x90
.globl	ZSTREAM_TDECOMPRESSIONSTREAM_$__CREATE$TSTREAM$BOOLEAN$$TDECOMPRESSIONSTREAM
ZSTREAM_TDECOMPRESSIONSTREAM_$__CREATE$TSTREAM$BOOLEAN$$TDECOMPRESSIONSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$356,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	$0,-100(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj314
	jmp	Lj315
Lj314:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj315:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj320
	jmp	Lj321
Lj320:
	jmp	Lj312
Lj321:
	leal	-28(%ebp),%ecx
	leal	-52(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj324
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj328
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	ZSTREAM_TCUSTOMZLIBSTREAM_$__CREATE$TSTREAM$$TCUSTOMZLIBSTREAM
	movl	-12(%ebp),%eax
	movb	8(%ebp),%dl
	movb	%dl,328(%eax)
	cmpb	$0,8(%ebp)
	jne	Lj339
	jmp	Lj340
Lj339:
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	movl	$-15,%edx
	call	ZINFLATE_INFLATEINIT2$Z_STREAM$LONGINT$$LONGINT
	movw	%ax,-14(%ebp)
	jmp	Lj347
Lj340:
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	call	ZINFLATE_INFLATEINIT$Z_STREAM$$LONGINT
	movw	%ax,-14(%ebp)
Lj347:
	movw	-14(%ebp),%ax
	testw	%ax,%ax
	jne	Lj352
	jmp	Lj353
Lj352:
	leal	-100(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-100(%ebp)
	leal	-356(%ebp),%edx
	movswl	-14(%ebp),%eax
	call	ZBASE_ZERROR$LONGINT$$SHORTSTRING
	leal	-356(%ebp),%eax
	leal	-100(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-100(%ebp),%ecx
	movl	$VMT_ZSTREAM_ECOMPRESSIONERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La4:
	movl	%ebp,%ecx
	movl	$La4,%edx
	call	FPC_RAISEEXCEPTION
Lj353:
Lj328:
	call	FPC_POPADDRSTACK
	leal	-100(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-100(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj329
	call	FPC_RERAISE
Lj329:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj370
	jmp	Lj369
Lj370:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj368
	jmp	Lj369
Lj368:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj369:
Lj324:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj326
	leal	-112(%ebp),%ecx
	leal	-136(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj374
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj375
	jmp	Lj376
Lj375:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj376:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj374:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj373
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj373:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj326
Lj326:
Lj312:
	movl	-12(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	ZSTREAM_TDECOMPRESSIONSTREAM_$__READ$formal$LONGINT$$LONGINT
ZSTREAM_TDECOMPRESSIONSTREAM_$__READ$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-328(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj383
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-12(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,28(%edx)
	movl	-8(%ebp),%eax
	movl	%eax,-24(%ebp)
	jmp	Lj393
	.balign 4,0x90
Lj392:
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj395
	jmp	Lj396
Lj395:
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	308(%eax),%eax
	movl	%eax,12(%edx)
	movl	-12(%ebp),%eax
	movl	308(%eax),%edx
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	$16384,%ecx
	movl	-12(%ebp),%ebx
	movl	8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	-12(%ebp),%edx
	movl	%eax,16(%edx)
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	16(%eax),%eax
	addl	%eax,324(%edx)
	movl	-12(%ebp),%eax
	movl	28(%eax),%edx
	movl	-24(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	addl	%edx,320(%eax)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-24(%ebp)
	movl	-12(%ebp),%edx
	movl	-12(%ebp),%eax
	call	ZSTREAM_TCUSTOMZLIBSTREAM_$__PROGRESS$TOBJECT
Lj396:
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	movl	$0,%edx
	call	ZINFLATE_INFLATE$Z_STREAM$LONGINT$$LONGINT
	movw	%ax,-18(%ebp)
	movw	-18(%ebp),%ax
	cmpw	$1,%ax
	je	Lj419
	jmp	Lj420
Lj419:
	jmp	Lj394
Lj420:
	movw	-18(%ebp),%ax
	testw	%ax,%ax
	jne	Lj421
	jmp	Lj422
Lj421:
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	leal	-324(%ebp),%edx
	movswl	-18(%ebp),%eax
	call	ZBASE_ZERROR$LONGINT$$SHORTSTRING
	leal	-324(%ebp),%eax
	leal	-68(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-68(%ebp),%ecx
	movl	$VMT_ZSTREAM_EDECOMPRESSIONERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La5:
	movl	%ebp,%ecx
	movl	$La5,%edx
	call	FPC_RAISEEXCEPTION
Lj422:
Lj393:
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	testl	%eax,%eax
	jne	Lj392
	jmp	Lj394
Lj394:
	movw	-18(%ebp),%ax
	cmpw	$1,%ax
	je	Lj437
	jmp	Lj438
Lj437:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	16(%eax),%eax
	subl	%eax,324(%edx)
Lj438:
	movl	-12(%ebp),%eax
	movl	28(%eax),%edx
	movl	-24(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-12(%ebp),%eax
	addl	%edx,320(%eax)
	movl	-12(%ebp),%eax
	movl	28(%eax),%edx
	movl	-8(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	%edx,-16(%ebp)
Lj383:
	call	FPC_POPADDRSTACK
	leal	-68(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-68(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj384
	call	FPC_RERAISE
Lj384:
	movl	-16(%ebp),%eax
	movl	-328(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZSTREAM_TDECOMPRESSIONSTREAM_$__RESET
ZSTREAM_TDECOMPRESSIONSTREAM_$__RESET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$312,%esp
	movl	%ebx,-312(%ebp)
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj443
	movl	-4(%ebp),%eax
	movl	324(%eax),%edx
	negl	%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	$1,%cx
	movl	-4(%ebp),%ebx
	movl	8(%ebx),%ebx
	movl	(%ebx),%ebx
	call	*136(%ebx)
	movl	-4(%ebp),%eax
	movl	$0,320(%eax)
	movl	-4(%ebp),%eax
	movl	$0,324(%eax)
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	call	ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT
	movl	-4(%ebp),%eax
	cmpb	$0,328(%eax)
	jne	Lj458
	jmp	Lj459
Lj458:
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	movl	$-15,%edx
	call	ZINFLATE_INFLATEINIT2$Z_STREAM$LONGINT$$LONGINT
	movw	%ax,-6(%ebp)
	jmp	Lj466
Lj459:
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	call	ZINFLATE_INFLATEINIT$Z_STREAM$$LONGINT
	movw	%ax,-6(%ebp)
Lj466:
	movw	-6(%ebp),%ax
	testw	%ax,%ax
	jne	Lj471
	jmp	Lj472
Lj471:
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	leal	-308(%ebp),%edx
	movswl	-6(%ebp),%eax
	call	ZBASE_ZERROR$LONGINT$$SHORTSTRING
	leal	-308(%ebp),%eax
	leal	-52(%ebp),%edx
	call	fpc_shortstr_to_ansistr
	movl	-52(%ebp),%ecx
	movl	$VMT_ZSTREAM_EDECOMPRESSIONERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La6:
	movl	%ebp,%ecx
	movl	$La6,%edx
	call	FPC_RAISEEXCEPTION
Lj472:
Lj443:
	call	FPC_POPADDRSTACK
	leal	-52(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	movl	$0,-52(%ebp)
	popl	%eax
	testl	%eax,%eax
	je	Lj444
	call	FPC_RERAISE
Lj444:
	movl	-312(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZSTREAM_TDECOMPRESSIONSTREAM_$__GETPOSITION$$INT64
ZSTREAM_TDECOMPRESSIONSTREAM_$__GETPOSITION$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	320(%eax),%edx
	movl	%edx,%eax
	sarl	$31,%eax
	movl	%edx,-12(%ebp)
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	ZSTREAM_TDECOMPRESSIONSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
ZSTREAM_TDECOMPRESSIONSTREAM_$__SEEK$LONGINT$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-24(%ebp)
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj493
	jmp	Lj495
Lj495:
	movzwl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj496
	jmp	Lj494
Lj496:
	movl	-12(%ebp),%eax
	movl	320(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	cmpl	$0,%eax
	jge	Lj493
	jmp	Lj494
Lj493:
	movzwl	-8(%ebp),%eax
	cmpl	$1,%eax
	je	Lj497
	jmp	Lj498
Lj497:
	movl	-12(%ebp),%eax
	movl	320(%eax),%edx
	movl	-4(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	jmp	Lj501
Lj498:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj501:
	movzwl	-8(%ebp),%eax
	testl	%eax,%eax
	je	Lj504
	jmp	Lj505
Lj504:
	movl	-12(%ebp),%eax
	movl	320(%eax),%eax
	subl	%eax,-4(%ebp)
Lj505:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jl	Lj506
	jmp	Lj507
Lj506:
	movl	-12(%ebp),%eax
	movl	320(%eax),%eax
	addl	%eax,-4(%ebp)
	movl	-12(%ebp),%eax
	call	ZSTREAM_TDECOMPRESSIONSTREAM_$__RESET
Lj507:
	jmp	Lj511
	.balign 4,0x90
Lj510:
	movl	-4(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$16384,%eax
	jg	Lj515
	jmp	Lj516
Lj515:
	movl	$16384,-20(%ebp)
Lj516:
	movl	-12(%ebp),%eax
	movl	308(%eax),%edx
	movl	-20(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%ebx
	movl	(%ebx),%ebx
	call	*128(%ebx)
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	subl	%eax,-4(%ebp)
Lj511:
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj510
	jmp	Lj512
Lj512:
	jmp	Lj527
Lj494:
	movl	RESSTR_ZSTREAM_SSEEK_FAILED+4,%ecx
	movl	$VMT_ZSTREAM_EDECOMPRESSIONERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La7:
	movl	%ebp,%ecx
	movl	$La7,%edx
	call	FPC_RAISEEXCEPTION
Lj527:
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	leave
	ret

.text
	.balign 4,0x90
.globl	ZSTREAM_TDECOMPRESSIONSTREAM_$__GET_COMPRESSIONRATE$$SINGLE
ZSTREAM_TDECOMPRESSIONSTREAM_$__GET_COMPRESSIONRATE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	324(%eax),%eax
	imull	$100,%eax
	movl	%eax,-12(%ebp)
	fildl	-12(%ebp)
	movl	-4(%ebp),%eax
	fildl	320(%eax)
	fdivrp	%st,%st(1)
	fstps	-8(%ebp)
	flds	-8(%ebp)
	leave
	ret

.text
	.balign 4,0x90
.globl	ZSTREAM_TDECOMPRESSIONSTREAM_$__DESTROY
ZSTREAM_TDECOMPRESSIONSTREAM_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj540
	jmp	Lj541
Lj540:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj541:
	movl	-8(%ebp),%eax
	leal	12(%eax),%eax
	call	ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	ZSTREAM_TCUSTOMZLIBSTREAM_$__DESTROY
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj552
	jmp	Lj551
Lj552:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj550
	jmp	Lj551
Lj550:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj551:
	leave
	ret

.text
	.balign 4,0x90
.globl	ZSTREAM_TGZFILESTREAM_$__CREATE$ANSISTRING$TGZOPENMODE$$TGZFILESTREAM
ZSTREAM_TGZFILESTREAM_$__CREATE$ANSISTRING$TGZOPENMODE$$TGZFILESTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$348,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	FPC_ANSISTR_INCR_REF
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	ja	Lj557
	jmp	Lj558
Lj557:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	call	*52(%edx)
	movl	%eax,-12(%ebp)
Lj558:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj563
	jmp	Lj564
Lj563:
	jmp	Lj555
Lj564:
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj567
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj571
	movl	8(%ebp),%eax
	testl	%eax,%eax
	je	Lj574
	jmp	Lj575
Lj574:
	movl	-4(%ebp),%ecx
	leal	-348(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	leal	-348(%ebp),%eax
	movl	$_$ZSTREAM$_Ld1,%edx
	call	GZIO_GZOPEN$SHORTSTRING$SHORTSTRING$$POINTER
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	jmp	Lj588
Lj575:
	movl	-4(%ebp),%ecx
	leal	-348(%ebp),%eax
	movl	$255,%edx
	call	fpc_ansistr_to_shortstr
	leal	-348(%ebp),%eax
	movl	$_$ZSTREAM$_Ld2,%edx
	call	GZIO_GZOPEN$SHORTSTRING$SHORTSTRING$$POINTER
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
Lj588:
	movl	-12(%ebp),%edx
	movl	8(%ebp),%eax
	movl	%eax,8(%edx)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj603
	jmp	Lj604
Lj603:
	movl	-4(%ebp),%eax
	movl	%eax,-96(%ebp)
	movl	$11,-100(%ebp)
	leal	-100(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	RESSTR_ZSTREAM_SGZ_OPEN_ERROR+4,%ecx
	movl	$VMT_ZSTREAM_EGZFILEERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
La8:
	movl	%ebp,%ecx
	movl	$La8,%edx
	call	FPC_RAISEEXCEPTION
Lj604:
Lj571:
	call	FPC_POPADDRSTACK
	leal	-4(%ebp),%eax
	call	FPC_ANSISTR_DECR_REF
	popl	%eax
	testl	%eax,%eax
	je	Lj572
	call	FPC_RERAISE
Lj572:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	jne	Lj617
	jmp	Lj616
Lj617:
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj615
	jmp	Lj616
Lj615:
	movl	-12(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	(%edx),%edx
	call	*68(%edx)
Lj616:
Lj567:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj569
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	FPC_PUSHEXCEPTADDR
	call	FPC_SETJMP
	pushl	%eax
	testl	%eax,%eax
	jne	Lj621
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj622
	jmp	Lj623
Lj622:
	movl	-12(%ebp),%eax
	movl	$-1,%edx
	movl	-12(%ebp),%ecx
	movl	(%ecx),%ecx
	call	*48(%ecx)
Lj623:
	call	FPC_POPADDRSTACK
	call	FPC_RERAISE
Lj621:
	call	FPC_POPADDRSTACK
	popl	%eax
	testl	%eax,%eax
	je	Lj620
	call	FPC_POPSECONDOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	call	FPC_RERAISE
Lj620:
	call	FPC_POPOBJECTSTACK
	call	FPC_DESTROYEXCEPTION
	jmp	Lj569
Lj569:
Lj555:
	movl	-12(%ebp),%eax
	leave
	ret	$4

.text
	.balign 4,0x90
.globl	ZSTREAM_TGZFILESTREAM_$__READ$formal$LONGINT$$LONGINT
ZSTREAM_TGZFILESTREAM_$__READ$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$1,%eax
	je	Lj630
	jmp	Lj631
Lj630:
	movl	RESSTR_ZSTREAM_SGZ_WRITE_ONLY+4,%ecx
	movl	$VMT_ZSTREAM_EGZFILEERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La9:
	movl	%ebp,%ecx
	movl	$La9,%edx
	call	FPC_RAISEEXCEPTION
Lj631:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	call	GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	ZSTREAM_TGZFILESTREAM_$__WRITE$formal$LONGINT$$LONGINT
ZSTREAM_TGZFILESTREAM_$__WRITE$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj648
	jmp	Lj649
Lj648:
	movl	RESSTR_ZSTREAM_SGZ_WRITE_ONLY+4,%ecx
	movl	$VMT_ZSTREAM_EGZFILEERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La10:
	movl	%ebp,%ecx
	movl	$La10,%edx
	call	FPC_RAISEEXCEPTION
Lj649:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	call	GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	ZSTREAM_TGZFILESTREAM_$__SEEK$LONGINT$WORD$$LONGINT
ZSTREAM_TGZFILESTREAM_$__SEEK$LONGINT$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movzwl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	GZIO_GZSEEK$POINTER$LONGINT$LONGINT$$LONGINT
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj674
	jmp	Lj675
Lj674:
	movl	RESSTR_ZSTREAM_SSEEK_FAILED+4,%ecx
	movl	$VMT_ZSTREAM_EGZFILEERROR,%edx
	movl	$0,%eax
	call	SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
La11:
	movl	%ebp,%ecx
	movl	$La11,%edx
	call	FPC_RAISEEXCEPTION
Lj675:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.balign 4,0x90
.globl	ZSTREAM_TGZFILESTREAM_$__DESTROY
ZSTREAM_TGZFILESTREAM_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-8(%ebp)
	movl	%edx,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,%eax
	jg	Lj684
	jmp	Lj685
Lj684:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*72(%edx)
Lj685:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	call	GZIO_GZCLOSE$POINTER$$LONGINT
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	SYSTEM_TOBJECT_$__DESTROY
	movl	-8(%ebp),%eax
	testl	%eax,%eax
	jne	Lj696
	jmp	Lj695
Lj696:
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj694
	jmp	Lj695
Lj694:
	movl	-8(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	(%edx),%edx
	call	*56(%edx)
Lj695:
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.balign 4
.globl	_$ZSTREAM$_Ld3
_$ZSTREAM$_Ld3:
	.byte	17
	.ascii	"Tcustomzlibstream"

.data
	.balign 4
.globl	VMT_ZSTREAM_TCUSTOMZLIBSTREAM
VMT_ZSTREAM_TCUSTOMZLIBSTREAM:
	.long	320,-320
	.long	VMT_CLASSES_TOWNERSTREAM
	.long	_$ZSTREAM$_Ld3
	.long	0,0
	.long	_$ZSTREAM$_Ld4
	.long	RTTI_ZSTREAM_TCUSTOMZLIBSTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	ZSTREAM_TCUSTOMZLIBSTREAM_$__DESTROY
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
	.long	CLASSES_TSTREAM_$__INVALIDSEEK
	.long	CLASSES_TSTREAM_$__GETPOSITION$$INT64
	.long	CLASSES_TSTREAM_$__SETPOSITION$INT64
	.long	CLASSES_TSTREAM_$__GETSIZE$$INT64
	.long	CLASSES_TSTREAM_$__SETSIZE64$INT64
	.long	CLASSES_TSTREAM_$__SETSIZE$LONGINT
	.long	CLASSES_TSTREAM_$__SETSIZE$INT64
	.long	CLASSES_TSTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	CLASSES_TSTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	CLASSES_TSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	CLASSES_TSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	0

.data
	.balign 4
.globl	_$ZSTREAM$_Ld6
_$ZSTREAM$_Ld6:
	.byte	18
	.ascii	"Tcompressionstream"

.data
	.balign 4
.globl	VMT_ZSTREAM_TCOMPRESSIONSTREAM
VMT_ZSTREAM_TCOMPRESSIONSTREAM:
	.long	328,-328
	.long	VMT_ZSTREAM_TCUSTOMZLIBSTREAM
	.long	_$ZSTREAM$_Ld6
	.long	0,0
	.long	_$ZSTREAM$_Ld7
	.long	RTTI_ZSTREAM_TCOMPRESSIONSTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	ZSTREAM_TCOMPRESSIONSTREAM_$__DESTROY
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
	.long	CLASSES_TSTREAM_$__INVALIDSEEK
	.long	CLASSES_TSTREAM_$__GETPOSITION$$INT64
	.long	CLASSES_TSTREAM_$__SETPOSITION$INT64
	.long	CLASSES_TSTREAM_$__GETSIZE$$INT64
	.long	CLASSES_TSTREAM_$__SETSIZE64$INT64
	.long	CLASSES_TSTREAM_$__SETSIZE$LONGINT
	.long	CLASSES_TSTREAM_$__SETSIZE$INT64
	.long	CLASSES_TSTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	ZSTREAM_TCOMPRESSIONSTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	CLASSES_TSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	CLASSES_TSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	0

.data
	.balign 4
.globl	_$ZSTREAM$_Ld9
_$ZSTREAM$_Ld9:
	.byte	20
	.ascii	"Tdecompressionstream"

.data
	.balign 4
.globl	VMT_ZSTREAM_TDECOMPRESSIONSTREAM
VMT_ZSTREAM_TDECOMPRESSIONSTREAM:
	.long	332,-332
	.long	VMT_ZSTREAM_TCUSTOMZLIBSTREAM
	.long	_$ZSTREAM$_Ld9
	.long	0,0
	.long	_$ZSTREAM$_Ld10
	.long	RTTI_ZSTREAM_TDECOMPRESSIONSTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	ZSTREAM_TDECOMPRESSIONSTREAM_$__DESTROY
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
	.long	CLASSES_TSTREAM_$__INVALIDSEEK
	.long	ZSTREAM_TDECOMPRESSIONSTREAM_$__GETPOSITION$$INT64
	.long	CLASSES_TSTREAM_$__SETPOSITION$INT64
	.long	CLASSES_TSTREAM_$__GETSIZE$$INT64
	.long	CLASSES_TSTREAM_$__SETSIZE64$INT64
	.long	CLASSES_TSTREAM_$__SETSIZE$LONGINT
	.long	CLASSES_TSTREAM_$__SETSIZE$INT64
	.long	ZSTREAM_TDECOMPRESSIONSTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	CLASSES_TSTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	ZSTREAM_TDECOMPRESSIONSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	CLASSES_TSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	0

.data
	.balign 4
.globl	_$ZSTREAM$_Ld12
_$ZSTREAM$_Ld12:
	.byte	13
	.ascii	"TGZFileStream"

.data
	.balign 4
.globl	VMT_ZSTREAM_TGZFILESTREAM
VMT_ZSTREAM_TGZFILESTREAM:
	.long	12,-12
	.long	VMT_CLASSES_TSTREAM
	.long	_$ZSTREAM$_Ld12
	.long	0,0
	.long	_$ZSTREAM$_Ld13
	.long	RTTI_ZSTREAM_TGZFILESTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	ZSTREAM_TGZFILESTREAM_$__DESTROY
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
	.long	CLASSES_TSTREAM_$__INVALIDSEEK
	.long	CLASSES_TSTREAM_$__GETPOSITION$$INT64
	.long	CLASSES_TSTREAM_$__SETPOSITION$INT64
	.long	CLASSES_TSTREAM_$__GETSIZE$$INT64
	.long	CLASSES_TSTREAM_$__SETSIZE64$INT64
	.long	CLASSES_TSTREAM_$__SETSIZE$LONGINT
	.long	CLASSES_TSTREAM_$__SETSIZE$INT64
	.long	ZSTREAM_TGZFILESTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	ZSTREAM_TGZFILESTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	ZSTREAM_TGZFILESTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	CLASSES_TSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	0

.data
	.balign 4
.globl	_$ZSTREAM$_Ld15
_$ZSTREAM$_Ld15:
	.byte	10
	.ascii	"Ezliberror"

.data
	.balign 4
.globl	VMT_ZSTREAM_EZLIBERROR
VMT_ZSTREAM_EZLIBERROR:
	.long	12,-12
	.long	VMT_CLASSES_ESTREAMERROR
	.long	_$ZSTREAM$_Ld15
	.long	0,0
	.long	_$ZSTREAM$_Ld16
	.long	RTTI_ZSTREAM_EZLIBERROR
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
.globl	_$ZSTREAM$_Ld18
_$ZSTREAM$_Ld18:
	.byte	12
	.ascii	"Egzfileerror"

.data
	.balign 4
.globl	VMT_ZSTREAM_EGZFILEERROR
VMT_ZSTREAM_EGZFILEERROR:
	.long	12,-12
	.long	VMT_ZSTREAM_EZLIBERROR
	.long	_$ZSTREAM$_Ld18
	.long	0,0
	.long	_$ZSTREAM$_Ld19
	.long	RTTI_ZSTREAM_EGZFILEERROR
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
.globl	_$ZSTREAM$_Ld21
_$ZSTREAM$_Ld21:
	.byte	17
	.ascii	"Ecompressionerror"

.data
	.balign 4
.globl	VMT_ZSTREAM_ECOMPRESSIONERROR
VMT_ZSTREAM_ECOMPRESSIONERROR:
	.long	12,-12
	.long	VMT_ZSTREAM_EZLIBERROR
	.long	_$ZSTREAM$_Ld21
	.long	0,0
	.long	_$ZSTREAM$_Ld22
	.long	RTTI_ZSTREAM_ECOMPRESSIONERROR
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
.globl	_$ZSTREAM$_Ld24
_$ZSTREAM$_Ld24:
	.byte	19
	.ascii	"Edecompressionerror"

.data
	.balign 4
.globl	VMT_ZSTREAM_EDECOMPRESSIONERROR
VMT_ZSTREAM_EDECOMPRESSIONERROR:
	.long	12,-12
	.long	VMT_ZSTREAM_EZLIBERROR
	.long	_$ZSTREAM$_Ld24
	.long	0,0
	.long	_$ZSTREAM$_Ld25
	.long	RTTI_ZSTREAM_EDECOMPRESSIONERROR
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
.globl	THREADVARLIST_ZSTREAM
THREADVARLIST_ZSTREAM:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.balign 4
	.short	0,1
	.long	-1,7
.globl	_$ZSTREAM$_Ld27
_$ZSTREAM$_Ld27:
	.ascii	"ZSTREAM\000"

.data
	.balign 4
	.short	0,1
	.long	-1,39
.globl	_$ZSTREAM$_Ld28
_$ZSTREAM$_Ld28:
	.ascii	"Could not open gzip compressed file %s.\000"
	.balign 4
	.short	0,1
	.long	-1,22
.globl	_$ZSTREAM$_Ld29
_$ZSTREAM$_Ld29:
	.ascii	"zstream.sgz_open_error\000"

.data
	.balign 4
	.short	0,1
	.long	-1,44
.globl	_$ZSTREAM$_Ld30
_$ZSTREAM$_Ld30:
	.ascii	"Gzip compressed file was opened for reading.\000"
	.balign 4
	.short	0,1
	.long	-1,21
.globl	_$ZSTREAM$_Ld31
_$ZSTREAM$_Ld31:
	.ascii	"zstream.sgz_read_only\000"

.data
	.balign 4
	.short	0,1
	.long	-1,44
.globl	_$ZSTREAM$_Ld32
_$ZSTREAM$_Ld32:
	.ascii	"Gzip compressed file was opened for writing.\000"
	.balign 4
	.short	0,1
	.long	-1,22
.globl	_$ZSTREAM$_Ld33
_$ZSTREAM$_Ld33:
	.ascii	"zstream.sgz_write_only\000"

.data
	.balign 4
	.short	0,1
	.long	-1,41
.globl	_$ZSTREAM$_Ld34
_$ZSTREAM$_Ld34:
	.ascii	"Seek in deflate compressed stream failed.\000"
	.balign 4
	.short	0,1
	.long	-1,20
.globl	_$ZSTREAM$_Ld35
_$ZSTREAM$_Ld35:
	.ascii	"zstream.sseek_failed\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.balign 4
.globl	_$ZSTREAM$_Ld1
_$ZSTREAM$_Ld1:
	.ascii	"\002rb\000"

.data
	.balign 4
.globl	_$ZSTREAM$_Ld2
_$ZSTREAM$_Ld2:
	.ascii	"\002wb\000"
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
.globl	INIT_ZSTREAM_TCOMPRESSIONLEVEL
INIT_ZSTREAM_TCOMPRESSIONLEVEL:
	.byte	3,17
	.ascii	"Tcompressionlevel"
	.byte	5
	.long	0,3,0
	.byte	6
	.ascii	"clnone"
	.byte	9
	.ascii	"clfastest"
	.byte	9
	.ascii	"cldefault"
	.byte	5
	.ascii	"clmax"
	.byte	7
	.ascii	"zstream"
	.byte	0

.data
	.balign 4
.globl	RTTI_ZSTREAM_TCOMPRESSIONLEVEL
RTTI_ZSTREAM_TCOMPRESSIONLEVEL:
	.byte	3,17
	.ascii	"Tcompressionlevel"
	.byte	5
	.long	0,3,0
	.byte	6
	.ascii	"clnone"
	.byte	9
	.ascii	"clfastest"
	.byte	9
	.ascii	"cldefault"
	.byte	5
	.ascii	"clmax"
	.byte	7
	.ascii	"zstream"
	.byte	0

.data
	.balign 4
.globl	RTTI_ZSTREAM_TCOMPRESSIONLEVEL_s2o
RTTI_ZSTREAM_TCOMPRESSIONLEVEL_s2o:
	.long	4,2
	.long	RTTI_ZSTREAM_TCOMPRESSIONLEVEL+49
	.long	1
	.long	RTTI_ZSTREAM_TCOMPRESSIONLEVEL+39
	.long	3
	.long	RTTI_ZSTREAM_TCOMPRESSIONLEVEL+59
	.long	0
	.long	RTTI_ZSTREAM_TCOMPRESSIONLEVEL+32

.data
	.balign 4
.globl	RTTI_ZSTREAM_TCOMPRESSIONLEVEL_o2s
RTTI_ZSTREAM_TCOMPRESSIONLEVEL_o2s:
	.long	0
	.long	RTTI_ZSTREAM_TCOMPRESSIONLEVEL+32
	.long	RTTI_ZSTREAM_TCOMPRESSIONLEVEL+39
	.long	RTTI_ZSTREAM_TCOMPRESSIONLEVEL+49
	.long	RTTI_ZSTREAM_TCOMPRESSIONLEVEL+59

.data
	.balign 4
.globl	INIT_ZSTREAM_TGZOPENMODE
INIT_ZSTREAM_TGZOPENMODE:
	.byte	3,11
	.ascii	"Tgzopenmode"
	.byte	5
	.long	0,1,0
	.byte	10
	.ascii	"gzopenread"
	.byte	11
	.ascii	"gzopenwrite"
	.byte	7
	.ascii	"zstream"
	.byte	0

.data
	.balign 4
.globl	RTTI_ZSTREAM_TGZOPENMODE
RTTI_ZSTREAM_TGZOPENMODE:
	.byte	3,11
	.ascii	"Tgzopenmode"
	.byte	5
	.long	0,1,0
	.byte	10
	.ascii	"gzopenread"
	.byte	11
	.ascii	"gzopenwrite"
	.byte	7
	.ascii	"zstream"
	.byte	0

.data
	.balign 4
.globl	RTTI_ZSTREAM_TGZOPENMODE_s2o
RTTI_ZSTREAM_TGZOPENMODE_s2o:
	.long	2,0
	.long	RTTI_ZSTREAM_TGZOPENMODE+26
	.long	1
	.long	RTTI_ZSTREAM_TGZOPENMODE+37

.data
	.balign 4
.globl	RTTI_ZSTREAM_TGZOPENMODE_o2s
RTTI_ZSTREAM_TGZOPENMODE_o2s:
	.long	0
	.long	RTTI_ZSTREAM_TGZOPENMODE+26
	.long	RTTI_ZSTREAM_TGZOPENMODE+37

.data
	.balign 4
.globl	_$ZSTREAM$_Ld4
_$ZSTREAM$_Ld4:
	.short	0
	.long	_$ZSTREAM$_Ld5
	.balign 4
.globl	_$ZSTREAM$_Ld5
_$ZSTREAM$_Ld5:
	.short	0

.data
	.balign 4
.globl	INIT_ZSTREAM_TCUSTOMZLIBSTREAM
INIT_ZSTREAM_TCUSTOMZLIBSTREAM:
	.byte	15,17
	.ascii	"Tcustomzlibstream"
	.long	4,0

.data
	.balign 4
.globl	RTTI_ZSTREAM_TCUSTOMZLIBSTREAM
RTTI_ZSTREAM_TCUSTOMZLIBSTREAM:
	.byte	15,17
	.ascii	"Tcustomzlibstream"
	.long	VMT_ZSTREAM_TCUSTOMZLIBSTREAM
	.long	RTTI_CLASSES_TOWNERSTREAM
	.short	0
	.byte	7
	.ascii	"zstream"
	.short	0

.data
	.balign 4
.globl	_$ZSTREAM$_Ld7
_$ZSTREAM$_Ld7:
	.short	0
	.long	_$ZSTREAM$_Ld8
	.balign 4
.globl	_$ZSTREAM$_Ld8
_$ZSTREAM$_Ld8:
	.short	0

.data
	.balign 4
.globl	INIT_ZSTREAM_TCOMPRESSIONSTREAM
INIT_ZSTREAM_TCOMPRESSIONSTREAM:
	.byte	15,18
	.ascii	"Tcompressionstream"
	.long	4,0

.data
	.balign 4
.globl	RTTI_ZSTREAM_TCOMPRESSIONSTREAM
RTTI_ZSTREAM_TCOMPRESSIONSTREAM:
	.byte	15,18
	.ascii	"Tcompressionstream"
	.long	VMT_ZSTREAM_TCOMPRESSIONSTREAM
	.long	RTTI_ZSTREAM_TCUSTOMZLIBSTREAM
	.short	0
	.byte	7
	.ascii	"zstream"
	.short	0

.data
	.balign 4
.globl	_$ZSTREAM$_Ld10
_$ZSTREAM$_Ld10:
	.short	0
	.long	_$ZSTREAM$_Ld11
	.balign 4
.globl	_$ZSTREAM$_Ld11
_$ZSTREAM$_Ld11:
	.short	0

.data
	.balign 4
.globl	INIT_ZSTREAM_TDECOMPRESSIONSTREAM
INIT_ZSTREAM_TDECOMPRESSIONSTREAM:
	.byte	15,20
	.ascii	"Tdecompressionstream"
	.long	4,0

.data
	.balign 4
.globl	RTTI_ZSTREAM_TDECOMPRESSIONSTREAM
RTTI_ZSTREAM_TDECOMPRESSIONSTREAM:
	.byte	15,20
	.ascii	"Tdecompressionstream"
	.long	VMT_ZSTREAM_TDECOMPRESSIONSTREAM
	.long	RTTI_ZSTREAM_TCUSTOMZLIBSTREAM
	.short	0
	.byte	7
	.ascii	"zstream"
	.short	0

.data
	.balign 4
.globl	INIT_ZSTREAM_DEF86
INIT_ZSTREAM_DEF86:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	INIT_SYSTEM_ANSISTRING
	.long	256

.data
	.balign 4
.globl	_$ZSTREAM$_Ld13
_$ZSTREAM$_Ld13:
	.short	0
	.long	_$ZSTREAM$_Ld14
	.balign 4
.globl	_$ZSTREAM$_Ld14
_$ZSTREAM$_Ld14:
	.short	0

.data
	.balign 4
.globl	INIT_ZSTREAM_TGZFILESTREAM
INIT_ZSTREAM_TGZFILESTREAM:
	.byte	15,13
	.ascii	"TGZFileStream"
	.long	4,0

.data
	.balign 4
.globl	RTTI_ZSTREAM_TGZFILESTREAM
RTTI_ZSTREAM_TGZFILESTREAM:
	.byte	15,13
	.ascii	"TGZFileStream"
	.long	VMT_ZSTREAM_TGZFILESTREAM
	.long	RTTI_CLASSES_TSTREAM
	.short	0
	.byte	7
	.ascii	"zstream"
	.short	0

.data
	.balign 4
.globl	_$ZSTREAM$_Ld16
_$ZSTREAM$_Ld16:
	.short	0
	.long	_$ZSTREAM$_Ld17
	.balign 4
.globl	_$ZSTREAM$_Ld17
_$ZSTREAM$_Ld17:
	.short	0

.data
	.balign 4
.globl	INIT_ZSTREAM_EZLIBERROR
INIT_ZSTREAM_EZLIBERROR:
	.byte	15,10
	.ascii	"Ezliberror"
	.long	4,0

.data
	.balign 4
.globl	RTTI_ZSTREAM_EZLIBERROR
RTTI_ZSTREAM_EZLIBERROR:
	.byte	15,10
	.ascii	"Ezliberror"
	.long	VMT_ZSTREAM_EZLIBERROR
	.long	RTTI_CLASSES_ESTREAMERROR
	.short	0
	.byte	7
	.ascii	"zstream"
	.short	0

.data
	.balign 4
.globl	_$ZSTREAM$_Ld19
_$ZSTREAM$_Ld19:
	.short	0
	.long	_$ZSTREAM$_Ld20
	.balign 4
.globl	_$ZSTREAM$_Ld20
_$ZSTREAM$_Ld20:
	.short	0

.data
	.balign 4
.globl	INIT_ZSTREAM_EGZFILEERROR
INIT_ZSTREAM_EGZFILEERROR:
	.byte	15,12
	.ascii	"Egzfileerror"
	.long	4,0

.data
	.balign 4
.globl	RTTI_ZSTREAM_EGZFILEERROR
RTTI_ZSTREAM_EGZFILEERROR:
	.byte	15,12
	.ascii	"Egzfileerror"
	.long	VMT_ZSTREAM_EGZFILEERROR
	.long	RTTI_ZSTREAM_EZLIBERROR
	.short	0
	.byte	7
	.ascii	"zstream"
	.short	0

.data
	.balign 4
.globl	_$ZSTREAM$_Ld22
_$ZSTREAM$_Ld22:
	.short	0
	.long	_$ZSTREAM$_Ld23
	.balign 4
.globl	_$ZSTREAM$_Ld23
_$ZSTREAM$_Ld23:
	.short	0

.data
	.balign 4
.globl	INIT_ZSTREAM_ECOMPRESSIONERROR
INIT_ZSTREAM_ECOMPRESSIONERROR:
	.byte	15,17
	.ascii	"Ecompressionerror"
	.long	4,0

.data
	.balign 4
.globl	RTTI_ZSTREAM_ECOMPRESSIONERROR
RTTI_ZSTREAM_ECOMPRESSIONERROR:
	.byte	15,17
	.ascii	"Ecompressionerror"
	.long	VMT_ZSTREAM_ECOMPRESSIONERROR
	.long	RTTI_ZSTREAM_EZLIBERROR
	.short	0
	.byte	7
	.ascii	"zstream"
	.short	0

.data
	.balign 4
.globl	_$ZSTREAM$_Ld25
_$ZSTREAM$_Ld25:
	.short	0
	.long	_$ZSTREAM$_Ld26
	.balign 4
.globl	_$ZSTREAM$_Ld26
_$ZSTREAM$_Ld26:
	.short	0

.data
	.balign 4
.globl	INIT_ZSTREAM_EDECOMPRESSIONERROR
INIT_ZSTREAM_EDECOMPRESSIONERROR:
	.byte	15,19
	.ascii	"Edecompressionerror"
	.long	4,0

.data
	.balign 4
.globl	RTTI_ZSTREAM_EDECOMPRESSIONERROR
RTTI_ZSTREAM_EDECOMPRESSIONERROR:
	.byte	15,19
	.ascii	"Edecompressionerror"
	.long	VMT_ZSTREAM_EDECOMPRESSIONERROR
	.long	RTTI_ZSTREAM_EZLIBERROR
	.short	0
	.byte	7
	.ascii	"zstream"
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
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.balign 4
.globl	RESSTR_ZSTREAM_START
RESSTR_ZSTREAM_START:
	.long	_$ZSTREAM$_Ld27
	.long	0,0,0

.data
	.balign 4
.globl	RESSTR_ZSTREAM_SGZ_OPEN_ERROR
RESSTR_ZSTREAM_SGZ_OPEN_ERROR:
	.long	_$ZSTREAM$_Ld29
	.long	_$ZSTREAM$_Ld28
	.long	_$ZSTREAM$_Ld28
	.long	68773182

.data
	.balign 4
.globl	RESSTR_ZSTREAM_SGZ_READ_ONLY
RESSTR_ZSTREAM_SGZ_READ_ONLY:
	.long	_$ZSTREAM$_Ld31
	.long	_$ZSTREAM$_Ld30
	.long	_$ZSTREAM$_Ld30
	.long	44507406

.data
	.balign 4
.globl	RESSTR_ZSTREAM_SGZ_WRITE_ONLY
RESSTR_ZSTREAM_SGZ_WRITE_ONLY:
	.long	_$ZSTREAM$_Ld33
	.long	_$ZSTREAM$_Ld32
	.long	_$ZSTREAM$_Ld32
	.long	47653230

.data
	.balign 4
.globl	RESSTR_ZSTREAM_SSEEK_FAILED
RESSTR_ZSTREAM_SSEEK_FAILED:
	.long	_$ZSTREAM$_Ld35
	.long	_$ZSTREAM$_Ld34
	.long	_$ZSTREAM$_Ld34
	.long	247151982

.data
	.balign 4
.globl	RESSTR_ZSTREAM_END
RESSTR_ZSTREAM_END:
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end

