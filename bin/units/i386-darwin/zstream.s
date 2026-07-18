# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_ZSTREAM_TCUSTOMZLIBSTREAM_$__CREATE$TSTREAM$$TCUSTOMZLIBSTREAM
_ZSTREAM_TCUSTOMZLIBSTREAM_$__CREATE$TSTREAM$$TCUSTOMZLIBSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$104,%esp
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
	call	L_CLASSES_TOWNERSTREAM_$__CREATE$TSTREAM$$TOWNERSTREAM$stub
	movl	-12(%ebp),%eax
	leal	308(%eax),%eax
	movl	$16384,%edx
	call	L_SYSTEM_GETMEM$POINTER$LONGWORD$stub
Lj19:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj20
	call	LFPC_RERAISE$stub
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
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj38:
	call	LFPC_POPADDRSTACK$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj37
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj37:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj17
Lj17:
Lj3:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_ZSTREAM_TCUSTOMZLIBSTREAM_$__PROGRESS$TOBJECT
_ZSTREAM_TCUSTOMZLIBSTREAM_$__PROGRESS$TOBJECT:
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
	.align 4
.globl	_ZSTREAM_TCUSTOMZLIBSTREAM_$__DESTROY
_ZSTREAM_TCUSTOMZLIBSTREAM_$__DESTROY:
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
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_CLASSES_TOWNERSTREAM_$__DESTROY$stub
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
.globl	_ZSTREAM_TCOMPRESSIONSTREAM_$__CREATE$TCOMPRESSIONLEVEL$TSTREAM$BOOLEAN$$TCOMPRESSIONSTREAM
_ZSTREAM_TCOMPRESSIONSTREAM_$__CREATE$TCOMPRESSIONLEVEL$TSTREAM$BOOLEAN$$TCOMPRESSIONSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$376,%esp
	movl	%ebx,-360(%ebp)
	call	Lj71
Lj71:
	popl	%ebx
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
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj82
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj86
	movl	12(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_ZSTREAM_TCUSTOMZLIBSTREAM_$__CREATE$TSTREAM$$TCUSTOMZLIBSTREAM$stub
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
	movl	$0,(%esp)
	movl	$8,4(%esp)
	movl	$-15,8(%esp)
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	movswl	-16(%ebp),%edx
	movl	$8,%ecx
	call	L_ZDEFLATE_DEFLATEINIT2$Z_STREAM$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$$LONGINT$stub
	movw	%ax,-14(%ebp)
	jmp	Lj129
Lj114:
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	movswl	-16(%ebp),%edx
	call	L_ZDEFLATE_DEFLATEINIT$Z_STREAM$LONGINT$$LONGINT$stub
	movw	%ax,-14(%ebp)
Lj129:
	movw	-14(%ebp),%ax
	testw	%ax,%ax
	jne	Lj136
	jmp	Lj137
Lj136:
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-356(%ebp),%edx
	movswl	-14(%ebp),%eax
	call	L_ZBASE_ZERROR$LONGINT$$SHORTSTRING$stub
	leal	-356(%ebp),%eax
	leal	-100(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-100(%ebp),%ecx
	movl	L_VMT_ZSTREAM_ECOMPRESSIONERROR$non_lazy_ptr-Lj71(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La1:
	movl	%ebp,%ecx
	leal	La1-Lj71(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj137:
Lj86:
	call	LFPC_POPADDRSTACK$stub
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj87
	call	LFPC_RERAISE$stub
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
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj84
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
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
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj158:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj157
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj157:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj84
Lj84:
Lj70:
	movl	-12(%ebp),%eax
	movl	-360(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZSTREAM_TCOMPRESSIONSTREAM_$__WRITE$formal$LONGINT$$LONGINT
_ZSTREAM_TCOMPRESSIONSTREAM_$__WRITE$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-336(%ebp)
	movl	%esi,-332(%ebp)
	call	Lj166
Lj166:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-72(%ebp)
	leal	-40(%ebp),%ecx
	leal	-64(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-68(%ebp)
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
	.align 2
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
	movl	-12(%ebp),%esi
	movl	8(%esi),%esi
	movl	(%esi),%esi
	call	*132(%esi)
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
	call	L_ZSTREAM_TCUSTOMZLIBSTREAM_$__PROGRESS$TOBJECT$stub
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
	call	L_ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT$stub
	movw	%ax,-18(%ebp)
	movw	-18(%ebp),%ax
	testw	%ax,%ax
	jne	Lj205
	jmp	Lj206
Lj205:
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	leal	-328(%ebp),%edx
	movswl	-18(%ebp),%eax
	call	L_ZBASE_ZERROR$LONGINT$$SHORTSTRING$stub
	leal	-328(%ebp),%eax
	leal	-72(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-72(%ebp),%ecx
	movl	L_VMT_ZSTREAM_ECOMPRESSIONERROR$non_lazy_ptr-Lj166(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La2:
	movl	%ebp,%ecx
	leal	La2-Lj166(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
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
	call	LFPC_POPADDRSTACK$stub
	leal	-72(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-72(%ebp)
	movl	-68(%ebp),%eax
	testl	%eax,%eax
	je	Lj168
	call	LFPC_RERAISE$stub
Lj168:
	movl	-16(%ebp),%eax
	movl	-336(%ebp),%ebx
	movl	-332(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZSTREAM_TCOMPRESSIONSTREAM_$__GET_COMPRESSIONRATE$$SINGLE
_ZSTREAM_TCOMPRESSIONSTREAM_$__GET_COMPRESSIONRATE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	.align 4
.globl	_ZSTREAM_TCOMPRESSIONSTREAM_$__FLUSH
_ZSTREAM_TCOMPRESSIONSTREAM_$__FLUSH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-320(%ebp)
	movl	%esi,-316(%ebp)
	call	Lj228
Lj228:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj229
	.align 2
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
	movl	-4(%ebp),%esi
	movl	8(%esi),%esi
	movl	(%esi),%esi
	call	*132(%esi)
	movl	%eax,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	%edx,324(%eax)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZSTREAM_TCUSTOMZLIBSTREAM_$__PROGRESS$TOBJECT$stub
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
	call	L_ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT$stub
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-312(%ebp),%edx
	movswl	-6(%ebp),%eax
	call	L_ZBASE_ZERROR$LONGINT$$SHORTSTRING$stub
	leal	-312(%ebp),%eax
	leal	-56(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-56(%ebp),%ecx
	movl	L_VMT_ZSTREAM_ECOMPRESSIONERROR$non_lazy_ptr-Lj228(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La3:
	movl	%ebp,%ecx
	leal	La3-Lj228(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
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
	call	L_CLASSES_TSTREAM_$__WRITEBUFFER$formal$LONGINT$stub
	movl	-4(%ebp),%eax
	movl	28(%eax),%edx
	movl	$16384,%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	addl	%edx,324(%eax)
	movl	-4(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_ZSTREAM_TCUSTOMZLIBSTREAM_$__PROGRESS$TOBJECT$stub
Lj278:
Lj229:
	call	LFPC_POPADDRSTACK$stub
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj230
	call	LFPC_RERAISE$stub
Lj230:
	movl	-320(%ebp),%ebx
	movl	-316(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZSTREAM_TCOMPRESSIONSTREAM_$__DESTROY
_ZSTREAM_TCOMPRESSIONSTREAM_$__DESTROY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
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
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj295
	movl	-8(%ebp),%eax
	call	L_ZSTREAM_TCOMPRESSIONSTREAM_$__FLUSH$stub
Lj295:
	call	LFPC_POPADDRSTACK$stub
	movl	-8(%ebp),%eax
	leal	12(%eax),%eax
	call	L_ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_ZSTREAM_TCUSTOMZLIBSTREAM_$__DESTROY$stub
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj296
	decl	%eax
	testl	%eax,%eax
	je	Lj297
Lj297:
	call	LFPC_RERAISE$stub
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
	.align 4
.globl	_ZSTREAM_TDECOMPRESSIONSTREAM_$__CREATE$TSTREAM$BOOLEAN$$TDECOMPRESSIONSTREAM
_ZSTREAM_TDECOMPRESSIONSTREAM_$__CREATE$TSTREAM$BOOLEAN$$TDECOMPRESSIONSTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$360,%esp
	movl	%ebx,-360(%ebp)
	call	Lj313
Lj313:
	popl	%ebx
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
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-56(%ebp)
	testl	%eax,%eax
	jne	Lj324
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
	testl	%eax,%eax
	jne	Lj328
	movl	-4(%ebp),%ecx
	movl	-12(%ebp),%eax
	movl	$0,%edx
	call	L_ZSTREAM_TCUSTOMZLIBSTREAM_$__CREATE$TSTREAM$$TCUSTOMZLIBSTREAM$stub
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
	call	L_ZINFLATE_INFLATEINIT2$Z_STREAM$LONGINT$$LONGINT$stub
	movw	%ax,-14(%ebp)
	jmp	Lj347
Lj340:
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	call	L_ZINFLATE_INFLATEINIT$Z_STREAM$$LONGINT$stub
	movw	%ax,-14(%ebp)
Lj347:
	movw	-14(%ebp),%ax
	testw	%ax,%ax
	jne	Lj352
	jmp	Lj353
Lj352:
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	leal	-356(%ebp),%edx
	movswl	-14(%ebp),%eax
	call	L_ZBASE_ZERROR$LONGINT$$SHORTSTRING$stub
	leal	-356(%ebp),%eax
	leal	-100(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-100(%ebp),%ecx
	movl	L_VMT_ZSTREAM_ECOMPRESSIONERROR$non_lazy_ptr-Lj313(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La4:
	movl	%ebp,%ecx
	leal	La4-Lj313(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj353:
Lj328:
	call	LFPC_POPADDRSTACK$stub
	leal	-100(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-100(%ebp)
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj329
	call	LFPC_RERAISE$stub
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
	call	LFPC_POPADDRSTACK$stub
	movl	-56(%ebp),%eax
	testl	%eax,%eax
	je	Lj326
	leal	-68(%ebp),%ecx
	leal	-92(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-96(%ebp)
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
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj374:
	call	LFPC_POPADDRSTACK$stub
	movl	-96(%ebp),%eax
	testl	%eax,%eax
	je	Lj373
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj373:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj326
Lj326:
Lj312:
	movl	-12(%ebp),%eax
	movl	-360(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZSTREAM_TDECOMPRESSIONSTREAM_$__READ$formal$LONGINT$$LONGINT
_ZSTREAM_TDECOMPRESSIONSTREAM_$__READ$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-332(%ebp)
	movl	%esi,-328(%ebp)
	call	Lj382
Lj382:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	$0,-68(%ebp)
	leal	-36(%ebp),%ecx
	leal	-60(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-64(%ebp)
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
	.align 2
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
	movl	-12(%ebp),%esi
	movl	8(%esi),%esi
	movl	(%esi),%esi
	call	*128(%esi)
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
	call	L_ZSTREAM_TCUSTOMZLIBSTREAM_$__PROGRESS$TOBJECT$stub
Lj396:
	movl	-12(%ebp),%eax
	leal	12(%eax),%eax
	movl	$0,%edx
	call	L_ZINFLATE_INFLATE$Z_STREAM$LONGINT$$LONGINT$stub
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
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	leal	-324(%ebp),%edx
	movswl	-18(%ebp),%eax
	call	L_ZBASE_ZERROR$LONGINT$$SHORTSTRING$stub
	leal	-324(%ebp),%eax
	leal	-68(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-68(%ebp),%ecx
	movl	L_VMT_ZSTREAM_EDECOMPRESSIONERROR$non_lazy_ptr-Lj382(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La5:
	movl	%ebp,%ecx
	leal	La5-Lj382(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
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
	call	LFPC_POPADDRSTACK$stub
	leal	-68(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-68(%ebp)
	movl	-64(%ebp),%eax
	testl	%eax,%eax
	je	Lj384
	call	LFPC_RERAISE$stub
Lj384:
	movl	-16(%ebp),%eax
	movl	-332(%ebp),%ebx
	movl	-328(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZSTREAM_TDECOMPRESSIONSTREAM_$__RESET
_ZSTREAM_TDECOMPRESSIONSTREAM_$__RESET:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$328,%esp
	movl	%ebx,-316(%ebp)
	movl	%esi,-312(%ebp)
	call	Lj442
Lj442:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	$0,-52(%ebp)
	leal	-20(%ebp),%ecx
	leal	-44(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-48(%ebp)
	testl	%eax,%eax
	jne	Lj443
	movl	-4(%ebp),%eax
	movl	324(%eax),%edx
	negl	%edx
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movw	$1,%cx
	movl	-4(%ebp),%esi
	movl	8(%esi),%esi
	movl	(%esi),%esi
	call	*136(%esi)
	movl	-4(%ebp),%eax
	movl	$0,320(%eax)
	movl	-4(%ebp),%eax
	movl	$0,324(%eax)
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	call	L_ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT$stub
	movl	-4(%ebp),%eax
	cmpb	$0,328(%eax)
	jne	Lj458
	jmp	Lj459
Lj458:
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	movl	$-15,%edx
	call	L_ZINFLATE_INFLATEINIT2$Z_STREAM$LONGINT$$LONGINT$stub
	movw	%ax,-6(%ebp)
	jmp	Lj466
Lj459:
	movl	-4(%ebp),%eax
	leal	12(%eax),%eax
	call	L_ZINFLATE_INFLATEINIT$Z_STREAM$$LONGINT$stub
	movw	%ax,-6(%ebp)
Lj466:
	movw	-6(%ebp),%ax
	testw	%ax,%ax
	jne	Lj471
	jmp	Lj472
Lj471:
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	leal	-308(%ebp),%edx
	movswl	-6(%ebp),%eax
	call	L_ZBASE_ZERROR$LONGINT$$SHORTSTRING$stub
	leal	-308(%ebp),%eax
	leal	-52(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-52(%ebp),%ecx
	movl	L_VMT_ZSTREAM_EDECOMPRESSIONERROR$non_lazy_ptr-Lj442(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La6:
	movl	%ebp,%ecx
	leal	La6-Lj442(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj472:
Lj443:
	call	LFPC_POPADDRSTACK$stub
	leal	-52(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-52(%ebp)
	movl	-48(%ebp),%eax
	testl	%eax,%eax
	je	Lj444
	call	LFPC_RERAISE$stub
Lj444:
	movl	-316(%ebp),%ebx
	movl	-312(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZSTREAM_TDECOMPRESSIONSTREAM_$__GETPOSITION$$INT64
_ZSTREAM_TDECOMPRESSIONSTREAM_$__GETPOSITION$$INT64:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	.align 4
.globl	_ZSTREAM_TDECOMPRESSIONSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
_ZSTREAM_TDECOMPRESSIONSTREAM_$__SEEK$LONGINT$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-28(%ebp)
	movl	%esi,-24(%ebp)
	call	Lj492
Lj492:
	popl	%ebx
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
	movl	320(%eax),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-16(%ebp)
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
	call	L_ZSTREAM_TDECOMPRESSIONSTREAM_$__RESET$stub
Lj507:
	jmp	Lj511
	.align 2
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
	movl	-12(%ebp),%esi
	movl	(%esi),%esi
	call	*128(%esi)
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
	movl	L_RESSTR_ZSTREAM_SSEEK_FAILED$non_lazy_ptr-Lj492(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_ZSTREAM_EDECOMPRESSIONERROR$non_lazy_ptr-Lj492(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La7:
	movl	%ebp,%ecx
	leal	La7-Lj492(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj527:
	movl	-16(%ebp),%eax
	movl	-28(%ebp),%ebx
	movl	-24(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_ZSTREAM_TDECOMPRESSIONSTREAM_$__GET_COMPRESSIONRATE$$SINGLE
_ZSTREAM_TDECOMPRESSIONSTREAM_$__GET_COMPRESSIONRATE$$SINGLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
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
	.align 4
.globl	_ZSTREAM_TDECOMPRESSIONSTREAM_$__DESTROY
_ZSTREAM_TDECOMPRESSIONSTREAM_$__DESTROY:
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
	call	L_ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_ZSTREAM_TCUSTOMZLIBSTREAM_$__DESTROY$stub
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
	.align 4
.globl	_ZSTREAM_TGZFILESTREAM_$__CREATE$ANSISTRING$TGZOPENMODE$$TGZFILESTREAM
_ZSTREAM_TGZFILESTREAM_$__CREATE$ANSISTRING$TGZOPENMODE$$TGZFILESTREAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$360,%esp
	movl	%ebx,-352(%ebp)
	call	Lj556
Lj556:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-4(%ebp)
	movl	-4(%ebp),%eax
	call	LFPC_ANSISTR_INCR_REF$stub
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
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj567
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-92(%ebp)
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
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-348(%ebp),%eax
	movl	L_$ZSTREAM$_Ld1$non_lazy_ptr-Lj556(%ebx),%edx
	call	L_GZIO_GZOPEN$SHORTSTRING$SHORTSTRING$$POINTER$stub
	movl	-12(%ebp),%edx
	movl	%eax,4(%edx)
	jmp	Lj588
Lj575:
	movl	-4(%ebp),%ecx
	leal	-348(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_ansistr_to_shortstr$stub
	leal	-348(%ebp),%eax
	movl	L_$ZSTREAM$_Ld2$non_lazy_ptr-Lj556(%ebx),%edx
	call	L_GZIO_GZOPEN$SHORTSTRING$SHORTSTRING$$POINTER$stub
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
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,-96(%ebp)
	movl	$11,-100(%ebp)
	leal	-100(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_ZSTREAM_SGZ_OPEN_ERROR$non_lazy_ptr-Lj556(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_ZSTREAM_EGZFILEERROR$non_lazy_ptr-Lj556(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION$stub
La8:
	movl	%ebp,%ecx
	leal	La8-Lj556(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj604:
Lj571:
	call	LFPC_POPADDRSTACK$stub
	leal	-4(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	-92(%ebp),%eax
	testl	%eax,%eax
	je	Lj572
	call	LFPC_RERAISE$stub
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
	call	LFPC_POPADDRSTACK$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj569
	leal	-64(%ebp),%ecx
	leal	-88(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-348(%ebp)
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
	call	LFPC_POPADDRSTACK$stub
	call	LFPC_RERAISE$stub
Lj621:
	call	LFPC_POPADDRSTACK$stub
	movl	-348(%ebp),%eax
	testl	%eax,%eax
	je	Lj620
	call	LFPC_POPSECONDOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	call	LFPC_RERAISE$stub
Lj620:
	call	LFPC_POPOBJECTSTACK$stub
	call	LFPC_DESTROYEXCEPTION$stub
	jmp	Lj569
Lj569:
Lj555:
	movl	-12(%ebp),%eax
	movl	-352(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZSTREAM_TGZFILESTREAM_$__READ$formal$LONGINT$$LONGINT
_ZSTREAM_TGZFILESTREAM_$__READ$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj629
Lj629:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	$1,%eax
	je	Lj630
	jmp	Lj631
Lj630:
	movl	L_RESSTR_ZSTREAM_SGZ_WRITE_ONLY$non_lazy_ptr-Lj629(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_ZSTREAM_EGZFILEERROR$non_lazy_ptr-Lj629(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La9:
	movl	%ebp,%ecx
	leal	La9-Lj629(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj631:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	call	L_GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZSTREAM_TGZFILESTREAM_$__WRITE$formal$LONGINT$$LONGINT
_ZSTREAM_TGZFILESTREAM_$__WRITE$formal$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj647
Lj647:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movl	%ecx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj648
	jmp	Lj649
Lj648:
	movl	L_RESSTR_ZSTREAM_SGZ_WRITE_ONLY$non_lazy_ptr-Lj647(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_ZSTREAM_EGZFILEERROR$non_lazy_ptr-Lj647(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La10:
	movl	%ebp,%ecx
	leal	La10-Lj647(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj649:
	movl	-4(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	-8(%ebp),%ecx
	call	L_GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZSTREAM_TGZFILESTREAM_$__SEEK$LONGINT$WORD$$LONGINT
_ZSTREAM_TGZFILESTREAM_$__SEEK$LONGINT$WORD$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj665
Lj665:
	popl	%ebx
	movl	%eax,-12(%ebp)
	movl	%edx,-4(%ebp)
	movw	%cx,-8(%ebp)
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movzwl	-8(%ebp),%ecx
	movl	-4(%ebp),%edx
	call	L_GZIO_GZSEEK$POINTER$LONGINT$LONGINT$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj674
	jmp	Lj675
Lj674:
	movl	L_RESSTR_ZSTREAM_SSEEK_FAILED$non_lazy_ptr-Lj665(%ebx),%eax
	movl	4(%eax),%ecx
	movl	L_VMT_ZSTREAM_EGZFILEERROR$non_lazy_ptr-Lj665(%ebx),%edx
	movl	$0,%eax
	call	L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub
La11:
	movl	%ebp,%ecx
	leal	La11-Lj665(%ebx),%edx
	call	LFPC_RAISEEXCEPTION$stub
Lj675:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_ZSTREAM_TGZFILESTREAM_$__DESTROY
_ZSTREAM_TGZFILESTREAM_$__DESTROY:
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
	call	L_GZIO_GZCLOSE$POINTER$$LONGINT$stub
	movl	-8(%ebp),%eax
	movl	$0,%edx
	call	L_SYSTEM_TOBJECT_$__DESTROY$stub
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

.const_data
	.align 2
.globl	_$ZSTREAM$_Ld3
_$ZSTREAM$_Ld3:
	.byte	17
	.ascii	"Tcustomzlibstream"

.const_data
	.align 2
.globl	_VMT_ZSTREAM_TCUSTOMZLIBSTREAM
_VMT_ZSTREAM_TCUSTOMZLIBSTREAM:
	.long	320,-320
	.long	_VMT_CLASSES_TOWNERSTREAM
	.long	_$ZSTREAM$_Ld3
	.long	0,0
	.long	_$ZSTREAM$_Ld4
	.long	_RTTI_ZSTREAM_TCUSTOMZLIBSTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_ZSTREAM_TCUSTOMZLIBSTREAM_$__DESTROY
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
	.long	_CLASSES_TSTREAM_$__INVALIDSEEK
	.long	_CLASSES_TSTREAM_$__GETPOSITION$$INT64
	.long	_CLASSES_TSTREAM_$__SETPOSITION$INT64
	.long	_CLASSES_TSTREAM_$__GETSIZE$$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE64$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE$LONGINT
	.long	_CLASSES_TSTREAM_$__SETSIZE$INT64
	.long	_CLASSES_TSTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	0

.const_data
	.align 2
.globl	_$ZSTREAM$_Ld6
_$ZSTREAM$_Ld6:
	.byte	18
	.ascii	"Tcompressionstream"

.const_data
	.align 2
.globl	_VMT_ZSTREAM_TCOMPRESSIONSTREAM
_VMT_ZSTREAM_TCOMPRESSIONSTREAM:
	.long	328,-328
	.long	_VMT_ZSTREAM_TCUSTOMZLIBSTREAM
	.long	_$ZSTREAM$_Ld6
	.long	0,0
	.long	_$ZSTREAM$_Ld7
	.long	_RTTI_ZSTREAM_TCOMPRESSIONSTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_ZSTREAM_TCOMPRESSIONSTREAM_$__DESTROY
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
	.long	_CLASSES_TSTREAM_$__INVALIDSEEK
	.long	_CLASSES_TSTREAM_$__GETPOSITION$$INT64
	.long	_CLASSES_TSTREAM_$__SETPOSITION$INT64
	.long	_CLASSES_TSTREAM_$__GETSIZE$$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE64$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE$LONGINT
	.long	_CLASSES_TSTREAM_$__SETSIZE$INT64
	.long	_CLASSES_TSTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_ZSTREAM_TCOMPRESSIONSTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	0

.const_data
	.align 2
.globl	_$ZSTREAM$_Ld9
_$ZSTREAM$_Ld9:
	.byte	20
	.ascii	"Tdecompressionstream"

.const_data
	.align 2
.globl	_VMT_ZSTREAM_TDECOMPRESSIONSTREAM
_VMT_ZSTREAM_TDECOMPRESSIONSTREAM:
	.long	332,-332
	.long	_VMT_ZSTREAM_TCUSTOMZLIBSTREAM
	.long	_$ZSTREAM$_Ld9
	.long	0,0
	.long	_$ZSTREAM$_Ld10
	.long	_RTTI_ZSTREAM_TDECOMPRESSIONSTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_ZSTREAM_TDECOMPRESSIONSTREAM_$__DESTROY
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
	.long	_CLASSES_TSTREAM_$__INVALIDSEEK
	.long	_ZSTREAM_TDECOMPRESSIONSTREAM_$__GETPOSITION$$INT64
	.long	_CLASSES_TSTREAM_$__SETPOSITION$INT64
	.long	_CLASSES_TSTREAM_$__GETSIZE$$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE64$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE$LONGINT
	.long	_CLASSES_TSTREAM_$__SETSIZE$INT64
	.long	_ZSTREAM_TDECOMPRESSIONSTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_CLASSES_TSTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_ZSTREAM_TDECOMPRESSIONSTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	0

.const_data
	.align 2
.globl	_$ZSTREAM$_Ld12
_$ZSTREAM$_Ld12:
	.byte	13
	.ascii	"TGZFileStream"

.const_data
	.align 2
.globl	_VMT_ZSTREAM_TGZFILESTREAM
_VMT_ZSTREAM_TGZFILESTREAM:
	.long	12,-12
	.long	_VMT_CLASSES_TSTREAM
	.long	_$ZSTREAM$_Ld12
	.long	0,0
	.long	_$ZSTREAM$_Ld13
	.long	_RTTI_ZSTREAM_TGZFILESTREAM
	.long	0,0
	.long	FPC_EMPTYINTF
	.long	0
	.long	_ZSTREAM_TGZFILESTREAM_$__DESTROY
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
	.long	_CLASSES_TSTREAM_$__INVALIDSEEK
	.long	_CLASSES_TSTREAM_$__GETPOSITION$$INT64
	.long	_CLASSES_TSTREAM_$__SETPOSITION$INT64
	.long	_CLASSES_TSTREAM_$__GETSIZE$$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE64$INT64
	.long	_CLASSES_TSTREAM_$__SETSIZE$LONGINT
	.long	_CLASSES_TSTREAM_$__SETSIZE$INT64
	.long	_ZSTREAM_TGZFILESTREAM_$__READ$formal$LONGINT$$LONGINT
	.long	_ZSTREAM_TGZFILESTREAM_$__WRITE$formal$LONGINT$$LONGINT
	.long	_ZSTREAM_TGZFILESTREAM_$__SEEK$LONGINT$WORD$$LONGINT
	.long	_CLASSES_TSTREAM_$__SEEK$INT64$TSEEKORIGIN$$INT64
	.long	0

.const_data
	.align 2
.globl	_$ZSTREAM$_Ld15
_$ZSTREAM$_Ld15:
	.byte	10
	.ascii	"Ezliberror"

.const_data
	.align 2
.globl	_VMT_ZSTREAM_EZLIBERROR
_VMT_ZSTREAM_EZLIBERROR:
	.long	12,-12
	.long	_VMT_CLASSES_ESTREAMERROR
	.long	_$ZSTREAM$_Ld15
	.long	0,0
	.long	_$ZSTREAM$_Ld16
	.long	_RTTI_ZSTREAM_EZLIBERROR
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
.globl	_$ZSTREAM$_Ld18
_$ZSTREAM$_Ld18:
	.byte	12
	.ascii	"Egzfileerror"

.const_data
	.align 2
.globl	_VMT_ZSTREAM_EGZFILEERROR
_VMT_ZSTREAM_EGZFILEERROR:
	.long	12,-12
	.long	_VMT_ZSTREAM_EZLIBERROR
	.long	_$ZSTREAM$_Ld18
	.long	0,0
	.long	_$ZSTREAM$_Ld19
	.long	_RTTI_ZSTREAM_EGZFILEERROR
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
.globl	_$ZSTREAM$_Ld21
_$ZSTREAM$_Ld21:
	.byte	17
	.ascii	"Ecompressionerror"

.const_data
	.align 2
.globl	_VMT_ZSTREAM_ECOMPRESSIONERROR
_VMT_ZSTREAM_ECOMPRESSIONERROR:
	.long	12,-12
	.long	_VMT_ZSTREAM_EZLIBERROR
	.long	_$ZSTREAM$_Ld21
	.long	0,0
	.long	_$ZSTREAM$_Ld22
	.long	_RTTI_ZSTREAM_ECOMPRESSIONERROR
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
.globl	_$ZSTREAM$_Ld24
_$ZSTREAM$_Ld24:
	.byte	19
	.ascii	"Edecompressionerror"

.const_data
	.align 2
.globl	_VMT_ZSTREAM_EDECOMPRESSIONERROR
_VMT_ZSTREAM_EDECOMPRESSIONERROR:
	.long	12,-12
	.long	_VMT_ZSTREAM_EZLIBERROR
	.long	_$ZSTREAM$_Ld24
	.long	0,0
	.long	_$ZSTREAM$_Ld25
	.long	_RTTI_ZSTREAM_EDECOMPRESSIONERROR
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

.data
	.align 2
.globl	_THREADVARLIST_ZSTREAM
_THREADVARLIST_ZSTREAM:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$ZSTREAM$_Ld28
_$ZSTREAM$_Ld28:
	.short	0,1
	.long	0,-1,7
.reference _$ZSTREAM$_Ld27
.globl	_$ZSTREAM$_Ld27
_$ZSTREAM$_Ld27:
.reference _$ZSTREAM$_Ld28
	.ascii	"ZSTREAM\000"

.const_data
	.align 2
.globl	_$ZSTREAM$_Ld30
_$ZSTREAM$_Ld30:
	.short	0,1
	.long	0,-1,39
.reference _$ZSTREAM$_Ld29
.globl	_$ZSTREAM$_Ld29
_$ZSTREAM$_Ld29:
.reference _$ZSTREAM$_Ld30
	.ascii	"Could not open gzip compressed file %s.\000"
	.align 2
.globl	_$ZSTREAM$_Ld32
_$ZSTREAM$_Ld32:
	.short	0,1
	.long	0,-1,22
.reference _$ZSTREAM$_Ld31
.globl	_$ZSTREAM$_Ld31
_$ZSTREAM$_Ld31:
.reference _$ZSTREAM$_Ld32
	.ascii	"zstream.sgz_open_error\000"

.const_data
	.align 2
.globl	_$ZSTREAM$_Ld34
_$ZSTREAM$_Ld34:
	.short	0,1
	.long	0,-1,44
.reference _$ZSTREAM$_Ld33
.globl	_$ZSTREAM$_Ld33
_$ZSTREAM$_Ld33:
.reference _$ZSTREAM$_Ld34
	.ascii	"Gzip compressed file was opened for reading.\000"
	.align 2
.globl	_$ZSTREAM$_Ld36
_$ZSTREAM$_Ld36:
	.short	0,1
	.long	0,-1,21
.reference _$ZSTREAM$_Ld35
.globl	_$ZSTREAM$_Ld35
_$ZSTREAM$_Ld35:
.reference _$ZSTREAM$_Ld36
	.ascii	"zstream.sgz_read_only\000"

.const_data
	.align 2
.globl	_$ZSTREAM$_Ld38
_$ZSTREAM$_Ld38:
	.short	0,1
	.long	0,-1,44
.reference _$ZSTREAM$_Ld37
.globl	_$ZSTREAM$_Ld37
_$ZSTREAM$_Ld37:
.reference _$ZSTREAM$_Ld38
	.ascii	"Gzip compressed file was opened for writing.\000"
	.align 2
.globl	_$ZSTREAM$_Ld40
_$ZSTREAM$_Ld40:
	.short	0,1
	.long	0,-1,22
.reference _$ZSTREAM$_Ld39
.globl	_$ZSTREAM$_Ld39
_$ZSTREAM$_Ld39:
.reference _$ZSTREAM$_Ld40
	.ascii	"zstream.sgz_write_only\000"

.const_data
	.align 2
.globl	_$ZSTREAM$_Ld42
_$ZSTREAM$_Ld42:
	.short	0,1
	.long	0,-1,41
.reference _$ZSTREAM$_Ld41
.globl	_$ZSTREAM$_Ld41
_$ZSTREAM$_Ld41:
.reference _$ZSTREAM$_Ld42
	.ascii	"Seek in deflate compressed stream failed.\000"
	.align 2
.globl	_$ZSTREAM$_Ld44
_$ZSTREAM$_Ld44:
	.short	0,1
	.long	0,-1,20
.reference _$ZSTREAM$_Ld43
.globl	_$ZSTREAM$_Ld43
_$ZSTREAM$_Ld43:
.reference _$ZSTREAM$_Ld44
	.ascii	"zstream.sseek_failed\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 2
.globl	_$ZSTREAM$_Ld1
_$ZSTREAM$_Ld1:
	.ascii	"\002rb\000"

.const
	.align 2
.globl	_$ZSTREAM$_Ld2
_$ZSTREAM$_Ld2:
	.ascii	"\002wb\000"
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

L_CLASSES_TOWNERSTREAM_$__CREATE$TSTREAM$$TOWNERSTREAM$stub:
.indirect_symbol _CLASSES_TOWNERSTREAM_$__CREATE$TSTREAM$$TOWNERSTREAM
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

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CLASSES_TOWNERSTREAM_$__DESTROY$stub:
.indirect_symbol _CLASSES_TOWNERSTREAM_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZSTREAM_TCUSTOMZLIBSTREAM_$__CREATE$TSTREAM$$TCUSTOMZLIBSTREAM$stub:
.indirect_symbol _ZSTREAM_TCUSTOMZLIBSTREAM_$__CREATE$TSTREAM$$TCUSTOMZLIBSTREAM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATEINIT2$Z_STREAM$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATEINIT2$Z_STREAM$LONGINT$LONGINT$LONGINT$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATEINIT$Z_STREAM$LONGINT$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATEINIT$Z_STREAM$LONGINT$$LONGINT
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

L_ZBASE_ZERROR$LONGINT$$SHORTSTRING$stub:
.indirect_symbol _ZBASE_ZERROR$LONGINT$$SHORTSTRING
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

L_SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION$stub:
.indirect_symbol _SYSUTILS_EXCEPTION_$__CREATE$ANSISTRING$$EXCEPTION
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

L_ZSTREAM_TCUSTOMZLIBSTREAM_$__PROGRESS$TOBJECT$stub:
.indirect_symbol _ZSTREAM_TCUSTOMZLIBSTREAM_$__PROGRESS$TOBJECT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATE$Z_STREAM$LONGINT$$LONGINT
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

L_ZSTREAM_TCOMPRESSIONSTREAM_$__FLUSH$stub:
.indirect_symbol _ZSTREAM_TCOMPRESSIONSTREAM_$__FLUSH
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZDEFLATE_DEFLATEEND$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZSTREAM_TCUSTOMZLIBSTREAM_$__DESTROY$stub:
.indirect_symbol _ZSTREAM_TCUSTOMZLIBSTREAM_$__DESTROY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATEINIT2$Z_STREAM$LONGINT$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATEINIT2$Z_STREAM$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATEINIT$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATEINIT$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATE$Z_STREAM$LONGINT$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATE$Z_STREAM$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT$stub:
.indirect_symbol _ZINFLATE_INFLATEEND$Z_STREAM$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_ZSTREAM_TDECOMPRESSIONSTREAM_$__RESET$stub:
.indirect_symbol _ZSTREAM_TDECOMPRESSIONSTREAM_$__RESET
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

Lfpc_ansistr_to_shortstr$stub:
.indirect_symbol fpc_ansistr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZOPEN$SHORTSTRING$SHORTSTRING$$POINTER$stub:
.indirect_symbol _GZIO_GZOPEN$SHORTSTRING$SHORTSTRING$$POINTER
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

L_GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT$stub:
.indirect_symbol _GZIO_GZREAD$POINTER$POINTER$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT$stub:
.indirect_symbol _GZIO_GZWRITE$POINTER$POINTER$LONGWORD$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZSEEK$POINTER$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _GZIO_GZSEEK$POINTER$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GZIO_GZCLOSE$POINTER$$LONGINT$stub:
.indirect_symbol _GZIO_GZCLOSE$POINTER$$LONGINT
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
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_INIT_ZSTREAM_TCOMPRESSIONLEVEL
_INIT_ZSTREAM_TCOMPRESSIONLEVEL:
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

.const_data
	.align 2
.globl	_RTTI_ZSTREAM_TCOMPRESSIONLEVEL
_RTTI_ZSTREAM_TCOMPRESSIONLEVEL:
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

.const_data
	.align 2
.globl	_RTTI_ZSTREAM_TCOMPRESSIONLEVEL_s2o
_RTTI_ZSTREAM_TCOMPRESSIONLEVEL_s2o:
	.long	4,2
	.long	_RTTI_ZSTREAM_TCOMPRESSIONLEVEL+49
	.long	1
	.long	_RTTI_ZSTREAM_TCOMPRESSIONLEVEL+39
	.long	3
	.long	_RTTI_ZSTREAM_TCOMPRESSIONLEVEL+59
	.long	0
	.long	_RTTI_ZSTREAM_TCOMPRESSIONLEVEL+32

.const_data
	.align 2
.globl	_RTTI_ZSTREAM_TCOMPRESSIONLEVEL_o2s
_RTTI_ZSTREAM_TCOMPRESSIONLEVEL_o2s:
	.long	0
	.long	_RTTI_ZSTREAM_TCOMPRESSIONLEVEL+32
	.long	_RTTI_ZSTREAM_TCOMPRESSIONLEVEL+39
	.long	_RTTI_ZSTREAM_TCOMPRESSIONLEVEL+49
	.long	_RTTI_ZSTREAM_TCOMPRESSIONLEVEL+59

.const_data
	.align 2
.globl	_INIT_ZSTREAM_TGZOPENMODE
_INIT_ZSTREAM_TGZOPENMODE:
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

.const_data
	.align 2
.globl	_RTTI_ZSTREAM_TGZOPENMODE
_RTTI_ZSTREAM_TGZOPENMODE:
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

.const_data
	.align 2
.globl	_RTTI_ZSTREAM_TGZOPENMODE_s2o
_RTTI_ZSTREAM_TGZOPENMODE_s2o:
	.long	2,0
	.long	_RTTI_ZSTREAM_TGZOPENMODE+26
	.long	1
	.long	_RTTI_ZSTREAM_TGZOPENMODE+37

.const_data
	.align 2
.globl	_RTTI_ZSTREAM_TGZOPENMODE_o2s
_RTTI_ZSTREAM_TGZOPENMODE_o2s:
	.long	0
	.long	_RTTI_ZSTREAM_TGZOPENMODE+26
	.long	_RTTI_ZSTREAM_TGZOPENMODE+37

.const_data
	.align 2
.globl	_$ZSTREAM$_Ld4
_$ZSTREAM$_Ld4:
	.short	0
	.long	_$ZSTREAM$_Ld5
	.align 2
.globl	_$ZSTREAM$_Ld5
_$ZSTREAM$_Ld5:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZSTREAM_TCUSTOMZLIBSTREAM
_INIT_ZSTREAM_TCUSTOMZLIBSTREAM:
	.byte	15,17
	.ascii	"Tcustomzlibstream"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_ZSTREAM_TCUSTOMZLIBSTREAM
_RTTI_ZSTREAM_TCUSTOMZLIBSTREAM:
	.byte	15,17
	.ascii	"Tcustomzlibstream"
	.long	_VMT_ZSTREAM_TCUSTOMZLIBSTREAM
	.long	_RTTI_CLASSES_TOWNERSTREAM
	.short	0
	.byte	7
	.ascii	"zstream"
	.short	0

.const_data
	.align 2
.globl	_$ZSTREAM$_Ld7
_$ZSTREAM$_Ld7:
	.short	0
	.long	_$ZSTREAM$_Ld8
	.align 2
.globl	_$ZSTREAM$_Ld8
_$ZSTREAM$_Ld8:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZSTREAM_TCOMPRESSIONSTREAM
_INIT_ZSTREAM_TCOMPRESSIONSTREAM:
	.byte	15,18
	.ascii	"Tcompressionstream"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_ZSTREAM_TCOMPRESSIONSTREAM
_RTTI_ZSTREAM_TCOMPRESSIONSTREAM:
	.byte	15,18
	.ascii	"Tcompressionstream"
	.long	_VMT_ZSTREAM_TCOMPRESSIONSTREAM
	.long	_RTTI_ZSTREAM_TCUSTOMZLIBSTREAM
	.short	0
	.byte	7
	.ascii	"zstream"
	.short	0

.const_data
	.align 2
.globl	_$ZSTREAM$_Ld10
_$ZSTREAM$_Ld10:
	.short	0
	.long	_$ZSTREAM$_Ld11
	.align 2
.globl	_$ZSTREAM$_Ld11
_$ZSTREAM$_Ld11:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZSTREAM_TDECOMPRESSIONSTREAM
_INIT_ZSTREAM_TDECOMPRESSIONSTREAM:
	.byte	15,20
	.ascii	"Tdecompressionstream"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_ZSTREAM_TDECOMPRESSIONSTREAM
_RTTI_ZSTREAM_TDECOMPRESSIONSTREAM:
	.byte	15,20
	.ascii	"Tdecompressionstream"
	.long	_VMT_ZSTREAM_TDECOMPRESSIONSTREAM
	.long	_RTTI_ZSTREAM_TCUSTOMZLIBSTREAM
	.short	0
	.byte	7
	.ascii	"zstream"
	.short	0

.const_data
	.align 2
.globl	_INIT_ZSTREAM_DEF86
_INIT_ZSTREAM_DEF86:
	.byte	12
	.ascii	"\000"
	.long	4,1
	.long	_INIT_SYSTEM_ANSISTRING
	.long	256

.const_data
	.align 2
.globl	_$ZSTREAM$_Ld13
_$ZSTREAM$_Ld13:
	.short	0
	.long	_$ZSTREAM$_Ld14
	.align 2
.globl	_$ZSTREAM$_Ld14
_$ZSTREAM$_Ld14:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZSTREAM_TGZFILESTREAM
_INIT_ZSTREAM_TGZFILESTREAM:
	.byte	15,13
	.ascii	"TGZFileStream"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_ZSTREAM_TGZFILESTREAM
_RTTI_ZSTREAM_TGZFILESTREAM:
	.byte	15,13
	.ascii	"TGZFileStream"
	.long	_VMT_ZSTREAM_TGZFILESTREAM
	.long	_RTTI_CLASSES_TSTREAM
	.short	0
	.byte	7
	.ascii	"zstream"
	.short	0

.const_data
	.align 2
.globl	_$ZSTREAM$_Ld16
_$ZSTREAM$_Ld16:
	.short	0
	.long	_$ZSTREAM$_Ld17
	.align 2
.globl	_$ZSTREAM$_Ld17
_$ZSTREAM$_Ld17:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZSTREAM_EZLIBERROR
_INIT_ZSTREAM_EZLIBERROR:
	.byte	15,10
	.ascii	"Ezliberror"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_ZSTREAM_EZLIBERROR
_RTTI_ZSTREAM_EZLIBERROR:
	.byte	15,10
	.ascii	"Ezliberror"
	.long	_VMT_ZSTREAM_EZLIBERROR
	.long	_RTTI_CLASSES_ESTREAMERROR
	.short	0
	.byte	7
	.ascii	"zstream"
	.short	0

.const_data
	.align 2
.globl	_$ZSTREAM$_Ld19
_$ZSTREAM$_Ld19:
	.short	0
	.long	_$ZSTREAM$_Ld20
	.align 2
.globl	_$ZSTREAM$_Ld20
_$ZSTREAM$_Ld20:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZSTREAM_EGZFILEERROR
_INIT_ZSTREAM_EGZFILEERROR:
	.byte	15,12
	.ascii	"Egzfileerror"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_ZSTREAM_EGZFILEERROR
_RTTI_ZSTREAM_EGZFILEERROR:
	.byte	15,12
	.ascii	"Egzfileerror"
	.long	_VMT_ZSTREAM_EGZFILEERROR
	.long	_RTTI_ZSTREAM_EZLIBERROR
	.short	0
	.byte	7
	.ascii	"zstream"
	.short	0

.const_data
	.align 2
.globl	_$ZSTREAM$_Ld22
_$ZSTREAM$_Ld22:
	.short	0
	.long	_$ZSTREAM$_Ld23
	.align 2
.globl	_$ZSTREAM$_Ld23
_$ZSTREAM$_Ld23:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZSTREAM_ECOMPRESSIONERROR
_INIT_ZSTREAM_ECOMPRESSIONERROR:
	.byte	15,17
	.ascii	"Ecompressionerror"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_ZSTREAM_ECOMPRESSIONERROR
_RTTI_ZSTREAM_ECOMPRESSIONERROR:
	.byte	15,17
	.ascii	"Ecompressionerror"
	.long	_VMT_ZSTREAM_ECOMPRESSIONERROR
	.long	_RTTI_ZSTREAM_EZLIBERROR
	.short	0
	.byte	7
	.ascii	"zstream"
	.short	0

.const_data
	.align 2
.globl	_$ZSTREAM$_Ld25
_$ZSTREAM$_Ld25:
	.short	0
	.long	_$ZSTREAM$_Ld26
	.align 2
.globl	_$ZSTREAM$_Ld26
_$ZSTREAM$_Ld26:
	.short	0

.const_data
	.align 2
.globl	_INIT_ZSTREAM_EDECOMPRESSIONERROR
_INIT_ZSTREAM_EDECOMPRESSIONERROR:
	.byte	15,19
	.ascii	"Edecompressionerror"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_ZSTREAM_EDECOMPRESSIONERROR
_RTTI_ZSTREAM_EDECOMPRESSIONERROR:
	.byte	15,19
	.ascii	"Edecompressionerror"
	.long	_VMT_ZSTREAM_EDECOMPRESSIONERROR
	.long	_RTTI_ZSTREAM_EZLIBERROR
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

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_ZSTREAM_ECOMPRESSIONERROR$non_lazy_ptr:
.indirect_symbol _VMT_ZSTREAM_ECOMPRESSIONERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_ZSTREAM_EDECOMPRESSIONERROR$non_lazy_ptr:
.indirect_symbol _VMT_ZSTREAM_EDECOMPRESSIONERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZSTREAM_SSEEK_FAILED$non_lazy_ptr:
.indirect_symbol _RESSTR_ZSTREAM_SSEEK_FAILED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ZSTREAM$_Ld1$non_lazy_ptr:
.indirect_symbol _$ZSTREAM$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$ZSTREAM$_Ld2$non_lazy_ptr:
.indirect_symbol _$ZSTREAM$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZSTREAM_SGZ_OPEN_ERROR$non_lazy_ptr:
.indirect_symbol _RESSTR_ZSTREAM_SGZ_OPEN_ERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_VMT_ZSTREAM_EGZFILEERROR$non_lazy_ptr:
.indirect_symbol _VMT_ZSTREAM_EGZFILEERROR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_ZSTREAM_SGZ_WRITE_ONLY$non_lazy_ptr:
.indirect_symbol _RESSTR_ZSTREAM_SGZ_WRITE_ONLY
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_ZSTREAM_START
_RESSTR_ZSTREAM_START:
	.long	_$ZSTREAM$_Ld27
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_ZSTREAM_SGZ_OPEN_ERROR
_RESSTR_ZSTREAM_SGZ_OPEN_ERROR:
	.long	_$ZSTREAM$_Ld31
	.long	_$ZSTREAM$_Ld29
	.long	_$ZSTREAM$_Ld29
	.long	68773182

.data
	.align 2
.globl	_RESSTR_ZSTREAM_SGZ_READ_ONLY
_RESSTR_ZSTREAM_SGZ_READ_ONLY:
	.long	_$ZSTREAM$_Ld35
	.long	_$ZSTREAM$_Ld33
	.long	_$ZSTREAM$_Ld33
	.long	44507406

.data
	.align 2
.globl	_RESSTR_ZSTREAM_SGZ_WRITE_ONLY
_RESSTR_ZSTREAM_SGZ_WRITE_ONLY:
	.long	_$ZSTREAM$_Ld39
	.long	_$ZSTREAM$_Ld37
	.long	_$ZSTREAM$_Ld37
	.long	47653230

.data
	.align 2
.globl	_RESSTR_ZSTREAM_SSEEK_FAILED
_RESSTR_ZSTREAM_SSEEK_FAILED:
	.long	_$ZSTREAM$_Ld43
	.long	_$ZSTREAM$_Ld41
	.long	_$ZSTREAM$_Ld41
	.long	247151982

.data
	.align 2
.globl	_RESSTR_ZSTREAM_END
_RESSTR_ZSTREAM_END:
	.long	_RESSTR_ZSTREAM_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

